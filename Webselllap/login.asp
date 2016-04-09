<head>
    <title>Cửa hàng máy tính | Đăng nhập :: Groupfour</title>
    <link rel="shortcut icon" href="images/icon.png">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
    <link href="css/login.css" rel="stylesheet" type="text/css" media="all" />

<style>HTML,BODY{cursor: url("images/monkeyani.cur"), url("images/monkey-ani.gif"), auto;}</style>
</head>
<body>
<div class="pages-top">
    <div class="logo">
        <a href="index.asp"><img src="images/logo.png" alt=""/></a>
    </div>
</div>
<div class="cntr">
	<%@LANGUAGE="VBSCRIPT" CODEPAGE="65001"%>
    <%
        Content = ""							
        QStr = Request.QueryString("login")		
    
        if ucase(left(QStr,6))="CREATE" then 
            Title = "Trang đăng ký"
        else
            Title = "Trang đăng nhập"
        end if
        if QStr="passfailed" then				
            Content = Content & "<tr><td><P>Sai mật khẩu</P><A href=Javascript:history.go(-1) class=colorlink>Quay lại</A></td></tr>"
        elseif QStr="createpassfailed" then		
            Content = Content & "<tr><td><P>Sai mật khẩu</P><A href=Javascript:history.go(-1) class=colorlink>Quay lại</A><A HREF=login.asp>Hủy đăng ký</A></td></tr>"
        elseif QStr="namefailed" then
            Content = Content & "<tr><td><P>Tên tài khoản không hợp lệ!</P><A HREF=login.asp?login=createnew class=colorlink>Nhấp vào đây để đăng ký</A><br><br><A HREF=login.asp class=colorlink>Quay lại đăng nhập</A></td></tr>"
        elseif QStr="createnamefailed" then
            Content = Content & "<tr><td><P>Tên tài khoản không hợp lệ!</P><A HREF=Javascript:history.go(-1)>Quay lại</A><A HREF=login.asp>Hủy đăng ký</A></td></tr>"
        elseif QStr="creatednew" then
            Content = Content & "<tr><td><P>Tạo tài khoản thành công!</P><A HREF=href=Javascript:history.go(-1)>Đăng nhập</A></td></tr>"
        elseif QStr="createnew" then
            Content = Content & "<form name=frmCreate method=POST action=create.asp>"
            Content = Content & "<tr><td>Tên đăng nhập<input type=text name=txtUsername></td></tr>"
            Content = Content & "<tr><td>Mật khẩu <input type=password name=txtPassword></td></tr>"
            Content = Content & "<tr><td>Email <input type=text name=txtEmail></td></tr>"
            Content = Content & "<tr><td>Số điện thoại<input type=tell name=txtSDT></td></tr>"
            Content = Content & "<tr><td><button type=submit name=cmdSubmit value=Đăng ký>Đăng ký</td></tr>"
			Content = Content & "<tr><td><A href=login.asp class=colorlink>Quay lại đăng nhập</A></td></tr>"
            Content = Content & "</form>"
        else
            Content = Content & "<form name=frmMain method=POST action=verify.asp>"
            Content = Content & "<tr><td>Tên đăng nhập <input type=text name=txtUsername></td></tr>"
            Content = Content & "<tr><td>Mật khẩu <input type=password name=txtPassword></td></tr>"
            Content = Content & "<tr><td><button type=submit name=cmdSubmit value=Đăng nhập>Đăng nhập</td></tr>"
            Content = Content & "</form>"
            Content = Content & "<tr><td><A HREF=login.asp?login=createnew class=colorlink>Nhấp vào đây để đăng ký</A></td></tr>"
        end if
    
    %>
    <div align="center">
    <table>
        <%
        Response.Write("<tr class=title><td valign=top align=center><b>" & Title & "</b><br><br></td></tr>")
        Response.Write(Content)
        %>			
    </table>
    </div>
</div>
</body>
</html>
