package com.ps21278.dao;

import java.util.List;

import org.springframework.data.domain.Page;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.ps21278.entity.BaiDang;

public interface BaiDangDAO extends JpaRepository<BaiDang, Integer> {

	@Query(value="SELECT * FROM BAIDANG WHERE GIA BETWEEN ?1 AND ?2",nativeQuery = true)
	List<BaiDang> findByGiaPhong(Integer minGia, Integer maxGia);

	@Query(value="SELECT * FROM BAIDANG WHERE PHUONG LIKE ?1",nativeQuery = true)
	List<BaiDang> findByPhuong(String string);

	@Query(value="SELECT * FROM BAIDANG WHERE DIENTICH BETWEEN ?1 AND ?2",nativeQuery = true)
	List<BaiDang> findByDienTich(Integer minDT, Integer maxDT);

	@Query(value="SELECT * FROM BAIDANG WHERE PHUONG LIKE ?1 AND DIENTICH BETWEEN ?2 AND ?3 AND GIA BETWEEN ?4 AND ?5",nativeQuery = true)
	List<BaiDang> findByTimKiem(String ph, Integer minGia, Integer maxGia, Integer minDienTich, Integer maxDienTich);

}
