<!DOCTYPE html>

<html lang="en" xmlns="http://www.w3.org/1999/xhtml">
<head>
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
    <div style="opacity: 0.9; cursor: pointer;" id="cboxOverlay"></div>
    <div class style="padding-bottom: 20px; padding-right: 0px; top: 86px; left: 470px; position: absolute; width: 410px; height: 217px; overflow:hidden;" id="colorbox">
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
                                    <label for="navbar_username">Username:</label><br />
                                    <input style="color: rgb(119, 119, 119);" class="textbox default-value" name="vb_login_username" id="navbar_username" size="30" accesskey="u" tabindex="101" placeholder="Tên tài khoản" type="text">
                                    <br />
                                    <label for="navbar_password">Password:</label><br />
                                    <input style="display: none;" class="textbox" tabindex="102" name="vb_login_password" id="navbar_password" size="30" type="password">
                                    <input class="textbox default-value" tabindex="102" name="vb_login_password_hint" id="navbar_password_hint" size="30" placeholder="Mật khẩu" style="display: inline;" type="password">
                                </div>
                                <div id="remember" class="remember">
                                    <label for="cb_cookieuser_navbar"><input name="cookieuser" value="1" id="cb_cookieuser_navbar" class="cb_cookieuser_navbar" checked="" accesskey="c" tabindex="103" type="checkbox"> Ghi nhớ?</label>
                                </div>
                                <div class="actionbutton">
                                    <input class="loginbutton" tabindex="104" value="Ðăng nhập" title="Nhập username và mật khẩu đã cung cấp để đăng nhập, hoặc ấn vào 'đăng ký' để tao 1 tài khoản" accesskey="s" type="submit">
                                    <a href="login.php?do=lostpw" rel="nofollow" class="forgotbutton">Quên mật khẩu</a>
                                </div>
                                <input name="s" value="" type="hidden">
                                <input name="securitytoken" value="guest" type="hidden">
                                <input name="do" value="login" type="hidden">
                                <input name="vb_login_md5password" type="hidden">
                                <input name="vb_login_md5password_utf" type="hidden">
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