-- phpMyAdmin SQL Dump
-- version 3.3.9
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Aug 15, 2011 at 02:14 PM
-- Server version: 5.5.8
-- PHP Version: 5.3.5

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `books`
--
CREATE DATABASE `books` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `books`;
-- --------------------------------------------------------

--
-- Table structure for table `chu_de`
--

DROP TABLE IF EXISTS `chu_de`;
CREATE TABLE IF NOT EXISTS `chu_de` (
  `MCD` int(11) NOT NULL AUTO_INCREMENT,
  `Ten_chu_de` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`MCD`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=11 ;

--
-- Dumping data for table `chu_de`
--

INSERT INTO `chu_de` (`MCD`, `Ten_chu_de`) VALUES
(1, 'Văn học Nghệ thuật'),
(2, 'Ngoại ngữ'),
(3, 'Công nghệ thông tin'),
(4, 'Pháp luật'),
(5, 'Sách nấu ăn'),
(6, 'Phật học'),
(7, 'Y học'),
(8, 'Kinh tế'),
(9, 'Khoa học Kỹ Thuật'),
(10, 'Sức khỏe');

-- ----------------------------------------------------------------------------------------------------------------
--
-- Table structure for table `nha_xuat_ban`
--
DROP TABLE IF EXISTS `nha_xuat_ban`;
CREATE TABLE IF NOT EXISTS `nha_xuat_ban` (
  `MNXB` int(11) NOT NULL AUTO_INCREMENT,
  `Ten_nha_xuat_ban` varchar(100) COLLATE utf8_bin NOT NULL DEFAULT 'Không tên',
  `Dia_chi` varchar(150) COLLATE utf8_bin DEFAULT NULL,
  `Dien_thoai` varchar(15) COLLATE utf8_bin DEFAULT NULL,
  `Website` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`MNXB`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=15 ;

--
-- Dumping data for table `nha_xuat_ban`
--

INSERT INTO `nha_xuat_ban` (`MNXB`, `Ten_nha_xuat_ban`, `Dia_chi`, `Dien_thoai`, `Website`) VALUES
(1, 'Nhà Xuất Bản Trẻ', '123 Nguyễn Du', '19001560', NULL),
(2, 'NXB Thống Kê', '456 Cống Quỳnh', '19456566', NULL),
(3, 'NXB Kim Đồng', '789 Nguyễn Trãi', '45656566', NULL),
(4, 'NXB Văn Học', '357 Cộng hoà', '56786588', NULL),
(5, 'NXB TP.HCM', NULL, NULL, NULL),
(6, 'Mỹ Thuật', NULL, NULL, NULL),
(7, 'NXB Thanh Niên', NULL, NULL, NULL),
(8, 'NXB Phụ Nữ', NULL, NULL, NULL),
(9, 'NXB Đà Nẵng', NULL, NULL, NULL),
(10, 'NXB Tôn Giáo', NULL, NULL, NULL),
(11, 'Tạp chíVăn Hóa Phật Giáo', NULL, NULL, NULL),
(12, 'Chính Trị Quốc Gia', NULL, NULL, NULL),
(13, 'Lao Động Xã Hội', NULL, NULL, NULL),
(14, 'NXB Y Học', NULL, NULL, NULL);
-- ----------------------------------------------------------------------------------------------------------------

--
-- Table structure for table `sach`
--

DROP TABLE IF EXISTS `sach`;
CREATE TABLE IF NOT EXISTS `sach` (
  `Ms` int(11) NOT NULL AUTO_INCREMENT,
  `Ten_sach` varchar(150) COLLATE utf8_bin DEFAULT NULL,
  `Don_vi_tinh` varchar(50) COLLATE utf8_bin DEFAULT 'Quyển',
  `Don_gia` double DEFAULT NULL,
  `Mo_ta` varchar(2000) COLLATE utf8_bin DEFAULT NULL,
  `Hinh_minh_hoa` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `MCD` int(11) DEFAULT NULL,
  `MNXB` int(11) DEFAULT NULL,
  `So_trang` smallint(6) DEFAULT NULL,
  `Kich_thuoc` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `Ngay_cap_nhat` datetime DEFAULT NULL,
  `So_luong_ban` int(11) DEFAULT NULL,
  `So_lan_xem` int(11) DEFAULT NULL,
  PRIMARY KEY (`Ms`),
  KEY `MCD` (`MCD`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=65 ;

-- Constraints for table `sach`
--
ALTER TABLE `sach`
  ADD 
	CONSTRAINT `sach_fk_MCD` FOREIGN KEY (`MCD`) REFERENCES `chu_de` (`MCD`);
ALTER TABLE `sach`
  ADD 
	CONSTRAINT `sach_fk_MNXB` FOREIGN KEY (`MNXB`) REFERENCES `nha_xuat_ban` (`MNXB`) ;
--
-- Dumping data for table `sach`
--

INSERT INTO `sach` (`Ms`, `Ten_sach`, `Don_vi_tinh`, `Don_gia`, `Mo_ta`, `Hinh_minh_hoa`, `MCD`, `MNXB`, `So_trang`, `Kich_thuoc`, `Ngay_cap_nhat`, `So_luong_ban`, `So_lan_xem`) VALUES
(1, ' ActionScript 2.0 - Lập Trình Hướng Đối Tượng', 'Quyển', 99000, 'Nội dung của cuốn sách "ActionScript 2.0 - Lập Trình Hướng Đối Tượng" này gồm 3 phần, trình bày những vấn đề sau:\r\nPhần 1: Ngôn ngữ ActionScript 2.0.\r\nChương 1: Tổng quan về ActionScript 2.0.\r\nChương 2: ActionScript hướng đối tượng.\r\nChương 3: Kiểu dữ liệu và kiểm tra kiểu.\r\nChương 4: Các lớp.\r\nChương 5: Tạo một lớp ActionScript 2.0.\r\nChương 6: Thừa kế.\r\nChương 7: Tạo lớp con ActionScript 2.0.\r\nChương 8: Giao diện.\r\nChương 9: Gói.\r\nChương 10: Các ngoại lệ.\r\nPhần 2: Phát triển ứng dụng.\r\nChương 11: Khung sườn ứng dụng OOP.\r\nChương 12: Sử dụng thành phần với ActionScript 2.0.\r\nChương 13: Những lớp con MovieClip.\r\nChương 14: Phân phối thư viện lớp.\r\nPhần 3: Các ví dụ thiết kế mẫu trong ActionScript 2.0.\r\nChương 15: Giới thiệu các mẫu thiết kế.\r\nChương 16: Mẫu thiết kế Observer.\r\nChương 17: Mẫu thiết kế Singleton.\r\nChương 18: Mẫu thiết kế Model-View-Controller.\r\nChương 19: Mô hình chuyển giao sự kiện.', '156414TH.jpg', 3, 13, 604, ' 16x24', '0000-00-00 00:00:00', 0, 0),
(2, 'JAVA - Lập Trình Mạng (Ấn Bản Dành Cho Sinh Viên - Có CD Bài Tập Kèm Theo Sách)', 'Quyển', 54000, 'Ngày nay ngôn ngữ Java là một ngôn ngữ lập trình phổ biến. Để giúp các bạn tiến sâu hơn vào thế giới lập trình Java, nhóm tác giả MK.PUB biên soạn cuốn giáo trình "JAVA - Lập Trình Mạng".\r\nGiáo trình được chia thành 3 phần: \r\nPhần một gồm chương I, giới thiệu với các bạn các kiến thức cơ bản về lập trình mạng. \r\nPhần thứ hai gồm chương II đến chương VI, giới thiệu với các bạn các kỹ thuật lập trình mạng như lập trình phân tán, đối tượng RMI, CORBA...\r\nPhần ba là các chương còn lại, giúp bạn xây dựng ứng dụng thư điện tử với Java Mail, tìm hiểu XML, XSL... \r\nSách thích hợp với những người đã có kiến thức cơ bản về Java và muốn nâng cao hiểu biết về mô hình cũng như phong cách viết các ứng dụng mạng có thể áp dụng ngay trong thực tế.\r\n \r\n \r\nmáy tính khác nên cấu hình máy server phải mạnh, thông thường là máy chuyên dụng của các hãng như Compaq, Intel, IBM…', '150920TH.jpg', 3, 13, 280, '21x29', '0000-00-00 00:00:00', 0, 0),
(3, 'Luật đại cương', 'Bộ', 20500, 'Chỉ mỗi việc hiển thị dữ liệu trên trang Web, chúng ta đã viết khá nhiều dòng lệnh trên đó, chưa kể đến những xử lý khác sau này. Số lượng thao tác cần xử lý trên trang Web càng tăng, số lượng dòng lệnh càng nhiều. Việc để lẫn lộn những đoạn code về truy cập dữ liệu và xử lý trên giao diện gây không ít khó khăn trong việc xây dựng, phát triển và bảo trì ứng dụng web.', 'Sach1.jpg', 4, 2, 0, '19 X 27 ', '0000-00-00 00:00:00', 0, 0),
(4, 'Tiếng anh lớp 8', 'Quyển', 12000, 'Chỉ mỗi việc hiển thị dữ liệu trên trang Web, chúng ta đã viết khá nhiều dòng lệnh trên đó, chưa kể đến những xử lý khác sau này. Số lượng thao tác cần xử lý trên trang Web càng tăng, số lượng dòng lệnh càng nhiều. Việc để lẫn lộn những đoạn code về truy cập dữ liệu và xử lý trên giao diện gây không ít khó khăn trong việc xây dựng, phát triển và bảo trì ứng dụng web.', 'Sach2.jpg', 2, 3, 0, '19 X 27 ', '0000-00-00 00:00:00', 0, 0),
(5, 'Microsoft Window XP', 'Quyển', 25000, 'Chính vì lý do đó, trong phần này, chúng tôi hướng dẫn các bạn xây dựng lớp xử lý và đối tượng thể hiện dữ liệu. Lớp xử lý đảm nhận trách nhiệm thực hiện các thao tác truy xuất và cập nhật dữ liệu. Đối tượng thể hiện nhận dữ liệu, hiển thị dữ liệu trên trang Web ', 'Sach1.jpg', 3, 4, 0, '19 X 27 ', '0000-00-00 00:00:00', 0, 0),
(6, 'Kỹ thuật chế biến các món ăn', 'Quyển', 100000, NULL, '155SV026M.jpg', 5, 5, 278, '19 X 27 ', '0000-00-00 00:00:00', 0, 0),
(7, 'Nghệ thuật cắt tỉa rau củ nâng cao', 'Quyển', 70000, 'Bạn là người khéo tay, Bạn thích nấu ăn, vậy quyển sách này sẽ là cẩm nang không thể thiếu để làm tăng thêm hương vị và đẹp mắt hơn cho buổi tiệc gia đình Bạn.', '18SV005M.jpg', 5, 6, 40, '19 X 27', '0000-00-00 00:00:00', 0, 0),
(8, '88 MÓN ĂN THÔNG DỤNG TRONG GIA ĐÌNH', 'Quyển', 20000, NULL, '100182.jpg', 5, 7, 142, '18.5 X 20.5', '0000-00-00 00:00:00', 0, 0),
(9, '88 MÓN ĂN CHẾ BIẾN TỪ CÁ', 'Quyển', 20000, NULL, '020251.jpg', 5, 7, 142, '18.5 X 20.5', '0000-00-00 00:00:00', 0, 0),
(10, 'KỸ THUẬT NẤU NƯỚNG', 'Quyển', 65000, NULL, '020221.jpg', 5, 1, 408, '16 X 24', '0000-00-00 00:00:00', 0, 0),
(11, 'BÁNH MỨT XÔI CHÈ VIỆT NAM', 'Quyển', 90000, 'Đây là quyển sách không thể thiếu với những ai yêu thích các món bánh mứt xôi chè Việt Nam.', '18SV004M.jpg', 5, 8, 199, '16 X 23', '0000-00-00 00:00:00', 0, 0),
(12, 'THỊT GÀ VÀ GIA CẦM TRĂM MÓN', 'Quyển', 110000, NULL, '100211.jpg', 5, 8, 97, '16 X 22', '0000-00-00 00:00:00', 0, 0),
(13, 'THỊT BĂM TRĂM MÓN', 'Quyển', 110000, NULL, '100213.jpg', 5, 8, 95, '16 X 22', '0000-00-00 00:00:00', 0, 0),
(14, '298 MÓN NGON DỄ LÀM TRONG GIA ĐÌNH', 'Quyển', 70000, NULL, '155SV025M.jpg', 5, 9, 275, '14.5 X20.5', '0000-00-00 00:00:00', 0, 0),
(15, 'NHỮNG MÓN ĂN DỄ LÀM HÀNG NGÀY TRONG GIA ĐÌNH <Br> HƯỚNG DẪN NẤU ĂN THÔNG DỤNG', 'Quyển', 68000, NULL, '155SV020M.jpg', 5, 9, 299, '14.5 X 20.5', '0000-00-00 00:00:00', 0, 0),
(16, 'Nửa Ngày Của Thái Thượng Hoàng', 'Quyển', 20000, NULL, '121636PH.jpg', 6, 5, 0, NULL, '0000-00-00 00:00:00', 0, 0),
(17, 'Những Lời Dạy Vàng Của Đức Phật', 'Quyển', 16000, 'TTập sách này được Tỳ kheo Thiện Minh phiên dịch soạn thảo từ kinh sách chánh truyền của quốc giáo Phật Giáo Nam truyền Myanmar. \r\nNội dung chủ yếu giới thiệu tóm tắt sơ lược một số vấn đề cơ bản. Đây là những vấn đề cần thiết dành cho những người sơ cơ mới bắt đầu tìm hiểu đến lời dạy Đấng Cha Lành.', '137660PH.jpg', 6, 10, 140, '12x18', '0000-00-00 00:00:00', 0, 0),
(18, 'Phật Ngôn Diễn Giảng', 'Quyển', 20000, 'Nội dung chính của cuốn sách "Phật Ngôn Diễn Giảng" có bố cục như sau:\r\nChương 1: Phần bản ngã.\r\nChương 2: Phần không dễ duôi.\r\nChương 3: Phần nghiệp báo.\r\nChương 4: Phần phiền não.\r\nChương 5: Phần sân hận.', '137662PH.jpg', 6, 10, 166, '14x20', '0000-00-00 00:00:00', 0, 0),
(19, 'Tạp chí Văn Hóa Phật Giáo Trọn Bộ 2005 (Từ số 1 đến số 11)', 'Quyển', 150000, 'Năm 2005, Tạp chí Văn hóa Phật giáo phát hành 11 kỳ, gồm 3 số đặc biệt (Xuân Ất Dậu, Kính mừng Phật...', '148693PH.jpg', 6, 10, 0, '14,5x20,5', '0000-00-00 00:00:00', 0, 0),
(20, 'Thiền Và Nghệ Thuật Đối Diện Với Cuộc Đời: Hành Trình Nội Tại', 'Quyển', 25000, 'Phải chăng mọi sự trên đời đều là định mệnh, đã được an bài ngay từ khi chúng ta mới sinh ra? Phải chăng chúng ta chỉ nên thuận theo dòng đời đã được mã hóa ấy? Hay chúng ta sinh ra đã được tự do và có quyền dùng ý chí tự do của mình để chọn lối sống thích hợp? Hai quan niệm ấy đều đúng cả. Tại sao thế? Hãy thử nghĩ xem.', '122348PH.jpg', 6, 5, 750, '20x30', '0000-00-00 00:00:00', 0, 0),
(21, 'Tâm Sở Vấn Đáp (Tập 1+2)', 'Quyển', 57000, 'Cuốn sách "Tâm Sở Vấn Đáp (Tập 1+2)" gồm những nội dung: \r\nTâm sở tợ tha vấn đáp \r\nA - Tâm sở biến hành \r\nB - Tâm sở biệt cảnh \r\nPhần II: Tâm sở bất thiện \r\nA - Tâm sở si phần \r\nB - Tâm sở tham phần \r\nC - Tâm sở sân phân \r\nD - Tâm sở hôn phần \r\n', '138410PH.jpg', 6, 10, 216, '14,5x20,5', '0000-00-00 00:00:00', 0, 0),
(22, 'Đến Bờ Kia', 'Cuốn', 26000, 'Cuốn sách "Đến Bờ Kia" gồm những nội dung: \r\nPhần I: Tổng quát về Balamật \r\nChương I: Đến Bờ Kia \r\nA - Balamật \r\nB - Các pháp balamật \r\nC - Các điều kiện tăng trưởng pháp balamật \r\nD - Các yếu tố làm ô nhiễm Balamật \r\nE - Các yếu tố đối lập với balamật \r\nF - Phân loại các Balamật \r\nG - Tóm tắt các Parami \r\nChương II: Bồ Tát Hạnh \r\nXin trân trọng giới thiệu cùng bạn đọc.', '138413H.jpg', 6, 10, 216, '14,5x20,5', '0000-00-00 00:00:00', 0, 0),
(23, 'Quy Trình Tâm Pháp', 'Cuốn', 39000, 'Cuốn sách "Quy Trình Tâm Pháp" gồm những nội dung : \r\nChương I: \r\nBài 1: Tâm lộ \r\nBài 2: Ngũ môn tâm lộ \r\nBài 3: Lộ nhãn mônn cảnh rất lớn \r\nA. Lộ ngũ môn cảnh rất lớn \r\nBài 4:......................................................... \r\nB. Lộ nhãn môn cảnh rất lớn (Chóy Đổng Lực) \r\nC. Lộ nhãn môn cảnh rất lớn (Chót Hữu Phần Khách) \r\nBài 5 Tâm na cảnh \r\nBài 6: Lộ nhãn môn cảnh lớn \r\nBài 7: Lý giải lộ ngũ môn thời bình nhật \r\nChương II: \r\nBài 8: Lộ ý môn\r\nBài 9: Lộ ý môn thời bình nhật \r\nBài 10: Lộ cảnh rõ \r\nBài 11: Giải về lộ ý môn thông thường \r\nBài 12: Lộ ý nói lộ ngũ\r\nBài 13: Lộ chiêm bao \r\nBài 14: Tâm lộ an chỉ \r\nBài 15: Tâm lộ chứng thiền ý nhập định \r\nBài 16: Tâm lộ đác đạo \r\nBài 17: Tâm lộ thiền cơ và lộ thiền cơ \r\nBài 18: Lộ nhập thiền quả \r\nBài 19: Lộ nhập thiền diệt thọ tưởng \r\nBài 20: Giải về tâm lộ an chỉ \r\nBài 21: Tâm lộ cận tử \r\nBài 22: Lộ cận tử thông thường \r\nBài 23: Tâm lộ tục sinh \r\nBài 24: Tâm lộ viên tịch \r\nBài 25: Linh tinh vấn đáp \r\nXin trân trọng giới thiệu cùng bạn đọc. \r\n', '138412PH.jpg', 6, 10, 316, '14,5x20,5', '0000-00-00 00:00:00', 0, 0),
(24, 'Luật Trong Kinh Doanh - Diễn Giải (Tái Bản Lần Thứ 7)', 'Quyển', 3000, 'Thời gian vừa qua, Nhà nước ta đã ban hành, sửa đổi, bổ sung nhiều bộ luật trong lĩnh vực kinh doanh như: Luật dân sự, Luật cạnh tranh, Luật doanh nghiệp, Luật thương mại, Pháp lệnh trọng tài, Luật kiểm toán Nhà nước, Luật đầu tư... và các văn bản pháp luật hướng dẫn thi hành.\r\nNhờ đó hệ thống pháp luật về kinh doanh từng bước đuợc hoàn thiện và phong phú hơn, góp phần tích cực trong quản lý Nhà nước và tạo môi trường pháp lý thuận lợi cho việc hội nhập kinh tế khu vực, thế giới và phù hợp với tốc độ phát triển kinh tế - xã hội của nước nhà.\r\nCuốn sách "Luật Trong Kinh Doanh - Diễn Giải (Tái Bản Lần Thứ 7)" cung cấp cho các bạn tài liệu tham khảo và tìm hiểu những quy phạm pháp luật trong kinh doanh.', '87910PL.jpg', 4, 12, 296, '14,5x20,5', '0000-00-00 00:00:00', 0, 0),
(25, 'Văn Bản Mới Hướng Dẫn Thi Hành Pháp Lệnh Thú Y', 'Quyển', 36000, 'Cuốn sách "Văn Bản Mới Hướng Dẫn Thi Hành Pháp Lệnh Thú Y" nội dung gồm 2 phần:\r\n<UL> <Li>Phần I: Một Số Quy Định Mới Về Thuốc Thú Y, Vệ Sinh, Phòng Dịch Và Hành Nghề Thú Y. </Li> \r\n<Li> Phần II: Quy Định Về Xử Phạt Vi Phạm Hành Chính Trong Lĩnh Vực Thú Y.</Li><UL>\r\nXin trân trọng giới thiệu cùng bạn đọc.', '153885PL.jpg', 4, 12, 484, '13x19', '0000-00-00 00:00:00', 0, 0),
(26, 'Luật Bảo Hiểm Xã Hội', 'Quyển', 8000, 'Nội dung của cuốn sách như sau:\r\nChương I: Những quy định chung.\r\nChương II: Quyền trách nhiệm của người lao động, người sử dụng lao động, tổ chức bảo hiểm xã hội.\r\nChương III: Bảo hiểm xã hội bắt buộc.\r\nChương IV: Bảo hiểm xã hội tự nguyện.\r\nChương V: Bảo hiểm thất nghệp.\r\nChương VI: Quỹ bảo hiểm xã hội.\r\nChương VII: Tổ chức bảo hiểm xã hội.\r\nChương VIII: Thủ tục thực hiện bảo hiểm xã hội.\r\nChương IX: Khiếu nại , tố cáo về bảo hiểm xã hội.\r\nChương X: Khen thưởng và xử lý vi phạm.\r\nChương XI: Điều khoản thi hành.\r\nXin trân trọng giới thiệu cùng các bạn. \r\nChương I: Những quy định chung.\r\nChương II: Quyền trách nhiệm của người lao động, người sử dụng lao động, tổ chức bảo hiểm xã hội.\r\nChương III: Bảo hiểm xã hội bắt buộc.\r\nChương IV: Bảo hiểm xã hội tự nguyện.\r\nChương V: Bảo hiểm thất nghệp.\r\nChương VI: Quỹ bảo hiểm xã hội.\r\nChương VII: Tổ chức bảo hiểm xã hội.\r\nChương VIII: Thủ tục thực hiện bảo hiểm xã hội.\r\nChương IX: Khiếu nại , tố cáo về bảo hiểm xã hội.\r\nChương X: Khen thưởng và xử lý vi phạm.\r\nChương XI: Điều khoản thi hành.\r\nXin trân trọng giới thiệu cùng các bạn.', '153878PL.jpg', 4, 12, 88, '13x19', '0000-00-00 00:00:00', 0, 0),
(27, 'Pháp Lệnh Phòng, Chống Mại Dâm Và Các Văn Bản Mới Nhất Hướng Dẫn Thi Hành', 'Quyển', 12000, 'Pháp lệnh phòng, chống mại dâm năm 2003 ra đời nhằm góp phần bảo vệ truyền thống tốt đẹp của dân tộc, danh dự, nhân phẩm của con người, hạnh phúc gia đình, giữ gìn trật tự,an toàn xã hội.\r\nSau khi Pháp lệnh được công bố trong những năm qua Chính phủ và các Bộ, ngành có liên quan đã ban hành những văn bản pháp luật mới hướng dẫn cụ thể việc thi hành Pháp lệnh này.\r\nNhằm cung cấp cho các bạn những thông tin cập nhật trong lĩnh vực nêu trên, Nhà xuất bản Chính trị quốc gia xuất bản cuốn sách "Pháp Lệnh Phòng, Chống Mại Dâm Và Các Văn Bản Mới Nhất Hướng Dẫn Thi Hành".\r\nXin trân trọng giới thiệu cùng các bạn.', '153884PL.jpg', 4, 12, 152, '13x19', '0000-00-00 00:00:00', 0, 0),
(28, '300 Câu Hỏi - Đáp Pháp Luật Và Các Tình Huống Thực Tiễn Trong Hoạt Động Xây Dựng Theo Luật Xây Dựng Năm 2003', 'Quyển', 57000, 'Để khắc phục những hạn chế còn tồn tại trong hoạt động xây dựng, đồng thời tăng cường công tác quản lý nhà nước về xây dựng, Quốc hội đã giao cho Chính phủ tiến hành soạn thảo Luật xây dựng. Tại kỳ họp thứ 4 ngày 26 tháng 11 năm 2003, Quốc hội khoá XI đã thông qua Luật xây dựng. Luật xây dựng có hiệu lực thi hành kể từ ngày 01/7/2004.\r\nCuốn sách "3oo Câu Hỏi - Đáp Pháp Luật Và Các Tình Huống Thực Tiễn Trong Hoạt Động Xây Dựng Theo Luật Xây Dựng Năm 2003" được biên soạn trên cơ sở những nội dung của Luật xây dựng năm 2003 và những văn bản mới nhất hướng dẫn thi hành có sự kết hợp với những tình huống thực tế trong cuộc sống.\r\nXin trân trọng giới thiệu cùng các bạn.  \r\n \r\nĐể khắc phục những hạn chế còn tồn tại trong hoạt động xây dựng, đồng thời tăng cường công tác quản lý nhà nước về xây dựng, Quốc hội đã giao cho Chính phủ tiến hành soạn thảo Luật xây dựng. Tại kỳ họp thứ 4 ngày 26 tháng 11 năm 2003, Quốc hội khoá XI đã thông qua Luật xây dựng. Luật xây dựng có hiệu lực thi hành kể từ ngày 01/7/2004.\r\nCuốn sách "3oo Câu Hỏi - Đáp Pháp Luật Và Các Tình Huống Thực Tiễn Trong Hoạt Động Xây Dựng Theo Luật Xây Dựng Năm 2003" được biên soạn trên cơ sở những nội dung của Luật xây dựng năm 2003 và những văn bản mới nhất hướng dẫn thi hành có sự kết hợp với những tình huống thực tế trong cuộc sống.\r\nXin trân trọng giới thiệu cùng các bạn.', '153911PL.jpg', 4, 13, 440, '14,5x20,5', '0000-00-00 00:00:00', 0, 0),
(29, ' Sách Trắng Về Sức Khỏe', 'Quyển', 45000, 'Tập "Sách Trắng Về Sức Khỏe" giới thiệu:\r\n8 nguyên tắc chỉ đạo trong ăn uống.\r\n16 bài tập dưỡng sinh truyền thống.\r\nCách duy trì tâm lý khỏe mạnh.\r\nLối sống và thói quen lành mạnh.\r\nCách phối hợp giữa 6 loại thực phẩm để bảo đảm cân đối dinh dưỡng.\r\nVận động phù hợp với mọi người.\r\nĐiều chỉnh tâm lý tinh thần.\r\nBí quyết của những người sống lâu.\r\nv.v...\r\n', '150988YH.jpg', 7, 8, 380, '14,5x20,5', '0000-00-00 00:00:00', 0, 0),
(30, 'Món Ăn Bài Thuốc Chữa Bệnh Cho Phụ Nữ', 'Quyển', 35000, 'Cuốn sách "Món Ăn Bài Thuốc Chữa Bệnh Cho Phụ Nữ" giới thiệu nội dung: \r\nPhần 1: Bữa ăn bảo đảm sức khỏe cho phụ nữ ở các thời kỳ khác nhau:\r\nĐặc điểm sinh lý và phương pháp ăn uống đảm bảo sức khoẻ cho phụ nữ ở tuổi dậy thì.\r\nĐặc điểm sinh lý và phương pháp ăn uống đảm bảo sức khoẻ cho phụ nữ ở độ tuổi thanh niên.\r\nĐặc điểm sinh lý và phương pháp ăn uống đảm bảo sức khoẻ cho nữ trung niên.\r\nĐặc điểm sinh lý của phụ nữ ở tuổi già.\r\nPhần 2: Liệu pháp ăn uống chữa các bệnh phụ nữ thường gặp:\r\nLiệu pháp ẩm thực chữa các bệnh về kinh nguyệt.\r\nPhương pháp ăn uống trong thời kỳ có thai.\r\nCách ăn uống thời kỳ ở cữ và các bệnh hậu sản.\r\nCách điều trị bằng ẩm thực một số chứng bệnh phụ khoa.\r\nCách ăn uống của phụ nữ thời kỳ mãn kinh.\r\nLiệu pháp chữa bệnh viêm khoang chậu.\r\nCách ăn uống với người viêm tuyến vú.\r\nCách ăn uống và bảo vệ sức khỏe tình dục của phụ nữ.\r\n', '150976YH.jpg', 7, 8, 348, '13x19', '0000-00-00 00:00:00', 0, 0),
(31, '300 Bài Cháo Thuốc Dân Gian', 'Quyển', 19000, 'Cuốn sách "300 Bài Cháo Thuốc Dân Gian" giới thiệu nội dung:\r\nPhần I: Những Bài Thuốc Có Nguồn Gốc Thực Vật. \r\nPhần II: Những Bài Thuốc Có Nguồn Gốc Động Vật.\r\nXin trân trọng giới thiệu cùng bạn đọc. \r\n', '151113YH.jpg', 7, 13, 176, '12x19', '0000-00-00 00:00:00', 0, 0),
(32, 'Dinh Dưỡng Và Sức Khỏe', 'Quyển', 35000, '"Dinh Dưỡng Và Sức Khỏe" là cuốn thứ 2 trong bộ sách "Dinh Dưỡng Và An Toàn Thực Phẩm" của Bác sĩ Nguyễn Ý Đức.\r\nNgoài việc sử dụng thuốc men và các phương thức trị liệu, dinh dưỡng cũng giữ một vai trò rất quan trọng đối với người bệnh. Một bệnh nhân tiểu đường nếu biết cách ăn uống có thể sẽ hạn chế hậu quả xấu khi lượng đường trong máu lên quá cao... Cuốn sách này đưa ra những hướng dẫn về cách ăn uống để có thể hỗ trợ việc trị bệnh đã được nghiên cứu khoa học và thực tế chứng minh là mang lại hiệu quả cao.\r\nMột phần quan trọng - gần như trọng tâm của bộ sách này là dành để bàn tới mối tương quan giữa dinh dưỡng và các bệnh tật thường gặp như: Tiểu đường, tim mạch, huyết áp, viêm gan... Tác giả luôn dành những lời khuyên hữu ích nhằm đạt căn bản vững chắc cho cuộc sống khỏe mạnh, ít bệnh tật...', '152766YH.jpg', 7, 14, 320, '14,5x20,5', '0000-00-00 00:00:00', 0, 0),
(33, 'Thuốc Đắng Giã Tật - Tập 1', 'Quyển', 25000, 'Thuốc Đắng Giã Tật": ấn phẩm tập hợp nguyên bản của 24 bài phiếm luận của cây viết thầy thuốc Lương Lễ Hoàng đã được phổ biến trên Thời báo Kinh tế Sài Gòn\r\n"Thuốc Đắng Giã Tật": 24 viên gạch góp phần xây dựng bức tường khánh bệnh qua phương án mang kiến thức y học đến thật gần người bệnh.\r\n"Thuốc Đắng Giã Tật": 24 cơ hội để cả bệnh nhân lẫn thầy thuốc khi cười, lúc giận, khi vui, lúc buồn, suy nghĩ và áp dụng.\r\nSách được chia làm nhiều tập.\r\nXin trân trọng giới thiệu Tập 1 cùng bạn đọc.', '130516YH.jpg', 7, 1, 196, '11,5x18,5', '0000-00-00 00:00:00', 0, 0),
(34, 'Thuốc Đắng Giã Tật - Tập 2', 'Quyển', 30000, '"Thuốc Đắng Giã Tật" ấn phẩm tập hợp nguyên bản của 24 bài phiếm luận của cây viết thầy thuốc Lương Lễ Hoàng đã được phổ biến trên Thời báo Kinh tế Sài Gòn\r\n"Thuốc Đắng Giã Tật" 24 viên gạch góp phần xây dựng bức tường khánh bệnh qua phương án mang kiến thức y học đến thật gần người bệnh.\r\n"Thuốc Đắng Giã Tật" 24 cơ hội để cả bệnh nhân lẫn thầy thuốc khi cười, lúc giận, khi vui, lúc buồn, suy nghĩ và áp dụng.\r\nSách được chia làm nhiều tập.\r\nXin trân trọng giới thiệu Tập 2 cùng bạn đọc.', '130517YH.jpg', 7, 1, 216, '11,5x18,5', '0000-00-00 00:00:00', 0, 0),
(35, 'Thuốc Đắng Giã Tật - Tập 3', 'Quyển', 32000, 'Thuốc Đắng Giã Tật" ấn phẩm tập hợp nguyên bản của 24 bài phiếm luận của cây viết thầy thuốc Lương Lễ Hoàng đã được phổ biến trên Thời báo Kinh tế Sài Gòn\r\n"Thuốc Đắng Giã Tật" 24 viên gạch góp phần xây dựng bức tường khánh bệnh qua phương án mang kiến thức y học đến thật gần người bệnh.\r\n"Thuốc Đắng Giã Tật" 24 cơ hội để cả bệnh nhân lẫn thầy thuốc khi cười, lúc giận, khi vui, lúc buồn, suy nghĩ và áp dụng.\r\nSách được chia làm nhiều tập.\r\nXin trân trọng giới thiệu Tập 3 cùng bạn đọc.', '152935YH.jpg', 7, 1, 240, '11,5x18,5', '0000-00-00 00:00:00', 0, 0),
(36, 'Thuốc Đắng Giã Tật - Tập 4', 'Quyển', 28500, '"Thuốc Đắng Giã Tật" ấn phẩm tập hợp nguyên bản của 24 bài phiếm luận của cây viết thầy thuốc Lương Lễ Hoàng đã được phổ biến trên Thời báo Kinh tế Sài Gòn\r\n"Thuốc Đắng Giã Tật" 24 viên gạch góp phần xây dựng bức tường khánh bệnh qua phương án mang kiến thức y học đến thật gần người bệnh.\r\n"Thuốc Đắng Giã Tật" 24 cơ hội để cả bệnh nhân lẫn thầy thuốc khi cười, lúc giận, khi vui, lúc buồn, suy nghĩ và áp dụng.\r\nSách được chia làm nhiều tập.\r\nXin trân trọng giới thiệu Tập 4 cùng bạn đọc.', '152913YH.jpg', 7, 1, 204, '11,5x18,5', '0000-00-00 00:00:00', 0, 0),
(37, 'Học Nhanh Flash 8 - Tủ Sách Dễ Học (Có CD-Rom Kèm Theo Sách)', 'Quyển', 56000, 'Nếu bạn đã có kiến thức cơ bản về Flash và muốn tạo một Web site trong Flash thì cuốn sách "Học Nhanh Flash 8" này sẽ là một khởi đầu thích hợp.\r\nNội dung của cuốn sách đề cập tới những điều thực sự cần thiết, dẫn dắt bạn tạo một Web site với phiên bản mới nhất của Flash.\r\nTrong CD kèm theo sách, tất cả các tập tin cần thiết cho quá trình thực hành được lưu trữ trong thư mục "Thuchanh". Ngoài ra, sách còn cung cấp phiên bản hoàn tất của site sau mỗi chương để bạn tiện theo dõi và đối chiếu.\r\nCác chủ đề của sách được trình bày như sau:\r\nChương mở đầu.\r\nChương 1: Chuẩn bị các tập tin cho site.\r\nChương 2: Thiết kế bố cục cho site.\r\nChương 3: Bổ sung và tạo kiểu cho văn bản.\r\nChương 4: Sử dụng bảng tiến trình để tổ chức site.\r\nChương 5: Bổ sung hoạt hình vào Website.\r\nChương 6: Xây dựng hệ thống di chuyển.\r\nChương 7: Bổ sung các phần bên trong của Website.\r\nChương 8: Xuất bản site của bạn.\r\nSách có kèm theo CD-Rom (đính kèm sách).', '153946TH.jpg', 3, 13, 236, '16x24', '0000-00-00 00:00:00', 0, 0),
(38, 'Học Nhanh Dreamweaver 8 - Tủ Sách Dễ Học (Có CD-Rom Kèm Theo Sách)', 'Quyển', 49000, 'Mặc dù không phải là nhà thiết kế Web chuyên nghiệp, nhưng bạn vẫn muốn tạo ra các trang Web hợp thời và hấp dẫn? Để làm được điều này, bạn nên bắt đầu với một công cụ tạo Web chuẩn - Dreamweaver sẽ là một công cụ hoàn hảo với những tính năng dễ dùng, giao diện thân thiện cùng nhiều những đặc điểm và tiện ích hỗ trợ tốt cho việc tạo trang Web.\r\nTrong cuốn sách "Học Nhanh Dreamweaver 8" này sẽ cung cấp cho các bạn cách nhanh nhất để tạo các Web site với các trang thú vị và đầy đủ tính năng. Các chương trong sách được thể hiện dưới dạng thực hành với hình minh họa chi tiết cho từng bước của quá trình tạo Web. \r\nNội dung chính của cuốn sách được trình bày như sau:\r\nChương mở đầu.\r\nChương 1: Chào mừng các bạn đến với Dreamweaver.\r\nChương 2: Tạo trang chủ cơ bản.\r\nChương 3: Bổ sung hình ảnh.\r\nChương 4: Bổ sung bảng.\r\nChương 5: Sử dụng bảng kiểu.\r\nChương 6: Tạo liên kết.\r\nChương 7: Sử dụng lại các đề mục để tiết kiệm thời gian.\r\nChương 8: Bổ sung hệ thống di chuyển.\r\nChương 9: Xuất bản site.\r\nSách có kèm theo CD-Rom (đính theo sách).\r\nXin trân trọng giới thiệu cùng các bạn.', '153754TH.jpg', 3, 13, 204, '16x24', '0000-00-00 00:00:00', 0, 0),
(39, 'Những Bài Thuốc Hay Chữa Bệnh Phụ Nữ Và Trẻ Em', 'Quyển', 38000, 'Cơ thể phụ nữ trước và sau khi sinh đẻ cũng như cơ thể trẻ em đặc biệt nhạy cảm đối với bệnh tật và với thuốc men. Điều này đã được y giới lưu tâm, dày công nghiên cứu, để lại nhiều kinh nghiệm phong phú - nhất là trong y học cổ truyền Đông phương nói chung và nước ta nói riêng.', '29313.JPG', 7, 8, 232, '14.5x20.5 cm', '0000-00-00 00:00:00', 0, 0),
(40, 'Những Bài Thuốc Hay Chữa Bệnh Phụ Nữ Và Trẻ Em', 'Quyển', 38000, 'Cơ thể phụ nữ trước và sau khi sinh đẻ cũng như cơ thể trẻ em đặc biệt nhạy cảm đối với bệnh tật và với thuốc men. Điều này đã được y giới lưu tâm, dày công nghiên cứu, để lại nhiều kinh nghiệm phong phú - nhất là trong y học cổ truyền Đông phương nói chung và nước ta nói riêng.\r\n \r\nCuốn sách nhỏ này xin cung cấp cho quý bạn những bài thuốc hay được rút ra từ nhiều người.\r\n \r\nMỗi bài thuốc trong sách này đều có ghi chủ trị bệnh chứng gì. Quý bạn theo đó mà chọn toa cho mình. Bạn đem toa đến các hiệu thuốc để nhờ cân đúng phân luợng. Một số vị thuốc Nam có thể theo tên gọi mà tìm hái ở ngay trong vườn nhà mình hoặc trong làng xóm. Với bệnh phụ nữ, trong nhà nên dự trữ vài ba vị thường dùng đén như: gừng sống, củ cỏ cú (Sách có câu: “Nam bất ngoại trần bì, nữ bất ly huơng phụ” – hương phụ tức là củ cỏ cú).\r\n \r\nTuyển lựa những bài thuốc trị bệnh cho phụ nữ và trẻ em, cuốn sách giúp bạn tự tham khảo để khắc phục được những khó khăn về bệnh tật, bảo vệ sức khoẻ, bảo vệ hạnh phúc gia đình mà không phải mất quá nhiều thì giờ và tiền bạc. Tất cả các bài thuốc trong sách này đều dùng Đông – Nam dược dễ dàng mua ở các hiệu thuốc Bắc, thuốc y học dân tộc cổ truyền, hoặc trồng sẵn trong vườn nhà. Cuốn sách sẽ có phụ lục chú thích rõ đặc điểm của từng vị thuốc để giúp quý bạn chọn đúng, tránh lầm lẫn.', '29313.JPG', 7, 8, 232, '14.5x20.5 cm', '0000-00-00 00:00:00', 0, 0),
(41, 'Những Bài Thuốc Hay Chữa Bệnh Phụ Nữ Và Trẻ Em', 'Quyển', 38000, 'Cơ thể phụ nữ trước và sau khi sinh đẻ cũng như cơ thể trẻ em đặc biệt nhạy cảm đối với bệnh tật và với thuốc men. Điều này đã được y giới lưu tâm, dày công nghiên cứu, để lại nhiều kinh nghiệm phong phú - nhất là trong y học cổ truyền Đông phương nói chung và nước ta nói riêng.\r\n \r\nCuốn sách nhỏ này xin cung cấp cho quý bạn những bài thuốc hay được rút ra từ nhiều người.\r\n \r\nMỗi bài thuốc trong sách này đều có ghi chủ trị bệnh chứng gì. Quý bạn theo đó mà chọn toa cho mình. Bạn đem toa đến các hiệu thuốc để nhờ cân đúng phân luợng. Một số vị thuốc Nam có thể theo tên gọi mà tìm hái ở ngay trong vườn nhà mình hoặc trong làng xóm. Với bệnh phụ nữ, trong nhà nên dự trữ vài ba vị thường dùng đén như: gừng sống, củ cỏ cú (Sách có câu: “Nam bất ngoại trần bì, nữ bất ly huơng phụ” – hương phụ tức là củ cỏ cú).\r\n \r\nTuyển lựa những bài thuốc trị bệnh cho phụ nữ và trẻ em, cuốn sách giúp bạn tự tham khảo để khắc phục được những khó khăn về bệnh tật, bảo vệ sức khoẻ, bảo vệ hạnh phúc gia đình mà không phải mất quá nhiều thì giờ và tiền bạc. Tất cả các bài thuốc trong sách này đều dùng Đông – Nam dược dễ dàng mua ở các hiệu thuốc Bắc, thuốc y học dân tộc cổ truyền, hoặc trồng sẵn trong vườn nhà. Cuốn sách sẽ có phụ lục chú thích rõ đặc điểm của từng vị thuốc để giúp quý bạn chọn đúng, tránh lầm lẫn.', '29313.JPG', 7, 8, 232, '14.5x20.5 cm', '0000-00-00 00:00:00', 0, 0),
(42, 'Những Bài Thuốc Hay Chữa Bệnh Phụ Nữ Và Trẻ Em', 'Quyển', 38000, 'Cơ thể phụ nữ trước và sau khi sinh đẻ cũng như cơ thể trẻ em đặc biệt nhạy cảm đối với bệnh tật và với thuốc men. Điều này đã được y giới lưu tâm, dày công nghiên cứu, để lại nhiều kinh nghiệm phong phú - nhất là trong y học cổ truyền Đông phương nói chung và nước ta nói riêng.\r\n \r\nCuốn sách nhỏ này xin cung cấp cho quý bạn những bài thuốc hay được rút ra từ nhiều người.\r\n \r\nMỗi bài thuốc trong sách này đều có ghi chủ trị bệnh chứng gì. Quý bạn theo đó mà chọn toa cho mình. Bạn đem toa đến các hiệu thuốc để nhờ cân đúng phân luợng. Một số vị thuốc Nam có thể theo tên gọi mà tìm hái ở ngay trong vườn nhà mình hoặc trong làng xóm. Với bệnh phụ nữ, trong nhà nên dự trữ vài ba vị thường dùng đén như: gừng sống, củ cỏ cú (Sách có câu: “Nam bất ngoại trần bì, nữ bất ly huơng phụ” – hương phụ tức là củ cỏ cú).\r\n \r\nTuyển lựa những bài thuốc trị bệnh cho phụ nữ và trẻ em, cuốn sách giúp bạn tự tham khảo để khắc phục được những khó khăn về bệnh tật, bảo vệ sức khoẻ, bảo vệ hạnh phúc gia đình mà không phải mất quá nhiều thì giờ và tiền bạc. Tất cả các bài thuốc trong sách này đều dùng Đông – Nam dược dễ dàng mua ở các hiệu thuốc Bắc, thuốc y học dân tộc cổ truyền, hoặc trồng sẵn trong vườn nhà. Cuốn sách sẽ có phụ lục chú thích rõ đặc điểm của từng vị thuốc để giúp quý bạn chọn đúng, tránh lầm lẫn.', '29313.JPG', 7, 8, 232, '14.5x20.5 cm', '0000-00-00 00:00:00', 0, 0),
(43, 'Cách bảo vệ dữ liệu quan trọng', 'Quyển', 66000, '<div class="boxMid">\r\n<div class="boxMidRt">\r\n<div class="p4">\r\n<div id="ctl00_contentMasterPage_ProductInfo1_pnlSpecification">\r\n<p align="justify"><font size="2">Trong thời đại C&ocirc;ng nghệ Th&ocirc;ng tin, dữ liệu kh&ocirc;ng c&ograve;n l&agrave; những th&ocirc;ng tin được lưu trữ trong những t&agrave;i liệu giấy m&agrave; ch&uacute;ng đ&atilde; được số h&oacute;a, lưu trữ v&agrave; quản trị bằng m&aacute;y t&iacute;nh. Giải ph&aacute;p quản l&yacute; dữ liệu bằng m&aacute;y t&iacute;nh gi&uacute;p tiết kiệm thời gian v&agrave; chi ph&iacute; quản l&yacute;, việc truy xuất th&ocirc;ng tin nhanh hơn, đ&aacute;p ứng được nhu cầu &quot;lưu ở một nơi v&agrave; lấy ở mọi nơi&quot;. Tuy nhi&ecirc;n, quản l&yacute; dữ liệu bằng giải ph&aacute;p C&ocirc;ng nghệ Th&ocirc;ng tin cũng đặt ra một số vấn đề như: Dữ liệu mật bị mất, th&ocirc;ng tin bị r&ograve; rỉ,... Vậy l&agrave;m thế n&agrave;o để đ&aacute;p ứng được giải ph&aacute;p lưu trữ m&agrave; vẫn đảm bảo được c&aacute;c y&ecirc;u cầu bảo mật tối ưu?<br />\r\n<br />\r\nBộ s&aacute;ch &quot;Từng bước kh&aacute;m ph&aacute; an ninh mạng&quot; với tập 6 mang t&ecirc;n &quot;C&aacute;ch bảo vệ dữ liệu quan trọng v&agrave; phương ph&aacute;p ph&aacute;t hiện th&acirc;m nhập&quot; được bi&ecirc;n soạn nhằm giải quyết vấn đề tr&ecirc;n. Tập n&agrave;y, ngo&agrave;i việc, giới thiệu một số giải ph&aacute;p bảo vệ dữ liệu quan trọng, hướng dẫn sử dụng một số chương tr&igrave;nh gi&uacute;p m&atilde; h&oacute;a th&ocirc;ng tin an to&agrave;n, ch&uacute;ng t&ocirc;i c&ograve;n giới thiệu giải ph&aacute;p bảo vệ hệ thống bằng c&aacute;ch c&agrave;i đặt, cấu h&igrave;nh v&agrave; sử dụng phần mềm bảo vệ v&agrave; ph&aacute;t hiện th&acirc;m nhập cho hệ thống. Sau c&ugrave;ng, ở phần cuối gi&aacute;o tr&igrave;nh ch&uacute;ng t&ocirc;i sẽ giới thiệu c&aacute;ch t&igrave;m hiểu về lỗi tr&agrave;n bộ đệm, từ những hiểu biết s&acirc;u sắc về lỗi n&agrave;y sẽ gi&uacute;p bạn loại bỏ đi những lỗi tiềm t&agrave;ng trong hệ thống.<br />', 'cachbaovedulieu.gif ', 3, 13, 278, '0', '2011-08-10 23:26:31', NULL, NULL),
(44, 'Mắc kẹt ở thiên đường ', 'Quyển', 53000, '<div class="boxMid">\r\n<div class="boxMidRt">\r\n<div class="p4">\r\n<div id="ctl00_contentMasterPage_ProductInfo1_pnlSpecification">\r\n<div align="justify"><font size="2">Những c&acirc;u chuyện trong cuốn s&aacute;ch n&agrave;y đều được viết trong năm 2010 - một năm đ&aacute;nh dấu những trải nghiệm ho&agrave;n to&agrave;n mới của t&ocirc;i. Với những bạn đọc đ&atilde; quen v&agrave; y&ecirc;u những c&acirc;u chuyện của Ho&agrave;ng Anh T&uacute; mới mẻ, kh&aacute;c lạ v&agrave; trưởng th&agrave;nh hơn. T&ocirc;i tin c&aacute;c bạn hẳn sẽ đồng &yacute; với t&ocirc;i khi đọc những truyện ngắn trong cuốn s&aacute;ch n&agrave;y. Xin được cảm ơn sự đ&ograve;i hỏi ng&agrave;y một khắt khe hơn của bạn đọc để mỗi t&aacute;c giả lại &yacute; thức hơn với từng c&acirc;u chuyện m&igrave;nh viết ra.<br />\r\n<br />\r\n<strong>Mục lục:</strong><br />\r\n<br />\r\nHo&agrave;ng tử b&eacute;<br />\r\n<br />\r\nTối thứ bảy đi lạc với một nụ h&ocirc;n sai<br />\r\n<br />\r\nMắc kẹt ở Thi&ecirc;n đường<br />\r\n<br />\r\nB&agrave; mẹ tuổi teen v&agrave; &ocirc;ng bố trẻ con<br />\r\n<br />\r\nChuyến xe cuối ng&agrave;y v&agrave; c&ocirc; g&aacute;i kỳ lạ<br />\r\n<br />\r\nCuộc hẹn m&agrave;u cam<br />\r\n<br />\r\nNhập vai ho&agrave;n hảo<br />\r\n<br />\r\nLạc mất v&agrave; t&igrave;m thấy<br />\r\n<br />\r\nTh&agrave;nh phố hồi phục chức năng<br />\r\n<br />\r\nNhững c&aacute;i đầu lạc<br />\r\n<br />\r\nV&agrave; em mơ thấy<br />\r\n<br />\r\nY&ecirc;u th&ecirc;m lần nữa<br />\r\n<br />\r\nMột buổi chiều kh&ocirc;ng biết giấu v&agrave;o đ&acirc;u<br />\r\n<br />\r\nMất ngủ<br />\r\n<br />\r\nDreamer<br />\r\n<br />\r\nRồi nắng cũng tắt sau chiều<br />\r\n<br />\r\nTr&ograve; chơi nguy hiểm<br />\r\n<br />\r\n<strong>Mời bạn đ&oacute;n đọc.</strong></font></div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>', 'macket-nho1.jpg', 1, 4, 268, '14.5x20.5 cm', '1980-01-03 20:57:37', NULL, NULL),
(45, 'Sen Trong Đầm Lầy', 'Quyển', 36000, '<div class="boxMid">\r\n<div class="boxMidRt">\r\n<div class="p4">\r\n<div id="ctl00_contentMasterPage_ProductInfo1_pnlSpecification">\r\n<p align="justify"><font size="2"><strong>Giới thiệu về nội dung: Sen Trong Đầm Lầy - T&ocirc;i L&agrave; Con G&aacute;i Nu&ocirc;i Của Một Majie<br />\r\n</strong><br />\r\nCuốn s&aacute;ch kh&ocirc;ng chỉ l&agrave; một cuốn hồi k&yacute; của con g&aacute;i nu&ocirc;i của một majie m&agrave; c&ograve;n l&agrave; một cuốn phim t&agrave;i liệu sống động về x&atilde; hội Singapore thời kỳ bị thực d&acirc;n Anh đ&ocirc; hộ. Đ&oacute; l&agrave; cả một thế giới sang trọng gi&agrave;u c&oacute; với những tiệc t&ugrave;ng của những người ở tầng lớp thượng lưu, cũng như hội h&egrave;, v&agrave; cả những th&acirc;n phận majie l&agrave;m việc trong c&aacute;c khu nghỉ dưỡng c&ugrave;ng những g&aacute;i điếm hạng sang.<br />\r\n<br />\r\nMajie l&agrave; thuật ngữ chỉ những n&ocirc; bộc người Quảng Đ&ocirc;ng nguyện suốt đời sống độc th&acirc;n. Họ thường để t&oacute;c đu&ocirc;i sam hoặc chải th&agrave;nh b&uacute;i ph&iacute;a sau.<br />\r\n<br />\r\nT&aacute;c giả Tư Tĩnh đ&atilde; phải trải qua một tuổi thơđầy khắc nghiệt. V&igrave; nh&agrave; ngh&egrave;o, b&agrave; phải bỏ học sớm, nhưng niềm đam m&ecirc; học tập đ&atilde; lu&ocirc;n th&uacute;c đẩy b&agrave; đọc s&aacute;ch. Nhờ vậy m&agrave; b&agrave; đ&atilde; t&igrave;m được người thầy của m&igrave;nh. &Ocirc;ng đ&atilde; lu&ocirc;n động vi&ecirc;n khuyến kh&iacute;ch c&ocirc; g&aacute;i nhỏ ngh&egrave;o kh&oacute; v&agrave; hiếu học.<br />\r\n<br />\r\nCuộc sống thật khắc nghiệt v&agrave; đầy những cạm bẫy nhưng với sự nhẫn nại v&ocirc; bờ v&agrave; tấm l&ograve;ng thương y&ecirc;u của b&egrave; bạn v&agrave; cả những người xa lạ, Tư Tĩnh đ&atilde; đối mặt với kh&oacute; khăn v&agrave; vượt qua những thử th&aacute;ch cam go nhất để vươn l&ecirc;n học tập, t&igrave;m kiếm kiến thức, nghề nghiệp v&agrave; cả t&igrave;nh y&ecirc;u ch&acirc;n th&agrave;nh cho m&igrave;nh.<br />\r\n<br />\r\nT&aacute;c giảđ&atilde', 'sen2.jpg ', 1, 4, 286, '14.5x20.5 cm', '1980-01-03 21:07:48', NULL, NULL),
(46, '7788 em yêu anh ', 'Quyển', 115000, '<div class="boxMid">\r\n<div class="boxMidRt">\r\n<div class="p4">\r\n<div id="ctl00_contentMasterPage_ProductInfo1_pnlSpecification">\r\n<div align="justify"><font size="2"><strong>T&oacute;m tắt nội dung:</strong><br />\r\n<br />\r\nLớn l&ecirc;n trong một gia tộc coi trọng c&aacute;c gi&aacute; trị truyền thống, t&oacute;c tết sam gọn g&agrave;ng, v&aacute;y d&agrave;i qua đầu gối, c&ocirc; ấy l&uacute;c n&agrave;o cũng thế&hellip;<br />\r\n<br />\r\nVốn kh&ocirc;ng tin v&agrave;o t&igrave;nh y&ecirc;u với người ngoại quốc, nhưng t&igrave;nh cảnh của c&ocirc; th&igrave; phải gọi l&agrave; &ldquo;gh&eacute;t của n&agrave;o trời trao của ấy&rdquo;&hellip;<br />\r\n<br />\r\nSinh ra v&agrave; trưởng th&agrave;nh tại Đức, anh l&agrave; ch&uacute; của học tr&ograve;, mới trở về Trung Quốc được &iacute;t l&acirc;u.<br />\r\n<br />\r\nLần đầu gặp nhau l&agrave; va chạm xe cộ. Tr&ocirc;ng ấn tượng của c&ocirc;, anh l&agrave; kẻ ki&ecirc;u ngạo, kh&oacute; t&iacute;nh, lạnh l&ugrave;ng. Với anh, c&ocirc; l&agrave; c&ocirc; g&aacute;i trẻ qu&ecirc; m&ugrave;a, kh&ocirc;ng hiểu biết v&agrave; v&ocirc; tr&aacute;ch nhiệm. Ai ngờ học tr&ograve; nhỏ l&agrave;m chất x&uacute;c t&aacute;c, khiến hai người ng&agrave;y một gần nhau. T&igrave;nh y&ecirc;u vừa mới chớm đ&atilde; vấp phải sự phản đối của gia tộc, từ t&igrave;m c&aacute;ch giam ch&acirc;n đến l&agrave;m mối, thật chẳng c&ograve;n thiếu c&aacute;ch g&igrave;! C&ograve;n anh, vẫn ki&ecirc;n tr&igrave; thuyết phục<br />\r\n<br />\r\nNhưng rồi họ bảo anh kết h&ocirc;n, anh lại do dự&hellip; Lần đầu ti&ecirc;n c&ocirc; nghĩ l&agrave; anh kh&ocirc;ng y&ecirc;u m&igrave;nh&hellip;<br />\r\n<br />\r\nAnh đ&ograve;i sống thử, lần thứ hai c&ocirc; nghĩ chỉ c&oacute; m&igrave;nh c&ocirc; hết l&ograve;ng&hellip;<br />\r\n<br />\r\nKhi tr&aacute;i tim c&ocirc; bắt đầu cảm thấy rạn nứt v&agrave; b&ecirc;n cạnh c&ocirc; c&ograve;n c&oacute; hai ch&agrave;ng trai đ&ecirc;m ng&agrave;y theo đuổi:<br />\r\n<br />\r\nMột ch&agrave;ng ngoại quốc m&ugrave; qu&aacute;ng, m&ecirc', '7788aye3.jpg ', 1, 4, 608, '14.5x20.5 cm', '1980-01-03 21:14:09', NULL, NULL),
(47, 'Hẹn đẹp như mơ', 'Quyển', 86000, '<div class="boxMid">\r\n<div class="boxMidRt">\r\n<div class="p4">\r\n<div id="ctl00_contentMasterPage_ProductInfo1_pnlSpecification">\r\n<div align="justify"><font size="2"><strong>Giới thiệu về nội dung:<br />\r\n</strong><br />\r\nMột c&acirc;u chuyện dịu d&agrave;ng v&agrave; đầy x&uacute;c cảm.<br />\r\n<br />\r\nT&igrave;nh y&ecirc;u đẹp của tuổi thanh xu&acirc;n mơn mởn, những thời khắc ấm &aacute;p, tuyệt đẹp của mối t&igrave;nh Mạnh H&ograve;a B&igrave;nh v&agrave; Vưu Giai Kỳ m&atilde;i m&atilde;i sẽ chỉ l&agrave; một giấc mơ, một giấc mơ đẹp đến mức kh&ocirc;ng ch&acirc;n thực. Mối t&igrave;nh ấy kh&eacute;p lại, rồi Nguyễn Ch&iacute;nh Đ&ocirc;ng bước v&agrave;o cuộc đời của Giai Kỳ một c&aacute;ch lạ l&ugrave;ng.<br />\r\n<br />\r\nGiằng x&eacute; giữa qu&aacute; khứ v&agrave; thực tại, giữa t&igrave;nh y&ecirc;u v&agrave; sự cao thượng, giữa hận th&ugrave; v&agrave; tin y&ecirc;u, Giai Kỳ đ&atilde; chọn lựa điều g&igrave; để c&oacute; thể đem lại hạnh ph&uacute;c cho m&igrave;nh v&agrave; những người m&igrave;nh y&ecirc;u?<br />\r\n<br />\r\nC&oacute; nhiều khi, ch&uacute;ng ta cứ ngỡ rằng c&aacute;i m&igrave;nh từ bỏ chỉ l&agrave; t&igrave;nh cảm trong một thời điểm, nhưng đến ph&uacute;t cuối mới biết rằng, h&oacute;a ra n&oacute; l&agrave; cả cuộc đời.<br />\r\n&quot;T&igrave;nh mềm tựa nước, Hẹn đẹp như mơ&quot;... Một &aacute;ng văn dịu d&agrave;ng v&ocirc; tận của Phỉ Ng&atilde; Tư Tồn m&agrave; bạn kh&ocirc;ng thể bỏ qua.<br />\r\n<br />\r\n<strong>Mời bạn đ&oacute;n đọc</strong></font></div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>', 'hendepnhumo3.jpg ', 1, 4, 248, '14.5x20.5 cm', '1980-01-03 21:19:33', NULL, NULL),
(48, 'Những truyện cổ tích hay nhất về lòng dũng cảm', 'Quyển', 25000, '<div class="boxMid">\r\n<div class="boxMidRt">\r\n<div class="p4">\r\n<div id="ctl00_contentMasterPage_ProductInfo1_pnlSpecification">\r\n<div align="justify"><font size="2"><strong>Giới thiệu về nội dung:</strong><br />\r\n<br />\r\n&ldquo;Ng&agrave;y xưa c&oacute; hai anh em, anh th&igrave; gi&agrave;u m&agrave; em th&igrave; ngh&egrave;o. Người anh gi&agrave;u c&oacute; l&agrave;m nghề thợ v&agrave;ng, t&iacute;nh vốn &aacute;c nghiệt. Người em tết chổi b&aacute;n kiếm ăn, t&iacute;nh t&igrave;nh hiền hậu ngay thật.<br />\r\n<br />\r\nNgười em c&oacute; hai con, đẻ sinh đ&ocirc;i giống nhau như hai giọt nước. Hai đứa b&eacute; thỉnh thoảng vẫn tới nh&agrave; b&aacute;c h&ograve;ng để kiếm ch&uacute;t thức ăn thừa.<br />\r\n<br />\r\nMột bữa kia, người em v&agrave;o rừng đốn củi bỗng thấy con chim m&igrave;nh to&agrave;n v&agrave;ng, xưa nay anh chưa từng thấy. Anh nhặt một vi&ecirc;n sỏi n&eacute;m, nhưng chỉ rụng c&oacute; một chiếc l&ocirc;ng v&agrave;ng c&ograve;n con chim bay mất. Anh nhặt c&aacute;i l&ocirc;ng mang về cho người anh. G&atilde; nh&igrave;n rồi bảo:<br />\r\n<br />\r\n- V&agrave;ng thật đấy - rồi g&atilde; trả tiền cho em<br />\r\n<br />\r\nBữa sau, người em tr&egrave;o l&ecirc;n một c&acirc;y bạch dương định chặt lấy mấy c&agrave;nh, t&igrave;nh cờ lại thấy con chim h&ocirc;m trước, anh t&igrave;m một l&aacute;t thấy tổ chim, trong c&oacute; quả trứng v&agrave;ng. Anh nhặt trứng đem về cho người anh, g&atilde; lại bảo: &ldquo;V&agrave;ng thật đấy&rdquo; v&agrave; trả tiền cho em. Sau rốt, g&atilde; thợ v&agrave;ng bảo:<br />\r\n<br />\r\n- Ta muốn c&oacute; cả con chim kia<br />\r\n<br />\r\nNgười em v&agrave;o rừng lần thứ ba lại thấy con chim đang đậu tr&ecirc;n c&acirc;y. Anh nhặt đ&aacute; n&eacute;m n&oacute; rơi xuống, đoạn x&aacute;ch về cho người anh, được gạ trả cho một nắm v&agrave;ng. Anh ch&agrave;ng nghĩ bụng: &ldquo;Giờ th&igrave; ta c&oacute; thể sống đ&agrave;ng ho&agrave;ng rồi đấy&rdquo;. Anh h&agrave;i l&ograve;ng lắm, ra về.<br />\r\n<br />\r\nG&atilde; thợ v&agr', 'nhungchuyencotichhayvelongdungcam2.jpg ', 1, 4, 152, '14.5x20.5 cm', '1980-01-03 21:23:31', NULL, NULL),
(49, 'Tình yêu pha lê', 'Quyển', 99000, '<div class="boxMid">\r\n<div class="boxMidRt">\r\n<div class="p4">\r\n<div id="ctl00_contentMasterPage_ProductInfo1_pnlSpecification">\r\n<div align="justify"><font size="2">Bố mất sớm, mẹ đi bước nữa, L&acirc;m Nguyệt Loan sống một m&igrave;nh. D&ugrave; một năm chỉ được mẹ thăm nom đ&ocirc;i ba lần nhưng c&ocirc; chẳng hề o&aacute;n tr&aacute;ch, vẫn sống thật ki&ecirc;n cường v&agrave; mạnh mẽ. Tại trường cấp III Thần Quang, c&ocirc; đ&atilde; gặp Minh Nhật L&atilde;ng, Ti&ecirc;u Tinh D&atilde; v&agrave; Nguy&ecirc;n Thần Dạ. Ti&ecirc;u Tinh D&atilde; l&agrave; ng&ocirc;i sao thể thao của trường, một ch&agrave;ng trai thẳng thắn, đầy sức sống nhưng thiếu t&igrave;nh thương của mẹ từ thơ b&eacute;. C&ograve;n Nguy&ecirc;n Thần Dạ lại khiến người kh&aacute;c bị thu h&uacute;t bởi t&agrave;i năng, sự l&atilde;ng tử, ngang t&agrave;ng v&agrave; nổi loạn nhưng c&oacute; ai biết rằng, sự nổi loạn ấy l&agrave; do cậu l&agrave; đứa trẻ bị l&atilde;ng qu&ecirc;n, lớn l&ecirc;n như c&agrave;nh non kh&ocirc;ng được uốn nắn. Cả hai ch&agrave;ng trai đều thầm mến L&acirc;m Nguyệt Loan, nhưng tr&aacute;i tim dịu d&agrave;ng của c&ocirc; g&aacute;i nhỏ lại hướng về Minh Nhật L&atilde;ng.<br />\r\n<br />\r\nTrong bốn người Minh Nhật L&atilde;ng tưởng như may mắn hơn cả, khi c&oacute; cả cha cả mẹ thương y&ecirc;u. Vậy m&agrave;, ch&agrave;ng c&ocirc;ng tử nh&agrave; gi&agrave;u, đẹp trai, được bao c&ocirc; g&aacute;i mến mộ ấy lại lu&ocirc;n mặc cảm, u buồn v&igrave; mắc căn bệnh gi&ograve;n xương qu&aacute;i &aacute;c. Một lần t&igrave;nh cờ nh&igrave;n thấy L&acirc;m Nguyệt Loan băng b&oacute; cho c&acirc;y h&ograve;e non bị gẫy, tr&aacute;i tim Minh Nhật L&atilde;ng đ&atilde; lần đầu rung động nỗi thương y&ecirc;u. Sự ch&acirc;n th&agrave;nh, ấm &aacute;p của L&acirc;m Nguyệt Loan đ&atilde; khiến Minh Nhật L&atilde;ng tho&aacute;t khỏi vỏ k&eacute;n trầm mặc, thực sự sống những th&aacute;ng ng&agrave;y tươi đẹp của tuổi hoa ni&ecirc;n. Thế nhưng, bất hạnh lại ập xuống khi cha của Minh N', 'TYPhaLe3.jpg', 1, 4, 518, '14.5x20.5 cm', '1980-01-03 21:27:14', NULL, NULL);
INSERT INTO `sach` (`Ms`, `Ten_sach`, `Don_vi_tinh`, `Don_gia`, `Mo_ta`, `Hinh_minh_hoa`, `MCD`, `MNXB`, `So_trang`, `Kich_thuoc`, `Ngay_cap_nhat`, `So_luong_ban`, `So_lan_xem`) VALUES
(50, 'Truyện Trạng Lợn và Truyện Xiển Bột', 'Quyển', 22000, '<div class="boxMid">\r\n<div class="boxMidRt">\r\n<div class="p4">\r\n<div id="ctl00_contentMasterPage_ProductInfo1_pnlSpecification">\r\n<div align="justify"><font size="2">Trạng Quỳnh, Trạng Lợn, Xiển Bột, Ba Giai &ndash; T&uacute; Xuất, Thủ Thiệm, Ba Phi l&agrave; những nh&acirc;n vật ch&iacute;nh trong hệ thống truyện cười d&acirc;n gian đặc sắc của Việt Nam.<br />\r\n<br />\r\nNhững nh&acirc;n vật s&aacute;ng tạo ra tiếng cười l&agrave; đại diện cho kh&aacute;t vọng tư tưởng của nh&acirc;n d&acirc;n. Vua ch&uacute;a, quan lại, sau tiếng cười hả h&ecirc; ở cuối truyện, hiện l&ecirc;n l&agrave; những kẻ mất nh&acirc;n c&aacute;ch, dốt n&aacute;t, xảo quyệt, gian tham, t&agrave;n &aacute;c, v&agrave;o luồn ra c&uacute;i. Những th&oacute;i hư tật xấu của của con người cũng được mang ra chế giễu, cười cợt. B&ecirc;n cạnh tiếng cười đả k&iacute;ch c&ograve;n c&oacute; tiếng cười d&iacute; dỏm nhẹ nh&agrave;ng khi tự tr&agrave;o, khi đ&ugrave;a cợt, chế giễu bạn b&egrave;, người th&acirc;n.<br />\r\n<br />\r\nHệ thống truyện Trạng Quỳnh, Trạng Lợn, Xiển Bột, Ba Giai &ndash; T&uacute; Xuất, Thủ Thiệm, Ba Phi l&agrave; một bức tranh ch&acirc;m biếm đả k&iacute;ch sắc sảo, ch&acirc;n thực x&atilde; hội phong kiến. Những nh&acirc;n vật n&agrave;y đ&atilde; thay mặt nh&acirc;n d&acirc;n lao động l&agrave;m một cuộc &quot;khởi nghĩa&quot; bằng tiếng cười để từ gi&atilde; chế độ phong kiến suy t&agrave;n một c&aacute;ch h&agrave;i hước nhất.</font></div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>', 'Tranglon2.jpg ', 1, 4, 160, '14.5x20.5 cm', '2011-05-06 20:23:15', NULL, NULL),
(51, 'Truyện Trạng Quỳnh', 'Quyển', 15000, '<p><font size="2">Trạng Quỳnh, Trạng Lợn, Xiển Bột, Ba Giai &ndash; T&uacute; Xuất, Thủ Thiệm, Ba Phi l&agrave; những nh&acirc;n vật ch&iacute;nh trong hệ thống truyện cười d&acirc;n gian đặc sắc của Việt Nam.<br />\r\nNhững nh&acirc;n vật s&aacute;ng tạo ra tiếng cười l&agrave; đại diện cho kh&aacute;t vọng tư tưởng của nh&acirc;n d&acirc;n. Vua ch&uacute;a, quan lại, sau tiếng cười hả h&ecirc; ở cuối truyện, hiện l&ecirc;n l&agrave; những kẻ mất nh&acirc;n c&aacute;ch, dốt n&aacute;t, xảo quyệt, gian tham, t&agrave;n &aacute;c, v&agrave;o luồn ra c&uacute;i. Những th&oacute;i hư tật xấu của của con người cũng được mang ra chế giễu, cười cợt. B&ecirc;n cạnh tiếng cười đả k&iacute;ch c&ograve;n c&oacute; tiếng cười d&iacute; dỏm nhẹ nh&agrave;ng khi tự tr&agrave;o, khi đ&ugrave;a cợt, chế giễu bạn b&egrave;, người th&acirc;n.<br />\r\n<br />\r\nHệ thống truyện Trạng Quỳnh, Trạng Lợn, Xiển Bột, Ba Giai &ndash; T&uacute; Xuất, Thủ Thiệm, Ba Phi l&agrave; một bức tranh ch&acirc;m biếm đả k&iacute;ch sắc sảo, ch&acirc;n thực x&atilde; hội phong kiến. Những nh&acirc;n vật n&agrave;y đ&atilde; thay mặt nh&acirc;n d&acirc;n lao động l&agrave;m một cuộc &quot;khởi nghĩa&quot; bằng tiếng cười để từ gi&atilde; chế độ phong kiến suy t&agrave;n một c&aacute;ch h&agrave;i hước nhất.</font><br />\r\n&nbsp;</p>', 'truyentrangQuynh1.Jpg ', 3, 4, 104, '14.5x20.5 cm', '2011-08-09 21:35:04', NULL, NULL),
(52, 'Trong nước giá lạnh', 'Quyển', 30000, '<div class="boxMid">\r\n<div class="boxMidRt">\r\n<div class="p4">\r\n<div id="ctl00_contentMasterPage_ProductInfo1_pnlSpecification">\r\n<div align="justify"><font size="2"><strong>Tr&iacute;ch đoạn</strong>:<br />\r\n<br />\r\n&ldquo;Ng&agrave;y h&ocirc;m qua.<br />\r\n<br />\r\nMột ng&agrave;y trời mưa l&acirc;m th&acirc;m. Chưa phải l&agrave; th&aacute;ng mưa than xứ Huế. Nhưng mưa cứ nhả hạt l&acirc;y ph&acirc;y, nhớp nh&aacute;p. Cơn sốt đ&agrave;n &ocirc;ng trong Tăng kh&ocirc;ng c&oacute; nắng l&agrave;m ti&ecirc;u tan, bị đ&ocirc;ng cứng lại, chồi l&ecirc;n th&uacute;c v&agrave;o ruột gan.<br />\r\n<br />\r\nT&ocirc;i nằm phơi dưới cơn mưa, đồng lo&atilde; với đất trời tr&ecirc;u ngươi bản lĩnh chuy&ecirc;n ch&iacute;nh của Tăng. T&ocirc;i nằm đ&oacute;n từng hạt mưa phả tr&ecirc;n cơ thể, cầu mong mưa l&agrave;m tan đi thứ hương thơm bốc ng&ugrave;n ngụt trong cơ thể mỏng manh của m&igrave;nh.<br />\r\n<br />\r\nTăng v&eacute;n r&agrave;o chui v&agrave;o vườn. Khẩu s&uacute;ng d&agrave;i kho&aacute;c tr&ecirc;n vai trở n&ecirc;n vướng v&iacute;u lạc l&otilde;ng.<br />\r\n<br />\r\nT&ocirc;i kh&ocirc;ng biết anh v&agrave;o vườn. Đ&aacute;m chuồn chuồn bươm bướm v&agrave; những con s&acirc;u khế kh&ocirc;ng đ&aacute;nh động cho t&ocirc;i biết, bởi trời mưa l&agrave;m mu&ocirc;n vật mệt mỏi, sợ h&atilde;i. Ch&uacute;ng biến đi đ&acirc;u hết cả. T&ocirc;i mơ m&agrave;ng ngủ. T&ocirc;i ngủ tr&ecirc;n cỏ, trần truồng, th&iacute;ch th&uacute;. Mưa nhẹ đủ l&agrave;m ướt khoảnh đất mọc đầy cỏ mần trầu v&agrave; l&aacute; gai nơi t&ocirc;i nằm. T&ocirc;i kh&ocirc;ng cảm thấy r&aacute;t v&agrave; ngứa v&igrave; cỏ. Mưa đ&atilde; l&agrave;m mềm những ngọn cỏ, l&agrave;m mềm mặt đất. Những giọt nước trời đem c&aacute;i ẩm ướt quyến rũ m&ecirc; hoặc sự yếu đuối. C&aacute;i ẩm ướt đồng lo&atilde; với sự trần tục. Cười nhạo sự th&aacute;nh thiện. Mơn trớn v&agrave; giục gi&atilde;. Chỉ c&oacute; l&uacute;c n&agrave;y th&ocirc;i. L&uacute;c n&agrave;y, thời khắc n&agrave;y đừng để tan biến v&agrave;o', 'TrongnuocLanhGia3.jpg ', 1, 4, 236, '14.5x20.5 cm', '2011-08-10 22:53:58', NULL, NULL),
(53, 'Thơ ngụ ngôn Lafontaine', 'Quyển', 18000, '<div class="boxMid">\r\n<div class="boxMidRt">\r\n<div class="p4">\r\n<div id="ctl00_contentMasterPage_ProductInfo1_pnlSpecification">\r\n<div align="justify"><font size="2"><strong>Giới thiệu về nội dung</strong>:<br />\r\n<strong><br />\r\nJean De Lafontaine (1612-1695)</strong> l&agrave; nh&agrave; thơ ngụ ng&ocirc;n cổ điển nổi tiếng của Ph&aacute;p ,v&agrave;o nhạc viện h&agrave;n l&acirc;m ph&aacute;p từ năm 1984 &Ocirc;ng s&aacute;ng t&aacute;c nhiều thể loại nhưng thơ ngụ ng&ocirc;n đ&atilde; đưa &ocirc;ng l&ecirc;n vị tr&iacute; của nh&agrave; thơ cổ điển h&agrave;ng đầu của ph&aacute;p thế kỷ XVII.<br />\r\n<br />\r\nThơ ngụ ng&ocirc;n Lafontaine khai th&aacute;c đề t&agrave;i từ những truyện nhụ ng&ocirc;n nổi tiếng của nh&agrave; văn cổ hi lạp ấn độ.. v&agrave; thường mượn truyện của lo&agrave;i vật để n&oacute;i chuyện với con người ,thơ &ocirc;ng thể hiện sự lạc quan y&ecirc;u đời, y&ecirc;u thi&ecirc;n nhi&ecirc;n ,y&ecirc;u thương con người lương thiện bị đ&egrave; n&eacute;n ,bị &aacute;p bức do yếu h&egrave;n c&ocirc; thế v&agrave; l&ecirc;n &aacute;n th&oacute;i đạo đức giả .thơ ngụ ngộ lafontaine được dịch phổ biến qua nhiều thế hệ ,v&agrave; nhiều nước tr&ecirc;n thế giới.</font></div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>', 'la1.jpg ', 1, 4, 106, '14.5x20.5 cm', '2011-08-10 22:56:11', NULL, NULL),
(54, 'Thơ ngụ ngôn Lafontaine', 'Quyển', 18000, '<div class="boxMid">\r\n<div class="boxMidRt">\r\n<div class="p4">\r\n<div id="ctl00_contentMasterPage_ProductInfo1_pnlSpecification">\r\n<div align="justify"><font size="2"><strong>Giới thiệu về nội dung</strong>:<br />\r\n<strong><br />\r\nJean De Lafontaine (1612-1695)</strong> l&agrave; nh&agrave; thơ ngụ ng&ocirc;n cổ điển nổi tiếng của Ph&aacute;p ,v&agrave;o nhạc viện h&agrave;n l&acirc;m ph&aacute;p từ năm 1984 &Ocirc;ng s&aacute;ng t&aacute;c nhiều thể loại nhưng thơ ngụ ng&ocirc;n đ&atilde; đưa &ocirc;ng l&ecirc;n vị tr&iacute; của nh&agrave; thơ cổ điển h&agrave;ng đầu của ph&aacute;p thế kỷ XVII.<br />\r\n<br />\r\nThơ ngụ ng&ocirc;n Lafontaine khai th&aacute;c đề t&agrave;i từ những truyện nhụ ng&ocirc;n nổi tiếng của nh&agrave; văn cổ hi lạp ấn độ.. v&agrave; thường mượn truyện của lo&agrave;i vật để n&oacute;i chuyện với con người ,thơ &ocirc;ng thể hiện sự lạc quan y&ecirc;u đời, y&ecirc;u thi&ecirc;n nhi&ecirc;n ,y&ecirc;u thương con người lương thiện bị đ&egrave; n&eacute;n ,bị &aacute;p bức do yếu h&egrave;n c&ocirc; thế v&agrave; l&ecirc;n &aacute;n th&oacute;i đạo đức giả .thơ ngụ ngộ lafontaine được dịch phổ biến qua nhiều thế hệ ,v&agrave; nhiều nước tr&ecirc;n thế giới.</font></div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>', 'la1.jpg ', 1, 4, 106, '14.5x20.5 cm', '2011-08-10 22:58:22', NULL, NULL),
(55, 'Bá tước Dracula - Ma cà rồng ', 'Quyển', 85000, '<p><font size="2"><strong>Giới thiệu về nội dung:<br />\r\n<br />\r\n</strong>Dracula l&agrave; một nh&acirc;n vật c&oacute; thật, một vật gợi lại những kỷ niệm đau đớn v&agrave; t&agrave;n bạo của lịch sử Rumani. Sử s&aacute;ch ghi rằng: &ldquo;Hắn cho ch&ocirc;n t&ugrave; binh đến rốn rồi ra lệnh hạ s&aacute;t cả loạt&hellip; hoặc cho lấy d&ugrave;i xi&ecirc;n v&agrave;o những kẻ bại trận v&agrave; nếu gi&atilde;y giụa quyết liệt qu&aacute;, họ sẽ bị đ&oacute;ng cọc ghim b&agrave;n tay xuống đất. C&oacute; lần hắn c&ograve;n cho quẳng một t&ecirc;n trộm v&agrave;o vạc nước s&ocirc;i rồi cho xẻo thịt bắt người nh&agrave; của t&ecirc;n tội đồ phải ăn ngay trước mặt quần thần. Hắn c&ograve;n tự mổ bụng một người vợ đang mang thai để xem đứa con trong b&agrave;o thai&hellip;&rdquo;<br />\r\n<br />\r\nH&igrave;nh ảnh v&agrave; t&iacute;nh c&aacute;ch man rợ, kh&aacute;t m&aacute;u của nh&acirc;n vật c&oacute; thật trong lịch sử n&agrave;y đ&atilde; được Bram Stocker mượn để x&acirc;y dựng th&agrave;nh một h&igrave;nh tượng mang m&agrave;u sắc kỳ b&iacute; c&oacute; t&iacute;nh c&aacute;ch ma qu&aacute;i theo những lời truyền tụng d&acirc;n gian của người ch&acirc;u &Acirc;u, đặc biệt l&agrave; người Rumani. Theo tiếng Rumani, &ldquo;Dracula&rdquo; được d&ugrave;ng để chỉ th&oacute;i tham t&agrave;n của những kẻ xấu xa, nhưng đồng thời n&oacute; cũng l&agrave; lời &aacute;m chỉ &ldquo;ma c&agrave; rồng&rdquo;.<br />\r\n<br />\r\nDưới ng&ograve;i b&uacute;t của Bram Stocker, người đọc sẽ được phi&ecirc;u lưu c&ugrave;ng nh&acirc;n vật Jonathan, từ khi anh ta rời qu&ecirc; hương đến một miền đất xa x&ocirc;i để rồi phải đương đầu với v&ocirc; v&agrave;n kh&oacute; khăn, nguy hiểm. Nhưng khi sắp đến đ&iacute;ch th&igrave; anh khiếp đảm v&igrave; một b&oacute;ng ma bất ngờ xuất hiện ngay trước mặt.<br />\r\n<br />\r\nKhi Jonathan v&agrave; những người bạn của anh biết được ngọn nguồn của mối nguy hiểm để t&igrave;m ra một phương &aacute;n đối ph&oacute; th&igrave; đ&atilde; qu&aacute; muộn', 'macarong1.jpg ', 1, 4, 508, '14.5x20.5 cm', '2011-08-10 22:59:48', NULL, NULL),
(56, 'Vòng xoáy tình yêu ', 'Quyển', 72000, '<div class="boxMid">\r\n<div class="boxMidRt">\r\n<div class="p4">\r\n<div id="ctl00_contentMasterPage_ProductInfo1_pnlSpecification">\r\n<p><strong>Giới thiệu về nội dung</strong>:<br />\r\n<br />\r\n<strong>Hai chị em sinh đ&ocirc;i c&ugrave;ng y&ecirc;u một người đ&agrave;n &ocirc;ng, những m&acirc;u thuẫn v&agrave; trả th&ugrave; trong t&igrave;nh y&ecirc;u khiến cho hai anh em sinh đ&ocirc;i vừa mới ra đời đ&atilde; sớm phải ly t&aacute;n. sau khi lớn l&ecirc;n họ lại tiếp tục những &acirc;n o&aacute;n xưa kia: &iacute;ch kỷ, thương hại, đố kỵ, đau dớn, ly biệt...</strong><br />\r\n<br />\r\n<em><strong>Tr&iacute;ch đoạn:</strong></em><br />\r\n<br />\r\n&quot;... T&ocirc;i kh&ocirc;ng muốn đ&aacute;nh con g&aacute;i, nhưng c&oacute; những đứa ngứa thịt muốn bị ăn đ&ograve;n. T&ocirc;i liền v&aacute;c ngược người c&ocirc; ta l&ecirc;n khiến cho c&ocirc; ta sợ h&atilde;i k&ecirc;u ầm l&ecirc;n. Mấy sinh vi&ecirc;n quanh đ&oacute; liền đưa mắt nh&igrave;n sang, nh&igrave;n nhau cười hi hi rồi bỏ đi.<br />\r\n<br />\r\nC&ocirc; ta g&agrave;o l&ecirc;n:<br />\r\n<br />\r\nAnh m&agrave; kh&ocirc;ng c&ograve;n bỏ t&ocirc;i xuống l&agrave; t&ocirc;i sẽ k&ecirc;u cứu đấy!<br />\r\n<br />\r\nT&ocirc;i mặc kệ c&ocirc; ta, từ từ leo l&ecirc;n một c&aacute;i c&acirc;y h&ograve;e cạnh đ&oacute; rồi đặt c&ocirc; ta xuống. Hai ch&acirc;n c&ocirc; ta vừa đặt xuống th&igrave; hai tay lập tức b&aacute;m chặt lấy t&ocirc;i kh&ocirc;ng chịu bu&ocirc;ng:<br />\r\n<br />\r\n&Ocirc;i mẹ ơi, sao m&agrave; cao thế n&agrave;y?<br />\r\n<br />\r\nC&ocirc; c&oacute; n&oacute;i kh&ocirc;ng th&igrave; bảo? Kh&ocirc;ng n&oacute;i t&ocirc;i sẽ cho c&ocirc; ở lại đ&acirc;y, c&ocirc; cứ ở tr&ecirc;n c&acirc;y m&agrave; l&agrave;m người chim đi!<br />\r\n<br />\r\nC&ocirc; ta vẫn cứng đầu:<br />\r\n<br />\r\nỞ tr&ecirc;n c&acirc;y th&igrave; ở tr&ecirc;n c&acirc;y, d&ugrave; sao c&oacute; anh ở b&ecirc;n cạnh th&igrave; c&oacute; l&agrave;m người chim cũng thật l&atilde;ng mạn! N&oacute;i rồi c&ocirc; ta v&ograve;ng hai tay &ocirc;m chặt lấy ', 'vongxoayTY3.jpg ', 1, 4, 384, '14.5x20.5 cm', '2011-08-10 23:01:15', NULL, NULL),
(57, 'Khám phá Internet mỗi ngày', 'Quyển', 50000, '<div class="boxMid">\r\n<div class="boxMidRt">\r\n<div class="p4">\r\n<div id="ctl00_contentMasterPage_ProductInfo1_pnlSpecification">\r\n<div align="justify"><font size="2">Ng&agrave;y nay c&ocirc;ng nghệ th&ocirc;ng tin n&oacute;i ri&ecirc;ng v&agrave; Internet n&oacute;i chung, đ&atilde; mang đến cho con người về th&ocirc;ng tin li&ecirc;n lạc ng&agrave;y một ho&agrave;n thiện hơn. Như li&ecirc;n lac thư từ, t&igrave;m bạn, quảng c&aacute;o, goi điện thoại, mua b&aacute;n, t&igrave;m kiếm v&agrave; giải tr&iacute;...v...v....<br />\r\n<br />\r\nQua đ&oacute; nhằm đ&aacute;p ứng nhu cầu bạn đọc, ch&uacute;ng t&ocirc;i xin tr&acirc;n trọng giới thiệu đến qu&yacute; bạn đọc quyển &quot; Kh&aacute;m ph&aacute; Internet mỗi ng&agrave;y&quot;. Bạn sẽ được kh&aacute;m ph&aacute; về thế giới xung quanh ta với những điều mới lạ ma bạn chưa từng gặp v&agrave; được minh hoạ qua c&aacute;c địa chỉ trong s&aacute;ch. Bạn muốn l&agrave;m việc g&igrave;? Internet sẽ gi&uacute;p bạn t&igrave;m kiếm những điều m&agrave; bạn muốn:<br />\r\n- Đọc tin tức<br />\r\n- Gửi e-mail với Yahoo, Outlook, Outlook Express<br />\r\n- Chơi game trực tuyến<br />\r\n- Xem phim trực tuyến<br />\r\n- Internet d&agrave;nh cho người y&ecirc;u &acirc;m nhạc<br />\r\n- T&igrave;m kiếm hợp đồng mua b&aacute;n<br />\r\n- Mua b&aacute;n, mặc cả<br />\r\n- C&aacute;c c&ocirc;ng cụ cao cấp d&agrave;nh cho c&aacute;c học giả<br />\r\n- Thư viện tham khảo<br />\r\n- Bảo mật v&agrave; an to&agrave;n...v...v..<br />\r\n<br />\r\n<strong>Mục lục:</strong><br />\r\n<strong>Phần I: Khởi động</strong><br />\r\nChương 1: L&agrave;m quen với Internet<br />\r\nChương 2: Chọn một dịch vụ Internet<br />\r\nChương 3: X&aacute;c lập c&aacute;c nối kết Internet<br />\r\nChương 4: B&agrave;o mật v&agrave; an to&agrave;n<br />\r\nChương 5: Nhận c&aacute;c plug-in bạn cần<br />\r\nPhần II: Kh&aacute;m ph&aacute; Internet<br />\r\nChương 1: Duyệt Internet<br />\r\nChương 2: Một diện mạo c&aacute;c tr&igrave;nh duyệt kh&aacute;c nhau<br />\r\nChương 3: C&aacute;c chiến lược t&igrave', 'khamphainternetmoingay.jpg ', 3, 2, 344, '14.5x20.5 cm', '2011-08-10 23:06:29', NULL, NULL),
(58, 'Thực hành JavaScript (cho web)', 'Quyển', 96000, '<div class="boxMid">\r\n<div class="boxMidRt">\r\n<div class="p4">\r\n<div id="ctl00_contentMasterPage_ProductInfo1_pnlSpecification">\r\n<div align="justify"><font size="2">Đ&acirc;y l&agrave; cuốn s&aacute;ch n&oacute;i về JavaScript &quot;th&ocirc;ng minh&quot; - JavaScript nhằm n&acirc;ng cao t&iacute;nh năng cho website nhưng kh&ocirc;ng g&acirc;y ra c&aacute;c th&ocirc;ng b&aacute;o lỗi trong c&aacute;c tr&igrave;nh duyệt cũ v&agrave; người d&ugrave;ng sẽ kh&ocirc;ng phải kh&oacute; chịu v&igrave; c&aacute;c sự cố khi họ truy cập website của bạn.<br />\r\n<br />\r\nTrong cuốn s&aacute;ch n&agrave;y, t&aacute;c giả tập trung giới thiệu c&aacute;c vấn đề cơ bản của JavaScript m&agrave; bạn sẽ cần trong c&ocirc;ng việc ph&aacute;t triển web:<br />\r\n<br />\r\nGiải quyết vấn đề viết m&atilde; chạy tr&ecirc;n nhiều tr&igrave;nh duyệt C&agrave;i đặt c&aacute;c m&atilde; kịch bản (script) nhằm n&acirc;ng cao t&iacute;nh năng v&agrave; sự thể hiện của website C&aacute;c kỹ thuật ti&ecirc;n tiến trong việc kiểm tra t&iacute;nh hợp lệ của dữ liệu Viết m&atilde; kịch bản JavaScript từ c&aacute;c đoạn m&atilde; của c&aacute;c t&iacute;nh năng add-in cho đến to&agrave;n bộ ứng dụng với t&iacute;nh năng &quot;giỏ mua h&agrave;ng&quot;Cuốn s&aacute;ch n&agrave;y sẽ rất ph&ugrave; hợp với những người đ&atilde; từng x&acirc;y dựng c&aacute;c trang web v&agrave; b&acirc;y giờ muốn học nhanh JavaScript hoặc đ&atilde; từng l&agrave;m quen v&agrave; sử dụng c&aacute;c m&atilde; JavaScript miễn ph&iacute; tr&ecirc;n Internet v&agrave; muốn hiểu s&acirc;u về c&aacute;c c&ocirc;ng nghệ để x&acirc;y dựng c&aacute;c m&atilde; kịch bản của ri&ecirc;ng m&igrave;nh. Nếu l&agrave; người mới l&agrave;m quen với JavaScript, bạn cũng c&oacute; thể hiểu được c&aacute;c kh&aacute;i niệm v&agrave; m&atilde; lệnh được giới thiệu trong cuốn s&aacute;ch n&agrave;y. CD b&agrave;i tập k&egrave;m theo s&aacute;ch chứa c&aacute;c file ảnh v&agrave; m&atilde; lệnh minh họa cho c&aacute;c b&agrave;i thực h&agrave;nh tr', 'thuchanhJSchoweb.jpg ', 3, 2, 500, '14.5x20.5 cm', '2011-08-10 23:07:55', NULL, NULL),
(59, 'Tham khảo nhanh Visual Basic 6.0', 'Quyển', 126000, '<p><font size="2"><strong>Ng&ocirc;n ngữ lập tr&igrave;nh Visual Basic 6.0 </strong>ng&agrave;y c&agrave;ng trở n&ecirc;n quen thuộc từ c&aacute;c bạn mới học lần đầu ti&ecirc;n l&agrave;m quen với lập tr&igrave;nh đến những lập tr&igrave;nh vi&ecirc;n đ&atilde; c&oacute; nhiều năm kinh nghiệm. <br />\r\n<br />\r\nCuốn s&aacute;ch gi&uacute;p cho c&aacute;c bạn tham khảo nhanh thư viện h&agrave;m, Khai b&aacute;o, T&oacute;an tử, Thuộc t&iacute;nh v&agrave; Phương thức khi thamkhảo hay x&acirc;y dựng một ứng dụng bằng ngồn ngữ lập tr&igrave;nh Visual Basic 6.0 tr&ecirc;n nền Windows.<br />\r\n<br />\r\n<strong>MỤC LỤC</strong></font><br />\r\n<br />\r\n<font size="2"><strong>Phần 1</strong>: H&agrave;m (funtions)</font><br />\r\n<br />\r\n<font size="2"><strong>Phần 2:</strong> Ph&aacute;t biểu(statements)</font><br />\r\n<br />\r\n<font size="2"><strong>Phần 3:</strong> To&aacute;n tử</font><br />\r\n<br />\r\n<font size="2"><strong>Phần 4:</strong> Thuộc t&iacute;nh</font><br />\r\n<br />\r\n&nbsp;</p>', 'Tham_Khao_VB6_1.jpg ', 3, 2, 279, '14.5x20.5 cm', '2011-08-10 23:09:25', NULL, NULL),
(60, 'SQL Server 2005', 'Quyển', 98000, '<div class="boxMid">\r\n<div class="boxMidRt">\r\n<div class="p4">\r\n<div id="ctl00_contentMasterPage_ProductInfo1_pnlSpecification">\r\n<div align="justify"><font size="2">Gi&aacute;o tr&igrave;nh bao gồm 10 chương v&agrave; phần phụ lục tham khảo được nhấn mạnh xuy&ecirc;n suốt từ giao diện, h&agrave;m, ph&aacute;t biểu SQL động, ph&aacute;t biểu SQL phức tạp, ph&aacute;t biểu điều khiển, thủ tục nội tại, trigger, gi&uacute;p cho bạn sử dụng ch&uacute;ng trong ứng dụng kế to&aacute;n c&ugrave;ng với sự kết hợp ho&agrave;n hảo bằng ng&ocirc;n ngữ lập tr&igrave;nh C# 2005.<br />\r\n<br />\r\nChương 1: giao diện của ứng dụng Desktop đa người d&ugrave;ng bằng c&aacute;c form giới thiệu, form đăng nhập v&agrave; giao diện ch&iacute;nh tr&igrave;nh b&agrave;y trong Chương 2.<br />\r\n<br />\r\nChương 3 t&igrave;m hiểu c&aacute;c chức năng quản l&yacute; thu chi v&agrave; tồn quỹ. Quản l&yacute; c&ocirc;ng nợ phải thu của kh&aacute;ch h&agrave;ng v&agrave; c&ocirc;ng nợ phải trả cho nh&agrave; cung cấp được tr&igrave;nh b&agrave;y trong Chương 4 v&agrave; Chương 5.<br />\r\n<br />\r\nSau khi tham khảo c&aacute;ch khai b&aacute;o phương thức v&agrave; thuộc t&iacute;nh c&ugrave;ng với thủ tục nội tại trong cơ sở dữ liệu của c&aacute;c chương trước, c&oacute; thể c&agrave;i đặt c&aacute;c chức năng quản l&yacute; xuất nhập v&agrave; tồn kho trong Chương 6.<br />\r\n<br />\r\nChương 7 t&igrave;m hiểu c&aacute;ch thực hiện chức năng đ&oacute;ng sổ kế to&aacute;n, x&oacute;a hay chuyển dữ liệu ph&aacute;t sinh hằng ng&agrave;y sang cơ sở dữ liệu kh&aacute;c c&ugrave;ng với c&aacute;c b&aacute;o c&aacute;o t&agrave;i ch&iacute;nh.<br />\r\n<br />\r\nThay v&igrave; sử dụng dịch vụ Report của SQL Server 2005, bạn c&oacute; thể t&igrave;m thấy c&aacute;ch sử dụng Microsoft Report để tạo ra b&aacute;o c&aacute;o với nhiều dạng kh&aacute;c nhau. Chương 8 hướng dẫn bạn sử dụng ng&ocirc;n ngữ lập tr&igrave;nh C# 2005 để tr&igrave;nh b&agrave;y b&aacute;o c&aacute;o tr&ecirc;n form.<br />\r\n<br />\r\nBằng c&aacute', 'SQLSever2005QLKT.jpg ', 3, 13, 404, '14.5x20.5 cm', '2011-08-10 23:14:19', NULL, NULL),
(61, 'Tạo website hấp dẫn với HTML, XHTML và CSS', 'Quyển', 79000, '<div class="boxMid">\r\n<div class="boxMidRt">\r\n<div class="p4">\r\n<div id="ctl00_contentMasterPage_ProductInfo1_pnlSpecification">\r\n<div align="justify"><font size="2">Ng&agrave;y nay, việc ứng dụng ph&aacute;t triển Website hấp dẫn kh&ocirc;ng c&ograve;n g&oacute;i gọn bằng HTLM, cho d&ugrave; bạn đang x&acirc;y dựng một Website thương mại phức tạp hoặc chỉ đơn thuần l&agrave; tạo ra một Website nhỏ cho bản th&acirc;n. Với cuốn s&aacute;ch Tạo Website hấp dẫn với HTML, XHTML v&agrave; CSS n&agrave;y sẽ c&ugrave;ng bạn kh&aacute;m ph&aacute; c&aacute;c sắc th&aacute;i của XHTML v&agrave; CSS theo c&aacute;ch gi&uacute;p bạn nắm được c&aacute;c vấn đề. S&aacute;ch bao gồm nhiều th&ocirc;ng tin mới cập nhật về XHTML, CSS, JavaScript...<br />\r\n<br />\r\nCuốn s&aacute;ch n&agrave;y kh&ocirc;ng những gi&uacute;p bạn tiết kiệm được thời gian học tập m&agrave; c&ograve;n th&iacute;ch hợp với những ai muốn t&ograve; m&ograve; tạo một Website, v&igrave; s&aacute;ch cung cấp nhiều gợi &yacute;, hướng dẫn r&otilde; r&agrave;ng trong việc chuẩn bị xuất bản những trang Web đầu ti&ecirc;n ngay sau khi bạn đọc qua v&agrave;i chương.<br />\r\n<br />\r\nMỤC LỤC<br />\r\n<br />\r\nPhần 1: X&acirc;y dựng một Website hấp dẫn.<br />\r\n<br />\r\nPhần 2: Chiến lược thiết kế trang Web.<br />\r\n<br />\r\nPhần 3: Mở rộng trang Web th&agrave;nh Website.<br />\r\n<br />\r\nPhụ lục A: Hướng dẫn hoạch định Wesite từng bước.<br />\r\n<br />\r\nPhụ lục B: T&igrave;m địa điểm cho Website.<br />\r\n<br />\r\n<strong>Xin tr&acirc;n trọng giới thiệu!</strong></font></div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>', 'windowsScriptHost.jpg ', 3, 13, 472, '14.5x20.5 cm', '2011-08-10 23:15:40', NULL, NULL),
(62, 'Windows Script Host', 'Quyển', 98000, '<p><font size="2">Cuốn s&aacute;ch &quot;<strong>Windows Script Host</strong>&quot; n&agrave;y c&oacute; thể coi như một t&agrave;i liệu hướng dẫn đầy đủ v&agrave; chi tiết về việc tự động thực hiện c&aacute;c t&aacute;c vụ trong WSH.<br />\r\n<br />\r\nNội dung của cuốn t&agrave;i liệu tr&igrave;nh b&agrave;y c&aacute;c vấn đề sau:<br />\r\n<br />\r\n<strong>Phần 1: Giới thiệu thế giới lập tr&igrave;nh kịch bản bằng Windows Script Host.</strong><br />\r\nChương 1: Giới thiệu Windows Script Host.<br />\r\nChương 2: C&aacute;c c&ocirc;ng cụ v&agrave; kỹ thuật tạo dựng kịch bản.<br />\r\nChương 3: Giới thiệu về lập tr&igrave;nh hướng đối tượng.<br />\r\nChương 4: Giới thiệu về VBScript.<br />\r\nChương 5: Giới thiệu JScript.<br />\r\n<br />\r\n<strong>Phần 2: Lập tr&igrave;nh kịch bản tương t&aacute;c.</strong><br />\r\nChương 6: Việc tạo c&aacute;c khung thoại trong WSH.<br />\r\nChương 8: Đọc ra dữ liệu nhập của người d&ugrave;ng bằng WSH.<br />\r\nChương 9: L&agrave;m việc với c&aacute;c form.<br />\r\n<br />\r\n<strong>Phần 3: Lập tr&igrave;nh kịch bản chuy&ecirc;n s&acirc;u.</strong><br />\r\nChương 11: Sử dụng c&aacute;c t&iacute;nh năng chuy&ecirc;n s&acirc;u.<br />\r\nChương 12: Sử dụng FileSystemObject.</font><br />\r\n&nbsp;</p>', 'windowsScriptHost.jpg ', 3, 13, 520, '14.5x20.5 cm', '2011-08-10 23:17:28', NULL, NULL),
(63, 'Tự học 3DS MAX', 'Quyển', 52000, '<div class="boxMid">\r\n<div class="boxMidRt">\r\n<div class="p4">\r\n<div id="ctl00_contentMasterPage_ProductInfo1_pnlSpecification">\r\n<p align="justify"><font size="2">Ch&agrave;o mừng bạn đến với thế giới ảo 3D được thiết kế v&agrave; l&agrave;m hoạt cảnh th&ocirc;ng qua chương tr&igrave;nh 3DS Max, một trong những phần mềm 3D mạnh v&agrave; phổ biến tr&ecirc;n thế giới. <br />\r\nNg&agrave;y nay, phạm vi ứng dụng của kỹ thuật 3D được mở rộng, từ lĩnh vực game tương t&aacute;c 3D cho đến c&aacute;c kỹ xảo trong ng&agrave;nh điện ảnh v&agrave; truyền h&igrave;nh. Kỹ thuật 3D cũng được sử dụng phổ biến tr&ecirc;n Web v&agrave; trong kiến tr&uacute;c x&acirc;y dựng. <br />\r\nThoạt nh&igrave;n th&igrave; giao diện của 3ds max c&oacute; vẻ phức tạp với qu&aacute; nhiều c&ocirc;ng cụ v&agrave; chức năng. Tuy nhi&ecirc;n, sau khi t&igrave;m hiểu v&agrave; sử dụng, bạn sẽ thấy n&oacute; được thiết kế rất trực quan v&agrave; dễ hiểu. Cuốn s&aacute;ch n&agrave;y đề cập một c&aacute;ch cơ bản hầu hết c&aacute;c phương diện của 3ds max, gi&uacute;p c&aacute;c bạn dễ d&agrave;ng tiếp cận với phần mềm n&agrave;y. C&aacute;c chủ đề được tr&igrave;nh b&agrave;y độc lập như dạng t&agrave;i liệu tham khảo, bạn c&oacute; thể t&igrave;m hiểu ngay c&aacute;c chủ đề m&agrave; m&igrave;nh quan t&acirc;m, kh&ocirc;ng nhất thiết phải đọc hết từ đầu đến cuối. <br />\r\n<br />\r\n<strong>MỤC LỤC</strong> <br />\r\n</font><font size="2"><strong>Phần 1: Giao diện <br />\r\n</strong>Chương 1: L&agrave;m quen với giao diện. <br />\r\nChương 2: T&ugrave;y biến kh&ocirc;ng gian l&agrave;m việc. <br />\r\n</font><font size="2"><strong>Phần 2: M&ocirc; h&igrave;nh <br />\r\n</strong>Chương 3: Vật thể 3D, mặt đa gi&aacute;c v&agrave; lệnh biến đổi. <br />\r\nChương 4: Vật thể nguy&ecirc;n sinh. <br />\r\nChương 5: C&aacute;c vật thể 2D. <br />\r\nChương 6: Vật thể kết hợp. <br />\r\n</font><font size="2"><strong>Phần 3: Hiệu chỉnh vật thể. <br />\r\n</strong>Chương 7: T&igrave;m chọn ph&eacute;p hiệu chỉnh. <br />\r\nChương 8: Tạo b', 'TuHoc3DSMax.jpg ', 3, 13, 236, '0', '2011-08-10 23:24:07', NULL, NULL);


-- ----------------------------------------------------------------------------------------------------------------
--
-- Table structure for table `tac_gia`
--

DROP TABLE IF EXISTS `tac_gia`;
CREATE TABLE IF NOT EXISTS `tac_gia` (
  `MTG` int(11) NOT NULL AUTO_INCREMENT,
  `Ten_tac_gia` varchar(100) COLLATE utf8_bin NOT NULL,
  `Dia_chi` varchar(150) COLLATE utf8_bin DEFAULT NULL,
  `Dien_thoai` varchar(15) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`MTG`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AVG_ROW_LENGTH=862 AUTO_INCREMENT=36 ;

--
-- Dumping data for table `tac_gia`
--
INSERT INTO `tac_gia` (`MTG`, `Ten_tac_gia`, `Dia_chi`, `Dien_thoai`) VALUES
(1, 'TS.Nguyễn Phương Liên', '45 Lê lợi', '457547858'),
(2, 'BS Vũ Thị Uyên Thanh', '18 Tô Hiến Thành', '363464677'),
(3, 'Nguyễn NGọc Minh', '27 Nguyễn Huệ', '585656888'),
(4, 'Nguyễn Thiên Bằng', '34 Trần Hưng Đạo', '346346677'),
(5, 'Triệu Thị Chơi', 'Phan Dinh Phung, Hai Duong', '0987879767876'),
(6, 'Mai Phương', 'Hưng Yên', '09876'),
(7, 'Nguyễn Trúc Linh', '18 Tô Hiến Thành', '585656888'),
(8, 'Nguyễn Thị Diệu Thảo', NULL, NULL),
(9, 'Hồng Châu', NULL, NULL),
(10, 'Hoàng Hương', NULL, NULL),
(11, 'Kim Hương - Huyền Trâm', NULL, NULL),
(12, 'Nhật Quang', NULL, NULL),
(13, 'Thiên Minh', NULL, NULL),
(14, 'Chánh Tín', NULL, NULL),
(15, 'Tỳ khưu Dũng Chí', NULL, NULL),
(16, 'Nhiều tác giả', NULL, NULL),
(17, 'LUẬT GIA: ĐINH QUỐC KHÁNH', NULL, NULL),
(18, 'TS Huỳnh  Viết Tuấn', NULL, NULL),
(19, 'Dương Hải Liên', NULL, NULL),
(20, 'Hoàng Anh Tú', NULL, NULL),
(21, 'Tư Tĩnh, Dịch giả: Thiều Hoa ', NULL, NULL),
(22, 'Cầm Sắt Tỳ Bà, Dịch giả: Thu Trần', NULL, NULL),
(23, 'Phỉ Ngã Tư Tồn, Dịch giả: Huyền Trang', NULL, NULL),
(24, 'Tuyết Ảnh Sương Hồn, Dịch giả: Trang Nguyễn', NULL, NULL),
(25, 'Lữ Huy Nguyên (Sưu tầm và tuyển chọn) ', NULL, NULL),
(26, 'Võ thị Xuân Hà ', NULL, NULL),
(27, 'Jean De Lafontaine ', NULL, NULL),
(28, 'Thanh Điểu, Dịch giả: Tử Đằng', NULL, NULL),
(29, 'Bram Stoker ', NULL, NULL),
(30, 'Việt Văn Books', NULL, NULL),
(31, 'Nguyễn Trường Sinh', NULL, NULL),
(32, 'Phạm Hữu Khang', NULL, NULL),
(33, 'Phạm Hoàng Dũng ', NULL, NULL),
(34, 'Lưu Triều Nguyên ', NULL, NULL),
(35, 'Vũ Đình Cường(chủ biên), Phương Lan(Hiệu đính) ', NULL, NULL);

-- ----------------------------------------------------------------------------------------------------------------
--
-- Table structure for table `viet_sach`
--

DROP TABLE IF EXISTS `viet_sach`;
CREATE TABLE IF NOT EXISTS `viet_sach` (
  `STT` int(11) NOT NULL AUTO_INCREMENT,
  `Ms` int(11) DEFAULT NULL,
  `MTG` int(11) DEFAULT NULL,
  `Ghi_chu` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`STT`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=75 ;

--
-- Constraints for table `sach`
--
ALTER TABLE `viet_sach`
  ADD 
	CONSTRAINT `fk_viet_sach_Ms` FOREIGN KEY (`Ms`) REFERENCES `sach` (`Ms`);

ALTER TABLE `viet_sach`
  ADD 
	CONSTRAINT `fk_viet_sach_MTG` FOREIGN KEY (`MTG`) REFERENCES `tac_gia` (`MTG`) ;

--
-- Dumping data for table `viet_sach`
--
INSERT INTO `viet_sach` (`STT`, `Ms`, `MTG`, `Ghi_chu`) VALUES
(1, 1, 31, NULL),
(2, 1, 32, '(Đồng tác giả)'),
(3, 1, 33, '(Đồng tác giả)'),
(4, 2, 34, '(Tác giả)'),
(5, 2, 32, '(Đồng tác giả)'),
(6, 3, 28, NULL),
(7, 4, 28, NULL),
(8, 5, 28, NULL),
(9, 6, 5, NULL),
(10, 7, 6, NULL),
(11, 8, 7, NULL),
(12, 9, 5, NULL),
(13, 9, 7, NULL),
(14, 10, 28, NULL),
(15, 11, 8, NULL),
(16, 12, 9, NULL),
(17, 13, 9, NULL),
(18, 14, 10, NULL),
(19, 15, 11, NULL),
(20, 16, 28, NULL),
(21, 17, 13, NULL),
(22, 18, 15, '(Biên soạn)'),
(23, 19, 16, NULL),
(24, 20, 14, '(Biên dịch)'),
(25, 20, 30, '(Tác giả)'),
(26, 21, 17, '(Biên soạn)'),
(27, 22, 17, NULL),
(28, 23, 17, NULL),
(29, 24, 18, NULL),
(30, 25, 29, '(Biên Tập)'),
(31, 25, 19, '(Biên Tập)'),
(32, 26, 28, NULL),
(33, 27, 28, NULL),
(34, 28, 20, '(Tác giả)'),
(35, 29, 21, '(Chủ biên)'),
(36, 30, 22, '(Biên soạn)'),
(37, 30, 27, '(Biên soạn)'),
(38, 31, 26, '(Sưu tầm và tuyển chọn)'),
(39, 31, 23, '(Hiệu đính)'),
(40, 32, 24, '(Tác giả)'),
(41, 33, 25, NULL),
(42, 34, 25, NULL),
(43, 35, 25, NULL),
(44, 36, 25, NULL),
(45, 37, 32, '(Đồng tác giả)'),
(46, 37, 33, '(Đồng tác giả)'),
(47, 37, 35, '(Chủ biên)'),
(48, 37, 32, '(Đồng tác giả)'),
(49, 38, 32, 'Đồng tác giả)'),
(50, 38, 32, 'Đồng tác giả)'),
(51, 38, 33, 'Đồng tác giả)'),
(52, 38, 35, '(Chủ biên)'),
(53, 43, 23, NULL),
(54, 43, 2, NULL),
(55, 43, 25, NULL),
(56, 44, 20, NULL),
(57, 45, 21, NULL),
(59, 46, 22, NULL),
(60, 47, 23, NULL),
(61, 48, 16, NULL),
(62, 49, 24, NULL),
(63, 50, 25, NULL),
(64, 51, 25, NULL),
(65, 52, 26, NULL),
(66, 53, 27, NULL),
(67, 54, 27, NULL),
(68, 55, 29, NULL),
(69, 56, 28, NULL),
(70, 57, 30, NULL),
(71, 58, 31, NULL),
(72, 59, 32, NULL),
(73, 60, 32, NULL),
(74, 61, 31, NULL);
-- ----------------------------------------------------------------------------------------------------------------
--
-- Table structure for table `khach_hang`
--

DROP TABLE IF EXISTS `khach_hang`;
CREATE TABLE IF NOT EXISTS `khach_hang` (
  `MKH` int(11) NOT NULL AUTO_INCREMENT,
  `Ho_khach_hang` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `Ten_khach_hang` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `Dia_chi` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `Dien_thoai` varchar(10) COLLATE utf8_bin DEFAULT NULL,
  `Ten_dang_nhap` varchar(15) COLLATE utf8_bin DEFAULT NULL,
  `Mat_khau` varchar(15) COLLATE utf8_bin DEFAULT NULL,
  `Ngay_sinh` datetime DEFAULT NULL,
  `Gioi_tinh` tinyint(1) DEFAULT NULL,
  `Email` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `Da_duyet` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`MKH`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=25 ;

--
-- Dumping data for table `khach_hang`
--

INSERT INTO `khach_hang` (`MKH`, `Ho_khach_hang`, `Ten_khach_hang`, `Dia_chi`, `Dien_thoai`, `Ten_dang_nhap`, `Mat_khau`, `Ngay_sinh`, `Gioi_tinh`, `Email`, `Da_duyet`) VALUES
(3, 'Lê Thu Bạch', 'Yến', 'Tp. HCM', '0933568689', 'yenltb', '123', '0000-00-00 00:00:00', 0, NULL, 0),
(4, 'Trần Anh', 'Tuấn', 'Hà Nội', '0983568648', 'tuanta', 'tuanta', '0000-00-00 00:00:00', 1, NULL, 0),
(5, 'Hoàng Thanh', 'Mai', 'Hải Phòng', '0971138688', 'maiht', '123', '0000-00-00 00:00:00', 0, NULL, 0),
(6, 'Trần Thị Thu', 'Thủy', 'Tp. HCM', '0912568685', 'thuy3t', '123', '0000-00-00 00:00:00', 0, NULL, 0),
(7, 'Đỗ Văn', 'Lâm', 'Bình Định', '0953568688', 'lamdv', '123', '0000-00-00 00:00:00', 1, NULL, 0),
(8, 'Trần Xuân', 'Dũng', 'Hà Nội', '0923568688', 'dungtx', '123', '0000-00-00 00:00:00', 1, NULL, 0),
(9, 'Lê Ngọc', 'Hân', 'Hải Phòng', '0953762642', 'hanln', '123', '0000-00-00 00:00:00', 0, NULL, 0),
(10, 'Hà Quang', 'Dòng', 'Tp. HCM', '0923568678', 'kh', '123', '0000-00-00 00:00:00', 1, NULL, 0),
(11, 'Lê Quang', 'Lưu', 'Hà Nội', '0913578489', 'luulq', '123', '0000-00-00 00:00:00', 1, NULL, 0),
(12, 'Vũ Hồng', 'Quang', 'Hà Nội', '0913445457', 'kh', '123', '0000-00-00 00:00:00', 1, NULL, 0),
(13, 'Hà Tuấn', 'Anh', 'Hải Phòng', '0955345411', 'kh', '123', '0000-00-00 00:00:00', 1, NULL, 0),
(14, 'Nguyễn Thị', 'Phương', 'Hà Nội', '0925854536', 'kh', '123', '0000-00-00 00:00:00', 0, NULL, 0),
(15, 'HOANG PHI', 'HONG', 'Hà Tây', '0953463466', 'kh', '123', '0000-00-00 00:00:00', 1, 'hong@yahoo.com', 0),
(16, 'Tạ Đình', 'Phong', 'Hưng Yên', NULL, 'kh', '123', '0000-00-00 00:00:00', 0, NULL, 0),
(17, 'Lê Duy', 'Thức', 'Hà Tây', '0978435677', 'kh', '123', '0000-00-00 00:00:00', 0, NULL, 0),
(18, 'Lê Huy', 'Hoàng', 'Hà Nội', NULL, 'kh', '123', '0000-00-00 00:00:00', 0, NULL, 0),
(19, 'Nguyễn Thị', 'Mỹ', 'Hưng Yên', NULL, 'kh', '123', '0000-00-00 00:00:00', 0, NULL, 0),
(20, 'Hồ Vĩnh', 'Xuân', 'Tp. HCM', '0913256624', 'kh', '123', '0000-00-00 00:00:00', 0, NULL, 0),
(21, 'Nguyễn Văn', 'Thắng', 'Bắc Ninh', NULL, 'kh', '123', '0000-00-00 00:00:00', 0, NULL, 0),
(22, 'Phạm Trung', 'Lập', 'Bắc Ninh', '0904356742', 'kh', '123', '0000-00-00 00:00:00', 0, NULL, 0),
(23, 'Đinh Huyền', 'Hương', 'Tp. HCM', NULL, 'kh', '123', '0000-00-00 00:00:00', 0, NULL, 0),
(24, 'Nguyễn Thị', 'Hải', 'Hà Nội', '567567', 'admin', 'admin', '0000-00-00 00:00:00', 0, NULL, 0);

-- ----------------------------------------------------------------------------------------------------------------
--
-- Table structure for table `don_dat_hang`
--

DROP TABLE IF EXISTS `don_dat_hang`;
CREATE TABLE IF NOT EXISTS `don_dat_hang` (
  `SDH` int(11) NOT NULL AUTO_INCREMENT,
  `MKH` int(11) DEFAULT NULL,
  `Ngay_dat_hang` datetime DEFAULT NULL,
  `Tri_gia` double DEFAULT NULL,
  `Ho_ten_nguoi_nhan` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `Dia_chi_giao` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `Email_nguoi_nhan` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `Dien_thoai` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  `Thong_tin_khac` varchar(200) COLLATE utf8_bin DEFAULT NULL,
  `Ngay_giao_hang` datetime DEFAULT NULL,
  `Da_giao_hang` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`SDH`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=1 ;
--
-- Constraints for table `sach`
--
ALTER TABLE `don_dat_hang`
  ADD 
	CONSTRAINT `fk_don_dat_hang_MKH` FOREIGN KEY (`MKH`) REFERENCES `khach_hang` (`MKH`);

--
-- Dumping data for table `don_dat_hang`
--
-- ----------------------------------------------------------------------------------------------------------------

--
-- Table structure for table `ct_dat_hang`
--

DROP TABLE IF EXISTS `ct_dat_hang`;
CREATE TABLE IF NOT EXISTS `ct_dat_hang` (
  `SDH` int(11) NOT NULL DEFAULT '0',
  `MS` int(11) NOT NULL DEFAULT '0',
  `So_luong` int(11) DEFAULT NULL,
  `Don_gia` double DEFAULT NULL,
  `Thanh_tien` double DEFAULT NULL,
  PRIMARY KEY (`SDH`,`MS`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Constraints for table `sach`
--
ALTER TABLE `ct_dat_hang`
  ADD 
	CONSTRAINT `fk_ct_dat_hang_SDH` FOREIGN KEY (`SDH`) REFERENCES `don_dat_hang` (`SDH`);

ALTER TABLE `ct_dat_hang`
  ADD 
	CONSTRAINT `fk_ct_dat_hang_MS` FOREIGN KEY (`MS`) REFERENCES `sach` (`Ms`);
--
-- Dumping data for table `ct_dat_hang`
--

-- ----------------------------------------------------------------------------------------------------------------

--
-- Table structure for table `tham_do`
--

DROP TABLE IF EXISTS `tham_do`;
CREATE TABLE IF NOT EXISTS `tham_do` (
  `MCH` int(11) NOT NULL AUTO_INCREMENT,
  `Noi_dung` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `Ngay_dang` datetime DEFAULT NULL,
  `Tong_so_binh_chon` int(11) DEFAULT NULL,
  PRIMARY KEY (`MCH`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=1 ;

--
-- Dumping data for table `tham_do`
--
-- --------------------------------------------------------
--
-- Table structure for table `tham_do_ct`
--

DROP TABLE IF EXISTS `tham_do_ct`;
CREATE TABLE IF NOT EXISTS `tham_do_ct` (
  `MCH` int(11) DEFAULT NULL,
  `Stt` int(11) NOT NULL DEFAULT '0',
  `Noi_dung` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `So_lan_binh_chon` int(11) DEFAULT NULL,
  PRIMARY KEY (`Stt`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

ALTER TABLE `tham_do_ct`
  ADD 
	CONSTRAINT `fk_tham_do_ct_MCD` FOREIGN KEY (`MCH`) REFERENCES `tham_do` (`MCH`);
--
-- Dumping data for table `tham_do_ct`
--
-- --------------------------------------------------------
--
-- Table structure for table `muc_gia`
--

CREATE TABLE IF NOT EXISTS `muc_gia` (
  `Ma_muc_gia` int(20) NOT NULL AUTO_INCREMENT,
  `Gia_bat_dau` varchar(40) DEFAULT NULL,
  `Gia_ket_thuc` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`Ma_muc_gia`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `muc_gia`
--

INSERT INTO `muc_gia` (`Ma_muc_gia`, `Gia_bat_dau`, `Gia_ket_thuc`) VALUES
(1, '5000', '15000'),
(2, '15000', '25000'),
(3, '25000', '35000'),
(4, '35000', '45000'),
(5, '45000', '55000'),
(6, '55000', '65000'),
(7, '65000', '75000'),
(8, '75000', '85000'),
(9, '85000', '95000'),
(10, '95000', '105000');



