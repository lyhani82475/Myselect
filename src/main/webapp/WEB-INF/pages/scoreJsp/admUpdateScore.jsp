<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ page import="javax.print.DocFlavor" %>
<%@ page import="javax.swing.text.Document" %>
<%@ page import="com.slxy.www.domain.po.Score" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";

%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html id="htmlText">
<head>
    <base href="<%=basePath%>">


    <title>指导教师评分表编辑</title>
    <meta http-equiv="pragma" content="no-cache">
    <meta http-equiv="cache-control" content="no-cache">
    <meta http-equiv="expires" content="0">
    <meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
    <meta http-equiv="description" content="This is my page">
    <!--
    <link rel="stylesheet" type="text/css" href="styles.css">
    -->
    <style type="text/css">
        #input1,#input2,#input3,#input4{
            border-left:none;
            border-right:none;
            border-top:none;
            border-bottom:1px solid #0F2543;
            text-align:center;
            font-family:黑体;
            font-size:15pt;
            outline:none;
        }
        input{
            border:none;
            outline:none;
            text-align:center;
            font-family:宋体;
            font-size:12pt;
        }
        #textarea1{
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
        <span style="font-family:仿宋; font-size:16pt; color:#000000">  &nbsp;&nbsp;表中的“指导教师评语”中除首行外其余行若想达到缩进两个字的效果，只需缩进一个字即可！</span>
        <br />
        <span style="font-family:仿宋; font-size:16pt; color:#009">  &nbsp;&nbsp;若表中的“指导教师评语”没有全部显示在页面上的话，可点击键盘上的↓键</span>
        <br />
        <span style="font-family:仿宋; font-size:16pt; color:#009">  &nbsp;&nbsp;表中的“指导教师评定成绩”无需修改，再次进入该页面时自动更新</span>
    </div>
