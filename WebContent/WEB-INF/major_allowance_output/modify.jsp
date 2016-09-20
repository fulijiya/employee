<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
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
<body>
<form class="form-inline definewidth m20" action="index.html" method="get">  
    专业
    <input style="margin-left:95px;" type="text" name="major" id="branch_courts"class="abc input-default" placeholder="" value="">&nbsp;&nbsp;  
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;年度
    <input style="margin-left:95px;" type="text" name="year" id="year"class="abc input-default" placeholder="" value="">&nbsp;&nbsp; 
	<br/>
	<br/>
	绩效总额（万）
    <input style="margin-left:31px;" type="text" name="achievement_tatal" id="achievement_tatal"class="abc input-default" placeholder="" value="">&nbsp;&nbsp;  
	<br/>
	<br/>
    <button style="margin-left:450px;" type="submit" class="btn btn-primary">确定</button>&nbsp;&nbsp; 
	<button style="margin-left:50px;" type="button" class="btn btn-primary" id="close">关闭</button>&nbsp;&nbsp;
	
</form>
</body>
</html>
<script>
    $(function () {
        
		$('#addnew').click(function(){

				window.location.href="add.html";
		 });


    });

	function del(id)
	{
		
		
		if(confirm("确定要删除吗？"))
		{
		
			var url = "index.html";
			
			window.location.href=url;		
		
		}
	
	
	
	
	}
</script>