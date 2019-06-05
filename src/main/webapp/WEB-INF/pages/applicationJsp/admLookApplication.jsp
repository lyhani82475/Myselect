<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ page import="javax.print.DocFlavor" %>
<%@ page import="javax.swing.text.Document" %>
<%@ page import="com.slxy.www.domain.po.Application" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";

%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html id="htmlText">
<head>
    <base href="<%=basePath%>">


    <title>答辩申请表预览</title>
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

        #text-adaption,#Opinion {
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
<c:forEach var="application" items="${requestScope.get('list')}" varStatus="status" end="0">
    <center>
        <div id="div1">
            <p style="font-size:16pt; line-height:115%; margin:0pt 0pt 10pt; orphans:0; text-align:center; widows:0">
                <span style="font-family:华文中宋; font-size:16pt; font-weight:bold">商洛学院本科生毕业论文(设计)答辩申请表</span>
            </p>
            <table cellspacing="0" cellpadding="0" style=" text-align:center;border-collapse:collapse; margin-left:8.2pt; width:407.35pt">
                <tbody>
                <tr style="height:31.5pt">
                    <td width="73" style="border-bottom-color:#000000; border-bottom-style:solid; border-bottom-width:0.75pt; border-left-color:#000000; border-left-style:solid; border-left-width:0.75pt; border-right-color:#000000; border-right-style:solid; border-right-width:0.75pt; border-top-color:#000000; border-top-style:solid; border-top-width:0.75pt; padding-left:5.03pt; padding-right:5.03pt; vertical-align:middle; width:46.5pt">
                        <p style="font-size:12pt; line-height:115%; margin:0pt 0pt 0pt; orphans:0; text-align:center; widows:0">
                            <span style="font-family:宋体; font-size:12pt">姓名</span>
                        </p>
                    </td>
                    <td width="138" style="border-bottom-color:#000000; border-bottom-style:solid; border-bottom-width:0.75pt; border-left-color:#000000; border-left-style:solid; border-left-width:0.75pt; border-right-color:#000000; border-right-style:solid; border-right-width:0.75pt; border-top-color:#000000; border-top-style:solid; border-top-width:0.75pt; padding-left:5.03pt; padding-right:5.03pt; vertical-align:middle; width:74.3pt">
                        <p style="font-size:12pt; line-height:115%; margin:0pt 0pt 0pt; orphans:0; text-align:center; widows:0">
                            <span style="font-family:'Times New Roman'; font-size:12pt"><input readonly="readonly" name="applicationName" style="width:70pt" type="text" value="${application.applicationName}"/></span>
                        </p>
                    </td>
                    <td width="66" style="border-bottom-color:#000000; border-bottom-style:solid; border-bottom-width:0.75pt; border-left-color:#000000; border-left-style:solid; border-left-width:0.75pt; border-right-color:#000000; border-right-style:solid; border-right-width:0.75pt; border-top-color:#000000; border-top-style:solid; border-top-width:0.75pt; padding-left:5.03pt; padding-right:5.03pt; vertical-align:middle; width:26.55pt">
                        <p style="font-size:12pt; line-height:115%; margin:0pt 0pt 0pt; orphans:0; text-align:center; widows:0">
                            <span style="font-family:宋体; font-size:12pt">专业</span>
                        </p>
                    </td>
                    <td width="143" style="border-bottom-color:#000000; border-bottom-style:solid; border-bottom-width:0.75pt; border-left-color:#000000; border-left-style:solid; border-left-width:0.75pt; border-right-color:#000000; border-right-style:solid; border-right-width:0.75pt; border-top-color:#000000; border-top-style:solid; border-top-width:0.75pt; padding-left:5.03pt; padding-right:5.03pt; vertical-align:middle; width:71.25pt">
                        <p style="font-size:12pt; line-height:115%; margin:0pt 0pt 0pt; orphans:0; text-align:center; widows:0">
                            <span style="font-family:宋体; font-size:12pt"><input readonly="readonly" name="applicationMajor" style="width:60pt" type="text" value="${application.applicationMajor}"/></span>
                        </p>
                    </td>
                    <td width="79" style="border-bottom-color:#000000; border-bottom-style:solid; border-bottom-width:0.75pt; border-left-color:#000000; border-left-style:solid; border-left-width:0.75pt; border-right-color:#000000; border-right-style:solid; border-right-width:0.75pt; border-top-color:#000000; border-top-style:solid; border-top-width:0.75pt; padding-left:5.03pt; padding-right:5.03pt; vertical-align:middle; width:34.2pt">
                        <p style="font-size:12pt; line-height:115%; margin:0pt 0pt 0pt; orphans:0; text-align:center; widows:0">
                            <span style="font-family:宋体; font-size:12pt">学号</span>
                        </p>
                    </td>
                    <td width="175" style="border-bottom-color:#000000; border-bottom-style:solid; border-bottom-width:0.75pt; border-left-color:#000000; border-left-style:solid; border-left-width:0.75pt; border-right-color:#000000; border-right-style:solid; border-right-width:0.75pt; border-top-color:#000000; border-top-style:solid; border-top-width:0.75pt; padding-left:5.03pt; padding-right:5.03pt; vertical-align:middle; width:89pt">
                        <p style="font-size:12pt; line-height:115%; margin:0pt 0pt 0pt; orphans:0; text-align:center; widows:0">
                            <span style="font-family:'Times New Roman'; font-size:12pt"><input readonly="readonly" name="applicationNumber" style="width:70pt" type="text" value="${application.applicationNumber}"/></span>
                        </p>
                    </td>
                </tr>
                <tr style="height:34.05pt">
                    <td style="border-bottom-color:#000000; border-bottom-style:solid; border-bottom-width:0.75pt; border-left-color:#000000; border-left-style:solid; border-left-width:0.75pt; border-right-color:#000000; border-right-style:solid; border-right-width:0.75pt; border-top-color:#000000; border-top-style:solid; border-top-width:0.75pt; padding-left:5.03pt; padding-right:5.03pt; vertical-align:middle; width:46.5pt">
                        <p style="font-size:12pt; line-height:115%; margin:0pt 0pt 0pt; orphans:0; text-align:center; widows:0">
                            <span style="font-family:宋体; font-size:12pt">题目</span>
                        </p>
                    </td>
                    <td colspan="5" style="border-bottom-color:#000000; border-bottom-style:solid; border-bottom-width:0.75pt; border-left-color:#000000; border-left-style:solid; border-left-width:0.75pt; border-right-color:#000000; border-right-style:solid; border-right-width:0.75pt; border-top-color:#000000; border-top-style:solid; border-top-width:0.75pt; padding-left:5.03pt; padding-right:5.03pt; vertical-align:middle; width:338.5pt">
                        <p style="font-size:12pt; line-height:115%; margin:0pt 0pt 0pt; orphans:0; text-align:justify; widows:0">
                            <span style="font-family:'Times New Roman'; font-size:12pt"><input readonly="readonly" name="applicationTitle" style="width:330pt" type="text" value="${application.applicationTitle}"/></span>
                        </p>
                    </td>
                </tr>
                <tr style="height:100.15pt">
                    <td style="border-bottom-color:#000000; border-bottom-style:solid; border-bottom-width:0.75pt; border-left-color:#000000; border-left-style:solid; border-left-width:0.75pt; border-right-color:#000000; border-right-style:solid; border-right-width:0.75pt; border-top-color:#000000; border-top-style:solid; border-top-width:0.75pt; height:400.15pt; padding-left:5.03pt; padding-right:5.03pt; vertical-align:middle; width:46.5pt; writing-mode:tb-rl">
                        <p style="font-size:12pt; line-height:115%; margin:0pt 5.65pt 10pt; orphans:0; text-align:center; widows:0">
                            <span style="font-family:宋体; font-size:12pt; font-weight:bold">内 容 提 要</span>
                        </p>
                    </td>
                    <td colspan="5" style="border-bottom-color:#000000; border-bottom-style:solid; border-bottom-width:0.75pt; border-left-color:#000000; border-left-style:solid; border-left-width:0.75pt; border-right-color:#000000; border-right-style:solid; border-right-width:0.75pt; border-top-color:#000000; border-top-style:solid; border-top-width:0.75pt; padding-left:5.03pt; padding-right:5.03pt; vertical-align:top; width:338.5pt">
                        <textarea readonly="readonly" id="text-adaption" class="text-adaption" name="applicationContent" rows="1">${application.applicationContent}</textarea>
                    </td>
                </tr>
                <tr style="height:80pt">
                    <td style="border-bottom-color:#000000; border-bottom-style:solid; border-bottom-width:0.75pt; border-left-color:#000000; border-left-style:solid; border-left-width:0.75pt; border-right-color:#000000; border-right-style:solid; border-right-width:0.75pt; border-top-color:#000000; border-top-style:solid; border-top-width:0.75pt; height:162.55pt; padding-left:5.03pt; padding-right:5.03pt; vertical-align:middle; width:46.5pt; writing-mode:tb-rl">
                        <p style="font-size:12pt; line-height:115%; margin:0pt 5.65pt 10pt; orphans:0; text-align:center; widows:0">
                            <span style="font-family:宋体; font-size:12pt; font-weight:bold">指导教师意见</span>
                        </p>
                    </td>
                    <td colspan="5" style="border-bottom-color:#000000; border-bottom-style:solid; border-bottom-width:0.75pt; border-left-color:#000000; border-left-style:solid; border-left-width:0.75pt; border-right-color:#000000; border-right-style:solid; border-right-width:0.75pt; border-top-color:#000000; border-top-style:solid; border-top-width:0.75pt; padding-left:5.03pt; padding-right:5.03pt; vertical-align:top; width:338.5pt">
                        <textarea readonly="readonly" id="Opinion" class="Opinion" name="applicationOpinion" rows="1">${application.applicationOpinion}</textarea>
                        <p style="font-size:12pt; line-height:115%; margin:0pt 0pt 10pt; orphans:0; text-align:center; widows:0">
                            <span style="font-family:宋体; font-size:12pt; font-weight:bold">&nbsp;</span>
                        </p>
                        </p>
                        <p style="font-size:12pt; line-height:115%; margin:0pt 0pt 10pt; orphans:0; text-align:center; widows:0">
                            <span style="font-family:宋体; font-size:12pt; font-weight:bold">&nbsp;</span>
                        </p>
                        </p>
                        <p style="font-size:12pt; line-height:115%; margin:0pt 0pt 10pt; orphans:0; text-align:center; widows:0">
                            <span style="font-family:宋体; font-size:12pt; font-weight:bold">&nbsp;</span>
                        </p>
                        <p style="font-size:12pt; line-height:115%; margin:0pt 0pt 10pt; orphans:0; text-align:center; widows:0">
                            <span style="font-family:宋体; font-size:12pt; font-weight:bold">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span>
                            <span style="font-family:宋体; font-size:12pt">指导教师（签名）：</span>
                        </p>
                        <p style="font-size:12pt; line-height:115%; margin:0pt 0pt 10pt; orphans:0; text-align:center; text-indent:184.4pt; widows:0">
                            <span style="font-family:宋体; font-size:12pt; font-weight:normal">年&nbsp; </span>
                            <span style="font-family:宋体; font-size:12pt; font-weight:normal">&nbsp; </span>
                            <span style="font-family:宋体; font-size:12pt; font-weight:normal">月&nbsp; </span>
                            <span style="font-family:宋体; font-size:12pt; font-weight:normal">&nbsp; </span>
                            <span style="font-family:宋体; font-size:12pt; font-weight:normal">日</span>
                        </p>
                    </td>
                </tr>
                <tr style="height:0pt">
                    <td style="width:57.3pt; border:none"></td>
                    <td style="width:85.1pt; border:none"></td>
                    <td style="width:37.35pt; border:none"></td>
                    <td style="width:82.05pt; border:none"></td>
                    <td style="width:45pt; border:none"></td>
                    <td style="width:99.8pt; border:none"></td>
                </tr>
                </tbody>
            </table>
            <p style="font-size:10.5pt; line-height:115%; margin:0pt 0pt 10pt; orphans:0; text-align:justify; widows:0">
                <span style="font-family:Calibri; font-size:10.5pt">&nbsp;</span>
            </p>
        </div>
    </center>
    <p align="center">
        <input style="font-size: 16pt;" id="submit" type="submit" value="返回" onclick="lookApplication()">
    </p>
</c:forEach>
</form>

<script type="text/javascript">
    function lookApplication() {
        var form = document.forms[0];
        form.action = "<%=basePath %>application/admLookApplication";
        form.method = "post";
        form.submit();

    }
</script>

</body>
</html>
