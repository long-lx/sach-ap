<?php

$hanhdong = "";

if (isset($_POST["hanhdong"]))
	$hanhdong = $_POST["hanhdong"];
	
switch($hanhdong)
{
	case "them":
		ThemSpVaoGio();
		break;
	case "capnhat":
		CapNhatSoLuong();
		break;
	case "xoa":
		XoaSpTrongGio();
		break;				
}	

//------------------------------------------------------------------
if(!isset($_SESSION["giohang"]))
{
	$giohang = array(); //Mảng để lưu giỏ hàng
	$n = 0;				//Lưu số sán phẩm hiện có trong giỏ hàng
	
	//Thêm vài sản phẩm vào $giohang để hiện thị
	/*$giohang[] = array(666,"Sony Ericson w800i", 3, 2600000);
	$giohang[] = array(111,"Nokia E72", 5, 7500000);
	$giohang[] = array(555,"Sam Sung Galaxy S3", 2, 8560000);
	$giohang[] = array(444,"HTC One X", 2, 12500000);
	$giohang[] = array(333,"IPhone 4s", 2, 1050000);
	$n = 5;*/
	
	//Lưu $giohang và $n vào Session
	$_SESSION["giohang"] = $giohang;
	$_SESSION["n"] = $n;
}
//--------------------------------------------------------------------
//------Thu tuc Them mot san pham vao gio hang
function ThemSpVaoGio()
{
	//Chuyển dữ liệu giỏ hàng lưu trong session ra biến $giohang
	$giohang = $_SESSION["giohang"];
	$n = $_SESSION["n"] ;
	
	//Nhận thông tin sản phẩm người dùng chọn mua gửi về từ client
	$masp = (isset($_POST["masp"])) ? $_POST["masp"] :"" ;
	$tensp = (isset($_POST["tensp"])) ? $_POST["tensp"] :"" ;
	$dongia = (isset($_POST["dongia"])) ? $_POST["dongia"] :"" ;
	
	//Kiểm tra xem trong giỏ hàng đã có sản phảm này chưa. Nếu
	//đã có chỉ thực hiện tăng số lượng sản phẩm đó thêm một
	$daco = false;
	for($i=0; $i < $n; $i++)
	{
		if($giohang[$i][0]==$masp)
		{
			$giohang[$i][2] += 1;
			$daco = true;
			break;
		}
	}	
	
	if($daco==false)
	{
		//Lưu thông tin sản phẩm nhận được vào cuối mảng $giohang
		$giohang[] = array($masp,$tensp, 1, $dongia);
		$n = $n + 1;	//tăng số sản phẩm có trong giỏ thêm 1
	}
	//Lưu $giohang và $n sau khi đã xử lý quay lại Session
	$_SESSION["giohang"] = $giohang;
	$_SESSION["n"] = $n;	
}
//------Thu Tuc  Cap nhat so luong cac san pham cua gio hang
function CapNhatSoLuong()
{	
	//Chuyển dữ liệu giỏ hàng lưu trong session ra biến $giohang
	$giohang = $_SESSION["giohang"];
	$n = $_SESSION["n"] ;
	
	for($i=0; $i < $n; $i++)
	{
		if (isset($_POST["txtSoluong{$i}"]))
		$giohang[$i][2] = $_POST["txtSoluong{$i}"];
	}	
	//Lưu $giohang và $n sau khi đã xử lý quay lại Session
	$_SESSION["giohang"] = $giohang;
	$_SESSION["n"] = $n;
}

//------------Thu tuc Xoa mot san pham trong gio hang
function XoaSpTrongGio()
{
	//Chuyển dữ liệu giỏ hàng lưu trong session ra biến $giohang
	$giohang = $_SESSION["giohang"];
	$n = $_SESSION["n"] ;
	
	//Nhận mã của sản phẩm muốn xóa khỏi giỏ hàng gửi về từ client
	$masp = (isset($_POST["masp"])) ? $_POST["masp"] :"" ;
	
	//Tìm vị trí của sản cần xóa dựa vào mã vừa nhận được
	$vitrixoa = -1;
	for($i=0; $i < $n; $i++)	
		if($giohang[$i][0]==$masp)
		{
			$vitrixoa = $i;
			break;
		}
	
	//Thực hiện xóa
	if($vitrixoa>-1)
	{
		for($i = $vitrixoa; $i < $n -1; $i++)
			$giohang[$i] = $giohang[$i+1];
		$n--; //Giảm số sản phẩm có trong giỏ đi một 
	}
	
	//Lưu $giohang và $n sau khi đã xử lý quay lại Session
	$_SESSION["giohang"] = $giohang;
	$_SESSION["n"] = $n;
}
//------Thu tuc Lap hoa don (Luu gio hang thanh hoa don trong csld)

?>