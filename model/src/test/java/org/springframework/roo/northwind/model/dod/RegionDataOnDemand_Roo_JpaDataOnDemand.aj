// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package org.springframework.roo.northwind.model.dod;

import java.security.SecureRandom;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Random;
import javax.persistence.EntityManager;
import javax.persistence.TypedQuery;
import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Root;
import javax.validation.ConstraintViolation;
import javax.validation.ConstraintViolationException;
import org.springframework.roo.northwind.model.Region;
import org.springframework.roo.northwind.model.dod.RegionDataOnDemand;
import org.springframework.roo.northwind.model.dod.RegionFactory;

privileged aspect RegionDataOnDemand_Roo_JpaDataOnDemand {
    
    /**
     * Random generator for the entities index.
     * 
     */
    private Random RegionDataOnDemand.rnd = new SecureRandom();
    
    /**
     * List of created entities.
     * 
     */
    private List<Region> RegionDataOnDemand.data;
    
    /**
     * EntityManager to persist the entities.
     * 
     */
    private EntityManager RegionDataOnDemand.entityManager;
    
    /**
     * Number of elements to create and persist.
     * 
     */
    private int RegionDataOnDemand.size;
    
    /**
     * Factory to create entity instances.
     * 
     */
    private RegionFactory RegionDataOnDemand.factory = new RegionFactory();
    
    /**
     * TODO Auto-generated constructor documentation
     * 
     * @param entityManager
     */
    public RegionDataOnDemand.new(EntityManager entityManager) {
        this(entityManager, 10);
    }

    /**
     * TODO Auto-generated constructor documentation
     * 
     * @param entityManager
     * @param size
     */
    public RegionDataOnDemand.new(EntityManager entityManager, int size) {
        setEntityManager(entityManager);
        setSize(size);
    }

    /**
     * TODO Auto-generated method documentation
     * 
     * @return Random
     */
    public Random RegionDataOnDemand.getRnd() {
        return rnd;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param rnd
     */
    public void RegionDataOnDemand.setRnd(Random rnd) {
        this.rnd = rnd;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return List
     */
    public List<Region> RegionDataOnDemand.getData() {
        return data;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param data
     */
    public void RegionDataOnDemand.setData(List<Region> data) {
        this.data = data;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return EntityManager
     */
    public EntityManager RegionDataOnDemand.getEntityManager() {
        return entityManager;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param entityManager
     */
    public void RegionDataOnDemand.setEntityManager(EntityManager entityManager) {
        this.entityManager = entityManager;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return Integer
     */
    public int RegionDataOnDemand.getSize() {
        return size;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param size
     */
    public void RegionDataOnDemand.setSize(int size) {
        this.size = size;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return RegionFactory
     */
    public RegionFactory RegionDataOnDemand.getFactory() {
        return factory;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param factory
     */
    public void RegionDataOnDemand.setFactory(RegionFactory factory) {
        this.factory = factory;
    }
    
    /**
     * Creates a new transient Region in a random index out of the initial list of the created entities,
     * with an index greater than {@link RegionDataOnDemand#getSize()} - 1.
     * 
     * @return Region the generated transient {@link Region}
     */
    public Region RegionDataOnDemand.getNewRandomTransientRegion() {
        int randomIndex = getSize() + getRnd().nextInt(Integer.MAX_VALUE - getSize());
        return getFactory().create(randomIndex);
    }
    
    /**
     * Returns a generated and persisted {@link Region} in a given index.
     * 
     * @param index the position of the {@link Region} to return
     * @return Region the specific {@link Region}
     */
    public Region RegionDataOnDemand.getSpecificRegion(int index) {
        init();
        if (index < 0) {
            index = 0;
        }
        if (index > (getData().size() - 1)) {
            index = getData().size() - 1;
        }
        return getData().get(index);
    }
    
    /**
     * Returns a generated and persisted {@link Region} in a random index.
     * 
     * @return Region a random {@link Region}
     */
    public Region RegionDataOnDemand.getRandomRegion() {
        init();
        return getData().get(getRnd().nextInt(getData().size()));
    }
    
    /**
     * Creates the initial list of generated entities.
     * 
     */
    public void RegionDataOnDemand.init() {
        int from = 0;
        int to = 10;
        
        CriteriaBuilder cb = getEntityManager().getCriteriaBuilder();
        CriteriaQuery<Region> cq = cb.createQuery(Region.class);
        Root<Region> rootEntry = cq.from(Region.class);
        CriteriaQuery<Region> all = cq.select(rootEntry);
        TypedQuery<Region> allQuery = 
            getEntityManager().createQuery(all).setFirstResult(from).setMaxResults(to);
        setData(allQuery.getResultList());
        if (getData() == null) {
            throw new IllegalStateException(
                "Find entries implementation for 'Region' illegally returned null");
        }
        if (!getData().isEmpty()) {
            return;
        }
        
        setData(new ArrayList<Region>());
        for (int i = from; i < to; i++) {
            Region obj = getFactory().create(i);
            try {
                getEntityManager().persist(obj);
            } catch (final ConstraintViolationException e) {
                final StringBuilder msg = new StringBuilder();
                for (Iterator<ConstraintViolation<?>> iter = e.getConstraintViolations().iterator(); iter
                      .hasNext();) {
                    final ConstraintViolation<?> cv = iter.next();
                    msg.append("[").append(cv.getRootBean().getClass().getName()).append(".")
                    .append(cv.getPropertyPath()).append(": ").append(cv.getMessage())
                    .append(" (invalid value = ").append(cv.getInvalidValue()).append(")").append("]");
                }
                throw new IllegalStateException(msg.toString(), e);
            }
            getEntityManager().flush();
            getData().add(obj);
        }
    }
    
}
