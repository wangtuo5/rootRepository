<%@page import="util.*,java.sql.*" contentType="text/html;charset=utf-8"%>
<%@taglib uri="/struts-tags" prefix="s" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Frameset//EN" "http://www.w3.org/TR/html4/frameset.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<link href='../css/main.css' rel='stylesheet' type='text/css'></link>
	<title>电信运营计费管理系统-角色修改输入</title>
</head>
<body>
<center>
<!--logo头开始--> <%@include file="../common/head.jsp"%> <!--logo头结束-->

<!--功能导航开始--> <%@include file="../common/modules.jsp"%> <!--功能导航结束-->
</center>

<!--正文区开始[包含左边的功能操作菜单，与中间的操作区域]-->
<center>
<table width='778' height='370' border='1'>
	<tr>
	<!--左边列[功能操作菜单]开始 -->
	<td valign='top' bgcolor='#f8f8f8'>
		<%@include file="common.jsp"%>
	</td>
	<!--左边列[功能操作菜单]结束 -->

	<!--内容区开始-->
    <td width='575' align='center' valign='top'>
    	

<!-- 标准标记库 -->


<table width='100%' height='10%' border='0' cellspacing='0' cellpadding='0'>
	<tr>
		<td width='40' background='../images/index_26.jpg'>&nbsp;</td>
		<!--内容区导航开始-->
		<td align='left' valign='middle' background='../images/ctitle_bak_center.jpg'>
		<table border='0' cellspacing='0' cellpadding='0'>
			<tr>
				
				<td height='31' background='../images/ctitle_bak_fcenter.jpg'>
				<a href='../main.htm'  class=channel_title>首页</a>
				<img src="../images/sy_2_18.jpg" border="0"> 
				<a href='../rights/index.htm'  class=channel_title>权限管理首页</a>
				<img src="../images/sy_2_18.jpg" border="0">
				<a href='../rights/rolebrforupd.htm'  class=channel_title>角色修改</a>
				</td>
			</tr>
		</table>
		</td>
		<!--内容区导航结束-->
		<td align='left' valign='middle' background='../images/ctitle_bak_center.jpg'>&nbsp;</td>
		<td width='13' align='right' valign='middle' background='../images/ctitle_bak_center.jpg'>
		<img src="../images/ctitle_bak_right.jpg" height="31" width="10">
		</td>
	</tr>
</table>

<table width='100%' border='1' cellspacing='0' cellpadding='0'>
	<tr width="100%" height="300px">
		<!-- 显示查询UI -->
		<td align="center" valign="top">		 
		
		<s:form name="roleform" action="roleupdate" theme="simple">
			<table border="0"  cellspacing='0' cellpadding='0' width="80%" height="200">
			<tr>
				<td>角色ID：</td>
				<td align="left"><input type="text"" name="id" value="<%=request.getParameter("id") %>" readonly="readonly" style="WIDTH:170px"/></td>
			</tr>
			<tr>
				<td>角色名称：</td>
				<td align="left"><s:textfield name="name" value="超级管理员" style="WIDTH:170px"/></td>
			</tr>
			<tr>
				<td >拥有权限：</td>
				<td align="left"><s:textfield name="rr" value="请填写编号" style="WIDTH:170px"/>(1到28不同权限的编号)</td>
			</tr>
			<tr>
				<td  align="center" colspan="2"><s:submit value="修改"/>&nbsp;&nbsp;&nbsp;&nbsp;<s:reset value="取消"/> </td>
				<td>
			</tr>
			</table>
		</s:form>
			
		</td>
	</tr>

	<tr width="100%"  height="20px" style="background-color:#c0c0c0;">
		<!-- 错误提示行 -->
			<td align="left"><font color="blue">提示:</font></td>
	</tr>
</table>

	</td>
	<!--内容区结束-->
	</tr>
</table>
</center>
<!--正文区开始[包含左边的功能操作菜单，与中间的操作区域]结束-->


<!--页面尾巴开始--> <%@include file="../common/foot.jsp"%> <!--页面尾巴结束-->
</BODY>
</html>