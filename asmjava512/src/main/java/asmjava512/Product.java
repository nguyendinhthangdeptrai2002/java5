package asmjava512;

import java.io.Serializable;
import javax.persistence.*;
import java.util.List;


/**
 * The persistent class for the Products database table.
 * 
 */
@Entity
@Table(name="Products")
@NamedQuery(name="Product.findAll", query="SELECT p FROM Product p")
public class Product implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@Column(name="Id")
	private int id;

	@Column(name="Available")
	private boolean available;

	@Column(name="CreateDate")
	private Object createDate;

	@Column(name="Image")
	private Object image;

	@Column(name="Name")
	private Object name;

	@Column(name="Price")
	private double price;

	//bi-directional many-to-one association to Category
	@ManyToOne
	@JoinColumn(name="CategoryId")
	private Category category;

	//bi-directional many-to-one association to Productsdetail
	@OneToMany(mappedBy="product")
	private List<Productsdetail> productsdetails;

	//bi-directional many-to-one association to Productsimage
	@OneToMany(mappedBy="product")
	private List<Productsimage> productsimages;

	//bi-directional many-to-one association to Anhmau
	@OneToMany(mappedBy="product")
	private List<Anhmau> anhmaus;

	public Product() {
	}

	public int getId() {
		return this.id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public boolean getAvailable() {
		return this.available;
	}

	public void setAvailable(boolean available) {
		this.available = available;
	}

	public Object getCreateDate() {
		return this.createDate;
	}

	public void setCreateDate(Object createDate) {
		this.createDate = createDate;
	}

	public Object getImage() {
		return this.image;
	}

	public void setImage(Object image) {
		this.image = image;
	}

	public Object getName() {
		return this.name;
	}

	public void setName(Object name) {
		this.name = name;
	}

	public double getPrice() {
		return this.price;
	}

	public void setPrice(double price) {
		this.price = price;
	}

	public Category getCategory() {
		return this.category;
	}

	public void setCategory(Category category) {
		this.category = category;
	}

	public List<Productsdetail> getProductsdetails() {
		return this.productsdetails;
	}

	public void setProductsdetails(List<Productsdetail> productsdetails) {
		this.productsdetails = productsdetails;
	}

	public Productsdetail addProductsdetail(Productsdetail productsdetail) {
		getProductsdetails().add(productsdetail);
		productsdetail.setProduct(this);

		return productsdetail;
	}

	public Productsdetail removeProductsdetail(Productsdetail productsdetail) {
		getProductsdetails().remove(productsdetail);
		productsdetail.setProduct(null);

		return productsdetail;
	}

	public List<Productsimage> getProductsimages() {
		return this.productsimages;
	}

	public void setProductsimages(List<Productsimage> productsimages) {
		this.productsimages = productsimages;
	}

	public Productsimage addProductsimage(Productsimage productsimage) {
		getProductsimages().add(productsimage);
		productsimage.setProduct(this);

		return productsimage;
	}

	public Productsimage removeProductsimage(Productsimage productsimage) {
		getProductsimages().remove(productsimage);
		productsimage.setProduct(null);

		return productsimage;
	}

	public List<Anhmau> getAnhmaus() {
		return this.anhmaus;
	}

	public void setAnhmaus(List<Anhmau> anhmaus) {
		this.anhmaus = anhmaus;
	}

	public Anhmau addAnhmaus(Anhmau anhmaus) {
		getAnhmaus().add(anhmaus);
		anhmaus.setProduct(this);

		return anhmaus;
	}

	public Anhmau removeAnhmaus(Anhmau anhmaus) {
		getAnhmaus().remove(anhmaus);
		anhmaus.setProduct(null);

		return anhmaus;
	}

}