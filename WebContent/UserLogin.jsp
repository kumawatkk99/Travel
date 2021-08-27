<HTML>


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
<BODY onLoad="document.LOGIN.Name.focus();MM_preloadImages('ej/GreenBus.jpg')" CLASS="SC">
<FORM NAME='LOGIN' ACTION="Validate2.jsp">	

  <TABLE height="95" align='center' cellpadding=0  cellspacing=0>
<TR>
	<TD><FONT SIZE="-1" COLOR="#CC0099"><B></B></FONT><FONT size="+2" COLOR="#CC0099" face='verdana'>User ID</FONT></TD>
	<TD><INPUT TYPE="text" NAME="Name" style="color:#FF66FF" ></TD></TR>
<tr><TD><FONT size="+2" COLOR="#CC0099" face='verdana'>Password</FONT></TD>
	<TD><INPUT TYPE="password" NAME="Pwd"  style="color:#FF66FF" ></TD></tr>
<tr>	
		<td><input type="submit"  id="submit" value="submit"></td>
		
		
		
		<!-- <td><A href="aaaaaa.jsp"  target="ResultFrame">submit</A></td>
		onClick="setAction('Validate.jsp', this)"
		<IMG SRC="Images/Menu/Go1.jpg" WIDTH="100" HEIGHT="20" BORDER="0" ALT="Login" onmouseover='this.src="Images/Menu/Go2.jpg"' onmouseout='this.src="Images/Menu/Go1.jpg"' > -->


<td><input type='reset'></td>
</TR>
</TABLE><br>

  <a href="#" onMouseOut="MM_swapImgRestore()" onMouseOver="MM_swapImage('Image2','','ej/White.jpg',1)"><img src="ej/GreenBus.jpg" name="Image2" width="749" height="255" border="0"></a>
</FORM>
</BODY>
</HTML>
