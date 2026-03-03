package com.bharath.JobApp;

import com.bharath.JobApp.model.JobPost;
import com.bharath.JobApp.service.JobService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

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
    public String handleForm(JobPost jobPost, Model model) {
        service.addJob(jobPost);
        model.addAttribute("message", "Job Posted Successfully!");
        return "success";
    }

    @GetMapping("viewalljobs")
    public String viewJobs(Model model) {
        List<JobPost> jobPosts = service.getAllJobs();
        model.addAttribute("jobPosts", jobPosts);
        return "view";
    }

    @GetMapping("editjob/{postId}")
    public String editJob(@PathVariable int postId, Model model) {
        JobPost jobPost = service.getJob(postId);
        model.addAttribute("jobPost", jobPost);
        return "editjob";
    }

    @PostMapping("updatejob")
    public String updateJob(JobPost jobPost, Model model) {
        service.updateJob(jobPost);
        model.addAttribute("message", "Job Updated Successfully!");
        return "success";
    }

    @GetMapping("deletejob/{postId}")
    public String deleteJob(@PathVariable int postId, Model model) {
        service.deleteJob(postId);
        model.addAttribute("message", "Job Deleted Successfully!");
        return "success";
    }

    @GetMapping("search")
    public String search(@RequestParam("keyword") String keyword, Model model) {
        List<JobPost> jobPosts = service.searchJob(keyword);
        model.addAttribute("jobPosts", jobPosts);
        return "view";
    }

}
