// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.malsolo.crm.domain;

import com.malsolo.crm.domain.CartOrder;
import com.malsolo.crm.domain.Product;
import java.lang.Long;
import javax.persistence.Column;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

privileged aspect LineItem_Roo_DbManaged {
    
    @ManyToOne
    @JoinColumn(name = "CART_ORDER_ID", referencedColumnName = "CART_ORDER_ID")
    private CartOrder LineItem.cartOrderId;
    
    @ManyToOne
    @JoinColumn(name = "PRODUCT_ID", referencedColumnName = "PRODUCT_ID")
    private Product LineItem.productId;
    
    @Column(name = "QUANTITY")
    private Long LineItem.quantity;
    
    public CartOrder LineItem.getCartOrderId() {
        return this.cartOrderId;
    }
    
    public void LineItem.setCartOrderId(CartOrder cartOrderId) {
        this.cartOrderId = cartOrderId;
    }
    
    public Product LineItem.getProductId() {
        return this.productId;
    }
    
    public void LineItem.setProductId(Product productId) {
        this.productId = productId;
    }
    
    public Long LineItem.getQuantity() {
        return this.quantity;
    }
    
    public void LineItem.setQuantity(Long quantity) {
        this.quantity = quantity;
    }
    
}
