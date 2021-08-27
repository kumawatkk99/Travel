<%@ page language="java" %>
<%@ page session="true" %>
<%@ page import="java.sql.*,java.io.*,java.util.Random"%>

<HEAD>
	<script LANGUAGE="Javascript" SRC="Images/validate.js"></script>
	<LINK href="styles.css" type="text/css" rel="stylesheet">
</HEAD>
<BODY class=SC>
<%

	Connection con=null;
	ResultSet rs=null;
	Statement stmt=null;
	String CustomerId="";
	int sum=0;
	//com.ewheelz.MyFunctions MF = new com.ewheelz.MyFunctions();
	//CustomerId = MF.genNextID("customermaster","CustomerId","C");
	CustomerId="C";
	String CustomerName = request.getParameter("CustomerName");	
	String PhoneNumber = request.getParameter("PhoneNumber");	
	String Address = request.getParameter("Address");	
	String Location = request.getParameter("Location");	
	String email = request.getParameter("email");	
	String Gender = request.getParameter("Gender");
	//session.setAttribute("CustomerId",CustomerId);
		
	try{
			
		Class.forName("com.mysql.jdbc.Driver");
		con=DriverManager.getConnection("jdbc:mysql://localhost:3306/ttms","root","110399");
			stmt =  con.createStatement();
			String Query1 = "Select incId From customermaster order by incId DESC";
			rs = stmt.executeQuery(Query1);
			if(rs.next())
			{
				sum=rs.getInt(1);
			}
			sum=sum+1;
			CustomerId=CustomerId+sum;
		/*	String ss="";
			if(rs.next())
			{
				
				ss=rs.getString(1);
				System.out.println("ss" + ss);
				//CustomerId=ss;
				System.out.println("CustomerId" + CustomerId);
				if(ss==null)
					CustomerId=CustomerId+"0";
				//i++;
				//break;				
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
			CustomerId=CustomerId+sum;
			System.out.println("CustomerId" + CustomerId);
			*/
			
			
			
			
			
	
			session.setAttribute("CustomerId",CustomerId);
			String Query = "Insert into customermaster values('"+CustomerId+"','"+CustomerName+"',"+PhoneNumber+",'"+Address+"','"+Location+"','"+email+"','"+Gender+"','"+sum+"')";
			int result = stmt.executeUpdate(Query);
			if( result > 0)	{
				%><P align=center><FONT COLOR="green" face='Georgia'><I>Customer info saved successfully</I></FONT></P><%
						//<jsp:forward page="BookNow_S3.jsp" /> 
				%><jsp:forward page="BookNow_S3.jsp" /><%
			}
			else{
				%><P align=center>Error: Please try again</P><% 
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


