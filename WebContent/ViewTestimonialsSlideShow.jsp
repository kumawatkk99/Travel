<%@ page language="java" %>
<%@ page session="true" %>
<%@ page import="java.sql.*,java.io.*,java.util.Random,com.ewheelz.ConnectionPool"%>

<HEAD>


	<script LANGUAGE="Javascript" SRC="Images/validate.js"></script>


	<LINK href="styles.css" type="text/css" rel="stylesheet">

</HEAD>
<BODY class=SC>
<h5 align=center>Testimonials</h5>
<marquee scrollamount="1"  direction='up' scrolldelay='90'>
<table align="center" width="100%">
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
			%>
						
							
			<%
			int rCount=0;
			while(rs.next())
			{
					%>
					
						<tr class= "row_odd">
							<th align="left"><%=rs.getString(2)%></th>
						</tr>
						<tr class="row_even">
							<td><%=rs.getString(3)%></td>
						</tr>

					<%
				rCount++;
			}
			if( rCount == 0)	{%><P align=center><I><B>No Testimonials</B></I></P><% }
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
</table>
</marquee>
</BODY>
