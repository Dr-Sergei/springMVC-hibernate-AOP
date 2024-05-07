package com.sergei.spring.mvc_hibernate_aop.dao;

import com.sergei.spring.mvc_hibernate_aop.entity.Employee;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Repository
public class EmployeeDAOImpl implements EmployeeDAO {
    @Autowired
   private SessionFactory sessionFactory;

    @Override
    @Transactional
    public List<Employee> getAllEmployees() {

        Session session = sessionFactory.getCurrentSession();

        //in one Line:
//        List<Employee> employeeList = session.createQuery("from Employee", Employee.class)
//                .getResultList();

        //Query aus der Dependency Hibernate ("from Employee" means from class Employee not from SQL table )
        Query<Employee> query = session.createQuery("from Employee", Employee.class);

        //execute query and add it to Employee List
        List<Employee> employeeList = query.getResultList();

        return employeeList;
    }


}
