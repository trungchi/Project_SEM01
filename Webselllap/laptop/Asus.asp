<%@LANGUAGE="VBSCRIPT" %> 
<!DOCTYPE HTML>
<html>
<head>
<title>Cửa hàng máy tính | Laptop :: Groupfour</title>
<link rel="shortcut icon" href="../images/icon.png">
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="../css/style.css" rel="stylesheet" type="text/css" media="all" />
<script src="../js/jquery.min.js"></script>
        <!---------------------------
                  LIGHTBOX
        ---------------------------->
<script type="text/javascript" src="../js/jquery.lightbox.js"></script>
<link rel="stylesheet" type="text/css" href="../css/lightbox.css" media="screen" />
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
	Response.write("<a rel=nofollow href=../login.asp?login=createnew class=colorlink2><span><ins>Đăng ký</ins></span></a>|<a rel=nofollow href=../login.asp class=colorlink2><span><ins>Đăng Nhập</ins></span></a>")
else
	Response.write("Xin chào " & Session("name") & "," & "&nbsp;" & "<a href=../logout.asp class=colorlink2 <ins>Thoát<ins></a>")
	
end if
%>
	</div>
</div>

    <!---------------------------
                SEARCH
    ---------------------------->
    <div class="cntr">
        <div class="cntr-innr">
          <label class="search" for="inpt_search">
                <input id="inpt_search" type="text" />
            </label>
            <p>Sờ vào để tìm thứ bạn cần.</p>
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
                    <li class="active"><a href="../Laptop/Laptop.asp">Laptop</a>
                    <li><a href="../Desktop/Desktop.asp">Desktop</a>
						<ul>
							<li>
                                <form name="frmDell" method="post" action=Desktop/Dell.asp>
                                <a href="../Desktop/Dell.asp">DELL</a>
                                </form>
                            </li>
							<li>
                                <form name="frmHp" method="post" action=Desktop/Hp.asp>
                                <a href="../Desktop/Hp.asp">HP</a>
                                </form>
                            </li>
							<li>
                                <form name="frmApple" method="post" action=Desktop/Apple.asp>
                                <a href="../Desktop/Apple.asp">APPLE</a>
                                </form>
                            </li>
                            <li>
                                <form name="frmAsus" method="post" action=Desktop/Asus.asp>
                                <a href="../Desktop/Asus.asp">ASUS</a>
                                </form>
                            </li>
                            <li>
                                <form name="frmAcer" method="post" action=Desktop/Acer.asp>
                                <a href="../Desktop/Acer.asp">ACER</a>
                                </form>
                            </li>
                            <li>
                                <form name="Lenovo" method="post" action=Desktop/Lenovo.asp>
                                <a href="../Desktop/Lenovo.asp">LENOVO</a>
                         	   </form>
							</li>
         			   </ul>
					</li>
					<li><a href="Linhkien/Linhkien.asp">Linh kiện</a>
						<ul class="listmenu">
                        	<li>
                                <form name="frmRAM" method="post" action=Linhkien/RAM.asp>
                                <a href="../Linhkien/RAM.asp">RAM</a>
                                </form>
                            </li>
							<li>
                                <form name="frmVGA" method="post" action=Linhkien/RAM.asp>
                                <a href="../Linhkien/VGA.asp">Card VGA</a>
                                </form>
                            </li>
                            <li>
                                <form name="frmM" method="post" action=Linhkien/RAM.asp>
                                <a href="../Linhkien/M.asp">Mainboard</a>
                                </form>
                            </li>
                            <li>
                                <form name="frmSC" method="post" action=Linhkien/RAM.asp>
                                <a href="../Linhkien/SC.asp">Card âm thanh</a>
                                </form>
                            </li>
						</ul>
					</li>
					<li><a href="../Phukien/Phukien.asp">Phụ kiện</a>
						<ul class="listmenu">
                        	<li>
                                <form name="frmHP" method="post" action=Phukien/HP.asp>
                                <a href="../Phukien/HP.asp">Headphones</a>
                                </form>
                            </li>
                            <li>
                                <form name="frmEP" method="post" action=Phukien/EP.asp>
                                <a href="../Phukien/EP.asp">Earphones</a>
                                </form>
                            </li>
                            <li>
                                <form name="frmCQ" method="post" action=Phukien/CQ.asp>
                                <a href="../Phukien/CQ.asp">Chuột</a>
                                </form>
                            </li>
                            <li>
                                <form name="frmBP" method="post" action=Phukien/BP.asp>
                                <a href="../Phukien/BP.asp">Bàn Phím</a>
                                </form>
                            </li>
                            <li>
                                <form name="frmUSB" method="post" action=Phukien/USB.asp>
                                <a href="../Phukien/USB.asp">USB</a>
                                </form>
                            </li>
						</ul>
					</li>
					<li><a href="../Lienhe/Lienhe.asp">Liên hệ</a></li>
				</ul>
				<script type="text/javascript" src="../js/nav.js"></script>
			</div>
            <!-- END MENU -->
			<div class="clear"></div>
		</div>
		<!-- end header_main4 -->
