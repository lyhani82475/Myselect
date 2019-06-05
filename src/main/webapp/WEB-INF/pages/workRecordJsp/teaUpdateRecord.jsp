<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ page import="javax.print.DocFlavor" %>
<%@ page import="javax.swing.text.Document" %>
<%@ page import="com.slxy.www.domain.po.WorkRecord" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";

%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html id="htmlText">
<head>
    <base href="<%=basePath%>">


    <title>指导工作记录表编辑</title>
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
        #textarea1,#textarea2,#textarea3,#textarea4,#textarea5,#textarea6{
            width: 447.25pt;
            height: 34px;
            overflow: hidden;
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
    <style>
        /*背景层*/
        #popLayer {
            display: none;
            background-color: #B3B3B3;
            position: absolute;
            top: 0;
            right: 0;
            bottom: 0;
            left: 0;
            z-index: 10;
            -moz-opacity: 0.8;
            opacity:.80;
            filter: alpha(opacity=80);/* 只支持IE6、7、8、9 */
        }

        /*弹出层*/
        #popBox {
            display: none;
            background-color: #FFFFFF;
            z-index: 11;
            width: 400px;
            height:300px;
            position:fixed;
            top:0;
            right:0;
            left:0;
            bottom:0;
            margin:auto;
            padding-left: 10px;
            padding-bottom: 10px;
            padding-right: 10px;
        }

        #popBox .close{
            text-align: right;
            padding-top: 10px;
            margin-right:5px;
            background-color:#fff9ec;
            height: 30px;
        }

        /*关闭按钮*/
        #popBox .close a {
            text-decoration: none;
            color: #2D2C3B;
        }

    </style>


</head>

<body>

<script>
    /*点击弹出按钮*/
    function popBox() {
        var popBox = document.getElementById("popBox");
        var popLayer = document.getElementById("popLayer");
        popBox.style.display = "block";
        popLayer.style.display = "block";
    };

    /*点击关闭按钮*/
    function closeBox() {
        var popBox = document.getElementById("popBox");
        var popLayer = document.getElementById("popLayer");
        popBox.style.display = "none";
        popLayer.style.display = "none";
    }
</script>
<div align="center">
<input style=" color:#00F; font-family:仿宋; font-size:16pt; text-align:center;" type="button" name="popBox" value="使用教程" onclick="popBox()">
</div>
<div id="popLayer"></div>
<div id="popBox">
    <div class="close">
        <a href="javascript:void(0)" onclick="closeBox()">关闭</a>
    </div>
    <div class="content">
        <br />
        <span style="font-family:宋体; font-size:16pt; color:#F00">注意：</span>
        <br />
        <span style="font-family:仿宋; font-size:16pt; color:#000000">  &nbsp;&nbsp;在填写指导记录中除首行外其余行若想达到缩进两个字的效果，只需缩进一个字即可！</span>
        <br />
        <span style="font-family:仿宋; font-size:16pt; color:#009">  &nbsp;&nbsp;如果表中的“指导记录”没有全部显示在页面上的话，可点击键盘上的↓键</span></div>
