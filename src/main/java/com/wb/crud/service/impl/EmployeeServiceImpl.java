package com.wb.crud.service.impl;

import com.wb.crud.bean.Employee;
import com.wb.crud.dao.EmployeeMapper;
import com.wb.crud.service.EmployeeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;
@Service
public class EmployeeServiceImpl implements EmployeeService{
    @Autowired
    private EmployeeMapper employeeMapper;

    @Override
    public List<Map> getEmployeeList() {
        return employeeMapper.getEmployeeList();
    }

    @Override
    public Employee getEmpById(Integer id) {
        return employeeMapper.selectByPrimaryKey(id);
    }

    @Override
    public void updateEmp(Employee employee) {
        employeeMapper.updateByPrimaryKeySelective(employee);
    }

    @Override
    public void deleteEmp(Integer id) {
        employeeMapper.deleteByPrimaryKey(id);
    }

    @Override
    public void addEmp(Employee employee) {
        employeeMapper.insert(employee);
    }
}
