<?php 
	session_start();
	include_once("../GIOHANG/XLGioHang.php");	
?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Untitled Document</title>
<style type="text/css">

<!--
#ProductTable {
	width: 600px;
	border: 1px solid #003399;
}
#ProductTable .tieude span{
	display:block;
	line-height:30px;
	color:#009933;
	font-size:18px;
	font-family:Geneva, Arial, Helvetica, sans-serif;
	background-color:#C3CDDE;
}
#ProductTable #ProductCell {
	width: 190px;
	height: 200px;
	text-align: center;
	float: left;
	border: 1px solid #C0C0C0;
	padding-top: 10px;
	margin: 3px;
	/*
	max-height:150px;
	overflow:hidden;
	*/
}

#ProductTable .phantrang {
	text-align: center;
	
	margin-right: auto;
	margin-left: auto;
	margin-top: 10px;
	margin-bottom: 10px;
}
#ProductTable .phantrang a {
	
	text-decoration: none;
	padding-top: 2px;
	padding-right: 5px;
	padding-bottom: 2px;
	padding-left: 5px;
	font-weight: bold;
	color: #FFFFFF;
	background-color: #006633;
}
#ProductTable .phantrang .tranghientai {
	color: #006666;
	background-color: #FFFF99;
}
-->
</style>
</head>
<?php 

	include_once("../KETNOI/ketnoi.php");

	/*------------------------------------*/
	include_once("MH_TIM_NANGCAO.php");
	
	//Nhận từ khóa tiêu đề sách cần tìm được gửi về từ màn hình tìm nâng cao
	$dieukien = "";
	$tieude = "";
	if (!empty($_POST["txttieude"]))
	{
		$tieude = $_POST["txttieude"];
		$dieukien = " Ten_sach LIKE '%{$tieude}%' ";
	}

	//Nhận từ khóa mô tả của sách cần tìm 
	$mota = "";
	if (!empty($_POST["txtmota"]))
	{
		$mota = $_POST["txtmota"];
		if (empty($dieukien))
			$dieukien = " Mo_ta LIKE '%{$mota}%' ";
		else
			$dieukien = " {$dieukien} and Mo_ta LIKE '%{$mota}%' ";
	}

	//Nhận mã chủ đề sách cần tìm 
	$chude = "";
	if (!empty($_POST["chude"]))
	{
		$chude = $_POST["chude"];
		if (empty($dieukien))
			$dieukien = " MCD = '$chude' ";
		else
			$dieukien = " {$dieukien} and MCD = '$chude' ";
	}
	
	//Nhận mã nhà xuất bản sách cần tìm 
	$manxb = "";
	if (!empty($_POST["NhaXuatBan"]))
	{
		$manxb = $_POST["NhaXuatBan"];
		if (empty($dieukien))
			$dieukien = " MNXB = '$manxb' ";
		else
			$dieukien = " {$dieukien} and MNXB = '$manxb' ";
	}
	
	//Nhận mã tác giả sách cần tìm 
	$matg = "";
	if (!empty($_POST["tacgia"]))
	{
		$matg = $_POST["tacgia"];
		if (empty($dieukien))
			$dieukien = " Sach.Ms IN (Select Ms From Viet_sach Where Viet_sach.MTG = '{$matg}') ";
		else
			$dieukien = " {$dieukien} and Sach.Ms IN (Select Ms From Viet_sach Where Viet_sach.MTG = '{$matg}') ";
	}
	
	//Ghép thêm mệnh đề WHERE vào điều kiện 
	if(!empty($dieukien))
			$dieukien = " WHERE {$dieukien} ";

	/*-----Xử lý phân trang--------------------*/
	$kichthuoctrang = 6;
	
	//Tính tổng số trang
	//+ Tính tổng số dòng
	$sql = "Select count(*) From sach {$dieukien} ";
	$bang_sach = mysql_query($sql, $ketnoi);
	
	$row = mysql_fetch_array($bang_sach);
	$tongsodong = $row[0];
	
	//+ Tính tổng số trang sau khi biết $tongsodong và $kichthuoctrang
	$tongsotrang = ceil($tongsodong / $kichthuoctrang); 
	
	//Nhận số trang đưo9wcj gửi về từ client do người dùng click vào link số trang
	$tranghientai = (isset($_GET["trang"])) ? $_GET["trang"]: 1;	
	$tranghientai = max($tranghientai, 1);	//Nếu $tranghientai<0 thì $tranghientai=1
	$tranghientai = min($tranghientai, $tongsotrang); //Nếu $tranghientai>$tongsotrang thì $tranghientai=$tongsotrang
	
	//Tính dòng bắt đầu cần lấy dữ liệu
	$dongbatdau = ($tranghientai - 1)*$kichthuoctrang;

	$sql = "SELECT Ms,Ten_sach,Don_gia,Hinh_minh_hoa FROM Sach {$dieukien} LIMIT {$dongbatdau},{$kichthuoctrang}; ";
	$bang_sach = mysql_query($sql, $ketnoi);	
	echo $sql;
?>
<body>
<?php if (@mysql_num_rows($bang_sach)>0 ) { ?>
	<div id="ProductTable">
		<div class="tieude"><span>Sách mới</span></div>
		<?php while($row = mysql_fetch_array($bang_sach)) {?>	
			<div id="ProductCell">
				<img src="../IMAGE/<?php echo $row['Hinh_minh_hoa']; ?>" width="80" height="100" /><br />
				<?php echo $row['Ten_sach']; ?><br />
				<?php echo $row['Don_gia']; ?><br />
				<a href="#" onClick="chon_muahang(<?php echo $row['Ms']; ?>,'<?php echo $row['Ten_sach']; ?>',<?php echo $row['Don_gia']; ?>,'them')">Đặt mua</a>	  	
			</div>
		<?php } ?>
		<div style="clear:both"></div>		
		<div class="phantrang">
			<a href="../GIOITHIEU/?trang=<?php echo $tranghientai-1; ?>"> &lt;&lt;</a>
			<?php for($i=1; $i<=$tongsotrang; $i++  ) { ?>
			<?php $css = ($i==$tranghientai) ? "class='tranghientai'" : "" ; ?>
			
			<a href="../GIOITHIEU/?trang=<?php echo $i; ?>"  <?php echo  $css;?> ><?php echo $i; ?></a>
			
			<?php } ?>						 
			<a href="../GIOITHIEU/?trang=<?php echo $tranghientai+1; ?>">&gt;&gt; </a>		
		</div>		
	</div>
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
<?php } else { ?>	
	<?php echo "<H1 style='color:red'>Không tìm thấy sách nào</H1>" ?>
<?php } ?>
</body>
</html>
