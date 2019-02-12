// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package org.springframework.roo.northwind.repository;

import com.querydsl.core.types.Path;
import com.querydsl.jpa.JPQLQuery;
import io.springlets.data.domain.GlobalSearch;
import io.springlets.data.jpa.repository.support.QueryDslRepositorySupportExt.AttributeMappingBuilder;
import java.util.List;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.roo.northwind.model.CustomerOrder;
import org.springframework.roo.northwind.model.OrderDetail;
import org.springframework.roo.northwind.model.Product;
import org.springframework.roo.northwind.model.QOrderDetail;
import org.springframework.roo.northwind.repository.OrderDetailRepositoryImpl;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.util.Assert;

privileged aspect OrderDetailRepositoryImpl_Roo_Jpa_Repository_Impl {
    
    declare @type: OrderDetailRepositoryImpl: @Transactional(readOnly = true);
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    public static final String OrderDetailRepositoryImpl.CUSTOMER_ORDER = "customerOrder";
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    public static final String OrderDetailRepositoryImpl.QUANTITY = "quantity";
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    public static final String OrderDetailRepositoryImpl.DISCOUNT = "discount";
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    public static final String OrderDetailRepositoryImpl.PRODUCT = "product";
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param globalSearch
     * @param pageable
     * @return Page
     */
    public Page<OrderDetail> OrderDetailRepositoryImpl.findAll(GlobalSearch globalSearch, Pageable pageable) {
        
        QOrderDetail orderDetail = QOrderDetail.orderDetail;
        
        JPQLQuery<OrderDetail> query = from(orderDetail);
        
        Path<?>[] paths = new Path<?>[] {orderDetail.customerOrder,orderDetail.quantity,orderDetail.discount,orderDetail.product};        
        applyGlobalSearch(globalSearch, query, paths);
        
        AttributeMappingBuilder mapping = buildMapper()
			.map(CUSTOMER_ORDER, orderDetail.customerOrder)
			.map(QUANTITY, orderDetail.quantity)
			.map(DISCOUNT, orderDetail.discount)
			.map(PRODUCT, orderDetail.product);
        
        applyPagination(pageable, query, mapping);
        applyOrderById(query);
        
        return loadPage(query, pageable, orderDetail);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param ids
     * @param globalSearch
     * @param pageable
     * @return Page
     */
    public Page<OrderDetail> OrderDetailRepositoryImpl.findAllByIdsIn(List<Long> ids, GlobalSearch globalSearch, Pageable pageable) {
        
        QOrderDetail orderDetail = QOrderDetail.orderDetail;
        
        JPQLQuery<OrderDetail> query = from(orderDetail);
        
        Path<?>[] paths = new Path<?>[] {orderDetail.customerOrder,orderDetail.quantity,orderDetail.discount,orderDetail.product};        
        applyGlobalSearch(globalSearch, query, paths);
        
        // Also, filter by the provided ids
        query.where(orderDetail.id.in(ids));
        
        AttributeMappingBuilder mapping = buildMapper()
			.map(CUSTOMER_ORDER, orderDetail.customerOrder)
			.map(QUANTITY, orderDetail.quantity)
			.map(DISCOUNT, orderDetail.discount)
			.map(PRODUCT, orderDetail.product);
        
        applyPagination(pageable, query, mapping);
        applyOrderById(query);
        
        return loadPage(query, pageable, orderDetail);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param customerOrder
     * @param globalSearch
     * @param pageable
     * @return Page
     */
    public Page<OrderDetail> OrderDetailRepositoryImpl.findByCustomerOrder(CustomerOrder customerOrder, GlobalSearch globalSearch, Pageable pageable) {
        
        QOrderDetail orderDetail = QOrderDetail.orderDetail;
        
        JPQLQuery<OrderDetail> query = from(orderDetail);
        
        Assert.notNull(customerOrder, "customerOrder is required");
        
        query.where(orderDetail.customerOrder.eq(customerOrder));
        Path<?>[] paths = new Path<?>[] {orderDetail.customerOrder,orderDetail.quantity,orderDetail.discount,orderDetail.product};        
        applyGlobalSearch(globalSearch, query, paths);
        
        AttributeMappingBuilder mapping = buildMapper()
			.map(CUSTOMER_ORDER, orderDetail.customerOrder)
			.map(QUANTITY, orderDetail.quantity)
			.map(DISCOUNT, orderDetail.discount)
			.map(PRODUCT, orderDetail.product);
        
        applyPagination(pageable, query, mapping);
        applyOrderById(query);
        
        return loadPage(query, pageable, orderDetail);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param product
     * @param globalSearch
     * @param pageable
     * @return Page
     */
    public Page<OrderDetail> OrderDetailRepositoryImpl.findByProduct(Product product, GlobalSearch globalSearch, Pageable pageable) {
        
        QOrderDetail orderDetail = QOrderDetail.orderDetail;
        
        JPQLQuery<OrderDetail> query = from(orderDetail);
        
        Assert.notNull(product, "product is required");
        
        query.where(orderDetail.product.eq(product));
        Path<?>[] paths = new Path<?>[] {orderDetail.customerOrder,orderDetail.quantity,orderDetail.discount,orderDetail.product};        
        applyGlobalSearch(globalSearch, query, paths);
        
        AttributeMappingBuilder mapping = buildMapper()
			.map(CUSTOMER_ORDER, orderDetail.customerOrder)
			.map(QUANTITY, orderDetail.quantity)
			.map(DISCOUNT, orderDetail.discount)
			.map(PRODUCT, orderDetail.product);
        
        applyPagination(pageable, query, mapping);
        applyOrderById(query);
        
        return loadPage(query, pageable, orderDetail);
    }
    
}
