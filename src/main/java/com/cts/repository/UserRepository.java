package com.cts.repository;

import org.springframework.data.repository.CrudRepository;

import com.cts.model.User;

public interface UserRepository extends CrudRepository<User, Integer> {

	public User findByUsernameAndPassword(String username, String password);
	
	
	public User  findById(int id);
	
}

