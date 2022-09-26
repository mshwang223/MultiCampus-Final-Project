package com.spring_boot.FinalProject.model;

import java.time.LocalDate;

public class CartVO {

    private String userId;
    private int cartId;
    private String stayName;
    private String period;
    private int price;
    private String stayNo;

    public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}

	public int getCartId() {
		return cartId;
	}
	public void setCartId(int cartId) {
		this.cartId = cartId;
	}

	public String getStayName() {
		return stayName;
	}
	public void setStayName(String stayName) {
		this.stayName = stayName;
	}

	public String getPeriod() {
		return period;
	}
	public void setPeriod(String period) {
		this.period = period;
	}

	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}

	public String getStayNo() {
		return stayNo;
	}
	public void setStayNo(String stayNo) {
		this.stayNo = stayNo;
	}
}
