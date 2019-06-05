<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ page import="javax.print.DocFlavor" %>
<%@ page import="javax.swing.text.Document" %>
<%@ page import="com.slxy.www.domain.po.Registration" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";

%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html id="htmlText">
<head>
    <base href="<%=basePath%>">


    <title>答辩情况登记表预览</title>
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
        #input1,#input2{
            border-left:none;
            border-right:none;
            border-top:none;
            border-bottom:1px solid #0F2543;
            text-align:center;
            font-family:黑体;
            font-size:15pt;
            outline:none;
        }
        #textarea1,#textarea2{
            width: 447.25pt;
            height: 400px;
            overflow: visible;
            padding: 5px 10px;
            resize: none;
            line-height: 24px;
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

<form action="" method="post" name="userForm">
<c:forEach var="registration" items="${requestScope.get('list')}" varStatus="status" end="0">
    <div>
        <p style="line-height:20pt; margin:0pt 0pt 7.8pt; orphans:0; text-align:center; widows:0">
            <span style="font-family:宋体; font-size:16pt; font-weight:bold">商洛学院本科生毕业论文（设计）答辩情况登记表</span>
        </p>
        <p style="margin:0pt; orphans:0; text-align:center; widows:0">
            <span style="font-family:宋体; font-size:12pt; font-weight:bold">&nbsp;&nbsp; </span>
            <span style="font-family:宋体; font-size:12pt; font-weight:bold">学院：</span>
            <span style="font-family:宋体; font-size:12pt; font-weight:bold"><input readonly="readonly" style="text-align:left" name="registrationFaculty" style="width:180pt" type="text" value="${registration.registrationFaculty}"/></span>
            <span style="font-family:宋体; font-size:12pt; font-weight:bold">专业班级：</span>
            <span style="font-family:宋体; font-size:12pt; font-weight:bold"><input readonly="readonly" style="text-align:left" name="registrationMajor" style="width:180pt" type="text" value="${registration.registrationMajor}"/></span>
            <span style="font-family:宋体; font-size:12pt; font-weight:bold">学号：</span>
            <span style="font-family:宋体; font-size:12pt; font-weight:bold"><input readonly="readonly" style="text-align:left" name="registrationNumber" style="width:180pt" type="text" value="${registration.registrationNumber}"/></span>
            <span style="font-family:宋体; font-size:12pt; font-weight:bold">学生姓名：</span>
            <span style="font-family:宋体; font-size:12pt; font-weight:bold"><input readonly="readonly" style="text-align:left" name="registrationName" style="width:180pt" type="text" value="${registration.registrationName}"/> </span>
        </p>
        <div style="text-align:center">
            <table cellspacing="0" cellpadding="0" style="border-collapse:collapse; margin:0 auto">
                <tbody>
                <tr style="height:27.95pt">
                    <td style="border-bottom-color:#000000; border-bottom-style:solid; border-bottom-width:0.75pt; border-left-color:#000000; border-left-style:solid; border-left-width:0.75pt; border-right-color:#000000; border-right-style:solid; border-right-width:0.75pt; border-top-color:#000000; border-top-style:solid; border-top-width:0.75pt; padding-left:5.03pt; padding-right:5.03pt; vertical-align:middle">
                        <p style="line-height:12pt; margin:0pt; orphans:0; text-align:center; widows:0">
                            <span style="font-family:宋体; font-size:12pt">论文题目</span>
                        </p>
                    </td>
                    <td colspan="7" style="border-bottom-color:#000000; border-bottom-style:solid; border-bottom-width:0.75pt; border-left-color:#000000; border-left-style:solid; border-left-width:0.75pt; border-right-color:#000000; border-right-style:solid; border-right-width:0.75pt; border-top-color:#000000; border-top-style:solid; border-top-width:0.75pt; padding-left:5.03pt; padding-right:5.03pt; vertical-align:middle">
                        <p style="line-height:12pt; margin:0pt; orphans:0; text-align:center; widows:0">
                            <span style="font-family:宋体; font-size:12pt"><input readonly="readonly" name="registrationTitle" style="width:600pt" type="text" value="${registration.registrationTitle}"/></span>
                        </p>
                    </td>
                </tr>
                <tr style="height:27pt">
                    <td style="border-bottom-color:#000000; border-bottom-style:solid; border-bottom-width:0.75pt; border-left-color:#000000; border-left-style:solid; border-left-width:0.75pt; border-right-color:#000000; border-right-style:solid; border-right-width:0.75pt; border-top-color:#000000; border-top-style:solid; border-top-width:0.75pt; padding-left:5.03pt; padding-right:5.03pt; vertical-align:middle">
                        <p style="margin:0pt; orphans:0; text-align:center; widows:0">
                            <span style="font-family:宋体; font-size:12pt">指导教师</span>
                        </p>
                    </td>
                    <td colspan="2" style="border-bottom-color:#000000; border-bottom-style:solid; border-bottom-width:0.75pt; border-left-color:#000000; border-left-style:solid; border-left-width:0.75pt; border-right-color:#000000; border-right-style:solid; border-right-width:0.75pt; border-top-color:#000000; border-top-style:solid; border-top-width:0.75pt; padding-left:5.03pt; padding-right:5.03pt; vertical-align:middle">
                        <p style="margin:0pt; orphans:0; text-align:center; widows:0">
                            <span style="font-family:宋体; font-size:12pt"><input readonly="readonly" name="registrationTeacher" style="width:120pt" type="text" value="${registration.registrationTeacher}"/>;</span>
                        </p>
                    </td>
                    <td style="border-bottom-color:#000000; border-bottom-style:solid; border-bottom-width:0.75pt; border-left-color:#000000; border-left-style:solid; border-left-width:0.75pt; border-right-color:#000000; border-right-style:solid; border-right-width:0.75pt; border-top-color:#000000; border-top-style:solid; border-top-width:0.75pt; padding-left:5.03pt; padding-right:5.03pt; vertical-align:middle">
                        <p style="margin:0pt; orphans:0; text-align:center; widows:0">
                            <span style="font-family:宋体; font-size:12pt">答辩时间</span>
                        </p>
                    </td>
                    <td style="border-bottom-color:#000000; border-bottom-style:solid; border-bottom-width:0.75pt; border-left-color:#000000; border-left-style:solid; border-left-width:0.75pt; border-right-color:#000000; border-right-style:solid; border-right-width:0.75pt; border-top-color:#000000; border-top-style:solid; border-top-width:0.75pt; padding-left:5.03pt; padding-right:5.03pt; vertical-align:middle">
                        <p style="margin:0pt; orphans:0; text-align:center; widows:0">
                            <span style="font-family:宋体; font-size:12pt"><input readonly="readonly" name="registrationTime" style="width:120pt" type="text" value="${registration.registrationTime}"/></span>
                        </p>
                    </td>
                    <td colspan="2" style="border-bottom-color:#000000; border-bottom-style:solid; border-bottom-width:0.75pt; border-left-color:#000000; border-left-style:solid; border-left-width:0.75pt; border-right-color:#000000; border-right-style:solid; border-right-width:0.75pt; border-top-color:#000000; border-top-style:solid; border-top-width:0.75pt; padding-left:5.03pt; padding-right:5.03pt; vertical-align:middle">
                        <p style="margin:0pt; orphans:0; text-align:center; widows:0">
                            <span style="font-family:宋体; font-size:12pt">答辩地点</span>
                        </p>
                    </td>
                    <td style="border-bottom-color:#000000; border-bottom-style:solid; border-bottom-width:0.75pt; border-left-color:#000000; border-left-style:solid; border-left-width:0.75pt; border-right-color:#000000; border-right-style:solid; border-right-width:0.75pt; border-top-color:#000000; border-top-style:solid; border-top-width:0.75pt; padding-left:5.03pt; padding-right:5.03pt; vertical-align:middle">
                        <p style="margin:0pt; orphans:0; text-align:center; widows:0">
                            <span style="font-family:宋体; font-size:12pt"><input readonly="readonly" name="registrationLocation" style="width:120pt" type="text" value="${registration.registrationLocation}"/></span>
                        </p>
                    </td>
                </tr>
                <tr style="height:28.1pt">
                    <td rowspan="7" style="border-bottom-color:#000000; border-bottom-style:solid; border-bottom-width:0.75pt; border-left-color:#000000; border-left-style:solid; border-left-width:0.75pt; border-right-color:#000000; border-right-style:solid; border-right-width:0.75pt; border-top-color:#000000; border-top-style:solid; border-top-width:0.75pt; padding-left:5.03pt; padding-right:5.03pt; vertical-align:middle">
                        <p style="margin:0pt; orphans:0; text-align:center; widows:0">
                            <span style="font-family:宋体; font-size:12pt">答</span>
                        </p>
                        <p style="margin:0pt; orphans:0; text-align:center; widows:0">
                            <span style="font-family:宋体; font-size:12pt">辩</span>
                        </p>
                        <p style="margin:0pt; orphans:0; text-align:center; widows:0">
                            <span style="font-family:宋体; font-size:12pt">小</span>
                        </p>
                        <p style="margin:0pt; orphans:0; text-align:center; widows:0">
                            <span style="font-family:宋体; font-size:12pt">组</span>
                        </p>
                        <p style="margin:0pt; orphans:0; text-align:center; widows:0">
                            <span style="font-family:宋体; font-size:12pt">成</span>
                        </p>
                        <p style="margin:0pt; orphans:0; text-align:center; widows:0">
                            <span style="font-family:宋体; font-size:12pt">员</span>
                        </p>
                    </td>
                    <td colspan="2" style="border-bottom-color:#000000; border-bottom-style:solid; border-bottom-width:0.75pt; border-left-color:#000000; border-left-style:solid; border-left-width:0.75pt; border-right-color:#000000; border-right-style:solid; border-right-width:0.75pt; border-top-color:#000000; border-top-style:solid; border-top-width:0.75pt; padding-left:5.03pt; padding-right:5.03pt; vertical-align:middle">
                        <p style="margin:0pt; orphans:0; text-align:center; widows:0">
                            <span style="font-family:宋体; font-size:12pt">姓名</span>
                        </p>
                    </td>
                    <td style="border-bottom-color:#000000; border-bottom-style:solid; border-bottom-width:0.75pt; border-left-color:#000000; border-left-style:solid; border-left-width:0.75pt; border-right-color:#000000; border-right-style:solid; border-right-width:0.75pt; border-top-color:#000000; border-top-style:solid; border-top-width:0.75pt; padding-left:5.03pt; padding-right:5.03pt; vertical-align:middle">
                        <p style="margin:0pt; orphans:0; text-align:center; widows:0">
                            <span style="font-family:宋体; font-size:12pt">职称</span>
                        </p>
                    </td>
                    <td style="border-bottom-color:#000000; border-bottom-style:solid; border-bottom-width:0.75pt; border-left-color:#000000; border-left-style:solid; border-left-width:0.75pt; border-right-color:#000000; border-right-style:solid; border-right-width:0.75pt; border-top-color:#000000; border-top-style:solid; border-top-width:0.75pt; padding-left:5.03pt; padding-right:5.03pt; vertical-align:middle">
                        <p style="margin:0pt; orphans:0; text-align:center; widows:0">
                            <span style="font-family:宋体; font-size:12pt">研究方向</span>
                        </p>
                    </td>
                    <td colspan="2" style="border-bottom-color:#000000; border-bottom-style:solid; border-bottom-width:0.75pt; border-left-color:#000000; border-left-style:solid; border-left-width:0.75pt; border-right-color:#000000; border-right-style:solid; border-right-width:0.75pt; border-top-color:#000000; border-top-style:solid; border-top-width:0.75pt; padding-left:5.03pt; padding-right:5.03pt; vertical-align:middle">
                        <p style="margin:0pt; orphans:0; text-align:center; widows:0">
                            <span style="font-family:宋体; font-size:12pt">答辩成绩</span>
                        </p>
                    </td>
                    <td style="border-bottom-color:#000000; border-bottom-style:solid; border-bottom-width:0.75pt; border-left-color:#000000; border-left-style:solid; border-left-width:0.75pt; border-right-color:#000000; border-right-style:solid; border-right-width:0.75pt; border-top-color:#000000; border-top-style:solid; border-top-width:0.75pt; padding-left:5.03pt; padding-right:5.03pt; vertical-align:middle">
                        <p style="margin:0pt; orphans:0; text-align:center; widows:0">
                            <span style="font-family:宋体; font-size:12pt">个人签名</span>
                        </p>
                    </td>
                </tr>
                <tr style="height:28.35pt">
                    <td colspan="2" style="border-bottom-color:#000000; border-bottom-style:solid; border-bottom-width:0.75pt; border-left-color:#000000; border-left-style:solid; border-left-width:0.75pt; border-right-color:#000000; border-right-style:solid; border-right-width:0.75pt; border-top-color:#000000; border-top-style:solid; border-top-width:0.75pt; padding-left:5.03pt; padding-right:5.03pt; vertical-align:middle">
                        <p style="line-height:12pt; margin:0pt; orphans:0; text-align:center; widows:0">
                            <span style="font-family:宋体; font-size:12pt"><input readonly="readonly" name="registrationMember_1_name" style="width:100pt" type="text" value="${registration.registrationMember_1_name}"/></span>
                        </p>
                    </td>
                    <td style="border-bottom-color:#000000; border-bottom-style:solid; border-bottom-width:0.75pt; border-left-color:#000000; border-left-style:solid; border-left-width:0.75pt; border-right-color:#000000; border-right-style:solid; border-right-width:0.75pt; border-top-color:#000000; border-top-style:solid; border-top-width:0.75pt; padding-left:5.03pt; padding-right:5.03pt; vertical-align:middle">
                        <p style="line-height:12pt; margin:0pt; orphans:0; text-align:center; widows:0">
                            <span style="font-family:宋体; font-size:12pt"><input readonly="readonly" name="registrationMember_1_title" style="width:100pt" type="text"  value="${registration.registrationMember_1_title}"/></span>
                        </p>
                    </td>
                    <td style="border-bottom-color:#000000; border-bottom-style:solid; border-bottom-width:0.75pt; border-left-color:#000000; border-left-style:solid; border-left-width:0.75pt; border-right-color:#000000; border-right-style:solid; border-right-width:0.75pt; border-top-color:#000000; border-top-style:solid; border-top-width:0.75pt; padding-left:5.03pt; padding-right:5.03pt; vertical-align:middle">
                        <p style="line-height:12pt; margin:0pt; orphans:0; text-align:center; widows:0">
                            <span style="font-family:宋体; font-size:12pt"><input readonly="readonly" name="registrationMember_1_research" style="width:180pt" type="text"  value="${registration.registrationMember_1_research}"/></span>
                        </p>
                    </td>
                    <td colspan="2" style="border-bottom-color:#000000; border-bottom-style:solid; border-bottom-width:0.75pt; border-left-color:#000000; border-left-style:solid; border-left-width:0.75pt; border-right-color:#000000; border-right-style:solid; border-right-width:0.75pt; border-top-color:#000000; border-top-style:solid; border-top-width:0.75pt; padding-left:5.03pt; padding-right:5.03pt; vertical-align:middle">
                        <p style="line-height:12pt; margin:0pt; orphans:0; text-align:center; widows:0">
                            <span style="font-family:宋体; font-size:12pt"><input readonly="readonly" name="registrationMember_1_score" style="width:120pt" type="text"  value="${registration.registrationMember_1_score}"/></span>
                        </p>
                    </td>
                    <td style="border-bottom-color:#000000; border-bottom-style:solid; border-bottom-width:0.75pt; border-left-color:#000000; border-left-style:solid; border-left-width:0.75pt; border-right-color:#000000; border-right-style:solid; border-right-width:0.75pt; border-top-color:#000000; border-top-style:solid; border-top-width:0.75pt; padding-left:5.03pt; padding-right:5.03pt; vertical-align:middle">
                        <p style="line-height:12pt; margin:0pt; orphans:0; text-align:center; widows:0">
                            <span style="font-family:宋体; font-size:12pt">&nbsp;</span>
                        </p>
                    </td>
                </tr>
                <tr style="height:25.7pt">
                    <td colspan="2" style="border-bottom-color:#000000; border-bottom-style:solid; border-bottom-width:0.75pt; border-left-color:#000000; border-left-style:solid; border-left-width:0.75pt; border-right-color:#000000; border-right-style:solid; border-right-width:0.75pt; border-top-color:#000000; border-top-style:solid; border-top-width:0.75pt; padding-left:5.03pt; padding-right:5.03pt; vertical-align:middle">
                        <p style="line-height:12pt; margin:0pt; orphans:0; text-align:center; widows:0">
                            <span style="font-family:宋体; font-size:12pt"><input readonly="readonly" name="registrationMember_2_name" style="width:100pt" type="text"  value="${registration.registrationMember_2_name}"/></span>
                        </p>
                    </td>
                    <td style="border-bottom-color:#000000; border-bottom-style:solid; border-bottom-width:0.75pt; border-left-color:#000000; border-left-style:solid; border-left-width:0.75pt; border-right-color:#000000; border-right-style:solid; border-right-width:0.75pt; border-top-color:#000000; border-top-style:solid; border-top-width:0.75pt; padding-left:5.03pt; padding-right:5.03pt; vertical-align:middle">
                        <p style="line-height:12pt; margin:0pt; orphans:0; text-align:center; widows:0">
                            <span style="font-family:宋体; font-size:12pt"><input readonly="readonly" name="registrationMember_2_title" style="width:100pt" type="text" value="${registration.registrationMember_2_title}"/></span>
                        </p>
                    </td>
                    <td style="border-bottom-color:#000000; border-bottom-style:solid; border-bottom-width:0.75pt; border-left-color:#000000; border-left-style:solid; border-left-width:0.75pt; border-right-color:#000000; border-right-style:solid; border-right-width:0.75pt; border-top-color:#000000; border-top-style:solid; border-top-width:0.75pt; padding-left:5.03pt; padding-right:5.03pt; vertical-align:middle">
                        <p style="line-height:12pt; margin:0pt; orphans:0; text-align:center; widows:0">
                            <span style="font-family:宋体; font-size:12pt"><input readonly="readonly" name="registrationMember_2_research" style="width:180pt" type="text" value="${registration.registrationMember_2_research}"/></span>
                        </p>
                    </td>
                    <td colspan="2" style="border-bottom-color:#000000; border-bottom-style:solid; border-bottom-width:0.75pt; border-left-color:#000000; border-left-style:solid; border-left-width:0.75pt; border-right-color:#000000; border-right-style:solid; border-right-width:0.75pt; border-top-color:#000000; border-top-style:solid; border-top-width:0.75pt; padding-left:5.03pt; padding-right:5.03pt; vertical-align:middle">
                        <p style="line-height:12pt; margin:0pt; orphans:0; text-align:center; widows:0">
                            <span style="font-family:宋体; font-size:12pt"><input readonly="readonly" name="registrationMember_2_score" style="width:120pt" type="text" value="${registration.registrationMember_2_score}"/></span>
                        </p>
                    </td>
                    <td style="border-bottom-color:#000000; border-bottom-style:solid; border-bottom-width:0.75pt; border-left-color:#000000; border-left-style:solid; border-left-width:0.75pt; border-right-color:#000000; border-right-style:solid; border-right-width:0.75pt; border-top-color:#000000; border-top-style:solid; border-top-width:0.75pt; padding-left:5.03pt; padding-right:5.03pt; vertical-align:middle">
                        <p style="line-height:12pt; margin:0pt; orphans:0; text-align:center; widows:0">
                            <span style="font-family:宋体; font-size:12pt">&nbsp;</span>
                        </p>
                    </td>
                </tr>
                <tr style="height:26.1pt">
                    <td colspan="2" style="border-bottom-color:#000000; border-bottom-style:solid; border-bottom-width:0.75pt; border-left-color:#000000; border-left-style:solid; border-left-width:0.75pt; border-right-color:#000000; border-right-style:solid; border-right-width:0.75pt; border-top-color:#000000; border-top-style:solid; border-top-width:0.75pt; padding-left:5.03pt; padding-right:5.03pt; vertical-align:middle">
                        <p style="line-height:12pt; margin:0pt; orphans:0; text-align:center; widows:0">
                            <span style="font-family:宋体; font-size:12pt"><input readonly="readonly" name="registrationMember_3_name" style="width:100pt" type="text" value="${registration.registrationMember_3_name}"/></span>
                        </p>
                    </td>
                    <td style="border-bottom-color:#000000; border-bottom-style:solid; border-bottom-width:0.75pt; border-left-color:#000000; border-left-style:solid; border-left-width:0.75pt; border-right-color:#000000; border-right-style:solid; border-right-width:0.75pt; border-top-color:#000000; border-top-style:solid; border-top-width:0.75pt; padding-left:5.03pt; padding-right:5.03pt; vertical-align:middle">
                        <p style="line-height:12pt; margin:0pt; orphans:0; text-align:center; widows:0">
                            <span style="font-family:宋体; font-size:12pt"><input readonly="readonly" name="registrationMember_3_title" style="width:100pt" type="text" value="${registration.registrationMember_3_title}"/></span>
                        </p>
                    </td>
                    <td style="border-bottom-color:#000000; border-bottom-style:solid; border-bottom-width:0.75pt; border-left-color:#000000; border-left-style:solid; border-left-width:0.75pt; border-right-color:#000000; border-right-style:solid; border-right-width:0.75pt; border-top-color:#000000; border-top-style:solid; border-top-width:0.75pt; padding-left:5.03pt; padding-right:5.03pt; vertical-align:middle">
                        <p style="line-height:12pt; margin:0pt; orphans:0; text-align:center; widows:0">
                            <span style="font-family:宋体; font-size:12pt"><input readonly="readonly" name="registrationMember_3_research" style="width:180pt" type="text" value="${registration.registrationMember_3_research}"/></span>
                        </p>
                    </td>
                    <td colspan="2" style="border-bottom-color:#000000; border-bottom-style:solid; border-bottom-width:0.75pt; border-left-color:#000000; border-left-style:solid; border-left-width:0.75pt; border-right-color:#000000; border-right-style:solid; border-right-width:0.75pt; border-top-color:#000000; border-top-style:solid; border-top-width:0.75pt; padding-left:5.03pt; padding-right:5.03pt; vertical-align:middle">
                        <p style="line-height:12pt; margin:0pt; orphans:0; text-align:center; widows:0">
                            <span style="font-family:宋体; font-size:12pt"><input readonly="readonly" name="registrationMember_3_score" style="width:120pt" type="text" value="${registration.registrationMember_3_score}"/></span>
                        </p>
                    </td>
                    <td style="border-bottom-color:#000000; border-bottom-style:solid; border-bottom-width:0.75pt; border-left-color:#000000; border-left-style:solid; border-left-width:0.75pt; border-right-color:#000000; border-right-style:solid; border-right-width:0.75pt; border-top-color:#000000; border-top-style:solid; border-top-width:0.75pt; padding-left:5.03pt; padding-right:5.03pt; vertical-align:middle">
                        <p style="line-height:12pt; margin:0pt; orphans:0; text-align:center; widows:0">
                            <span style="font-family:宋体; font-size:12pt">&nbsp;</span>
                        </p>
                    </td>
                </tr>
                <tr style="height:25.65pt">
                    <td colspan="2" style="border-bottom-color:#000000; border-bottom-style:solid; border-bottom-width:0.75pt; border-left-color:#000000; border-left-style:solid; border-left-width:0.75pt; border-right-color:#000000; border-right-style:solid; border-right-width:0.75pt; border-top-color:#000000; border-top-style:solid; border-top-width:0.75pt; padding-left:5.03pt; padding-right:5.03pt; vertical-align:middle">
                        <p style="line-height:12pt; margin:0pt; orphans:0; text-align:center; widows:0">
                            <span style="font-family:宋体; font-size:12pt"><input readonly="readonly" name="registrationMember_4_name" style="width:100pt" type="text" value="${registration.registrationMember_4_name}"/></span>
                        </p>
                    </td>
                    <td style="border-bottom-color:#000000; border-bottom-style:solid; border-bottom-width:0.75pt; border-left-color:#000000; border-left-style:solid; border-left-width:0.75pt; border-right-color:#000000; border-right-style:solid; border-right-width:0.75pt; border-top-color:#000000; border-top-style:solid; border-top-width:0.75pt; padding-left:5.03pt; padding-right:5.03pt; vertical-align:middle">
                        <p style="line-height:12pt; margin:0pt; orphans:0; text-align:center; widows:0">
                            <span style="font-family:宋体; font-size:12pt"><input readonly="readonly" name="registrationMember_4_title" style="width:100pt" type="text" value="${registration.registrationMember_4_title}"/></span>
                        </p>
                    </td>
                    <td style="border-bottom-color:#000000; border-bottom-style:solid; border-bottom-width:0.75pt; border-left-color:#000000; border-left-style:solid; border-left-width:0.75pt; border-right-color:#000000; border-right-style:solid; border-right-width:0.75pt; border-top-color:#000000; border-top-style:solid; border-top-width:0.75pt; padding-left:5.03pt; padding-right:5.03pt; vertical-align:middle">
                        <p style="line-height:12pt; margin:0pt; orphans:0; text-align:center; widows:0">
                            <span style="font-family:宋体; font-size:12pt"><input readonly="readonly" name="registrationMember_4_research" style="width:180pt" type="text" value="${registration.registrationMember_4_research}"/></span>
                        </p>
                    </td>
                    <td colspan="2" style="border-bottom-color:#000000; border-bottom-style:solid; border-bottom-width:0.75pt; border-left-color:#000000; border-left-style:solid; border-left-width:0.75pt; border-right-color:#000000; border-right-style:solid; border-right-width:0.75pt; border-top-color:#000000; border-top-style:solid; border-top-width:0.75pt; padding-left:5.03pt; padding-right:5.03pt; vertical-align:middle">
                        <p style="line-height:12pt; margin:0pt; orphans:0; text-align:center; widows:0">
                            <span style="font-family:宋体; font-size:12pt"><input readonly="readonly" name="registrationMember_4_score" style="width:120pt" type="text" value="${registration.registrationMember_4_score}"/></span>
                        </p>
                    </td>
                    <td style="border-bottom-color:#000000; border-bottom-style:solid; border-bottom-width:0.75pt; border-left-color:#000000; border-left-style:solid; border-left-width:0.75pt; border-right-color:#000000; border-right-style:solid; border-right-width:0.75pt; border-top-color:#000000; border-top-style:solid; border-top-width:0.75pt; padding-left:5.03pt; padding-right:5.03pt; vertical-align:middle">
                        <p style="line-height:12pt; margin:0pt; orphans:0; text-align:center; widows:0">
                            <span style="font-family:宋体; font-size:12pt">&nbsp;</span>
                        </p>
                    </td>
                </tr>
                <tr style="height:24.4pt">
                    <td colspan="2" style="border-bottom-color:#000000; border-bottom-style:solid; border-bottom-width:0.75pt; border-left-color:#000000; border-left-style:solid; border-left-width:0.75pt; border-right-color:#000000; border-right-style:solid; border-right-width:0.75pt; border-top-color:#000000; border-top-style:solid; border-top-width:0.75pt; padding-left:5.03pt; padding-right:5.03pt; vertical-align:middle">
                        <p style="line-height:12pt; margin:0pt; orphans:0; text-align:center; widows:0">
                            <span style="font-family:宋体; font-size:12pt"><input readonly="readonly" name="registrationMember_5_name" style="width:100pt" type="text" value="${registration.registrationMember_5_name}"/></span>
                        </p>
                    </td>
                    <td style="border-bottom-color:#000000; border-bottom-style:solid; border-bottom-width:0.75pt; border-left-color:#000000; border-left-style:solid; border-left-width:0.75pt; border-right-color:#000000; border-right-style:solid; border-right-width:0.75pt; border-top-color:#000000; border-top-style:solid; border-top-width:0.75pt; padding-left:5.03pt; padding-right:5.03pt; vertical-align:middle">
                        <p style="line-height:12pt; margin:0pt; orphans:0; text-align:center; widows:0">
                            <span style="font-family:宋体; font-size:12pt"><input readonly="readonly" name="registrationMember_5_title" style="width:100pt" type="text" value="${registration.registrationMember_5_title}"/></span>
                        </p>
                    </td>
                    <td style="border-bottom-color:#000000; border-bottom-style:solid; border-bottom-width:0.75pt; border-left-color:#000000; border-left-style:solid; border-left-width:0.75pt; border-right-color:#000000; border-right-style:solid; border-right-width:0.75pt; border-top-color:#000000; border-top-style:solid; border-top-width:0.75pt; padding-left:5.03pt; padding-right:5.03pt; vertical-align:middle">
                        <p style="line-height:12pt; margin:0pt; orphans:0; text-align:center; widows:0">
                            <span style="font-family:宋体; font-size:12pt"><input readonly="readonly" name="registrationMember_5_research" style="width:180pt" type="text" value="${registration.registrationMember_5_research}"/></span>
                        </p>
                    </td>
                    <td colspan="2" style="border-bottom-color:#000000; border-bottom-style:solid; border-bottom-width:0.75pt; border-left-color:#000000; border-left-style:solid; border-left-width:0.75pt; border-right-color:#000000; border-right-style:solid; border-right-width:0.75pt; border-top-color:#000000; border-top-style:solid; border-top-width:0.75pt; padding-left:5.03pt; padding-right:5.03pt; vertical-align:middle">
                        <p style="line-height:12pt; margin:0pt; orphans:0; text-align:center; widows:0">
                            <span style="font-family:宋体; font-size:12pt"><input readonly="readonly" name="registrationMember_5_score" style="width:120pt" type="text" value="${registration.registrationMember_5_score}"/></span>
                        </p>
                    </td>
                    <td style="border-bottom-color:#000000; border-bottom-style:solid; border-bottom-width:0.75pt; border-left-color:#000000; border-left-style:solid; border-left-width:0.75pt; border-right-color:#000000; border-right-style:solid; border-right-width:0.75pt; border-top-color:#000000; border-top-style:solid; border-top-width:0.75pt; padding-left:5.03pt; padding-right:5.03pt; vertical-align:middle">
                        <p style="line-height:12pt; margin:0pt; orphans:0; text-align:center; widows:0">
                            <span style="font-family:宋体; font-size:12pt">&nbsp;</span>
                        </p>
                    </td>
                </tr>
                <tr style="height:25.35pt">
                    <td colspan="4" style="border-bottom-color:#000000; border-bottom-style:solid; border-bottom-width:0.75pt; border-left-color:#000000; border-left-style:solid; border-left-width:0.75pt; border-right-color:#000000; border-right-style:solid; border-right-width:0.75pt; border-top-color:#000000; border-top-style:solid; border-top-width:0.75pt; padding-left:5.03pt; padding-right:5.03pt; vertical-align:middle">
                        <p style="margin:0pt; orphans:0; text-align:center; widows:0">
                            <span style="font-family:宋体; font-size:12pt">答辩综合成绩</span>
                        </p>
                    </td>
                    <td colspan="2" style="border-bottom-color:#000000; border-bottom-style:solid; border-bottom-width:0.75pt; border-left-color:#000000; border-left-style:solid; border-left-width:0.75pt; border-right-color:#000000; border-right-style:solid; border-right-width:0.75pt; border-top-color:#000000; border-top-style:solid; border-top-width:0.75pt; padding-left:5.03pt; padding-right:5.03pt; vertical-align:middle">
                        <p style="line-height:12pt; margin:0pt; orphans:0; text-align:center; widows:0">
                            <span style="font-family:宋体; font-size:12pt"><input readonly="readonly" name="registrationTotal_score" style="width:120pt" type="text" value="${registration.registrationTotal_score}"/></span>
                        </p>
                    </td>
                    <td style="border-bottom-color:#000000; border-bottom-style:solid; border-bottom-width:0.75pt; border-left-color:#000000; border-left-style:solid; border-left-width:0.75pt; border-right-color:#000000; border-right-style:solid; border-right-width:0.75pt; border-top-color:#000000; border-top-style:solid; border-top-width:0.75pt; padding-left:5.03pt; padding-right:5.03pt; vertical-align:middle">
                        <p style="line-height:12pt; margin:0pt; orphans:0; text-align:center; widows:0">
                            <span style="font-family:宋体; font-size:12pt">&nbsp;</span>
                        </p>
                    </td>
                </tr>
                <tr style="height:100pt">
                    <td colspan="8" style="border-bottom-color:#000000; border-bottom-style:solid; border-bottom-width:0.75pt; border-left-color:#000000; border-left-style:solid; border-left-width:0.75pt; border-right-color:#000000; border-right-style:solid; border-right-width:0.75pt; border-top-color:#000000; border-top-style:solid; border-top-width:0.75pt; padding-left:5.03pt; padding-right:5.03pt; vertical-align:top">
                        <p style="margin:3.1pt 0pt 0pt; orphans:0; text-align:justify; widows:0">
                            <span style="font-family:宋体; font-size:12pt">答辩小组评语：</span>
                        </p>
                        <p style="line-height:22pt; margin:7.8pt 0pt 0pt; orphans:0; text-indent:18.4pt; widows:0">
                            <textarea readonly="readonly" id="textarea1" name="registrationJudgement" rows="1"> ${registration.registrationJudgement}</textarea>

                        </p>
                        <p style="line-height:12pt; margin:0pt; orphans:0; text-align:center; widows:0">
                            <span style="font-family:宋体; font-size:12pt">&nbsp;</span>
                        </p>
                        <p style="line-height:12pt; margin:0pt; orphans:0; text-align:center; widows:0">
                            <span style="font-family:宋体; font-size:12pt">&nbsp;</span>
                        </p>
                        <p style="line-height:12pt; margin:0pt; orphans:0; text-align:center; widows:0">
                            <span style="font-family:宋体; font-size:12pt">&nbsp;</span>
                        </p>
                        <p style="margin:0pt; orphans:0; text-align:justify; text-indent:94.5pt; widows:0">
                            <span style="font-family:宋体; font-size:12pt">答辩小组组长签字：</span>
                            <span style="font-family:宋体; font-size:12pt">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span>
                            <span style="font-family:宋体; font-size:12pt">年</span>
                            <span style="font-family:宋体; font-size:12pt">&nbsp; </span>
                            <span style="font-family:宋体; font-size:12pt">月</span>
                            <span style="font-family:宋体; font-size:12pt">&nbsp; </span>
                            <span style="font-family:宋体; font-size:12pt">日</span>
                        </p>
                    </td>
                </tr>
                <tr style="height:40.4pt">
                    <td colspan="2" style="border-bottom-color:#000000; border-bottom-style:solid; border-bottom-width:0.75pt; border-left-color:#000000; border-left-style:solid; border-left-width:0.75pt; border-right-color:#000000; border-right-style:solid; border-right-width:0.75pt; border-top-color:#000000; border-top-style:solid; border-top-width:0.75pt; padding-left:5.03pt; padding-right:5.03pt; vertical-align:top">
                        <p style="margin:3.1pt 0pt 0pt; orphans:0; text-align:center; widows:0">
                            <span style="font-family:宋体; font-size:12pt">指导教师</span>
                        </p>
                        <p style="margin:3.1pt 0pt 0pt; orphans:0; text-align:justify; widows:0">
                            <span style="font-family:宋体; font-size:12pt">&nbsp;&nbsp;&nbsp;&nbsp; </span>
                            <span style="font-family:宋体; font-size:12pt">评定成绩（</span>
                            <span style="font-family:宋体; font-size:12pt">30%</span>
                            <span style="font-family:宋体; font-size:12pt">）</span>
                        </p>
                    </td>
                    <td colspan="2" style="border-bottom-color:#000000; border-bottom-style:solid; border-bottom-width:0.75pt; border-left-color:#000000; border-left-style:solid; border-left-width:0.75pt; border-right-color:#000000; border-right-style:solid; border-right-width:0.75pt; border-top-color:#000000; border-top-style:solid; border-top-width:0.75pt; padding-left:5.03pt; padding-right:5.03pt; vertical-align:top">
                        <p style="margin:3.1pt 0pt 0pt; orphans:0; text-align:center; widows:0">
                            <span style="font-family:宋体; font-size:12pt">评阅教师</span>
                        </p>
                        <p style="margin:3.1pt 0pt 0pt; orphans:0; text-align:justify; widows:0">
                            <span style="font-family:宋体; font-size:12pt">评定成绩（</span>
                            <span style="font-family:宋体; font-size:12pt">20%</span>
                            <span style="font-family:宋体; font-size:12pt">）</span>
                        </p>
                    </td>
                    <td colspan="2" style="border-bottom-color:#000000; border-bottom-style:solid; border-bottom-width:0.75pt; border-left-color:#000000; border-left-style:solid; border-left-width:0.75pt; border-right-color:#000000; border-right-style:solid; border-right-width:0.75pt; border-top-color:#000000; border-top-style:solid; border-top-width:0.75pt; padding-left:5.03pt; padding-right:5.03pt; vertical-align:top">
                        <p style="margin:3.1pt 0pt 0pt; orphans:0; text-align:center; widows:0">
                            <span style="font-family:宋体; font-size:12pt">答辩</span>
                        </p>
                        <p style="margin:3.1pt 0pt 0pt; orphans:0; text-align:center; widows:0">
                            <span style="font-family:宋体; font-size:12pt">综合成绩（</span>
                            <span style="font-family:宋体; font-size:12pt">50%</span>
                            <span style="font-family:宋体; font-size:12pt">）</span>
                        </p>
                    </td>
                    <td colspan="2" style="border-bottom-color:#000000; border-bottom-style:solid; border-bottom-width:0.75pt; border-left-color:#000000; border-left-style:solid; border-left-width:0.75pt; border-right-color:#000000; border-right-style:solid; border-right-width:0.75pt; border-top-color:#000000; border-top-style:solid; border-top-width:0.75pt; padding-left:5.03pt; padding-right:5.03pt; vertical-align:top">
                        <p style="margin:3.1pt 0pt 0pt; orphans:0; text-align:center; widows:0">
                            <span style="font-family:宋体; font-size:12pt">毕业论文（设计）</span>
                        </p>
                        <p style="margin:3.1pt 0pt 0pt; orphans:0; text-align:center; widows:0">
                            <span style="font-family:宋体; font-size:12pt">综合成绩</span>
                        </p>
                    </td>
                </tr>
                <tr style="height:27.7pt">
                    <td colspan="2" style="border-bottom-color:#000000; border-bottom-style:solid; border-bottom-width:0.75pt; border-left-color:#000000; border-left-style:solid; border-left-width:0.75pt; border-right-color:#000000; border-right-style:solid; border-right-width:0.75pt; border-top-color:#000000; border-top-style:solid; border-top-width:0.75pt; padding-left:5.03pt; padding-right:5.03pt; vertical-align:middle">
                        <p style="line-height:12pt; margin:3.1pt 0pt 0pt; orphans:0; text-align:center; widows:0">
                            <span style="font-family:宋体; font-size:12pt"><input readonly="readonly" name="registrationMentor_score" style="width:120pt" type="text" value="${registration.registrationMentor_score}"/></span>
                        </p>
                    </td>
                    <td colspan="2" style="border-bottom-color:#000000; border-bottom-style:solid; border-bottom-width:0.75pt; border-left-color:#000000; border-left-style:solid; border-left-width:0.75pt; border-right-color:#000000; border-right-style:solid; border-right-width:0.75pt; border-top-color:#000000; border-top-style:solid; border-top-width:0.75pt; padding-left:5.03pt; padding-right:5.03pt; vertical-align:middle">
                        <p style="line-height:12pt; margin:3.1pt 0pt 0pt; orphans:0; text-align:center; widows:0">
                            <span style="font-family:宋体; font-size:12pt"><input readonly="readonly" name="registrationJudge_score" style="width:120pt" type="text" value="${registration.registrationJudge_score}"/></span>
                        </p>
                    </td>
                    <td colspan="2" style="border-bottom-color:#000000; border-bottom-style:solid; border-bottom-width:0.75pt; border-left-color:#000000; border-left-style:solid; border-left-width:0.75pt; border-right-color:#000000; border-right-style:solid; border-right-width:0.75pt; border-top-color:#000000; border-top-style:solid; border-top-width:0.75pt; padding-left:5.03pt; padding-right:5.03pt; vertical-align:middle">
                        <p style="line-height:12pt; margin:3.1pt 0pt 0pt; orphans:0; text-align:center; widows:0">
                            <span style="font-family:宋体; font-size:12pt"><input readonly="readonly" name="registrationScore" style="width:120pt" type="text" value="${registration.registrationScore}"/></span>
                        </p>
                    </td>
                    <td colspan="2" style="border-bottom-color:#000000; border-bottom-style:solid; border-bottom-width:0.75pt; border-left-color:#000000; border-left-style:solid; border-left-width:0.75pt; border-right-color:#000000; border-right-style:solid; border-right-width:0.75pt; border-top-color:#000000; border-top-style:solid; border-top-width:0.75pt; padding-left:5.03pt; padding-right:5.03pt; vertical-align:middle">
                        <p style="line-height:12pt; margin:3.1pt 0pt 0pt; orphans:0; text-align:center; widows:0">
                            <span style="font-family:宋体; font-size:12pt"><input readonly="readonly" name="registrationThesis_score" style="width:120pt" type="text" value="${registration.registrationThesis_score}"/></span>
                        </p>
                    </td>
                </tr>
                <tr style="height:100pt">
                    <td colspan="8" style="border-bottom-color:#000000; border-bottom-style:solid; border-bottom-width:0.75pt; border-left-color:#000000; border-left-style:solid; border-left-width:0.75pt; border-right-color:#000000; border-right-style:solid; border-right-width:0.75pt; border-top-color:#000000; border-top-style:solid; border-top-width:0.75pt; padding-left:5.03pt; padding-right:5.03pt; vertical-align:top">
                        <p style="font-size:12pt; line-height:150%; margin:3.1pt 0pt 0pt; orphans:0; text-align:justify; text-indent:21pt; widows:0">
                            <span style="font-family:宋体; font-size:12pt">经综合指导教师评定成绩、评阅教师评定成绩及答辩成绩，该同学的毕业论文综合成绩为</span>
                            <span style="font-family:宋体; font-size:12pt; font-weight:bold"><input readonly="readonly" id="input1" name="registrationThesis_score1" style="text-align:center;width:100pt" type="text" value="${registration.registrationThesis_score1}"/> </span>
                            <span style="font-family:宋体; font-size:12pt">。毕业论文（设计）综合评定等级定为</span>
                            <span style="font-family:宋体; font-size:12pt; font-weight:bold"><input readonly="readonly" id="input2" name="registrationThesis_scale" style="text-align:center;width:100pt" type="text" value="${registration.registrationThesis_scale}"/> </span>
                            <span style="font-family:宋体; font-size:12pt">。</span>
                        </p>
                        <p style="margin:3.1pt 0pt 0pt; orphans:0; text-align:justify; text-indent:21pt; widows:0">

                        </p>
                        <p style="margin:3.1pt 0pt 0pt; orphans:0; text-align:justify; text-indent:21pt; widows:0">
                            <span style="font-family:宋体; font-size:12pt">&nbsp;</span>
                        </p>
                        <p style="margin:3.1pt 0pt 0pt; orphans:0; text-align:justify; text-indent:21pt; widows:0">
                            <span style="font-family:宋体; font-size:12pt">&nbsp;</span>
                        </p>

                        <p style="margin:3.1pt 0pt 0pt; orphans:0; text-align:justify; text-indent:21pt; widows:0">
                            <span style="font-family:宋体; font-size:12pt">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span>
                            <span style="font-family:宋体; font-size:12pt">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;院答辩委员会主任（签章）：</span>
                        </p>
                        <p style="margin:3.1pt 0pt 0pt; orphans:0; text-align:justify; text-indent:21pt; widows:0">
                            <span style="font-family:宋体; font-size:12pt">&nbsp;</span>
                        </p>
                        <p style="margin:3.1pt 0pt 0pt; orphans:0; text-align:justify; text-indent:21pt; widows:0">
                            <span style="font-family:宋体; font-size:12pt">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>
                            <span style="font-family:宋体; font-size:12pt">年</span>
                            <span style="font-family:宋体; font-size:12pt">&nbsp;&nbsp; </span>
                            <span style="font-family:宋体; font-size:12pt">月</span>
                            <span style="font-family:宋体; font-size:12pt">&nbsp;&nbsp; </span>
                            <span style="font-family:宋体; font-size:12pt">日</span>
                        </p>
                    </td>
                </tr>
                <tr style="height:100pt">
                    <td colspan="8" style="border-bottom-color:#000000; border-bottom-style:solid; border-bottom-width:0.75pt; border-left-color:#000000; border-left-style:solid; border-left-width:0.75pt; border-right-color:#000000; border-right-style:solid; border-right-width:0.75pt; border-top-color:#000000; border-top-style:solid; border-top-width:0.75pt; padding-left:5.03pt; padding-right:5.03pt; vertical-align:top">
                        <p style="margin:7.8pt 0pt 0pt; orphans:0; text-align:justify; widows:0">
                            <span style="font-family:宋体; font-size:12pt">答辩记录（记录答辩中提出的主要问题、回答的要点等，可附页）；</span>
                        </p>
                        <p style="font-size:12pt; line-height:120%; margin:7.8pt 0pt 0pt; orphans:0; text-align:justify; text-indent:18.4pt; widows:0">
                            <textarea readonly="readonly" id="textarea2" name="registrationRecord" rows="1"> ${registration.registrationRecord}</textarea>

                        </p>
                        <p style="margin:3.1pt 0pt 0pt; orphans:0; text-align:justify; text-indent:21pt; widows:0">
                            <span style="font-family:宋体; font-size:12pt">&nbsp;</span>
                        </p>
                        <p style="line-height:12pt; margin:0pt; orphans:0; text-align:center; widows:0">
                            <span style="font-family:宋体; font-size:12pt">&nbsp;</span>
                        </p>
                        <p style="line-height:12pt; margin:0pt; orphans:0; text-align:center; widows:0">
                            <span style="font-family:宋体; font-size:12pt">&nbsp;</span>
                        </p>

                        <p style="margin:0pt; orphans:0; text-align:justify; text-indent:189pt; widows:0">
                            <span style="font-family:宋体; font-size:12pt">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;答辩秘书（签名）：</span>
                        </p>
                        <p style="margin:7.8pt 0pt 15.6pt; orphans:0; text-align:justify; widows:0">
                            <span style="font-family:宋体; font-size:12pt">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span>
                            <span style="font-family:宋体; font-size:12pt">年</span>
                            <span style="font-family:宋体; font-size:12pt">&nbsp;&nbsp;&nbsp; </span>
                            <span style="font-family:宋体; font-size:12pt">月</span>
                            <span style="font-family:宋体; font-size:12pt">&nbsp;&nbsp;&nbsp; </span>
                            <span style="font-family:宋体; font-size:12pt">日</span>
                        </p>
                    </td>
                </tr>
                <tr style="height:0pt">
                    <td style="width:93pt; border:none"></td>
                    <td style="width:55.7pt; border:none"></td>
                    <td style="width:35.5pt; border:none"></td>
                    <td style="width:71.05pt; border:none"></td>
                    <td style="width:70.95pt; border:none"></td>
                    <td style="width:35.55pt; border:none"></td>
                    <td style="width:35.5pt; border:none"></td>
                    <td style="width:70.9pt; border:none"></td>
                </tr>
                </tbody>
            </table>
        </div>
        <p style="font-size:14pt; line-height:150%; margin:0pt; orphans:0; text-align:center; widows:0">
            <span style="font-family:宋体; font-size:14pt; font-weight:bold; letter-spacing:-0.3pt">说明：</span>
            <span style="font-family:宋体; font-size:14pt; letter-spacing:-0.3pt">综合成绩由指导教师评定成绩、评阅教师评定成绩、答辩成绩加权后相加得出。其权重比例依次为</span>
            <span style="font-family:宋体; font-size:14pt; letter-spacing:-0.3pt">30%</span>
            <span style="font-family:宋体; font-size:14pt; letter-spacing:-0.3pt">、</span>
            <span style="font-family:宋体; font-size:14pt; letter-spacing:-0.3pt">20%</span>
            <span style="font-family:宋体; font-size:14pt; letter-spacing:-0.3pt">、</span>
            <span style="font-family:宋体; font-size:14pt; letter-spacing:-0.3pt">50%</span>
            <span style="font-family:宋体; font-size:14pt; letter-spacing:-0.3pt">。</span>
        </p>
    </div>
    <p align="center">
        <input style="font-size: 16pt;" id="submit" type="submit" value="返回" onclick="lookRegistration()">
    </p>
</c:forEach>
</form>

<script type="text/javascript">
    function lookRegistration() {
        var form = document.forms[0];
        form.action = "<%=basePath %>registration/teaLookRegistration";
        form.method = "post";
        form.submit();

    }
</script>

</body>
</html>
