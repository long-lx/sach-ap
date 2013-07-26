<style type="text/css">
<!--
.hor_menu {
	background-color:#99CC66;
	height: 35px;
}
.hor_menu li {
	float: left;
	list-style-type: none;
}
.hor_menu * {
	margin: 0px;
	padding: 0px;
	color: #006633;
	text-decoration: none;
	font-weight: bold;
	font-size: 16px;
}
.hor_menu ul  li a {
	display: block;
	width: 100px;
	text-align: center;
	line-height: 35px;
}
.hor_menu ul li a:hover {
	color: #006600;
	background-color: #FFFFCC;
}
-->
</style>
<div class="hor_menu">
    <ul>
      <li><a href="Index.php">Trang chủ </a></li>
      <li><a href="#" onClick="menu_onclick('MH_LIEN_HE')">Liên hệ</a></li>
      <li><a href="#" onClick="menu_onclick('MH_GIO_HANG')">Giỏ hàng </a></li>
    </ul>
</div>
  <form action="" method="get" name="frmManhinh">
  	<input name="manhinh" type="hidden" value="" />
  </form>    

<script language="JavaScript" type="text/javascript">
function menu_onclick(manhinh)
{
	frmManhinh.manhinh.value=manhinh
	frmManhinh.submit()
}
</script>