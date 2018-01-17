<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta charset="utf-8">
    <!-- Title and other stuffs -->
    <title></title>
    <meta name="author" content="">
    <%@include file="/WEB-INF/pages/common/macTopCommon.jsp" %>
</head>

<body>


<!-- Header starts -->
<%--<header>--%>
    <%--<%@include file="/WEB-INF/pages/top.jsp" %>--%>
<%--</header>--%>
<!-- Header ends -->

<!-- Main content starts -->


    <div class="mainbar">

        <!-- Page heading -->
        <div class="page-head">
            <h2 class="pull-left"><i class="icon-home"></i> 学生信息管理</h2>

            <!-- Breadcrumb -->
            <div class="bread-crumb pull-right">
                <a href="#"><i class="icon-home"></i> 学生信息管理</a>
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

                <!-- 搜索页 ================================================== -->
                <div class="row">

                    <form class="navbar-form center" role="search" id="searchForm">


                        <button type="button" class="btn btn-info pull-left " style="margin-right: 20px"><i class="icon-remove"></i>批量删除</button>
                        <button type="button" class="btn btn-info pull-left "><i class="icon-upload"></i>批量导入</button>
                        <div class="form-group col-xs-2" style="position: relative;margin-left: 50px">
                            <input type="text" class="form-control" id="search" name="search" placeholder="账号/姓名/邮箱/电话/qq">
                            <span onclick="search()" style="position: absolute;left: 180px;top: 6px;cursor: pointer"><i class="icon-search" ><a></a></i></span>
                        </div>

                        <div class="form-group col-xs-1">
                            <select  class="form-control" name="userSex">
                                <option value="" selected>性别</option>
                                <option value="1">男</option>
                                <option value="2">女</option>
                            </select>
                        </div>
                        <div class="form-group col-xs-1">
                            <select  class="form-control" name="userStatus">
                                <option value="" selected>状态</option>
                                <option value="1">启用</option>
                                <option value="0">禁用</option>
                            </select>
                        </div>
                        <div class="form-group col-xs-1">
                            <select  class="form-control" name="stuYear">
                                <option value="" selected>届别</option>
                                <c:forEach var="year" items="${requestScope.yearList}">
                                    <option value="${year.stuYear}">${year.stuYear}级</option>
                                </c:forEach>
                            </select>
                        </div>
                        <div class="form-group ">
                            <div class="form-group">
                                <div class="input-group date form_datetime" onclick="aaa()">
                                    <input name="searchBgnTime" class="form-control"type="text" placeholder="起始时间" value="" readonly style="width: 140px">
                                    <span class="input-group-addon"><i class="glyphicon glyphicon-remove icon-remove"></i></span>
                                    <span class="input-group-addon"><i class="glyphicon glyphicon-th icon-calendar"></i></span>
                                </div> --
                                <div class="input-group date form_datetime" onclick="aaa()">
                                    <input name="searchEndTime" class="form-control"type="text" placeholder="结束时间" value="" readonly style="width: 140px">
                                    <span class="input-group-addon" onclick="aaa()"><i class="glyphicon glyphicon-remove icon-remove"></i></span>
                                    <span class="input-group-addon" onclick="aaa()"><i class="glyphicon glyphicon-th icon-calendar"></i></span>
                                </div>
                            </div>
                        </div>
                        <button type="button" id="searchSubmit" class="btn btn-info">搜索</button>

                    </form>
                </div>
                <!-- Table -->
                <div class="row">

                    <div class="col-md-12">

                        <div class="widget">

                            <div class="widget-head">
                                <div class="pull-left">学生列表</div>
                                <div class="widget-icons pull-right">
                                    <a href="#" class="wminimize"><i class="icon-chevron-up"></i></a>
                                    <a href="#" class="wclose"><i class="icon-remove"></i></a>
                                </div>
                                <div class="clearfix"></div>
                            </div>

                            <div class="widget-content ">

                                <table class="table table-striped table-bordered table-hover" >
                                    <thead>
                                    <tr>
                                        <th class=" text-center"><input type="checkbox" id="selectAll"></th>
                                        <th>序号</th>
                                        <th>姓名</th>
                                        <th>账号</th>
                                        <th>性别</th>
                                        <th>邮箱</th>
                                        <th>电话</th>
                                        <th>qq</th>
                                        <th>专业</th>
                                        <th>班级</th>
                                        <th>届别</th>
                                        <th>创建时间</th>
                                        <th>状态</th>
                                        <th>操作</th>
                                    </tr>
                                    </thead>
                                    <tbody id="items">
                                    <c:forEach var="user" items="${userList}" varStatus="index">
                                        <tr>
                                            <td  class=" text-center"><input type="checkbox" name="ids" value="${user.id}" /></td>
                                            <td>${index.count}</td>
                                            <td>${user.userName}</td>
                                            <td>${user.userCode}</td>
                                            <td>${user.sex}</td>
                                            <td>${user.userMail}</td>
                                            <td>${user.userPhone}</td>
                                            <td>${user.userQq}</td>
                                            <td>${user.stuMajorName}</td>
                                            <td>${user.stuClass}班</td>
                                            <td>${user.stuYear}级</td>
                                            <td><fmt:formatDate value="${user.gmtCreate}" pattern="yyyy-MM-dd HH:mm:ss"/></td>
                                            <td>
                                                <c:set var="status" value="${user.userStatus}"/>
                                                <c:choose>
                                                    <c:when test="${status eq 1}">
                                                        <span class="label label-success">启用</span>
                                                    </c:when>
                                                    <c:otherwise>
                                                        <span class="label label-danger">禁用</span>
                                                    </c:otherwise>
                                                </c:choose>
                                            </td>
                                            <td>
                                                <c:set var="status" value="${user.userStatus}"/>
                                                <c:choose>
                                                    <c:when test="${status eq 0}">
                                                        <button class="btn btn-xs btn-success"><i class="icon-ok"></i>启用</button>
                                                    </c:when>
                                                    <c:otherwise>
                                                        <button class="btn btn-xs btn-danger"><i class="icon-remove"></i>禁用</button>
                                                    </c:otherwise>
                                                </c:choose>
                                                <button class="btn btn-xs btn-warning"><i class="icon-pencil"></i>编辑</button>
                                                <button class="btn btn-xs btn-danger"><i class="icon-remove">删除</i></button>

                                            </td>
                                        </tr>
                                    </c:forEach>

                                    </tbody>
                                </table>

                                <div class="widget-foot center">
                                    <ul class="pagination">
                                        <c:if test="${page.current-1 eq 0}">
                                            <li><a href="#" class="btn btn-default" disabled="disabled">上一页</a></li>
                                        </c:if>
                                        <c:if test="${page.current-1 > 0}">
                                            <li><a class="disabled" href="/selectUserBase/userList?page=${page.current-1}">上一页</a></li>
                                            <li><a href="/selectUserBase/userList?page=${page.current-1}">${page.current-1}</a></li>
                                        </c:if>


                                        <li><a href="/selectUserBase/userList?page=${page.current}">${page.current}</a></li>

                                        <c:if test="${page.current+1 <= page.pages}">
                                            <li><a href="/selectUserBase/userList?page=${page.current+1}">${page.current+1}</a></li>
                                        </c:if>
                                        <c:if test="${page.current+2 <= page.pages}">
                                            <li><a href="/selectUserBase/userList?page=${page.current+2}">${page.current+2}</a></li>
                                        </c:if>
                                        <c:if test="${page.current+1 <= page.pages}">
                                            <li><a href="/selectUserBase/userList?page=${page.current+1}">下一页</a></li>
                                        </c:if>
                                        <c:if test="${page.current+1 > page.pages}">
                                            <li><a class="btn  disabled" href="#">下一页</a></li>
                                        </c:if>
                                        <li><label style="line-height: 35px">共${page.total}条记录</label></li>
                                    </ul>

                                    <div class="clearfix"></div>

                                </div>

                            </div>

                        </div>

                    </div>

                </div>

            </div>
        </div>

        <!-- Matter ends -->
    </div>


    <div class="clearfix"></div>
