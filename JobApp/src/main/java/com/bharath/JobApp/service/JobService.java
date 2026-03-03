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
        return repo.findAll();
    }

    public void addJob(JobPost jobPost) {
        repo.save(jobPost);
    }

    public JobPost getJob(int postId) {
        return repo.findById(postId).orElse(new JobPost());
    }

    public void deleteJob(int postId) {
        repo.deleteById(postId);
    }

    public void updateJob(JobPost jobPost) {
        repo.save(jobPost);
    }

    public List<JobPost> searchJob(String keyword) {
        return repo.findByPostProfileContainingOrPostDescContaining(keyword, keyword);
    }

}
