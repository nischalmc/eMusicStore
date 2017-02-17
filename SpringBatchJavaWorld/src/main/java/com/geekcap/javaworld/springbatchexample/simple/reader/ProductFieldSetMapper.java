package com.geekcap.javaworld.springbatchexample.simple.reader;

import com.geekcap.javaworld.springbatchexample.simple.model.Product;
import org.springframework.batch.item.file.mapping.FieldSetMapper;
import org.springframework.batch.item.file.transform.FieldSet;
import org.springframework.validation.BindException;

/**
 * Builds a Product from a row in the CSV file (as a set of fields)
 */
public class ProductFieldSetMapper implements FieldSetMapper<Product>
{
    @Override
    public Product mapFieldSet(FieldSet fieldSet) throws BindException {
        Product product = new Product();
        product.setProductCode( fieldSet.readInt( "productCode" ) );
        product.setProductName( fieldSet.readString( "productName" ) );
        product.setMrp( fieldSet.readString( "mrp" ) );
        product.setDicountedPrice( fieldSet.readString( "discountedPrice" ) );
        product.setStock( fieldSet.readString( "stock" ) );
        return product;
    }
}