<%@include file="/WEB-INF/pages/common/macDownCommon.jsp" %>
<script type="text/javascript">

    function search() {
        $.ajax({
            type: "post",
            url: "/selectUserBase/stuListAjax",
            data:{"search":$(" input[ name='search' ] ").val()},
            dataType:"json",
            success:function(objects){
                console.log("开始生成页面。。。。。");
//                var obj =JSON.parse(objects);
//                console.log(obj.page);
//                console.log(obj.stuList);
//                var stuList = obj.stuList;
//                $("#items").html(null);
//                $(stuList).each(function (index) {
//                    var val = stuList[index];
////                    console.log(val.userStatus);
//                    var time = getLocalTime(val.gmtCreate);
//                    console.log(val.gmtCreate)
//                    console.log(time)
//                    var item =
//                        "<tr>"
//                            +"<td class='text-center'>"+"<input type='checkbox' name='ids' value='"+val.id+"'/>"+"</td>"
//                            +"<td>"+(parseInt(index)+1)+"</td>"
//                            +"<td>"+val.userName+"</td>"
//                            +"<td>"+val.userCode+"</td>"
//                            +"<td>"+val.sex+"</td>"
//                            +"<td>"+val.userMail+"</td>"
//                            +"<td>"+val.userPhone+"</td>"
//                            +"<td>"+val.userQq+"</td>"
//                            +"<td>"+val.stuMajorName+"</td>"
//                            +"<td>"+val.stuClass+"班</td>"
//                            +"<td>"+val.stuYear+"级</td>"
//                            +"<td>"+time+"</td>"
//;
////                    console.log(item);
//                    if (val.userStatus = 1){
////                        console.log(item);
//                        item +=
//                            "<td><span class='label label-success'>启用</span></td>"
//                            +"<td>" +
//                                "<button class='btn btn-xs btn-danger' style='margin-right: 5px'><i class='icon-remove'></i>禁用</button>" +
//                                "<button class='btn btn-xs btn-warning' style='margin-right: 5px'><i class='icon-pencil'></i>编辑</button>" +
//                                "<button class='btn btn-xs btn-danger' style='margin-right: 5px'><i class='icon-remove'>删除</i></button>" +
//                            "</td>"
//                            +"</tr>"
//                        ;
//                    }else{
//                        item+=
//                                +"<td><span class='label label-danger'>禁用</span></td>"
//                                +"<td>" +
//                                    "<button class='btn btn-xs btn-success'><i class='icon-ok'></i>启用</button>" +
//                                    "<button class='btn btn-xs btn-warning'><i class='icon-pencil'></i>编辑</button>" +
//                                    "<button class='btn btn-xs btn-danger'><i class='icon-remove'>删除</i></button>" +
//                                "</td>"
//                            +"</tr>"
//
//                        ;
//                    }
//                    $("#items").append(item);
//                });
//                $(".pagination").html(null);
//                var page = obj.page;
//                var pageItem="";
//                if ((parseInt(page.current)-1) == 0){
//                    pageItem+= "<li><a href='#' class='btn btn-default' disabled='disabled'>上一页</a></li>";
//
//                }else {
//                    pageItem+="<li><a class='disabled' href='/selectUserBase/userList?page="+(parseInt(page.current)-1)+"'>上一页</a></li>" +
//                                "<li><a href='/selectUserBase/userList?page="+(parseInt(page.current)-1)+"'>(parseInt(page.current)-1)</a></li>";
//
//                }
//                pageItem+="<li><a href='/selectUserBase/userList?page="+(parseInt(page.current))+"'>"+page.current+"</a></li>";
//                if((parseInt(page.current)+1) <= parseInt(page.pages)){
//                    pageItem += "<li><a href='/selectUserBase/userList?page="+(parseInt(page.current)+1)+"'>(parseInt(page.current)+1)</a></li>" +
//                        "<li><a href='/selectUserBase/userList?page="+(parseInt(page.current)+1)+"'>下一页</a></li>";
//
//                }else {
//                    pageItem += "<li><a class='btn  disabled' href='#'>下一页</a></li>";
//                }
//                if((parseInt(page.current)+2) <= parseInt(page.pages)){
//                    pageItem += "<li><a href='/selectUserBase/userList?page="+(parseInt(page.current)+2)+"'>"+(parseInt(page.current)+2)+"</a></li>";
//                }
//                pageItem+="<li><label style='line-height: 35px'>共 "+page.total+" 条记录</label></li>";
//                $(".pagination").append(pageItem);
                initPage(objects);
            },//end success
            error: function(e) {
                alert("后台异常");
            }
        });
    }
    $("#searchSubmit").click(function(){
        $.ajax({
            type: "post",
            url: "/selectUserBase/stuListAjax",
            data: $("#searchForm").serialize(),
            dataType:"json",
            success:function(objects){
                initPage(objects);
            },
            error: function(e) {
                alert("111");
            }
        });
    });




    function initPage(objects) {
        var obj =JSON.parse(objects);
        console.log(obj.page);
        console.log(obj.stuList);
        var stuList = obj.stuList;
        $("#items").html(null);
        $(stuList).each(function (index) {
            var val = stuList[index];
//                    console.log(val.userStatus);
            var time = getLocalTime(val.gmtCreate);
            console.log(val.gmtCreate)
            console.log(time)
            var item =
                "<tr>"
                +"<td class='text-center'>"+"<input type='checkbox' name='ids' value='"+val.id+"'/>"+"</td>"
                +"<td>"+(parseInt(index)+1)+"</td>"
                +"<td>"+val.userName+"</td>"
                +"<td>"+val.userCode+"</td>"
                +"<td>"+val.sex+"</td>"
                +"<td>"+val.userMail+"</td>"
                +"<td>"+val.userPhone+"</td>"
                +"<td>"+val.userQq+"</td>"
                +"<td>"+val.stuMajorName+"</td>"
                +"<td>"+val.stuClass+"班</td>"
                +"<td>"+val.stuYear+"级</td>"
                +"<td>"+time+"</td>"
            ;
//                    console.log(item);
            if (val.userStatus = 1){
//                        console.log(item);
                item +=
                    "<td><span class='label label-success'>启用</span></td>"
                    +"<td>" +
                    "<button class='btn btn-xs btn-danger' style='margin-right: 5px'><i class='icon-remove'></i>禁用</button>" +
                    "<button class='btn btn-xs btn-warning' style='margin-right: 5px'><i class='icon-pencil'></i>编辑</button>" +
                    "<button class='btn btn-xs btn-danger' style='margin-right: 5px'><i class='icon-remove'>删除</i></button>" +
                    "</td>"
                    +"</tr>"
                ;
            }else{
                item+=
                    +"<td><span class='label label-danger'>禁用</span></td>"
                    +"<td>" +
                    "<button class='btn btn-xs btn-success'><i class='icon-ok'></i>启用</button>" +
                    "<button class='btn btn-xs btn-warning'><i class='icon-pencil'></i>编辑</button>" +
                    "<button class='btn btn-xs btn-danger'><i class='icon-remove'>删除</i></button>" +
                    "</td>"
                    +"</tr>"

                ;
            }
            $("#items").append(item);
        });
        $(".pagination").html(null);
        var page = obj.page;
        var pageItem="";
        if ((parseInt(page.current)-1) == 0){
            pageItem+= "<li><a href='#' class='btn btn-default' disabled='disabled'>上一页</a></li>";

        }else {
            pageItem+="<li><a class='disabled' href='/selectUserBase/userList?page="+(parseInt(page.current)-1)+"'>上一页</a></li>" +
                "<li><a href='/selectUserBase/userList?page="+(parseInt(page.current)-1)+"'>(parseInt(page.current)-1)</a></li>";

        }
        pageItem+="<li><a href='/selectUserBase/userList?page="+(parseInt(page.current))+"'>"+page.current+"</a></li>";
        if((parseInt(page.current)+1) <= parseInt(page.pages)){
            pageItem += "<li><a href='/selectUserBase/userList?page="+(parseInt(page.current)+1)+"'>(parseInt(page.current)+1)</a></li>" +
                "<li><a href='/selectUserBase/userList?page="+(parseInt(page.current)+1)+"'>下一页</a></li>";

        }else {
            pageItem += "<li><a class='btn  disabled' href='#'>下一页</a></li>";
        }
        if((parseInt(page.current)+2) <= parseInt(page.pages)){
            pageItem += "<li><a href='/selectUserBase/userList?page="+(parseInt(page.current)+2)+"'>"+(parseInt(page.current)+2)+"</a></li>";
        }
        pageItem+="<li><label style='line-height: 35px'>共 "+page.total+" 条记录</label></li>";
        $(".pagination").append(pageItem);
    }
</script>


</body>
</html>