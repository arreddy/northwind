// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package org.springframework.roo.northwind.repository;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.roo.northwind.model.City;
import org.springframework.roo.northwind.model.Region;
import org.springframework.roo.northwind.repository.CityRepository;
import org.springframework.transaction.annotation.Transactional;

privileged aspect CityRepository_Roo_Jpa_Repository {
    
    declare @type: CityRepository: @Transactional(readOnly = true);
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param region
     * @return Long
     */
    public abstract long CityRepository.countByRegion(Region region);
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param id
     * @param pageable
     * @return Page
     */
    public abstract Page<City> CityRepository.findByRegionIdOrderByDescriptionAsc(Long id, Pageable pageable);
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param id
     * @return Long
     */
    public abstract long CityRepository.countByRegionIdOrderByDescriptionAsc(Long id);
    
}
