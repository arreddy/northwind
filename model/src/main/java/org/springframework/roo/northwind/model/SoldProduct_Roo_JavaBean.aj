// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package org.springframework.roo.northwind.model;

import java.util.Objects;
import org.springframework.roo.northwind.model.SoldProduct;

privileged aspect SoldProduct_Roo_JavaBean {
    
    /**
     * Gets id value
     * 
     * @return Long
     */
    public Long SoldProduct.getId() {
        return this.id;
    }
    
    /**
     * Sets id value
     * 
     * @param id
     * @return SoldProduct
     */
    public SoldProduct SoldProduct.setId(Long id) {
        this.id = id;
        return this;
    }
    
    /**
     * Gets version value
     * 
     * @return Long
     */
    public Long SoldProduct.getVersion() {
        return this.version;
    }
    
    /**
     * Sets version value
     * 
     * @param version
     * @return SoldProduct
     */
    public SoldProduct SoldProduct.setVersion(Long version) {
        this.version = version;
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
    public boolean SoldProduct.equals(Object obj) {
        if (this == obj) {
            return true;
        }
        // instanceof is false if the instance is null
        if (!(obj instanceof SoldProduct)) {
            return false;
        }
        return getId() != null && Objects.equals(getId(), ((SoldProduct) obj).getId());
    }
    
    /**
     * This `hashCode` implementation is specific for JPA entities and uses a fixed `int` value to be able 
     * to identify the entity in collections after a new id is assigned to the entity, following the article in 
     * https://vladmihalcea.com/2016/06/06/how-to-implement-equals-and-hashcode-using-the-jpa-entity-identifier/
     * 
     * @return Integer
     */
    public int SoldProduct.hashCode() {
        return 31;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return String
     */
    public String SoldProduct.toString() {
        return "SoldProduct {" + 
                "id='" + id + '\'' + 
                ", version='" + version + '\'' + "}" + super.toString();
    }
    
}
