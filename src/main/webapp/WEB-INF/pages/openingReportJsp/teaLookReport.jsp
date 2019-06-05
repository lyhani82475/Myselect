<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ page import="javax.print.DocFlavor" %>
<%@ page import="javax.swing.text.Document" %>
<%@ page import="com.slxy.www.domain.po.OpeningReport" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";

%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html id="htmlText">
<head>
    <base href="<%=basePath%>">


    <title>开题报告预览</title>
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
        #input1{
            border-left:none;
            border-right:none;
            border-top:none;
            border-bottom:1px solid #0F2543;
            text-align:center;
            font-family:黑体;
            font-size:15pt;
            outline:none;
        }
        input::-webkit-input-placeholder{
            color:red;
        }
        input::-moz-placeholder{
            color:red;
        }
        input:-moz-placeholder{
            color:red;
        }
        input:-ms-input-placeholder{
            color:red;
        }

        textarea::-webkit-input-placeholder {
            color:#00F;
            font-size:12px;
        }
        textarea:-moz-placeholder {
            color:#00F;
            font-size:12px;
        }
        textarea::-moz-placeholder {
            color: #00F;
            font-size:12px;
        }
        textarea::-ms-input-placeholder {
            color: #0000FF;
            font-size:12px;

        }


        #textarea1,#textarea2 ,#textarea3,#textarea4,#textarea5,#textarea6,#textarea7,#textarea8,#textarea9{
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
<c:forEach var="openingReport" items="${requestScope.get('list')}" varStatus="status" end="0">
    <center>
        <p style="font-size:9pt; line-height:115%; margin:0pt 0pt 10pt; orphans:0; text-align:justify; widows:0"></p>
        <div style="text-align:center">
            <table cellspacing="0" cellpadding="0" style="border-collapse:collapse; margin:0 auto; width:257.4pt">
                <tbody>
                <tr>
                    <td style="padding-left:5.4pt; padding-right:5.4pt; vertical-align:top; width:66.6pt">
                        <p style="font-size:7.5pt; line-height:115%; margin:15.6pt 0pt 10pt; orphans:0; text-align:center; widows:0">
                            <img src="937e935e-ed86-45b5-8740-08c075fdb295.001.jpeg" width="72" height="45" alt="学院标识组合（方）" style="-aw-left-pos:0pt; -aw-rel-hpos:column; -aw-rel-vpos:paragraph; -aw-top-pos:0pt; -aw-wrap-type:inline" />
                        </p>
                    </td>
                    <td style="padding-left:5.4pt; padding-right:5.4pt; vertical-align:top; width:169.2pt">
                        <p style="font-size:7.5pt; line-height:115%; margin:15.6pt 0pt 10pt; orphans:0; text-align:center; widows:0">
                            <img src="937e935e-ed86-45b5-8740-08c075fdb295.002.png" width="223" height="50" alt="校名" style="-aw-left-pos:0pt; -aw-rel-hpos:column; -aw-rel-vpos:paragraph; -aw-top-pos:0pt; -aw-wrap-type:inline" />
                        </p>
                    </td>
                </tr>
                </tbody>
            </table>
        </div>
        <p style="font-size:10.5pt; line-height:115%; margin:0pt 0pt 10pt; orphans:0; text-align:center; widows:0">
            <span style="font-family:'Times New Roman'; font-size:10.5pt">&nbsp;</span>
        </p>
        <p style="font-size:10.5pt; line-height:115%; margin:0pt 0pt 10pt; orphans:0; text-align:center; widows:0">
            <span style="font-family:'Times New Roman'; font-size:10.5pt">&nbsp;</span>
        </p>
        <p style="font-size:26pt; line-height:115%; margin:0pt 0pt 10pt; orphans:0; text-align:center; widows:0">
            <span style="font-family:黑体; font-size:26pt; font-weight:bold">本科生毕业论文（设计）开题报告</span>
        </p>
        <p style="font-size:22pt; line-height:115%; margin:0pt 0pt 10pt; orphans:0; text-align:center; widows:0">
            <span style="font-family:'Times New Roman'; font-size:22pt; font-weight:bold">&nbsp;</span>
        </p>
        <p style="font-size:16pt; line-height:115%; margin:0pt 0pt 10pt; orphans:0; text-align:center; widows:0">
            <span style=" width:500pt;font-family:黑体; font-size:16pt; font-weight:bold" name="Title">论文题目无需填写</span>
        </p>
        <p style="font-size:22pt; line-height:115%; margin:0pt 0pt 10pt; orphans:0; text-align:center; widows:0">
            <span style="font-family:'Times New Roman'; font-size:22pt; font-weight:bold">&nbsp;</span>
        </p>
        <p style="font-size:22pt; line-height:115%; margin:0pt 0pt 10pt; orphans:0; text-align:center; widows:0">
            <span style="font-family:'Times New Roman'; font-size:22pt; font-weight:bold">&nbsp;</span>
        </p>
        <p style="font-size:22pt; line-height:115%; margin:0pt 0pt 10pt; orphans:0; text-align:center; widows:0">
            <span style="font-family:'Times New Roman'; font-size:22pt; font-weight:bold">&nbsp;</span>
        </p>
        <p style="font-size:22pt; line-height:115%; margin:0pt 0pt 10pt; orphans:0; text-align:center; widows:0">
            <span style="font-family:'Times New Roman'; font-size:22pt; font-weight:bold">&nbsp;</span>
        </p>
        <div align="center">
            <p style="font-size:15pt; line-height:115%; margin:0pt 0pt 10pt; orphans:0; text-align:center; text-indent:39.7pt; widows:0">
                <span style="font-family:黑体; font-size:15pt">学&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 院</span>
                <span style="font-family:宋体; font-size:15pt; font-weight:bold; text-decoration:underline"> </span>
                <span style="font-family:黑体; font-size:15pt; text-decoration:underline">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 无需填写&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span>
                <span style="font-family:宋体; font-size:15pt; text-decoration:underline"> </span>
            </p>
            <p style=" text-align:center;font-size:15pt; line-height:115%; margin:0pt 0pt 10pt; orphans:0; text-align:center; text-indent:39.7pt; widows:0">
                <span style=" text-align:center;font-family:黑体; font-size:15pt; font-weight:normal">专&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 业</span>
                <span style="font-family:黑体; font-size:15pt; font-weight:normal; text-decoration:underline">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;无需填写&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>
            </p>
            <p style="font-size:15pt; line-height:115%; margin:0pt 0pt 10pt; orphans:0; text-align:center; text-indent:39.7pt; widows:0">
                <span style="font-family:黑体; font-size:15pt">姓&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 名</span>
                <span style="font-family:黑体; font-size:15pt; text-decoration:underline">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;无需填写&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span>

            </p>
            <p style="font-size:15pt; line-height:115%; margin:0pt 0pt 10pt; orphans:0; text-align:center; text-indent:39.7pt; widows:0">
                <span style="font-family:黑体; font-size:15pt; font-weight:normal">学&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 号</span>
                <span style="font-family:黑体; font-size:15pt; font-weight:normal;text-decoration:underline">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;无需填写&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>

            </p>
            <p style="font-size:15pt; line-height:115%; margin:0pt 0pt 10pt; orphans:0; text-align:center; text-indent:39.7pt; widows:0">
                <span style="font-family:黑体; font-size:15pt">指 导&nbsp; 教 师</span>
                <span style="font-family:黑体; font-size:15pt; text-decoration:underline">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;无需填写&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span>

            </p>
            <p style="font-size:15pt; line-height:115%; margin:0pt 0pt 10pt; orphans:0; text-align:center; text-indent:39.7pt; widows:0">
                <span style="font-family:黑体; font-size:15pt">完 成&nbsp; 时 间</span>
                <span style="font-family:宋体; font-size:15pt; text-decoration:underline"><input readonly="readonly" id="input1" name="openingReportTime" style="text-align:center;width:200pt" type="text"  value="${openingReport.openingReportTime}"/></span>

            </p>
            <p style="font-size:16pt; line-height:150%; margin:0pt 0pt 10pt; orphans:0; text-align:center; widows:0">
                <span style="font-family:'Times New Roman'; font-size:16pt; font-weight:bold">&nbsp;</span>
            </p>
            <p style="font-size:16pt; line-height:150%; margin:0pt 0pt 10pt; orphans:0; text-align:center; widows:0">
                <span style="font-family:'Times New Roman'; font-size:16pt; font-weight:bold">&nbsp;</span>
            </p>
            <p style="font-size:16pt; line-height:150%; margin:0pt 0pt 10pt; orphans:0; text-align:center; widows:0">
                <span style="font-family:'Times New Roman'; font-size:16pt; font-weight:bold">&nbsp;</span>
            </p>
            <p style="font-size:16pt; line-height:150%; margin:0pt 0pt 10pt; orphans:0; text-align:center; text-indent:104.5pt; widows:0">
                <span style="font-family:仿宋_GB2312; font-size:16pt; font-weight:bold">教务处 印</span>
            </p>
        </div>
        <p style="font-size:16pt; line-height:115%; margin:0pt 0pt 10pt">
            <br style="page-break-before:always; clear:both" />
        </p>
        <p style="font-size:16pt; line-height:150%; margin:0pt 0pt 10pt; orphans:0; text-align:center; widows:0">
            <span style="font-family:宋体; font-size:16pt; font-weight:bold">说&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 明</span>
        </p>
        <p style="font-size:14pt; line-height:150%; margin:0pt 0pt 10pt; orphans:0; text-indent:21pt; widows:0">
            <span style="font-family:仿宋_GB2312; font-size:14pt">1.根据商洛学院《</span>
            <span style="font-family:仿宋_GB2312; font-size:14pt">毕业论文(设计)工作管理规定》</span>
            <span style="font-family:仿宋_GB2312; font-size:14pt">，学生必须撰写</span>
            <span style="font-family:仿宋_GB2312; font-size:14pt">《毕业论文（设计）开题报告》</span>
            <span style="font-family:仿宋_GB2312; font-size:14pt">，由指导教师签署意见、系审查，学院教学副院长批准后实施。</span>
        </p>
        <p style="font-size:14pt; line-height:150%; margin:0pt 0pt 10pt; orphans:0; text-indent:21pt; widows:0">
            <span style="font-family:仿宋_GB2312; font-size:14pt">2.</span>
            <span style="font-family:仿宋_GB2312; font-size:14pt">开题报告是毕业论文（设计）答辩委员会对学生答辩资格审查的依据材料之一，学生应当在毕业论文（设计）工作前期完成。</span>
        </p>
        <p style="font-size:14pt; line-height:150%; margin:0pt 0pt 10pt; orphans:0; text-indent:21pt; widows:0">
            <span style="font-family:仿宋_GB2312; font-size:14pt">3.毕业论文（设计）开题报告各项内容要实事求是，逐条认真填写。其中的文字表达要明确、严谨，语言通顺。第一次出现缩写词，须注出全称。</span>
        </p>
        <p style="font-size:14pt; line-height:150%; margin:0pt 0pt 10pt; orphans:0; text-indent:21pt; widows:0">
            <span style="font-family:仿宋_GB2312; font-size:14pt">4.课题来源</span>
            <span style="font-family:仿宋_GB2312; font-size:14pt">：指导教师科研课题；有关单位委托课题；教师拟定；学生学术课题（含大学生创新创业训练计划项目、挑战杯等）；学生自拟（允许少量的自拟题目）；课题类型：理论研究类；实践研究类（主要指在实验、实习、工程实践和社会调查等社会实践中完成的论文或设计）。 </span>
        </p>
        <p style="font-size:14pt; line-height:150%; margin:0pt 0pt 10pt; orphans:0; text-indent:21pt; widows:0">
            <span style="font-family:仿宋_GB2312; font-size:14pt">5.开题报告内容统一采用宋体小四号，整页双面打印，左侧装订。</span>
        </p>
        <p style="font-size:14pt; line-height:115%; margin:0pt 0pt 10pt">
            <br style="page-break-before:always; clear:both" />
        </p>
        <p style="font-size:16pt; line-height:115%; margin:0pt 0pt 10pt; orphans:0; text-align:center; widows:0">
            <span style="font-family:华文中宋; font-size:16pt; font-weight:bold">商洛学院本科生毕业设计(论文)开题报告</span>
        </p>
        <table cellspacing="0" cellpadding="0" style=" text-align:center;border-collapse:collapse; margin-left:0pt; width:447.5pt">
            <tbody style="text-align:center" >
            <tr style="height:29.85pt">
                <td style="border-bottom-color:#000000; border-bottom-style:solid; border-bottom-width:0.75pt; border-left-color:#000000; border-left-style:solid; border-left-width:1pt; border-right-color:#000000; border-right-style:solid; border-right-width:0.75pt; border-top-color:#000000; border-top-style:solid; border-top-width:0.75pt; padding-left:4.9pt; padding-right:5.03pt; vertical-align:middle; width:48.9pt">
                    <p style="font-size:12pt; line-height:125%; margin:0pt 0pt 0pt; orphans:0; text-align:center; widows:0">
                        <span style="font-family:宋体; font-size:12pt">题目</span>
                    </p>
                </td>
                <td colspan="6" style="border-bottom-color:#000000; border-bottom-style:solid; border-bottom-width:0.75pt; border-left-color:#000000; border-left-style:solid; border-left-width:0.75pt; border-right-color:#000000; border-right-style:solid; border-right-width:1pt; border-top-color:#000000; border-top-style:solid; border-top-width:1pt; padding-left:5.03pt; padding-right:4.9pt; vertical-align:middle; width:376pt">
                    <p style="font-size:12pt; line-height:125%; margin:0pt 0pt 0pt; orphans:0; text-align:center; text-indent:21pt; widows:0">
                        <span style="font-family:'Times New Roman'; font-size:12pt"><input readonly="readonly" style="text-align:center; width:360pt" name="openingReportTitle" type="text"  value="${openingReport.openingReportTitle}"/></span>
                    </p>
                </td>
            </tr>
            <tr style="height:30.75pt">
                <td style="border-bottom-color:#000000; border-bottom-style:solid; border-bottom-width:0.75pt; border-left-color:#000000; border-left-style:solid; border-left-width:1pt; border-right-color:#000000; border-right-style:solid; border-right-width:0.75pt; border-top-color:#000000; border-top-style:solid; border-top-width:0.75pt; padding-left:4.9pt; padding-right:5.03pt; vertical-align:middle; width:70pt">
                    <p style="font-size:12pt; line-height:125%; margin:0pt 0pt 0pt; orphans:0; text-align:center; widows:0">
                        <span style="font-family:宋体; font-size:12pt">学生姓名</span>
                    </p>
                </td>
                <td colspan="2" style="border-bottom-color:#000000; border-bottom-style:solid; border-bottom-width:0.75pt; border-left-color:#000000; border-left-style:solid; border-left-width:0.75pt; border-right-color:#000000; border-right-style:solid; border-right-width:0.75pt; border-top-color:#000000; border-top-style:solid; border-top-width:0.75pt; padding-left:5.03pt; padding-right:5.03pt; vertical-align:middle; width:51.2pt">
                    <p style="font-size:12pt; line-height:125%; margin:0pt 0pt 0pt; orphans:0; text-align:center; widows:0">
                        <span style="font-family:'Times New Roman'; font-size:12pt"><input readonly="readonly"  name="openingReportName" type="text" style="width:51pt"  value="${openingReport.openingReportName}"/></span>
                    </p>
                </td>
                <td style="border-bottom-color:#000000; border-bottom-style:solid; border-bottom-width:0.75pt; border-left-color:#000000; border-left-style:solid; border-left-width:0.75pt; border-right-color:#000000; border-right-style:solid; border-right-width:0.75pt; border-top-color:#000000; border-top-style:solid; border-top-width:0.75pt; padding-left:5.03pt; padding-right:5.03pt; vertical-align:middle; width:53.5pt">
                    <p style="font-size:12pt; line-height:150%; margin:0pt 0pt 0pt; orphans:0; text-align:center; widows:0">
                        <span style="font-family:宋体; font-size:12pt">学 号</span>
                    </p>
                </td>
                <td style="border-bottom-color:#000000; border-bottom-style:solid; border-bottom-width:0.75pt; border-left-color:#000000; border-left-style:solid; border-left-width:0.75pt; border-right-color:#000000; border-right-style:solid; border-right-width:0.75pt; border-top-color:#000000; border-top-style:solid; border-top-width:0.75pt; padding-left:5.03pt; padding-right:5.03pt; vertical-align:middle; width:62.65pt">
                    <p style="font-size:12pt; line-height:125%; margin:0pt 0pt 0pt; orphans:0; text-align:center; widows:0">
                        <span style="font-family:'Times New Roman'; font-size:12pt"><input readonly="readonly"  name="openingReportNumber" type="text" style="width:60pt" value="${openingReport.openingReportNumber}" /></span>
                    </p>
                </td>
                <td style="border-bottom-color:#000000; border-bottom-style:solid; border-bottom-width:0.75pt; border-left-color:#000000; border-left-style:solid; border-left-width:0.75pt; border-right-color:#000000; border-right-style:solid; border-right-width:0.75pt; border-top-color:#000000; border-top-style:solid; border-top-width:0.75pt; padding-left:5.03pt; padding-right:5.03pt; vertical-align:middle; width:44.3pt">
                    <p style="font-size:12pt; line-height:125%; margin:0pt 0pt 0pt; orphans:0; text-align:center; widows:0">
                        <span style="font-family:宋体; font-size:12pt">专 业</span>
                    </p>
                </td>
                <td style="border-bottom-color:#000000; border-bottom-style:solid; border-bottom-width:0.75pt; border-left-color:#000000; border-left-style:solid; border-left-width:0.75pt; border-right-color:#000000; border-right-style:solid; border-right-width:1pt; border-top-color:#000000; border-top-style:solid; border-top-width:0.75pt; padding-left:5.03pt; padding-right:4.9pt; vertical-align:middle; width:120.15pt">
                    <p style="font-size:12pt; line-height:125%; margin:0pt 0pt 0pt; orphans:0; text-align:center; widows:0">
                        <span style="font-family:宋体; font-size:12pt"><input readonly="readonly"  name="openingReportMajor" type="text" style="width:120pt" value="${openingReport.openingReportMajor}" /></span>
                    </p>
                </td>
            </tr>
            <tr style="height:30.6pt">
                <td style="border-bottom-color:#000000; border-bottom-style:solid; border-bottom-width:0.75pt; border-left-color:#000000; border-left-style:solid; border-left-width:1pt; border-right-color:#000000; border-right-style:solid; border-right-width:0.75pt; border-top-color:#000000; border-top-style:solid; border-top-width:0.75pt; padding-left:4.9pt; padding-right:5.03pt; vertical-align:middle; width:48.9pt">
                    <p style="font-size:12pt; line-height:125%; margin:0pt 0pt 0pt; orphans:0; text-align:center; widows:0">
                        <span style="font-family:宋体; font-size:12pt">指导教师</span>
                    </p>
                </td>
                <td colspan="2" style="border-bottom-color:#000000; border-bottom-style:solid; border-bottom-width:0.75pt; border-left-color:#000000; border-left-style:solid; border-left-width:0.75pt; border-right-color:#000000; border-right-style:solid; border-right-width:0.75pt; border-top-color:#000000; border-top-style:solid; border-top-width:0.75pt; padding-left:5.03pt; padding-right:5.03pt; vertical-align:middle; width:51.2pt">
                    <p style="font-size:12pt; line-height:125%; margin:0pt 0pt 0pt; orphans:0; text-align:center; widows:0">
                        <span style="font-family:宋体; font-size:12pt"><input readonly="readonly" name="openingReportTeacher" style="width:50pt" type="text" value="${openingReport.openingReportTeacher}"/></span>
                    </p>
                </td>
                <td style="border-bottom-color:#000000; border-bottom-style:solid; border-bottom-width:0.75pt; border-left-color:#000000; border-left-style:solid; border-left-width:0.75pt; border-right-color:#000000; border-right-style:solid; border-right-width:0.75pt; border-top-color:#000000; border-top-style:solid; border-top-width:0.75pt; padding-left:5.03pt; padding-right:5.03pt; vertical-align:middle; width:53.5pt">
                    <p style="font-size:12pt; line-height:150%; margin:0pt 0pt 0pt; orphans:0; text-align:center; widows:0">
                        <span style="font-family:宋体; font-size:12pt">职 称</span>
                    </p>
                </td>
                <td style="border-bottom-color:#000000; border-bottom-style:solid; border-bottom-width:0.75pt; border-left-color:#000000; border-left-style:solid; border-left-width:0.75pt; border-right-color:#000000; border-right-style:solid; border-right-width:0.75pt; border-top-color:#000000; border-top-style:solid; border-top-width:0.75pt; padding-left:5.03pt; padding-right:5.03pt; vertical-align:middle; width:62.65pt">
                    <p style="font-size:12pt; line-height:125%; margin:0pt 0pt 0pt; orphans:0; text-align:center; widows:0">
                        <span style="font-family:宋体; font-size:12pt"><input readonly="readonly" name="openingReportJob_title" style="width:60pt" type="text" value="${openingReport.openingReportJob_title}"/></span>
                    </p>
                </td>
                <td style="border-bottom-color:#000000; border-bottom-style:solid; border-bottom-width:0.75pt; border-left-color:#000000; border-left-style:solid; border-left-width:0.75pt; border-right-color:#000000; border-right-style:solid; border-right-width:0.75pt; border-top-color:#000000; border-top-style:solid; border-top-width:0.75pt; padding-left:5.03pt; padding-right:5.03pt; vertical-align:middle; width:44.3pt">
                    <p style="font-size:12pt; line-height:125%; margin:0pt 0pt 0pt; orphans:0; text-align:center; widows:0">
                        <span style="font-family:宋体; font-size:12pt">所在</span>
                    </p>
                    <p style="font-size:12pt; line-height:125%; margin:0pt 0pt 0pt; orphans:0; text-align:center; widows:0">
                        <span style="font-family:宋体; font-size:12pt">学院</span>
                    </p>
                </td>
                <td style="border-bottom-color:#000000; border-bottom-style:solid; border-bottom-width:0.75pt; border-left-color:#000000; border-left-style:solid; border-left-width:0.75pt; border-right-color:#000000; border-right-style:solid; border-right-width:1pt; border-top-color:#000000; border-top-style:solid; border-top-width:0.75pt; padding-left:5.03pt; padding-right:4.9pt; vertical-align:middle; width:121.15pt">
                    <p style="font-size:12pt; line-height:125%; margin:0pt 0pt 0pt; orphans:0; text-align:center; widows:0">
                        <span style="font-family:宋体; font-size:12pt"><input readonly="readonly" name="openingReportFaculty" style="width:120pt" type="text" value="${openingReport.openingReportFaculty}"/></span>
                    </p>
                </td>
            </tr>
            <tr style="height:30.6pt">
                <td style="border-bottom-color:#000000; border-bottom-style:solid; border-bottom-width:0.75pt; border-left-color:#000000; border-left-style:solid; border-left-width:1pt; border-right-color:#000000; border-right-style:solid; border-right-width:0.75pt; border-top-color:#000000; border-top-style:solid; border-top-width:0.75pt; padding-left:4.9pt; padding-right:5.03pt; vertical-align:middle; width:48.9pt">
                    <p style="font-size:12pt; line-height:125%; margin:0pt 0pt 0pt; orphans:0; text-align:center; widows:0">
                        <span style="font-family:宋体; font-size:12pt">课题来源</span>
                    </p>
                </td>
                <td colspan="4" style="border-bottom-color:#000000; border-bottom-style:solid; border-bottom-width:0.75pt; border-left-color:#000000; border-left-style:solid; border-left-width:0.75pt; border-right-color:#000000; border-right-style:solid; border-right-width:0.75pt; border-top-color:#000000; border-top-style:solid; border-top-width:0.75pt; padding-left:5.03pt; padding-right:5.03pt; vertical-align:middle; width:188.95pt">
                    <p style="font-size:12pt; line-height:125%; margin:0pt 0pt 0pt; orphans:0; text-align:center; text-indent:21pt; widows:0">
                        <span style="color:#ff0000; font-family:宋体; font-size:12pt"><input readonly="readonly"   name="openingReportSource" style="width:180pt" type="text" placeholder="按上页说明中的填写"  value="${openingReport.openingReportSource}"/></span>
                    </p>
                </td>
                <td style="border-bottom-color:#000000; border-bottom-style:solid; border-bottom-width:0.75pt; border-left-color:#000000; border-left-style:solid; border-left-width:0.75pt; border-right-color:#000000; border-right-style:solid; border-right-width:0.75pt; border-top-color:#000000; border-top-style:solid; border-top-width:0.75pt; padding-left:5.03pt; padding-right:5.03pt; vertical-align:middle; width:44.3pt">
                    <p style="font-size:12pt; line-height:125%; margin:0pt 0pt 0pt; orphans:0; text-align:center; widows:0">
                        <span style="font-family:宋体; font-size:12pt">课题</span>
                    </p>
                    <p style="font-size:12pt; line-height:125%; margin:0pt 0pt 0pt; orphans:0; text-align:center; widows:0">
                        <span style="font-family:宋体; font-size:12pt">类型</span>
                    </p>
                </td>
                <td style="border-bottom-color:#000000; border-bottom-style:solid; border-bottom-width:0.75pt; border-left-color:#000000; border-left-style:solid; border-left-width:0.75pt; border-right-color:#000000; border-right-style:solid; border-right-width:1pt; border-top-color:#000000; border-top-style:solid; border-top-width:0.75pt; padding-left:5.03pt; padding-right:4.9pt; vertical-align:middle; width:121.15pt">
                    <p style="font-size:12pt; line-height:125%; margin:0pt 0pt 0pt; orphans:0; text-align:center; widows:0">
                        <span style="color:#ff0000; font-family:宋体; font-size:12pt"><input readonly="readonly"  name="openingReportType" style="width:120pt;" type="text" placeholder="按上页说明中的填写" value="${openingReport.openingReportType}"/></span>
                    </p>
                </td>
            </tr>
            <tr style="height:107.45pt">
                <td colspan="7" style="border-bottom-color:#000000; border-bottom-style:solid; border-bottom-width:1pt; border-left-color:#000000; border-left-style:solid; border-left-width:1pt; border-right-color:#000000; border-right-style:solid; border-right-width:0.75pt; border-top-color:#000000; border-top-style:solid; border-top-width:0.75pt; padding-left:4.9pt; padding-right:4.9pt; vertical-align:top; width:435.7pt">
                    <p style="font-size:12pt; line-height:125%; margin:7.8pt 0pt 10pt; orphans:0; text-align:justify; widows:0">
                        <span style="font-family:宋体; font-size:12pt">1.研究的目的和意义</span>
                    </p>
                    <p style="font-size:12pt; line-height:20pt; margin:0pt 0pt 10pt; orphans:0; text-align:justify; text-indent:21pt; widows:0"></p>
                    <textarea readonly="readonly" placeholder="（结合文献综述，阐述为什么要进行该课题的研究，达到什么结果或取得什么效果，含理论、技术、应用以及经济、社会价值）" style="width:430pt" id="textarea1" class="textarea1" name="openingReportSignificance" rows="1"> ${openingReport.openingReportSignificance}</textarea>

                </td>
            </tr>
            <tr style="height:100pt">
                <td colspan="7" style="border-bottom-color:#000000; border-bottom-style:solid; border-bottom-width:1pt; border-left-color:#000000; border-left-style:solid; border-left-width:1pt; border-right-color:#000000; border-right-style:solid; border-right-width:1pt; border-top-color:#000000; border-top-style:solid; border-top-width:1pt; padding-left:4.9pt; padding-right:4.9pt; vertical-align:top; width:435.7pt">
                    <p style="font-size:12pt; line-height:125%; margin:7.8pt 0pt 10pt; orphans:0; text-align:justify; widows:0">
                        <span style="font-family:宋体; font-size:12pt">2.国内外研究现状</span>
                    </p>
                    <textarea readonly="readonly" placeholder="（国内外本课题研究现状及进展情况，可附页.请分别从国外研究现状和国内研究现状进行阐述）" style="width:430pt" id="textarea2" class="textarea2" name="openingReportStatus" rows="1">${openingReport.openingReportStatus}</textarea>

                </td>
            </tr>
            <tr style="height:100pt">
                <td colspan="7" style="border-bottom-color:#000000; border-bottom-style:solid; border-bottom-width:1pt; border-left-color:#000000; border-left-style:solid; border-left-width:1pt; border-right-color:#000000; border-right-style:solid; border-right-width:1pt; border-top-color:#000000; border-top-style:solid; border-top-width:1pt; padding-left:4.9pt; padding-right:4.9pt; vertical-align:top; width:435.7pt">
                    <p style="font-size:12pt; line-height:125%; margin:7.8pt 0pt 10pt; orphans:0; text-align:justify; widows:0">
                        <span style="font-family:宋体; font-size:12pt">3.选题研究的内容</span>
                    </p>
                    <textarea readonly="readonly" placeholder="（在毕业论文（设计）内容的基础上，说明其中须进行研究的具体理论、技术内容等）" style="width:430pt" id="textarea3" class="textarea3" name="openingReportContent" rows="1">${openingReport.openingReportContent}</textarea>

                    <p style="font-size:12pt; line-height:115%; margin:0pt 0pt 10pt; orphans:0; text-align:justify; text-indent:21pt; widows:0">
                        <span style="font-family:宋体; font-size:12pt">&nbsp;</span>
                    </p>
                </td>
            </tr>
            <tr style="height:100pt">
                <td colspan="7" style="border-bottom-color:#000000; border-bottom-style:solid; border-bottom-width:1pt; border-left-color:#000000; border-left-style:solid; border-left-width:1pt; border-right-color:#000000; border-right-style:solid; border-right-width:1pt; border-top-color:#000000; border-top-style:solid; border-top-width:1pt; padding-left:4.9pt; padding-right:4.9pt; vertical-align:top; width:435.7pt">
                    <p style="font-size:12pt; line-height:125%; margin:7.8pt 0pt 10pt; orphans:0; text-align:justify; widows:0">
                        <span style="font-family:宋体; font-size:12pt">4.选题研究的技术路线、研究方法和要解决的主要问题：</span>
                    </p>

                    <textarea readonly="readonly" placeholder="（请从技术路线、研究方法、要解决的主要问题三方面进行阐述）" style="width:430pt" id="textarea4" class="textarea4" name="openingReportTechnology" rows="1">${openingReport.openingReportTechnology}</textarea>

                </td>
            </tr>
            <tr style="height:84.7pt">
                <td colspan="7" style="border-bottom-color:#000000; border-bottom-style:solid; border-bottom-width:0.75pt; border-left-color:#000000; border-left-style:solid; border-left-width:1pt; border-right-color:#000000; border-right-style:solid; border-right-width:1pt; border-top-color:#000000; border-top-style:solid; border-top-width:1pt; padding-left:4.9pt; padding-right:4.9pt; vertical-align:top; width:435.7pt">
                    <p style="font-size:12pt; line-height:125%; margin:7.8pt 0pt 10pt; orphans:0; text-align:justify; widows:0">
                        <span style="font-family:宋体; font-size:12pt">5.研究进度安排：</span>
                    </p>
                    <textarea readonly="readonly" style="width:430pt" id="textarea5" class="textarea5" name="openingReportStep" rows="1">${openingReport.openingReportStep}</textarea>

                </td>
            </tr>
            <tr style="height:100pt">
                <td height="89" colspan="7" style="border-bottom-color:#000000; border-bottom-style:solid; border-bottom-width:1pt; border-left-color:#000000; border-left-style:solid; border-left-width:1pt; border-right-color:#000000; border-right-style:solid; border-right-width:1pt; border-top-color:#000000; border-top-style:solid; border-top-width:1pt; padding-left:4.9pt; padding-right:4.9pt; vertical-align:top; width:435.7pt">
                    <p style="font-size:12pt; line-height:125%; margin:7.8pt 0pt 10pt; orphans:0; text-align:justify; widows:0">
                        <span style="font-family:宋体; font-size:12pt">6.主要参考文献</span>
                    </p>
                    <textarea readonly="readonly" placeholder="（参考文献的格式参看毕业设计撰写格式说明）" style="width:430pt" id="textarea6" class="textarea6" name="openingReportLiterature" rows="1">${openingReport.openingReportLiterature}</textarea>

                </td>
            </tr>
            <tr style="height:66.15pt">
                <td colspan="2" style="border-bottom-color:#000000; border-bottom-style:solid; border-bottom-width:0.75pt; border-left-color:#000000; border-left-style:solid; border-left-width:1pt; border-right-color:#000000; border-right-style:solid; border-right-width:0.75pt; border-top-color:#000000; border-top-style:solid; border-top-width:0.75pt; padding-left:4.9pt; padding-right:5.03pt; vertical-align:middle; width:62.85pt">
                    <p style="font-size:12pt; line-height:115%; margin:0pt 0pt 10pt; orphans:0; text-align:center; widows:0">
                        <span style="font-family:宋体; font-size:12pt">指导教师</span>
                    </p>
                    <p style="font-size:12pt; line-height:115%; margin:0pt 0pt 10pt; orphans:0; text-align:center; widows:0">
                        <span style="font-family:宋体; font-size:12pt">意&nbsp; 见</span>
                    </p>
                </td>
                <td colspan="5" style="border-bottom-color:#000000; border-bottom-style:solid; border-bottom-width:0.75pt; border-left-color:#000000; border-left-style:solid; border-left-width:0.75pt; border-right-color:#000000; border-right-style:solid; border-right-width:1pt; border-top-color:#000000; border-top-style:solid; border-top-width:0.75pt; padding-left:5.03pt; padding-right:4.9pt; vertical-align:bottom; width:362.05pt">
                    <p style="font-size:12pt; line-height:115%; margin:0pt 0pt 10pt; orphans:0; widows:0">
                        <span style="font-family:宋体; font-size:12pt">&nbsp;</span>
                    </p>
                    <textarea readonly="readonly"  style="width:430pt" id="textarea7" class="textarea7" name="openingReportOpinion1" rows="1">${openingReport.openingReportOpinion1}</textarea>

                    <p style="font-size:12pt; line-height:115%; margin:0pt 0pt 7.8pt; orphans:0; text-align:justify; text-indent:183.75pt; widows:0">
                        <span style="font-family:宋体; font-size:12pt">指导教师签名：</span>
                    </p>
                    <p style="font-size:12pt; line-height:115%; margin:0pt 0pt 7.8pt; orphans:0; text-align:justify; text-indent:221pt; widows:0">
                        <span style="font-family:宋体; font-size:12pt">年&nbsp;&nbsp; 月&nbsp;&nbsp; 日</span>
                    </p>
                </td>
            </tr>
            <tr style="height:62.1pt">
                <td colspan="2" style="border-bottom-color:#000000; border-bottom-style:solid; border-bottom-width:0.75pt; border-left-color:#000000; border-left-style:solid; border-left-width:1pt; border-right-color:#000000; border-right-style:solid; border-right-width:0.75pt; border-top-color:#000000; border-top-style:solid; border-top-width:0.75pt; padding-left:4.9pt; padding-right:5.03pt; vertical-align:middle; width:62.85pt">
                    <p style="font-size:12pt; line-height:115%; margin:0pt 0pt 10pt; orphans:0; text-align:center; widows:0">
                        <span style="font-family:宋体; font-size:12pt">所在系</span>
                    </p>
                    <p style="font-size:12pt; line-height:115%; margin:0pt 0pt 10pt; orphans:0; text-align:center; widows:0">
                        <span style="font-family:宋体; font-size:12pt">意见</span>
                    </p>
                </td>
                <td colspan="5" style="border-bottom-color:#000000; border-bottom-style:solid; border-bottom-width:0.75pt; border-left-color:#000000; border-left-style:solid; border-left-width:0.75pt; border-right-color:#000000; border-right-style:solid; border-right-width:1pt; border-top-color:#000000; border-top-style:solid; border-top-width:0.75pt; padding-left:5.03pt; padding-right:4.9pt; vertical-align:middle; width:362.05pt">
                    <p style="font-size:12pt; line-height:115%; margin:0pt 0pt 10pt; orphans:0; text-align:justify; widows:0">
                        <span style="font-family:宋体; font-size:12pt; font-weight:bold">&nbsp;</span>
                    </p>
                    <textarea readonly="readonly" style="width:430pt" id="textarea8" class="textarea8" name="openingReportOpinion2" rows="1">${openingReport.openingReportOpinion2}</textarea>

                    <p style="font-size:12pt; line-height:115%; margin:0pt 0pt 7.8pt; orphans:0; text-align:justify; text-indent:183.75pt; widows:0">
                        <span style="font-family:宋体; font-size:12pt">系主任签名：</span>
                    </p>
                    <p style="font-size:12pt; line-height:115%; margin:0pt 0pt 7.8pt; orphans:0; text-indent:221pt; widows:0">
                        <span style="font-family:宋体; font-size:12pt">年&nbsp;&nbsp; 月&nbsp;&nbsp; 日</span>
                    </p>
                </td>
            </tr>
            <tr style="height:69.1pt">
                <td colspan="2" style="border-bottom-color:#000000; border-bottom-style:solid; border-bottom-width:1pt; border-left-color:#000000; border-left-style:solid; border-left-width:1pt; border-right-color:#000000; border-right-style:solid; border-right-width:0.75pt; border-top-color:#000000; border-top-style:solid; border-top-width:0.75pt; padding-left:4.9pt; padding-right:5.03pt; vertical-align:middle; width:62.85pt">
                    <p style="font-size:12pt; line-height:115%; margin:0pt 0pt 10pt; orphans:0; text-align:center; widows:0">
                        <span style="font-family:宋体; font-size:12pt">学院意见</span>
                    </p>
                </td>
                <td colspan="5" style="border-bottom-color:#000000; border-bottom-style:solid; border-bottom-width:1pt; border-left-color:#000000; border-left-style:solid; border-left-width:0.75pt; border-right-color:#000000; border-right-style:solid; border-right-width:1pt; border-top-color:#000000; border-top-style:solid; border-top-width:0.75pt; padding-left:5.03pt; padding-right:4.9pt; vertical-align:middle; width:362.05pt">
                    <p style="font-size:12pt; line-height:115%; margin:0pt 0pt 10pt; orphans:0; widows:0">
                        <span style="font-family:宋体; font-size:12pt">&nbsp;</span>
                    </p>
                    <textarea readonly="readonly" style="width:430pt" id="textarea9" class="textarea9" name="openingReportOpinion3" rows="1">${openingReport.openingReportOpinion3}</textarea>

                    <p style="font-size:12pt; line-height:115%; margin:0pt 0pt 7.8pt; orphans:0; text-align:center; widows:0">
                        <span style="font-family:宋体; font-size:12pt">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 教学副院长签名：</span>
                    </p>
                    <p style="font-size:12pt; line-height:115%; margin:0pt 0pt 7.8pt; orphans:0; text-indent:221pt; widows:0">
                        <span style="font-family:宋体; font-size:12pt; font-weight:normal">年&nbsp;&nbsp; 月&nbsp;&nbsp; 日</span>
                    </p>
                </td>
            </tr>
            <tr style="height:0pt">
                <td style="width:59.7pt; border:none"></td>
                <td style="width:13.95pt; border:none"></td>
                <td style="width:48.05pt; border:none"></td>
                <td style="width:64.3pt; border:none"></td>
                <td style="width:73.45pt; border:none"></td>
                <td style="width:55.1pt; border:none"></td>
                <td style="width:131.95pt; border:none"></td>
            </tr>
            </tbody>
        </table>
        <p style="font-size:10.5pt; line-height:115%; margin:0pt 0pt 10pt; orphans:0; widows:0">
            <span style="font-family:'Times New Roman'; font-size:10.5pt">&nbsp;</span>
        </p>
    </center>
    <p align="center">
        <input style="font-size: 16pt;" id="submit" type="submit" value="返回" onclick="lookReport()">
    </p>
</c:forEach>
</form>

<script type="text/javascript">
    function lookReport() {
        var form = document.forms[0];
        form.action = "<%=basePath %>openingReport/teaLookReport";
        form.method = "post";
        form.submit();

    }
</script>

</body>
</html>
