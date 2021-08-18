package com.joshrand.portfoliobackend.service;

import java.util.*;

import com.joshrand.portfoliobackend.model.Project;

// Basic functions for saving and retrieving project(s)
public interface ProjectService {

    public boolean saveProject(Project project);

    public Project getProjectById(int id);

    public List<Project> getAllProjects();
    
}