</div>
<br/>
<form action="" method="post" name="userForm">
<c:forEach var="score" items="${requestScope.get('list')}" varStatus="status" end="0">
    <center>
        <div>
            <p style="font-size:16pt; line-height:115%; margin:0pt 0pt 10pt; orphans:0; text-align:center; widows:0">
                <span style="font-family:华文中宋; font-size:16pt; font-weight:bold">商洛学院本科生毕业论文（设计）指导教师评分表</span>
            </p>
            <p style="font-size:10.5pt; line-height:115%; margin:0pt 0pt 10pt; orphans:0; text-align:justify; widows:0">
                <span style="font-family:'Times New Roman'; font-size:10.5pt">&nbsp;</span>
            </p>
            <p style="font-size:10.5pt; line-height:115%; margin:0pt 0pt 10pt; orphans:0; text-align:center; widows:0">
                <span style="font-family:宋体; font-size:10.5pt; font-weight:bold">院别：</span>
                <span style="font-family:宋体; font-size:10.5pt; font-weight:bold"><input id="input1" name="scoreFaculty" style="text-align:center;width:100pt" type="text" value="${score.scoreFaculty}"/></span>
                <span style="font-family:宋体; font-size:10.5pt; font-weight:bold">&nbsp;</span>
                <span style="font-family:宋体; font-size:10.5pt; font-weight:bold">专业：</span>
                <span style="font-family:宋体; font-size:10.5pt; font-weight:bold"><input id="input2" name="scoreMajor" style="text-align:center;width:100pt" type="text" value="${score.scoreMajor}"/></span>
                <span style="font-family:宋体; font-size:10.5pt; font-weight:bold">&nbsp; </span>
                <span style="font-family:宋体; font-size:10.5pt; font-weight:bold">学生姓名：</span>
                <span style="font-family:宋体; font-size:10.5pt; font-weight:bold"><input readonly="readonly" id="input3" name="scoreName" style="text-align:center;width:100pt" type="text" value="${score.scoreName}"/> </span>
                <span style="font-family:宋体; font-size:10.5pt; font-weight:bold">&nbsp; </span>
                <span style="font-family:宋体; font-size:10.5pt; font-weight:bold"> 学号：</span>
                <span style="font-family:宋体; font-size:10.5pt; font-weight:bold"><input readonly="readonly" id="input4" name="scoreNumber" style="text-align:center;width:100pt" type="text" value="${score.scoreNumber}"/> </span>
            </p>
            <table cellspacing="0" cellpadding="0" style="border-collapse:collapse; margin-left:0pt; width:447.35pt">
                <tbody>
                <tr style="height:30.25pt">
                    <td colspan="4" style="border-bottom-color:#000000; border-bottom-style:solid; border-bottom-width:0.75pt; border-left-color:#000000; border-left-style:solid; border-left-width:0.75pt; border-right-color:#000000; border-right-style:solid; border-right-width:0.75pt; border-top-color:#000000; border-top-style:solid; border-top-width:0.75pt; padding-left:5.03pt; padding-right:5.03pt; vertical-align:middle; width:73.2pt">
                        <p style="font-size:10.5pt; line-height:115%; margin:0pt 0pt 0pt; orphans:0; text-align:center; widows:0">
                            <span style="font-family:宋体; font-size:10.5pt; font-weight:bold">论文（设计）</span>
                        </p>
                        <p style="font-size:10.5pt; line-height:115%; margin:0pt 0pt 0pt; orphans:0; text-align:center; widows:0">
                            <span style="font-family:宋体; font-size:10.5pt; font-weight:bold">题目</span>
                        </p>
                    </td>
                    <td colspan="3" style="border-bottom-color:#000000; border-bottom-style:solid; border-bottom-width:0.75pt; border-left-color:#000000; border-left-style:solid; border-left-width:0.75pt; border-right-color:#000000; border-right-style:solid; border-right-width:0.75pt; border-top-color:#000000; border-top-style:solid; border-top-width:0.75pt; padding-left:5.03pt; padding-right:5.03pt; vertical-align:middle; width:351.8pt">
                        <p style="font-size:10.5pt; line-height:115%; margin:0pt 0pt 0pt; orphans:0; text-align:justify; widows:0">
                            <span style="font-family:宋体; font-size:10.5pt; font-weight:bold"><input  name="scoreTitle" style="text-align:center;width:350pt" type="text" value="${score.scoreTitle}"/></span>
                        </p>
                    </td>
                </tr>
                <tr style="height:30.65pt">
                    <td colspan="5" style="border-bottom-color:#000000; border-bottom-style:solid; border-bottom-width:0.75pt; border-left-color:#000000; border-left-style:solid; border-left-width:0.75pt; border-right-color:#000000; border-right-style:solid; border-right-width:0.75pt; border-top-color:#000000; border-top-style:solid; border-top-width:0.75pt; padding-left:5.03pt; padding-right:5.03pt; vertical-align:middle; width:332.4pt">
                        <p style="font-size:12pt; line-height:115%; margin:0pt 0pt 0pt; orphans:0; text-align:center; widows:0">
                            <span style="font-family:宋体; font-size:12pt; font-weight:bold">评&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 价&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 项&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 目</span>
                        </p>
                    </td>
                    <td style="border-bottom-color:#000000; border-bottom-style:solid; border-bottom-width:0.75pt; border-left-color:#000000; border-left-style:solid; border-left-width:0.75pt; border-right-color:#000000; border-right-style:solid; border-right-width:0.75pt; border-top-color:#000000; border-top-style:solid; border-top-width:0.75pt; padding-left:5.03pt; padding-right:5.03pt; vertical-align:middle; width:38.4pt">
                        <p style="font-size:12pt; line-height:115%; margin:0pt 0pt 0pt; orphans:0; text-align:center; widows:0">
                            <span style="font-family:宋体; font-size:12pt; font-weight:bold">分值</span>
                        </p>
                    </td>
                    <td style="border-bottom-color:#000000; border-bottom-style:solid; border-bottom-width:0.75pt; border-left-color:#000000; border-left-style:solid; border-left-width:0.75pt; border-right-color:#000000; border-right-style:solid; border-right-width:0.75pt; border-top-color:#000000; border-top-style:solid; border-top-width:0.75pt; padding-left:5.03pt; padding-right:5.03pt; vertical-align:middle; width:43.4pt">
                        <p style="font-size:12pt; line-height:115%; margin:0pt 0pt 0pt; orphans:0; text-align:center; widows:0">
                            <span style="font-family:宋体; font-size:12pt; font-weight:bold">教师</span>
                        </p>
                        <p style="font-size:12pt; line-height:115%; margin:0pt 0pt 0pt; orphans:0; text-align:center; widows:0">
                            <span style="font-family:宋体; font-size:12pt; font-weight:bold">评分</span>
                        </p>
                    </td>
                </tr>
                <tr style="height:3.5pt">
                    <td colspan="2" rowspan="4" style="border-bottom-color:#000000; border-bottom-style:solid; border-bottom-width:0.75pt; border-left-color:#000000; border-left-style:solid; border-left-width:0.75pt; border-right-color:#000000; border-right-style:solid; border-right-width:0.75pt; border-top-color:#000000; border-top-style:solid; border-top-width:0.75pt; padding-left:5.03pt; padding-right:5.03pt; vertical-align:middle; width:38.7pt">
                        <p style="font-size:10.5pt; line-height:115%; margin:0pt 0pt 0pt; orphans:0; text-align:center; widows:0">
                            <span style="font-family:宋体; font-size:10.5pt; font-weight:bold">选题</span>
                        </p>
                        <p style="font-size:10.5pt; line-height:115%; margin:0pt 0pt 0pt; orphans:0; text-align:center; widows:0">
                            <span style="font-family:宋体; font-size:10.5pt; font-weight:bold">质量</span>
                        </p>
                        <p style="font-size:10.5pt; line-height:115%; margin:0pt 0pt 0pt; orphans:0; text-align:center; widows:0">
                            <span style="font-family:宋体; font-size:10.5pt; font-weight:bold">（20分）</span>
                        </p>
                    </td>
                    <td style="border-bottom-color:#000000; border-bottom-style:solid; border-bottom-width:0.75pt; border-left-color:#000000; border-left-style:solid; border-left-width:0.75pt; border-right-color:#000000; border-right-style:solid; border-right-width:0.75pt; border-top-color:#000000; border-top-style:solid; border-top-width:0.75pt; padding-left:5.03pt; padding-right:5.03pt; vertical-align:middle; width:17.45pt">
                        <p style="font-size:10.5pt; line-height:115%; margin:0pt 0pt 0pt; orphans:0; text-align:justify; widows:0">
                            <span style="font-family:宋体; font-size:10.5pt">01</span>
                        </p>
                    </td>
                    <td colspan="2" style="border-bottom-color:#000000; border-bottom-style:solid; border-bottom-width:0.75pt; border-left-color:#000000; border-left-style:solid; border-left-width:0.75pt; border-right-color:#000000; border-right-style:solid; border-right-width:0.75pt; border-top-color:#000000; border-top-style:solid; border-top-width:0.75pt; padding-left:5.03pt; padding-right:5.03pt; vertical-align:middle; width:254.65pt">
                        <p style="font-size:12pt; line-height:115%; margin:0pt 0pt 0pt; orphans:0; text-align:justify; widows:0">
                            <span style="font-family:宋体; font-size:12pt">选题符合专业培养目标，体现综合训练基本要求</span>
                        </p>
                    </td>
                    <td style="border-bottom-color:#000000; border-bottom-style:solid; border-bottom-width:0.75pt; border-left-color:#000000; border-left-style:solid; border-left-width:0.75pt; border-right-color:#000000; border-right-style:solid; border-right-width:0.75pt; border-top-color:#000000; border-top-style:solid; border-top-width:0.75pt; padding-left:5.03pt; padding-right:5.03pt; vertical-align:middle; width:38.4pt">
                        <p style="font-size:10.5pt; line-height:115%; margin:0pt 0pt 0pt; orphans:0; text-align:center; widows:0">
                            <span style="font-family:宋体; font-size:10.5pt">5</span>
                        </p>
                    </td>
                    <td style="border-bottom-color:#000000; border-bottom-style:solid; border-bottom-width:0.75pt; border-left-color:#000000; border-left-style:solid; border-left-width:0.75pt; border-right-color:#000000; border-right-style:solid; border-right-width:0.75pt; border-top-color:#000000; border-top-style:solid; border-top-width:0.75pt; padding-left:5.03pt; padding-right:5.03pt; vertical-align:middle; width:43.4pt">
                        <p style="font-size:10.5pt; line-height:115%; margin:0pt 0pt 0pt; orphans:0; text-align:center; widows:0">
                            <span style="font-family:宋体; font-size:10.5pt"><input  name="scoreScore_1" style="width:40pt" type="text" value="${score.scoreScore_1}"/></span>
                        </p>
                    </td>
                </tr>
                <tr style="height:12.35pt">
                    <td style="border-bottom-color:#000000; border-bottom-style:solid; border-bottom-width:0.75pt; border-left-color:#000000; border-left-style:solid; border-left-width:0.75pt; border-right-color:#000000; border-right-style:solid; border-right-width:0.75pt; border-top-color:#000000; border-top-style:solid; border-top-width:0.75pt; padding-left:5.03pt; padding-right:5.03pt; vertical-align:middle; width:17.45pt">
                        <p style="font-size:10.5pt; line-height:115%; margin:0pt 0pt 0pt; orphans:0; text-align:justify; widows:0">
                            <span style="font-family:宋体; font-size:10.5pt">02</span>
                        </p>
                    </td>
                    <td colspan="2" style="border-bottom-color:#000000; border-bottom-style:solid; border-bottom-width:0.75pt; border-left-color:#000000; border-left-style:solid; border-left-width:0.75pt; border-right-color:#000000; border-right-style:solid; border-right-width:0.75pt; border-top-color:#000000; border-top-style:solid; border-top-width:0.75pt; padding-left:5.03pt; padding-right:5.03pt; vertical-align:middle; width:254.65pt">
                        <p style="font-size:12pt; line-height:115%; margin:0pt 0pt 0pt; orphans:0; text-align:justify; widows:0">
                            <span style="font-family:宋体; font-size:12pt">题目难易度</span>
                        </p>
                    </td>
                    <td style="border-bottom-color:#000000; border-bottom-style:solid; border-bottom-width:0.75pt; border-left-color:#000000; border-left-style:solid; border-left-width:0.75pt; border-right-color:#000000; border-right-style:solid; border-right-width:0.75pt; border-top-color:#000000; border-top-style:solid; border-top-width:0.75pt; padding-left:5.03pt; padding-right:5.03pt; vertical-align:middle; width:38.4pt">
                        <p style="font-size:10.5pt; line-height:115%; margin:0pt 0pt 0pt; orphans:0; text-align:center; widows:0">
                            <span style="font-family:宋体; font-size:10.5pt">5</span>
                        </p>
                    </td>
                    <td style="border-bottom-color:#000000; border-bottom-style:solid; border-bottom-width:0.75pt; border-left-color:#000000; border-left-style:solid; border-left-width:0.75pt; border-right-color:#000000; border-right-style:solid; border-right-width:0.75pt; border-top-color:#000000; border-top-style:solid; border-top-width:0.75pt; padding-left:5.03pt; padding-right:5.03pt; vertical-align:middle; width:43.4pt">
                        <p style="font-size:10.5pt; line-height:115%; margin:0pt 0pt 0pt; orphans:0; text-align:center; widows:0">
                            <span style="font-family:宋体; font-size:10.5pt"><input  name="scoreScore_2" style="width:40pt" type="text" value="${score.scoreScore_2}"/></span>
                        </p>
                    </td>
                </tr>
                <tr style="height:16.35pt">
                    <td style="border-bottom-color:#000000; border-bottom-style:solid; border-bottom-width:0.75pt; border-left-color:#000000; border-left-style:solid; border-left-width:0.75pt; border-right-color:#000000; border-right-style:solid; border-right-width:0.75pt; border-top-color:#000000; border-top-style:solid; border-top-width:0.75pt; padding-left:5.03pt; padding-right:5.03pt; vertical-align:middle; width:17.45pt">
                        <p style="font-size:10.5pt; line-height:115%; margin:0pt 0pt 0pt; orphans:0; text-align:justify; widows:0">
                            <span style="font-family:宋体; font-size:10.5pt">03</span>
                        </p>
                    </td>
                    <td colspan="2" style="border-bottom-color:#000000; border-bottom-style:solid; border-bottom-width:0.75pt; border-left-color:#000000; border-left-style:solid; border-left-width:0.75pt; border-right-color:#000000; border-right-style:solid; border-right-width:0.75pt; border-top-color:#000000; border-top-style:solid; border-top-width:0.75pt; padding-left:5.03pt; padding-right:5.03pt; vertical-align:middle; width:254.65pt">
                        <p style="font-size:12pt; line-height:115%; margin:0pt 0pt 0pt; orphans:0; text-align:justify; widows:0">
                            <span style="font-family:宋体; font-size:12pt">题目工作量</span>
                        </p>
                    </td>
                    <td style="border-bottom-color:#000000; border-bottom-style:solid; border-bottom-width:0.75pt; border-left-color:#000000; border-left-style:solid; border-left-width:0.75pt; border-right-color:#000000; border-right-style:solid; border-right-width:0.75pt; border-top-color:#000000; border-top-style:solid; border-top-width:0.75pt; padding-left:5.03pt; padding-right:5.03pt; vertical-align:middle; width:38.4pt">
                        <p style="font-size:10.5pt; line-height:115%; margin:0pt 0pt 0pt; orphans:0; text-align:center; widows:0">
                            <span style="font-family:宋体; font-size:10.5pt">5</span>
                        </p>
                    </td>
                    <td style="border-bottom-color:#000000; border-bottom-style:solid; border-bottom-width:0.75pt; border-left-color:#000000; border-left-style:solid; border-left-width:0.75pt; border-right-color:#000000; border-right-style:solid; border-right-width:0.75pt; border-top-color:#000000; border-top-style:solid; border-top-width:0.75pt; padding-left:5.03pt; padding-right:5.03pt; vertical-align:middle; width:43.4pt">
                        <p style="font-size:10.5pt; line-height:115%; margin:0pt 0pt 0pt; orphans:0; text-align:center; widows:0">
                            <span style="font-family:宋体; font-size:10.5pt"><input  name="scoreScore_3" style="width:40pt" type="text" value="${score.scoreScore_3}"/></span>
                        </p>
                    </td>
                </tr>
                <tr style="height:19.85pt">
                    <td style="border-bottom-color:#000000; border-bottom-style:solid; border-bottom-width:0.75pt; border-left-color:#000000; border-left-style:solid; border-left-width:0.75pt; border-right-color:#000000; border-right-style:solid; border-right-width:0.75pt; border-top-color:#000000; border-top-style:solid; border-top-width:0.75pt; padding-left:5.03pt; padding-right:5.03pt; vertical-align:middle; width:17.45pt">
                        <p style="font-size:10.5pt; line-height:115%; margin:0pt 0pt 0pt; orphans:0; text-align:justify; widows:0">
                            <span style="font-family:宋体; font-size:10.5pt">04</span>
                        </p>
                    </td>
                    <td colspan="2" style="border-bottom-color:#000000; border-bottom-style:solid; border-bottom-width:0.75pt; border-left-color:#000000; border-left-style:solid; border-left-width:0.75pt; border-right-color:#000000; border-right-style:solid; border-right-width:0.75pt; border-top-color:#000000; border-top-style:solid; border-top-width:0.75pt; padding-left:5.03pt; padding-right:5.03pt; vertical-align:middle; width:254.65pt">
                        <p style="font-size:12pt; line-height:115%; margin:0pt 0pt 0pt; orphans:0; text-align:justify; widows:0">
                            <span style="font-family:宋体; font-size:12pt">理论意义或实际价值</span>
                        </p>
                    </td>
                    <td style="border-bottom-color:#000000; border-bottom-style:solid; border-bottom-width:0.75pt; border-left-color:#000000; border-left-style:solid; border-left-width:0.75pt; border-right-color:#000000; border-right-style:solid; border-right-width:0.75pt; border-top-color:#000000; border-top-style:solid; border-top-width:0.75pt; padding-left:5.03pt; padding-right:5.03pt; vertical-align:middle; width:38.4pt">
                        <p style="font-size:10.5pt; line-height:115%; margin:0pt 0pt 0pt; orphans:0; text-align:center; widows:0">
                            <span style="font-family:宋体; font-size:10.5pt">5</span>
                        </p>
                    </td>
                    <td style="border-bottom-color:#000000; border-bottom-style:solid; border-bottom-width:0.75pt; border-left-color:#000000; border-left-style:solid; border-left-width:0.75pt; border-right-color:#000000; border-right-style:solid; border-right-width:0.75pt; border-top-color:#000000; border-top-style:solid; border-top-width:0.75pt; padding-left:5.03pt; padding-right:5.03pt; vertical-align:middle; width:43.4pt">
                        <p style="font-size:10.5pt; line-height:115%; margin:0pt 0pt 0pt; orphans:0; text-align:center; widows:0">
                            <span style="font-family:宋体; font-size:10.5pt"><input  name="scoreScore_4" style="width:40pt" type="text" value="${score.scoreScore_4}"/></span>
                        </p>
                    </td>
                </tr>
                <tr style="height:19.85pt">
                    <td colspan="2" rowspan="5" style="border-bottom-color:#000000; border-bottom-style:solid; border-bottom-width:0.75pt; border-left-color:#000000; border-left-style:solid; border-left-width:0.75pt; border-right-color:#000000; border-right-style:solid; border-right-width:0.75pt; border-top-color:#000000; border-top-style:solid; border-top-width:0.75pt; padding-left:5.03pt; padding-right:5.03pt; vertical-align:middle; width:38.7pt">
                        <p style="font-size:10.5pt; line-height:115%; margin:0pt 0pt 0pt; orphans:0; text-align:center; widows:0">
                            <span style="font-family:宋体; font-size:10.5pt; font-weight:bold">能力</span>
                        </p>
                        <p style="font-size:10.5pt; line-height:115%; margin:0pt 0pt 0pt; orphans:0; text-align:center; widows:0">
                            <span style="font-family:宋体; font-size:10.5pt; font-weight:bold">水平</span>
                        </p>
                        <p style="font-size:10.5pt; line-height:115%; margin:0pt 0pt 0pt; orphans:0; text-align:center; widows:0">
                            <span style="font-family:宋体; font-size:10.5pt; font-weight:bold">（30分）</span>
                        </p>
                    </td>
                    <td style="border-bottom-color:#000000; border-bottom-style:solid; border-bottom-width:0.75pt; border-left-color:#000000; border-left-style:solid; border-left-width:0.75pt; border-right-color:#000000; border-right-style:solid; border-right-width:0.75pt; border-top-color:#000000; border-top-style:solid; border-top-width:0.75pt; padding-left:5.03pt; padding-right:5.03pt; vertical-align:middle; width:17.45pt">
                        <p style="font-size:10.5pt; line-height:115%; margin:0pt 0pt 0pt; orphans:0; text-align:justify; widows:0">
                            <span style="font-family:宋体; font-size:10.5pt">05</span>
                        </p>
                    </td>
                    <td colspan="2" style="border-bottom-color:#000000; border-bottom-style:solid; border-bottom-width:0.75pt; border-left-color:#000000; border-left-style:solid; border-left-width:0.75pt; border-right-color:#000000; border-right-style:solid; border-right-width:0.75pt; border-top-color:#000000; border-top-style:solid; border-top-width:0.75pt; padding-left:5.03pt; padding-right:5.03pt; vertical-align:middle; width:254.65pt">
                        <p style="font-size:12pt; line-height:115%; margin:0pt 0pt 0pt; orphans:0; text-align:justify; widows:0">
                            <span style="font-family:宋体; font-size:12pt">查阅文献资料能力</span>
                        </p>
                    </td>
                    <td style="border-bottom-color:#000000; border-bottom-style:solid; border-bottom-width:0.75pt; border-left-color:#000000; border-left-style:solid; border-left-width:0.75pt; border-right-color:#000000; border-right-style:solid; border-right-width:0.75pt; border-top-color:#000000; border-top-style:solid; border-top-width:0.75pt; padding-left:5.03pt; padding-right:5.03pt; vertical-align:middle; width:38.4pt">
                        <p style="font-size:10.5pt; line-height:115%; margin:0pt 0pt 0pt; orphans:0; text-align:center; widows:0">
                            <span style="font-family:宋体; font-size:10.5pt">6</span>
                        </p>
                    </td>
                    <td style="border-bottom-color:#000000; border-bottom-style:solid; border-bottom-width:0.75pt; border-left-color:#000000; border-left-style:solid; border-left-width:0.75pt; border-right-color:#000000; border-right-style:solid; border-right-width:0.75pt; border-top-color:#000000; border-top-style:solid; border-top-width:0.75pt; padding-left:5.03pt; padding-right:5.03pt; vertical-align:middle; width:43.4pt">
                        <p style="font-size:10.5pt; line-height:115%; margin:0pt 0pt 0pt; orphans:0; text-align:center; widows:0">
                            <span style="font-family:宋体; font-size:10.5pt"><input  name="scoreScore_5" style="width:40pt" type="text" value="${score.scoreScore_5}"/></span>
                        </p>
                    </td>
                </tr>
                <tr style="height:19.85pt">
                    <td style="border-bottom-color:#000000; border-bottom-style:solid; border-bottom-width:0.75pt; border-left-color:#000000; border-left-style:solid; border-left-width:0.75pt; border-right-color:#000000; border-right-style:solid; border-right-width:0.75pt; border-top-color:#000000; border-top-style:solid; border-top-width:0.75pt; padding-left:5.03pt; padding-right:5.03pt; vertical-align:middle; width:17.45pt">
                        <p style="font-size:10.5pt; line-height:115%; margin:0pt 0pt 0pt; orphans:0; text-align:justify; widows:0">
                            <span style="font-family:宋体; font-size:10.5pt">06</span>
                        </p>
                    </td>
                    <td colspan="2" style="border-bottom-color:#000000; border-bottom-style:solid; border-bottom-width:0.75pt; border-left-color:#000000; border-left-style:solid; border-left-width:0.75pt; border-right-color:#000000; border-right-style:solid; border-right-width:0.75pt; border-top-color:#000000; border-top-style:solid; border-top-width:0.75pt; padding-left:5.03pt; padding-right:5.03pt; vertical-align:middle; width:254.65pt">
                        <p style="font-size:12pt; line-height:115%; margin:0pt 0pt 0pt; orphans:0; text-align:justify; widows:0">
                            <span style="font-family:宋体; font-size:12pt">综合运用知识能力</span>
                        </p>
                    </td>
                    <td style="border-bottom-color:#000000; border-bottom-style:solid; border-bottom-width:0.75pt; border-left-color:#000000; border-left-style:solid; border-left-width:0.75pt; border-right-color:#000000; border-right-style:solid; border-right-width:0.75pt; border-top-color:#000000; border-top-style:solid; border-top-width:0.75pt; padding-left:5.03pt; padding-right:5.03pt; vertical-align:middle; width:38.4pt">
                        <p style="font-size:10.5pt; line-height:115%; margin:0pt 0pt 0pt; orphans:0; text-align:center; widows:0">
                            <span style="font-family:宋体; font-size:10.5pt">6</span>
                        </p>
                    </td>
                    <td style="border-bottom-color:#000000; border-bottom-style:solid; border-bottom-width:0.75pt; border-left-color:#000000; border-left-style:solid; border-left-width:0.75pt; border-right-color:#000000; border-right-style:solid; border-right-width:0.75pt; border-top-color:#000000; border-top-style:solid; border-top-width:0.75pt; padding-left:5.03pt; padding-right:5.03pt; vertical-align:middle; width:43.4pt">
                        <p style="font-size:10.5pt; line-height:115%; margin:0pt 0pt 0pt; orphans:0; text-align:center; widows:0">
                            <span style="font-family:宋体; font-size:10.5pt"><input  name="scoreScore_6" style="width:40pt" type="text" value="${score.scoreScore_6}"/></span>
                        </p>
                    </td>
                </tr>
                <tr style="height:19.85pt">
                    <td style="border-bottom-color:#000000; border-bottom-style:solid; border-bottom-width:0.75pt; border-left-color:#000000; border-left-style:solid; border-left-width:0.75pt; border-right-color:#000000; border-right-style:solid; border-right-width:0.75pt; border-top-color:#000000; border-top-style:solid; border-top-width:0.75pt; padding-left:5.03pt; padding-right:5.03pt; vertical-align:middle; width:17.45pt">
                        <p style="font-size:10.5pt; line-height:115%; margin:0pt 0pt 0pt; orphans:0; text-align:justify; widows:0">
                            <span style="font-family:宋体; font-size:10.5pt">07</span>
                        </p>
                    </td>
                    <td colspan="2" style="border-bottom-color:#000000; border-bottom-style:solid; border-bottom-width:0.75pt; border-left-color:#000000; border-left-style:solid; border-left-width:0.75pt; border-right-color:#000000; border-right-style:solid; border-right-width:0.75pt; border-top-color:#000000; border-top-style:solid; border-top-width:0.75pt; padding-left:5.03pt; padding-right:5.03pt; vertical-align:middle; width:254.65pt">
                        <p style="font-size:12pt; line-height:115%; margin:0pt 0pt 0pt; orphans:0; text-align:justify; widows:0">
                            <span style="font-family:宋体; font-size:12pt">研究方案的设计能力</span>
                        </p>
                    </td>
                    <td style="border-bottom-color:#000000; border-bottom-style:solid; border-bottom-width:0.75pt; border-left-color:#000000; border-left-style:solid; border-left-width:0.75pt; border-right-color:#000000; border-right-style:solid; border-right-width:0.75pt; border-top-color:#000000; border-top-style:solid; border-top-width:0.75pt; padding-left:5.03pt; padding-right:5.03pt; vertical-align:middle; width:38.4pt">
                        <p style="font-size:10.5pt; line-height:115%; margin:0pt 0pt 0pt; orphans:0; text-align:center; widows:0">
                            <span style="font-family:宋体; font-size:10.5pt">7</span>
                        </p>
                    </td>
                    <td style="border-bottom-color:#000000; border-bottom-style:solid; border-bottom-width:0.75pt; border-left-color:#000000; border-left-style:solid; border-left-width:0.75pt; border-right-color:#000000; border-right-style:solid; border-right-width:0.75pt; border-top-color:#000000; border-top-style:solid; border-top-width:0.75pt; padding-left:5.03pt; padding-right:5.03pt; vertical-align:middle; width:43.4pt">
                        <p style="font-size:10.5pt; line-height:115%; margin:0pt 0pt 0pt; orphans:0; text-align:center; widows:0">
                            <span style="font-family:宋体; font-size:10.5pt"><input  name="scoreScore_7" style="width:40pt" type="text" value="${score.scoreScore_7}"/></span>
                        </p>
                    </td>
                </tr>
                <tr style="height:19.85pt">
                    <td style="border-bottom-color:#000000; border-bottom-style:solid; border-bottom-width:0.75pt; border-left-color:#000000; border-left-style:solid; border-left-width:0.75pt; border-right-color:#000000; border-right-style:solid; border-right-width:0.75pt; border-top-color:#000000; border-top-style:solid; border-top-width:0.75pt; padding-left:5.03pt; padding-right:5.03pt; vertical-align:middle; width:17.45pt">
                        <p style="font-size:10.5pt; line-height:115%; margin:0pt 0pt 0pt; orphans:0; text-align:justify; widows:0">
                            <span style="font-family:宋体; font-size:10.5pt">08</span>
                        </p>
                    </td>
                    <td colspan="2" style="border-bottom-color:#000000; border-bottom-style:solid; border-bottom-width:0.75pt; border-left-color:#000000; border-left-style:solid; border-left-width:0.75pt; border-right-color:#000000; border-right-style:solid; border-right-width:0.75pt; border-top-color:#000000; border-top-style:solid; border-top-width:0.75pt; padding-left:5.03pt; padding-right:5.03pt; vertical-align:middle; width:254.65pt">
                        <p style="font-size:12pt; line-height:115%; margin:0pt 0pt 0pt; orphans:0; text-align:justify; widows:0">
                            <span style="font-family:宋体; font-size:12pt">研究方法和手段的应用能力</span>
                        </p>
                    </td>
                    <td style="border-bottom-color:#000000; border-bottom-style:solid; border-bottom-width:0.75pt; border-left-color:#000000; border-left-style:solid; border-left-width:0.75pt; border-right-color:#000000; border-right-style:solid; border-right-width:0.75pt; border-top-color:#000000; border-top-style:solid; border-top-width:0.75pt; padding-left:5.03pt; padding-right:5.03pt; vertical-align:middle; width:38.4pt">
                        <p style="font-size:10.5pt; line-height:115%; margin:0pt 0pt 0pt; orphans:0; text-align:center; widows:0">
                            <span style="font-family:宋体; font-size:10.5pt">7</span>
                        </p>
                    </td>
                    <td style="border-bottom-color:#000000; border-bottom-style:solid; border-bottom-width:0.75pt; border-left-color:#000000; border-left-style:solid; border-left-width:0.75pt; border-right-color:#000000; border-right-style:solid; border-right-width:0.75pt; border-top-color:#000000; border-top-style:solid; border-top-width:0.75pt; padding-left:5.03pt; padding-right:5.03pt; vertical-align:middle; width:43.4pt">
                        <p style="font-size:10.5pt; line-height:115%; margin:0pt 0pt 0pt; orphans:0; text-align:center; widows:0">
                            <span style="font-family:宋体; font-size:10.5pt"><input  name="scoreScore_8" style="width:40pt" type="text" value="${score.scoreScore_8}"/></span>
                        </p>
                    </td>
                </tr>
                <tr style="height:19.85pt">
                    <td style="border-bottom-color:#000000; border-bottom-style:solid; border-bottom-width:0.75pt; border-left-color:#000000; border-left-style:solid; border-left-width:0.75pt; border-right-color:#000000; border-right-style:solid; border-right-width:0.75pt; border-top-color:#000000; border-top-style:solid; border-top-width:0.75pt; padding-left:5.03pt; padding-right:5.03pt; vertical-align:middle; width:17.45pt">
                        <p style="font-size:10.5pt; line-height:115%; margin:0pt 0pt 0pt; orphans:0; text-align:justify; widows:0">
                            <span style="font-family:宋体; font-size:10.5pt">09</span>
                        </p>
                    </td>
                    <td colspan="2" style="border-bottom-color:#000000; border-bottom-style:solid; border-bottom-width:0.75pt; border-left-color:#000000; border-left-style:solid; border-left-width:0.75pt; border-right-color:#000000; border-right-style:solid; border-right-width:0.75pt; border-top-color:#000000; border-top-style:solid; border-top-width:0.75pt; padding-left:5.03pt; padding-right:5.03pt; vertical-align:middle; width:254.65pt">
                        <p style="font-size:12pt; line-height:115%; margin:0pt 0pt 0pt; orphans:0; text-align:justify; widows:0">
                            <span style="font-family:宋体; font-size:12pt">外文应用能力</span>
                        </p>
                    </td>
                    <td style="border-bottom-color:#000000; border-bottom-style:solid; border-bottom-width:0.75pt; border-left-color:#000000; border-left-style:solid; border-left-width:0.75pt; border-right-color:#000000; border-right-style:solid; border-right-width:0.75pt; border-top-color:#000000; border-top-style:solid; border-top-width:0.75pt; padding-left:5.03pt; padding-right:5.03pt; vertical-align:middle; width:38.4pt">
                        <p style="font-size:10.5pt; line-height:115%; margin:0pt 0pt 0pt; orphans:0; text-align:center; widows:0">
                            <span style="font-family:宋体; font-size:10.5pt">4</span>
                        </p>
                    </td>
                    <td style="border-bottom-color:#000000; border-bottom-style:solid; border-bottom-width:0.75pt; border-left-color:#000000; border-left-style:solid; border-left-width:0.75pt; border-right-color:#000000; border-right-style:solid; border-right-width:0.75pt; border-top-color:#000000; border-top-style:solid; border-top-width:0.75pt; padding-left:5.03pt; padding-right:5.03pt; vertical-align:middle; width:43.4pt">
                        <p style="font-size:10.5pt; line-height:115%; margin:0pt 0pt 0pt; orphans:0; text-align:center; widows:0">
                            <span style="font-family:宋体; font-size:10.5pt"><input  name="scoreScore_9" style="width:40pt" type="text" value="${score.scoreScore_9}"/></span>
                        </p>
                    </td>
                </tr>
                <tr style="height:19.85pt">
                    <td colspan="2" rowspan="5" style="border-bottom-color:#000000; border-bottom-style:solid; border-bottom-width:0.75pt; border-left-color:#000000; border-left-style:solid; border-left-width:0.75pt; border-right-color:#000000; border-right-style:solid; border-right-width:0.75pt; border-top-color:#000000; border-top-style:solid; border-top-width:0.75pt; padding-left:5.03pt; padding-right:5.03pt; vertical-align:middle; width:38.7pt">
                        <p style="font-size:10.5pt; line-height:115%; margin:0pt 0pt 0pt; orphans:0; text-align:center; widows:0">
                            <span style="font-family:宋体; font-size:10.5pt; font-weight:bold">成果</span>
                        </p>
                        <p style="font-size:10.5pt; line-height:115%; margin:0pt 0pt 0pt; orphans:0; text-align:center; widows:0">
                            <span style="font-family:宋体; font-size:10.5pt; font-weight:bold">质量</span>
                        </p>
                        <p style="font-size:10.5pt; line-height:115%; margin:0pt 0pt 0pt; orphans:0; text-align:center; widows:0">
                            <span style="font-family:宋体; font-size:10.5pt; font-weight:bold">（40分）</span>
                        </p>
                    </td>
                    <td style="border-bottom-color:#000000; border-bottom-style:solid; border-bottom-width:0.75pt; border-left-color:#000000; border-left-style:solid; border-left-width:0.75pt; border-right-color:#000000; border-right-style:solid; border-right-width:0.75pt; border-top-color:#000000; border-top-style:solid; border-top-width:0.75pt; padding-left:5.03pt; padding-right:5.03pt; vertical-align:middle; width:17.45pt">
                        <p style="font-size:10.5pt; line-height:115%; margin:0pt 0pt 0pt; orphans:0; text-align:justify; widows:0">
                            <span style="font-family:宋体; font-size:10.5pt">10</span>
                        </p>
                    </td>
                    <td colspan="2" style="border-bottom-color:#000000; border-bottom-style:solid; border-bottom-width:0.75pt; border-left-color:#000000; border-left-style:solid; border-left-width:0.75pt; border-right-color:#000000; border-right-style:solid; border-right-width:0.75pt; border-top-color:#000000; border-top-style:solid; border-top-width:0.75pt; padding-left:5.03pt; padding-right:5.03pt; vertical-align:middle; width:254.65pt">
                        <p style="font-size:12pt; line-height:115%; margin:0pt 0pt 0pt; orphans:0; text-align:justify; widows:0">
                            <span style="font-family:宋体; font-size:12pt">创新程度</span>
                        </p>
                    </td>
                    <td style="border-bottom-color:#000000; border-bottom-style:solid; border-bottom-width:0.75pt; border-left-color:#000000; border-left-style:solid; border-left-width:0.75pt; border-right-color:#000000; border-right-style:solid; border-right-width:0.75pt; border-top-color:#000000; border-top-style:solid; border-top-width:0.75pt; padding-left:5.03pt; padding-right:5.03pt; vertical-align:middle; width:38.4pt">
                        <p style="font-size:10.5pt; line-height:115%; margin:0pt 0pt 0pt; orphans:0; text-align:center; widows:0">
                            <span style="font-family:宋体; font-size:10.5pt">6</span>
                        </p>
                    </td>
                    <td style="border-bottom-color:#000000; border-bottom-style:solid; border-bottom-width:0.75pt; border-left-color:#000000; border-left-style:solid; border-left-width:0.75pt; border-right-color:#000000; border-right-style:solid; border-right-width:0.75pt; border-top-color:#000000; border-top-style:solid; border-top-width:0.75pt; padding-left:5.03pt; padding-right:5.03pt; vertical-align:middle; width:43.4pt">
                        <p style="font-size:10.5pt; line-height:115%; margin:0pt 0pt 0pt; orphans:0; text-align:center; widows:0">
                            <span style="font-family:宋体; font-size:10.5pt"><input  name="scoreScore_10" style="width:40pt" type="text" value="${score.scoreScore_10}"/></span>
                        </p>
                    </td>
                </tr>
                <tr style="height:19.85pt">
                    <td style="border-bottom-color:#000000; border-bottom-style:solid; border-bottom-width:0.75pt; border-left-color:#000000; border-left-style:solid; border-left-width:0.75pt; border-right-color:#000000; border-right-style:solid; border-right-width:0.75pt; border-top-color:#000000; border-top-style:solid; border-top-width:0.75pt; padding-left:5.03pt; padding-right:5.03pt; vertical-align:middle; width:17.45pt">
                        <p style="font-size:10.5pt; line-height:115%; margin:0pt 0pt 0pt; orphans:0; text-align:justify; widows:0">
                            <span style="font-family:宋体; font-size:10.5pt">11</span>
                        </p>
                    </td>
                    <td colspan="2" style="border-bottom-color:#000000; border-bottom-style:solid; border-bottom-width:0.75pt; border-left-color:#000000; border-left-style:solid; border-left-width:0.75pt; border-right-color:#000000; border-right-style:solid; border-right-width:0.75pt; border-top-color:#000000; border-top-style:solid; border-top-width:0.75pt; padding-left:5.03pt; padding-right:5.03pt; vertical-align:middle; width:254.65pt">
                        <p style="font-size:12pt; line-height:115%; margin:0pt 0pt 0pt; orphans:0; text-align:justify; widows:0">
                            <span style="font-family:宋体; font-size:12pt">写作水平</span>
                        </p>
                    </td>
                    <td style="border-bottom-color:#000000; border-bottom-style:solid; border-bottom-width:0.75pt; border-left-color:#000000; border-left-style:solid; border-left-width:0.75pt; border-right-color:#000000; border-right-style:solid; border-right-width:0.75pt; border-top-color:#000000; border-top-style:solid; border-top-width:0.75pt; padding-left:5.03pt; padding-right:5.03pt; vertical-align:middle; width:38.4pt">
                        <p style="font-size:10.5pt; line-height:115%; margin:0pt 0pt 0pt; orphans:0; text-align:center; widows:0">
                            <span style="font-family:宋体; font-size:10.5pt">10</span>
                        </p>
                    </td>
                    <td style="border-bottom-color:#000000; border-bottom-style:solid; border-bottom-width:0.75pt; border-left-color:#000000; border-left-style:solid; border-left-width:0.75pt; border-right-color:#000000; border-right-style:solid; border-right-width:0.75pt; border-top-color:#000000; border-top-style:solid; border-top-width:0.75pt; padding-left:5.03pt; padding-right:5.03pt; vertical-align:middle; width:43.4pt">
                        <p style="font-size:10.5pt; line-height:115%; margin:0pt 0pt 0pt; orphans:0; text-align:center; widows:0">
                            <span style="font-family:宋体; font-size:10.5pt"><input  name="scoreScore_11" style="width:40pt" type="text" value="${score.scoreScore_11}"/></span>
                        </p>
                    </td>
                </tr>
                <tr style="height:19.85pt">
                    <td style="border-bottom-color:#000000; border-bottom-style:solid; border-bottom-width:0.75pt; border-left-color:#000000; border-left-style:solid; border-left-width:0.75pt; border-right-color:#000000; border-right-style:solid; border-right-width:0.75pt; border-top-color:#000000; border-top-style:solid; border-top-width:0.75pt; padding-left:5.03pt; padding-right:5.03pt; vertical-align:middle; width:17.45pt">
                        <p style="font-size:10.5pt; line-height:115%; margin:0pt 0pt 0pt; orphans:0; text-align:justify; widows:0">
                            <span style="font-family:宋体; font-size:10.5pt">12</span>
                        </p>
                    </td>
                    <td colspan="2" style="border-bottom-color:#000000; border-bottom-style:solid; border-bottom-width:0.75pt; border-left-color:#000000; border-left-style:solid; border-left-width:0.75pt; border-right-color:#000000; border-right-style:solid; border-right-width:0.75pt; border-top-color:#000000; border-top-style:solid; border-top-width:0.75pt; padding-left:5.03pt; padding-right:5.03pt; vertical-align:middle; width:254.65pt">
                        <p style="font-size:12pt; line-height:115%; margin:0pt 0pt 0pt; orphans:0; text-align:justify; widows:0">
                            <span style="font-family:宋体; font-size:12pt">写作规范</span>
                        </p>
                    </td>
                    <td style="border-bottom-color:#000000; border-bottom-style:solid; border-bottom-width:0.75pt; border-left-color:#000000; border-left-style:solid; border-left-width:0.75pt; border-right-color:#000000; border-right-style:solid; border-right-width:0.75pt; border-top-color:#000000; border-top-style:solid; border-top-width:0.75pt; padding-left:5.03pt; padding-right:5.03pt; vertical-align:middle; width:38.4pt">
                        <p style="font-size:10.5pt; line-height:115%; margin:0pt 0pt 0pt; orphans:0; text-align:center; widows:0">
                            <span style="font-family:宋体; font-size:10.5pt">10</span>
                        </p>
                    </td>
                    <td style="border-bottom-color:#000000; border-bottom-style:solid; border-bottom-width:0.75pt; border-left-color:#000000; border-left-style:solid; border-left-width:0.75pt; border-right-color:#000000; border-right-style:solid; border-right-width:0.75pt; border-top-color:#000000; border-top-style:solid; border-top-width:0.75pt; padding-left:5.03pt; padding-right:5.03pt; vertical-align:middle; width:43.4pt">
                        <p style="font-size:10.5pt; line-height:115%; margin:0pt 0pt 0pt; orphans:0; text-align:center; widows:0">
                            <span style="font-family:宋体; font-size:10.5pt"><input  name="scoreScore_12" style="width:40pt" type="text" value="${score.scoreScore_12}"/></span>
                        </p>
                    </td>
                </tr>
                <tr style="height:19.85pt">
                    <td style="border-bottom-color:#000000; border-bottom-style:solid; border-bottom-width:0.75pt; border-left-color:#000000; border-left-style:solid; border-left-width:0.75pt; border-right-color:#000000; border-right-style:solid; border-right-width:0.75pt; border-top-color:#000000; border-top-style:solid; border-top-width:0.75pt; padding-left:5.03pt; padding-right:5.03pt; vertical-align:middle; width:17.45pt">
                        <p style="font-size:10.5pt; line-height:115%; margin:0pt 0pt 0pt; orphans:0; text-align:justify; widows:0">
                            <span style="font-family:宋体; font-size:10.5pt">13</span>
                        </p>
                    </td>
                    <td colspan="2" style="border-bottom-color:#000000; border-bottom-style:solid; border-bottom-width:0.75pt; border-left-color:#000000; border-left-style:solid; border-left-width:0.75pt; border-right-color:#000000; border-right-style:solid; border-right-width:0.75pt; border-top-color:#000000; border-top-style:solid; border-top-width:0.75pt; padding-left:5.03pt; padding-right:5.03pt; vertical-align:middle; width:254.65pt">
                        <p style="font-size:12pt; line-height:115%; margin:0pt 0pt 0pt; orphans:0; text-align:justify; widows:0">
                            <span style="font-family:宋体; font-size:12pt">篇幅</span>
                        </p>
                    </td>
                    <td style="border-bottom-color:#000000; border-bottom-style:solid; border-bottom-width:0.75pt; border-left-color:#000000; border-left-style:solid; border-left-width:0.75pt; border-right-color:#000000; border-right-style:solid; border-right-width:0.75pt; border-top-color:#000000; border-top-style:solid; border-top-width:0.75pt; padding-left:5.03pt; padding-right:5.03pt; vertical-align:middle; width:38.4pt">
                        <p style="font-size:10.5pt; line-height:115%; margin:0pt 0pt 0pt; orphans:0; text-align:center; widows:0">
                            <span style="font-family:宋体; font-size:10.5pt">6</span>
                        </p>
                    </td>
                    <td style="border-bottom-color:#000000; border-bottom-style:solid; border-bottom-width:0.75pt; border-left-color:#000000; border-left-style:solid; border-left-width:0.75pt; border-right-color:#000000; border-right-style:solid; border-right-width:0.75pt; border-top-color:#000000; border-top-style:solid; border-top-width:0.75pt; padding-left:5.03pt; padding-right:5.03pt; vertical-align:middle; width:43.4pt">
                        <p style="font-size:10.5pt; line-height:115%; margin:0pt 0pt 0pt; orphans:0; text-align:center; widows:0">
                            <span style="font-family:宋体; font-size:10.5pt"><input  name="scoreScore_13" style="width:40pt" type="text" value="${score.scoreScore_13}"/></span>
                        </p>
                    </td>
                </tr>
                <tr style="height:19.85pt">
                    <td style="border-bottom-color:#000000; border-bottom-style:solid; border-bottom-width:0.75pt; border-left-color:#000000; border-left-style:solid; border-left-width:0.75pt; border-right-color:#000000; border-right-style:solid; border-right-width:0.75pt; border-top-color:#000000; border-top-style:solid; border-top-width:0.75pt; padding-left:5.03pt; padding-right:5.03pt; vertical-align:middle; width:17.45pt">
                        <p style="font-size:10.5pt; line-height:115%; margin:0pt 0pt 0pt; orphans:0; text-align:justify; widows:0">
                            <span style="font-family:宋体; font-size:10.5pt">14</span>
                        </p>
                    </td>
                    <td colspan="2" style="border-bottom-color:#000000; border-bottom-style:solid; border-bottom-width:0.75pt; border-left-color:#000000; border-left-style:solid; border-left-width:0.75pt; border-right-color:#000000; border-right-style:solid; border-right-width:0.75pt; border-top-color:#000000; border-top-style:solid; border-top-width:0.75pt; padding-left:5.03pt; padding-right:5.03pt; vertical-align:middle; width:254.65pt">
                        <p style="font-size:12pt; line-height:115%; margin:0pt 0pt 0pt; orphans:0; text-align:justify; widows:0">
                            <span style="font-family:宋体; font-size:12pt">成果的理论或实际价值</span>
                        </p>
                    </td>
                    <td style="border-bottom-color:#000000; border-bottom-style:solid; border-bottom-width:0.75pt; border-left-color:#000000; border-left-style:solid; border-left-width:0.75pt; border-right-color:#000000; border-right-style:solid; border-right-width:0.75pt; border-top-color:#000000; border-top-style:solid; border-top-width:0.75pt; padding-left:5.03pt; padding-right:5.03pt; vertical-align:middle; width:38.4pt">
                        <p style="font-size:10.5pt; line-height:115%; margin:0pt 0pt 0pt; orphans:0; text-align:center; widows:0">
                            <span style="font-family:宋体; font-size:10.5pt">8</span>
                        </p>
                    </td>
                    <td style="border-bottom-color:#000000; border-bottom-style:solid; border-bottom-width:0.75pt; border-left-color:#000000; border-left-style:solid; border-left-width:0.75pt; border-right-color:#000000; border-right-style:solid; border-right-width:0.75pt; border-top-color:#000000; border-top-style:solid; border-top-width:0.75pt; padding-left:5.03pt; padding-right:5.03pt; vertical-align:middle; width:43.4pt">
                        <p style="font-size:10.5pt; line-height:115%; margin:0pt 0pt 0pt; orphans:0; text-align:center; widows:0">
                            <span style="font-family:宋体; font-size:10.5pt"><input  name="scoreScore_14" style="width:40pt" type="text" value="${score.scoreScore_14}"/></span>
                        </p>
                    </td>
                </tr>
                <tr style="height:19.5pt">
                    <td colspan="3" style="border-bottom-color:#000000; border-bottom-style:solid; border-bottom-width:0.75pt; border-left-color:#000000; border-left-style:solid; border-left-width:0.75pt; border-right-color:#000000; border-right-style:solid; border-right-width:0.75pt; border-top-color:#000000; border-top-style:solid; border-top-width:0.75pt; padding-left:5.03pt; padding-right:5.03pt; vertical-align:middle; width:66.95pt">
                        <p style="font-size:10.5pt; line-height:115%; margin:0pt 0pt 0pt; orphans:0; text-align:center; widows:0">
                            <span style="font-family:宋体; font-size:10.5pt; font-weight:bold">工作态度</span>
                        </p>
                        <p style="font-size:10.5pt; line-height:115%; margin:0pt 0pt 0pt; orphans:0; text-align:center; widows:0">
                            <span style="font-family:宋体; font-size:10.5pt; font-weight:bold">（10分）</span>
                        </p>
                    </td>
                    <td colspan="2" style="border-bottom-color:#000000; border-bottom-style:solid; border-bottom-width:0.75pt; border-left-color:#000000; border-left-style:solid; border-left-width:0.75pt; border-right-color:#000000; border-right-style:solid; border-right-width:0.75pt; border-top-color:#000000; border-top-style:solid; border-top-width:0.75pt; padding-left:5.03pt; padding-right:5.03pt; vertical-align:middle; width:254.65pt">
                        <p style="font-size:12pt; line-height:115%; margin:0pt 0pt 0pt; orphans:0; text-align:justify; widows:0">
                            <span style="font-family:宋体; font-size:12pt">资料查阅、工作进度、考勤等</span>
                        </p>
                    </td>
                    <td style="border-bottom-color:#000000; border-bottom-style:solid; border-bottom-width:0.75pt; border-left-color:#000000; border-left-style:solid; border-left-width:0.75pt; border-right-color:#000000; border-right-style:solid; border-right-width:0.75pt; border-top-color:#000000; border-top-style:solid; border-top-width:0.75pt; padding-left:5.03pt; padding-right:5.03pt; vertical-align:middle; width:38.4pt">
                        <p style="font-size:10.5pt; line-height:115%; margin:0pt 0pt 0pt; orphans:0; text-align:center; widows:0">
                            <span style="font-family:宋体; font-size:10.5pt">10</span>
                        </p>
                    </td>
                    <td style="border-bottom-color:#000000; border-bottom-style:solid; border-bottom-width:0.75pt; border-left-color:#000000; border-left-style:solid; border-left-width:0.75pt; border-right-color:#000000; border-right-style:solid; border-right-width:0.75pt; border-top-color:#000000; border-top-style:solid; border-top-width:0.75pt; padding-left:5.03pt; padding-right:5.03pt; vertical-align:middle; width:43.4pt">
                        <p style="font-size:10.5pt; line-height:115%; margin:0pt 0pt 0pt; orphans:0; text-align:center; widows:0">
                            <span style="font-family:宋体; font-size:10.5pt"><input  name="scoreScore_15" style="width:40pt" type="text" value="${score.scoreScore_15}"/></span>
                        </p>
                    </td>
                </tr>
                <tr style="height:23.25pt">
                    <td colspan="5" style="border-bottom-color:#000000; border-bottom-style:solid; border-bottom-width:0.75pt; border-left-color:#000000; border-left-style:solid; border-left-width:0.75pt; border-right-color:#000000; border-right-style:solid; border-right-width:0.75pt; border-top-color:#000000; border-top-style:solid; border-top-width:0.75pt; padding-left:5.03pt; padding-right:5.03pt; vertical-align:middle; width:332.4pt">
                        <p style="font-size:10.5pt; line-height:115%; margin:0pt 0pt 0pt; orphans:0; text-align:center; widows:0">
                            <span style="font-family:宋体; font-size:10.5pt; font-weight:bold">指导教师评定成绩</span>
                        </p>
                    </td>
                    <td colspan="2" style="border-bottom-color:#000000; border-bottom-style:solid; border-bottom-width:0.75pt; border-left-color:#000000; border-left-style:solid; border-left-width:0.75pt; border-right-color:#000000; border-right-style:solid; border-right-width:0.75pt; border-top-color:#000000; border-top-style:solid; border-top-width:0.75pt; padding-left:5.03pt; padding-right:5.03pt; vertical-align:middle; width:92.6pt">
                        <p style="font-size:10.5pt; line-height:115%; margin:0pt 0pt 0pt; orphans:0; text-align:center; widows:0">
                            <span style="font-family:宋体; font-size:10.5pt"><input readonly="readonly" name="scoreScore_16" style="width:60pt" type="text" value="${score.scoreScore_16}"/></span>
                        </p>
                    </td>
                </tr>
                <tr style="height:100pt">
                    <td style="border-bottom-color:#000000; border-bottom-style:solid; border-bottom-width:0.75pt; border-left-color:#000000; border-left-style:solid; border-left-width:0.75pt; border-right-color:#000000; border-right-style:solid; border-right-width:0.75pt; border-top-color:#000000; border-top-style:solid; border-top-width:0.75pt; height:198.05pt; padding-left:5.03pt; padding-right:5.03pt; vertical-align:middle; width:16.85pt; writing-mode:tb-rl">
                        <p style="font-size:10.5pt; line-height:115%; margin:0pt 5.65pt 10pt; orphans:0; text-align:center; widows:0">
                            <span style="font-family:宋体; font-size:10.5pt; font-weight:bold"> 指<br/>导<br/> 教<br/> 师<br/> 评<br/>语</span>
                        </p>
                    </td>
                    <td colspan="6" style="border-bottom-color:#000000; border-bottom-style:solid; border-bottom-width:0.75pt; border-left-color:#000000; border-left-style:solid; border-left-width:0.75pt; border-right-color:#000000; border-right-style:solid; border-right-width:0.75pt; border-top-color:#000000; border-top-style:solid; border-top-width:0.75pt; padding-left:5.03pt; padding-right:5.03pt; vertical-align:top; width:408.15pt">
                        <p style="font-size:10.5pt; line-height:120%; margin:7.8pt 0pt 10pt; orphans:0; text-align:justify; text-indent:21pt; widows:0">
                            <textarea id="textarea1" name="scoreTeacher_judge" rows="1">${score.scoreTeacher_judge}</textarea>
                            <script>
                                function $(id) {
                                    return document.getElementById(id);
                                }

                                $("textarea1").onkeyup = function() {
                                    this.style.height = 'auto';
                                    this.style.height = this.scrollHeight + "px";
                                }
                            </script>
                        </p>
                    </td>
                </tr>
                <tr style="height:0pt">
                    <td style="width:27.65pt; border:none"></td>
                    <td style="width:21.85pt; border:none"></td>
                    <td style="width:28.25pt; border:none"></td>
                    <td style="width:6.25pt; border:none"></td>
                    <td style="width:259.2pt; border:none"></td>
                    <td style="width:49.2pt; border:none"></td>
                    <td style="width:54.2pt; border:none"></td>
                </tr>
                </tbody>
            </table>
            <p style="font-size:10.5pt; line-height:115%; margin:0pt 0pt 10pt; orphans:0; text-align:justify; widows:0">
                <span style="font-family:宋体; font-size:10.5pt; font-weight:bold">&nbsp;</span>
            </p>
            <p style="font-size:10.5pt; line-height:115%; margin:0pt 0pt 10pt; orphans:0; text-align:center; widows:0">
                <span style="font-family:宋体; font-size:10.5pt; font-weight:bold">指导教师（签名）：</span>
                <span style="font-family:宋体; font-size:10.5pt; font-weight:bold; text-decoration:underline">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span>
                <span style="font-family:宋体; font-size:10.5pt; font-weight:bold">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 年&nbsp;&nbsp;&nbsp;&nbsp; 月&nbsp;&nbsp;&nbsp;&nbsp; 日</span>
            </p>
        </div>
    </center>
    <p align="center">
        <input style="font-size: 16pt;" id="submit" type="submit" value="提交" onclick="updateScore()">
    </p>
</c:forEach>
</form>

<script type="text/javascript">
    function updateScore() {
        var form = document.forms[0];
        form.action = "<%=basePath %>score/admUpdateScore";
        form.method = "post";
        form.submit();

    }
</script>

</body>
</html>
