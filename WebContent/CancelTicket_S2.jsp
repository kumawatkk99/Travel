<HTML>

<%@ page language="java" %>
<%@ page import="java.sql.*" %>
<%@ page import="java.lang.*" %>

<%@ page session="true" %>
<% String TicketId = request.getParameter("TicketId");%>

<head>
	<LINK href="styles.css" type="text/css" rel="stylesheet">
	<script LANGUAGE="Javascript" SRC="Images/AjaxCall.js"></script>

<SCRIPT LANGUAGE="JavaScript">
	function setAction(URL,Obj){
		var f = document.forms(0);
		var TicketId = f.TicketId.value;
		var RouteId = f.RouteId.value;
		var BusId = f.BusId.value;
		var PaymentId = f.PaymentId.value;
		var CustomerId = f.CustomerId.value;
		var Seats = f.Seats.value;
		var NoPass = Seats.split(",").length;
		var ParamsList = "?TicketId="+TicketId+"&CustomerId="+CustomerId+"&RouteId="+RouteId+"&BusId="+BusId+"&PaymentId="+PaymentId+"&NoPass="+NoPass;
		Obj.target='ResultFrame';
		Obj.href=URL+ParamsList;
		//fnCancelTicket(URL+ParamsList);
	}
	/*function fnCancelTicket(URL)
	{
		var divObj = document.getElementById("infodiv");
		alert(URL);
		ajaxFunction(URL,divObj);
	}*/
</SCRIPT>
<head>
<body Class='SC'>
<HR>
<B><FONT COLOR="#CC00CC" face='verdana'>Cancel Ticket</FONT></B>
<HR>
<BR><BR>
<FORM ACTION="CancelTicket_S3.jsp">
<input type='Hidden' name='TicketId' value="<%=TicketId%>">
<TABLE class='notepad' align='center'>


<%

/*Declaration of variables*/

Connection con=null;
Statement stmt=null;
ResultSet rs=null;

try
{
	/*Connection to MySQL database is made with JDBC class one driver*/
	
	Class.forName("com.mysql.cj.jdbc.Driver");
	con=DriverManager.getConnection("jdbc:mysql://localhost:3306/ttms","root","110399");
	stmt =  con.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_READ_ONLY);
	String Query = "Select * from ticketdetails Where TicketId='"+TicketId+"' and Status='Booked'";
	System.out.println(" Qry->"+Query);
	rs = stmt.executeQuery(Query);
	int count=0,NumRows=0;
	while(rs.next()){NumRows++;}
	rs.beforeFirst();
	if(NumRows>0){
		//Display header
		%>
			<TR class="row_title">
				<TD>Route Id</TD>
				<TD>CustomerId</TD>
				<TD>From</TD>
				<TD>To</TD>
				<TD>Journey Date</TD>
				<TD>Start Time</TD>
				<TD>Reach Time</TD>
				<TD>Seats</TD>
				<TD>Boarding Point</TD>
				<TD>Net Amount</TD>

			</TR>	
		<%
		while(rs.next())
			{
					//Display body
					String RouteId=rs.getString(3);
					String CustomerId=rs.getString(4);
					String rFrom=rs.getString(5);
					String rTo=rs.getString(6);
					String JourneyDate=rs.getString(7);
					String StartTime=rs.getString(8);
					String ReachTime=rs.getString(9);
					String Seats=rs.getString(10);
					String BoardingPoint=rs.getString(11);
					String NetAmount=rs.getString(12);
					String Status=rs.getString(13);
					String PaymentId=rs.getString(14);
					String BusId=rs.getString(15);

					%>
						<TR class="<%=(count%2==0)? "row_odd" : "row_even" %>" >
							<TD><%=RouteId%><INPUT TYPE="hidden" NAME="RouteId" value="<%=RouteId%>"></TD>
							<TD><%=CustomerId%><INPUT TYPE="hidden" NAME="CustomerId" value="<%=CustomerId%>"></TD>
							<TD><%=rFrom%><INPUT TYPE="hidden" NAME="rFrom" value="<%=rFrom%>"></TD>
							<TD><%=rTo%><INPUT TYPE="hidden" NAME="rTo" value="<%=rTo%>"></TD>
							<TD><%=JourneyDate%><INPUT TYPE="hidden" NAME="JourneyDate" value="<%=JourneyDate%>"></TD>
							<TD><%=StartTime%><INPUT TYPE="hidden" NAME="StartTime" value="<%=StartTime%>"></TD>
							<TD><%=ReachTime%><INPUT TYPE="hidden" NAME="ReachTime" value="<%=ReachTime%>"></TD>
							<TD><%=Seats%><INPUT TYPE="hidden" NAME="Seats" value="<%=Seats%>"></TD>
							<TD><%=BoardingPoint%><INPUT TYPE="hidden" NAME="BoardingPoint" value="<%=BoardingPoint%>"></TD>
							<TD><%=NetAmount%><INPUT TYPE="hidden" NAME="NetAmount" value="<%=NetAmount%>"></TD>
							<INPUT TYPE="hidden" NAME="PaymentId" value="<%=PaymentId%>">
							<INPUT TYPE="hidden" NAME="BusId" value="<%=BusId%>">
						</TR>
</TABLE>
<div id='infodiv'></div>
<P align=right>
	<input type="submit"  id="submit" value="Cancel Ticket">
	<!-- <A onclick="location.href ='CancelTicket_S3.jsp'" target="ResultFrame"><IMG SRC="Images/Menu/CancelTicket0.jpg" border="0"
	onmouseout="this.src = 'Images/Menu/CancelTicket0.jpg'" 
	onmouseover="this.src = 'Images/Menu/CancelTicket1.jpg'"></A> -->
	
	<!-- <A onclick="setAction('CancelTicket_S3.jsp',this)" target="ResultFrame"><IMG SRC="Images/Menu/CancelTicket0.jpg" border="0"
	onmouseout="this.src = 'Images/Menu/CancelTicket0.jpg'" 
	onmouseover="this.src = 'Images/Menu/CancelTicket1.jpg'"></A> -->
</P>
<%
				count++;
			}
	}else{
		%><P align='CENTER'><IMG SRC="Images/error.gif" WIDTH="17" HEIGHT="13" BORDER="0" ALT=""><FONT COLOR="red" face='Georgia'>No tickets found.Please provide valid Ticket Id</FONT><BR>
			<A HREF="CancelTicket_S1.jsp">&lt;&lt; Back</A>
		</P>
		
		<%
	}
	System.out.println(count+" routes found");
}
catch(Exception e)
{
	System.out.println("Exception"+e);
}
%>
</FORM>
</BODY>
</HTML>