<!--gallary-->

	 <div class="main">
	 	<div class="wrap">
	 		<div class="pages">
				<div class="cont1 span_2_of_g1">
					<div class="gallery">
                    <%     dim x 'biến này dùng để xác định xem cần hiển thị trang nào     
                        x=request.querystring("PageNumber") 'nhận lại PageNumber khi ngườidùng nhấn vào các nút "Trước" và "Tiếp"     
                        if x="" then 'đầu tiên sẽ hiển thị trang 1         
                        x=1     
                        end if     
                        dim conn     
                        set conn=server.createObject("ADODB.connection")     
                        stringconn="DRIVER={SQL Server};SERVER=localhost;UID=sa;PWD=123456;DATABASE=WEBSITE_BAN_MAY_TINH;"     
                        conn.open stringconn     
                        Dim RS     
                        set rs=server.createObject("ADODB.recordset")    
                        SQLstring="select * from HINHANHSP where MaSP LIKE 'LAS%'"     
                        rs.pagesize= 9 'chỉ hiển thị 4 bản ghi/1 trang     
                        rs.open SQLstring ,conn,3,3     
                        rs.AbsolutePage=x 'trang cần hiển thị     
                        dem=0 'biến này để đảm bảo vòng lặp chỉ thực hiện tối đa 4 lần lặp     
                        do while not rs.EOF and dem<rs.pagesize
                        if dem=2 or dem=5 or dem=8 then 
                        Response.Write("<li class=last><a href="&RS("DuongDan")&"><img src="&RS("DuongDan")&"></img></a><h3 align=center>"&RS("GhiChu")&"</h3></li>")
                        else
                        Response.Write("<li><a href="&RS("DuongDan")&"><img src="&RS("DuongDan")&"></img></a><h3 align=center>"&RS("GhiChu")&"</h3></li>") 
                        end if
                        dem=dem+1     
                        rs.movenext     
                        loop 
                        %> 
				    </div>
                    <div class="phantrang">
                    <% 'Hiển thị nút "Trước"     
                        if x>1 then %>     
                    <a href="Asus.asp?pageNumber=<%=x-1%>">Trước</a>     
                    <%end if%> 
                    <% 'Hiển thị nút "Tiếp"     
                        if not RS.EOF then %>        
                    <a style="padding-left: 800px;" href="Asus.asp?pageNumber=<%=x+1%>">Tiếp</a>     
                    <%end if     
                        rs.close 'đóng recordset     
                        %>   
                    </div>
		       </div>
<!-- END gallary-->
<div class="labout span_1_of_g1">
		  <div class="project-list">
	     	<h4>Loại</h4>
			<ul class="blog-list">
				<li>
                    <form name="frmDell" method="post" action=Dell.asp>
                    <a href="Dell.asp">DELL</a>
                    </form>
                </li>
                <li>
                    <form name="frmHp" method="post" action=Hp.asp>
                    <a href="Hp.asp">HP</a>
                    </form>
                </li>
				<li>
                    <form name="frmApple" method="post" action=Apple.asp>
                    <a href="Apple.asp">APPLE</a>
                    </form>
                </li>
				<li>
                    <form name="frmAsus" method="post" action=Asus.asp>
                    <a href="Asus.asp">ASUS</a>
                    </form>
                </li>
            </ul>
			<ul class="blog-list">
                <li>
                    <form name="frmAcer" method="post" action=Acer.asp>
                    <a href="Acer.asp">ACER</a>
                    </form>
                </li>
                <li>
                    <form name="Lenovo" method="post" action=Lenovo.asp>
                    <a href="Lenovo.asp">LENOVO</a>
                    </form>
                </li>
                <li>
                    <form name="frmVaio" method="post" action=Vaio.asp>
                    <a href="Vaio.asp">VAIO</a>
                    </form>
                </li>
			</ul>
			<div class="clear"></div>
		   </div>
		   <div class="project-list1">
			<div class="clear"></div>
		   </div>
		   <div class="project-list2">
	     	<h4>Các thẻ chọn</h4>
			<ul>
				<li><a href="#">Web Design</a></li>
				<li><a href="#">Html5</a></li>
				<li><a href="#">Wordpress</a></li>
				<li><a href="#">Logo</a></li>
				<li><a href="#">Web Design</a></li>
				<li><a href="#">Web Design</a></li>
				<li><a href="#">Wordpress</a></li>
				<li><a href="#">Web Design</a></li>
				<li><a href="#">Html5</a></li>
				<li><a href="#">Wordpress</a></li>
				<li><a href="#">Logo</a></li>
				<div class="clear"></div>
			</ul>
		   </div>
</div>
		   <div class="clear"></div>	
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
					<form>
						<input type="text" value="Địa chỉ Email" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Địa chỉ Email';}">
						<input type="submit" value="">
					</form>
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