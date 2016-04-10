<!DOCTYPE HTML>
<html>
<head>
<title>Cửa hàng máy tính | Desktop :: Groupfour</title>
<link rel="shortcut icon" href="../images/icon.png">
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="../css/style.css" rel="stylesheet" type="text/css" media="all" />
<link href='http://fonts.googleapis.com/css?family=Lato:400,300,600,700,800' rel='stylesheet' type='text/css'>
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
<div class="gocphaimanhinh"> <!-- bắt đầu đăng kí đăng nhập -->
    <a rel="nofollow" href="../login.asp" style="color:red ">
        <span><ins>Đăng ký</ins></span> |
    </a>
    <a rel="nofollow" href="../login.asp" style="color:red ">
        <span><ins>Đăng Nhập</ins></span>
    </a>
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

    <!---------------------------
                MENU
    ---------------------------->
	<div class="pages-top">
	        <div class="logo">
				<a href="../index.asp"><img src="../images/logo.png" alt=""/></a>
			 </div>
		     <div class="h_menu4"><!-- start h_menu4 -->
				<a class="toggleMenu" href="#">Menu</a>
				<ul class="nav">
					<li><a href="../index.asp">Trang chủ</a></li>
					<li><a href="../laptop/laptop.asp">Laptop</a>
                        <ul>
                            <li><a href="../laptop/laptop.asp">DELL</a></li>
                            <li><a href="../laptop/laptop.asp">HP</a></li>
                            <li><a href="../laptop/laptop.asp">APPLE</a></li>
                            <li><a href="../laptop/laptop.asp">ACER</a></li>
                            <li><a href="../laptop/laptop.asp">ASUS</a></li>
                            <li><a href="../laptop/laptop.asp">LENOVO</a></li>
                            <li><a href="../laptop/laptop.asp">VAIO</a></li>
                        </ul>
					<li class="active"><a href="desktop.asp">Desktop</a></li>
					</li>
					<li><a href="../linhkien/linhkien.asp">Linh kiện</a>
						<ul>
							<li><a href="../linhkien/linhkien.asp">RAM</a></li>
							<li><a href="../linhkien/linhkien.asp">Card VGA</a></li>
							<li><a href="../inhkien/linhkien.asp">Mainboard</a></li>
							<li><a href="../linhkien/linhkien.asp">Sound card (card âm thanh)</a></li>
						</ul>
					</li>
					<li><a href="../phukien/phukien.asp">Phụ kiện</a>
						<ul>
							<li><a href="../phukien/phukien.asp">Headphones</a></li>
							<li><a href="../phukien/phukien.asp">Earphones</a></li>
							<li><a href="../phukien/phukien.asp">Chuột</a></li>
							<li><a href="../phukien/phukien.asp">Keyboard (bàn phím)</a></li>
							<li><a href="../phukien/phukien.asp">USB</a></li>
						</ul>
					</li>
					<li><a href="../lienhe/lienhe.asp">Liên hệ</a></li>
				</ul>
				<script type="text/javascript" src="../js/nav.js"></script>
			</div><!-- end h_menu4 -->
			<div class="clear"></div>
		</div><!-- end header_main4 -->
     </div>
<!--gallary-->

	 <div class="main">
	 	<div class="wrap">
	 		<div class="pages">
				<div class="cont1 span_2_of_g1">
					<div class="gallery">
		    <%@LANGUAGE="VBSCRIPT" %> 
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
                        SQLstring="select * from HINHANHSP where MaHASP LIKE 'DES%'"     
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
                    <a href="desktop.asp?pageNumber=<%=x-1%>">Trước</a>     
                    <%end if%> 
                    <% 'Hiển thị nút "Tiếp"     
                        if not RS.EOF then %>        
                    <a style="padding-left: 800px;" href="desktop.asp?pageNumber=<%=x+1%>">Tiếp</a>     
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
				<li><a href="#">DELL </a></li>
				<li><a href="#">HP</a></li>
				<li><a href="#">APPLE</a></li>
				<li><a href="#">ASUS</a></li>
				<li><a href="#">ACER</a></li>
			</ul>
			<ul class="blog-list">
				<li><a href="#">LENOVO</a></li>
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
