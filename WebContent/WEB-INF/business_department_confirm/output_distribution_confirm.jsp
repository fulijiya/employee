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
    <tr>	
	    <td class="tableleft">项目类型</td>
        <td><select name="project_type"><option value="0">系统内勘设</option><option value='1'   />系统内勘设</option><option value='7'   />系统内勘设</option></select></td>
		<td class="tableleft">结算方式</td>
        <td><select name="account_manner"><option value="0">系统内预结算</option><option value='1'   />系统内预结算</option><option value='7'   />系统内预结算</option></select></td>
	</tr>
	<tr>	
	    <td class="tableleft">提奖率</td>
        <td><select name="project_type"><option value="0">10%</option><option value='1'   />20%</option><option value='7'   />30%</option></select></td>
		<td class="tableleft">项目完成阶段</td>
        <td><select name="account_manner"><option value="0">项目建议书</option><option value='1'   />项目建议书</option><option value='7'   />项目建议书</option></select></td>
	</tr>
	<tr>	
	    <td class="tableleft">合同额（万元）</td>
        <td><input type="text" name="plan_scale"/></td>
		<td class="tableleft">概算7折（万元）</td>
        <td><input type="text" name="plan_output"/></td>
	</tr>
	<tr>	
	    <td class="tableleft">批复数（万元）</td>
        <td><input type="text" name="rock_scale"/></td>
		<td class="tableleft">审计数（万元）</td>
        <td><input type="text" name="rock_output"/></td>
	</tr>
	<tr>	
	    <td class="tableleft">到账数（元）</td>
        <td><input type="text" name="municipal_scale"/></td>
		<td class="tableleft">已分配产值（万元）</td>
        <td><input type="text" name="municipal_output"/></td>
	</tr>
	<tr>	
	    <td class="tableleft">总成本（万元）</td>
        <td><input type="text" name="estimate_scale"/></td>
		<td class="tableleft">报销成本（万元）</td>
        <td><input type="text" name="estimate_output"/></td>
	</tr>
	<tr>	
	    <td class="tableleft">效果图成本（万元）</td>
        <td><input type="text" name="auto_scale"/></td>
		<td class="tableleft">车辆成本（万元）</td>
        <td><input type="text" name="auto_output"/></td>
	</tr>
	<tr>	
	    <td class="tableleft">文印成本（万元）</td>
        <td><input type="text" name="jinjie_scale"/></td>
		<td class="tableleft">文印成本（万元）</td>
        <td><input type="text" name="jinjie_output"/></td>
	</tr>
	<tr>	
	    <td class="tableleft">增值税税率</td>
         <td><select name="account_manner"><option value="0">3%</option><option value='1'   />4%</option><option value='7'   />5%</option></select></td>
		<td class="tableleft">增值税（万元）</td>
        <td><input type="text" name="architecture_output"/></td>
	</tr>
	<tr>	
	    <td class="tableleft">管理费（万元）</td>
        <td><input type="text" name="architecture_output"/>&nbsp;&nbsp;&nbsp;&nbsp;首次分配扣除,可编辑，再次分配不可编辑</td>
		<td></td>
		<td></td>
	</tr>
	<tr>	
	    <td class="tableleft">部门结余比例（%）</td>
        <td><input type="text" name="auto_scale"/></td>
		<td class="tableleft">本次分配（万元）</td>
        <td><input type="text" name="auto_output"/></td>
	</tr>
	</table>
	<br/>
        <button style="margin-left:680px;" type="submit" class="btn btn-primary" type="button">确定</button>
		<button style="margin-left:100px;" type="button" class="btn btn-primary" name="backid" id="backid">关闭</button>
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