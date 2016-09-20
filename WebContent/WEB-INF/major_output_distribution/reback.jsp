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
<form action="index.html" method="post">
<table class="table table-bordered table-hover definewidth m10">
    <tr>
        <td width="10%" class="tableleft">项目名称</td>
        <td><input type="text" name="project_name" value=${project_name} disabled/></td>
		<td width="10%" class="tableleft">项目类型</td>
        <td><input type="text" name="project_type" value=${project_type} disabled/></td>
    </tr>
    <tr>
        <td class="tableleft">项目经理</td>
        <td><input type="text" name="project_manager" value=${project_manager} disabled/></td>
		<td class="tableleft">结算方式</td>
        <td><input type="text" name="account_type"/></td>
    </tr>  
	<tr>	
	    <td class="tableleft">水工比例（%）</td>
        <td><input type="text" name="irrigation_scale" value=${irrigation_scale} disabled/></td>
		<td class="tableleft">水工产值（万）</td>
        <td><input type="text" name="irrigation_output" disabled/></td>
	</tr>
	<tr>	
	    <td class="tableleft">规划比例（%）</td>
        <td><input type="text" name="plan_scale" value=${plan_scale} disabled/></td>
		<td class="tableleft">规划产值（万）</td>
        <td><input type="text" name="plan_output"/></td>
	</tr>
	<tr>	
	    <td class="tableleft">岩土比例（%）</td>
        <td><input type="text" name="rock_scale" value=${rock_scale} disabled/></td>
		<td class="tableleft">岩土产值（万）</td>
        <td><input type="text" name="rock_output" disabled/></td>
	</tr>
	<tr>	
	    <td class="tableleft">市政比例（%）</td>
        <td><input type="text" name="municipal_scale" value=${municipal_scale} disabled/></td>
		<td class="tableleft">市政产值（万）</td>
        <td><input type="text" name="municipal_output" disabled/></td>
	</tr>
	<tr>	
	    <td class="tableleft">概算比例（%）</td>
        <td><input type="text" name="budget_scale" value=${budget_scale} disabled/></td>
		<td class="tableleft">概算产值（万）</td>
        <td><input type="text" name="estimate_output" disabled/></td>
	</tr>
	<tr>	
	    <td class="tableleft">电器自动化比例（%）</td>
        <td><input type="text" name="auto_scale" value=${auto_scale} disabled/></td>
		<td class="tableleft">电器自动化产值（万）</td>
        <td><input type="text" name="auto_output" value=${project_manager} disabled/></td>
	</tr>
	<tr>	
	    <td class="tableleft">金结比例（%）</td>
        <td><input type="text" name="jinjie_scale" value=${project_manager} disabled/></td>
		<td class="tableleft">金结产值（万）</td>
        <td><input type="text" name="jinjie_output" value=${project_manager} disabled/></td>
	</tr>
	<tr>	
	    <td class="tableleft">建筑比例（%）</td>
        <td><input type="text" name="arch_scale" value=${project_manager} disabled/></td>
		<td class="tableleft">建筑产值（万）</td>
        <td><input type="text" name="architecture_output"/></td>
	</tr>
	</table>
	<br/>
		<br/>
		<br/>
		<button style="margin-left:250px;" class="btn btn-primary" type="button" id="reback_reason">回退理由</button>
		<textarea style="margin-left:100px;" rows="4" cols="80"></textarea>
        <br/>
		<button style="margin-left:880px;" class="btn btn-primary" type="button" id="ok">确定</button>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<button class="btn btn-primary" type="button" id="closeBtn">关闭</button>
</form>
</body>
</html>
<script>
    $(function () {       
		$('#ok').click(function(){
				window.location.href="major_output_distribution/first.do";
		 });

    });
</script>