package asmjava512;

import java.io.Serializable;
import javax.persistence.*;


/**
 * The persistent class for the Authorities database table.
 * 
 */
@Entity
@Table(name="Authorities")
@NamedQuery(name="Authority.findAll", query="SELECT a FROM Authority a")
public class Authority implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@Column(name="Id")
	private int id;

	//bi-directional many-to-one association to Account
	@ManyToOne
	@JoinColumn(name="Username")
	private Account account;

	//bi-directional many-to-one association to Role
	@ManyToOne
	@JoinColumn(name="RoleId")
	private Role role;

	public Authority() {
	}

	public int getId() {
		return this.id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public Account getAccount() {
		return this.account;
	}

	public void setAccount(Account account) {
		this.account = account;
	}

	public Role getRole() {
		return this.role;
	}

	public void setRole(Role role) {
		this.role = role;
	}

}