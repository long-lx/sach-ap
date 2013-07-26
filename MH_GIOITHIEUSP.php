<?php 
	session_start();
	include_once("GIOHANG/XLGioHang.php");	
?>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Dien thoai di dong</title>
<style type="text/css">
<!--
.style1 {color: #FF0000; font-weight:bold}
TABLE{
	border:2px solid red;
	background-color:#FFFFCC;
	border-collapse:collapse;
	table-layout:fixed;
}
TD{
	border:1px solid green;
	padding-top:4px;
	padding-bottom:4px;

}
h1 a{text-transform:capitalize; text-decoration:none;}
-->

</style>
</head>

<body>
<h3><a href="GIOHANG/GIOHANG.php">Xem giỏ hàng của bạn </a> </h3>
<form action="" method="post" name="frmDathang">
	<input name="masp" type="hidden" />
	<input name="tensp" type="hidden" />
	<input name="dongia" type="hidden" />
	<input name="hanhdong" type="hidden" />
	
</form>
<script language="JavaScript" type="text/javascript">
function chon_muahang(MASP, TENSP, DONGIA, HANHDONG)
{
	document.frmDathang.masp.value = MASP;
	document.frmDathang.tensp.value = TENSP;
	document.frmDathang.dongia.value = DONGIA;
	document.frmDathang.hanhdong.value = HANHDONG;
	//Gửi dữ liệu trên form về server
	document.frmDathang.submit();
}
</script>

<table width="898"  border="1">
  <tr>
    <td width="179" align="center"><img src="HINHANH/Apple iPhone 5.jpg" width="114" height="237"></td>
    <td width="244" align="center"><strong><img src="HINHANH/Samsung Galaxy S4 I9500.jpg" width="126" height="237"></strong></td>
    <td width="236" align="center"><img src="HINHANH/Samsung Galaxy Note II N7100.png" width="155" height="237"></td>
    <td width="209" align="center"><img src="HINHANH/Nokia Lumia 920.jpg" width="128" height="237"></td>
  </tr>
  <tr>
    <td height="77" align="center"><strong>Apple iPhone 5 - 32GB Black and White</strong><br />
17,790,000 VNĐ<br />
<a href="#" onClick="chon_muahang(131,'Apple iPhone 5 - 32GB Black and White',17790000,'them')">Đặt mua</a></td>
    <td align="center">
		<strong>Samsung Galaxy S4 I9500 (Galaxy S IV)</strong><br />
    	16,700,000 VNĐ<br />
    	<a href="#" onClick="chon_muahang(222, 'Samsung Galaxy S4 I9500(Galaxy S IV)' , 16500000,'them')">Đặt mua</a><a href="#"></a>	</td>
    <td align="center"><strong>Samsung Galaxy Note II N7100</strong><br />
12,500,000 VNĐ<br />
<a href="#" onClick="chon_muahang(333, 'Samsung Galaxy Note II N7100' , 12500000,'them')">Đặt mua</a></td>
    <td align="center"><strong>Nokia Lumia 920</strong><br />
11,690,000 VNĐ<br />
<a href="#" onClick="chon_muahang(130,'Nokia Lumia 920',11690000,'them')">Đặt mua</a> </td>
  </tr>
  
  <tr>
    <td align="center"><img src="HINHANH/HTC One X - 16Gb.png" width="123" height="237"></td>
    <td align="center"><img src="HINHANH/Nokia_N8_bac.jpg" width="121" height="232"></td>
    <td align="center"><img src="HINHANH/BlackBerry Curve9380.jpg" width="136" height="237"></td>
    <td align="center"><img src="HINHANH/Motorola RAZR XT910.jpg" width="130" height="231"></td>
  </tr>
  <tr>
    <td align="center">
		<strong>HTC One X - 16Gb</strong><br />
    	9,300,000 VNĐ<br />
		<a href="#" onClick="chon_muahang(129,'HTC One X - 16Gb',9300000,'them')">Đặt mua</a>	</td>
    <td align="center"><strong>NOKIA N8 </strong><br />
11,499,000 VNĐ<br />
<a href="#" onClick="chon_muahang(126,'NOKIA 52202',399000,'them')">Đặt mua</a></td>
    <td align="center"><strong>BlackBerry Curve 9380 </strong><br />
6,990,000 VNĐ<br />
<a href="#" onClick=" chon_muahang(125, 'BlackBerry Curve 9380',6990000,'them' )">Đặt mua </a></td>
    <td align="center"><strong>Motorola RAZR XT910</strong><br />
8,590,000 VNĐ<br />
<a href="#" onClick=" chon_muahang(129, 'Motorola RAZR XT910',8590000,'them' )">Đặt mua </a></td>
  </tr>
  <tr>
    <td align="center"><img src="HINHANH/Nokia 808 PureView.jpg" width="106" height="188"></td>
    <td align="center"><img src="HINHANH/Motorola_Droid_b.jpg" width="139" height="184"></td>
    <td align="center"><img src="HINHANH/galaxy_tab_bbb.jpg" width="119" height="185"></td>
    <td align="center"><img src="HINHANH/Sony Xperia Z.png" width="116" height="184"></td>
  </tr>
  <tr>
    <td align="center"><strong>Nokia 808 PureView</strong><br />
11,090,000 VNĐ<br />
<a href="#" onClick="chon_muahang(127,'Nokia 808 PureView',11090000 ,'them')">Đặt mua</a><a href="#"></a> </td>
    <td align="center">
		<strong>Motorola MILESTONE</strong><br />
      	7,899,000 VNĐ<br /> 
    	<a href="#" onClick="chon_muahang(527,'Motorola MILESTONE',7899000,'them')">Đặt mua</a><a href="#"></a>	</td>
    <td align="center"><strong>Samsung Galaxy Tab</strong><br />
10,989,000  VNĐ<br />
<a href="#" onClick="chon_muahang(328,'Samsung Galaxy Tab',10989000,'them')">Đặt mua</a><a href="#"></a> </td>
    <td align="center"><strong>Sony Xperia Z</strong><br />
13,290,000 VNĐ<br />
<a href="#" onClick="chon_muahang(138,'Sony Xperia Z',13290000,'them')">Đặt mua</a><a href="#"></a> </td>
  </tr>
</table>


</body>
</html>
