<%@ page contentType="text/html;charset=euc-kr" pageEncoding="EUC-KR" %>
<%@ page import="java.sql.*, java.util.*, javax.naming.*, javax.sql.*"%>
<html>
<head>
<title>wildfly mysql connect test</title>
</head>
<body>
<%
 String DB_URL = "jdbc:mysql://192.168.53.181:30306/";
 String DB_USER = "root";
 String DB_PASSWORD= "root";
 Connection conn;
 Statement stmt;
 ResultSet rs = null;
 String query = "SHOW DATABASES";
  try {
   Context context = new InitialContext();
   DataSource ds = (DataSource)context.lookup("java:jboss/mysqlDS");
   conn = ds.getConnection();
   stmt = conn.createStatement();
   ResultSetMetaData rsmd = null;
   rs = stmt.executeQuery(query);
   out.print("result: </br>");
   String s;
   int i = 0;
   while (rs.next())
   {
    rsmd = rs.getMetaData();
    int cnt = rsmd.getColumnCount();
    String [] array = new String[cnt];
    array[i]=rs.getString(i+1);
    out.print(Arrays.toString(array));
   }
   rs.close();
   stmt.close();
   conn.close();
  }
 catch(Exception e){
  out.print("Exception Error...");
  out.print(e.toString());
 }
 finally {
 }
%>
</body>
</html>
