<!--
     File : Validate.jsp

 -->

<HTML>
<%@ page language="java" %>
<%@ page import="java.sql.*" %>
<%@ page import="java.lang.*" %>
<%@ page session="true" %>
<head>
	<LINK href="styles.css" type="text/css" rel="stylesheet">
</head>
<body Class="SC" scroll="yes">
<%! String pass_word; %>
<%! String user_id; %>
<%! int flag=1;  %>


<%

//Declaration of variables

Connection con=null;
Statement stmt=null;
ResultSet rs=null;
   user_id = request.getParameter("Name");
   pass_word = request.getParameter("Pwd");
   System.out.println("user_id = "+user_id+"\t"+"pass_word = "+pass_word);
//Checking for userid and password

try
{
	
	
	
	
	
	//Connection to MS Acess database is made with JDBC class one driver
	
//	Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
//	con = DriverManager.getConnection("jdbc:odbc:JobPortal","root","");

Class.forName("com.mysql.cj.jdbc.Driver");
con=DriverManager.getConnection("jdbc:mysql://localhost:3306/ttms","root","110399");

	//con = com.ewheelz.ConnectionPool.getConnection();
	System.out.println("Connection is: "+con);
	stmt =  con.createStatement();

	//Retrives data from the database

	String query = "SELECT auth, userid  from login where userid='"+user_id+"' and password='"+pass_word+"'";

	System.out.println(query);


	rs = stmt.executeQuery(query);
	System.out.println(rs);
	if(rs.next())
	{
				//Puts the username and connection variable to session
				int value = rs.getInt(1);

				//System.out.println(value);
				System.out.println(rs.getString(2));
				if(!(value>0))	{
	        	    System.out.println("User has successfully logged in...");
					session.setAttribute("auth",new Integer(value));
					session.setAttribute("userr",user_id);
					session.setAttribute("connection",con);
	        	    flag=1;
				}
	}

}
catch(Exception e)
{
	System.out.println("Exception"+e);
}

	//If username and password is validated, then the user is redirected to homepage
	if(flag==1)
	{
	flag=0;
	
%>
	 
		<P align=center><FONT COLOR="Green" Face="Georgia"><I><B>Welcome <%=user_id%></B></I></FONT>
		<BR><BR>
			<A HREF="AdminMenu.html" target="ResultFrame">
			<img border="0" name="admin" src="Images/Menu/AdminOptions01.jpg" width="105" height="21" onMouseOver="document['admin'].src='Images/Menu/AdminOptions02.jpg'" onMouseOut="document['admin'].src='Images/Menu/AdminOptions01.jpg'" ></a>
			&nbsp;<A HREF="Logout.jsp" target="_self">
			<img border="0" name="logout" src="Images/Menu/Logout001.jpg" width="105" height="21" onMouseOver="document['logout'].src='Images/Menu/Logout002.jpg'" onMouseOut="document['logout'].src='Images/Menu/Logout001.jpg'" ></a>
	<jsp:forward page="AdminMenu.html" />
				</P>

<%
	}
	else
	{
	//If username and password is not valid, then the user is redirected back to Loginpage
%>
	<p><% System.out.println(user_id);%></p>
		<P align=center><IMG SRC="Images/error.gif" WIDTH="17" HEIGHT="13" BORDER="0" ALT=""><FONT COLOR="Red" Face="Georgia">SORRY! Invalid username/password please try again</FONT>
		<BR>
		<A HREF="Login.jsp">&lt;&lt;Back</A>
		</P>
	
<%
	}
	
%>



</BODY>
</HTML>
