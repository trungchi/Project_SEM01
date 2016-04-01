<%
	'Save entered username and password
	Username = Request.Form("txtUsername")
	Password = Request.Form("txtPassword")
	Email = Request.Form("txtEmail")
    Phone = Request.Form("txtPhone")
		
	'Check if username and password are entered
	if Username = "" then Response.redirect("login.asp?login=createnew")
	if Password = "" then Response.Redirect("login.asp?login=createpassfailed")
	
	'Build connection
	set conn = server.CreateObject ("ADODB.Connection")
	conn.Open "DRIVER={SQL Server};SERVER=localhost;UID=sa;PWD=skywaysthiendao;DATABASE=WEBSITE_BAN_MAY_TINH;"
	set rs = server.CreateObject ("ADODB.Recordset")
	'Open all records
	rs.Open "SELECT * FROM TaikhoanKH", conn, 3, 3 
	
	'Check if username doesn't already exist
	do while not rs.EOF
		if rs("taikhoandangnhap")=Username then
			set rs=nothing
			set conn=nothing
			Response.Redirect("login.asp?login=createnamefailed")
		end if
		rs.MoveNext
	loop
		
	'Add a record
	rs.AddNew 
	'Put username and password in record
	rs("taikhoandangnhap")=Username
	rs("matkhau")=Password
	rs("Email")=Email
    rs("sdt")=SDT
	'Save record
	rs.Update 
	
	set rs=nothing
	set conn=nothing

	Response.Redirect("login.asp?login=creatednew")
%>
<%@LANGUAGE="VBSCRIPT" CODEPAGE="65001"%><% 
  'Copyright © Captcha, Inc. (formerly Lanapsoft, Inc.) 2004-2014. All rights reserved.
  'BotDetect, BotDetect CAPTCHA, Lanap, Lanap CAPTCHA, Lanap BotDetect, Lanap BotDetect CAPTCHA, Lanapsoft, Lanapsoft CAPTCHA, Lanapsoft BotDetect, Lanapsoft BotDetect CAPTCHA, and Lanap Software are trademarks or registered trademarks of Captcha, Inc.
%><!-- #include file ="BotDetect\CaptchaIncludes.asp" --><!-- #include file ="BotDetect\CaptchaHandler.asp" --><%

' BotDetect Url prefix (base Url of the BotDetect public resources)
Dim BDC_Url_Root : BDC_Url_Root = "BotDetect/Public/"

' process optional config override
Dim BotDetect
Dim BDC_CurrentCaptchaId

Function BDC_GetSettings(CaptchaId)
  Set BotDetect = New BDC_CaptchaConfiguration
  BDC_CurrentCaptchaId = CaptchaId
  Call BDC_ExecuteIfExists("CaptchaConfig.asp")
  Set BDC_GetSettings = BotDetect
  Set BotDetect = Nothing
End Function

' determine is this file included in a form/class, or requested directly
If ("BotDetect" = BDC_ScriptName()) Then
  ' direct access, proceed as Captcha handler (serving images and sounds)
  Call BDC_ProcessRequest
End If

%>
