/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import Pojo.Category;
import java.util.List;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;
import Util.HibernateUtil;

/**
 *
 * @author Dilip J Sarvaiya
 */
public class CategoryDAO {
     static Session session=null;
     
//    Add category to the database
      public static long save(Category bean)
    {
        session=HibernateUtil.getSessionFactory().openSession();
        Transaction t=session.beginTransaction();
        long catId=(long)session.save(bean);
        t.commit();
        session.close();
        return catId;
    }
     public static void delete(Category bean)
    {
        session=HibernateUtil.getSessionFactory().openSession();
        Transaction t=session.beginTransaction();
        session.delete(bean);
        t.commit();
        session.close();
    } 
     public static void update(Category bean)
    {
        session=HibernateUtil.getSessionFactory().openSession();
        Transaction t=session.beginTransaction();
        session.update(bean);
        t.commit();
        session.close();
    }
    public static List<Category> viewAll()
    {
        String hql = "from Category";
        session = HibernateUtil.getSessionFactory().openSession();
        Query query = session.createQuery(hql);
        List<Category> categories = query.list();
        session.close();
        return categories;
    }
    public static Category getCategoryId(long cid)
    {
        Category cat=null;
        try
        {
            session=HibernateUtil.getSessionFactory().openSession();
            cat=(Category) session.get(Category.class, cid);
        }
        catch(Exception e)
        {
            e.printStackTrace();
        }
        return cat;
    }
    
    //View Single product by id
      public static Category viewSingle_by_Category_id(long cid)
    {
        
        String hql = "from Category where categoryId='"+cid+"'";
        session = HibernateUtil.getSessionFactory().openSession();
        Query query = session.createQuery(hql);
        List<Category> products = query.list();
        session.close();
        Category obj=null;
        if(!products.isEmpty())
        obj = products.get(0);
        return obj;
    }  
    
}
