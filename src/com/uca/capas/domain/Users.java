package com.uca.capas.domain;

import java.util.Currency;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;

import org.hibernate.validator.constraints.NotEmpty;

@Entity
@Table(schema = "ebanca", name = "users")
public class Users {
	@Id
	@GeneratedValue(generator="users_user_id_seq", strategy = GenerationType.AUTO)
	@SequenceGenerator(name = "users_user_id_seq", sequenceName = "ebanca.users_user_id_seq")
	@Column(name = "user_id" , nullable = false)
	private Integer userId;
	
	@NotEmpty(message = "El campo Nombre no puede quedar vacio")
	@Column(name = "user_name")
	private String userName;
	
	@NotEmpty(message = "El campo Apellido no puede quedar vacio")
	@Column(name = "user_pass" , nullable = false)
	private String userPass;
	
	@NotNull(message = "El campo Fecha no puede quedar vacio")
	@Column(name = "user_balance")
	private Double userBalance;
	
	@Column(name = "user_type")
	private String userType;
	
	@Column(name = "user_state")
	private Boolean userState;
	

	public Integer getUserId() {
		return userId;
	}

	public void setUserId(Integer userId) {
		this.userId = userId;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getUserPass() {
		return userPass;
	}

	public void setUserPass(String userPass) {
		this.userPass = userPass;
	}

	public Double getUserBalance() {
		return userBalance;
	}

	public void setUserBalance(Double userBalance) {
		this.userBalance = userBalance;
	}

	public String getUserType() {
		return userType;
	}

	public void setUserType(String userType) {
		this.userType = userType;
	}

	public Boolean getUserState() {
		return userState;
	}

	public void setUserState(Boolean userState) {
		this.userState = userState;
	}

	
}
