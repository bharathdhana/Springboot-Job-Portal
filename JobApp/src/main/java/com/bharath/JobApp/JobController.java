package com.bharath.JobApp;

import com.bharath.JobApp.model.JobPost;
import com.bharath.JobApp.service.JobService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import java.util.List;

@Controller
public class JobController {

    @Autowired
    private JobService service;

    @GetMapping({ "/", "home" })
    public String home() {
        System.out.println("Home controller hit!");
        return "home";
    }

    @GetMapping("addjob")
    public String addJob() {
        return "addjob";
    }

    @PostMapping("handleForm")
    public String handleForm(JobPost jobPost) {
        service.addJob(jobPost);
        return "success";
    }

    @GetMapping("viewalljobs")
    public String viewJobs(Model model) {
        List<JobPost> jobPosts = service.getAllJobs();
        model.addAttribute("jobPosts", jobPosts);
        return "view";
    }

}
