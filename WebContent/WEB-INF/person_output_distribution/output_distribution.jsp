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
<body>
<form action="index.html" method="post">
<table class="table table-hover definewidth m10">
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
    <tr>	
	    <td class="tableleft">项目类型</td>
        <td><input type="text" name="project_type"/></td>
		<td></td>
		<td></td>
	</tr>
	<tr>	
	    <td class="tableleft">本次专业产值（万）</td>
        <td><input type="text" name="thistime_major_output"/></td>
	</tr>
	<tr>	
	    <td class="tableleft">员工姓名</td>
        <td><input type="text" name="staff_name"/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<button>选择</button></td>		
	</tr>
	<tr>	
	    <td class="tableleft">分配金额（万）</td>
        <td><input type="text" name="distribution_money"/></td>
	</tr>
	<tr>	
	    <td class="tableleft">本次分配剩余</td>
        <td><input type="text" name="thistime_distribution_remain"/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<button>保存</button></td>
	</tr>
	</table>
	<br/>
            <button style="margin-left:580px;" type="modify" class="btn btn-primary" type="button">修改</button>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<button type="button" class="btn btn-primary" name="delete" id="delete">删除</button>

</form>
<table class="table table-bordered table-hover definewidth m10" >
    <thead>
    <tr>
        <th>员工姓名</th>
        <th>所属科室</th>
        <th>产值</th>
    </tr>
    </thead>
	     <tr style="height:30px;">
            <td style="width:80px"></td>
            <td style="width:80px"></td>
            <td style="width:80px"></td>
        </tr>
		<tr style="height:30px;">
            <td style="width:80px"></td>
			<td style="width:80px"></td>
			<td style="width:80px"></td>
        </tr>
		</table>
		<br/>
		<button style="margin-left:880px;" class="btn btn-primary" type="button" id="confirmBtn">确定</button>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<button class="btn btn-primary" type="button" id="closeBtn">关闭</button>
</body>
</html>
<script>
    $(function () {
        
		$('#modify').click(function(){

				window.location.href="modify.html";
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