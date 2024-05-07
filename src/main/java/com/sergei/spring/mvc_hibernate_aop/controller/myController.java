package com.sergei.spring.mvc_hibernate_aop.controller;

import com.sergei.spring.mvc_hibernate_aop.dao.EmployeeDAO;
import com.sergei.spring.mvc_hibernate_aop.entity.Employee;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
public class myController {

    @Autowired
    private EmployeeDAO employeeDAO;

    @RequestMapping("/")
    public String showAllEmployees(Model model) {

        //Holen alle Employees aus der DAO (DatenbankPool)
        List<Employee> allEmployees = employeeDAO.getAllEmployees();

        //Übergabe der Employee an das ui Model
        model.addAttribute("allEmps", allEmployees);

        return "allEmployees";
    }
}
