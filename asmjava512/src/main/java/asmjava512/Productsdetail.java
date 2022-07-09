package asmjava512;

import java.io.Serializable;
import javax.persistence.*;
import java.util.List;


/**
 * The persistent class for the Productsdetail database table.
 * 
 */
@Entity
@NamedQuery(name="Productsdetail.findAll", query="SELECT p FROM Productsdetail p")
public class Productsdetail implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@Column(name="Iddetail")
	private int iddetail;

	@Column(name="Color")
	private Object color;

	@Column(name="Content")
	private Object content;

	@Column(name="Quantity")
	private Object quantity;

	@Column(name="Size")
	private Object size;

	//bi-directional many-to-one association to OrderDetail
	@OneToMany(mappedBy="productsdetail")
	private List<OrderDetail> orderDetails;

	//bi-directional many-to-one association to Order
	@OneToMany(mappedBy="productsdetail")
	private List<Order> orders;

	//bi-directional many-to-one association to Product
	@ManyToOne
	@JoinColumn(name="Idproduct")
	private Product product;

	public Productsdetail() {
	}

	public int getIddetail() {
		return this.iddetail;
	}

	public void setIddetail(int iddetail) {
		this.iddetail = iddetail;
	}

	public Object getColor() {
		return this.color;
	}

	public void setColor(Object color) {
		this.color = color;
	}

	public Object getContent() {
		return this.content;
	}

	public void setContent(Object content) {
		this.content = content;
	}

	public Object getQuantity() {
		return this.quantity;
	}

	public void setQuantity(Object quantity) {
		this.quantity = quantity;
	}

	public Object getSize() {
		return this.size;
	}

	public void setSize(Object size) {
		this.size = size;
	}

	public List<OrderDetail> getOrderDetails() {
		return this.orderDetails;
	}

	public void setOrderDetails(List<OrderDetail> orderDetails) {
		this.orderDetails = orderDetails;
	}

	public OrderDetail addOrderDetail(OrderDetail orderDetail) {
		getOrderDetails().add(orderDetail);
		orderDetail.setProductsdetail(this);

		return orderDetail;
	}

	public OrderDetail removeOrderDetail(OrderDetail orderDetail) {
		getOrderDetails().remove(orderDetail);
		orderDetail.setProductsdetail(null);

		return orderDetail;
	}

	public List<Order> getOrders() {
		return this.orders;
	}

	public void setOrders(List<Order> orders) {
		this.orders = orders;
	}

	public Order addOrder(Order order) {
		getOrders().add(order);
		order.setProductsdetail(this);

		return order;
	}

	public Order removeOrder(Order order) {
		getOrders().remove(order);
		order.setProductsdetail(null);

		return order;
	}

	public Product getProduct() {
		return this.product;
	}

	public void setProduct(Product product) {
		this.product = product;
	}

}