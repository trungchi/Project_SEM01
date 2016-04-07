<%@LANGUAGE="VBSCRIPT" CODEPAGE="65001"%>
<%
	'Green colorset
	'BackgroundColor="#C9DDB3"
	'BorderColor="#006600"
	
	'Blue colorset
	'BackgroundColor="#AFD1F8"
	'BorderColor="#000080"
	
	'Purple colorset
	BackgroundColor=""
	BorderColor="#B53D02"
	
	Content = ""							'Clear the Content string
	QStr = Request.QueryString("login")		'Save the login querystring to QStr

	if ucase(left(QStr,6))="CREATE" then 
		Title = "Trang đăng ký"
	else
		Title = "Trang đăng nhập"
	end if
	
	'The code below saves the contents the table must have in the variable Content
	'The content depends on what's in the QueryString
		
	if QStr="passfailed" then				
		Content = Content & "<tr><td valign=top bordercolor="& BackgroundColor &" align=center><P>Sai mật khẩu</P><A href=Javascript:history.go(-1)>Quay lại</A></td></tr>"
	elseif QStr="createpassfailed" then		
		Content = Content & "<tr><td valign=top bordercolor="& BackgroundColor &" align=center><P>Sai mật khẩu</P><A href=Javascript:history.go(-1)>Quay lại</A><BR><BR><A HREF=login.asp>Hủy đăng ký</A></td></tr>"
	elseif QStr="namefailed" then
		Content = Content & "<tr><td valign=top bordercolor="& BackgroundColor &" align=center><P>Tên tài khoản không hợp lệ!</P><A HREF=login.asp?login=createnew>Nhấp vào đây để đăng ký</A><BR><BR><A HREF=Javascript:history.go(-1)>Quay lại</A></td></tr>"
	elseif QStr="createnamefailed" then
		Content = Content & "<tr><td valign=top bordercolor="& BackgroundColor &" align=center><P>Tên tài khoản không hợp lệ!</P><A HREF=Javascript:history.go(-1)>Back</A><BR><BR><A HREF=login.asp>Hủy đăng ký</A></td></tr>"
	elseif QStr="creatednew" then
		Content = Content & "<tr><td valign=top bordercolor="& BackgroundColor &" align=center><P>Tạo tài khoản thành công!</P><A HREF=login.asp>Đăng nhập</A></td></tr>"
	elseif QStr="createnew" then
		Content = Content & "<form name=frmCreate method=POST action=create.asp>"
		Content = Content & "<tr><td valign=top bordercolor="& BackgroundColor &" align=left><br>Tên đăng nhập<br> &nbsp;<input type=text name=txtUsername></td></tr>"
		Content = Content & "<tr><td valign=top bordercolor="& BackgroundColor &" align=left>Mật khẩu<br> &nbsp;<input type=password name=txtPassword></td></tr>"
		Content = Content & "<tr><td valign=top bordercolor="& BackgroundColor &" align=left>Email<br> &nbsp;<input type=text name=txtEmail></td></tr>"
        Content = Content & "<tr><td valign=top bordercolor="& BackgroundColor &" align=left>Số điện thoại<br> &nbsp;<input type=text name=txtSDT></td></tr>"
		Content = Content & "<tr><td valign=top bordercolor="& BackgroundColor &" align=center><input type=submit name=cmdSubmit value='Đăng ký'></td></tr>"
		Content = Content & "</form>"
	else
		Content = Content & "<form name=frmMain method=POST action=verify.asp>"
		Content = Content & "<tr><td valign=top bordercolor="& BackgroundColor &" align=center><br>&nbsp;Tên đăng nhập<br> <input type=text name=txtUsername></td></tr>"
		Content = Content & "<tr><td valign=top bordercolor="& BackgroundColor &" align=center>&nbsp;Mật khẩu<br> <input type=password name=txtPassword></td></tr>"
		Content = Content & "<tr><td valign=top bordercolor="& BackgroundColor &" align=center><input type=submit name=cmdSubmit value='Đăng nhập'></td></tr>"
		Content = Content & "</form>"
		Content = Content & "<tr><td valign=top bordercolor="& BackgroundColor &" align=center><br><A HREF=login.asp?login=createnew>Nhấp vào đây để đăng ký</A></td></tr>"
	end if

%>

<!-- Build the page with the table -->
 
<head>  
<title>Cửa hàng máy tính | Đăng nhập :: Groupfour</title>
<link rel="shortcut icon" href="images/icon.png">
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
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

	