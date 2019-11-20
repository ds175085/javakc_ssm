package com.zhg.javakc.modules.test.entity;


import com.zhg.javakc.base.entity.BaseEntity;
import lombok.Data;

import java.util.Date;


@Data
public class TestEntity extends BaseEntity<TestEntity> {

private String testId;

private String testName;

private String testSex;

private Date testDate;

}
