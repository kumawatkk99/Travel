<%@ page language="java" %>
<%@ page session="true" %>
<%@ page import="java.sql.*,java.io.*"%>

<HEAD>


	<script LANGUAGE="Javascript" SRC="Images/validate.js"></script>


	<LINK href="styles.css" type="text/css" rel="stylesheet">

</HEAD>
<BODY class=SC>
<HR>
<B><FONT COLOR="#CC00CC" face='verdana'>Add Route</FONT></B>
<HR>
<%

	Connection con=null;
	ResultSet rs=null;
	Statement stmt=null;
	String RouteId = "R";	
	int sum=0;
	//MyFunctions MF = new MyFunctions();
	//RouteId = MF.genNextID("routemaster","RouteId","R");
	String rFrom = request.getParameter("rFrom");	
	String rTo = request.getParameter("rTo");
	String TravelsId = request.getParameter("TravelsId");
	String BusId = request.getParameter("BusId");
	String Departure = request.getParameter("Departure");
	String Arrival = request.getParameter("Arrival");	
	String Fare = request.getParameter("Fare");
	String JDate = request.getParameter("JDate");	
	int Availability = 40;	
	TravelsId=TravelsId.toUpperCase();
	BusId=BusId.toUpperCase();
	try{
			
			//con = com.ewheelz.ConnectionPool.getConnection();
			Class.forName("com.mysql.jdbc.Driver");
			con=DriverManager.getConnection("jdbc:mysql://localhost:3306/ttms","root","110399");
			stmt =  con.createStatement();
	
			String Query1 = "Select incId From routemaster order by incId DESC";
			rs = stmt.executeQuery(Query1);
			if(rs.next())
			{
				sum=rs.getInt(1);
			}
			
			
			/*String ss="";
			while(rs.next())
			{
				ss=rs.getString(1);
				//i++;
				break;				
			}
			char ch[]=ss.toCharArray();
			int zeroAscii=(int)'0';
			
			for(int i=1;i<ch.length;i++)
			{
				char c=ch[i];
				int tempAscii=(int)c;
				sum=(sum*10)+(tempAscii-zeroAscii);
			}*/
			sum=sum+1;
			RouteId=RouteId+sum;
			System.out.println(RouteId);
			
			
			
			
			String Query = "Insert into routemaster values('"+RouteId+"','"+rFrom+"','"+rTo+"','"+TravelsId+"','"+BusId+"','"+Departure+"','"+Arrival+"','"+Fare+"','"+JDate+"',"+Availability+","+sum+")";
			int result = stmt.executeUpdate(Query);
			if( result > 0)	{
				%><P align=center><B><Font face="Georgia" color="Green">Route added Successfully</Font></B></P><%
			}
			else{
				%><P align=center><B><Font face="Georgia" color="Red">Error: Please try again</Font></B></P><% 
			}
			stmt.close();
			con.close();
		}catch(Exception e){
			stmt.close();
			con.close();
			%><%=e%><%
		}
	
%>
</BODY>


