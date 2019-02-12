// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package org.springframework.roo.northwind.model.dod;

import org.springframework.roo.northwind.model.Region;
import org.springframework.roo.northwind.model.dod.RegionFactory;

privileged aspect RegionFactory_Roo_JpaEntityFactory {
    
    /**
     * Creates a new {@link Region} with the given index.
     * 
     * @param index position of the Region
     * @return a new transient Region
     */
    public Region RegionFactory.create(int index) {
        Region obj = new Region();
        return obj;
    }
    
}
