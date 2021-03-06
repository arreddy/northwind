package org.springframework.roo.northwind.application.web;
import org.springframework.roo.addon.web.mvc.controller.annotations.ControllerType;
import org.springframework.roo.addon.web.mvc.controller.annotations.RooController;
import org.springframework.roo.addon.web.mvc.controller.annotations.responses.json.RooJSON;
import org.springframework.roo.northwind.model.Category;

/**
 * = CategoriesCollectionJsonController
 *
 * TODO Auto-generated class documentation
 *
 */
@RooController(entity = Category.class, pathPrefix = "/api", type = ControllerType.COLLECTION)
@RooJSON
public class CategoriesCollectionJsonController {
}
