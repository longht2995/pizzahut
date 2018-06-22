package greenglobal.pizzahut.entity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.OneToOne;
import javax.persistence.Table;
@Entity
@Table
public class MaterialImage {
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private Integer id;
	@OneToOne
	private CategoryImage categoryImage;
	@ManyToOne
	private Material material;
	private String image;
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public CategoryImage getCategoryImage() {
		return categoryImage;
	}
	public void setCategoryImage(CategoryImage categoryImage) {
		this.categoryImage = categoryImage;
	}
	public Material getMaterial() {
		return material;
	}
	public void setMaterial(Material material) {
		this.material = material;
	}
	
	public String getImage() {
		return image;
	}
	public void setImage(String image) {
		this.image = image;
	}
	
	public MaterialImage(Integer id, CategoryImage categoryImage, Material material, String image) {
		super();
		this.id = id;
		this.categoryImage = categoryImage;
		this.material = material;
		this.image = image;
	}
	public MaterialImage() {
		
	}
}
