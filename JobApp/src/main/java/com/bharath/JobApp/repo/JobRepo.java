package com.bharath.JobApp.repo;

import com.bharath.JobApp.model.JobPost;
import java.util.List;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface JobRepo extends JpaRepository<JobPost, Integer> {    
    List<JobPost> findByPostProfileContainingOrPostDescContaining(String postProfile, String postDesc);
}
