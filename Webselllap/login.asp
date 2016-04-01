<%
	'Green colorset
	'BackgroundColor="#C9DDB3"
	'BorderColor="#006600"
	
	'Blue colorset
	'BackgroundColor="#AFD1F8"
	'BorderColor="#000080"
	
	'Purple colorset
	BackgroundColor="#FDC8F2"
	BorderColor="#800080"
	
	Content = ""							'Clear the Content string
	QStr = Request.QueryString("login")		'Save the login querystring to QStr

	if ucase(left(QStr,6))="CREATE" then 
		Title = "Register"
	else
		Title = "Login"
	end if
	
	'The code below saves the contents the table must have in the variable Content
	'The content depends on what's in the QueryString
		
	if QStr="passfailed" then				
		Content = Content & "<tr><td valign=top bordercolor="& BackgroundColor &" align=center><P>Wrong password</P><A href=Javascript:history.go(-1)>Back</A></td></tr>"
	elseif QStr="createpassfailed" then		
		Content = Content & "<tr><td valign=top bordercolor="& BackgroundColor &" align=center><P>Wrong password</P><A href=Javascript:history.go(-1)>Back</A><BR><BR><A HREF=login.asp>Cancel registration</A></td></tr>"
	elseif QStr="namefailed" then
		Content = Content & "<tr><td valign=top bordercolor="& BackgroundColor &" align=center><P>Invalid username</P><A HREF=login.asp?login=createnew>Click here to create an acount</A><BR><BR><A HREF=Javascript:history.go(-1)>Back</A></td></tr>"
	elseif QStr="createnamefailed" then
		Content = Content & "<tr><td valign=top bordercolor="& BackgroundColor &" align=center><P>Invalid username</P><A HREF=Javascript:history.go(-1)>Back</A><BR><BR><A HREF=login.asp>Cancel registration</A></td></tr>"
	elseif QStr="creatednew" then
		Content = Content & "<tr><td valign=top bordercolor="& BackgroundColor &" align=center><P>Your account has been created</P><A HREF=login.asp>Login</A></td></tr>"
	elseif QStr="createnew" then
		Content = Content & "<form name=frmCreate method=POST action=create.asp>"
		Content = Content & "<tr><td valign=top bordercolor="& BackgroundColor &" align=left><br>Username: &nbsp;<input type=text name=txtUsername></td></tr>"
		Content = Content & "<tr><td valign=top bordercolor="& BackgroundColor &" align=left>Password: &nbsp; <input type=password name=txtPassword></td></tr>"
		Content = Content & "<tr><td valign=top bordercolor="& BackgroundColor &" align=left>Email: &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <input type=text name=txtEmail></td></tr>"
        Content = Content & "<tr><td valign=top bordercolor="& BackgroundColor &" align=left>Phone: &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <input type=password name=txtSDT></td></tr>"
		Content = Content & "<tr><td valign=top bordercolor="& BackgroundColor &" align=center><input type=submit name=cmdSubmit value=Register></td></tr>"
		Content = Content & "</form>"
	else
		Content = Content & "<form name=frmMain method=POST action=verify.asp>"
		Content = Content & "<tr><td valign=top bordercolor="& BackgroundColor &" align=center><br>Username: <input type=text name=txtUsername></td></tr>"
		Content = Content & "<tr><td valign=top bordercolor="& BackgroundColor &" align=center>Password: <input type=password name=txtPassword></td></tr>"
		Content = Content & "<tr><td valign=top bordercolor="& BackgroundColor &" align=center><input type=submit name=cmdSubmit value=Login></td></tr>"
		Content = Content & "</form>"
		Content = Content & "<tr><td valign=top bordercolor="& BackgroundColor &" align=center><A HREF=login.asp?login=createnew>Click here to create an acount</A></td></tr>"
	end if

%>

<!-- Build the page with the table -->
 
<head>  
<title>ASP Login</title>
</head>

<body link="<% Response.Write(BorderColor) %>" vlink="<% Response.Write(BorderColor) %>" alink="<% Response.Write(BorderColor) %>" text="<% Response.Write(BorderColor) %>">
<br>
<div align="center">
	
<table border="2" cellspacing="5" bgcolor="<% Response.Write(BackgroundColor) %>" bordercolor="<% Response.Write(BorderColor) %>"width="250px">
		
		
	<%
	Response.Write("<tr><td valign=top align=center><b>" & Title & "</b></td></tr>")
	Response.Write(Content)	 ' Paste the contents in the table
	%>
				
</table>
	
</div>
		
</body>

	