<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ page import="javax.print.DocFlavor" %>
<%@ page import="javax.swing.text.Document" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";

%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
    <base href="<%=basePath%>">

    <title>答辩申请表添加</title>
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
            background-color:#FFFFff;
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
        <span style="font-family:宋体; font-size:16pt; color:#000000">学号必须添加</span>
        <br />
        <span style="font-family:仿宋; font-size:16pt; color:#009">  &nbsp;&nbsp;表中的“内容提要”、“指导教师意见”中除首行外其余行若想达到缩进两个字的效果，只需缩进一个字即可！</span></div>
</div>
<br />
<form action="" method="post" name="userForm">
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
                            <span style="font-family:'Times New Roman'; font-size:12pt"><input name="applicationName" style="width:70pt" type="text"/></span>
                        </p>
                    </td>
                    <td width="66" style="border-bottom-color:#000000; border-bottom-style:solid; border-bottom-width:0.75pt; border-left-color:#000000; border-left-style:solid; border-left-width:0.75pt; border-right-color:#000000; border-right-style:solid; border-right-width:0.75pt; border-top-color:#000000; border-top-style:solid; border-top-width:0.75pt; padding-left:5.03pt; padding-right:5.03pt; vertical-align:middle; width:26.55pt">
                        <p style="font-size:12pt; line-height:115%; margin:0pt 0pt 0pt; orphans:0; text-align:center; widows:0">
                            <span style="font-family:宋体; font-size:12pt">专业</span>
                        </p>
                    </td>
                    <td width="143" style="border-bottom-color:#000000; border-bottom-style:solid; border-bottom-width:0.75pt; border-left-color:#000000; border-left-style:solid; border-left-width:0.75pt; border-right-color:#000000; border-right-style:solid; border-right-width:0.75pt; border-top-color:#000000; border-top-style:solid; border-top-width:0.75pt; padding-left:5.03pt; padding-right:5.03pt; vertical-align:middle; width:71.25pt">
                        <p style="font-size:12pt; line-height:115%; margin:0pt 0pt 0pt; orphans:0; text-align:center; widows:0">
                            <span style="font-family:宋体; font-size:12pt"><input name="applicationMajor" style="width:60pt" type="text"/>;</span>
                        </p>
                    </td>
                    <td width="79" style="border-bottom-color:#000000; border-bottom-style:solid; border-bottom-width:0.75pt; border-left-color:#000000; border-left-style:solid; border-left-width:0.75pt; border-right-color:#000000; border-right-style:solid; border-right-width:0.75pt; border-top-color:#000000; border-top-style:solid; border-top-width:0.75pt; padding-left:5.03pt; padding-right:5.03pt; vertical-align:middle; width:34.2pt">
                        <p style="font-size:12pt; line-height:115%; margin:0pt 0pt 0pt; orphans:0; text-align:center; widows:0">
                            <span style="font-family:宋体; font-size:12pt">学号</span>
                        </p>
                    </td>
                    <td width="175" style="border-bottom-color:#000000; border-bottom-style:solid; border-bottom-width:0.75pt; border-left-color:#000000; border-left-style:solid; border-left-width:0.75pt; border-right-color:#000000; border-right-style:solid; border-right-width:0.75pt; border-top-color:#000000; border-top-style:solid; border-top-width:0.75pt; padding-left:5.03pt; padding-right:5.03pt; vertical-align:middle; width:89pt">
                        <p style="font-size:12pt; line-height:115%; margin:0pt 0pt 0pt; orphans:0; text-align:center; widows:0">
                            <span style="font-family:'Times New Roman'; font-size:12pt"><input name="applicationNumber" style="width:70pt" type="text"/>;</span>
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
                            <span style="font-family:'Times New Roman'; font-size:12pt"><input name="applicationTitle" style="width:330pt" type="text"/></span>
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
                        <textarea id="text-adaption" class="text-adaption" name="applicationContent" rows="1"></textarea>
                        <script>
                            function $(id) {
                                return document.getElementById(id);
                            }

                            $("text-adaption").onkeyup = function() {
                                this.style.height = 'auto';
                                this.style.height = this.scrollHeight + "px";
                            }
                        </script>
                    </td>
                </tr>
                <tr style="height:80pt">
                    <td style="border-bottom-color:#000000; border-bottom-style:solid; border-bottom-width:0.75pt; border-left-color:#000000; border-left-style:solid; border-left-width:0.75pt; border-right-color:#000000; border-right-style:solid; border-right-width:0.75pt; border-top-color:#000000; border-top-style:solid; border-top-width:0.75pt; height:162.55pt; padding-left:5.03pt; padding-right:5.03pt; vertical-align:middle; width:46.5pt; writing-mode:tb-rl">
                        <p style="font-size:12pt; line-height:115%; margin:0pt 5.65pt 10pt; orphans:0; text-align:center; widows:0">
                            <span style="font-family:宋体; font-size:12pt; font-weight:bold">指导教师意见</span>
                        </p>
                    </td>
                    <td colspan="5" style="border-bottom-color:#000000; border-bottom-style:solid; border-bottom-width:0.75pt; border-left-color:#000000; border-left-style:solid; border-left-width:0.75pt; border-right-color:#000000; border-right-style:solid; border-right-width:0.75pt; border-top-color:#000000; border-top-style:solid; border-top-width:0.75pt; padding-left:5.03pt; padding-right:5.03pt; vertical-align:top; width:338.5pt">
                        <textarea id="Opinion" class="Opinion" name="applicationOpinion" rows="1"></textarea>
                        <script>
                            function $(id) {
                                return document.getElementById(id);
                            }

                            $("Opinion").onkeyup = function() {
                                this.style.height = 'auto';
                                this.style.height = this.scrollHeight + "px";
                            }
                        </script>

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
        <input style="font-size: 16pt" type="submit" value="提交" onclick="addApplication()">
    </p>
</form>

<script type="text/javascript">
    function addApplication() {
        var form = document.forms[0];
        form.action = "<%=basePath %>application/admAddApplication";
        form.method = "post";
        form.submit();
    }
</script>
</body>
</html>
