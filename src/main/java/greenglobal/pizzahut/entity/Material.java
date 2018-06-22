package greenglobal.pizzahut.entity;

import java.util.List;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name="material")
public class Material {
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private Integer id;
	private String name;
	private Double price;
	private Integer quantity;
	@OneToMany(mappedBy="material")
	private List<MaterialImage> materialImage;
	private boolean extra;
	@ManyToOne
	private Category category;
	@ManyToOne
	private PizzaSize pizzasize;
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public Double getPrice() {
		return price;
	}
	public void setPrice(Double price) {
		this.price = price;
	}
	public Integer getQuantity() {
		return quantity;
	}
	public void setQuantity(Integer quantity) {
		this.quantity = quantity;
	}
	
	public boolean isExtra() {
		return extra;
	}
	public void setExtra(boolean extra) {
		this.extra = extra;
	}
	
	public Category getCategory() {
		return category;
	}
	public void setCategory(Category category) {
		this.category = category;
	}
	public PizzaSize getPizzasize() {
		return pizzasize;
	}
	public void setPizzasize(PizzaSize pizzasize) {
		this.pizzasize = pizzasize;
	}
	
	public List<MaterialImage> getMaterialImage() {
		return materialImage;
	}
	public void setMaterialImage(List<MaterialImage> materialImage) {
	
		this.materialImage = materialImage;
	}
	
	public Material(Integer id, String name, Double price, Integer quantity, List<MaterialImage> materialImage,
			boolean extra, Category category, PizzaSize pizzasize) {
		super();
		this.id = id;
		this.name = name;
		this.price = price;
		this.quantity = quantity;
		this.materialImage = materialImage;
		this.extra = extra;
		this.category = category;
		this.pizzasize = pizzasize;
	}
	public Material() {
		
	}
	

}
