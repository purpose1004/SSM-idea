package com.wb.crud.service.impl;

import com.wb.crud.bean.Department;
import com.wb.crud.dao.DepartmentMapper;
import com.wb.crud.service.DepartmentService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service
public class DepartmentServiceImpl implements DepartmentService {

    @Resource
    private DepartmentMapper departmentMapper;

    @Override
    public List<Department> getDepartments() {
        return departmentMapper.selectByExample(null);
    }
}
