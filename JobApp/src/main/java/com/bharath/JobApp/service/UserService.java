package com.bharath.JobApp.service;


import com.bharath.JobApp.dao.UserRepo;
import com.bharath.JobApp.model.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class UserService {

    @Autowired
    private UserRepo repo;

    public User saveuser(User user) {
        return repo.save(user);
    }
}
