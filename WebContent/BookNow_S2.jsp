<HTML>

<%@ page language="java" %>
<%@ page import="java.sql.*" %>
<%@ page import="java.lang.*" %>

<%@ page session="true" %>
<%
	String rFrom = (String)session.getAttribute("rFrom");
	String rTo = (String)session.getAttribute("rTo");
	String JDate = (String)session.getAttribute("JDate");
	String sBusType = (String)session.getAttribute("BusType");
	String NoPass = (String)session.getAttribute("NoPass");
	String RouteId = (String)session.getAttribute("RouteId");
	String TravelsId = (String)session.getAttribute("TravelsId");
	String BusId = (String)session.getAttribute("BusId");
	String Fare =	(String)session.getAttribute("Fare");
	String Departure =	(String)session.getAttribute("Departure");
	String Arrival =	(String)session.getAttribute("Arrival");
	String SelSeats = request.getParameter("Seats");
	String SelSeat="Check at Boarding Time";
	//System.out.println(SelSeats);
	//System.out.println(SelSeats);
	//System.out.println(SelSeats);
	//System.out.println(SelSeats);
	//System.out.println(SelSeats);
	/*int nseats= Integer. parseInt(SelSeats);
	System.out.println(nseats);
	System.out.println(nseats);
	System.out.println(nseats);*/
	Connection con=null;
	Statement stmt=null;
	ResultSet rs=null;
	/*String nu="null";
	Class.forName("com.mysql.jdbc.Driver");
	con=DriverManager.getConnection("jdbc:mysql://localhost:3306/ttms","root","110399");
	stmt =  con.createStatement();
	String Qry = "Select Seats from ticketdetails where RouteId = '"+RouteId+"' and BusId = '"+BusId+"' and Seats != '"+nu+"'order by Seats DESC";
	System.out.println("Search Qry->"+Qry);
	rs = stmt.executeQuery(Qry);
	if(rs.next()){	
		String tempseat=rs.getString(1);
	
	}*/
	
	

	
	
	
	session.setAttribute("SelSeats",SelSeats);		
	String BPoint = request.getParameter("BPoint");	
	session.setAttribute("BPoint",BPoint);
	//Save ticket details and create ticket id

/*
`TicketId`, `RouteId`, `CustomerId~`, `From`, `To`, 
	`JourneyDate`, 
	`StartTime`, 
	`ReachTime`, 
	`Seats`, 
	`BoardingPoint`, 
	`NetAmount`, 
	`Status`, 
	`PaymentId~`, 
	`BusId`
*/

