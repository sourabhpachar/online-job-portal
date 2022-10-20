package com.cts.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.cts.model.Doc;

public interface DocRepository  extends JpaRepository<Doc,Integer>{

}

