// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package org.springframework.roo.northwind.application.web;

import io.springlets.web.NotFoundException;
import javax.validation.Valid;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.roo.northwind.application.web.CategoriesItemJsonController;
import org.springframework.roo.northwind.model.Category;
import org.springframework.roo.northwind.service.api.CategoryService;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.mvc.method.annotation.MvcUriComponentsBuilder;
import org.springframework.web.util.UriComponents;

privileged aspect CategoriesItemJsonController_Roo_JSON {
    
    declare @type: CategoriesItemJsonController: @RestController;
    
    declare @type: CategoriesItemJsonController: @RequestMapping(value = "/api/categories/{category}", name = "CategoriesItemJsonController", produces = MediaType.APPLICATION_JSON_VALUE);
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    private CategoryService CategoriesItemJsonController.categoryService;
    
    /**
     * TODO Auto-generated constructor documentation
     * 
     * @param categoryService
     */
    @Autowired
    public CategoriesItemJsonController.new(CategoryService categoryService) {
        this.categoryService = categoryService;
    }

    /**
     * TODO Auto-generated method documentation
     * 
     * @return CategoryService
     */
    public CategoryService CategoriesItemJsonController.getCategoryService() {
        return categoryService;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param categoryService
     */
    public void CategoriesItemJsonController.setCategoryService(CategoryService categoryService) {
        this.categoryService = categoryService;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param id
     * @return Category
     */
    @ModelAttribute
    public Category CategoriesItemJsonController.getCategory(@PathVariable("category") Long id) {
        Category category = categoryService.findOne(id);
        if (category == null) {
            throw new NotFoundException(String.format("Category with identifier '%s' not found",id));
        }
        return category;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param category
     * @return ResponseEntity
     */
    @GetMapping(name = "show")
    public ResponseEntity<?> CategoriesItemJsonController.show(@ModelAttribute Category category) {
        return ResponseEntity.ok(category);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param category
     * @return UriComponents
     */
    public static UriComponents CategoriesItemJsonController.showURI(Category category) {
        return MvcUriComponentsBuilder
            .fromMethodCall(
                MvcUriComponentsBuilder.on(CategoriesItemJsonController.class).show(category))
            .buildAndExpand(category.getId()).encode();
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param storedCategory
     * @param category
     * @param result
     * @return ResponseEntity
     */
    @PutMapping(name = "update")
    public ResponseEntity<?> CategoriesItemJsonController.update(@ModelAttribute Category storedCategory, @Valid @RequestBody Category category, BindingResult result) {
        
        if (result.hasErrors()) {
            return ResponseEntity.status(HttpStatus.CONFLICT).body(result);
        }
        category.setId(storedCategory.getId());
        getCategoryService().save(category);
        return ResponseEntity.ok().build();
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param category
     * @return ResponseEntity
     */
    @DeleteMapping(name = "delete")
    public ResponseEntity<?> CategoriesItemJsonController.delete(@ModelAttribute Category category) {
        getCategoryService().delete(category);
        return ResponseEntity.ok().build();
    }
    
}
