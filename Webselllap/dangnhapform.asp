<!DOCTYPE HTML>
<html>

<head>
<title>Website bán máy tính | Login :: Groupfour</title>
<link rel="shortcut icon" href="images/icon.ico">
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
<link href='http://fonts.googleapis.com/css?family=Lato:400,300,600,700,800' rel='stylesheet' type='text/css'>
<script src="js/jquery.min.js"></script>
	    <link rel="stylesheet" type="text/css" href="css/slider.css" />
		<script type="text/javascript" src="js/modernizr.custom.28468.js"></script>
		<script type="text/javascript" src="js/jquery.cslider.js"></script>
			<script type="text/javascript">
				$(function() {
				
					$('#da-slider').cslider({
						autoplay	: true,
						bgincrement	: 450
					});
				
				});
			</script>
<script src="js/jquery.magnific-popup.js" type="text/javascript"></script>
<link href="css/magnific-popup.css" rel="stylesheet" type="text/css">
		<script>
			$(document).ready(function() {
				$('.popup-with-zoom-anim').magnificPopup({
					type: 'inline',
					fixedContentPos: false,
					fixedBgPos: true,
					overflowY: 'auto',
					closeBtnInside: true,
					preloader: false,
					midClick: true,
					removalDelay: 300,
					mainClass: 'my-mfp-zoom-in'
			});
		});
		</script>
    <style>
        .gocphaimanhinh {
            text-align:right; 
            line-height:20px;
            margin: 5px 5px 7px 9px        
                        }
    </style>

    <meta charset="utf-8" />
    <script src="js/dom-event.js" type="text/javascript"></script>
    <style>
        #loginform {
    display: block;
    padding: 0;
    margin: 0;
    overflow: hidden;
        }
        body {
           background-image: url("./images/131218hinh-nen-vu-tru-lua-cuc-hoang-trang.jpg");
        }
    </style>
</head>

<body>
		        <div class="logo">
				<a href="index.asp"><img src="images/logo.png" alt=""/></a>
			 </div>
		     <div class="h_menu4"><!-- start h_menu4 -->
				<a class="toggleMenu" href="#">Menu</a>
				<ul class="nav">
					<li class="active"><a href="index.asp">Trang chủ</a></li>
					<li><a href="laptop/laptop.asp">Laptop</a>
						<ul>
							<li><a href="laptop/laptop.asp">DELL</a></li>
							<li><a href="laptop/laptop.asp">HP</a></li>
							<li><a href="laptop/laptop.asp">APPLE</a></li>
							<li><a href="laptop/laptop.asp">ACER</a></li>
							<li><a href="laptop/laptop.asp">ASUS</a></li>
							<li><a href="laptop/laptop.asp">LENOVO</a></li>
							<li><a href="laptop/laptop.asp">VAIO</a></li>
						</ul>
					</li>
					<li><a href="desktop/desktop.asp">Desktop</a>
						<ul>
							<li><a href="desktop/desktop.asp">DELL</a></li>
							<li><a href="desktop/desktop.asp">HP</a></li>
							<li><a href="desktop/desktop.asp">APPLE</a></li>
							<li><a href="desktop/desktop.asp">ACER</a></li>
							<li><a href="desktop/desktop.asp">ASUS</a></li>
							<li><a href="desktop/desktop.asp">LENOVO</a></li>
						</ul>
					</li>
					<li><a href="linhkien/linhkien.asp">Linh kiện</a>
						<ul>
							<li><a href="linhkien/linhkien.asp">RAM</a></li>
							<li><a href="linhkien/linhkien.asp">Card VGA</a></li>
							<li><a href="linhkien/linhkien.asp">Mainboard</a></li>
							<li><a href="linhkien/linhkien.asp">Sound card (card âm thanh)</a></li>
						</ul>
					</li>
					<li><a href="phukien/phukien.asp">Phụ kiện</a>
						<ul>
							<li><a href="phukien/phukien.asp">Headphones</a></li>
							<li><a href="phukien/phukien.asp">Earphones</a></li>
							<li><a href="phukien/phukien.asp">Chuột</a></li>
							<li><a href="phukien/phukien.asp">Keyboard (bàn phím)</a></li>
							<li><a href="phukien/phukien.asp">USB</a></li>
						</ul>
					</li>
					<li><a href="lienhe/lienhe.asp">Liên hệ</a></li>
				</ul>
			   <script type="text/javascript" src="js/nav.js"></script>
			</div>

