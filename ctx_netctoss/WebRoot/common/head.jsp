<%@page import="org.apache.struts2.ServletActionContext" contentType="text/html;charset=utf-8"%>

<table width='778' height='74' border='0' cellpadding='0' cellspacing='0'>
	<tr>
	<td>
	<table height='100%' border='0' cellpadding='0' cellspacing='0'>
	<tr>
		<td width='168' height='100%'><a href="http://www.tarena.com.cn" target=_blank><img src="../images/logo.png" height="49" width="111" border="0"></a></td>
		<td width='13'><img src="../images/sy_03.jpg" height="67" width="13"></td>
		<td width='470' align="right"><h2><br/>电信运营计费系统</h2></td>
		<td width='276'>&nbsp;</td>
		<td width='175' valign='bottom'>&nbsp;管理员：<span id="ctxName"><%=session.getAttribute("dodo")%></span>
			&nbsp;&nbsp;&nbsp;&nbsp;<a href="../loginout.action">登出</a>
		</td>
	</tr>
	</table></td>
  </tr>
</table>