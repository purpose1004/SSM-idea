package com.wb.crud.controller;

import com.wb.crud.bean.Department;
import com.wb.crud.bean.Employee;
import com.wb.crud.service.DepartmentService;
import com.wb.crud.service.EmployeeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.annotation.Resource;
import java.util.List;
import java.util.Map;

@Controller
@RequestMapping("/employee")
public class EmployeeController {
    @Resource
    private EmployeeService employeeService;

    @Autowired
    private DepartmentService departmentService;

    @RequestMapping("/list")
    public String list(Model model){
        List<Map> employees = employeeService.getEmployeeList();
        model.addAttribute("employees",employees);
        return "list";
    }

    @RequestMapping("/getEmpById")
    public String getEmpById(Model model,@RequestParam("id") Integer id){
        Employee employee = employeeService.getEmpById(id);
        List<Department> departments = departmentService.getDepartments();
        model.addAttribute("employee",employee);
        model.addAttribute("departments",departments);
        return "update";
    }

    @RequestMapping("/updateEmployee")
    public String updateEmployee(Employee employee){
        employeeService.updateEmp(employee);
        return "redirect:list";
    }

    @RequestMapping("/delete")
    public String deleteEmp(Integer id){
        employeeService.deleteEmp(id);
        return "redirect:list";
    }

    @RequestMapping("/add")
    public String add(Employee employee){
        employeeService.addEmp(employee);
        return "redirect:list";
    }

}
