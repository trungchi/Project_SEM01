<%@LANGUAGE="VBSCRIPT"%>
<!--#include file="../Connections/Website.asp" -->
<%
'*********************************
'*                               *
'*  INSERT RECORD AND UPLOAD     *
'*  http://www.dwzone.it         *
'*                               *
'*********************************
	server.ScriptTimeout = 5400

	Dim RG_altVal, RG_columns, RG_Cong, RG_dbValues, RG_dbValuesTmp, RG_delim, RG_editCmd, RG_editQuery, RG_editQueryTmp, RG_emptyVal, RG_Ext, RG_Extensions, RG_fields, RG_FieldValueTmp, RG_FileDel, RG_FileExt, RG_formVal, RG_FS, RG_i, RG_L, RG_Len, RG_Max, RG_Name, RG_New, RG_newName, RG_Num, RG_Path, RG_Rec, RG_ret, RG_Save, RG_tableValues, RG_tableValuesTmp, RG_tst, RG_typeArray, RG_z, UploadStatus, NumFile
	Dim RG_Connection, RG_editColumn, RG_recordId, Form, editAction, editRedirectUrl, RG_Files, RG_formName, UploadType, ParamVal, ParamList, MaxFieldNumber, TmpVal, x, y, Key, ProgressBar
	Dim tmpField_Name(), tmpValue_Name(), tmpField_Size(), tmpValue_Size(), tmpField_Thumb(), tmpValue_Thumb(), QtyRecord, TotalFileSize, valueToRedirectSend
	
	Set Form = New ASPForm
	Dim UploadID
	UploadID = Form.NewUploadID
	ProgressBar = ""
	TotalFileSize = ""
  	editRedirectUrl = "../index.asp"
	RG_Connection = MM_Website_STRING
	RG_editTable = "dbo.SanPham"	
	RG_Files = "/Images;1;;;;0;;1;;;;0;;;;;;txtHA@_@_@1@_@_@ @_@_@@_@_@../"
	RG_formName = "form1"
	UploadType="Insert"
	UploadStatus = ""
	valueToRedirectSend = "txtTinhtrang"
	NumFile = 0

	if len(Request.QueryString("UploadID"))>0 then
		Form.UploadID = Request.QueryString("UploadID")
	end if
	
	if (Request.QueryString <> "") Then
	 	editAction = CStr(Request.ServerVariables("SCRIPT_NAME")) & "?" & Request.QueryString & "&UploadID=" & UploadID
	else
	 	editAction = CStr(Request.ServerVariables("SCRIPT_NAME")) & "?UploadID=" & UploadID	
	End If
	
Const fsCompletted  = 0

If Form.State = fsCompletted Then 
  if Form.State = 0 then

		Set ParamVal = CreateObject("Scripting.Dictionary")
		tmp = split(RG_Files,"@_@_@")
		ParamList = split(tmp(0),"|")
		MaxFieldNumber = ubound(ParamList)
		for x=0 to Ubound(ParamList)
			TmpVal = Split(ParamList(x),";")
			for y=0 to ubound(TmpVal)
				Key = right("00" & cstr(x),3) & cstr(y)
				ParamVal.add Key, TmpVal(y)
			next
		next
		Form.Files.Save

		RG_fieldsStr  = "txtTenSp|value|txtTinhtrang|value|txtNSX|value|txtGia|value|txtCauHinh|value|txtLoai|value|txtGhiChu|value"
  		RG_columnsStr = "TenSP|',none,''|Tinhtrang|none,none,NULL|NSX|',none,''|Gia|none,none,NULL|CauHinh|',none,''|Loai|',none,''|GhiChu|',none,''"
		Form.Files.DataBaseInsert

		response.write(getRedirect())
		response.end
  End If
ElseIf Form.State > 10 then
  response.write "<br><Font Color=red>Some form error.<br>Error code: " & Form.State & "<br>Error List:<br>0  Form was successfully processed. <br>1  Request method is NOT post <br>2  Zero length request (there are no data in a source form) <br>3  Form is in a middle of process. <br>5  Initial form state <br>11  Boundary of multipart/form-data is not specified. <br>12  Unknown source form (Content-type must be multipart/form-data) <br>15  Client was disconnected before upload was completted.<br>16  Unexpected error from Request.BinaryRead method (ASP error).<br></Font><br>"
