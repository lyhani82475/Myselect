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
    <title>答辩情况登记表列表</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- 引入 Bootstrap -->
    <link href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
    <%@include file="/WEB-INF/pages/common/macTopCommon.jsp" %>
</head>
<body>

<div class="mainbar">

    <!-- Page heading -->
    <div class="page-head">
        <h2 class="pull-left"><i class="icon-home"></i> 答辩情况登记表模块</h2>
        <!-- Breadcrumb -->
        <div class="bread-crumb pull-right">
            <a href="#"><i class="icon-home"></i> 答辩情况登记表管理</a>
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
                            <div class="pull-left">答辩情况登记表列表</div>
                            <div class="widget-icons pull-right">
                                <a href="#" class="wminimize"><i class="icon-chevron-up"></i></a>
                                <a href="#" class="wclose"><i class="icon-remove"></i></a>
                            </div>
                            <c:if test="${sessionScope.sessionUser.userType eq 1|| sessionScope.sessionUser.userType eq 0 }">
                                <div class="row navbar-form " style="position: absolute; top: -5px; right: 50px">
                                    <button type="button" onclick="selectRevoke()" class="btn btn-info pull-left " style="margin-right: 10px"><i class="icon-remove"></i>撤销选题</button>
                                </div>
                            </c:if>
                            <div class="clearfix"></div>
                        </div>

                        <div class="widget-content ">

                            <table class="table table-striped table-bordered table-hover">
                                <thead>
                                <tr>
                                    <th>序号</th>
                                    <th>姓名</th>
                                    <th>学号</th>
                                    <th>操作</th>
                                </tr>
                                </thead>
                                <tbody id="items">
                                <c:choose>
                                    <c:when test="${empty requestScope.topicList }">
                                        <tr><td colspan='12' class='text-center'> 😑 暂无数据！</td></tr>
                                    </c:when>
                                    <c:otherwise>
                                        <c:forEach var="topic" items="${requestScope.topicList}" varStatus="index">
                                            <tr>
                                                <td>${index.count}</td>
                                                <td>${topic.stuName}</td>
                                                <td>${topic.userCode}</td>
                                                <td>
                                                    <a href="${path}/registration/teaToUpdateRegistration?id=${topic.userCode}">
                                                        <button style="background-color: #3cc8ff; color: #FFFFFF; border: none;font-size: 14px">编辑</button>
                                                    </a> |
                                                    <a href="${path}/registration/teaToLookRegistration?id=${topic.userCode}">
                                                        <button style="background-color: #b2ff1b; color: #FFFFFF; border: none; font-size: 14px">预览</button>
                                                    </a> |
                                                    <a href="${path}/registration/teaSaveRegistration?id=${topic.userCode}" onClick="return confirm('请确保该文件未在本地程序中打开。\n点击确认按钮文件将下载至桌面。名为：学号+姓名+答辩情况登记表');" >
                                                        <button style="background-color: #16a5ff; color: #FFFFFF; border: none; font-size: 14px">下载</button>
                                                    </a>
                                                </td>
                                            </tr>
                                        </c:forEach>
                                    </c:otherwise>
                                </c:choose>

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

