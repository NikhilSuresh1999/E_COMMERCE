package com.product;
import java.util.*;
public class Product {
	
	int pid;
	String pname;
	int pprice;
	public  Product(int pid,String pname,int pprice)
	{
		super();
		this.pid=pid;
		this.pname=pname;this.pprice=pprice;
		
	}
	public int getpid() {
		return pid;
		
	}
	public void setpid(int pid) {
		this.pid=pid;
	}
	public String getpname() {
		return pname;
	}
	
	public void setpname(String pname)
	{
		this.pname=pname;
	}
	public int getpprice() {
		return pprice;
	}
	public void setpprice(int pprice)
	{
		this.pprice=pprice;
	}
	
	
}
