package com.bharath.JobApp.service;

import com.bharath.JobApp.model.JobPost;
import com.bharath.JobApp.repo.JobRepo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class JobService {

    @Autowired
    private JobRepo repo;

    public List<JobPost> getAllJobs() {
        return repo.getAllJobs();
    }

    public void addJob(JobPost jobPost) {
        repo.addJob(jobPost);
    }
}
