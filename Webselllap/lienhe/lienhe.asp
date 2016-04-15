<%@LANGUAGE="VBSCRIPT" %>
<!--#include file="../Connections/Connection.asp" -->
<%
Dim MM_editAction
MM_editAction = CStr(Request.ServerVariables("SCRIPT_NAME"))
If (Request.QueryString <> "") Then
  MM_editAction = MM_editAction & "?" & Server.HTMLEncode(Request.QueryString)
End If

' boolean to abort record edit
Dim MM_abortEdit
MM_abortEdit = false
%>
<%
If (CStr(Request("MM_insert")) = "form1") Then
  If (Not MM_abortEdit) Then
    ' execute the insert
    Dim MM_editCmd

    Set MM_editCmd = Server.CreateObject ("ADODB.Command")
    MM_editCmd.ActiveConnection = MM_Connection_STRING
    MM_editCmd.CommandText = "INSERT INTO dbo.YKKH (TenKH, Email, DC, DC, NoiDung) VALUES (?, ?, ?, ?, ?)" 
    MM_editCmd.Prepared = true
    MM_editCmd.Parameters.Append MM_editCmd.CreateParameter("param1", 201, 1, 50, Request.Form("txtTen")) ' adLongVarChar
    MM_editCmd.Parameters.Append MM_editCmd.CreateParameter("param2", 201, 1, 50, Request.Form("txtEmail")) ' adLongVarChar
    MM_editCmd.Parameters.Append MM_editCmd.CreateParameter("param3", 202, 1, 100, Request.Form("txtDC")) ' adVarWChar
    MM_editCmd.Parameters.Append MM_editCmd.CreateParameter("param4", 202, 1, 100, Request.Form("txtSDT")) ' adVarWChar
    MM_editCmd.Parameters.Append MM_editCmd.CreateParameter("param5", 202, 1, 4000, Request.Form("txtRP")) ' adVarWChar
    MM_editCmd.Execute
    MM_editCmd.ActiveConnection.Close

    ' append the query string to the redirect URL
    Dim MM_editRedirectUrl
    MM_editRedirectUrl = "../index.asp"
    If (Request.QueryString <> "") Then
      If (InStr(1, MM_editRedirectUrl, "?", vbTextCompare) = 0) Then
        MM_editRedirectUrl = MM_editRedirectUrl & "?" & Request.QueryString
      Else
        MM_editRedirectUrl = MM_editRedirectUrl & "&" & Request.QueryString
      End If
    End If
    Response.Redirect(MM_editRedirectUrl)
  End If
End If
%>
<%
Dim RP
Dim RP_cmd
Dim RP_numRows

Set RP_cmd = Server.CreateObject ("ADODB.Command")
RP_cmd.ActiveConnection = MM_Connection_STRING
RP_cmd.CommandText = "SELECT * FROM dbo.YKKH" 
RP_cmd.Prepared = true

Set RP = RP_cmd.Execute
RP_numRows = 0
%>
<!DOCTYPE HTML>
<html>
<head>
<title>Cửa hàng máy tính | Liên hệ :: Groupfour</title>
<link rel="shortcut icon" href="../images/icon.png">
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="../css/style.css" rel="stylesheet" type="text/css" media="all" />
<link href='http://fonts.googleapis.com/css?family=Lato:400,300,600,700,800' rel='stylesheet' type='text/css'>
<script src="../js/jquery.min.js"></script>
<script type="text/javascript" src="../js/jquery.lightbox.js"></script>
<link rel="stylesheet" type="text/css" href="css/lightbox.css" media="screen" />
  <script type="text/javascript">
    $(function() {
        $('.gallery a').lightBox();
    });
   </script>

<style>HTML,BODY{cursor: url("../images/monkeyani.cur"), url("../images/monkey-ani.gif"), auto;}</style>
</head>
<body>
<div class="wrap"> 
    <div class="gocphaimanhinhTV">
<%
if Session("name") = "" then
	Response.write("<a rel=nofollow href=login.asp?login=createnew class=colorlink2><span><ins>Đăng ký</ins></span></a>|<a rel=nofollow href=login.asp class=colorlink2><span><ins>Đăng Nhập</ins></span></a>")
else
	Response.write("Xin chào " & Session("name") & "," & "&nbsp;" & "<a href=logout.asp class=colorlink2 <ins>Thoát<ins></a>")
	
