package com.geekcap.javaworld.springbatchexample.simple.processor;

import com.geekcap.javaworld.springbatchexample.simple.model.Product;
import com.mysql.jdbc.StringUtils;

import org.springframework.batch.item.ItemProcessor;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

/**
 * Processor that finds existing products and updates a product quantity appropriately
 */
public class ProductItemProcessor implements ItemProcessor<Product,Product>
{
    private static final String GET_PRODUCT = "select * from PRODUCT where product_code = ?";
    @Autowired
    private JdbcTemplate jdbcTemplate;

    @Override
    public Product process(Product product) throws Exception
    {
        // Retrieve the product from the database
        List<Product> productList = jdbcTemplate.query(GET_PRODUCT, new Object[] {product.getProductCode()}, new RowMapper<Product>() {
            @Override
            public Product mapRow( ResultSet resultSet, int rowNum ) throws SQLException {
                Product p = new Product();
                p.setProductCode( resultSet.getInt( 1 ) );
                p.setProductName( resultSet.getString( 2 ) );
                p.setMrp( resultSet.getString( 3 ) );
                p.setDicountedPrice( resultSet.getString( 4 ) );
                p.setStock( resultSet.getString( 4 ) );
                return p;
            }
        });

        if( productList.size() > 0 )
        {
            // Add the new quantity to the existing quantity
            Product existingProduct = productList.get( 0 );
            int stock = Integer.parseInt(existingProduct.getStock()) + Integer.parseInt(product.getStock());
            product.setStock(Integer.toString(stock));
        }

        // Return the (possibly) update prduct
        return product;
    }
}
