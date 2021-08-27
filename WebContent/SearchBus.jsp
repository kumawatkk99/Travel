<html>

<head>
<meta http-equiv="Content-Language" content="en-us">
<meta http-equiv="Content-Type" content="text/html; charset=windows-1252">
<title>Book Tickets Now</title>
  <script LANGUAGE="Javascript" SRC="Images/validate.js"></script>
  <script LANGUAGE="Javascript" SRC="Images/calender.js"></script>
   <LINK href="styles.css" type="text/css" rel="stylesheet">
 <SCRIPT LANGUAGE="JavaScript">
 <!--
	function setAction(URL,Obj){
		var f = document.forms(0);
		var From = f.From.options[f.From.options.selectedIndex].text;
		//alert(From);

		var To = f.To.options[f.To.options.selectedIndex].text;
		//alert(To);
		if(From==To){
			alert("From and To can not be same. Please select different places");
			f.To.focus();
			return false;

		}
		var JDate = f.JDate.value;
		//alert(JDate);
		if(JDate=="") {alert("Journey date is mandatory");f.JDate.focus();return false;}
		if(validatePastDate(f.JDate)==false){
			alert("Past date is not allowed. Please select another date");
			f.JDate.focus();return false;
		}
		var BusType = f.BusType.options[f.BusType.options.selectedIndex].text;
		//alert(BusType);
		var NoPass = f.NoPass.value;
		if(NoPass==""||isNaN(NoPass)==true||NoPass<=0) {alert("Please enter a valid number for Number of passengers");f.JDate.focus();return false;}
		//alert(NoPass);
		var ParamsList = "?From="+From+"&To="+To+"&JDate="+JDate+"&BusType="+BusType+"&NoPass="+NoPass;
		Obj.target='tgt';
		Obj.href=URL+ParamsList;
	}
 //-->
 </SCRIPT>
</head>

<body class="SC">
<FORM ACTION="Search.jsp">
	

