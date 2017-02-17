package com.geekcap.javaworld.springbatchexample.simple.writer;

import com.geekcap.javaworld.springbatchexample.simple.model.Product;
import org.springframework.batch.item.ItemWriter;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

/**
 * Writes products to a database
 */
public class ProductItemWriter implements ItemWriter<Product>
{
    private static final String GET_PRODUCT = "select * from PRODUCT where product_code = ?";
    private static final String INSERT_PRODUCT = "insert into PRODUCT (product_code,product_name,mrp,discounted_price,stock) values (?,?,?,?)";
    private static final String UPDATE_PRODUCT = "update PRODUCT set product_name = ?, mrp = ?,discounted_price = ?, stock = ? where product_code = ?";

    @Autowired
    private JdbcTemplate jdbcTemplate;

    @Override
    public void write(List<? extends Product> products) throws Exception
    {
        for( Product product : products )
        {
            List<Product> productList = jdbcTemplate.query(GET_PRODUCT, new Object[] {product.getProductCode()}, new RowMapper<Product>() {
                @Override
                public Product mapRow( ResultSet resultSet, int rowNum ) throws SQLException {
                    Product p = new Product();
                    p.setProductCode( resultSet.getInt( 1 ) );
                    p.setProductName( resultSet.getString( 2 ) );
                    p.setMrp( resultSet.getString( 3 ) );
                    p.setDicountedPrice( resultSet.getString( 4 ) );
                    p.setStock( resultSet.getString( 5 ) );
                    return p;
                }
            });

            if( productList.size() > 0 )
            {
                jdbcTemplate.update( UPDATE_PRODUCT, product.getProductName(), product.getMrp(), product.getDicountedPrice(), product.getStock() );
            }
            else
            {
                jdbcTemplate.update( INSERT_PRODUCT, product.getProductCode(), product.getProductName(), product.getMrp(), product.getDicountedPrice(), product.getStock() );
            }
        }
    }
}
