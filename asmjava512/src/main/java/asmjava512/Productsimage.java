package asmjava512;

import java.io.Serializable;
import javax.persistence.*;


/**
 * The persistent class for the Productsimage database table.
 * 
 */
@Entity
@NamedQuery(name="Productsimage.findAll", query="SELECT p FROM Productsimage p")
public class Productsimage implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@Column(name="Imageproduct")
	private String imageproduct;

	//bi-directional many-to-one association to Product
	@ManyToOne
	@JoinColumn(name="Id")
	private Product product;

	public Productsimage() {
	}

	public String getImageproduct() {
		return this.imageproduct;
	}

	public void setImageproduct(String imageproduct) {
		this.imageproduct = imageproduct;
	}

	public Product getProduct() {
		return this.product;
	}

	public void setProduct(Product product) {
		this.product = product;
	}

}