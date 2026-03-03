package com.bharath.JobApp.repo;

import com.bharath.JobApp.model.JobPost;
import org.springframework.stereotype.Repository;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

@Repository
public class JobRepo {

    // List to hold initial job posts (dummy data)
    private List<JobPost> jobs = new ArrayList<>(Arrays.asList(
            new JobPost(1, "Java Developer", "Experience in Java, Spring Boot", 3,
                    Arrays.asList("Java", "Spring", "Maven")),
            new JobPost(2, "Frontend Developer", "Proficient in React and CSS", 2,
                    Arrays.asList("React", "JavaScript", "HTML", "CSS")),
            new JobPost(3, "Data Analyst", "Data analysis and Python expert", 4,
                    Arrays.asList("Python", "SQL", "Pandas")),
            new JobPost(4, "Network Engineer", "Manage and optimize networks", 5,
                    Arrays.asList("Cisco", "Networking", "Security")),
            new JobPost(5, "Mobile dev", "Flutter dev", 3, Arrays.asList("Flutter", "Dart", "Firebase"))));

    public List<JobPost> getAllJobs() {
        return jobs;
    }

    public void addJob(JobPost job) {
        jobs.add(job);
    }
}
