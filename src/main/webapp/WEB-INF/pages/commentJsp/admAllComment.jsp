<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/4/17 0017
  Time: 下午 4:35
  To change this template use File | Settings | File Templates.
--%>
<%--
  Created by IntelliJ IDEA.
  User: lenovo
  Date: 2018/4/6
  Time: 16:57
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<% String appPath = request.getContextPath(); %>

<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>
<html>
<head>
    <title>评阅教师评阅表列表</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- 引入 Bootstrap -->
    <link href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
    <%@include file="/WEB-INF/pages/common/macTopCommon.jsp" %>
</head>
<body>

<div class="mainbar">

    <!-- Page heading -->
    <div class="page-head">
        <h2 class="pull-left"><i class="icon-home"></i> 评阅教师评阅表模块</h2>
        <!-- Breadcrumb -->
        <div class="bread-crumb pull-right">
            <a href="#"><i class="icon-home"></i> 评阅表管理</a>
            <!-- Divider -->
            <span class="divider">/</span>
            <a href="#" class="bread-current">首页</a>
        </div>

        <div class="clearfix"></div>

    </div>
    <!-- Page heading ends -->


    <!-- Matter -->

    <div class="matter">
        <div class="container">

            <!-- Table -->
            <div class="row">

                <div class="col-md-12">

                    <div class="widget">

                        <div class="widget-head"  style="position: relative">
                            <div class="pull-left">评阅表列表</div>
                            <div class="widget-icons pull-right">
                                <a href="#" class="wminimize"><i class="icon-chevron-up"></i></a>
                                <a href="#" class="wclose"><i class="icon-remove"></i></a>
                            </div>
                            <c:if test="${sessionScope.userType eq 0 }">
                                <div class="row navbar-form " style="position: absolute; top: -5px; right: 50px">
                                    <button type="button" style="margin-right: 10px" onclick="window.location.href='${ctx}/comment/admToAddComment';" class="btn btn-success pull-left"><i class="icon-edit"> </i>添加评阅表</button>
                                </div>
                            </c:if>
                            <div class="clearfix"></div>
                        </div>

                        <div class="widget-content ">

                            <table class="table table-striped table-bordered table-hover">
                                <thead>
                                <tr>
                                    <th>序号</th>
                                    <th>学院</th>
                                    <th>专业</th>
                                    <th>姓名</th>
                                    <th>学号</th>
                                    <th>操作</th>
                                </tr>
                                </thead>
                                <tbody id="items">
                                <c:forEach var="comment" items="${requestScope.get('list')}" varStatus="index">
                                    <tr>
                                        <td>${index.count}</td>
                                        <td>${comment.commentFaculty}</td>
                                        <td>${comment.commentMajor}</td>
                                        <td>${comment.commentName}</td>
                                        <td>${comment.commentNumber}</td>
                                        <td>
                                            <a href="${path}/comment/admToUpdateComment?id=${comment.commentNumber}">
                                                <button style="background-color: #3cc8ff; color: #FFFFFF; border: none;font-size: 14px">编辑</button>
                                            </a> |
                                            <a href="${path}/comment/admToLookComment?id=${comment.commentNumber}">
                                                <button style="background-color: #b2ff1b; color: #FFFFFF; border: none; font-size: 14px">预览</button>
                                            </a> |
                                            <a href="<%=appPath%>/comment/del/${comment.commentNumber}">
                                                <button style="background-color: #ff0557; color: #FFFFFF; border: none; font-size: 14px">删除</button>
                                            </a>|
                                            <a href="${path}/comment/admSaveComment?id=${comment.commentNumber}"  onClick="return confirm('请确保该文件未在本地程序中打开。\n点击确认按钮文件将下载至桌面。名为：学号+姓名+指导教师评阅表');" >
                                                <button style="background-color: #16a5ff; color: #FFFFFF; border: none; font-size: 14px">下载</button>
                                            </a>
                                        </td>
                                    </tr>
                                </c:forEach>

                                </tbody>
                            </table>
                        </div>

                    </div>

                </div>

            </div>

        </div>
    </div>

    <!-- Matter ends -->
</div>
<%@include file="/WEB-INF/pages/common/macDownCommon.jsp" %>
</body>
</html>

