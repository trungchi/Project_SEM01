<%
	'Save the entered username and password
	Username = Request.Form("txtUsername")	
	Password = Request.Form("txtPassword")
	
	'Build connection with database
	set conn = server.CreateObject ("ADODB.Connection")		
	conn.Open "DRIVER={SQL Server};SERVER=localhost;UID=sa;PWD=123456;DATABASE=WEBSITE_BAN_MAY_TINH;"
	set rs = server.CreateObject ("ADODB.Recordset")		
	'Open record with entered username
	rs.Open "SELECT * FROM TaikhoanKH where taikhoandangnhap='"& Username &"'", conn, 1 
	
	'If there is no record with the entered username, close connection
	'and go back to login with QueryString
	If rs.recordcount = 0 then
		rs.close
		conn.close
		set rs=nothing
		set conn=nothing
		Response.Redirect("login.asp?login=namefailed")
	end if
	
	'If entered password is right, close connection and open mainpage
	if rs("matkhau") = Password then
		Session("name") = rs("taikhoandangnhap")
		rs.Close
		conn.Close
		set rs=nothing
		set conn=nothing
		Response.Redirect("index.asp")
	'If entered password is wrong, close connection 
	'and return to login with QueryString
	else
		rs.Close
		conn.Close
		set rs=nothing
		set conn=nothing
		Response.Redirect("login.asp?login=passfailed")
	end if	

%>
