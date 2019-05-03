<%@page import="java.sql.*,util.*" contentType="text/html;charset=utf-8"%>
<%@taglib uri="/struts-tags" prefix="s" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<link href='../css/main.css' rel='stylesheet' type='text/css'></link>
	<title>电信运营计费管理系统-管理员查询浏览</title>
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
				<a href='../main.jsp'  class=channel_title>首页</a>
				<img src="../images/sy_2_18.jpg" border="0"/> 
				<a href='../admin/index.jsp'  class=channel_title>管理员管理首页</a>
				<img src="../images/sy_2_18.jpg" border="0"/>
				<a href='../admin/adminbrowse.jsp'  class=channel_title>管理员浏览</a>
				</td>
			</tr>
		</table>
		</td>
		<!--内容区导航结束-->
		<td align='left' valign='middle' background='../images/ctitle_bak_center.jpg'>&nbsp;</td>
		<td width='13' align='right' valign='middle' background='../images/ctitle_bak_center.jpg'>
		<img src="../images/ctitle_bak_right.jpg" height="31" width="10"/>
		</td>
	</tr>
</table>

<table width='100%' border='1' cellspacing='0' cellpadding='0'>
	<tr width="100%" height="10%">
		<!-- 显示查询UI -->
		<td align="left" height='31' background='../images/ctitle_bak_fcenter.jpg'>		 
		<s:form action="adminask" theme="simple">
		<!-- 查询的年份一本年前三年内的可以查询 -->
		查询条件：登录名：<s:textfield name="name" value="" style="width:80px"/>&nbsp;
    	<s:submit value=" 查询"/>
		</s:form>
		</td>
	</tr>
	<tr width="100%" height="300px">
		<td width="100%" valign="top">
			<!-- 显示浏览列表 -->
			<div style="overflow:auto;">
			<table cellspacing='0' cellpadding='0' width="100%"  border="1">
				<tr class="tabhead">
					<td>管理员ID</td><td>姓名</td><td>登录名</td><td>电话</td><td>电子邮件</td><td>授权日期</td><td>拥有的角色</td>
				</tr>
						<% 
							String ask =null;
							  ask= request.getParameter("name");
							if( ask==null){
								ResultSet rs=JDBCUtil.getConnection().createStatement().executeQuery("select * from admins ");
								while(rs.next()){
						%>			
						<tr>
						<td>
							<%=rs.getInt(1) %>
						</td>
						<td>
							<%=rs.getString(2) %>
						</td>
						<td>
							<%=rs.getString(3) %>
						</td>
						<td>
							<%=rs.getString(5) %>
						</td>
						<td>
							<%=rs.getString(6) %>
						</td>
						<td>
							<%=rs.getString(7) %>
						</td>
						<td>
							<select>
								<% ResultSet rs1=JDBCUtil.getConnection().createStatement().executeQuery("select roleid from adminroles where adminid="+rs.getInt(1));
									while(rs1.next()){
										ResultSet rs2=JDBCUtil.getConnection().createStatement().executeQuery("select * from roles where id="+rs1.getInt(1));
											while(rs2.next()){
								%>	
								<option >
									<%=rs2.getString(2) %>
								</option>
								<%} } %>
							</select>
						</td>
						</tr>		
						<%	}
								}else{
								ResultSet rs=JDBCUtil.getConnection().createStatement().executeQuery("select * from admins where loginname='"+ask+"'");
								while(rs.next()){
					%>				
					<tr>
						<td>
							<%=rs.getInt(1) %>
						</td>
						<td>
							<%=rs.getString(2) %>
						</td>
						<td>
							<%=rs.getString(3) %>
						</td>
						<td>
							<%=rs.getString(5) %>
						</td>
						<td>
							<%=rs.getString(6) %>
						</td>
						<td>
							<%=rs.getString(7) %>
						</td>
						<td>
							<select>
								<% ResultSet rs1=JDBCUtil.getConnection().createStatement().executeQuery("select roleid from adminroles where adminid="+rs.getInt(1));
									while(rs1.next()){
										ResultSet rs2=JDBCUtil.getConnection().createStatement().executeQuery("select * from roles where id="+rs1.getInt(1));
											while(rs2.next()){
								%>	
								<option >
									<%=rs2.getString(2) %>
								</option>
								<%} } %>
							</select>
						</td>
					</tr>
						<%} }%>
				
			</table>
			</div>
		</td>
	</tr>
	<tr width="100%"  height="20px">
		<!-- 显示分页导航 -->
		<td>第1页/共1页</td>
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