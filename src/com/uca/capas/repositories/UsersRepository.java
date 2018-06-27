
package com.uca.capas.repositories;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.uca.capas.domain.Users;;

public interface UsersRepository extends JpaRepository<Users, Integer>{
	public List<Users> findByUserIdEquals(Integer userId);
}
