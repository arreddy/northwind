// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package org.springframework.roo.northwind.model;

import java.math.BigDecimal;
import java.util.Objects;
import java.util.Set;
import org.springframework.roo.northwind.model.Category;
import org.springframework.roo.northwind.model.OrderDetail;
import org.springframework.roo.northwind.model.Product;
import org.springframework.roo.northwind.model.PurchaseOrder;
import org.springframework.roo.northwind.model.Supplier;

privileged aspect Product_Roo_JavaBean {
    
    /**
     * Gets id value
     * 
     * @return Long
     */
    public Long Product.getId() {
        return this.id;
    }
    
    /**
     * Sets id value
     * 
     * @param id
     * @return Product
     */
    public Product Product.setId(Long id) {
        this.id = id;
        return this;
    }
    
    /**
     * Gets version value
     * 
     * @return Long
     */
    public Long Product.getVersion() {
        return this.version;
    }
    
    /**
     * Sets version value
     * 
     * @param version
     * @return Product
     */
    public Product Product.setVersion(Long version) {
        this.version = version;
        return this;
    }
    
    /**
     * Gets category value
     * 
     * @return Category
     */
    public Category Product.getCategory() {
        return this.category;
    }
    
    /**
     * Sets category value
     * 
     * @param category
     * @return Product
     */
    public Product Product.setCategory(Category category) {
        this.category = category;
        return this;
    }
    
    /**
     * Gets name value
     * 
     * @return String
     */
    public String Product.getName() {
        return this.name;
    }
    
    /**
     * Sets name value
     * 
     * @param name
     * @return Product
     */
    public Product Product.setName(String name) {
        this.name = name;
        return this;
    }
    
    /**
     * Gets code value
     * 
     * @return String
     */
    public String Product.getCode() {
        return this.code;
    }
    
    /**
     * Sets code value
     * 
     * @param code
     * @return Product
     */
    public Product Product.setCode(String code) {
        this.code = code;
        return this;
    }
    
    /**
     * Gets quantityPerUnit value
     * 
     * @return String
     */
    public String Product.getQuantityPerUnit() {
        return this.quantityPerUnit;
    }
    
    /**
     * Sets quantityPerUnit value
     * 
     * @param quantityPerUnit
     * @return Product
     */
    public Product Product.setQuantityPerUnit(String quantityPerUnit) {
        this.quantityPerUnit = quantityPerUnit;
        return this;
    }
    
    /**
     * Gets unitCost value
     * 
     * @return BigDecimal
     */
    public BigDecimal Product.getUnitCost() {
        return this.unitCost;
    }
    
    /**
     * Sets unitCost value
     * 
     * @param unitCost
     * @return Product
     */
    public Product Product.setUnitCost(BigDecimal unitCost) {
        this.unitCost = unitCost;
        return this;
    }
    
    /**
     * Gets unitPrice value
     * 
     * @return BigDecimal
     */
    public BigDecimal Product.getUnitPrice() {
        return this.unitPrice;
    }
    
    /**
     * Sets unitPrice value
     * 
     * @param unitPrice
     * @return Product
     */
    public Product Product.setUnitPrice(BigDecimal unitPrice) {
        this.unitPrice = unitPrice;
        return this;
    }
    
    /**
     * Gets unitsInStock value
     * 
     * @return Integer
     */
    public Integer Product.getUnitsInStock() {
        return this.unitsInStock;
    }
    
    /**
     * Sets unitsInStock value
     * 
     * @param unitsInStock
     * @return Product
     */
    public Product Product.setUnitsInStock(Integer unitsInStock) {
        this.unitsInStock = unitsInStock;
        return this;
    }
    
    /**
     * Gets reorderLevel value
     * 
     * @return Integer
     */
    public Integer Product.getReorderLevel() {
        return this.reorderLevel;
    }
    
    /**
     * Sets reorderLevel value
     * 
     * @param reorderLevel
     * @return Product
     */
    public Product Product.setReorderLevel(Integer reorderLevel) {
        this.reorderLevel = reorderLevel;
        return this;
    }
    
    /**
     * Gets discontinued value
     * 
     * @return Boolean
     */
    public Boolean Product.getDiscontinued() {
        return this.discontinued;
    }
    
    /**
     * Sets discontinued value
     * 
     * @param discontinued
     * @return Product
     */
    public Product Product.setDiscontinued(Boolean discontinued) {
        this.discontinued = discontinued;
        return this;
    }
    
    /**
     * Gets purchaseOrders value
     * 
     * @return Set
     */
    public Set<PurchaseOrder> Product.getPurchaseOrders() {
        return this.purchaseOrders;
    }
    
    /**
     * Sets purchaseOrders value
     * 
     * @param purchaseOrders
     * @return Product
     */
    public Product Product.setPurchaseOrders(Set<PurchaseOrder> purchaseOrders) {
        this.purchaseOrders = purchaseOrders;
        return this;
    }
    
    /**
     * Gets orderDetails value
     * 
     * @return Set
     */
    public Set<OrderDetail> Product.getOrderDetails() {
        return this.orderDetails;
    }
    
    /**
     * Sets orderDetails value
     * 
     * @param orderDetails
     * @return Product
     */
    public Product Product.setOrderDetails(Set<OrderDetail> orderDetails) {
        this.orderDetails = orderDetails;
        return this;
    }
    
    /**
     * Gets supplier value
     * 
     * @return Supplier
     */
    public Supplier Product.getSupplier() {
        return this.supplier;
    }
    
    /**
     * Sets supplier value
     * 
     * @param supplier
     * @return Product
     */
    public Product Product.setSupplier(Supplier supplier) {
        this.supplier = supplier;
        return this;
    }
    
    /**
     * This `equals` implementation is specific for JPA entities and uses 
     * the entity identifier for it, following the article in 
     * https://vladmihalcea.com/2016/06/06/how-to-implement-equals-and-hashcode-using-the-jpa-entity-identifier/
     * 
     * @param obj
     * @return Boolean
     */
    public boolean Product.equals(Object obj) {
        if (this == obj) {
            return true;
        }
        // instanceof is false if the instance is null
        if (!(obj instanceof Product)) {
            return false;
        }
        return getId() != null && Objects.equals(getId(), ((Product) obj).getId());
    }
    
    /**
     * This `hashCode` implementation is specific for JPA entities and uses a fixed `int` value to be able 
     * to identify the entity in collections after a new id is assigned to the entity, following the article in 
     * https://vladmihalcea.com/2016/06/06/how-to-implement-equals-and-hashcode-using-the-jpa-entity-identifier/
     * 
     * @return Integer
     */
    public int Product.hashCode() {
        return 31;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return String
     */
    public String Product.toString() {
        return "Product {" + 
                "id='" + id + '\'' + 
                ", version='" + version + '\'' + 
                ", name='" + name + '\'' + 
                ", code='" + code + '\'' + 
                ", quantityPerUnit='" + quantityPerUnit + '\'' + 
                ", unitCost='" + unitCost + '\'' + 
                ", unitPrice='" + unitPrice + '\'' + 
                ", unitsInStock='" + unitsInStock + '\'' + 
                ", reorderLevel='" + reorderLevel + '\'' + 
                ", discontinued='" + discontinued + '\'' + "}" + super.toString();
    }
    
}
