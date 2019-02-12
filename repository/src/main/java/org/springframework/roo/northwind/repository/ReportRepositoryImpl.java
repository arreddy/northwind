package org.springframework.roo.northwind.repository;

import io.springlets.data.jpa.repository.support.QueryDslRepositorySupportExt;
import org.springframework.roo.addon.layers.repository.jpa.annotations.RooJpaRepositoryCustomImpl;
import org.springframework.roo.northwind.model.Report;

/**
 * = ReportRepositoryImpl
 *
 * Implementation of ReportRepositoryCustom
 *
 */
@RooJpaRepositoryCustomImpl(repository = ReportRepositoryCustom.class)
public class ReportRepositoryImpl extends QueryDslRepositorySupportExt<Report> implements ReportRepositoryCustom{

    /**
     * Default constructor
     */
    ReportRepositoryImpl() {
        super(Report.class);
    }
}