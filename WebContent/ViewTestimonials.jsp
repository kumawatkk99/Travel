<%@ page language="java" %>
<%@ page session="true" %>
<%@ page import="java.sql.*,java.io.*,java.util.Random, com.ewheelz.*"%>

<HEAD>


	<script LANGUAGE="Javascript" SRC="Images/validate.js"></script>


	<LINK href="styles.css" type="text/css" rel="stylesheet">

</HEAD>
<BODY class=SC>
<h2 align=center>Testimonials</h2>

<%

	Connection con=null;
	ResultSet rs=null;
	Statement stmt=null;
	try{
			Class.forName("com.mysql.jdbc.Driver");
			con=DriverManager.getConnection("jdbc:mysql://localhost:3306/ttms","root","110399");
			stmt =  con.createStatement();
			String Query = "Select * from feedback order by `FId`";
			rs = stmt.executeQuery(Query);

			//out.println("rs is: "+rs);
			%>

			<marquee direction = "up" scrollamount="3" scrollspeed="100">
						<table align="center" width="100%">
							<tr class=row_title>
							<th align="left">FId</th><th align="left">UserID</th><th align="left">Feedback</th><th align="left">DateSubmitted</th>
							</tr>
					<%
			int rCount=0;
			while(rs.next())
			{
					%>
					<tr class= <%=(rCount%2!=0)? "row_even" : "row_odd"%>>
						<td><%=rs.getString(1)%></td><td><%=rs.getString(2)%></td><td><%=rs.getString(3)%></td><td><%=rs.getString(4)%></td>
					</tr>
					<%
				rCount++;
			}
			if( rCount == 0)	{%><h3 align=center>Sorry No records Found</h3><% }
			rs.close();
			stmt.close();
			con.close();
		}catch(Exception e){
			rs.close();
			stmt.close();
			con.close();
			%><%=e%><%
		}
	
%>
</BODY>

