/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.entity;

import java.util.Date;
import java.util.Random;
import javax.persistence.Column;
import javax.persistence.Entity;

import javax.persistence.Id;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

/**
 *
 * @author Sagar Thorave
 */
@Entity
public class Note {
    @Id
    private int nId;
    private String title;
    @Column(length = 5000)
    private String content;
    @Temporal(TemporalType.DATE)
    private Date addedDate;

    public Note( String title, String content, Date addedDate) {
        super();
        this.nId =new Random().nextInt(100000);
        this.title = title;
        this.content = content;
        this.addedDate = addedDate;
    }

    public Note() {
    }

    
    public int getnId() {
        return nId;
    }

    public void setnId(int nId) {
        this.nId = nId;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public Date getAddedDate() {
        return addedDate;
    }

    public void setAddedDate(Date addedDate) {
        this.addedDate = addedDate;
    }
    
    
    
}
