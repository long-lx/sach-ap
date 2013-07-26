
<style type="text/css">
<!--
.menu
{
	width:180px;
	border:#314A28 1px solid;
	background-color: #3E5A33;
}
.menu A
{
	font-family: Arial, Helvetica, sans-serif;
	font-size: 14px;
	color:#FFFFFF;
	display:block;
	text-decoration: none;
	background-color: #3E5A33;
	line-height: 25px;	
}
.menu A:hover
{
	font-weight: bold;
	text-transform: capitalize;
	color:#FFFFFF;
	background-color: #314A28;	
}
-->
</style>
<?php 


include_once("../KETNOI/ketnoi.php");

$sql = "SELECT * FROM Chu_de; ";
$bang_chu_de = mysql_query($sql, $ketnoi);

?>
<div class="menu">
<div class="tieude" >CHỦ ĐỀ SÁCH</div>
<table width="180" border="0" > 
  <tr>
    <td>
	<?php while($row = mysql_fetch_array($bang_chu_de)) {?>
		<a href="#"><?php echo $row["Ten_chu_de"]; ?></a> 
	<?php } ?>
	 </td>
  </tr>
</table>
</div>