</div>
<br/>
<form action="" method="post" name="userForm">
<c:forEach var="workRecord" items="${requestScope.get('list')}" varStatus="status" end="0">
    <center>
        <div>
            <p style="font-size:16pt; line-height:115%; margin:0pt 0pt 10pt; orphans:0; text-align:center; widows:0">
                <span style="font-family:华文中宋; font-size:16pt; font-weight:bold">商洛学院本科生毕业论文(设计)指导工作记录表</span>
            </p>
            <table cellspacing="0" cellpadding="0" style="border-collapse:collapse; margin-left:0pt; width:447.25pt">
                <tbody>
                <tr style="height:31.5pt">
                    <td style="border-bottom-color:#000000; border-bottom-style:solid; border-bottom-width:0.75pt; border-left-color:#000000; border-left-style:solid; border-left-width:0.75pt; border-right-color:#000000; border-right-style:solid; border-right-width:0.75pt; border-top-color:#000000; border-top-style:solid; border-top-width:0.75pt; padding-left:5.03pt; padding-right:5.03pt; vertical-align:middle; width:24.75pt">
                        <p style="font-size:12pt; line-height:115%; margin:0pt 0pt 0pt; orphans:0; text-align:justify; widows:0">
                            <span style="font-family:宋体; font-size:12pt">姓名</span>
                        </p>
                    </td>
                    <td style="border-bottom-color:#000000; border-bottom-style:solid; border-bottom-width:0.75pt; border-left-color:#000000; border-left-style:solid; border-left-width:0.75pt; border-right-color:#000000; border-right-style:solid; border-right-width:0.75pt; border-top-color:#000000; border-top-style:solid; border-top-width:0.75pt; padding-left:5.03pt; padding-right:5.03pt; vertical-align:middle; width:46.35pt">
                        <p style="font-size:12pt; line-height:115%; margin:0pt 0pt 0pt; orphans:0; text-align:center; widows:0">
                            <span style="font-family:'Times New Roman'; font-size:12pt"><input readonly="readonly" name="workRecordName" style="width:60pt" type="text" value="${workRecord.workRecordName}"/></span>
                        </p>
                    </td>
                    <td style="border-bottom-color:#000000; border-bottom-style:solid; border-bottom-width:0.75pt; border-left-color:#000000; border-left-style:solid; border-left-width:0.75pt; border-right-color:#000000; border-right-style:solid; border-right-width:0.75pt; border-top-color:#000000; border-top-style:solid; border-top-width:0.75pt; padding-left:5.03pt; padding-right:5.03pt; vertical-align:middle; width:24.7pt">
                        <p style="font-size:12pt; line-height:115%; margin:0pt 0pt 0pt; orphans:0; text-align:justify; widows:0">
                            <span style="font-family:宋体; font-size:12pt">学号</span>
                        </p>
                    </td>
                    <td style="border-bottom-color:#000000; border-bottom-style:solid; border-bottom-width:0.75pt; border-left-color:#000000; border-left-style:solid; border-left-width:0.75pt; border-right-color:#000000; border-right-style:solid; border-right-width:0.75pt; border-top-color:#000000; border-top-style:solid; border-top-width:0.75pt; padding-left:5.03pt; padding-right:5.03pt; vertical-align:middle; width:45.35pt">
                        <p style="font-size:12pt; line-height:115%; margin:0pt 0pt 0pt; orphans:0; text-align:center; widows:0">
                            <span style="font-family:'Times New Roman'; font-size:12pt"><input readonly="readonly" name="workRecordNumber" style="width:60pt" type="text" value="${workRecord.workRecordNumber}"/></span>
                        </p>
                    </td>
                    <td style="border-bottom-color:#000000; border-bottom-style:solid; border-bottom-width:0.75pt; border-left-color:#000000; border-left-style:solid; border-left-width:0.75pt; border-right-color:#000000; border-right-style:solid; border-right-width:0.75pt; border-top-color:#000000; border-top-style:solid; border-top-width:0.75pt; padding-left:5.03pt; padding-right:5.03pt; vertical-align:middle; width:39.85pt">
                        <p style="font-size:12pt; line-height:115%; margin:0pt 0pt 0pt; orphans:0; text-align:justify; widows:0">
                            <span style="font-family:宋体; font-size:12pt">学院</span>
                        </p>
                    </td>
                    <td style="border-bottom-color:#000000; border-bottom-style:solid; border-bottom-width:0.75pt; border-left-color:#000000; border-left-style:solid; border-left-width:0.75pt; border-right-color:#000000; border-right-style:solid; border-right-width:0.75pt; border-top-color:#000000; border-top-style:solid; border-top-width:0.75pt; padding-left:5.03pt; padding-right:5.03pt; vertical-align:middle; width:54.7pt">
                        <p style="font-size:12pt; line-height:115%; margin:0pt 0pt 0pt; orphans:0; text-align:justify; widows:0">
                            <span style="font-family:宋体; font-size:12pt"><input name="workRecordFaculty" style="width:120pt" type="text" value="${workRecord.workRecordFaculty}"/></span>
                        </p>
                    </td>
                    <td style="border-bottom-color:#000000; border-bottom-style:solid; border-bottom-width:0.75pt; border-left-color:#000000; border-left-style:solid; border-left-width:0.75pt; border-right-color:#000000; border-right-style:solid; border-right-width:0.75pt; border-top-color:#000000; border-top-style:solid; border-top-width:0.75pt; padding-left:5.03pt; padding-right:5.03pt; vertical-align:middle; width:24pt">
                        <p style="font-size:12pt; line-height:115%; margin:0pt 0pt 0pt; orphans:0; text-align:center; widows:0">
                            <span style="font-family:宋体; font-size:12pt">专业</span>
                        </p>
                    </td>
                    <td colspan="2" style="border-bottom-color:#000000; border-bottom-style:solid; border-bottom-width:0.75pt; border-left-color:#000000; border-left-style:solid; border-left-width:0.75pt; border-right-color:#000000; border-right-style:solid; border-right-width:0.75pt; border-top-color:#000000; border-top-style:solid; border-top-width:0.75pt; padding-left:5.03pt; padding-right:5.03pt; vertical-align:middle; width:100.4pt">
                        <p style="font-size:12pt; line-height:115%; margin:0pt 0pt 0pt; orphans:0; text-align:center; widows:0">
                            <span style="font-family:宋体; font-size:12pt"><input name="workRecordMajor" style="width:100pt" type="text" value="${workRecord.workRecordMajor}"/></span>
                        </p>
                    </td>
                </tr>
                <tr style="height:30pt">
                    <td style="border-bottom-color:#000000; border-bottom-style:solid; border-bottom-width:0.75pt; border-left-color:#000000; border-left-style:solid; border-left-width:0.75pt; border-right-color:#000000; border-right-style:solid; border-right-width:0.75pt; border-top-color:#000000; border-top-style:solid; border-top-width:0.75pt; padding-left:5.03pt; padding-right:5.03pt; vertical-align:middle; width:24.75pt">
                        <p style="font-size:12pt; line-height:115%; margin:0pt 0pt 0pt; orphans:0; text-align:justify; widows:0">
                            <span style="font-family:宋体; font-size:12pt">班级</span>
                        </p>
                    </td>
                    <td colspan="3" style="border-bottom-color:#000000; border-bottom-style:solid; border-bottom-width:0.75pt; border-left-color:#000000; border-left-style:solid; border-left-width:0.75pt; border-right-color:#000000; border-right-style:solid; border-right-width:0.75pt; border-top-color:#000000; border-top-style:solid; border-top-width:0.75pt; padding-left:5.03pt; padding-right:5.03pt; vertical-align:middle; width:138pt">
                        <p style="font-size:12pt; line-height:115%; margin:0pt 0pt 0pt; orphans:0; text-align:center; widows:0">
                            <span style="font-family:'Times New Roman'; font-size:12pt"><input name="workRecordClass" style="width:120pt" type="text" value="${workRecord.workRecordClass}"/></span>
                        </p>
                    </td>
                    <td style="border-bottom-color:#000000; border-bottom-style:solid; border-bottom-width:0.75pt; border-left-color:#000000; border-left-style:solid; border-left-width:0.75pt; border-right-color:#000000; border-right-style:solid; border-right-width:0.75pt; border-top-color:#000000; border-top-style:solid; border-top-width:0.75pt; padding-left:5.03pt; padding-right:5.03pt; vertical-align:middle; width:39.85pt">
                        <p style="font-size:12pt; line-height:115%; margin:0pt 0pt 0pt; orphans:0; text-align:justify; widows:0">
                            <span style="font-family:宋体; font-size:12pt">指导教</span>
                        </p>
                        <p style="font-size:12pt; line-height:115%; margin:0pt 0pt 0pt; orphans:0; text-align:justify; widows:0">
                            <span style="font-family:宋体; font-size:12pt">师姓名</span>
                        </p>
                    </td>
                    <td colspan="2" style="border-bottom-color:#000000; border-bottom-style:solid; border-bottom-width:0.75pt; border-left-color:#000000; border-left-style:solid; border-left-width:0.75pt; border-right-color:#000000; border-right-style:solid; border-right-width:0.75pt; border-top-color:#000000; border-top-style:solid; border-top-width:0.75pt; padding-left:5.03pt; padding-right:5.03pt; vertical-align:middle; width:89.5pt">
                        <p style="font-size:12pt; line-height:115%; margin:0pt 0pt 0pt 0pt; orphans:0; text-align:center; widows:0">
                            <span style="font-family:'Times New Roman'; font-size:12pt"><input name="workRecordTeacher" style="width:80pt" type="text" value="${workRecord.workRecordTeacher}"/></span>
                        </p>
                    </td>
                    <td style="border-bottom-color:#000000; border-bottom-style:solid; border-bottom-width:0.75pt; border-left-color:#000000; border-left-style:solid; border-left-width:0.75pt; border-right-color:#000000; border-right-style:solid; border-right-width:0.75pt; border-top-color:#000000; border-top-style:solid; border-top-width:0.75pt; padding-left:5.03pt; padding-right:5.03pt; vertical-align:middle; width:32.55pt">
                        <p style="font-size:12pt; line-height:115%; margin:0pt 0pt 0pt 0pt; orphans:0; text-align:justify; widows:0">
                            <span style="font-family:宋体; font-size:12pt">职称</span>
                        </p>
                    </td>
                    <td style="border-bottom-color:#000000; border-bottom-style:solid; border-bottom-width:0.75pt; border-left-color:#000000; border-left-style:solid; border-left-width:0.75pt; border-right-color:#000000; border-right-style:solid; border-right-width:0.75pt; border-top-color:#000000; border-top-style:solid; border-top-width:0.75pt; padding-left:5.03pt; padding-right:5.03pt; vertical-align:middle; width:57.05pt">
                        <p style="font-size:12pt; line-height:115%; margin:0pt 0pt 0pt; orphans:0; text-align:center; widows:0">
                            <span style="font-family:'Times New Roman'; font-size:12pt"><input name="workRecordJob_title" style="width:60pt" type="text" value="${workRecord.workRecordJob_title}"/></span>
                        </p>
                    </td>
                </tr>
                <tr style="height:29.4pt">
                    <td colspan="2" style="border-bottom-color:#000000; border-bottom-style:solid; border-bottom-width:0.75pt; border-left-color:#000000; border-left-style:solid; border-left-width:0.75pt; border-right-color:#000000; border-right-style:solid; border-right-width:0.75pt; border-top-color:#000000; border-top-style:solid; border-top-width:0.75pt; padding-left:5.03pt; padding-right:5.03pt; vertical-align:middle; width:81.9pt">
                        <p style="font-size:12pt; line-height:115%; margin:0pt 0pt 0pt; orphans:0; text-align:center; widows:0">
                            <span style="font-family:宋体; font-size:12pt">题目</span>
                        </p>
                    </td>
                    <td colspan="7" style="border-bottom-color:#000000; border-bottom-style:solid; border-bottom-width:0.75pt; border-left-color:#000000; border-left-style:solid; border-left-width:0.75pt; border-right-color:#000000; border-right-style:solid; border-right-width:0.75pt; border-top-color:#000000; border-top-style:solid; border-top-width:0.75pt; padding-left:5.03pt; padding-right:5.03pt; vertical-align:middle; width:343pt">
                        <p style="font-size:12pt; line-height:115%; margin:0pt 0pt 0pt; orphans:0; text-align:center; widows:0">
                            <span style="font-family:'Times New Roman'; font-size:12pt"><input name="workRecordTitle" style="width:400pt" type="text" value="${workRecord.workRecordTitle}"/></span>
                        </p>
                    </td>
                </tr>
                <tr style="height:108.6pt">
                    <td colspan="9" style="border-bottom-color:#000000; border-bottom-style:solid; border-bottom-width:0.75pt; border-left-color:#000000; border-left-style:solid; border-left-width:0.75pt; border-right-color:#000000; border-right-style:solid; border-right-width:0.75pt; border-top-color:#000000; border-top-style:solid; border-top-width:0.75pt; padding-left:5.03pt; padding-right:5.03pt; vertical-align:top; width:435.7pt">
                        <p style="font-size:12pt; line-height:115%; margin:0pt 0pt 10pt; orphans:0; text-align:justify; widows:0">
                            <span style="font-family:宋体; font-size:12pt">第1次指导记录：</span>
                        </p>
                        <textarea id="textarea1" name="workRecordRecord_1" rows="1">${workRecord.workRecordRecord_1}</textarea>
                        <script>
                            function $(id) {
                                return document.getElementById(id);
                            }

                            $("textarea1").onkeyup = function() {
                                this.style.height = 'auto';
                                this.style.height = this.scrollHeight + "px";
                            }
                        </script>
                        <p style="font-size:12pt; line-height:115%; margin:0pt 0pt 10pt; orphans:0; text-align:justify; widows:0">
                            <span style="font-family:宋体; font-size:12pt">&nbsp;</span>
                        </p>

                        <p style="font-size:12pt; line-height:115%; margin:0pt 0pt 10pt; orphans:0; text-align:justify; text-indent:246.75pt; widows:0">
                            <span style="font-family:宋体; font-size:12pt">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;指导教师签名：</span>
                        </p>
                        <p style="font-size:12pt; line-height:115%; margin:7.8pt 0pt; orphans:0; text-align:center; text-indent:75.3pt; widows:0">
                            <span style="font-family:宋体; font-size:12pt">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 年&nbsp;&nbsp; 月&nbsp;&nbsp; 日</span>
                        </p>
                    </td>
                </tr>
                <tr style="height:105.4pt">
                    <td colspan="9" style="border-bottom-color:#000000; border-bottom-style:solid; border-bottom-width:0.75pt; border-left-color:#000000; border-left-style:solid; border-left-width:0.75pt; border-right-color:#000000; border-right-style:solid; border-right-width:0.75pt; border-top-color:#000000; border-top-style:solid; border-top-width:0.75pt; padding-left:5.03pt; padding-right:5.03pt; vertical-align:top; width:435.7pt">
                        <p style="font-size:12pt; line-height:115%; margin:0pt 0pt 10pt; orphans:0; text-align:justify; widows:0">
                            <span style="font-family:宋体; font-size:12pt">第2次指导记录：</span>
                        </p>
                        <textarea id="textarea2" name="workRecordRecord_2" rows="1">${workRecord.workRecordRecord_2}</textarea>
                        <script>
                            function $(id) {
                                return document.getElementById(id);
                            }

                            $("textarea2").onkeyup = function() {
                                this.style.height = 'auto';
                                this.style.height = this.scrollHeight + "px";
                            }
                        </script>

                        <p style="font-size:12pt; line-height:115%; margin:0pt 0pt 10pt; orphans:0; text-align:justify; widows:0">
                            <span style="font-family:宋体; font-size:12pt">&nbsp;</span>
                        </p>
                        <p style="font-size:12pt; line-height:115%; margin:0pt 0pt 10pt; orphans:0; text-align:justify; text-indent:252pt; widows:0">
                            <span style="font-family:宋体; font-size:12pt">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;指导教师签名： </span>
                        </p>
                        <p style="font-size:12pt; line-height:115%; margin:7.8pt 0pt; orphans:0; text-align:center; widows:0">
                            <span style="font-family:宋体; font-size:12pt">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 年&nbsp;&nbsp; 月&nbsp;&nbsp; 日</span>
                        </p>
                    </td>
                </tr>
                <tr style="height:97.1pt">
                    <td colspan="9" style="border-bottom-color:#000000; border-bottom-style:solid; border-bottom-width:0.75pt; border-left-color:#000000; border-left-style:solid; border-left-width:0.75pt; border-right-color:#000000; border-right-style:solid; border-right-width:0.75pt; border-top-color:#000000; border-top-style:solid; border-top-width:0.75pt; padding-left:5.03pt; padding-right:5.03pt; vertical-align:top; width:435.7pt">
                        <p style="font-size:12pt; line-height:115%; margin:0pt 0pt 10pt; orphans:0; text-align:justify; widows:0">
                            <span style="font-family:宋体; font-size:12pt">第3次指导记录：</span>
                        </p>
                        <textarea id="textarea3" name="workRecordRecord_3" rows="1">${workRecord.workRecordRecord_3}</textarea>
                        <script>
                            function $(id) {
                                return document.getElementById(id);
                            }

                            $("textarea3").onkeyup = function() {
                                this.style.height = 'auto';
                                this.style.height = this.scrollHeight + "px";
                            }
                        </script>

                        <p style="font-size:12pt; line-height:115%; margin:0pt 0pt 10pt; orphans:0; text-align:justify; widows:0">
                            <span style="font-family:宋体; font-size:12pt">&nbsp;</span>
                        </p>
                        <p style="font-size:12pt; line-height:115%; margin:0pt 0pt 10pt; orphans:0; text-align:justify; text-indent:252pt; widows:0">
                            <span style="font-family:宋体; font-size:12pt">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;指导教师签名： </span>
                        </p>
                        <p style="font-size:12pt; line-height:115%; margin:7.8pt 0pt; orphans:0; text-align:center; widows:0">
                            <span style="font-family:宋体; font-size:12pt">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 年&nbsp;&nbsp; 月&nbsp;&nbsp; 日</span>
                        </p>
                    </td>
                </tr>
                <tr>
                    <td colspan="9" style="border-bottom-color:#000000; border-bottom-style:solid; border-bottom-width:0.75pt; border-left-color:#000000; border-left-style:solid; border-left-width:0.75pt; border-right-color:#000000; border-right-style:solid; border-right-width:0.75pt; border-top-color:#000000; border-top-style:solid; border-top-width:0.75pt; padding-left:5.03pt; padding-right:5.03pt; vertical-align:top; width:435.7pt">
                        <p style="font-size:12pt; line-height:115%; margin:0pt 0pt 10pt; orphans:0; text-align:justify; widows:0">
                            <span style="font-family:宋体; font-size:12pt">第4次指导记录：</span>
                        </p>
                        <textarea id="textarea4" name="workRecordRecord_4" rows="1">${workRecord.workRecordRecord_4}</textarea>
                        <script>
                            function $(id) {
                                return document.getElementById(id);
                            }

                            $("textarea4").onkeyup = function() {
                                this.style.height = 'auto';
                                this.style.height = this.scrollHeight + "px";
                            }
                        </script>

                        <p style="font-size:12pt; line-height:115%; margin:0pt 0pt 10pt; orphans:0; text-align:justify; widows:0">
                            <span style="font-family:宋体; font-size:12pt">&nbsp;</span>
                        </p>
                        <p style="font-size:12pt; line-height:115%; margin:0pt 0pt 10pt; orphans:0; text-align:justify; text-indent:252pt; widows:0">
                            <span style="font-family:宋体; font-size:12pt">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;指导教师签名： </span>
                        </p>
                        <p style="font-size:12pt; line-height:115%; margin:7.8pt 0pt; orphans:0; text-align:center; widows:0">
                            <span style="font-family:宋体; font-size:12pt">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 年&nbsp;&nbsp; 月&nbsp;&nbsp; 日</span>
                        </p>
                    </td>
                </tr>
                <tr>
                    <td colspan="9" style="border-bottom-color:#000000; border-bottom-style:solid; border-bottom-width:0.75pt; border-left-color:#000000; border-left-style:solid; border-left-width:0.75pt; border-right-color:#000000; border-right-style:solid; border-right-width:0.75pt; border-top-color:#000000; border-top-style:solid; border-top-width:0.75pt; padding-left:5.03pt; padding-right:5.03pt; vertical-align:top; width:435.7pt">
                        <p style="font-size:12pt; line-height:115%; margin:0pt 0pt 10pt; orphans:0; text-align:justify; widows:0">
                            <span style="font-family:宋体; font-size:12pt">第5次指导记录：</span>
                        </p>
                        <textarea id="textarea5" name="workRecordRecord_5" rows="1">${workRecord.workRecordRecord_5}</textarea>
                        <script>
                            function $(id) {
                                return document.getElementById(id);
                            }

                            $("textarea5").onkeyup = function() {
                                this.style.height = 'auto';
                                this.style.height = this.scrollHeight + "px";
                            }
                        </script>

                        <p style="font-size:12pt; line-height:115%; margin:0pt 0pt 10pt; orphans:0; text-align:justify; widows:0">
                            <span style="font-family:宋体; font-size:12pt">&nbsp;</span>
                        </p>
                        <p style="font-size:12pt; line-height:115%; margin:0pt 0pt 10pt; orphans:0; text-align:justify; text-indent:252pt; widows:0">
                            <span style="font-family:宋体; font-size:12pt">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;指导教师签名： </span>
                        </p>
                        <p style="font-size:12pt; line-height:115%; margin:7.8pt 0pt; orphans:0; text-align:center; widows:0">
                            <span style="font-family:宋体; font-size:12pt">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 年&nbsp;&nbsp; 月&nbsp;&nbsp; 日</span>
                        </p>
                    </td>
                </tr>
                <tr>
                    <td colspan="9" style="border-bottom-color:#000000; border-bottom-style:solid; border-bottom-width:0.75pt; border-left-color:#000000; border-left-style:solid; border-left-width:0.75pt; border-right-color:#000000; border-right-style:solid; border-right-width:0.75pt; border-top-color:#000000; border-top-style:solid; border-top-width:0.75pt; padding-left:5.03pt; padding-right:5.03pt; vertical-align:top; width:435.7pt">
                        <p style="font-size:12pt; line-height:115%; margin:0pt 0pt 10pt; orphans:0; text-align:justify; widows:0">
                            <span style="font-family:宋体; font-size:12pt">第6次指导记录：</span>
                        </p>
                        <textarea id="textarea6" name="workRecordRecord_6" rows="1">${workRecord.workRecordRecord_6}</textarea>
                        <script>
                            function $(id) {
                                return document.getElementById(id);
                            }

                            $("textarea6").onkeyup = function() {
                                this.style.height = 'auto';
                                this.style.height = this.scrollHeight + "px";
                            }
                        </script>

                        <p style="font-size:12pt; line-height:115%; margin:0pt 0pt 10pt; orphans:0; text-align:justify; widows:0">
                            <span style="font-family:宋体; font-size:12pt">&nbsp;</span>
                        </p>
                        <p style="font-size:12pt; line-height:115%; margin:0pt 0pt 10pt; orphans:0; text-align:justify; text-indent:252pt; widows:0">
                            <span style="font-family:宋体; font-size:12pt">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;指导教师签名： </span>
                        </p>
                        <p style="font-size:12pt; line-height:115%; margin:7.8pt 0pt; orphans:0; text-align:center; widows:0">
                            <span style="font-family:宋体; font-size:12pt">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 年&nbsp;&nbsp; 月&nbsp;&nbsp; 日</span>
                        </p>
                    </td>
                </tr>
                <tr style="height:0pt">
                    <td style="width:35.55pt; border:none"></td>
                    <td style="width:57.15pt; border:none"></td>
                    <td style="width:35.5pt; border:none"></td>
                    <td style="width:56.15pt; border:none"></td>
                    <td style="width:50.65pt; border:none"></td>
                    <td style="width:65.5pt; border:none"></td>
                    <td style="width:34.8pt; border:none"></td>
                    <td style="width:43.35pt; border:none"></td>
                    <td style="width:67.85pt; border:none"></td>
                </tr>
                </tbody>
            </table>
            <p style="font-size:12pt; line-height:150%; margin:0pt 0pt 10pt; orphans:0; text-align:center; widows:0">
                <span style="font-family:宋体; font-size:12pt">说明：1.此表为指导教师指导学生撰写和修改毕业论文（设计）的动态记录表。</span>
            </p>
            <p style="font-size:12pt; line-height:150%; margin:0pt 0pt 10pt; orphans:0; text-align:center; widows:0">
                <span style="font-family:宋体; font-size:12pt">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 2.此表必须由指导教师签名。</span>
            </p>
            <p style="font-size:12pt; line-height:150%; margin:0pt 0pt 10pt; orphans:0; text-align:center; text-indent:31.5pt; widows:0">
                <span style="font-family:宋体; font-size:12pt">3.此表共设计了6次指导记录栏，填写次数根据指导教师的实际指导情况而定，但不能少于4次。</span>
            </p>
            <p style="font-size:12pt; line-height:150%; margin:0pt 0pt 10pt; orphans:0; text-align:center; text-indent:31.5pt; widows:0">
                <span style="font-family:宋体; font-size:12pt">4.填写应尽量详细完整的反映出指导过程。</span>
            </p>
            <p style="font-size:12pt; line-height:150%; margin:0pt 0pt 10pt; orphans:0; text-align:center; text-indent:31.5pt; widows:0">
                <span style="font-family:宋体; font-size:12pt">5.本表可续页。</span>
            </p>
        </div>
    </center>
    <p align="center">
        <input style="font-size: 16pt;" id="submit" type="submit" value="提交" onclick="updateWorkRecord()">
    </p>
</c:forEach>
</form>

<script type="text/javascript">
    function updateWorkRecord() {
        var form = document.forms[0];
        form.action = "<%=basePath %>workRecord/teaUpdateRecord";
        form.method = "post";
        form.submit();

    }
</script>

</body>
</html>
