<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Untitled Document</title>
</head>

<body>
<form id="form1" name="form1" method="post" action="">
	<input name="hanhdong" type="hidden" value="luugiohang" />
  <table width="446" height="286" border="0">
    <tr>
      <th colspan="2" scope="col">Thong tin giao hang </th>
    </tr>
    <tr>
      <td>Ho ten nguoi nhan </td>
      <td><input name="txtHoten" type="text" id="txtHoten" /></td>
    </tr>
    <tr>
      <td>Dia chi giao </td>
      <td><input name="txtDiachi" type="text" id="txtDiachi" /></td>
    </tr>
    <tr>
      <td>E-Mail nguoi nhan </td>
      <td><input name="txtEmail" type="text" id="txtEmail" /></td>
    </tr>
    <tr>
      <td>Dien thoai </td>
      <td><input name="txtDienthoai" type="text" id="txtDienthoai" /></td>
    </tr>
    <tr>
      <td>Nhan hang vao ngay </td>
      <td><input name="txtDate" type="text" id="txtDate" />
        <input type="button" name="Button" value="Date" onclick="showCalendar('txtDate')" /></td>
    </tr>
    <tr>
      <td>Thong tin khac </td>
      <td><textarea name="txtThongtin" rows="5" id="txtThongtin"></textarea></td>
    </tr>
    <tr>
      <td colspan="2" align="center"><input type="submit" name="Submit" value="Gui don hang" /></td>
    </tr>
  </table>
</form>
</body>
</html>
