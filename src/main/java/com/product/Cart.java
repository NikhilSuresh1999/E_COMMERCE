package com.product;
import java.util.*;


public class Cart {
	
	
	public List<Product> items;
	
	public Cart() {
	
	items= new ArrayList<>();
	}
	public void addItem(Product products) {
		items.add(products);
	}
	
	public List<Product>getItems(){
		
		return items;
	}
	
	public double getTotal() {
		double total=0.0;
		for(Product item:items) {
			total+=item.getpprice();
		}
		return total;
	}
	
}