<div style="opacity: 0.9; cursor: pointer;" id="cboxOverlay"></div>
    <div class style="padding-bottom: 20px; padding-right: 0px; top: 185px; left: 589px; position: absolute; width: 410px; height: 217px; overflow: hidden;" id="colorbox">
        <div style="height: 237px; width: 410px;" id="cboxWrapper">
            <div>
                <div style="float: left;" id="cboxTopLeft"></div>
                <div style="float: left; width: 410px;" id="cboxTopCenter"></div>
                <div style="float: left;" id="cboxTopRight"></div>
            </div>
            <div style="clear: left;">
                <div style="float: left; height: 217px;" id="cboxMiddleLeft"></div>
                <div style="float: left; width: 410px; height: 217px;" id="cboxContent">
                    <div style="display: block; width: 400px; overflow: auto; height: 207px;" id="cboxLoadedContent">
                        <div id="loginform">
                            <form id="navbar_loginform" action="login.php?do=login" method="post" onsubmit="md5hash(vb_login_password, vb_login_md5password, vb_login_md5password_utf, 0)">
                                <div>
                                  <input name="vb_login_username" type="text" class="textbox default-value" id="navbar_username" placeholder="Tên tài khoản" style="color: rgb(119, 119, 119);" accesskey="u" tabindex="101" value="" size="30">
                                    <br />
                                    <input style="display: none;" class="textbox" tabindex="102" name="vb_login_password" id="navbar_password" size="30" type="password">
                                    <input class="textbox default-value" tabindex="102" name="vb_login_password_hint" id="navbar_password_hint" size="30" placeholder="Mật khẩu" style="display: inline;" type="password">
                                </div>
                                <div id="remember" class="remember">
                                    <label for="cb_cookieuser_navbar">
                                      
                                      <input name="cookieuser" value="1" id="cb_cookieuser_navbar" class="cb_cookieuser_navbar" checked="" accesskey="c" tabindex="103" type="checkbox"> 
                                    <strong><em>Duy trì đăng nhập</em></strong>                                    </label>
                                </div>
                                <div class="actionbutton">
                                  <a href="login.php?do=lostpw" rel="nofollow" class="forgotbutton"><em><strong>Quên mật khẩu</strong></em></a>
                                  <input class="loginbutton" tabindex="104" value="Ðăng nhập" title="Nhập username và mật khẩu đã cung cấp để đăng nhập, hoặc ấn vào 'đăng ký' để tao 1 tài khoản" accesskey="s" type="submit">
                                </div>
                                <p>
                                  <input name="s" value="" type="hidden">
                                  <input name="securitytoken" value="guest" type="hidden">
                                  <input name="do" value="login" type="hidden">
                                  <input name="vb_login_md5password" type="hidden">
                                  <input name="vb_login_md5password_utf" type="hidden">
                                </p>
                            </form>
                        </div>

                        <script type="text/javascript">
			YAHOO.util.Dom.setStyle('navbar_password_hint', "display", "inline");
			YAHOO.util.Dom.setStyle('navbar_password', "display", "none");
			vB_XHTML_Ready.subscribe(function()
			{
				YAHOO.util.Event.on('navbar_username', "focus", navbar_username_focus);
				YAHOO.util.Event.on('navbar_username', "blur", navbar_username_blur);
				YAHOO.util.Event.on('navbar_password_hint', "focus", navbar_password_hint);
				YAHOO.util.Event.on('navbar_password', "blur", navbar_password);
			});

			function navbar_username_focus(e)
			{
				var textbox = YAHOO.util.Event.getTarget(e);
				if (textbox.value == 'Tên tài khoản')
				{
					textbox.value='';
					textbox.style.color='#000000';
				}
			}

			function navbar_username_blur(e)
			{
				var textbox = YAHOO.util.Event.getTarget(e);
				if (textbox.value == '')
				{
					textbox.value='Tên tài khoản';
					textbox.style.color='#777777';
				}
			}

			function navbar_password_hint(e)
			{
				var textbox = YAHOO.util.Event.getTarget(e);

				YAHOO.util.Dom.setStyle('navbar_password_hint', "display", "none");
				YAHOO.util.Dom.setStyle('navbar_password', "display", "inline");
				
			}

			function navbar_password(e)
			{
				var textbox = YAHOO.util.Event.getTarget(e);

				if (textbox.value == '')
				{
					YAHOO.util.Dom.setStyle('navbar_password_hint', "display", "inline");
					YAHOO.util.Dom.setStyle('navbar_password', "display", "none");
					YAHOO.util.Dom.get('navbar_password').focus();
				}
			}
                        </script>
                    </div>
                    <div style="float: left; display: none;" id="cboxLoadingOverlay"></div>
                    <div style="float: left; display: none;" id="cboxLoadingGraphic"></div>
                    <div style="float: left; display: block;" id="cboxTitle"></div>
                    <div style="float: left; display: none;" id="cboxCurrent"></div>
                    <div style="float: left; display: none;" id="cboxNext"></div>
                    <div style="float: left; display: none;" id="cboxPrevious"></div>
                    <div style="float: left; display: none;" id="cboxSlideshow"></div>
                </div>
                <div style="float: left; height: 217px;" id="cboxMiddleRight"></div>
            </div>
            <div style="clear: left;">
                <div style="float: left;" id="cboxBottomLeft"></div>
                <div style="float: left; width: 410px;" id="cboxBottomCenter"></div>
                <div style="float: left;" id="cboxBottomRight"></div>

            </div>

        </div>
        <div style="position: absolute; width: 9999px; visibility: hidden; display: none;"></div>

    </div>        
</body>
</html>