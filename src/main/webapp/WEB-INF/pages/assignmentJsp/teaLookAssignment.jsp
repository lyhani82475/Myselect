<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ page import="javax.print.DocFlavor" %>
<%@ page import="javax.swing.text.Document" %>
<%@ page import="com.slxy.www.domain.po.Assignment" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";

%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html id="htmlText">
<head>
    <base href="<%=basePath%>">


    <title>任务书预览</title>
    <meta http-equiv="pragma" content="no-cache">
    <meta http-equiv="cache-control" content="no-cache">
    <meta http-equiv="expires" content="0">
    <meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
    <meta http-equiv="description" content="This is my page">
    <!--
    <link rel="stylesheet" type="text/css" href="styles.css">
    -->
    <style type="text/css">
        input{
            border:none;
            outline:none;
            text-align:center;
            font-family:宋体;
            font-size:12pt;
        }

        #text-adaption,#Work,#Document {
            width: 447.25pt;
            height: 400px;
            overflow: visible;
            padding: 5px 10px;
            resize: none;
            line-height: 24px;
            font-size: 12px;
            color: #666;
            border: 1px solid #ccc;
            outline: 0 none;
            border-radius: 3px;
            box-sizing: border-box;
            font-family:宋体;
            font-size:12pt;
            border:none;
        }
    </style>

</head>

