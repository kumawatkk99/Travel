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
	String BusId = "B";
	int sum=0;
	//MyFunctions MF = new MyFunctions();
	//BusId = MF.genNextID("busmaster","BusId","B");
	String BusType = request.getParameter("BusType");	
	String BusNumber = request.getParameter("BusNumber");	
	String Capacity = request.getParameter("Capacity");
	String TravelsId = request.getParameter("TravelsId");	
	try{
			
			Class.forName("com.mysql.jdbc.Driver");
			con=DriverManager.getConnection("jdbc:mysql://localhost:3306/ttms","root","110399");
			stmt =  con.createStatement();
	
			String Query1 = "Select incId From busmaster order by incId DESC";
			rs = stmt.executeQuery(Query1);
			if(rs.next())
			{
				sum=rs.getInt(1);
			}
			sum+=1;
		
			BusId=BusId+sum;
			
			
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
			}
			sum=sum+1;
			BusId=BusId+sum;
			System.out.println(BusId);*/
			
			
			
			
			String Query = "Insert into busmaster values('"+BusId+"','"+BusType+"','"+BusNumber+"','"+Capacity+"','"+TravelsId+"','"+sum+"')";
			int result = stmt.executeUpdate(Query);
			if( result > 0)	{
				%><P align=center><B><Font face="Georgia" color="Green">Bus added Successfully</Font></B></P><%
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
<center><input type=button value=close onclick="window.close()"></center>

</BODY>


