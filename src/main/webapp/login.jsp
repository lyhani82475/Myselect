<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<meta charset="utf-8">
	<!-- Title and other stuffs -->
	<title>后台登陆页面</title>
	<%--<%@include file="/WEB-INF/pages/common/macTopCommon.jsp" %>--%>

	<!-- Stylesheets -->
	<link href="${ctx}/resources/style/bootstrap.css" rel="stylesheet">
	<!-- Font awesome icon -->
	<link rel="stylesheet" href="${ctx}/resources/style/font-awesome.css">
	<!-- jQuery UI -->
	<%--<link rel="stylesheet" href="${ctx}/resources/style/jquery-ui.css">--%>
	<!-- Calendar -->
	<%--<link rel="stylesheet" href="${ctx}/resources/style/fullcalendar.css">--%>
	<!-- prettyPhoto -->
	<link rel="stylesheet" href="${ctx}/resources/style/prettyPhoto.css">
	<!-- Star rating -->
	<%--<link rel="stylesheet" href="${ctx}/resources/style/rateit.css">--%>
	<!-- Date picker -->
	<%--<link rel="stylesheet" href="${ctx}/resources/style/bootstrap-datetimepicker.min.css">--%>

	<link href="${ctx}/resources/jquery/bootstrap-datetimepicker.min.css" rel="stylesheet" media="screen">
	<%--<link rel="stylesheet" href="https://apps.bdimg.com/libs/bootstrap/3.2.0/css/bootstrap.min.css">--%>
	<!-- CLEditor -->
	<%--<link rel="stylesheet" href="${ctx}/resources/style/jquery.cleditor.css">--%>


	<!-- Uniform -->
	<%--<link rel="stylesheet" href="${ctx}/resources/style/uniform.default.css">--%>


	<!-- Bootstrap toggle -->
	<%--<link rel="stylesheet" href="${ctx}/resources/style/bootstrap-switch.css">--%>
	<!-- Main stylesheet -->
	<link href="${ctx}/resources/style/style.css" rel="stylesheet">
	<!-- Widgets stylesheet -->
	<%--<link href="${ctx}/resources/style/widgets.css" rel="stylesheet">--%>

</head>


<body>

<!-- Form area -->
<div class="admin-form">
	<div class="container">

		<div class="row">
			<div class="col-md-12">
				<!-- Widget starts -->
				<div class="widget worange">
					<!-- Widget head -->
					<div class="widget-head">
						<i class="icon-lock"></i> 登录
					</div>

					<div class="widget-content">
						<div class="padd">
							<!-- Login form -->
							<form class="form-horizontal" action="/selectUserBase/login" method="post">
								<!-- Email -->
								<div class="form-group">
									<label class="control-label col-lg-3" for="inputEmail">账号</label>
									<div class="col-lg-9">
										<input type="text" class="form-control" name="userName" id="inputEmail" placeholder="Email">
									</div>
								</div>
								<!-- Password -->
								<div class="form-group">
									<label class="control-label col-lg-3" for="inputPassword">密码</label>
									<div class="col-lg-9">
										<input type="password" class="form-control" name="userPassword" id="inputPassword" placeholder="Password">
									</div>
								</div>
								<!-- Remember me checkbox and sign in button -->
								<div class="form-group">
									<div class="col-lg-9 col-lg-offset-3">
										<div class="checkbox">
											<label>
												<input type="checkbox"> 记住我
											</label>
										</div>
									</div>
								</div>
								<div class="col-lg-9 col-lg-offset-2">
									<button type="submit" class="btn btn-danger">登录</button>
									<button type="reset" class="btn btn-default">重填</button>
								</div>
								<br />
							</form>

						</div>
					</div>

					<div class="widget-foot">
						Not Registred? <a href="#">Register here</a>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>



<!-- JS -->
<script src="resources/js/jquery.js"></script>
<script src="resources/js/bootstrap.js"></script>
</body>
</html>