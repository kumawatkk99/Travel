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
	String PaymentId="P";
	int sum=0;
	Class.forName("com.mysql.jdbc.Driver");
	con=DriverManager.getConnection("jdbc:mysql://localhost:3306/ttms","root","110399");
	
	
	//com.ewheelz.MyFunctions MF = new com.ewheelz.MyFunctions();
	//PaymentId = MF.genNextID("paymentdetails","PaymentId","P");
	stmt =  con.createStatement();
	String Query1 = "Select incId From paymentdetails order by incId DESC";
	rs = stmt.executeQuery(Query1);
	if(rs.next())
	{
		sum=rs.getInt(1);
	}
	sum=sum+1;
	PaymentId=PaymentId+sum;
	/*String ss="";
	if(rs.next())
	{
		
		ss=rs.getString(1);
		System.out.println("ss" + ss);
		//TicketId=ss;
		System.out.println("PaymentId" + PaymentId);
		if(ss==null)
			PaymentId=PaymentId+"0";
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
	PaymentId=PaymentId+sum;
	System.out.println("PaymentId" + PaymentId);
	*/
	
	
	
	
	session.setAttribute("PaymentId",PaymentId);
	String CustomerId = request.getParameter("CustomerId");	
	String PaymentMode = request.getParameter("PaymentMode");	
	String BankName = request.getParameter("BankName");	
	String CardNo = request.getParameter("CardNo");	
	String NetAmount = request.getParameter("NetAmount");	
	String TicketId = request.getParameter("TicketId");	
	try{
			Class.forName("com.mysql.jdbc.Driver");
			con=DriverManager.getConnection("jdbc:mysql://localhost:3306/ttms","root","110399");
			stmt =  con.createStatement();
	
			
			String Query = "Insert into paymentdetails values('"+PaymentId+"','"+CustomerId+"','"+PaymentMode+"','"+BankName+"',"+CardNo+","+NetAmount+",'Made','"+TicketId+"','"+sum+"')";
			int result = stmt.executeUpdate(Query);
			if( result > 0)	{
				%><P align=center><FONT COLOR="green" face='Georgia'><I>Payment details saved successfully</I></FONT></P><%
				%><jsp:forward page="BookNow_S4.jsp" /><%
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