%>
<head>
<LINK href="styles.css" type="text/css" rel="stylesheet">
<script LANGUAGE="Javascript" SRC="Images/AjaxCall.js"></script>
<SCRIPT LANGUAGE="JavaScript">
<!--
var SCount = 0;

	function setAction(URL,Obj){
		var f = document.forms(0);
		var ParamsList = "?";
		Obj.target='ResultFrame';
		Obj.href=URL+ParamsList;
	}
		function ChkMandatoryField(F,T){
			var val= F.value;
			if(val==""){alert(T+" is mandatory");return false;}
		}
		function ChkNumField(F,T){
			var val = F.value;
			var pattern = /^([0-9]{10})$/;
			if(!(pattern.test(val)==true)){alert("Please enter valid "+T);return false;}
		}
		function ChkAlphaNumericField(F,T){
			var val = F.value;
			var pattern = /^([a-zA-Z0-9]{1,250})$/;
			if(!(pattern.test(val)==true)){alert("Please enter alphabets or numbers for "+T);return false;}
		}
		function ChkAlphaField(F,T){
			var val = F.value;
			var pattern = /^([a-zA-Z ]{1,250})$/;
			if(!(pattern.test(val)==true)){alert("Please enter text for "+T);return false;}
		}
		function ChkEmailField(F,T){
			var val = F.value;
			var pattern = /^[a-zA-Z0-9\-\.\_ ]+\@[a-zA-Z0-9 \-\.]+\.([a-zA-Z]{2,4})$/;
			if(!(pattern.test(val)==true)){alert("Please enter valid email for "+T);return false;}
		}
		function ChkDateField(F,T)
		{
			var val = F.value;
		    var pattern = /^[0-9]{4}-[0-9]{2}-[0-9]{2}$/;
		    if(!(pattern.test(val)==true)){alert("Please enter valid date format (yyyy-mm-dd) for "+T);return false;}
		}

		function validate()
		{
			var frm = document.forms(0);
			if(ChkMandatoryField(frm.CustomerName,'Customer Name')==false) return false;
			if(ChkAlphaField(frm.CustomerName,'Customer Name')==false) return false;
			if(ChkMandatoryField(frm.PhoneNumber,'Phone Number')==false) return false;
			if(ChkNumField(frm.PhoneNumber,'Phone Number')==false) return false;
			if(ChkMandatoryField(frm.Address,'Address')==false) return false;
			if(ChkMandatoryField(frm.Location,'Location')==false) return false;
			if(ChkAlphaField(frm.Location,'Location')==false) return false;
			if(ChkMandatoryField(frm.email,'email')==false) return false;
			if(ChkEmailField(frm.email,'email')==false) return false;
			if(ChkMandatoryField(frm.Gender,'Gender')==false) return false;
			if(ChkAlphaField(frm.Gender,'Gender')==false) return false;
			Params="?CustomerName="+frm.CustomerName.value+"&PhoneNumber="+frm.PhoneNumber.value+"&Address="+frm.Address.value+"&Location="+frm.Location.value+"&email="+frm.email.value+"&Gender="+frm.Gender.value;

			fnSaveCustomer(Params);
		}
		function fnSaveCustomer(Params)
		{
			var divObj = document.getElementById("infodiv");
			URL = "SaveCustomerInfo.jsp"+Params;
			//alert(URL);
			ajaxFunction(URL,divObj);
		}
//-->
</SCRIPT>


<head>
<body Class='SC'>
<HR>
<B><FONT COLOR="#CC00CC" face='verdana'>Customer Info</FONT></B>
<HR>
<BR><BR>
<FORM action="SaveCustomerInfo.jsp">
<%
/*Declaration of variables*/
//Connection con=null; stmt=null, rs=null,
Statement stmt1=null,stmt2=null;
ResultSet rs1=null,rs2=null;
int count=0,NumRows=0;
int sum=0;
String TicketId="T-";

//com.ewheelz.MyFunctions MF = new com.ewheelz.MyFunctions();
//TicketId = MF.genNextID("ticketdetails","TicketId","T-");


