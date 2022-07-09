package asmjava512;

import java.io.Serializable;
import javax.persistence.*;
import java.sql.Timestamp;


/**
 * The persistent class for the OrderDetails database table.
 * 
 */
@Entity
@Table(name="OrderDetails")
@NamedQuery(name="OrderDetail.findAll", query="SELECT o FROM OrderDetail o")
public class OrderDetail implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@Column(name="Id")
	private long id;

	@Column(name="Ngaynhanhang")
	private Timestamp ngaynhanhang;

	@Column(name="Price")
	private double price;

	@Column(name="Quantity")
	private int quantity;

	//bi-directional many-to-one association to Order
	@ManyToOne
	@JoinColumn(name="OrderId")
	private Order order;

	//bi-directional many-to-one association to Productsdetail
	@ManyToOne
	@JoinColumn(name="ProductId")
	private Productsdetail productsdetail;

	public OrderDetail() {
	}

	public long getId() {
		return this.id;
	}

	public void setId(long id) {
		this.id = id;
	}

	public Timestamp getNgaynhanhang() {
		return this.ngaynhanhang;
	}

	public void setNgaynhanhang(Timestamp ngaynhanhang) {
		this.ngaynhanhang = ngaynhanhang;
	}

	public double getPrice() {
		return this.price;
	}

	public void setPrice(double price) {
		this.price = price;
	}

	public int getQuantity() {
		return this.quantity;
	}

	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}

	public Order getOrder() {
		return this.order;
	}

	public void setOrder(Order order) {
		this.order = order;
	}

	public Productsdetail getProductsdetail() {
		return this.productsdetail;
	}

	public void setProductsdetail(Productsdetail productsdetail) {
		this.productsdetail = productsdetail;
	}

}