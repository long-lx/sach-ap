<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Untitled Document</title>
<style type="text/css">
<!--
.Productdetails {
	width: 580px;
	border: 1px solid #336699;
	padding: 3px;
	line-height: 25px;
}
.Productdetails .title {
	line-height: 30px;
	font-weight: bold;
	text-transform: capitalize;
	font-size: 20px;
	color: #FF9900;
}
.Productdetails img {
	float: left;
	margin-right: 10px;
	margin-bottom: 0px;
}
.Productdetails span {
	font-weight: bold;
	font-size: 16px;
}
.Productdetails p {
	font-size: 14px;
	line-height: 20px;
}
.Productdetails .datmua {
	color: #EE0000;
	font-weight: bold;
}
-->
</style>
</head>

<body>
<?php 
	include_once("../KETNOI/ketnoi.php");
	
	$sql = "Select Ms, Ten_sach, Don_gia, Hinh_minh_hoa, Mo_ta,  Ten_nha_xuat_ban From sach inner Join Nha_xuat_ban On sach.MNXB = Nha_xuat_ban.MNXB";
	$bang_sach_ct = mysql_query($sql, $ketnoi);
	
	$row = mysql_fetch_array($bang_sach_ct);
	
?>
		
<div class="Productdetails"> 
		<span class="title"><?php echo $row["Ten_sach"]; ?></span><br />
		<img src="../IMAGE/<?php echo $row["Hinh_minh_hoa"]; ?>" width="80" height="100" />
		<span>Nhà XB</span>:<?php echo $row["Ten_nha_xuat_ban"]; ?><br />
		<span>Giá tiền</span>: <?php echo $row["Don_gia"]; ?> VND         
		<span><a href="#" class="datmua">Đặt mua</a></span><br />
		<p align="justify"><span>Mô tả:<?php echo $row["Mo_ta"]; ?> </p>
</div>
</body>
</html>
