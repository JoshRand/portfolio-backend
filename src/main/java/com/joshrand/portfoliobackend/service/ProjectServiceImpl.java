package com.joshrand.portfoliobackend.service;

import java.util.List;

import com.joshrand.portfoliobackend.dao.ProjectDao;
import com.joshrand.portfoliobackend.model.Project;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class ProjectServiceImpl implements ProjectService{

    @Autowired
    ProjectDao projectDao;

    @Override
    public boolean saveProject(Project project) {
        return (projectDao.save(project) == null)? false : true;
    }

    @Override
    public Project getProjectById(int id) {
        return projectDao.findById(id);
    }

    @Override
    public List<Project> getAllProjects() {
        return projectDao.findAll();
    }
    
}