package com.joshrand.portfoliobackend.service;

import java.util.*;

import com.joshrand.portfoliobackend.model.Project;

// Basic functions for saving and retrieving project(s)
public interface ProjectService {

    public Project saveProject(Project project);

    public Boolean saveProjects(List<Project> projects);

    public Project getProjectById(int id);

    public List<Project> getAllProjects();
    
}