end if
%>
	</div>
</div>
 
   <!---------------------------
                SEARCH
    ---------------------------->
    <div class="cntr">
        <div class="cntr-innr">
          <form  action="../Search/Search.asp" method="post" id="form1" class="search" for="inpt_search">
                <input name="txtSearch" type="text" id="inpt_search" />
            </form>
            <p>Tìm kiếm</p>
      </div>
    </div>
<div class="pages-top">
    <div class="logo">
        <a href="../index.asp"><img src="../images/logo.png" alt=""/></a>
    </div>
             
		     <div class="h_menu4">
    <!---------------------------
                MENU
    ---------------------------->
				<ul class="nav">
					<li><a href="../index.asp">Trang chủ</a></li>
					<li><a href="../Laptop/Laptop.asp">Laptop</a>
						<ul class="listmenu">
							<li>
                                <a href="../Laptop/Dell.asp">DELL</a>
                            </li>
                            <li>
                                <a href="../Laptop/Hp.asp">HP</a>
                            </li>
                            <li>
                                <a href="../Laptop/Apple.asp">APPLE</a>
                            </li>
                            <li>
                                <a href="../Laptop/Asus.asp">ASUS</a>
                            </li>
                            <li>
                                <a href="../Laptop/Acer.asp">ACER</a>
                            </li>
                            <li>
                                <a href="../Laptop/Lenovo.asp">LENOVO</a>
                            </li>
                            <li>
                                <a href="../Laptop/Vaio.asp">VAIO</a>
                            </li>
						</ul>
					</li>
					<li><a href="../Desktop/Desktop.asp">Desktop</a>
						<ul class="listmenu">
							<li>
                                <a href="../Desktop/Dell.asp">DELL</a>
                            </li>
							<li>
                                <a href="../Desktop/Hp.asp">HP</a>
                            </li>
							<li>
                                <a href="../Desktop/Apple.asp">APPLE</a>
                            </li>
                            <li>
                                <a href="../Desktop/Asus.asp">ASUS</a>
                            </li>
                            <li>
                                <a href="../Desktop/Acer.asp">ACER</a>
                            </li>
                            <li>
                                <a href="../Desktop/Lenovo.asp">LENOVO</a>
							</li>
         			   </ul>
					</li>
					<li><a href="../Linhkien/Linhkien.asp">Linh kiện</a>
						<ul class="listmenu">
                        	<li>
                                <a href="../Linhkien/RAM.asp">RAM</a>
                            </li>
							<li>
                                <a href="../Linhkien/VGA.asp">Card VGA</a>
                            </li>
                            <li>
                                <a href="../Linhkien/M.asp">Mainboard</a>
                            </li>
                            <li>
                                <a href="../Linhkien/SC.asp">Card âm thanh</a>
                            </li>
						</ul>
					</li>
					<li><a href="../phukien/phukien.asp">Phụ kiện</a>
						<ul class="listmenu">
                        	<li>
                                <a href="../Phukien/HP.asp">Headphones</a>
                            </li>
                            <li>
                                <a href="../Phukien/EP.asp">Earphones</a>
                            </li>
                            <li>
                                <a href="../Phukien/CQ.asp">Chuột</a>
                            </li>
                            <li>
                                <a href="../Phukien/BP.asp">Bàn Phím</a>
                            </li>
                            <li>
                                <a href="../Phukien/USB.asp">USB</a>
                            </li>
						</ul>
					</li>
					<li class="active"><a href="../lienhe/lienhe.asp">Liên hệ</a></li>
				</ul>
				<script type="text/javascript" src="../js/nav.js"></script>
			</div>
            <!-- END MENU -->
			<div class="clear"></div>
		</div>
        <!-- end header_main4 -->
     </div>
	 <div class="main">
	     <div class="wrap">
	 	    <div class="contact">
	          <div class="m_contact"><span class="left_line1"> </span>Liên hệ<span class="right_line1"> </span></div>
              <p class="m_12">Để được tư vấn, giải đáp thắc mắc về các sản phẩm, Quý khách hàng hãy liên hệ với chúng tôi ở Văn phòng Group4 tại TP.Hồ Chí Minh.</p>
              <div class="contatct-top">
               <form name="form1" action="<%=MM_editAction%>" method="POST" id="form1">
					<div class="to">
                     	<input name="txtTen" type="text" class="text" id="txtTen" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Tên';}" value="Tên">
					 	<input name="txtEmail" type="text" class="text" id="txtEmail" style="margin-left: 10px" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Email';}" value="Email">
					</div>
					<div class="to">
                     	<input name="txtDC" type="text" class="text" id="txtDC" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Địa chỉ';}" value="Địa chỉ">
					 	<input name="txtSDT" type="text" class="text" id="txtSDT" style="margin-left: 10px" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Số điện thoại';}" value="Số điện thoại">
				 </div>
				<div class="text">
	                   <textarea name="txtRP" id="txtRP" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Lời nhắn...';}" value="Lời nhắn...">Lời nhắn...</textarea>
                 </div>
	                <div>
	                  <input type="submit" value="Gửi">
	                </div>
                    <input type="hidden" name="MM_insert" value="form1">
               </form>
               <div class="map">
			     <iframe src="https://www.google.com/maps/d/embed?mid=z1j46M5Vtics.kKEfvly1qvlw" width="100%" height="480"></iframe>
                   <small><a href="https://www.google.com/maps/d/embed?mid=z1j46M5Vtics.kKEfvly1qvlw" style="color:#666;text-align:left;font-size:12px">Xem trên Google Map</a></small>
		       </div>		
            </div>
		   </div>
	   </div>
		</div>
        
