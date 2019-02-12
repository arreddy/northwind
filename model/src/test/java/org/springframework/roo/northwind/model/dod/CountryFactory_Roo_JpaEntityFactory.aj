// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package org.springframework.roo.northwind.model.dod;

import org.springframework.roo.northwind.model.Country;
import org.springframework.roo.northwind.model.dod.CountryFactory;

privileged aspect CountryFactory_Roo_JpaEntityFactory {
    
    /**
     * Creates a new {@link Country} with the given index.
     * 
     * @param index position of the Country
     * @return a new transient Country
     */
    public Country CountryFactory.create(int index) {
        Country obj = new Country();
        return obj;
    }
    
}