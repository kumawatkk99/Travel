<HTML>

<%@ page language="java" %>
<%@ page session="true" %>
<%@ page import="java.util.*" %>
<head>
<SCRIPT LANGUAGE="JavaScript">
<!--
history.go(+1);
		function setAction(URL, Obj){
		var f = document.forms(0);
		var ParamsList = "?Name="+f.Name.value+"&Pwd="+f.Pwd.value;
		Obj.target='_self';
		Obj.href=URL+ParamsList;
		}
//-->
</SCRIPT>
	<LINK href="styles.css" type="text/css" rel="stylesheet">
</head>
<BODY onload="document.LOGIN.Name.focus();" CLASS="SC">
<FORM ACTION="Validate2.jsp">

<TABLE align='left'  cellspacing=0 cellpadding=0>
<TR>
	<TD><FONT SIZE="-1" COLOR="#CC0099"><B>Login:</B></FONT>&nbsp;&nbsp;<FONT size="-2" COLOR="#CC0099" face='verdana'>UserName</FONT></TD>
	<TD><INPUT TYPE="text" NAME="Name" class='TextField' size="8"></TD>
	<TD><FONT size="-2" COLOR="#CC0099" face='verdana'>Password</FONT></TD>
	<TD><INPUT TYPE="password" NAME="Pwd" class='TextField' size="8"></TD>
	<TD><input type="submit"  id="submit" value="submit"></TD>
</TR>
</TABLE>

</FORM>
</BODY>
</HTML>
