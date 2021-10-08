/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.helper;

import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

/**
 *
 * @author Sagar Thorave
 */
public class FactoryProvider {
    public static SessionFactory factory;
    public static SessionFactory getFactory(){
        if (factory==null) {
             try {
                 factory=new Configuration().configure("hibernate.cfg.xml").buildSessionFactory();
        } catch (Exception e) {
            e.printStackTrace();
        }
        }
    return factory;
    }
    
    
    public void closeFacory(){
        if(factory.isOpen()){
            factory.close();
        }
    }
    
}