<p align="center"><b><font face="Verdana" color="#800080" size="2">Book Tickets 
Now</font></b></p>
<div align="left">

	<table align="center">
		<tr class="row_odd">
			<td>From</td>
			<td><SELECT name="From" class="ListBox">
				<option>A.S.Peta</option>
				<option>Ahmedabad</option>
				
				<option>Amalapuram</option>
				<option>Ambaji       </option>
				
				<option>Anakapalli</option>
				<option>Anantapur</option>
				<option>Annavaram</option>
				<option>Atmakur</option>
				<option>Aurangabad </option>
				<option>Bangalore</option>
				<option>Bapatla</option>
				<option>Bhopal</option>
				<option>Bhuj</option>
				<option>Chandigarh </option>
				<option>Chennai</option>
				<option>Chilakaluripet</option>
				<option>Chirala</option>
				<option>Cochin</option>
				<option>Delhi</option>
				<option>Devarpalli</option>
				<option>Gandhidham </option>
				<option>Goa</option>
				<option>Gokavaram</option>
				<option>Guduru</option>
				<option>Guntur</option>
				<option>Hubli</option>
				<option selected="selected" >Hyderabad</option>
				<option>Indore </option>
				<option>Inkollu</option>
				<option>Jaggampet</option>
				<option>Jaipur</option>
				<option>Jammu</option>
				<option>Jamnagar </option>
				<option>Jangareddy Gudem</option>
				<option>Kadapa</option>
				<option>Kakinada</option>
				<option>Kaligiri</option>
				<option>Karimnagar</option>
				<option>Kathipudi</option>
				<option>Katra </option>
				<option>Kavali</option>
				<option>Kolhapur </option>
				<option>Kovvuru</option>
				<option>Kurnool</option>
				<option>Mahabaleshwar</option>
				<option>Mahabalipuram </option>
				<option>Manali </option>
				<option>Mangalore </option>
				<option>MountAbu</option>
				<option>Mumbai</option>
				<option>Naidupeta</option>
				<option>Narasaraopet</option>
				<option>Nasik</option>
				<option>Nellore</option>
				<option>Ongole</option>
				<option>Palitana </option>
				<option>Pangidi</option>
				<option>Peddapuram</option>
				<option>Ponnur</option>
				<option>Pune</option>
				<option>Railway Koduru</option>
				<option>Raja Nagaram</option>
				<option>Rajampet</option>
				<option>Rajamundry</option>
				<option>Rajkot</option>
				<option>Rangampeta</option>
				<option>Razole</option>
				<option>S.Konda</option>
				<option>Samarla Kota</option>
				<option>Sathenpalli</option>
				<option>Shiridi</option>
				<option>Shreenathji </option>
				<option>Srikakulam</option>
				<option>Srinagar </option>
				<option>Sullurupeta</option>
				<option>Surat</option>
				<option>Tenali</option>
				<option>Thrissur </option>
				<option>Tiruchirapally </option>
				<option>Tirupathi</option>
				<option>Tuni</option>
				<option>Udaipur</option>
				<option>Ujjain</option>
				<option>Ulavapadu</option>
				<option>Vadodara</option>
				<option>Vetapalem</option>
				<option>Vijayanagaram</option>
				<option>Vijayawada</option>
				<option>Vinjamoor</option>
				<option>Vizag</option>
				<option>Warangal</option>

			</select>
		</td>
		</tr>
		<tr class="row_even">
			<td>To</td>
			<td><SELECT name="To" class="ListBox">
				<option>A.S.Peta</option>
				<option>Ahmedabad</option>
				<option>Amalapuram</option>
				<option>Ambaji       </option>
				
				<option>Anakapalli</option>
				<option>Anantapur</option>
				<option>Annavaram</option>
				<option>Atmakur</option>
				<option>Aurangabad </option>
				<option>Bangalore</option>
				<option>Bapatla</option>
				<option>Bhopal</option>
				<option>Bhuj</option>
				<option>Chandigarh </option>
				<option>Chennai</option>
				<option>Chilakaluripet</option>
				<option>Chirala</option>
				<option>Cochin</option>
				<option>Delhi</option>
				<option>Devarpalli</option>
				<option>Gandhidham </option>
				<option>Goa</option>
				<option>Gokavaram</option>
				<option>Guduru</option>
				<option>Guntur</option>
				<option>Hubli</option>
				<option selected="selected" >Hyderabad</option>
				<option>Indore </option>
				<option>Inkollu</option>
				<option>Jaggampet</option>
				<option>Jaipur</option>
				<option>Jammu</option>
				<option>Jamnagar </option>
				<option>Jangareddy Gudem</option>
				<option>Kadapa</option>
				<option>Kakinada</option>
				<option>Kaligiri</option>
				<option>Karimnagar</option>
				<option>Kathipudi</option>
				<option>Katra </option>
				<option>Kavali</option>
				<option>Kolhapur </option>
				<option>Kovvuru</option>
				<option>Kurnool</option>
				<option>Mahabaleshwar</option>
				<option>Mahabalipuram </option>
				<option>Manali </option>
				<option>Mangalore </option>
				<option>MountAbu</option>
				<option>Mumbai</option>
				<option>Naidupeta</option>
				<option>Narasaraopet</option>
				<option>Nasik</option>
				<option>Nellore</option>
				<option>Ongole</option>
				<option>Palitana </option>
				<option>Pangidi</option>
				<option>Peddapuram</option>
				<option>Ponnur</option>
				<option>Pune</option>
				<option>Railway Koduru</option>
				<option>Raja Nagaram</option>
				<option>Rajampet</option>
				<option>Rajamundry</option>
				<option>Rajkot</option>
				<option>Rangampeta</option>
				<option>Razole</option>
				<option>S.Konda</option>
				<option>Samarla Kota</option>
				<option>Sathenpalli</option>
				<option>Shiridi</option>
				<option>Shreenathji </option>
				<option>Srikakulam</option>
				<option>Srinagar </option>
				<option>Sullurupeta</option>
				<option>Surat</option>
				<option>Tenali</option>
				<option>Thrissur </option>
				<option>Tiruchirapally </option>
				<option>Tirupathi</option>
				<option>Tuni</option>
				<option>Udaipur</option>
				<option>Ujjain</option>
				<option>Ulavapadu</option>
				<option>Vadodara</option>
				<option>Vetapalem</option>
				<option>Vijayanagaram</option>
				<option>Vijayawada</option>
				<option>Vinjamoor</option>
				<option>Vizag</option>
				<option>Warangal</option>
			</SELECT></td>
		</tr>
		<!-- <tr class="row_odd">
			<td>Journey Date</td>
			<td><Input type=text name='JDate' value='' readonly size="12"  class="TextField"><img onkeypress="fnCalendar(this)" id="imgDate" style="CURSOR: hand" onClick="fnCalendar(this)" height="16" src="Images/CalDis.gif" width="16" border="0" name="imgDate" onMouseOver="fnEnableCalLookup(this)" onMouseOut="fnDisableCalLookup(this)" ></td>
		</tr> -->
		<tr class="row_odd">
				 <td><label class="form-label">Journey Date</label><br></td>
							<td><input type="date" id="doj" name="JDate" class="form-control"></td> 
							</TR>
		<tr class="row_even">
			<td>Bus Type</td>
			<td><SELECT NAME="BusType" class="ListBox">
				<OPTION VALUE="Any" SELECTED>Any
				<OPTION VALUE="Sleeper">Sleeper
				<OPTION VALUE="AC-Sleeper">AC
				<OPTION VALUE="Non AC">Non AC
			</SELECT></td>
		</tr>
		<tr class="row_odd">
			<td>No. of Passengers</td>
			<td><INPUT TYPE="text" NAME="NoPass" size="12" class="TextField"></td>
		</tr>
		<tr class="row_even">
			<td>&nbsp;</td>
			<TD><input type="submit"  id="submit" value="submit"></TD>
			
			<!-- <td><A onclick="setAction('Search.jsp',this)" target="ResultFrame">chk</A></td> -->
			<!-- <IMG SRC="Images/Menu/chkAvailability1.gif" border="0"
			onmouseout="this.src = 'Images/Menu/chkAvailability1.gif'" 
			onmouseover="this.src = 'Images/Menu/chkAvailability2.gif'"> -->
		</tr>
	</table>

</div>
</FORM>
</body>

</html>