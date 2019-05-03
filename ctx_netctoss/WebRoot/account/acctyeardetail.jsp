<%@page import="java.sql.*,util.*" contentType="text/html;charset=utf-8"%>
<%@taglib uri="/struts-tags" prefix="s" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<link href='../css/main.css' rel='stylesheet' type='text/css'></link>
	<title>电信运营计费管理系统-帐务-年明细查询</title>
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

<!--菜单标题栏开始-->
	<table width='100%' height='31' border='0' cellspacing='0' cellpadding='0' background='../images/index_26.jpg'>
		<tr>
		<td width='18%'>&nbsp;</td>
		<td width='47%' valign='middle' background='../images/ctitle_bak_fcenter.jpg'><span class="channel_title">帐务管理<!-- 模块名称 -->></span></td>
		<td width='9%' align='left' valign='middle' background='../images/ctitle_bak_fcenter.jpg'><img src="../images/channel_dh_2.jpg" height="12" width="18"></td>
		<td width='26%' align='right' valign='middle' background='../images/ctitle_bak_center.jpg'><img src="../images/ctitle_bak_right.jpg" height="31" width="10"></td>
		</tr>
	</table>
	<!--菜单标题栏结束-->
	<!--菜单项开始-->
	<table width='100%' border='0' cellspacing='0' cellpadding='0'>
  		<tr>
		<td style='border-bottom: 1px solid #d5d5d5;border-left: 1px solid #d5d5d5; border-right: 1px solid #d5d5d5;'>
		<table width='191' height='31' border='0' cellpadding='0' cellspacing='0' background='../images/subchannel_bak.jpg'>
        	<tr>
			<td width='36' height='31' align='right' valign='middle'><img src="../images/subchannel_doc.jpg" height="9" width="6">&nbsp;</td>
          	<td align='left' valign='middle'>
          		<table border='0' cellpadding='0' cellspacing='0'>
  					<tr>
					<td height='31'><a href='../account/index.jsp'>首页</a></td>
					</tr>
				</table>
			</td>
          	</tr>
      	</table>
      	<!-- 循环显示操作菜单 -->
      	
      		<table width='191' height='31' border='0' cellpadding='0' cellspacing='0' background='../images/subchannel_bak.jpg'>
	        	<tr>
				<td width='36' height='31' align='right' valign='middle'><img src="../images/subchannel_doc.jpg" height="9" width="6">&nbsp;</td>
	          	<td align='left' valign='middle'>
	          		<table border='0' cellpadding='0' cellspacing='0'>
	  					<tr>
						<td height='31'><a href='../account/acctyear.jsp'>帐务年查询</a></td>
						</tr>
					</table>
				</td>
	          	</tr>
      		</table>
      	
      		<table width='191' height='31' border='0' cellpadding='0' cellspacing='0' background='../images/subchannel_bak.jpg'>
	        	<tr>
				<td width='36' height='31' align='right' valign='middle'><img src="../images/subchannel_doc.jpg" height="9" width="6">&nbsp;</td>
	          	<td align='left' valign='middle'>
	          		<table border='0' cellpadding='0' cellspacing='0'>
	  					<tr>
						<td height='31'><a href='../account/acctmonth.jsp'>帐务月查询</a></td>
						</tr>
					</table>
				</td>
	          	</tr>
      		</table>
      	
		<table cellpadding='0' cellspacing='0' width='100%'>
        	<tr><td width='100%' height='3'></td></tr>
        </table>
		</td>
		</tr>
	</table>
	<!--菜单项结束-->
	</td>
	<!--左边列[功能操作菜单]结束 -->

	<!--内容区开始-->
    <td width='575' align='center' valign='top'>
    	

<!-- 标准标记库 -->


<table width='100%' height='10%' border='0' cellspacing='0'
	cellpadding='0'>
	<tr>
		<td width='40'
			background='../images/index_26.jpg'>
			&nbsp;
		</td>
		<!--内容区导航开始-->
		<td align='left' valign='middle'
			background='../images/ctitle_bak_center.jpg'>
			<table border='0' cellspacing='0' cellpadding='0'>
				<tr>

					<td height='31'
						background='../images/ctitle_bak_fcenter.jpg'>
						<a href='../main.jsp'  class=channel_title>首页</a>
						<img src="../images/sy_2_18.jpg" border="0">
						<a href='../account/index.jsp' class=channel_title>帐务管理首页</a>
						<img src="../images/sy_2_18.jpg" border="0">
						<a href='../account/acctyeardetail.jsp' class=channel_title>帐务-年明细查询</a>
					</td>
				</tr>
			</table>
		</td>
		<!--内容区导航结束-->
		<td align='left' valign='middle'
			background='../images/ctitle_bak_center.jpg'>
			&nbsp;
		</td>
		<td width='13' align='right' valign='middle'
			background='../images/ctitle_bak_center.jpg'>
			<img src="../images/ctitle_bak_right.jpg" height="31" width="10">
		</td>
	</tr>
</table>

<table width='100%' border='1' cellspacing='0' cellpadding='0'>
	<tr width="100%" height="10%">
		<!-- 显示查询UI -->
		<% 
			String id = request.getParameter("id");
			ResultSet rs=JDBCUtil.getConnection().createStatement().executeQuery("select * from userservices where id="+id);
				rs.next();
		%>
		<td align="left" height='31'
			background='../images/ctitle_bak_fcenter.jpg'>
			实验室IP:
			<input type="text" name="labip" value="<%=rs.getString(5)%>" readonly="readonly" style="WIDTH:80px">
			年:
			<input type="text" name="year" maxlength="20" value="<%=rs.getString(8).split("-")[0]%>" readonly="readonly" style="WIDTH: 80px">
		</td>
	</tr>
	<tr width="100%" height="300px">
		<td width="100%" valign="top">
			<!-- 显示浏览列表 -->
			<div style="display:block;overflow-x:hidden;overflow-y:auto;height:300px;">
				<table cellspacing='0' cellpadding='0' width="100%" border="1">
					<tr class="tabhead">
						<td width="30%">
							月
						</td>
						<td width="70%">
							时长(秒)
						</td>
					</tr>
					
						<tr align="center">
							<td width="30%">
								<%=rs.getString(8).split("-")[1]%>
							</td>
							<td width="70%">
								<% 
    					 			String s11 = rs.getString(11); 
    					 			String s10 = rs.getString(10); 
    					 			int a=3600*(Integer.parseInt((s11.split(":")[0])))+60*(Integer.parseInt(s11.split(":")[1].substring(0)))+(Integer.parseInt(s11.split(":")[1].substring(1)));
    					 			int b=3600*(Integer.parseInt((s10.split(":")[0])))+60*(Integer.parseInt(s10.split(":")[1].substring(0)))+(Integer.parseInt(s10.split(":")[1].substring(1)));
    							 %>
    							 <%=a-b %>
							</td>
						</tr>
					
				</table>
			</div>
		</td>
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