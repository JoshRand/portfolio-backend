package com.joshrand.portfoliobackend.model;

import java.io.Serializable;

import javax.persistence.*;

// Slide bean for Carousel 
@Entity
public class Slide implements Serializable{

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;
    @ManyToOne(cascade = CascadeType.ALL)
    private Project project;
    private String description;
    private String image;

    public void setProject(Project project) {
        this.project = project;
    }
    
    public Slide() {
    }

    public Slide(Project project, String description, String image) {
        this.project = project;
        this.description = description;
        this.image = image;
    }

    public String getDescription() {
        return this.description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getImage() {
        return this.image;
    }

    public void setImage(String image) {
        this.image = image;
    }

}