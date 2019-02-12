// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package org.springframework.roo.northwind.model;

import java.util.Set;
import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlElementWrapper;
import javax.xml.bind.annotation.XmlIDREF;
import javax.xml.bind.annotation.XmlRootElement;
import org.springframework.roo.northwind.model.CustomerOrder;
import org.springframework.roo.northwind.model.Employee;
import org.springframework.roo.northwind.model.Employee_Roo_Jaxb_Entity;
import org.springframework.roo.northwind.model.PurchaseOrder;

privileged aspect Employee_Roo_Jaxb_Entity {
    
    /*
     * This Aspect takes the lower precedence
     */
    declare precedence: *, Employee_Roo_Jaxb_Entity;
    
    declare @type: Employee: @XmlRootElement(name = "employee", namespace = "http://ws.northwind.roo.springframework.org/");
    
    declare @method: public Set<PurchaseOrder> Employee.getPurchaseOrders(): @XmlIDREF;
    
    declare @method: public Set<PurchaseOrder> Employee.getPurchaseOrders(): @XmlElement(name = "purchaseorder");
    
    declare @method: public Set<PurchaseOrder> Employee.getPurchaseOrders(): @XmlElementWrapper(name = "purchaseorders");
    
    declare @method: public Set<CustomerOrder> Employee.getCustomerOrders(): @XmlIDREF;
    
    declare @method: public Set<CustomerOrder> Employee.getCustomerOrders(): @XmlElement(name = "customerorder");
    
    declare @method: public Set<CustomerOrder> Employee.getCustomerOrders(): @XmlElementWrapper(name = "customerorders");
    
}
