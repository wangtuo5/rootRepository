<%@page import="java.sql.*,util.*" contentType="text/html;charset=utf-8"%>
<%@taglib uri="/struts-tags" prefix="s" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<link href='../css/main.css' rel='stylesheet' type='text/css'></link>
	<title>电信运营计费管理系统-帐务删除</title>
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
				<img src="../images/sy_2_18.jpg" border="0"> 
				<a href='../user/index.jsp'  class=channel_title>用户管理首页</a>
				<img src="../images/sy_2_18.jpg" border="0">
				<a href='../user/acctbrfordel.jsp'  class=channel_title>帐务删除</a>
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
	<tr width="100%" height="10%">
		<!-- 显示查询UI -->
		<td align="left" height='31' background='../images/ctitle_bak_fcenter.jpg'>		 
		<form name="usercondform" method="post" action="acctbrfordel">
			查询条件：&nbsp;&nbsp;
			用户姓名:<input type="text" name="accname" value="sd" style="WIDTH:80px"/>			
			登录名:<input type="text" name="accloginname" maxlength="20" value="sd" style="WIDTH: 80px"/>			
			状态:<select name="accstatus" style="WIDTH: 80px">
					<option value="0" selected="selected">开通</option>
					<option value="1">暂停</option>
				</select>
						
			<input type="submit" value=" 查询"/>
		</form>	
		</td>
	</tr>
	<tr width="100%" height="300px">
		<td width="100%" valign="top">
			<!-- 显示浏览列表 -->
			<div style="overflow:auto;">
			<table cellspacing='0' cellpadding='0' width="100%"  border="1">
				<tr class="tabhead">
					<td>用户名</td><td>登录名</td><td>状态</td><td>支付方式</td><td>电话</td><td>电子邮件</td><td>性别</td><td>删除操作</td>
				</tr>
						<%	
							String accname,accloginname,accstatus=null;
							accname=request.getParameter("accname");
							accloginname=request.getParameter("accloginname");
							accstatus=request.getParameter("accstatus");
							
							if(accname==null || accloginname==null || accstatus==null){
							
							}else{
								ResultSet rs1=JDBCUtil.getConnection().createStatement().executeQuery("select * from users where name='"+accname+"' and loginname='"+accloginname+"' and status="+accstatus);
								while(rs1.next()){
								
						%>		
					<tr>
						<td>
							<%=rs1.getString(2)%>
						</td>
						<td>
							<%=rs1.getString(3)%>
						</td>
						<td>
							<% if(rs1.getInt(5)==0){
								out.print("开通");
							   }else if(rs1.getInt(5)==1){
							    out.print("暂停");
							   }else {
							    out.print("删除");
							   }
							%>
						</td>
						<td>
							<%=rs1.getString(10)%>
						</td>
						<td>
							<%=rs1.getString(6)%>
						</td>
						<td>
							<%=rs1.getString(7)%>
						</td>
						<td>
							<% if(rs1.getInt(13)==0){
								out.print("男");
							   }else{
							   	out.print("女");
							   }
							%>
						</td>
						<td>
							<a href="acctdelete.jsp?id=<%=rs1.getInt(1) %>">删除</a>
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
</body>
</html>