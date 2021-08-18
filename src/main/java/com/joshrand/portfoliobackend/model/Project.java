package com.joshrand.portfoliobackend.model;

import java.util.*;

import javax.persistence.*;

// Project bean for storing information about projects
@Entity
public class Project {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id; 
    private String title;
    private String description;
    private String[] technologies;
    private String github;
    private String image;
    private String demo;
    
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "project")
    private List<Tile> tiles = new ArrayList<Tile>();
    @OneToMany(cascade = CascadeType.ALL , mappedBy = "project")
    private List<Slide> slides = new ArrayList<Slide>();

    public Project() {
    }

    public Project( String title, String description, String[] technologies, String github, String image, String demo, List<Tile> tiles, List<Slide> slides) {
        this.title = title;
        this.description = description;
        this.technologies = technologies;
        this.github = github;
        this.image = image;
        this.demo = demo;
        this.tiles = tiles;
        this.slides = slides;
    }

    public String getTitle() {
        return this.title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getDescription() {
        return this.description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String[] getTechnologies() {
        return this.technologies;
    }

    public void setTechnologies(String[] technologies) {
        this.technologies = technologies;
    }

    public String getGithub() {
        return this.github;
    }

    public void setGithub(String github) {
        this.github = github;
    }

    public String getImage() {
        return this.image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    public String getDemo() {
        return this.demo;
    }

    public void setDemo(String demo) {
        this.demo = demo;
    }

    public List<Tile> getTiles() {
        return this.tiles;
    }

    public void setGridTiles(List<Tile> tiles) {
        this.tiles = tiles;
    }

    public List<Slide> getSlides() {
        return this.slides;
    }

    public void setSlides(List<Slide> slides) {
        this.slides = slides;
    }

    public int getId()
    {
        return this.id;
    }

}