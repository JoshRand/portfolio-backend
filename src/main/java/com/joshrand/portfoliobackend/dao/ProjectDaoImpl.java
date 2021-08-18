package com.joshrand.portfoliobackend.dao;

import java.util.List;

import com.joshrand.portfoliobackend.model.Project;
import com.joshrand.portfoliobackend.repo.ProjectRepo;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
@Component
public class ProjectDaoImpl implements ProjectDao{

    @Autowired
    ProjectRepo projectRepo;

    @Override
    public Project save(Project project) {
        return projectRepo.save(project);
    }

    @Override
    public Project findById(int id) {
        return projectRepo.findById(id);
    }

    @Override
    public List<Project> findAll() {
        return projectRepo.findAll();
    }
    
}