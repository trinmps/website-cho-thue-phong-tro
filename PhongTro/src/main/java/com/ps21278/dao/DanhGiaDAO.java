package com.ps21278.dao;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.ps21278.entity.DanhGia;

public interface DanhGiaDAO extends JpaRepository<DanhGia, Integer> {

	@Query(value="SELECT * FROM DANHGIA WHERE IDBAIDANG LIKE ?1",nativeQuery = true)
	List<DanhGia> findByIdPhong(Integer id);

}
