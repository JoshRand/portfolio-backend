package com.joshrand.portfoliobackend.service;

import com.joshrand.portfoliobackend.dao.SlideDao;
import com.joshrand.portfoliobackend.model.Slide;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class SlideServiceImpl implements SlideService{
   
   @Autowired
   SlideDao slideDao;

   @Override
   public Slide saveSlide(Slide slide)
   {
        return slideDao.saveSlide(slide);
   } 
   
}
