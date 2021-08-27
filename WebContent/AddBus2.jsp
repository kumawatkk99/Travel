<%@ page language="java" %>
<%@ page session="true" %>
<%@ page import="java.sql.*,java.io.*"%>

<HEAD>


	<script LANGUAGE="Javascript" SRC="Images/validate.js"></script>


	<LINK href="styles.css" type="text/css" rel="stylesheet">

</HEAD>
<BODY class=SC>
<HR>
<B><FONT COLOR="#CC00CC" face='verdana'>Add Bus</FONT></B>
<HR>
<%

	Connection con=null;
	ResultSet rs=null;
	Statement stmt=null;
	//String BusId = request.getParameter("BusId");
	//MyFunctions MF = new MyFunctions();
	//BusId = MF.genNextID("busmaster","BusId","B");
	String BusId="B";
	
	int sum=0;
	
	
		try{
		
		Class.forName("com.mysql.jdbc.Driver");
		con=DriverManager.getConnection("jdbc:mysql://localhost:3306/ttms","root","110399");
		stmt =  con.createStatement();
		String Query = "Select incId From busmaster order by incId DESC";
		rs = stmt.executeQuery(Query);
		
		if(rs.next())
		{
			sum=rs.getInt(1);
		}
		
		
		sum=sum+1;
		BusId=BusId+sum;
		System.out.println(BusId);
		
		
		stmt.close();
		con.close();
	}catch(Exception e){
		stmt.close();
		con.close();
		%><%=e%><%
	}
	
	
	%>
<center><input type=button value=close onclick="window.close()"></center>

</BODY>


