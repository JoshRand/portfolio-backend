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
@CrossOrigin(originPatterns = {"http://localhost:4200", "http://192.168.1.187:4200", "http://192.168.1.167:4200", "http://143.198.178.176:4200", "http://143.198.178.176", "http://172.18.0.3:4200"}, methods = {RequestMethod.GET, RequestMethod.PUT})
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

// Commenting out for Security reasons.
    @PostMapping("/project")
    public ResponseEntity<Project> saveProject(@RequestBody Project project)
    {
    	return new ResponseEntity<Project>(projectService.saveProject(project), HttpStatus.OK);
    }

    @PostMapping("/projects")
    public ResponseEntity<Boolean> saveProjects(@RequestBody ArrayList<Project> projects)
    {
        return new ResponseEntity<Boolean>(projectService.saveProjects(projects), HttpStatus.OK);
    }
    
    @PutMapping("/project")
    public ResponseEntity<Project> updateProject(@RequestBody Project project)
    {
    	return new ResponseEntity<Project>(projectService.saveProject(project), HttpStatus.ACCEPTED);
    }
}    