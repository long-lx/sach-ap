<?php 
	session_start();
	include_once("XLGioHang.php");
	
?>
<style type="text/css">
<!--
.CartTable {
	width: 600px;
	/*border: 1px solid #003399;*/
	margin:auto;
}
.CartTable .caption {
	font-size: 18px;
	font-weight: bold;
	color: #FF9900;
	text-align: center;
	padding: 5px;
}

table thead tr {
	font-weight: bold;
	color: #FFFF33;
	background-color: #006600;
}

table tbody tr {	
	color: #336600;
	background-color: #FFCC99;
}
table tbody tr:hover {	
	color: #FFFFFF;
	background-color: #006600;
}
-->
</style>
<?php 

	include_once("XLGioHang.php");
	
	//Chuyển dữ liệu giỏ hàng trong session ra biến
	$giohang = $_SESSION["giohang"];
	$n = $_SESSION["n"];
	
?>
<div class="CartTable">
<div class="caption">GIỎ HÀNG CỦA BẠN Có <?php echo $n; ?> sản phẩm</div>
<form name="frmGiohang" method="post" action="">
  <table width="698" height="84" border="1">
<thead>
  <tr>
    <th width="53" height="24">STT</th>
    <th width="245">Tên sản phẩm </th>
    <th width="60">Số lượng </th>
    <th width="101">Đơn giá </th>
    <th width="146">Thành tiền </th>
    <th width="53">&nbsp;</th>
  </tr>
 </thead>
 <tbody>
  <?php $tongcong = 0; ?>
  <?php for($i=0; $i< $n; $i++ ) { ?>
  <tr>
    <td align="center"><?php echo $i+1; ?>&nbsp;</td>
    <td><?php echo $giohang[$i][1]; ?>&nbsp;</td>
    <td align="center">
		<input name="txtSoluong<?php echo $i; ?>" type="text" value="<?php echo $giohang[$i][2]; ?>" size="5" maxlength="2" style="text-align:right; width:25px" />
	</td>
    <td align="right"><?php echo number_format( $giohang[$i][3],0,",","."); ?></td>
    <td align="right"><?php echo number_format($giohang[$i][2]* $giohang[$i][3],0,"," , "." ); ?></td>
    <td align="center">
		<a href="#" onclick="xoa_onclick(<?php echo $giohang[$i][0]; ?>,'xoa')">Xóa</a>
	</td>
  </tr>
  <?php $tongcong = $tongcong + $giohang[$i][2]* $giohang[$i][3]; ?>
  <?php } ?>
  </tbody>
  <tfoot>
  <tr>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <th align="right">Tổng cộng: </th>
    <td colspan="2"><?php echo number_format($tongcong,0,"," , "." );  ?>VNĐ</td>
  </tr>
  <tr>
    <td colspan="6" align="center">Tiếp tục mua | <a href="#" onclick="capnhat_onclick()">Cập nhật giỏ hàng</a> | Thanh toán | </td>
    </tr>
  </tfoot>
</table>
<input name="masp" type="hidden" />
<input name="hanhdong" type="hidden" />
</form>
<script language="JavaScript" type="text/javascript">
function xoa_onclick(MASP, HANHDONG)
{
	document.frmGiohang.masp.value = MASP;
	document.frmGiohang.hanhdong.value = HANHDONG;	
	document.frmGiohang.submit()
}
function capnhat_onclick()
{
	document.frmGiohang.hanhdong.value = "capnhat";	
	document.frmGiohang.submit()
}
</script>
</div>
