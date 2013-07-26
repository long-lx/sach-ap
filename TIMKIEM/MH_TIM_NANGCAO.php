
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Untitled Document</title>
<style type="text/css">
<!--
body {
	margin-left: 0px;
	margin-top: 0px;
}
-->
</style></head>

<body>
<?php 
	include_once("../KETNOI/ketnoi.php");
	
	$tieude = (!empty($_POST["txttieude"])) ? $_POST["txttieude"] : "" ;
	$mota = (!empty($_POST["txtmota"])) ? $_POST["txtmota"] : "" ;
	$macd = (!empty($_POST["chude"])) ? $_POST["chude"] : "" ;
	$matg = (!empty($_POST["tacgia"])) ? $_POST["tacgia"] : "" ;
	$manxb = (!empty($_POST["NhaXuatBan"])) ? $_POST["NhaXuatBan"] : "" ;
?>

<form name="frmTimkiemNangcao" method="post" action="">
  <table width="100%" height="192" border="1" cellspacing="0">
    <!--DWLayoutTable-->
    <tr>
      <td width="122">Tiêu đề </td>
      <td width="466"><input name="txttieude" type="text" size="35" value="<?php echo $tieude; ?>"></td>
    </tr>
    <tr>
      <td>Mô tả </td>
      <td><input name="txtmota" type="text" size="35"  value="<?php echo $mota; ?>"></td>
    </tr>
    <tr>
      <td>Chủ đề </td>
      <td>
	<?php 
		$sql = "SELECT * FROM Chu_de ORDER BY Ten_chu_de; ";
		$bang_chu_de = mysql_query($sql, $ketnoi);
	?>
	  <SELECT name="chude">
	  	<OPTION value="0">-------- Chọn chủ đề --------</OPTION>
		<?php while($row = mysql_fetch_array($bang_chu_de)) {?>
			<?php $thuoctinh = ($row["MCD"]==$macd ) ? "Selected='selected'" : "";	?>
			<OPTION value="<?php echo $row["MCD"]; ?>" <?php echo $thuoctinh; ?> ><?php echo $row["Ten_chu_de"]; ?></OPTION>		
		<?php } ?>			
      </SELECT>      
	 </td>
    </tr>
    <tr>
      <td>Tác giả </td>
      <td>
	  <?php 
		$sql = "SELECT * FROM Tac_gia ORDER BY Ten_tac_gia; ";
		$bang_tac_gia = mysql_query($sql, $ketnoi);
	  ?>
	  <SELECT name="tacgia">
	  	<OPTION value="0">-------- Chọn tác giả --------</OPTION>
		<?php while($row = mysql_fetch_array($bang_tac_gia)) {?>
		<?php $thuoctinh = ($row["MTG"]==$matg ) ? "Selected='selected'" : "";	?>
			<OPTION value="<?php echo $row["MTG"]; ?>" <?php echo $thuoctinh; ?> ><?php echo $row["Ten_tac_gia"]; ?></OPTION>		
		<?php } ?>				
      </SELECT>      </td>
    </tr>
    <tr>
      <td>Nhà xuất bản </td>
      <td>
	  <?php 
		$sql = "SELECT * FROM Nha_xuat_ban ORDER BY Ten_nha_xuat_ban; ";
		$bang_nxb = mysql_query($sql, $ketnoi);
	  ?>
	  <SELECT name="NhaXuatBan">
	  	<OPTION value="0">------- Nhà xuất bản -------</OPTION>
	  	<?php while($row = mysql_fetch_array($bang_nxb)) {?>
		<?php $thuoctinh = ($row["MNXB"]==$matg ) ? "Selected='selected'" : "";	?>
			<OPTION value="<?php echo $row["MNXB"]; ?>"  <?php echo $thuoctinh; ?> ><?php echo $row["Ten_nha_xuat_ban"]; ?></OPTION>		
		<?php } ?>	
      </SELECT>      </td>
    </tr>
    <tr>
      <td height="28" colspan="2" align="center" valign="top"><input name="bntTimkiemnangcao" type="submit" id="bntTimkiemnangcao" value="Tìm kiếm"></td>
    </tr>
  </table>
</form>
</body>
</html>
