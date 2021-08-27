





<%@ page language="java" %>
<%@ page session="true" %>
<%@ page import="java.sql.*, java.io.*, java.util.Random, com.ewheelz.*"%>

<HEAD>


	<script LANGUAGE="Javascript" SRC="Images/validate.js"></script>


	<LINK href="styles.css" type="text/css" rel="stylesheet">

</HEAD>
<BODY class=SC>
<h5 align=center>Testimonials</h5>

<%

	Connection con=null;
	ResultSet rs=null;
	Statement stmt=null;
	try{
			
			
			Class.forName("com.mysql.jdbc.Driver");
			con=DriverManager.getConnection("jdbc:mysql://localhost:3306/ttms","root","110399");
			stmt =  con.createStatement();

			String Query = "Select Feedback from feedback order by `FId`";
			rs = stmt.executeQuery(Query);
			%><marquee direction = "up" scrollamount="3" scrollspeed="100">
						<table align="center" width="100%">
						
					<%
			int rCount=0;
			while(rs.next())
			{
					%>
					<tr class= <%=(rCount%2!=0)? "row_even" : "row_odd"%>>
						<td><%=rs.getString(1)%></td>
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

