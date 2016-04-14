<%@LANGUAGE="VBSCRIPT" CODEPAGE="65001"%>
<!DOCTYPE HTML>
<html>
<head>
<title>Quản trị viên :: Groupfour</title>
<link rel="shortcut icon" href="../images/icon.png">
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link href='http://fonts.googleapis.com/css?family=Roboto:400' rel='stylesheet' type='text/css'>
    <link href="http://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800" rel="stylesheet">
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="css/normalize.min.css">
    <link rel="stylesheet" href="css/animate.css">
    <link rel="stylesheet" href="css/templatemo_misc.css">
    <link rel="stylesheet" href="css/templatemo_style.css">
 <script src="../js/jquery.min.js"></script>
</head>
<body>
   <div>
        <div class="site-header">
            <div class="container">
                <div class="row">
                    <div class="col-md-4 col-sm-6 col-xs-6">
                        <div id="templatemo_logo">
                            <h1><a href="products.asp">Admin</a></h1>
                        </div> <!-- /.logo -->
                    </div> <!-- /.col-md-4 -->
                </div> <!-- /.row -->
            </div> <!-- /.container -->
        </div> <!-- /.site-header -->
    </div> <!-- /#front -->
    <div class="site-slider">
    </div>
    <div id="top"></div>
<div class="clear"></div>
<div class="item">
  <form onsubmit="return ProgressBar()" method="post" enctype="multipart/form-data" name="form1">
    <table width="56%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td width="20%">Tên sản phẩm</td>
        <td width="80%"><label for="textTenSP"></label>
        <input name="textTenSP" type="text" id="textTenSP" /></td>
      </tr>
      <tr>
        <td>Loại</td>
        <td><label for="Loai"></label>
          <select name="Loai" class="list-group-item-info" id="Loai">
</select></td>
      </tr>
      <tr>
        <td>NSX</td>
        <td><label for="textfield2"></label>
          <label for="NSX"></label>
          <select name="NSX" class="list-group-item-info" id="NSX">
</select></td>
      </tr>
      <tr>
        <td>Cấu hình</td>
        <td><label for="txtCauHinh"></label>
        <textarea  name="txtCauHinh" cols="50" rows="10" id="txtCauHinh" dir="ltr" lang="vi"></textarea></td>
      </tr>
      <tr>
        <td>Hình ảnh</td>
        <td><label for="HinhAnh"></label>
        <input name="HinhAnh" type="file" id="fileHinhAnh" /></td>
      </tr>
      <tr>
        <td>Số lượng</td>
        <td><label for="txtSoLuong"></label>
        <input name="txtSoLuong" type="text" id="txtSoLuong" /></td>
      </tr>
      <tr>
        <td>Giá</td>
        <td><label for="txtGia"></label>
        <input name="txtGia" type="text" id="txtGia" />
        VNĐ</td>
      </tr>
      <tr>
        <td>Ghi chú</td>
        <td><label for="txtGhiChu"></label>
        <input name="txtGhiChu" type="text" id="txtGhiChu" /></td>
      </tr>
      <tr>
        <td><input type="submit" name="button" id="button" value="CẬP NHẬT" /></td>
        <td><input type="reset" name="button2" id="button2" value="KHỞI TẠO" /></td>
      </tr>
    </table>
    <input type="hidden" name="RG_recordId">
  </form>
</div>
<script src="js/vendor/jquery-1.10.1.min.js"></script>
<script src="js/plugins.js"></script>
<script src="js/main.js"></script>
<div class="footer-bar">
    <span class="article-wrapper">
        <span class="article-label">Trang quản lý</span>
        <span class="article-link"><a href="#top">Lên top</a></span>
    </span>
</div>
</body>
</html>