End If


function GetFolderName(str):  GetFolderName = Ris : end function

function myGetFileName(str):  myGetFileName = Ris : end function
%>
<!DOCTYPE HTML>
<html>
<head>
<title>Quản trị viên :: Groupfour</title>
<link rel="shortcut icon" href="../images/icon.png">
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href='http://fonts.googleapis.com/css?family=Roboto:400' rel='stylesheet' type='text/css'>
<link href="../css/style.css" rel="stylesheet" type="text/css" media="all" />
	<!--jquery lightbox-->
<script type="text/javascript" src="../js/jquery.lightbox.js"></script>
<link rel="stylesheet" type="text/css" href="../css/lightbox.css" media="screen" />
  <script type="text/javascript">
    $(function() {
        $('.gallery a').lightBox();
    });
   </script>

        <!---------------------------
                     CLOCK
        ---------------------------->
    <link href="../css/style2.css" rel="stylesheet" />
                <!-- JavaScript Includes -->
            <script src="../js/jquery.min(v1.10.1).js"></script>
            <script src="../js/moment.min.js"></script>
            <script src="../js/script.js"></script>

<script src="../js/jquery.min.js"></script>

<style>HTML,BODY{cursor: url("images/monkeyani.cur"), url("images/monkey-ani.gif"), auto;}</style>
</head>
<body>
<div class="pages-top">
    <div class="logo">
        <a href="../index.asp"><img src="../images/logo.png" alt=""/></a>
    </div>
		   <div class="clear"></div>	
<div class="main">
     <div class="item">
    <form ACTION="<%=editAction%>" onsubmit="return ProgressBar()" method="post" enctype="multipart/form-data" name="form1">
      <table width="100%" border="0" cellspacing="0" cellpadding="0">
        <tr>
          <td>Ten may tinh</td>
          <td><label for="txtTenSp"></label>
          <input type="text" name="txtTenSp" id="txtTenSp">
          <input name="txtTinhtrang" type="hidden" id="txtTinhtrang" value="1"></td>
        </tr>
        <tr>
          <td>NSX</td>
          <td><label for="txtNSX"></label>
            <select name="txtNSX" id="txtNSX">
          </select></td>
        </tr>
        <tr>
          <td>gia</td>
          <td><label for="txtGia"></label>
          <input type="text" name="txtGia" id="txtGia"></td>
        </tr>
        <tr>
          <td>hinh anh</td>
          <td><label for="txtHA"></label>
          <input type="file" name="txtHA" id="txtHA"></td>
        </tr>
        <tr>
          <td>cau hinh</td>
          <td><label for="txtCauHinh"></label>
          <input type="text" name="txtCauHinh" id="txtCauHinh"></td>
        </tr>
        <tr>
          <td>loai</td>
          <td><label for="txtLoai"></label>
          <input type="text" name="txtLoai" id="txtLoai"></td>
        </tr>
        <tr>
          <td>ghi chu</td>
          <td><label for="txtGhiChu"></label>
          <input type="text" name="txtGhiChu" id="txtGhiChu"></td>
        </tr>
        <tr>
          <td><input type="submit" name="Submit" id="button" value="Thêm"></td>
          <td><input type="reset" name="button2" id="button2" value="Hủy"></td>
        </tr>
      </table>
      
      </form>
</div>
        <!---------------------------
                     CLOCK
        ---------------------------->
    <div id="clock" class="light">
        <div class="display">
            <div class="weekdays"></div>
            <div class="ampm"></div>
            <div class="alarm"></div>
            <div class="digits"></div>
        </div>
    </div>
           <!--END CLOCK-->
        
    <!---------------------------
                BOTTOM
    ---------------------------->
        <div class="footer">
			<div class="wrap">
				<div class="footer-grid footer-grid1">
					<div class="f-logo">
				     <a href="../index.asp"><img src="images/logo.png" alt=""></a>
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
<!--#include file="../UploadFiles/Upload.asp" -->
<!--#include file="../UploadFiles/UploadAdvanced.asp" -->
