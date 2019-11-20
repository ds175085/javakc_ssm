package com.zhg.javakc.modules.test.service;


import com.zhg.javakc.base.page.Page;
import com.zhg.javakc.base.service.BaseService;
import com.zhg.javakc.modules.test.dao.TestDao;
import com.zhg.javakc.modules.test.entity.TestEntity;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class TestService extends BaseService<TestDao, TestEntity> {

    @Autowired
    TestDao testDao;

    public Page<TestEntity> querTest(TestEntity testEntity,Page<TestEntity> page){
  //设置分页参数，才会被Mybatis分页插件所识别 ，拦截sql，再起sql的前后加入分页的sql语句
        testEntity.setPage(page);
        //根据分页与条件进型数据查询
        List<TestEntity> testList= testDao.findList(testEntity);
        //将查询出的数据这只到分页的List集合中，一起返回
        page.setList(testList);
        return page;

    }
}
