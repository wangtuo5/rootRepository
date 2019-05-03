<%@page import="util.*,java.sql.*" contentType="text/html;charset=utf-8"%>
<%@taglib uri="/struts-tags" prefix="s" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Frameset//EN" "http://www.w3.org/TR/html4/frameset.dtd">
<html>
  <body>
    <%
    	String s = request.getParameter("id");
    	JDBCUtil.getConnection().createStatement().executeUpdate("delete from users where id="+s);
    	response.sendRedirect("acctbrfordel.jsp");
     %>
  </body>
</html>
