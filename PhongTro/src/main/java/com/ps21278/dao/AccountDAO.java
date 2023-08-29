package com.ps21278.dao;
import org.springframework.data.jpa.repository.JpaRepository;

import com.ps21278.entity.Account;

public interface AccountDAO extends JpaRepository<Account, String>{
}
