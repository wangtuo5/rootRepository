<%@page import="java.sql.*,util.*" contentType="text/html;charset=utf-8"%>
<%@taglib uri="/struts-tags" prefix="s" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<link href='../css/main.css' rel='stylesheet' type='text/css'></link>
	<title>电信运营计费管理系统-帐务修改输入</title>
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
				<a href='../user/index.htm'  class=channel_title>用户管理首页</a>
				<img src="../images/sy_2_18.jpg" border="0">
				<a href='../user/acctupdate.htm'  class=channel_title>帐务修改输入</a>
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
		<% 
		String id = request.getParameter("id");
		ResultSet rs=JDBCUtil.getConnection().createStatement().executeQuery("select * from users where id="+id);
				rs.next();
		%>
		<form name="accform" method="post" action="acctupdatectx">
			<table border="0"  cellspacing='0' cellpadding='0' width="50%" height="80%">
			<tr>
				<td align="right" valign="top">用户ID：</td>
				<td align="left" valign="top"><input type="text" name="id" value="<%=rs.getInt(1)%>" readonly="readonly" style="WIDTH:170px"></td>
			</tr>
			<tr>
				<td align="right" valign="top">用户姓名：</td>
				<td align="left" valign="top"><input type="text" name="name" value="<%=rs.getString(2)%>" style="WIDTH:170px"></td>
			</tr>
			<tr>
				<td align="right" valign="top">登录名：</td>
				<td align="left" valign="top"><input type="text" name="loginname" value="<%=rs.getString(3)%>" style="WIDTH:170px"></td>
			</tr>
			<tr>
				<td align="right" valign="top">登录口令：</td>				
				<td align="left"  valign="top"><input type="text" name="loginpassword" value="<%=rs.getString(4)%>" style="WIDTH:170px"></td>
				
			</tr>
			<tr>
				<td align="right" valign="top">状态：</td>
				<td align="left" valign="top">
				<input type="radio" name="status" value="0" checked="checked">开通
				<input type="radio" name="status" value="1">暂停
				</td>	
			</tr>
			<tr>
				<td align="right" valign="top">支付方式：</td>
				<td align="left" valign="top"><input type="text" name="paymenttpye" value="<%=rs.getString(10)%>" style="width:170px;"></td>	
			</tr>
			<tr>
				<td align="right" valign="top">电话：</td>
				<td align="left" valign="top"><input type="text" name="phone" value="<%=rs.getString(6)%>" style="width:170px;"></td>	
			</tr>
			<tr>
				<td align="right" valign="top">电子邮件：</td>
				<td align="left" valign="top"><input type="text" name="email" value="<%=rs.getString(7)%>" style="width:170px;"></td>	
			</tr>
			<tr>
				<td align="right" valign="top">性别：</td>
				<td align="left" valign="top">
					<input type="radio" name="sex" value="1" checked="checked">女
					<input type="radio" name="sex" value="0">男
					
				</td>	
			</tr>
			<tr>
				<td align="right" valign="top">民族：</td>
				<td align="left" valign="top"><input type="text" name="nationality" value="<%=rs.getString(12)%>" style="width:170px;"></td>	
			</tr>
			<tr>
				<td align="right" valign="top">职业：</td>
				<td align="left" valign="top"><input type="text" name="career" value="<%=rs.getString(11)%>" style="width:170px;"></td>	
			</tr>
			<tr>
				<td align="right" valign="top">就职公司：</td>
				<td align="left" valign="top"><input type="text" name="company" value="<%=rs.getString(14)%>" style="width:170px;"></td>	
			</tr>
			<tr>
				<td align="right" valign="top">邮政编码：</td>
				<td align="left" valign="top"><input type="text" name="zip" value="<%=rs.getString(15)%>" style="width:170px;"></td>	
			</tr>
			<tr>
				<td  align="center" colspan="2"><input type="submit" value="修改">&nbsp;&nbsp;&nbsp;&nbsp;<input type="reset" value="取消"> </td>
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

<!--页面尾巴开始--> <%@include file="../common/foot.jsp"%> <!--页面尾巴结束-->
</BODY>
</html>