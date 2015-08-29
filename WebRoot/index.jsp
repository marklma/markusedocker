<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page language="java"%>
<%@ page import="com.mysql.jdbc.Driver"%>
<%@ page import="java.sql.*"%>
<%
	request.setCharacterEncoding("UTF-8");
	response.setCharacterEncoding("UTF-8");
	response.setContentType("text/html;charset=utf-8");
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Mark docker Tomcat 测试</title>
</head>
<body>
	www.marklma.com
<br />
	<%
	//数据库用户名
	String userName = "ujrqH2X7Lxsz9EJn";
	//密码
	String userPasswd = "pKj5ArJtcF3WQL8d2";
	//数据库名
	String dbName = "8pDEJM1wdUqZnNmR";
	//表名
	String tableName = "markdone_event";
	Class.forName("com.mysql.jdbc.Driver");
	Connection conn = DriverManager.getConnection(
			"jdbc:mysql://10.10.26.58:3306/" + dbName, userName,
			userPasswd);
	//联结字符串
	Statement stmt = conn.createStatement();

	ResultSet rs = stmt.executeQuery("select * from " + tableName);

	while (rs.next()) {
		int uid = rs.getInt("id");
		String remark = rs.getString("remark");
%>
	<%=uid%>:::<%=remark%><br />
	<%
		}

		rs.close();
		stmt.close();
		conn.close();
	%>
</body>
</html>