<!---------------------------
                BOTTOM
    ---------------------------->
        <div class="footer">
			<div class="wrap">
				<div class="footer-grid footer-grid1">
					<div class="f-logo">
				     <a href="../index.asp"><img src="../images/logo.png" alt=""></a>
			        </div>
					<p>Nhóm gồm 4 thành viên sáng lập, mỗi thành viên điều rất nhiệt tình trong công việc mình đảm nhận.</p>
				</div>
				<div class="footer-grid footer-grid2">
					<h4>Liên Hệ</h4>
				    <ul>
						<li><i class="pin"> </i><div class="extra-wrap">
							<p>392-394 Hoàng Văn Thụ, P.4<br> TP.HCM</p>
						</div></li>
						<li><i class="phone"> </i><div class="extra-wrap">
							<p>+849 3939 3423</p>
						</div></li>
						<li><i class="mail"> </i><div class="extra-wrap1">
							<p>lopaccp1508@gmail.com</p>
						</div></li>
						<li><i class="earth"> </i><div class="extra-wrap1">
							<p>nhom4@abc.com</p>
						</div></li>
					</ul>
				</div>
				<div class="footer-grid footer-grid3">
					<h4>Tiêu Chí</h4>
					<div class="recent-f">
						<div class="recent-f-icon">
							<span> </span>
						</div>
						<div class="recent-f-info">
							<p>Uy Tín</p>
						</div>
						<div class="clear"> </div>
					</div>
					<div class="recent-f1">
						<div class="recent-f-icon">
							<span> </span>
						</div>
						<div class="recent-f-info">
							<p>Chất Lượng</p>
						</div>
						<div class="clear"> </div>
					</div><br />
                    <div class="recent-f2">
						<div class="recent-f-icon">
							<span> </span>
						</div>
						<div class="recent-f-info">
							<p>Chuyên Nghiệp</p>
						</div>
						<div class="clear"> </div>
					</div>
				</div>
				<div class="footer-grid footer-grid4">
					<h4>Nhận Tin Mới</h4>
					<p>Nhập địa chỉ Email để nhận được những tin tức mới nhất về công nghệ</p>
						<input type="text" value="Địa chỉ Email" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Địa chỉ Email';}">
						<input type="submit" value="">
				</div>
				<div class="clear"> </div>
			</div>
		</div>
		<div class="footer-bottom">
	 		  <div class="wrap">
	     	  	<div class="copy">
				   <p>© 2016 Group Four Computer</p>
			    </div>
			    <div class="social">	
				   <ul>	
					  <li class="facebook"><a href="#"><span> </span></a></li>
					  <li class="linkedin"><a href="#"><span> </span></a></li>
					  <li class="twitter"><a href="#"><span> </span></a></li>		
				   </ul>
			    </div>
			    <div class="clear"></div>
			  </div>
       </div>
       
</body>
</html>
<%
RP.Close()
Set RP = Nothing
%>
