<%@page import="java.util.*,java.sql.*,util.*" contentType="text/html;charset=utf-8"%>
<%@taglib uri="/struts-tags" prefix="s" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<link href='../css/main.css' rel='stylesheet' type='text/css'></link>
	<title>电信运营计费管理系统-用户帐单查询浏览</title>
</head>
<body>
<center>
	<!--logo头开始--> 
		<table width='778' height='74' border='0' cellpadding='0' cellspacing='0'>
	<tr>
	<td>
	<table height='100%' border='0' cellpadding='0' cellspacing='0'>
	<tr>
		<td width='168' height='100%'><a href="http://www.tarena.com.cn" target=_blank><img src="../images/logo.png" height="49" width="111" border="0"></a></td>
		<td width='13'><img src="../images/sy_03.jpg" height="20" width="13"></td>
		<td width='470' align="right"><h2><br/>电信运营计费系统</h2></td>
		<td width='276'>&nbsp;</td>
		<td width='175' valign='bottom'>&nbsp;用户：<span id="ctxName"><%=session.getAttribute("dodo1")%></span>
			&nbsp;&nbsp;&nbsp;&nbsp;<a href="../loginout.action">登出</a>
		
		</td>
	</tr>
	</table></td>
  </tr>
</table>
	 <!--logo头结束-->
	<!--功能导航开始--> <%@include file="../common/modules1.jsp"%> <!--功能导航结束-->
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
		<td width='47%' valign='middle' background='../images/ctitle_bak_fcenter.jpg'><span class="channel_title">用户自服务<!-- 模块名称 -->></span></td>
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
					<td height='31'><a href='../selfservice/index.jsp'>首页</a></td>
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
						<td height='31'><a href='../selfservice/reckon.jsp'>用户帐单查询</a></td>
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
				<a href='../selfservice/index.jsp'  class=channel_title>用户自服务首页</a>
				<img src="../images/sy_2_18.jpg" border="0">
				<a href='../selfservice/reckon.jsp'  class=channel_title>用户帐单查询</a>
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
		<s:form action="search" theme="simple">
		<!-- 查询的年份一本年前三年内的可以查询 -->
		查询条件：用户帐务帐号：<s:textfield name="name" value="openlab" style="width:80px"/>&nbsp;要查询的年月份：
		<s:select name="years"  list="#{'0':'2010年','1':'2011年'}" ></s:select>
		&nbsp;
		<s:select name="months"  list="#{'0':'1月','1':'2月','2':'3月','3':'4月','4':'5月','5':'6月','6':'7月',
		'7':'8月','8':'9月','9':'10月','10':'11月','11':'12月'}" ></s:select>
    	
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
					<th>年</th><th>月</th><th>业务登录名</th><th>服务器IP</th><th>费用</th><th>明细</th>
				</tr>
					<% 
						String years =null; String months=null;
						 years = request.getParameter("years");
						 months = request.getParameter("months");
						if(years==null||months==null){
							
						}else{
						int q =Integer.parseInt(years)+2010 ;int w =Integer.parseInt(months)+1;
						String ssss = q+"-"+w;
						ResultSet rs=JDBCUtil.getConnection().createStatement().executeQuery("select * from userservices where enrolldate='"+ssss+"'");
							while(rs.next()){
						
					%>	
    			<tr>
    				<td><%=rs.getString(8).split("-")[0]%>&nbsp;&nbsp;</td>
    				<td><%=rs.getString(8).split("-")[1]%>&nbsp;&nbsp;</td>
    				<td><%=rs.getString(3)%></td>
    				<td><%=rs.getString(5)%></td>
    				<td>
    					<%
    						ResultSet rs1=JDBCUtil.getConnection().createStatement().executeQuery("select * from pricings where id ="+rs.getInt(7));
    					 	rs1.next();
    					 %>
    					<%=rs1.getDouble(3) %>
    				
    				</td>
    				<td><input type="button" value="明细" onclick="window.location='../selfservice/reckondetail.jsp?id=<%=rs.getInt(1)%>'"/></td>
    			</tr>
    		
    			<%
    				}
    				 }
    			 %>
    		</table>
			</div>
		</td>
	</tr>
	<tr width="100%"  height="20px">
		<!-- 显示分页导航 -->
		<td>第1页/共1页 </td>
	</tr>
</table>
    		
	</td>
	<!--内容区结束-->
	</tr>
</table>
</center>
<!--正文区开始[包含左边的功能操作菜单，与中间的操作区域]结束-->

<%@include file="../common/foot.jsp"%> 
</body>
</html>