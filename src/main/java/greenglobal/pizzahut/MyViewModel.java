package greenglobal.pizzahut;

import java.util.ArrayList;
import java.util.List;

import org.zkoss.bind.annotation.BindingParam;
import org.zkoss.bind.annotation.Command;
import org.zkoss.bind.annotation.GlobalCommand;
import org.zkoss.bind.annotation.Init;
import org.zkoss.bind.annotation.NotifyChange;
import org.zkoss.zk.ui.select.annotation.VariableResolver;
import org.zkoss.zk.ui.select.annotation.WireVariable;

import greenglobal.pizzahut.entity.Category;
import greenglobal.pizzahut.entity.Material;
import greenglobal.pizzahut.entity.PizzaSize;
import greenglobal.pizzahut.services.CategoryService;
import greenglobal.pizzahut.services.MaterialService;
import greenglobal.pizzahut.services.PizzaSizeService;

@VariableResolver(org.zkoss.zkplus.spring.DelegatingVariableResolver.class)
public class MyViewModel {

	@WireVariable
	private PizzaSizeService pizzasizeService;
	@WireVariable
	private MaterialService materialService;
	@WireVariable
	private CategoryService categoryService;
	private List<Category> categoryList;
	private List<PizzaSize> pizzaSizeList;
	private List<Material> materialList;
	private PizzaSize pizzaSize;
	private Category category;
	@Init
	public void init() {
		pizzaSizeList = new ArrayList<PizzaSize>();
		pizzaSize = new PizzaSize();
		categoryList = new ArrayList<Category>();
		materialList = new ArrayList<Material>();
		category = new Category();
		getPizzaSizeList();
		getCategoryList();
		pizzaSize = pizzaSizeList.get(0);
		category = categoryList.get(0);
		getMaterialList();
		
	}
	
	public List<PizzaSize> getPizzaSizeList() {
		pizzaSizeList = pizzasizeService.findAll();
		return pizzaSizeList;
	}

	public void setPizzaSizeList(List<PizzaSize> pizzaSizeList) {
		this.pizzaSizeList = pizzaSizeList;
	}

	public List<Material> getMaterialList() {
		materialList = materialService.findBySize(pizzaSize,category);
		return materialList;
	}

	public void setMaterialList(List<Material> materialList) {
		this.materialList = materialList;
	}

	public PizzaSize getPizzaSize() {
		return pizzaSize;
	}
	@NotifyChange("materialList")
	public void setPizzaSize(PizzaSize pizzaSize) {
		this.pizzaSize = pizzaSize;
	}

	public Category getCategory() {
		return category;
	}

	public void setCategory(Category category) {
		this.category = category;
	}

	public List<Category> getCategoryList() {
		categoryList = categoryService.findAll();
		return categoryList;
	}

	public void setCategoryList(List<Category> categoryList) {
		this.categoryList = categoryList;
	}
	@Command("setCategory")
	@NotifyChange("materialList")
	public void changeCategory(@BindingParam("index")Category c) {
		setCategory(c);
		
	}

}