boolean tflag=false;
try
{
	/*Connection to MySQL database is made with JDBC class one driver*/
	//con = com.ewheelz.ConnectionPool.getConnection();
	Class.forName("com.mysql.jdbc.Driver");
	con=DriverManager.getConnection("jdbc:mysql://localhost:3306/ttms","root","110399");
	stmt =  con.createStatement();
	
	String Query1 = "Select incId From ticketdetails order by incId DESC";
	rs = stmt.executeQuery(Query1);
	if(rs.next())
	{
		sum=rs.getInt(1);
	}
	sum+=1;

	TicketId=TicketId+sum;
	System.out.print("ahsfha;hfa;shf;" + TicketId);
	
	/*String ss="";
	if(rs.next())
	{
		
		ss=rs.getString(1);
		System.out.println("ss" + ss);
		//TicketId=ss;
		System.out.println("ticketid1" + TicketId);
		if(ss==null)
			TicketId=TicketId+"0";
		//i++;
		//break;				
	}
	char ch[]=ss.toCharArray();
	int zeroAscii=(int)'0';
	
	for(int i=2;i<ch.length;i++)
	{
		char c=ch[i];
		int tempAscii=(int)c;
		sum=(sum*10)+(tempAscii-zeroAscii);
	}
	sum=sum+1;
	TicketId=TicketId+sum;
	System.out.println("ticketid" + TicketId);
	
	*/
	
	
        
        
     /*   String qry = "select max(`TicketId`) from `ticketdetails`";
        
        ResultSet res_set = stmt.executeQuery(qry);
        
        //String n ="sai";
        
       // n.subs
        //out.println("rs is: "+res_set);
        if(res_set.next())
		{
        	System.out.println("ticketid" + TicketId);
			TicketId = res_set.getString(1);
			if(TicketId == null)
				TicketId = "T-1";
		}
		else
			TicketId = "T-1";
       out.println("TicketId is: "+TicketId);
        String no = TicketId.substring(2).trim();
        
        TicketId = "T-"+(Integer.parseInt(no)+1);
        */
        
        
        
        
        
        
        //session.setAttribute("TicketId",TicketId);
	String Query = "Insert into ticketdetails values('"+sum+"','"+TicketId+"','"+RouteId+"','','"+rFrom+"','"+rTo+"','"+JDate+"','"+Departure+"','"+Arrival+"','"+SelSeat+"','"+BPoint+"',"+Fare+",'Progress','','"+BusId+"')";
    
	//out.println("Search Qry->"+Query);
	
	int result = stmt.executeUpdate(Query);
	if( result > 0)	{
		session.setAttribute("TicketId",TicketId);
		System.out.println("Ticket saved");
		tflag=true;
	}
	else{
		session.setAttribute("TicketId","");
		System.out.println("Ticket not saved");
		tflag=false;
	}
}
catch(Exception e)
{
	out.println("Exception"+e);
	tflag=false;
}
if(tflag==true){
%>
	<TABLE width="60%" align=center action="SaveCustomerInfo.jsp">
		<TR class="row_title">
				<TH align="center" colspan=2>Provide customer details</TH>
		</TR>	
		<TR class="row_odd">
				<TH align="left">Customer Name<FONT COLOR="red">*</FONT></TH>
				<TD><Input type=text   name='CustomerName' value=''></TD>
		</TR>
		<TR class="row_even">
				<TH align="left">Phone Number<FONT COLOR="red">*</FONT></TH>
				<TD><Input type=text   name='PhoneNumber' value=''></TD>
		</TR>
		<TR class="row_odd">
				<TH align="left">Address<FONT COLOR="red">*</FONT></TH>
				<TD><textarea name=Address rows=2 cols=20></textarea></TD>
		</TR>
		<TR class="row_even">
				<TH align="left">Location<FONT COLOR="red">*</FONT></TH>
				<TD><Input type=text   name='Location' value=''></TD>
		</TR>
		<TR class="row_odd">
				<TH align="left">Email<FONT COLOR="red">*</FONT></TH>
				<TD><Input type=text   name='email' value=''></TD>
		</TR>
		<TR class="row_even">
				<TH align="left">Gender<FONT COLOR="red">*</FONT></TH>
				<TD><SELECT NAME="Gender">
					<OPTION VALUE="Male" SELECTED>Male
					<OPTION VALUE="Female">Female
				</SELECT></TD>
		</TR>
		<!-- <TR class="row_odd">
				<TH align="right" colspan=2><td><input type=submit value="Save" ></TD>
		</TR> -->

	</TABLE>
	<P align=center><FONT  COLOR="black" face='Georgia'>Fields with <FONT SIZE="" COLOR="red">*</FONT> are mandatory </FONT></P>
	<div id='infodiv'></div>
<P align=right>
	<TD><input type="submit"  id="submit" value="submit"></TD>
	<!-- 
	<A onclick="if(document.getElementById('infodiv').innerHTML.indexOf('success')>-1){setAction('BookNow_S3.jsp',this)}else{alert('Customer info is mandatory');}" target="ResultFrame"><IMG SRC="Images/Menu/Continue1.jpg" border="0"
	onmouseout="this.src = 'Images/Menu/Continue1.jpg'" 
	onmouseover="this.src = 'Images/Menu/Continue2.jpg'"></A> -->
</P>
</FORM>
<%
}else{
	%>
		<P align=center><FONT  COLOR="red" face='Georgia'>An error occured. Please try again. Sorry for the inconvenience caused </FONT></P>
	<%
}
%>
</BODY>
</HTML>
