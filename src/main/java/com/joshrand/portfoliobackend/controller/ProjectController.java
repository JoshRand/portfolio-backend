package com.joshrand.portfoliobackend.controller;

import java.util.ArrayList;

import com.joshrand.portfoliobackend.model.Project;
import com.joshrand.portfoliobackend.model.Slide;
import com.joshrand.portfoliobackend.model.Tile;
import com.joshrand.portfoliobackend.service.ProjectService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.*;
import org.springframework.web.bind.annotation.*;

// Make sure to change these addresses to your address or if you're running the frontend on localhost:4200 leave it as is.
@CrossOrigin(originPatterns = {"http://localhost:4200", "http://192.168.1.187:4200"}, methods = RequestMethod.GET)
@RestController
public class ProjectController {

    @Autowired
    ProjectService projectService;
    
    @GetMapping("/project")
    public ResponseEntity<Project> getTest(@RequestParam(defaultValue = "999") int id )
    {
        return new ResponseEntity<Project>(projectService.getProjectById(id), HttpStatus.OK);
    }
    
    @GetMapping("/projects")
    public ResponseEntity<ArrayList<Project>> getProjects()
    {
        return new ResponseEntity<ArrayList<Project>>((ArrayList<Project>)projectService.getAllProjects(), HttpStatus.OK);
    }

    @PostMapping("/projects")
    public ResponseEntity<ArrayList<Project>> saveProjects(@RequestBody ArrayList<Project> projects)
    {
        for (Project project : projects) {
            for (Tile tile : project.getTiles())
            {
                tile.setProject(project);
            }
            for (Slide slide : project.getSlides()) {
                slide.setProject(project);
            }
            projectService.saveProject(project);
        }
        return new ResponseEntity<ArrayList<Project>>(projects, HttpStatus.OK);
    }
}    