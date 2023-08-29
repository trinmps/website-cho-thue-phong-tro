package com.ps21278.entity;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.persistence.UniqueConstraint;

import lombok.Data;
import lombok.ToString;

@SuppressWarnings("serial")
@Data
@Entity
@Table(name = "danhgia", uniqueConstraints = 
		{@UniqueConstraint(columnNames = {"tendangnhap","idbaidang"})})
public class DanhGia implements Serializable {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	Integer iddanhgia;
	Integer diemdanhgia;	
	String noidung;
	
	@ManyToOne
	@JoinColumn(name = "tendangnhap")
	Account account;
	
	@ManyToOne
	@JoinColumn(name="idbaidang")
	BaiDang baidang;
	

	
}
