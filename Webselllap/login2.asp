<%@LANGUAGE="VBSCRIPT" CODEPAGE="65001"%>

<head>
<title>Cửa hàng máy tính | Đăng nhập :: Groupfour</title>
<link rel="shortcut icon" href="images/icon.png">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
<link href="css/login.css" rel="stylesheet" type="text/css" media="all" />
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
<form>
  <h1>Trang đăng nhập</h1>
  <input placeholder="Tên tài khoản" type="text" required="">
  <input placeholder="Mật khẩu" type="password" required="">
  <button>Đăng nhập</button>
</form>

</body>
</html>
