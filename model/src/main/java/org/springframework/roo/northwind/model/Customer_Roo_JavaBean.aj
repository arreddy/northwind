// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package org.springframework.roo.northwind.model;

import java.util.Set;
import org.springframework.roo.northwind.model.Customer;
import org.springframework.roo.northwind.model.CustomerOrder;

privileged aspect Customer_Roo_JavaBean {
    
    /**
     * Gets companyName value
     * 
     * @return String
     */
    public String Customer.getCompanyName() {
        return this.companyName;
    }
    
    /**
     * Sets companyName value
     * 
     * @param companyName
     * @return Customer
     */
    public Customer Customer.setCompanyName(String companyName) {
        this.companyName = companyName;
        return this;
    }
    
    /**
     * Gets contactName value
     * 
     * @return String
     */
    public String Customer.getContactName() {
        return this.contactName;
    }
    
    /**
     * Sets contactName value
     * 
     * @param contactName
     * @return Customer
     */
    public Customer Customer.setContactName(String contactName) {
        this.contactName = contactName;
        return this;
    }
    
    /**
     * Gets contactTitle value
     * 
     * @return String
     */
    public String Customer.getContactTitle() {
        return this.contactTitle;
    }
    
    /**
     * Sets contactTitle value
     * 
     * @param contactTitle
     * @return Customer
     */
    public Customer Customer.setContactTitle(String contactTitle) {
        this.contactTitle = contactTitle;
        return this;
    }
    
    /**
     * Gets fax value
     * 
     * @return String
     */
    public String Customer.getFax() {
        return this.fax;
    }
    
    /**
     * Sets fax value
     * 
     * @param fax
     * @return Customer
     */
    public Customer Customer.setFax(String fax) {
        this.fax = fax;
        return this;
    }
    
    /**
     * Gets email value
     * 
     * @return String
     */
    public String Customer.getEmail() {
        return this.email;
    }
    
    /**
     * Sets email value
     * 
     * @param email
     * @return Customer
     */
    public Customer Customer.setEmail(String email) {
        this.email = email;
        return this;
    }
    
    /**
     * Gets customerOrders value
     * 
     * @return Set
     */
    public Set<CustomerOrder> Customer.getCustomerOrders() {
        return this.customerOrders;
    }
    
    /**
     * Sets customerOrders value
     * 
     * @param customerOrders
     * @return Customer
     */
    public Customer Customer.setCustomerOrders(Set<CustomerOrder> customerOrders) {
        this.customerOrders = customerOrders;
        return this;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return String
     */
    public String Customer.toString() {
        return "Customer {" + 
                "companyName='" + companyName + '\'' + 
                ", contactName='" + contactName + '\'' + 
                ", contactTitle='" + contactTitle + '\'' + 
                ", fax='" + fax + '\'' + 
                ", email='" + email + '\'' + "}" + super.toString();
    }
    
}
