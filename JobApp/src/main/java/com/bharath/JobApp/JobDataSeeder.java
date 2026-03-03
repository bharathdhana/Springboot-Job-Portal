package com.bharath.JobApp;

import com.bharath.JobApp.model.JobPost;
import com.bharath.JobApp.repo.JobRepo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.CommandLineRunner;
import org.springframework.stereotype.Component;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

@Component
public class JobDataSeeder implements CommandLineRunner {

    @Autowired
    private JobRepo repo;

    @Override
    public void run(String... args) throws Exception {
        List<JobPost> jobs = new ArrayList<>(Arrays.asList(
                new JobPost(101, "Java Developer", "Expertise in Java and Spring Boot.", 3,
                        Arrays.asList("Java", "Spring Boot", "Maven")),
                new JobPost(102, "Frontend Developer", "Proficient in React and modern CSS.", 2,
                        Arrays.asList("React", "JavaScript", "Tailwind")),
                new JobPost(103, "Cloud Architect", "Designing scalable cloud infrastructures.", 5,
                        Arrays.asList("AWS", "Kubernetes", "Docker")),
                new JobPost(104, "Data Scientist", "Analyze complex data sets to drive insights.", 4,
                        Arrays.asList("Python", "TensorFlow", "Pandas")),
                new JobPost(105, "Mobile Developer", "Building world-class iOS and Android apps.", 3,
                        Arrays.asList("Flutter", "Dart", "Firebase"))));
        repo.saveAll(jobs);
        System.out.println("Default jobs seeded successfully!");
    }
}
