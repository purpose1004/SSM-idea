package com.wb.crud.service;

import com.wb.crud.bean.Employee;

import java.util.List;
import java.util.Map;

public interface EmployeeService {
    List<Map> getEmployeeList();

    Employee getEmpById(Integer id);

    void updateEmp(Employee employee);

    void deleteEmp(Integer id);

    void addEmp(Employee employee);


}
