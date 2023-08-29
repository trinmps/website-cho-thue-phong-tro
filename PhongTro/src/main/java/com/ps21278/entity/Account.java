package com.ps21278.entity;

import java.io.Serializable;
import java.util.List;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.validation.constraints.Email;
import javax.validation.constraints.NotBlank;

import com.fasterxml.jackson.annotation.JsonIgnore;

import lombok.Data;

@SuppressWarnings("serial")
@Data
@Entity 
@Table(name = "NGUOIDUNG")
public class Account  implements Serializable{
	@Id
	@NotBlank(message="Không để trống tên đăng nhập")
	String tendangnhap;
	@NotBlank(message="Không để trống mật khẩu")
	String matkhau;
	@NotBlank(message="Không để trống tài khoản")
	String hoten;
	@NotBlank(message="Không để số điện thoại")
	String dienthoai;
	@NotBlank(message = "Không để trống email")
	@Email(message = "Không đúng định dạng email")
	String email;
	boolean vaitro;
	
	@JsonIgnore
	@OneToMany(mappedBy = "account")
	List<BaiDang> baidangs;
	
	@JsonIgnore
	@OneToMany(mappedBy = "account")
	List<DanhGia> danhgias;
}
