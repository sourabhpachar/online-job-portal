package com.cts.service;

import java.util.ArrayList;
import java.util.List;

import javax.transaction.Transactional;

import org.springframework.stereotype.Service;

import com.cts.model.Postjob;
import com.cts.model.User;
import com.cts.repository.PostjobRepo;

@Service
@Transactional
public class PostjobService {
	
	private final PostjobRepo postjobRepo;
	
	public PostjobService(PostjobRepo postjobRepo) {
		this.postjobRepo=postjobRepo;
	}

	public void postMyjob(Postjob postjob) {
		
		postjobRepo.save(postjob);
	}
	


public List<Postjob> showAlljobs(){
	
	List<Postjob> alljobs=new ArrayList<Postjob>();
	for(Postjob postjob:postjobRepo.findAll()) {
		alljobs.add(postjob);
	}
	
	return alljobs;
}

public void deleteMyJob(int jobid) {
	postjobRepo.deleteById(jobid);
}

public Postjob editJob(int jobid) {
	return postjobRepo.findById(jobid);
}

}