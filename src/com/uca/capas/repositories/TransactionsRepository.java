package com.uca.capas.repositories;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.uca.capas.domain.Transactions;


public interface TransactionsRepository extends JpaRepository<Transactions, Integer>{
	//public List<Transactions> findAllByAttribute(String userId);
	public List<Transactions> findByUserIdLike(Integer userId);

}
