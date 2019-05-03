<%@page contentType="text/html;charset=utf-8"%>
<%@taglib uri="/struts-tags" prefix="s" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<link href='../css/main.css' rel='stylesheet' type='text/css'></link>
	<title>电信运营计费管理系统-资费增加</title>
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
		

<!-- 标准标记库 -->

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
				<a href='../fee/index.htm'  class=channel_title>资费管理首页</a>
				<img src="../images/sy_2_18.jpg" border="0">
				<a href='../fee/feeadd.htm'  class=channel_title>资费增加</a>
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
		
		<form name="feeform" method="post" action="feeadd">
			<table border="0"  cellspacing='0' cellpadding='0' width="50%" height="80%">
			<tr>
				<td align="right" valign="top">资费名称：</td>
				<td align="left" valign="top"><input type="text" name="name" value="" style="WIDTH:170px"></td>
				
			</tr>
			<tr>
			<td colspan="2" align="center"></td>
			</tr>
			<tr>
				<td align="right" valign="top">基费：</td>
				<td align="left" valign="top"><input type="text" name="basefee" value="0.0" style="WIDTH:170px"></td>
				
			</tr>
			<tr>
			<td colspan="2" align="center"></td>
			</tr>
			<tr>
				<td align="right" valign="top">月租费：</td>				
				<td align="left"  valign="top"><input type="text" name="ratefee" value="0.0" style="WIDTH:170px"></td>
				
			</tr>
			<tr>
				<td align="right" valign="top">资费描述：</td>
				<td align="left" valign="top"><input type="text" name="description" style="width:170px;height:70px;"></td>	
			</tr>
			<tr>
				<td  align="center" colspan="2"><input type="submit" value="增加">&nbsp;&nbsp;&nbsp;&nbsp;<input type="reset" value="取消"> </td>
				<td>
			</tr>
			</table>
		</form>
			
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

<!--页面尾巴开始-->
<%@include file="../common/foot.jsp"%>
<!--页面尾巴结束-->
</BODY>
</html>