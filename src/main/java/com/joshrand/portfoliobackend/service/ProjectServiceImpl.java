package com.joshrand.portfoliobackend.service;

import java.util.List;

import com.joshrand.portfoliobackend.dao.ProjectDao;
import com.joshrand.portfoliobackend.model.Project;
import com.joshrand.portfoliobackend.model.Slide;
import com.joshrand.portfoliobackend.model.Tile;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class ProjectServiceImpl implements ProjectService{

    @Autowired
    ProjectDao projectDao;

    @Override
    public Project saveProject(Project project) {
        return projectDao.save(project); 
    }

    @Override
    public Boolean saveProjects(List<Project> projects)
    {
        try{
            for (Project project : projects) {
                for (Tile tile : project.getTiles())
                {
                    tile.setProject(project);
                }
                for (Slide slide : project.getSlides()) {
                    slide.setProject(project);
                }
                saveProject(project);
            }
        }
        catch(Exception saveProjectException)
        {
            return false;
        }
       return true;
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