<style>
.timkiem
{
	width:180px;
	border:#0066FF 1px solid
}
</style>
<script language="JavaScript" type="text/javascript">
function bntTim_onClick()
{
	var txtTukhoatim=document.frmtimkiem.txtTukhoatim
	if (txtTukhoatim.value=="")
		return false
		
	document.frmtimkiem.bntTim.value="timnhanh"
	document.frmtimkiem.submit()
	return true
}

function bntTimnangcao_onClick()
{
	document.frmtimkiem.txtTukhoatim.value=""
	document.frmtimkiem.bntTim.value="timnangcao"
	document.frmtimkiem.submit()
}

</script>

<div class="timkiem">
<table width="180" border="0">
  <tr>
    <td align="center">TÌM KIẾM </td>
  </tr>
  <tr>
  <?php $tukhoa = isset($_POST["txtTukhoatim"]) ? $_POST["txtTukhoatim"] : "" ; ?>
    <td height="43"><form id="frmtimkiem" name="frmtimkiem" method="post"  >
      Tên sách cần tìm <br />
      <input type="text" name="txtTukhoatim"  id="txtTukhoatim"style="width:175px" value="<?php echo $tukhoa; ?>" />
	  <input name="bntTim" type="hidden" value="" />
      <center>
        <input name="bntTim1" type="button" value="Tim kiem" onclick="bntTim_onClick()" />
        <input name="bntTim2" type="button" value="Tìm nâng cao" onclick="bntTimnangcao_onClick()" />
      </center>
    </form>	</td>
  </tr>
</table>
</div>
