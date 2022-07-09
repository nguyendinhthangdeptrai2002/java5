package com.thang.entity;

import java.io.Serializable;
import javax.persistence.*;

import lombok.Data;


/**
 * The persistent class for the khachhang database table.
 * 
 */
@Data
@Entity
@Table(name="khachhang")
@NamedQuery(name="Khachhang.findAll", query="SELECT k FROM Khachhang k")
public class Khachhang implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@Column(name="Username")
	private String username;

	@Column(name="Email")
	private String email;

	@Column(name="Gioitinh")
	private boolean gioitinh =false;

	@Column(name="Hoten")
	private String hoten;

	@Column(name="Password")
	private String password;


}