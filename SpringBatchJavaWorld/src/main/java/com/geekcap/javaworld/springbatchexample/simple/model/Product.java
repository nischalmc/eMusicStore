package com.geekcap.javaworld.springbatchexample.simple.model;

/**
 * Simple POJO to represent a product
 */
public class Product
{
    private int productCode;
    private String productName;
    private String mrp;
    private String dicountedPrice;
    private String stock; 

    public Product() {
    }

	public Product(int productCode, String productName, String mrp, String dicountedPrice, String stock) {
		super();
		this.productCode = productCode;
		this.productName = productName;
		this.mrp = mrp;
		this.dicountedPrice = dicountedPrice;
		this.stock = stock;
	}

	public int getProductCode() {
		return productCode;
	}

	public void setProductCode(int productCode) {
		this.productCode = productCode;
	}

	public String getProductName() {
		return productName;
	}

	public void setProductName(String productName) {
		this.productName = productName;
	}

	public String getMrp() {
		return mrp;
	}

	public void setMrp(String mrp) {
		this.mrp = mrp;
	}

	public String getDicountedPrice() {
		return dicountedPrice;
	}

	public void setDicountedPrice(String dicountedPrice) {
		this.dicountedPrice = dicountedPrice;
	}

	public String getStock() {
		return stock;
	}

	public void setStock(String stock) {
		this.stock = stock;
	}

}
