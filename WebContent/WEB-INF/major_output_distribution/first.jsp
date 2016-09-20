<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title></title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/Css/bootstrap.css" />
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/Css/bootstrap-responsive.css" />
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/Css/style.css" />
<script type="text/javascript"
	src="<%=request.getContextPath()%>/Js/jquery.js"></script>
<script type="text/javascript"
	src="<%=request.getContextPath()%>/Js/bootstrap.js"></script>
<script type="text/javascript"
	src="<%=request.getContextPath()%>/Js/ckform.js"></script>
<script type="text/javascript"
	src="<%=request.getContextPath()%>/Js/common.js"></script>

<style type="text/css">
body {
	padding-bottom: 40px;
}

.sidebar-nav {
	padding: 9px 0;
}

@media ( max-width : 980px) {
	/* Enable use of floated navbar text */
	.navbar-text.pull-right {
		float: none;
		padding-left: 5px;
		padding-right: 5px;
	}
}
</style>
</head>
<body>
	<form class="form-inline definewidth m20" method="post">
		项目名称： <input type="text" name="project_name" id="project_name"
			class="abc input-default">&nbsp;&nbsp;
		<br /> <br />
		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		<button type="button" class="btn btn-primary" id="confirm">确认</button>
		&nbsp;&nbsp;
		<button type="button" class="btn btn-primary" id="reback">回退</button>
		&nbsp;&nbsp;
		<button type="button" class="btn btn-primary" id="search">查询</button>
		&nbsp;&nbsp;

	</form>
	<table class="table table-bordered table-hover definewidth m10">
		<thead>
			<tr>
				<th>项目ID</th>
				<th>项目名称</th>
				<th>项目类型</th>
				<th>水工比例（%）</th>
				<th>规划比例（%）</th>
				<th>岩土比例（%）</th>
				<th>市政比例（%）</th>
				<th>概算比例（%）</th>
				<th>电器自动化比例（%）</th>
				<th>金结比例（%）</th>
				<th>建筑比例（%）</th>
				<th>状态</th>
			</tr>
		</thead>
		<tr style="height: 30px;">
			<td style="width: 80px"></td>
			<td style="width: 80px"></td>
			<td style="width: 80px"></td>
			<td style="width: 80px"></td>
			<td style="width: 80px"></td>
			<td style="width: 80px"></td>
			<td style="width: 80px"></td>
			<td style="width: 80px"></td>
			<td style="width: 80px"></td>
			<td style="width: 80px"></td>
			<td style="width: 80px"></td>
			<td style="width: 80px"></td>
		</tr>
		<tr style="height: 30px;">
			<td style="width: 80px"></td>
			<td style="width: 80px"></td>
			<td style="width: 80px"></td>
			<td style="width: 80px"></td>
			<td style="width: 80px"></td>
			<td style="width: 80px"></td>
			<td style="width: 80px"></td>
			<td style="width: 80px"></td>
			<td style="width: 80px"></td>
			<td style="width: 80px"></td>
			<td style="width: 80px"></td>
			<td style="width: 80px"></td>
		</tr>
	</table>
</body>
</html>
<script>
	$(function() {

		$('#confirm').click(function() {
			
			window.location.href = "confirm.do?project_name="+$('#project_name').val();
		});

	});
	$(function() {

		$('#reback').click(function() {

			window.location.href = "reback.do";
		});

	});
</script>