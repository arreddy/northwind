// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package org.springframework.roo.northwind.model;

import javax.xml.bind.annotation.XmlAttribute;
import javax.xml.bind.annotation.XmlID;
import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlTransient;
import org.springframework.roo.northwind.model.SoldProduct;
import org.springframework.roo.northwind.model.SoldProduct_Roo_Jaxb_Entity;

privileged aspect SoldProduct_Roo_Jaxb_Entity {
    
    /*
     * This Aspect takes the lower precedence
     */
    declare precedence: *, SoldProduct_Roo_Jaxb_Entity;
    
    declare @type: SoldProduct: @XmlRootElement(name = "soldproduct", namespace = "http://ws.northwind.roo.springframework.org/");
    
    declare @method: public Long SoldProduct.getId(): @XmlTransient;
    
    /**
     * Must return an unique ID across all entities
     * 
     * @return String
     */
    @XmlID
    @XmlAttribute(name = "id")
    public String SoldProduct.getXmlIdentityInfo() {
        return getClass().getName() + ":" + getId();
    }
    
}
