package asmjava512;

import java.io.Serializable;
import javax.persistence.*;


/**
 * The persistent class for the anhmau database table.
 * 
 */
@Entity
@Table(name="anhmau")
@NamedQuery(name="Anhmau.findAll", query="SELECT a FROM Anhmau a")
public class Anhmau implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	private String urlanh;

	//bi-directional many-to-one association to Product
	@ManyToOne
	@JoinColumn(name="Idproduct")
	private Product product;

	public Anhmau() {
	}

	public String getUrlanh() {
		return this.urlanh;
	}

	public void setUrlanh(String urlanh) {
		this.urlanh = urlanh;
	}

	public Product getProduct() {
		return this.product;
	}

	public void setProduct(Product product) {
		this.product = product;
	}

}