package com.thang.entity;

import java.io.Serializable;
import javax.persistence.*;

import com.fasterxml.jackson.databind.util.IgnorePropertiesUtil.Checker;

import lombok.Data;

import java.sql.Timestamp;


/**
 * The persistent class for the users database table.
 * 
 */
@Data
@Entity
@Table(name="users")
@NamedQuery(name="User.findAll", query="SELECT u FROM User u")
public class User implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name="Id")
	private int id;

	@Column(name="Admin")
	private boolean admin ;

	@Column(name="Date")
	private String date;

	@Column(name="Email")
	private String email;

	@Column(name="Password")
	private String password;

	@Column(name="Username")
	private String username;

	
}