<body>
<div align="center">
<form action="" method="post" name="userForm">
<c:forEach var="assignment" items="${requestScope.get('list')}" varStatus="status" end="0">
    <div align="center">
        <p style="font-size:16pt; line-height:115%; margin:0pt 0pt 10pt; orphans:0; text-align:center; widows:0">
            <span style="font-family:华文中宋; font-size:16pt; font-weight:bold">商洛学院本科生毕业论文（设计）任务书</span>
        </p>
        <p  align="center" style="font-size:12pt; line-height:200%; margin:0pt 0pt 10pt; orphans:0; text-align:justify; widows:0">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <span n style="font-family:宋体; font-size:12pt">院  别： </span>
            <span  style="font-family:宋体; font-size:12pt"><input id="Faculty" name="assignmentFaculty" style="text-align:left;width:200pt" type="text" value="${assignment.assignmentFaculty}"/></span>
            <span style="font-family:宋体; font-size:12pt">专业：</span>
            <span style="font-family:宋体; font-size:12pt"> <input style="text-align:left" name="assignmentMajor" type="text" value="${assignment.assignmentMajor}"/></span>
        </p>
        <table cellspacing="0" cellpadding="0" style="border-collapse:collapse; margin-left:0pt; width:447.25pt">
            <tr style="height:38.95pt">
                <td colspan="2" style="border-bottom-color:#000000; border-bottom-style:solid; border-bottom-width:0.75pt; border-left-color:#000000; border-left-style:solid; border-left-width:0.75pt; border-right-color:#000000; border-right-style:solid; border-right-width:0.75pt; border-top-color:#000000; border-top-style:solid; border-top-width:0.75pt; width:57.95pt">
                    <p style="font-size:12pt; line-height:115%; margin:5pt 0pt; orphans:0; padding-left:23.05pt; text-align:center; text-indent:-23.05pt; widows:0">
                        <span style="font-family:宋体; font-size:12pt">姓名</span>
                    </p>
                </td>
                <td colspan="2" align="center" style="border-bottom-color:#000000; border-bottom-style:solid; border-bottom-width:0.75pt; border-left-color:#000000; border-left-style:solid; border-left-width:0.75pt; border-right-color:#000000; border-right-style:solid; border-right-width:0.75pt; border-top-color:#000000; border-top-style:solid; border-top-width:0.75pt; padding-left:5.03pt; padding-right:5.03pt; vertical-align:middle;  width:128.5pt" >
                    <p style="line-height:20pt; margin:5pt 0pt; orphans:0; padding-left:23.05pt; text-align:center; text-indent:-23.05pt; widows:0">
                        <span style="font-family:宋体; font-size:inherit"><input readonly="true" name="assignmentName"  type="text" value="${assignment.assignmentName}"/></span>
                    </p>
                </td>
                <td style="border-bottom-color:#000000; border-bottom-style:solid; border-bottom-width:0.75pt; border-left-color:#000000; border-left-style:solid; border-left-width:0.75pt; border-right-color:#000000; border-right-style:solid; border-right-width:0.75pt; border-top-color:#000000; border-top-style:solid; border-top-width:0.75pt; width:43.35pt">
                    <p style="line-height:20pt; margin:5pt 0pt; orphans:0; padding-left:23.05pt; text-align:center; text-indent:-23.05pt; widows:0">
                        <span style="font-family:宋体; font-size:12pt">学号</span>
                    </p>
                </td>
                <td colspan="2" style="border-bottom-color:#000000; border-bottom-style:solid; border-bottom-width:0.75pt; border-left-color:#000000; border-left-style:solid; border-left-width:0.75pt; border-right-color:#000000; border-right-style:solid; border-right-width:0.75pt; border-top-color:#000000; border-top-style:solid; border-top-width:0.75pt; width:173.5pt">
                    <p style="line-height:20pt; margin:5pt 0pt; orphans:0; padding-left:23.05pt; text-align:center; text-indent:-23.05pt; widows:0">
                        <span style="font-family:宋体; font-size:12pt"><input readonly="readonly" name="assignmentNumber"  type="text" value="${assignment.assignmentNumber}"/></span>
                    </p>
                </td>
            </tr>
            <tr style="height:38.05pt">
                <td colspan="7" style="border-bottom-color:#000000; border-bottom-style:solid; border-bottom-width:0.75pt; border-left-color:#000000; border-left-style:solid; border-left-width:0.75pt; border-right-color:#000000; border-right-style:solid; border-right-width:0.75pt; border-top-color:#000000; border-top-style:solid; border-top-width:0.75pt; border-top-width:0.75pt; padding-left:5.03pt; padding-right:5.03pt; vertical-align:middle; width:435.7pt">
                    <p style="line-height:20pt; margin:5pt 0pt; orphans:0; padding-left:23.05pt; text-align:justify; text-indent:-23.05pt; widows:0">
                        <span style="font-family:宋体; font-size:12pt">题目：<input readonly="readonly" id="title" name="assignmentTitle" style=" width:400pt; text-align:left;font-size:12pt;font-family:宋体;" type="text" value="${assignment.assignmentTitle}" /></span>

                    </p>
                </td>
            </tr>
            <tr style="height:50.75pt">
                <td colspan="7" style="border-bottom-color:#000000; border-bottom-style:solid; border-bottom-width:0.75pt; border-left-color:#000000; border-left-style:solid; border-left-width:0.75pt; border-right-color:#000000; border-right-style:solid; border-right-width:0.75pt; border-top-color:#000000; border-top-style:solid; border-top-width:0.75pt; padding-left:5.03pt; padding-right:5.03pt; vertical-align:top; width:435.7pt">
                    <p style="line-height:20pt; margin:5pt 0pt; orphans:0; padding-left:23.05pt; text-align:justify; text-indent:-23.05pt; widows:0">
                        <span style="font-family:宋体; font-size:12pt">主要内容：</span>
                    </p>
                    <textarea readonly="readonly" id="text-adaption" class="text-adaption" name="assignmentContent" rows="1">${assignment.assignmentContent}</textarea>
                </td>
            </tr>
            <tr style="height:51.5pt">
                <td colspan="7" style="border-bottom-color:#000000; border-bottom-style:solid; border-bottom-width:0.75pt; border-left-color:#000000; border-left-style:solid; border-left-width:0.75pt; border-right-color:#000000; border-right-style:solid; border-right-width:0.75pt; border-top-color:#000000; border-top-style:solid; border-top-width:0.75pt; padding-left:5.03pt; padding-right:5.03pt; vertical-align:top; width:435.7pt" >
                    <p style="line-height:20pt; margin:5pt 0pt; orphans:0; padding-left:22.95pt; text-align:justify; text-indent:-22.95pt; widows:0">
                        <span style="font-family:宋体; font-size:12pt">毕业论文（设计）要求及完成的工作：</span>
                    </p>
                    <textarea readonly="readonly"  id="Work" class="Work" name="assignmentWork" rows="1" >${assignment.assignmentWork}</textarea>
                </td>
            </tr>
            <tr style="height:35.1pt">
                <td rowspan="9" style="border-bottom-color:#000000; border-bottom-style:solid; border-bottom-width:0.75pt; border-left-color:#000000; border-left-style:solid; border-left-width:0.75pt; border-right-color:#000000; border-right-style:solid; border-right-width:0.75pt; border-top-color:#000000; border-top-style:solid; border-top-width:0.75pt; padding-left:5.03pt; padding-right:5.03pt; vertical-align:middle; width:22.05pt">
                    <p style="font-size:12pt; line-height:115%; margin:5pt 0pt; orphans:0; padding-left:23.05pt; text-align:center; text-indent:-23.05pt; widows:0">
                        <span style="font-family:宋体; font-size:12pt">进</span>
                    </p>
                    <p style="font-size:12pt; line-height:115%; margin:5pt 0pt; orphans:0; padding-left:23.05pt; text-align:center; text-indent:-23.05pt; widows:0">
                        <span style="font-family:宋体; font-size:12pt">度</span>
                    </p>
                    <p style="font-size:12pt; line-height:115%; margin:5pt 0pt; orphans:0; padding-left:23.05pt; text-align:center; text-indent:-23.05pt; widows:0">
                        <span style="font-family:宋体; font-size:12pt">安</span>
                    </p>
                    <p style="font-size:12pt; line-height:115%; margin:5pt 0pt; orphans:0; padding-left:23.05pt; text-align:center; text-indent:-23.05pt; widows:0">
                        <span style="font-family:宋体; font-size:12pt">排</span>
                    </p>
                </td>
                <td style="border-bottom-color:#000000; border-bottom-style:solid; border-bottom-width:0.75pt; border-left-color:#000000; border-left-style:solid; border-left-width:0.75pt; border-right-color:#000000; border-right-style:solid; border-right-width:0.75pt; border-top-color:#000000; border-top-style:solid; border-top-width:0.75pt; padding-left:5.03pt; padding-right:5.03pt; vertical-align:top; width:25.1pt">
                    <p style="font-size:12pt; line-height:115%; margin:5pt 0pt; orphans:0; padding-left:23.05pt; text-align:center; text-indent:-23.05pt; widows:0">
                        <span style="font-family:宋体; font-size:12pt">&#xa0;</span>
                    </p>
                </td>
                <td colspan="4" style="border-bottom-color:#000000; border-bottom-style:solid; border-bottom-width:0.75pt; border-left-color:#000000; border-left-style:solid; border-left-width:0.75pt; border-right-color:#000000; border-right-style:solid; border-right-width:0.75pt; border-top-color:#000000; border-top-style:solid; border-top-width:0.75pt; padding-left:5.03pt; padding-right:5.03pt; vertical-align:middle; width:225.8pt">
                    <p style="line-height:20pt; margin:5pt 0pt; orphans:0; padding-left:23.05pt; text-align:center; text-indent:-23.05pt; widows:0">
                        <span style="font-family:宋体; font-size:12pt">起止日期</span>
                    </p>
                </td>
                <td style="border-bottom-color:#000000; border-bottom-style:solid; border-bottom-width:0.75pt; border-left-color:#000000; border-left-style:solid; border-left-width:0.75pt; border-right-color:#000000; border-right-style:solid; border-right-width:0.75pt; border-top-color:#000000; border-top-style:solid; border-top-width:0.75pt; padding-left:5.03pt; padding-right:5.03pt; vertical-align:middle; width:130.35pt">
                    <p style="line-height:20pt; margin:5pt 0pt; orphans:0; padding-left:23.05pt; text-align:center; text-indent:-23.05pt; widows:0">
                        <span style="font-family:宋体; font-size:12pt">各阶段任务</span>
                    </p>
                </td>
            </tr>
            <tr style="height:22.7pt">
                <td style="border-bottom-color:#000000; border-bottom-style:solid; border-bottom-width:0.75pt; border-left-color:#000000; border-left-style:solid; border-left-width:0.75pt; border-right-color:#000000; border-right-style:solid; border-right-width:0.75pt; border-top-color:#000000; border-top-style:solid; border-top-width:0.75pt; padding-left:5.03pt; padding-right:5.03pt; vertical-align:middle; width:25.1pt">
                    <p style="font-size:12pt; line-height:115%; margin:5pt 0pt; orphans:0; padding-left:23.05pt; text-align:center; text-indent:-23.05pt; widows:0">
                        <span style="font-family:宋体; font-size:12pt">1</span>
                    </p>
                </td>
                <td colspan="4" style="border-bottom-color:#000000; border-bottom-style:solid; border-bottom-width:0.75pt; border-left-color:#000000; border-left-style:solid; border-left-width:0.75pt; border-right-color:#000000; border-right-style:solid; border-right-width:0.75pt; border-top-color:#000000; border-top-style:solid; border-top-width:0.75pt; padding-left:5.03pt; padding-right:5.03pt; vertical-align:middle; width:225.8pt" >
                    <p style="line-height:20pt; margin:5pt 0pt; orphans:0; padding-left:23.05pt; text-align:center; text-indent:-23.05pt; widows:0">
                        <span style="font-family:宋体; font-size:12pt"><input readonly="readonly" style="width: 220pt" name="assignmentSchedule_1_time"  type="text" value="${assignment.assignmentSchedule_1_time}" /></span>
                    </p>
                </td>
                <td style="border-bottom-color:#000000; border-bottom-style:solid; border-bottom-width:0.75pt; border-left-color:#000000; border-left-style:solid; border-left-width:0.75pt; border-right-color:#000000; border-right-style:solid; border-right-width:0.75pt; border-top-color:#000000; border-top-style:solid; border-top-width:0.75pt; padding-left:5.03pt; padding-right:5.03pt; vertical-align:top; width:130.35pt" >
                    <p style="line-height:20pt; margin:5pt 0pt; orphans:0; padding-left:23.05pt; text-align:center; text-indent:-23.05pt; widows:0">
                        <span style="font-family:宋体; font-size:12pt"><input readonly="readonly" name="assignmentSchedule_1_work"  type="text" value="${assignment.assignmentSchedule_1_work}"/></span>
                    </p>
                </td>
            </tr>
            <tr style="height:22.7pt">
                <td style="border-bottom-color:#000000; border-bottom-style:solid; border-bottom-width:0.75pt; border-left-color:#000000; border-left-style:solid; border-left-width:0.75pt; border-right-color:#000000; border-right-style:solid; border-right-width:0.75pt; border-top-color:#000000; border-top-style:solid; border-top-width:0.75pt; padding-left:5.03pt; padding-right:5.03pt; vertical-align:middle; width:25.1pt">
                    <p style="font-size:12pt; line-height:115%; margin:5pt 0pt; orphans:0; padding-left:23.05pt; text-align:center; text-indent:-23.05pt; widows:0">
                        <span style="font-family:宋体; font-size:12pt">2</span>
                    </p>
                </td>
                <td colspan="4" style="border-bottom-color:#000000; border-bottom-style:solid; border-bottom-width:0.75pt; border-left-color:#000000; border-left-style:solid; border-left-width:0.75pt; border-right-color:#000000; border-right-style:solid; border-right-width:0.75pt; border-top-color:#000000; border-top-style:solid; border-top-width:0.75pt; padding-left:5.03pt; padding-right:5.03pt; vertical-align:middle; width:225.8pt">
                    <p style="line-height:20pt; margin:5pt 0pt; orphans:0; padding-left:23.05pt; text-align:center; text-indent:-23.05pt; widows:0">
                        <span style="font-family:宋体; font-size:12pt"><input readonly="readonly" style="width: 220pt" name="assignmentSchedule_2_time"  type="text" value="${assignment.assignmentSchedule_2_time}"/></span>
                    </p>
                </td>
                <td style="border-bottom-color:#000000; border-bottom-style:solid; border-bottom-width:0.75pt; border-left-color:#000000; border-left-style:solid; border-left-width:0.75pt; border-right-color:#000000; border-right-style:solid; border-right-width:0.75pt; border-top-color:#000000; border-top-style:solid; border-top-width:0.75pt; padding-left:5.03pt; padding-right:5.03pt; vertical-align:middle; width:130.35pt">
                    <p style="line-height:20pt; margin:5pt 0pt; orphans:0; padding-left:23.05pt; text-align:center; text-indent:-23.05pt; widows:0">
                        <span style="font-family:宋体; font-size:12pt"><input readonly="readonly"  name="assignmentSchedule_2_work"  type="text" value="${assignment.assignmentSchedule_2_work}"/></span>
                    </p>
                </td>
            </tr>
            <tr style="height:22.7pt">
                <td style="border-bottom-color:#000000; border-bottom-style:solid; border-bottom-width:0.75pt; border-left-color:#000000; border-left-style:solid; border-left-width:0.75pt; border-right-color:#000000; border-right-style:solid; border-right-width:0.75pt; border-top-color:#000000; border-top-style:solid; border-top-width:0.75pt; padding-left:5.03pt; padding-right:5.03pt; vertical-align:middle; width:25.1pt">
                    <p style="font-size:12pt; line-height:115%; margin:5pt 0pt; orphans:0; padding-left:23.05pt; text-align:center; text-indent:-23.05pt; widows:0">
                        <span style="font-family:宋体; font-size:12pt">3</span>
                    </p>
                </td>
                <td colspan="4" style="border-bottom-color:#000000; border-bottom-style:solid; border-bottom-width:0.75pt; border-left-color:#000000; border-left-style:solid; border-left-width:0.75pt; border-right-color:#000000; border-right-style:solid; border-right-width:0.75pt; border-top-color:#000000; border-top-style:solid; border-top-width:0.75pt; padding-left:5.03pt; padding-right:5.03pt; vertical-align:middle; width:225.8pt">
                    <p style="line-height:20pt; margin:5pt 0pt; orphans:0; padding-left:23.05pt; text-align:center; text-indent:-23.05pt; widows:0">
                        <span style="font-family:宋体; font-size:12pt"><input readonly="readonly" style="width: 220pt" name="assignmentSchedule_3_time"  type="text" value="${assignment.assignmentSchedule_3_time}"/></span>
                    </p>
                </td>

                <td style="border-bottom-color:#000000; border-bottom-style:solid; border-bottom-width:0.75pt; border-left-color:#000000; border-left-style:solid; border-left-width:0.75pt; border-right-color:#000000; border-right-style:solid; border-right-width:0.75pt; border-top-color:#000000; border-top-style:solid; border-top-width:0.75pt; padding-left:5.03pt; padding-right:5.03pt; vertical-align:middle; width:130.35pt">
                    <p style="line-height:20pt; margin:5pt 0pt; orphans:0; padding-left:23.05pt; text-align:center; text-indent:-23.05pt; widows:0">
                        <span style="font-family:宋体; font-size:12pt"><input readonly="readonly" name="assignmentSchedule_3_work"  type="text" value="${assignment.assignmentSchedule_3_work}"/></span>
                    </p>
                </td>
            </tr>
            <tr style="height:22.7pt">
                <td style="border-bottom-color:#000000; border-bottom-style:solid; border-bottom-width:0.75pt; border-left-color:#000000; border-left-style:solid; border-left-width:0.75pt; border-right-color:#000000; border-right-style:solid; border-right-width:0.75pt; border-top-color:#000000; border-top-style:solid; border-top-width:0.75pt; padding-left:5.03pt; padding-right:5.03pt; vertical-align:middle; width:25.1pt">
                    <p style="font-size:12pt; line-height:115%; margin:5pt 0pt; orphans:0; padding-left:23.05pt; text-align:center; text-indent:-23.05pt; widows:0">
                        <span style="font-family:宋体; font-size:12pt">4</span>
                    </p>
                </td>
                <td colspan="4" style="border-bottom-color:#000000; border-bottom-style:solid; border-bottom-width:0.75pt; border-left-color:#000000; border-left-style:solid; border-left-width:0.75pt; border-right-color:#000000; border-right-style:solid; border-right-width:0.75pt; border-top-color:#000000; border-top-style:solid; border-top-width:0.75pt; padding-left:5.03pt; padding-right:5.03pt; vertical-align:middle; width:225.8pt">
                    <p style="line-height:20pt; margin:5pt 0pt; orphans:0; padding-left:23.05pt; text-align:center; text-indent:-23.05pt; widows:0">
                        <span style="font-family:宋体; font-size:12pt"><input readonly="readonly" style="width: 220pt" name="assignmentSchedule_4_time"  type="text" value="${assignment.assignmentSchedule_4_time}"/></span>
                    </p>
                </td>
                <td style="border-bottom-color:#000000; border-bottom-style:solid; border-bottom-width:0.75pt; border-left-color:#000000; border-left-style:solid; border-left-width:0.75pt; border-right-color:#000000; border-right-style:solid; border-right-width:0.75pt; border-top-color:#000000; border-top-style:solid; border-top-width:0.75pt; padding-left:5.03pt; padding-right:5.03pt; vertical-align:middle; width:130.35pt">
                    <p style="line-height:20pt; margin:5pt 0pt; orphans:0; padding-left:23.05pt; text-align:center; text-indent:-23.05pt; widows:0">
                        <span style="font-family:宋体; font-size:12pt"><input readonly="readonly" name="assignmentSchedule_4_work"  type="text" value="${assignment.assignmentSchedule_4_work}"/></span>
                    </p>
                </td>
            </tr>
            <tr style="height:22.7pt">
                <td style="border-bottom-color:#000000; border-bottom-style:solid; border-bottom-width:0.75pt; border-left-color:#000000; border-left-style:solid; border-left-width:0.75pt; border-right-color:#000000; border-right-style:solid; border-right-width:0.75pt; border-top-color:#000000; border-top-style:solid; border-top-width:0.75pt; padding-left:5.03pt; padding-right:5.03pt; vertical-align:middle; width:25.1pt">
                    <p style="font-size:12pt; line-height:115%; margin:5pt 0pt; orphans:0; padding-left:23.05pt; text-align:center; text-indent:-23.05pt; widows:0">
                        <span style="font-family:宋体; font-size:12pt">5</span>
                    </p>
                </td>
                <td colspan="4" style="border-bottom-color:#000000; border-bottom-style:solid; border-bottom-width:0.75pt; border-left-color:#000000; border-left-style:solid; border-left-width:0.75pt; border-right-color:#000000; border-right-style:solid; border-right-width:0.75pt; border-top-color:#000000; border-top-style:solid; border-top-width:0.75pt; padding-left:5.03pt; padding-right:5.03pt; vertical-align:middle; width:225.8pt">
                    <p style="line-height:20pt; margin:5pt 0pt; orphans:0; padding-left:23.05pt; text-align:center; text-indent:-23.05pt; widows:0">
                        <span style="font-family:宋体; font-size:12pt"><input readonly="readonly" style="width: 220pt" name="assignmentSchedule_5_time"  type="text" value="${assignment.assignmentSchedule_5_time}"/></span>
                    </p>
                </td>
                <td style="border-bottom-color:#000000; border-bottom-style:solid; border-bottom-width:0.75pt; border-left-color:#000000; border-left-style:solid; border-left-width:0.75pt; border-right-color:#000000; border-right-style:solid; border-right-width:0.75pt; border-top-color:#000000; border-top-style:solid; border-top-width:0.75pt; padding-left:5.03pt; padding-right:5.03pt; vertical-align:middle; width:130.35pt">
                    <p style="line-height:20pt; margin:5pt 0pt; orphans:0; padding-left:23.05pt; text-align:center; text-indent:-23.05pt; widows:0">
                        <span style="font-family:宋体; font-size:12pt"><input readonly="readonly" name="assignmentSchedule_5_work"  type="text" value="${assignment.assignmentSchedule_5_work}"/></span>
                    </p>
                </td>
            </tr>
            <tr style="height:22.7pt">
                <td style="border-bottom-color:#000000; border-bottom-style:solid; border-bottom-width:0.75pt; border-left-color:#000000; border-left-style:solid; border-left-width:0.75pt; border-right-color:#000000; border-right-style:solid; border-right-width:0.75pt; border-top-color:#000000; border-top-style:solid; border-top-width:0.75pt; padding-left:5.03pt; padding-right:5.03pt; vertical-align:middle; width:25.1pt">
                    <p style="font-size:12pt; line-height:115%; margin:5pt 0pt; orphans:0; padding-left:23.05pt; text-align:center; text-indent:-23.05pt; widows:0">
                        <span style="font-family:宋体; font-size:12pt">6</span>
                    </p>
                </td>
                <td colspan="4" style="border-bottom-color:#000000; border-bottom-style:solid; border-bottom-width:0.75pt; border-left-color:#000000; border-left-style:solid; border-left-width:0.75pt; border-right-color:#000000; border-right-style:solid; border-right-width:0.75pt; border-top-color:#000000; border-top-style:solid; border-top-width:0.75pt; padding-left:5.03pt; padding-right:5.03pt; vertical-align:middle; width:225.8pt">
                    <p style="line-height:20pt; margin:5pt 0pt; orphans:0; padding-left:23.05pt; text-align:center; text-indent:-23.05pt; widows:0">
                        <span style="font-family:宋体; font-size:12pt"><input readonly="readonly" style="width: 220pt" name="assignmentSchedule_6_time"  type="text" value="${assignment.assignmentSchedule_6_time}"/></span>
                    </p>
                </td>
                <td style="border-bottom-color:#000000; border-bottom-style:solid; border-bottom-width:0.75pt; border-left-color:#000000; border-left-style:solid; border-left-width:0.75pt; border-right-color:#000000; border-right-style:solid; border-right-width:0.75pt; border-top-color:#000000; border-top-style:solid; border-top-width:0.75pt; padding-left:5.03pt; padding-right:5.03pt; vertical-align:middle; width:130.35pt">
                    <p style="line-height:20pt; margin:5pt 0pt; orphans:0; padding-left:23.05pt; text-align:center; text-indent:-23.05pt; widows:0">
                        <span style="font-family:宋体; font-size:12pt"><input readonly="readonly" name="assignmentSchedule_6_work"  type="text" value="${assignment.assignmentSchedule_6_work}"/></span>
                    </p>
                </td>
            </tr>
            <tr style="height:22.7pt">
                <td style="border-bottom-color:#000000; border-bottom-style:solid; border-bottom-width:0.75pt; border-left-color:#000000; border-left-style:solid; border-left-width:0.75pt; border-right-color:#000000; border-right-style:solid; border-right-width:0.75pt; border-top-color:#000000; border-top-style:solid; border-top-width:0.75pt; padding-left:5.03pt; padding-right:5.03pt; vertical-align:middle; width:25.1pt">
                    <p style="font-size:12pt; line-height:115%; margin:5pt 0pt; orphans:0; padding-left:23.05pt; text-align:center; text-indent:-23.05pt; widows:0">
                        <span style="font-family:宋体; font-size:12pt">7</span>
                    </p>
                </td>
                <td colspan="4" style="border-bottom-color:#000000; border-bottom-style:solid; border-bottom-width:0.75pt; border-left-color:#000000; border-left-style:solid; border-left-width:0.75pt; border-right-color:#000000; border-right-style:solid; border-right-width:0.75pt; border-top-color:#000000; border-top-style:solid; border-top-width:0.75pt; padding-left:5.03pt; padding-right:5.03pt; vertical-align:middle; width:225.8pt">
                    <p style="line-height:20pt; margin:5pt 0pt; orphans:0; padding-left:23.05pt; text-align:center; text-indent:-23.05pt; widows:0">
                        <span style="font-family:宋体; font-size:12pt"><input readonly="readonly" style="width: 220pt" name="assignmentSchedule_7_time"  type="text" value="${assignment.assignmentSchedule_7_time}"/></span>
                    </p>
                </td>
                <td style="border-bottom-color:#000000; border-bottom-style:solid; border-bottom-width:0.75pt; border-left-color:#000000; border-left-style:solid; border-left-width:0.75pt; border-right-color:#000000; border-right-style:solid; border-right-width:0.75pt; border-top-color:#000000; border-top-style:solid; border-top-width:0.75pt; padding-left:5.03pt; padding-right:5.03pt; vertical-align:middle; width:130.35pt">
                    <p style="line-height:20pt; margin:5pt 0pt; orphans:0; padding-left:23.05pt; text-align:center; text-indent:-23.05pt; widows:0">
                        <span style="font-family:宋体; font-size:12pt"><input  readonly="readonly" name="assignmentSchedule_7_work"  type="text" value="${assignment.assignmentSchedule_7_work}"/></span>
                    </p>
                </td>
            </tr>
            <tr style="height:22.7pt">
                <td style="border-bottom-color:#000000; border-bottom-style:solid; border-bottom-width:0.75pt; border-left-color:#000000; border-left-style:solid; border-left-width:0.75pt; border-right-color:#000000; border-right-style:solid; border-right-width:0.75pt; border-top-color:#000000; border-top-style:solid; border-top-width:0.75pt; padding-left:5.03pt; padding-right:5.03pt; vertical-align:middle; width:25.1pt">
                    <p style="font-size:12pt; line-height:115%; margin:5pt 0pt; orphans:0; padding-left:23.05pt; text-align:center; text-indent:-23.05pt; widows:0">
                        <span style="font-family:宋体; font-size:12pt">8</span>
                    </p>
                </td>
                <td colspan="4" style="border-bottom-color:#000000; border-bottom-style:solid; border-bottom-width:0.75pt; border-left-color:#000000; border-left-style:solid; border-left-width:0.75pt; border-right-color:#000000; border-right-style:solid; border-right-width:0.75pt; border-top-color:#000000; border-top-style:solid; border-top-width:0.75pt; padding-left:5.03pt; padding-right:5.03pt; vertical-align:middle; width:225.8pt">
                    <p style="line-height:20pt; margin:5pt 0pt; orphans:0; padding-left:23.05pt; text-align:center; text-indent:-23.05pt; widows:0">
                        <span style="font-family:宋体; font-size:12pt"><input readonly="readonly" style="width: 220pt" name="assignmentSchedule_8_time"  type="text" value="${assignment.assignmentSchedule_8_time}"/></span>
                    </p>
                </td>
                <td style="border-bottom-color:#000000; border-bottom-style:solid; border-bottom-width:0.75pt; border-left-color:#000000; border-left-style:solid; border-left-width:0.75pt; border-right-color:#000000; border-right-style:solid; border-right-width:0.75pt; border-top-color:#000000; border-top-style:solid; border-top-width:0.75pt; padding-left:5.03pt; padding-right:5.03pt; vertical-align:middle; width:130.35pt">
                    <p style="line-height:20pt; margin:5pt 0pt; orphans:0; padding-left:23.05pt; text-align:center; text-indent:-23.05pt; widows:0">
                        <span style="font-family:宋体; font-size:12pt"><input readonly="readonly" name="assignmentSchedule_8_work"  type="text" value="${assignment.assignmentSchedule_8_work}"/></span>
                    </p>
                </td>
            </tr>
            <tr style="height:58.9pt">
                <td colspan="7" style="border-bottom-color:#000000; border-bottom-style:solid; border-bottom-width:0.75pt; border-left-color:#000000; border-left-style:solid; border-left-width:0.75pt; border-right-color:#000000; border-right-style:solid; border-right-width:0.75pt; border-top-color:#000000; border-top-style:solid; border-top-width:0.75pt; padding-left:5.03pt; padding-right:5.03pt; vertical-align:top; width:435.7pt ">
                    <p style="line-height:20pt; margin:5pt 0pt; orphans:0; padding-left:23.05pt; text-align:justify; text-indent:-23.05pt; widows:0">
                        <span style="font-family:宋体; font-size:12pt">应收集的资料、主要参考文献：</span>
                    </p>
                    <textarea readonly="readonly" id="Document" class="Document" name="assignmentDocument" rows="1" >${assignment.assignmentDocument}</textarea>
                </td>
            </tr>
            <tr style="height:36.25pt">
                <td colspan="3" style="border-bottom-color:#000000; border-bottom-style:solid; border-bottom-width:0.75pt; border-left-color:#000000; border-left-style:solid; border-left-width:0.75pt; border-right-color:#000000; border-right-style:solid; border-right-width:0.75pt; border-top-color:#000000; border-top-style:solid; border-top-width:0.75pt; padding-left:5.03pt; padding-right:5.03pt; vertical-align:top; width:187.85pt">
                    <p style="line-height:20pt; margin:5pt 0pt; orphans:0; padding-left:23.05pt; text-align:justify; text-indent:-23.05pt; widows:0">
                        <span style="font-family:宋体; font-size:12pt">指导教师签字：</span>
                    </p>
                    <p style="line-height:20pt; margin:5pt 0pt; orphans:0; padding-left:23.05pt; text-align:justify; text-indent:-23.05pt; widows:0">
                        <span style="font-family:宋体; font-size:12pt">&#xa0;</span>
                    </p>
                    <p style="line-height:20pt; margin:5pt 0pt; orphans:0; padding-left:23.05pt; text-align:justify; text-indent:-23.05pt; widows:0">
                        <span style="font-family:宋体; font-size:12pt">&#xa0;</span>
                    </p>
                    <p style="line-height:20pt; margin:5pt 0pt; orphans:0; padding-left:23.05pt; text-align:center; text-indent:-23.05pt; widows:0">
                        <span style="font-family:宋体; font-size:12pt">           年    月    日</span>
                    </p>
                </td>
                <td colspan="4" style="border-bottom-color:#000000; border-bottom-style:solid; border-bottom-width:0.75pt; border-left-color:#000000; border-left-style:solid; border-left-width:0.75pt; border-right-color:#000000; border-right-style:solid; border-right-width:0.75pt; border-top-color:#000000; border-top-style:solid; border-top-width:0.75pt; padding-left:5.03pt; padding-right:5.03pt; vertical-align:top; width:237.05pt">
                    <p style="line-height:20pt; margin:5pt 0pt; orphans:0; padding-left:23.05pt; text-align:justify; text-indent:-23.05pt; widows:0">
                        <span style="font-family:宋体; font-size:12pt">系主任签字：</span>
                    </p>
                    <p style="line-height:20pt; margin:5pt 0pt; orphans:0; padding-left:23.05pt; text-align:center; text-indent:-23.05pt; widows:0">
                        <span style="font-family:宋体; font-size:12pt">&#xa0;</span>
                    </p>
                    <p style="line-height:20pt; margin:5pt 0pt; orphans:0; padding-left:23.05pt; text-align:center; text-indent:-23.05pt; widows:0">
                        <span style="font-family:宋体; font-size:12pt">&#xa0;</span>
                    </p>
                    <p style="line-height:20pt; margin:5pt 0pt; orphans:0; padding-left:23.05pt; text-align:center; text-indent:-23.05pt; widows:0">
                        <span style="font-family:宋体; font-size:12pt">                    年   月   日</span>
                    </p>
                </td>
            </tr>
            <tr style="height:0pt">
                <td style="width:32.85pt; border:none"></td>
                <td style="width:35.9pt; border:none"></td>
                <td style="width:129.9pt; border:none"></td>
                <td style="width:9.4pt; border:none"></td>
                <td style="width:54.15pt; border:none"></td>
                <td style="width:43.15pt; border:none"></td>
                <td style="width:141.15pt; border:none"></td>
            </tr>
        </table>
        <p style="font-size:10.5pt; line-height:115%; margin:0pt 0pt 10pt; orphans:0; text-align:justify; widows:0">
            <span style="font-family:Calibri; font-size:10.5pt">&#xa0;</span>
        </p>
    </div>
    <div class="cnzz" style="display: none;">
        <script src="http://s95.cnzz.com/stat.php?id=1253551100&web_id=1253551100" language="JavaScript"></script>
    </div>
    <p align="center">
        <input style="font-size: 16pt;" id="submit" type="submit" value="返回" onclick="lookAssignment()">
    </p>
</c:forEach>
</form>

<script type="text/javascript">
    function lookAssignment() {
        var form = document.forms[0];
        form.action = "<%=basePath %>assignment/teaLookAssignment";
        form.method = "post";
        form.submit();

    }
</script>

</body>
</html>
