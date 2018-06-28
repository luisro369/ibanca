package com.uca.capas.domain;



import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.ForeignKey;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;

import org.springframework.format.annotation.DateTimeFormat;

@Entity
@Table(schema = "ebanca" , name = "transactions")
public class Transactions {
	
	@Id
	//@GeneratedValue(generator = "trans_id_trans_seq", strategy = GenerationType.AUTO)
	//@SequenceGenerator(name = "trans_is_trans_seq", sequenceName = "ebanca.trans_id_trans_seq")
	@Column(name = "trans_id")
	private Integer transId;
	
	/*
	@ManyToOne(optional = true)
	@JoinColumn(name = "user_id")
	private Users user;
	//muchas tranasacciones pueden tener un usuario*/
	@Column(name = "user_id")
	private Integer userId;

	
	@NotNull(message = "El campo tipo de transaccion no puede quedar vacio")
	@Column(name = "trans_type")
	private String transType;
	
	
	@Column(name = "trans_date")
	@DateTimeFormat(pattern = "dd/MM/yyyy")
	private  Calendar transDate;
	
	@Column(name = "trans_amount")
	private Double transAmount;
	
	@NotNull(message = "El campo concepto de transaccion no puede quedar vacio")
	@Column(name = "trans_concept")
	private String transConcept;
	
	/*
	@ManyToOne(optional = true)
	@JoinColumn(name = "user_name")
	private Users userName;
	//muchas tranasacciones pueden tener un usuario*/
	@Column(name = "trans_user")
	private String transUser;
	
	/*
	@ManyToOne(optional = true)
	@JoinColumn(name = "user_id")
	private Users user2Id;
	//muchas tranasacciones pueden tener un usuario*/
	@Column(name = "trans_account")
	private Integer transAccount;

	public Integer getTransId() {
		return transId;
	}

	public void setTransId(Integer transId) {
		this.transId = transId;
	}

	public Integer getUserId() {
		return userId;
	}

	public void setUserId(Integer userId) {
		this.userId = userId;
	}

	public String getTransType() {
		return transType;
	}

	public void setTransType(String transType) {
		this.transType = transType;
	}

	public Calendar getTransDate() {
		return transDate;
	}

	public void setTransDate(Calendar transDate) {
		this.transDate = transDate;
	}

	public Double getTransAmount() {
		return transAmount;
	}

	public void setTransAmount(Double transAmount) {
		this.transAmount = transAmount;
	}

	public String getTransConcept() {
		return transConcept;
	}

	public void setTransConcept(String transConcept) {
		this.transConcept = transConcept;
	}

	public String getTransUser() {
		return transUser;
	}

	public void setTransUser(String transUser) {
		this.transUser = transUser;
	}

	public Integer getTransAccount() {
		return transAccount;
	}

	public void setTransAccount(Integer transAccount) {
		this.transAccount = transAccount;
	}
	
	//Delegate para conversion de fecha
		public String getFechaDelegate(){
			if(this.transDate == null){
				return "";
			}
			else{
				SimpleDateFormat sdf = new SimpleDateFormat("dd-MM-yyyy");
				String shortdate = sdf.format(this.transDate.getTime());
				return shortdate;
			}
		}
	
	
	
	
	

	
	
	

}//pojo transaction
