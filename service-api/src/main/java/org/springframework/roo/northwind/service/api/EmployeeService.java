package org.springframework.roo.northwind.service.api;
import io.springlets.data.web.validation.ValidatorService;
import io.springlets.format.EntityResolver;
import org.springframework.roo.addon.layers.service.annotations.RooService;
import org.springframework.roo.northwind.model.Employee;

/**
 * = EmployeeService
 *
 * TODO Auto-generated class documentation
 *
 */
@RooService(entity = Employee.class)
public interface EmployeeService extends EntityResolver<Employee, Long>, ValidatorService<Employee> {
}
