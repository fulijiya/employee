<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <title></title>
    <meta charset="UTF-8">
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/Css/bootstrap.css" />
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/Css/bootstrap-responsive.css" />
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/Css/style.css" />
    <script type="text/javascript" src="<%=request.getContextPath()%>/Js/jquery.js"></script>
    <script type="text/javascript" src="<%=request.getContextPath()%>/Js/jquery.sorted.js"></script>
    <script type="text/javascript" src="<%=request.getContextPath()%>/Js/bootstrap.js"></script>
    <script type="text/javascript" src="<%=request.getContextPath()%>/Js/ckform.js"></script>
    <script type="text/javascript" src="<%=request.getContextPath()%>/Js/common.js"></script>
    <style type="text/css">
        body {
            padding-bottom: 40px;
        }
        .sidebar-nav {
            padding: 9px 0;
        }

        @media (max-width: 980px) {
            /* Enable use of floated navbar text */
            .navbar-text.pull-right {
                float: none;
                padding-left: 5px;
                padding-right: 5px;
            }
        }


    </style>
</head>
<form action="index.html" method="post">
<table class="table table-bordered table-hover definewidth m10">
    <tr>
		<td width="10%" class="tableleft">项目编号</td>
        <td><input type="text" name="project_id"/></td>
        <td width="10%" class="tableleft">项目名称</td>
        <td><input type="text" name="project_name"/></td>

    </tr>
    <tr>
		<td class="tableleft">主体科室</td>
        <td><input type="text" name="main_department"/></td>
        <td class="tableleft">项目经理</td>
        <td><input type="text" name="project_manager"/></td>

    </tr>  
	
	</table>
	<br/>
		<br/>
		<br/>
		<button style="margin-left:250px;" class="btn btn-primary" type="button" id="confirmBtn">回退理由</button>
		<textarea style="margin-left:100px;" rows="4" cols="80"></textarea>
        <br/>
		<button style="margin-left:880px;" class="btn btn-primary" type="button" id="confirmBtn">确定</button>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<button class="btn btn-primary" type="button" id="closeBtn">关闭</button>
</form>
</body>
</html>
<script>
    $(function () {       
		$('#backid').click(function(){
				window.location.href="index.html";
		 });

    });
</script>