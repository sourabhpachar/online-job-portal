package com.cts.repository;

import org.springframework.data.repository.CrudRepository;

import com.cts.model.Postjob;

public interface PostjobRepo extends CrudRepository<Postjob, Integer>{

	public Postjob findById(int jobid);
}
