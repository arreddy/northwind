// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package org.springframework.roo.northwind.model;

import java.util.Objects;
import java.util.Set;
import org.springframework.roo.northwind.model.City;
import org.springframework.roo.northwind.model.CustomerOrder;
import org.springframework.roo.northwind.model.Party;
import org.springframework.roo.northwind.model.Region;
import org.springframework.roo.northwind.model.Store;
import org.springframework.roo.northwind.model.Supplier;

privileged aspect City_Roo_JavaBean {
    
    /**
     * Gets id value
     * 
     * @return Long
     */
    public Long City.getId() {
        return this.id;
    }
    
    /**
     * Gets version value
     * 
     * @return Long
     */
    public Long City.getVersion() {
        return this.version;
    }
    
    /**
     * Gets description value
     * 
     * @return String
     */
    public String City.getDescription() {
        return this.description;
    }
    
    /**
     * Gets parties value
     * 
     * @return Set
     */
    public Set<Party> City.getParties() {
        return this.parties;
    }
    
    /**
     * Gets customerOrders value
     * 
     * @return Set
     */
    public Set<CustomerOrder> City.getCustomerOrders() {
        return this.customerOrders;
    }
    
    /**
     * Gets stores value
     * 
     * @return Set
     */
    public Set<Store> City.getStores() {
        return this.stores;
    }
    
    /**
     * Gets suppliers value
     * 
     * @return Set
     */
    public Set<Supplier> City.getSuppliers() {
        return this.suppliers;
    }
    
    /**
     * Gets region value
     * 
     * @return Region
     */
    public Region City.getRegion() {
        return this.region;
    }
    
    /**
     * This `equals` implementation is specific for JPA entities and uses 
     * the entity identifier for it, following the article in 
     * https://vladmihalcea.com/2016/06/06/how-to-implement-equals-and-hashcode-using-the-jpa-entity-identifier/
     * 
     * @param obj
     * @return Boolean
     */
    public boolean City.equals(Object obj) {
        if (this == obj) {
            return true;
        }
        // instanceof is false if the instance is null
        if (!(obj instanceof City)) {
            return false;
        }
        return getId() != null && Objects.equals(getId(), ((City) obj).getId());
    }
    
    /**
     * This `hashCode` implementation is specific for JPA entities and uses a fixed `int` value to be able 
     * to identify the entity in collections after a new id is assigned to the entity, following the article in 
     * https://vladmihalcea.com/2016/06/06/how-to-implement-equals-and-hashcode-using-the-jpa-entity-identifier/
     * 
     * @return Integer
     */
    public int City.hashCode() {
        return 31;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return String
     */
    public String City.toString() {
        return "City {" + 
                "id='" + id + '\'' + 
                ", version='" + version + '\'' + 
                ", description='" + description + '\'' + "}" + super.toString();
    }
    
}
