<?php 
	//Bước 1: Kết nối tới Server cơ sở dữ liệu
	$ketnoi = "";	//Để lưu mã nhận dạng kết nối
	$ketnoi = mysql_connect("localhost", "root","") or die('Không kết nối được đến Database Server');
	
	//Bước 2: Chọn csdl cần làm việc
	mysql_select_db("books",$ketnoi) or die('Không tìm thấy cơ sở dữ liệu');
	mysql_query("SET NAMES 'utf8'");
?>