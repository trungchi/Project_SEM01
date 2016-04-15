<%@LANGUAGE="VBSCRIPT" CODEPAGE="65001"%>
<head>
    <title>Cửa hàng máy tính | Đăng nhập :: Groupfour</title>
    <link rel="shortcut icon" href="../images/icon.png">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link href="../css/login.css" rel="stylesheet" type="text/css" media="all" />
    <link href='http://fonts.googleapis.com/css?family=Roboto:400' rel='stylesheet' type='text/css'>

</head>
<body>
<div class="cntr">
    <%
        Content = ""							
        QStr = Request.QueryString("loginAD")		
    
        if ucase(left(QStr,6))="CREATE" then 
            Title = "Trang đăng ký"
        else
            Title = "Trang đăng nhập"
        end if
        if QStr="passfailed" then
			Content = Content & "<div class=box>"				
            Content = Content & "<p class=noti>Sai mật khẩu</P><A href=Javascript:history.go(-1) class=colorlink>Quay lại</A>"
			Content = Content & "</div>"
        elseif QStr="createpassfailed" then
			Content = Content & "<div class=box>"		
            Content = Content & "<div><p class=noti>Đăng ký thất bại!</p><A href=Javascript:history.go(-1) class=colorlink>Quay lại đăng ký</A></br><A HREF=loginAD.asp class=colorlink>Hủy đăng ký</A></div>"
			Content = Content & "</div>"
        elseif QStr="namefailed" then
		Content = Content & "<div class=box>"
            Content = Content & "<p class=noti>Tên tài khoản không hợp lệ!</P><A HREF=loginAD.asp?loginAD=createnew class=colorlink>Nhấp vào đây để đăng ký</A><br><br><A HREF=loginAD.asp class=colorlink>Quay lại đăng nhập</A>	"
			Content = Content & "</div>"
        elseif QStr="createnamefailed" then
			Content = Content & "<div class=box>"	
            Content = Content & "<p class=noti>Tên tài khoản không hợp lệ!</P><A HREF=Javascript:history.go(-1)class=colorlink>Quay lại</A><A HREF=loginAD.asp class=colorlink>Hủy đăng ký</A>"
			Content = Content & "</div>"
        elseif QStr="creatednew" then
			Content = Content & "<div class=box>"
            Content = Content & "<p class=noti>Tạo tài khoản thành công!</p><A HREF=loginAD.asp class=colorlink>Đăng nhập</A>"
			Content = Content & "</div>"
        elseif QStr="createnew" then
            Content = Content & "<form name=frmCreate method=POST action=createAD.asp>"
            Content = Content & "<input type=text name=txtUsername placeholder='Tên đăng nhập' required>"
            Content = Content & "<input type=password name=txtPassword placeholder='Mật khẩu' required>"
			Content = Content & "<input type=text name=txtTenThat placeholder='Tên Thật' required>"
            Content = Content & "<button type=submit name=cmdSubmit value='Đăng ký'>Đăng ký</button>"
			Content = Content & "</br></br><A href=loginAD.asp class=colorlink>Quay lại đăng nhập</A>"
            Content = Content & "</form>"
        else
            Content = Content & "<form name=frmMain method=POST action=verifyAD.asp>"
            Content = Content & "<input type=text name=txtUsername placeholder='Tên đăng nhập' required>"
            Content = Content & "<input type=password name=txtPassword placeholder='Mật khẩu' required>"
            Content = Content & "<button type=submit name=cmdSubmit>Đăng nhập</button>"
            Content = Content & "</form>"
            Content = Content & "</br></br><A HREF=loginAD.asp?loginAD=createnew class=colorlink>Nhấp vào đây để đăng ký</A>"
        end if
    
    %>
    <div align="center">
        <%
        Response.Write("<p class=title><td align=center><b>" & Title & "</p>")
        Response.Write(Content)
        %>
    </div>
</div>
</body>
</html>
