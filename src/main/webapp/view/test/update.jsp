<%@ page language="java" contentType="text/html" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>测试修改页面</title>
    <%@ include file="../../common/jsp/header.jsp" %>
</head>
<body>
<div class="wrapper wrapper-content animated fadeInRight">
    <div>
        <div class="col-sm-4"><input type="button" value="返回上一页"
                                     class="btn btn-success"
                                     onclick="javascript:history.back();"/>
        </div>
    </div>
    <div class="ibox float-e-margins">
        <form action="<%=path %>/test/update.do" method="post" class="form-horizontal" role="form">
            <input type="hidden" name="dataId" value="${testEntity.testId }"/>
            <fieldset>
                <legend>测试基本信息</legend>
                <div class="form-group">
                    <label class="col-sm-2 control-label" for="ds_host">名称</label>
                    <div class="col-sm-4">
                        <input class="form-control" type="text"
                               name="dataName" value="${testEntity.testName }"
                               placeholder="性别"/>
                    </div>
                    <label class="col-sm-2 control-label" for="ds_name">性别
                    </label>
                    <div class="col-sm-4">
                        <input class="form-control" type="text"
                               name="dataType" value="${testEntity.testDate }"
                               placeholder="sex"/>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-2 control-label"
                           for="ds_username">时间</label>
                    <div class="col-sm-8">
                        <input class="form-control" type="text"
                               name="dataCommon" value="${entity.dataCommon }"
                               placeholder="1：男  2：女"/>
                    </div>
                </div>
            </fieldset>
        </form>
    </div>
</div>
</body>
</html>