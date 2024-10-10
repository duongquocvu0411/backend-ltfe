-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th10 10, 2024 lúc 05:25 AM
-- Phiên bản máy phục vụ: 10.4.28-MariaDB
-- Phiên bản PHP: 8.1.17

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `api-fe`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `admins`
--

CREATE TABLE `admins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `admins`
--

INSERT INTO `admins` (`id`, `username`, `password`, `created_at`, `updated_at`) VALUES
(1, 'admin', '$2y$12$AYhAKNWu5GreXLZADcX9R.DYvzJ8SMeOoStWsGRuncGNu7tn4Ab6m', '2024-10-07 03:11:49', '2024-10-07 03:11:49');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chitiets`
--

CREATE TABLE `chitiets` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `sanphams_id` bigint(20) UNSIGNED NOT NULL,
  `mo_ta_chung` text DEFAULT NULL,
  `hinh_dang` text DEFAULT NULL,
  `cong_dung` text DEFAULT NULL,
  `xuat_xu` varchar(255) DEFAULT NULL,
  `khoi_luong` varchar(255) DEFAULT NULL,
  `bao_quan` varchar(255) DEFAULT NULL,
  `thanh_phan_dinh_duong` text DEFAULT NULL,
  `ngay_thu_hoach` varchar(255) DEFAULT NULL,
  `huong_vi` varchar(255) DEFAULT NULL,
  `nong_do_duong` varchar(255) DEFAULT NULL,
  `bai_viet` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `chitiets`
--

INSERT INTO `chitiets` (`id`, `sanphams_id`, `mo_ta_chung`, `hinh_dang`, `cong_dung`, `xuat_xu`, `khoi_luong`, `bao_quan`, `thanh_phan_dinh_duong`, `ngay_thu_hoach`, `huong_vi`, `nong_do_duong`, `bai_viet`, `created_at`, `updated_at`) VALUES
(3, 17, 'Combo B là sự kết hợp của các loại rau xanh đa dạng và bổ dưỡng, phù hợp cho các món ăn dinh dưỡng hàng ngày. Combo bao gồm cải thảo, bắp ngô, cải bó xôi, và các loại rau củ khác, mang lại sự cân bằng dinh dưỡng cho bữa ăn.', 'Thành phần:  Cải thảo: Nguồn cung cấp chất xơ, vitamin C và các chất chống oxy hóa, giúp tăng cường hệ miễn dịch. Bắp ngô: Chứa nhiều carbohydrate, giúp bổ sung năng lượng, cùng với vitamin B và khoáng chất. Cải bó xôi (rau chân vịt): Giàu sắt và canxi, tốt cho máu và hệ xương. Rau muống: Giúp thanh nhiệt, giải độc cơ thể và giàu chất xơ. Cải ngọt: Bổ sung vitamin và khoáng chất, có lợi cho hệ tiêu hóa.', 'Combo B thích hợp cho các món luộc, hấp, xào, nấu canh. Mỗi loại rau trong combo đều chứa các dưỡng chất có lợi, giúp cung cấp đầy đủ năng lượng và tăng cường sức khỏe.', NULL, NULL, 'Rau trong combo nên được bảo quản trong tủ lạnh ở nhiệt độ 4-8°C và sử dụng trong vòng 3-5 ngày để đảm bảo độ tươi ngon và dinh dưỡng.', NULL, NULL, NULL, NULL, NULL, '2024-10-07 21:05:38', '2024-10-08 02:15:25'),
(5, 1, 'Dâu tây Đà Lạt là loại trái cây tươi ngon, có hình dáng đẹp và màu sắc đỏ tươi đặc trưng. Đây là loại quả được trồng ở cao nguyên Đà Lạt với khí hậu mát mẻ quanh năm, mang lại hương vị đặc trưng so với các vùng khác.', 'Trái dâu tây có hình trái tim hoặc hình nón, bề mặt có các đốm hạt nhỏ li ti. Kích thước quả có thể khác nhau tùy theo loại giống và điều kiện canh tác.', 'Dâu tây không chỉ được sử dụng để ăn tươi mà còn là nguyên liệu cho các món tráng miệng, sinh tố, nước ép và các loại bánh ngọt. Ngoài ra, dâu tây còn chứa nhiều chất chống oxy hóa giúp bảo vệ sức khỏe và làm đẹp da.', 'Được trồng tại các nông trại ở Đà Lạt, Lâm Đồng, Việt Nam.', 'Trọng lượng của một quả dâu tây trung bình từ 10 - 30g. Các sản phẩm dâu tây có thể được đóng gói theo từng hộp từ 250g đến 1kg.', 'Dâu tây nên được bảo quản trong tủ lạnh ở nhiệt độ từ 0-4 độ C để giữ độ tươi ngon từ 3-5 ngày. Nên tránh ánh sáng mặt trời và để ở nơi khô ráo.', 'Dâu tây giàu vitamin C, kali, chất xơ và chất chống oxy hóa. Mỗi 100g dâu tây cung cấp khoảng 32 calo và có hàm lượng đường tự nhiên thấp.', 'Dâu tây thường được thu hoạch vào mùa xuân và mùa hè, nhưng ở Đà Lạt, dâu có thể được thu hoạch quanh năm nhờ khí hậu thuận lợi.', 'Dâu tây Đà Lạt có vị ngọt nhẹ, xen lẫn vị chua thanh mát, rất thơm và dễ ăn.', 'Thường dao động từ 8-12% tùy vào điều kiện thời tiết và thời điểm thu hoạch.', '<p><strong>Dâu tươi Đà Lạt: Hương vị ngọt ngào từ cao nguyên</strong></p><p><i>Dâu tây Đà Lạt</i> từ lâu đã trở thành một trong những loại trái cây đặc trưng của vùng đất cao nguyên mát mẻ. Với khí hậu ôn hòa và độ cao lý tưởng, Đà Lạt là nơi lý tưởng để canh tác và cho ra đời những trái dâu tây căng mọng, đỏ tươi và ngon ngọt.</p><p><strong>Đặc điểm nổi bật của dâu tây Đà Lạt:</strong></p><ul><li><strong>Hình dáng:</strong> Trái dâu Đà Lạt thường có <i>hình trái tim</i> hoặc <i>hình nón</i>, với bề mặt có những đốm hạt nhỏ li ti.</li><li><strong>Màu sắc:</strong> Dâu Đà Lạt mang một <i>màu đỏ rực rỡ</i> đặc trưng, tạo cảm giác tươi mới và hấp dẫn ngay từ cái nhìn đầu tiên.</li><li><strong>Hương vị:</strong> Một trong những yếu tố khiến dâu tây Đà Lạt nổi bật chính là <i>hương vị ngọt dịu</i>, xen lẫn vị chua thanh mát, tạo nên sự cân bằng tuyệt vời. Đây là loại dâu có vị ngọt tự nhiên, không gắt, rất dễ ăn.</li></ul><p><strong>Công dụng tuyệt vời của dâu tây:</strong></p><p>Dâu tây không chỉ là loại trái cây ăn tươi ngon miệng mà còn rất <i>giàu chất chống oxy hóa</i>, vitamin C, kali và chất xơ. Chúng không chỉ giúp tăng cường sức khỏe mà còn là lựa chọn hoàn hảo cho những ai quan tâm đến việc <i>làm đẹp da</i> và duy trì vóc dáng. Đặc biệt, dâu tây còn có thể làm nguyên liệu cho nhiều món ăn hấp dẫn như <i>sinh tố, bánh ngọt</i> và <i>nước ép</i>.</p><p><strong>Bảo quản và sử dụng:</strong></p><p>Để giữ được độ tươi ngon của dâu tây Đà Lạt, bạn nên bảo quản trong <i>ngăn mát tủ lạnh</i> ở nhiệt độ từ 0-4°C. Nếu được bảo quản đúng cách, dâu tây có thể tươi trong <i>3-5 ngày</i>. Nên tránh để dâu dưới ánh sáng mặt trời hoặc nơi có độ ẩm cao để giữ hương vị và chất lượng tốt nhất.</p><p><strong>Lời kết:</strong></p><p><i>Dâu tây Đà Lạt</i> không chỉ là một loại trái cây mà còn là <i>biểu tượng của sự tươi ngon và tinh khiết</i> từ vùng đất Đà Lạt. Với những ai yêu thích trái cây tươi, dâu tây chắc chắn là lựa chọn không thể bỏ qua.</p>', '2024-10-07 21:42:41', '2024-10-09 18:21:23'),
(7, 2, 'Cam tươi là loại trái cây thuộc họ cam quýt, giàu vitamin C và chất chống oxy hóa. Cam thường được dùng để ăn trực tiếp, ép nước, hoặc làm nguyên liệu trong các món ăn và đồ uống khác. Chúng có vị ngọt mát và chứa nhiều nước.', 'Quả cam có hình cầu, vỏ ngoài màu cam sáng, khi bóc ra, bên trong là các múi cam mọng nước với màu vàng cam đặc trưng.', 'Cam tươi giúp tăng cường hệ miễn dịch, tốt cho hệ tiêu hóa và tim mạch nhờ hàm lượng chất xơ và vitamin C cao. Ngoài ra, cam còn hỗ trợ làm đẹp da, giảm cholesterol, và cung cấp năng lượng nhanh chóng.', 'Cam tươi có thể được trồng tại nhiều vùng khác nhau của Việt Nam, nhưng cam từ các vùng như Hà Giang, Cao Phong (Hòa Bình), hay Ninh Thuận có chất lượng cao và hương vị đặc trưng.', 'Trung bình một quả cam nặng từ 150-250 gram tùy vào loại cam và điều kiện trồng trọt.', 'Cam tươi có thể được bảo quản ở nhiệt độ phòng trong 5-7 ngày hoặc lâu hơn nếu được giữ trong tủ lạnh ở nhiệt độ 4-8°C. Nên sử dụng sớm để đảm bảo độ mọng nước và hương vị.', 'Cam tươi chứa nhiều vitamin C, chất xơ, folate và các chất chống oxy hóa. Ngoài ra, cam còn có kali và một lượng nhỏ vitamin A, giúp cân bằng dinh dưỡng và tốt cho sức khỏe.', NULL, 'Cam tươi có hương vị ngọt dịu, pha chút chua nhẹ, rất sảng khoái. Nước cam ép thường có mùi thơm tự nhiên và vị thanh mát, rất phù hợp để giải khát.', 'Cam có nồng độ đường tự nhiên dao động từ 8-12%, tùy thuộc vào loại cam và mức độ chín của quả.', NULL, '2024-10-07 21:47:24', '2024-10-08 02:02:11'),
(8, 3, 'Táo Hàn Quốc là loại trái cây cao cấp, nổi tiếng với vỏ mỏng, màu đỏ đậm, giòn ngọt và chứa nhiều dưỡng chất. Táo thường được ăn trực tiếp, làm nước ép hoặc chế biến trong các món tráng miệng.', 'Quả táo có hình cầu hơi dẹt, vỏ ngoài màu đỏ sẫm hoặc vàng đỏ. Bên trong táo Hàn Quốc có màu trắng, giòn và mọng nước.', 'áo Hàn Quốc giàu chất xơ, vitamin C và chất chống oxy hóa. Táo giúp tăng cường sức khỏe tim mạch, hỗ trợ tiêu hóa, giảm cholesterol và đặc biệt tốt cho việc kiểm soát cân nặng.', 'Táo Hàn Quốc được trồng tại các vùng nông nghiệp nổi tiếng của Hàn Quốc, như Gyeongsangbuk-do. Khí hậu mát mẻ và kỹ thuật canh tác tiên tiến giúp táo đạt chất lượng cao.', 'Một quả táo Hàn Quốc nặng từ 200-350 gram, tùy thuộc vào loại và điều kiện trồng trọt.', 'Táo Hàn Quốc nên được bảo quản ở nhiệt độ từ 4-8°C trong tủ lạnh để giữ độ tươi ngon và giòn ngọt. Có thể giữ táo trong vòng 1-2 tuần.', 'Táo Hàn Quốc cung cấp nhiều chất xơ, vitamin C, kali và các chất chống oxy hóa, có lợi cho hệ tiêu hóa và giúp giảm nguy cơ mắc các bệnh tim mạch.', NULL, 'Táo Hàn Quốc có vị ngọt thanh và giòn sần sật khi cắn. Độ ngọt cao nhưng vẫn giữ được sự tươi mát.', 'Táo Hàn Quốc có nồng độ đường tự nhiên cao, dao động từ 12-14%, tùy thuộc vào độ chín của quả.', NULL, '2024-10-07 21:47:27', '2024-10-08 02:03:59'),
(9, 4, 'Chuối là loại trái cây quen thuộc, dễ ăn và giàu dinh dưỡng. Chuối có vị ngọt mềm, thường được dùng ăn trực tiếp, làm sinh tố hoặc kết hợp với nhiều món ăn khác. Chuối cũng là nguồn cung cấp năng lượng tuyệt vời.', 'Chuối có hình dáng dài cong, vỏ ngoài màu vàng khi chín và có đốm nâu khi quá chín. Thịt chuối bên trong mềm mịn, màu vàng nhạt.', 'Chuối cung cấp năng lượng nhanh chóng, giàu kali và vitamin B6, giúp cải thiện tiêu hóa, tăng cường sức khỏe tim mạch, hỗ trợ kiểm soát huyết áp, và cung cấp chất điện giải cho cơ thể.', 'Chuối được trồng phổ biến tại nhiều vùng nông nghiệp của Việt Nam, như Đồng bằng sông Cửu Long, miền Trung, và miền Bắc. Ngoài ra, chuối nhập khẩu cũng đến từ các quốc gia Đông Nam Á.', 'Một quả chuối trung bình nặng từ 100-150 gram, tùy vào giống chuối và kích thước quả.', 'Chuối nên được bảo quản ở nhiệt độ phòng và nên dùng trong vòng 3-5 ngày sau khi chín. Nếu chuối quá chín, có thể giữ trong tủ lạnh nhưng sẽ làm vỏ chuối sậm màu.', 'Chuối giàu vitamin C, vitamin B6, kali và chất xơ. Chuối là nguồn cung cấp carbohydrate tốt, giúp bổ sung năng lượng và điều hòa hệ tiêu hóa.', NULL, 'Chuối chín có vị ngọt mềm, thơm dịu, là một trong những loại trái cây phổ biến nhất nhờ sự tiện lợi và dinh dưỡng.', 'Chuối có nồng độ đường tự nhiên cao, dao động từ 12-18% khi chín, tùy vào giống và độ chín của quả.', NULL, '2024-10-07 21:47:30', '2024-10-08 02:04:32'),
(10, 6, 'Ớt chuông Đà Lạt (hay còn gọi là ớt ngọt) là loại rau quả giàu vitamin và khoáng chất, không cay như ớt thường. Ớt chuông có màu sắc bắt mắt, giòn ngọt và thường được dùng để nấu ăn, làm salad hoặc trang trí món ăn.', 'Ớt chuông có hình dạng gần giống một quả chuông, với các múi chia rõ ràng, vỏ ngoài mịn màng, và màu sắc đa dạng từ đỏ, xanh, vàng đến cam.', 'Ớt chuông chứa nhiều vitamin C, A, và chất chống oxy hóa. Ớt chuông có khả năng tăng cường hệ miễn dịch, hỗ trợ sức khỏe mắt, và giảm nguy cơ mắc bệnh tim mạch. Ngoài ra, nó còn giúp cải thiện làn da và sức khỏe tổng thể.', 'Ớt chuông Đà Lạt được trồng chủ yếu ở vùng cao nguyên Đà Lạt, nơi có khí hậu mát mẻ quanh năm, giúp cây phát triển tốt và cho trái giòn ngọt.', 'Một quả ớt chuông nặng trung bình từ 150-250 gram, tùy vào kích cỡ và màu sắc của quả.', 'Ớt chuông nên được bảo quản trong tủ lạnh ở nhiệt độ từ 7-10°C, có thể giữ tươi trong 1-2 tuần. Tránh để ớt tiếp xúc với độ ẩm cao để tránh bị hỏng nhanh.', 'Ớt chuông là nguồn cung cấp dồi dào vitamin C, A, chất xơ, và folate. Nó còn chứa các chất chống oxy hóa mạnh mẽ giúp bảo vệ cơ thể khỏi các gốc tự do.', NULL, 'Ớt chuông có vị ngọt thanh, giòn và không cay. Mỗi màu sắc của ớt chuông sẽ có độ ngọt và hương vị khác nhau, nhưng đều rất dễ ăn và thơm ngon.', 'Ớt chuông có nồng độ đường thấp, thường dưới 5%, phù hợp với những người thích ăn ít đường nhưng vẫn muốn có vị ngọt tự nhiên.', NULL, '2024-10-07 21:47:34', '2024-10-08 02:05:34'),
(11, 7, 'Khoai tây là một trong những loại rau củ phổ biến nhất trên thế giới, có thể chế biến thành nhiều món ăn đa dạng như chiên, luộc, nướng, nghiền. Khoai tây chứa nhiều carbohydrate và chất xơ, cung cấp nguồn năng lượng dồi dào.', 'Khoai tây có hình oval hoặc tròn, vỏ ngoài màu nâu vàng hoặc nâu sẫm, phần thịt bên trong có màu trắng hoặc vàng, tùy thuộc vào giống khoai tây.', 'Khoai tây là nguồn cung cấp carbohydrate, giúp cung cấp năng lượng cho cơ thể. Ngoài ra, nó còn giàu vitamin B6, C, kali và chất xơ, có lợi cho tiêu hóa, duy trì sức khỏe tim mạch và cải thiện hệ miễn dịch.', 'Khoai tây có thể được trồng ở nhiều nơi trên thế giới, nhưng tại Việt Nam, khoai tây chủ yếu được trồng ở các vùng cao nguyên như Đà Lạt, Lâm Đồng và Hà Giang.', 'Một củ khoai tây trung bình nặng khoảng 150-300 gram, tùy vào kích thước.', 'Khoai tây nên được bảo quản ở nơi khô ráo, thoáng mát và tránh ánh nắng trực tiếp. Nếu muốn giữ lâu hơn, có thể bảo quản ở nơi có nhiệt độ từ 7-10°C, tránh để khoai tây trong tủ lạnh vì sẽ làm biến đổi hương vị.', 'Khoai tây cung cấp nhiều carbohydrate, vitamin C, vitamin B6 và kali. Nó cũng chứa một lượng nhỏ chất sắt và chất xơ giúp hỗ trợ tiêu hóa.', NULL, 'Khoai tây có vị bùi béo và ngọt nhẹ khi nấu chín. Tùy thuộc vào cách chế biến, khoai tây có thể giòn rụm khi chiên, mềm mịn khi luộc hoặc nướng.', 'Khoai tây có nồng độ đường thấp, chủ yếu là tinh bột chuyển hóa thành glucose sau khi tiêu hóa.', NULL, '2024-10-07 21:47:39', '2024-10-08 02:08:15'),
(12, 8, 'Bông cải súp lơ (còn gọi là súp lơ trắng) là một loại rau giàu chất xơ và vitamin, rất tốt cho sức khỏe. Súp lơ có thể chế biến thành nhiều món ăn như hấp, luộc, xào, hoặc nấu canh. Đây là loại rau thường được sử dụng trong các chế độ ăn uống lành mạnh.', 'Bông cải súp lơ có hình dạng giống như một cụm hoa trắng lớn, với các nhánh nhỏ kết hợp lại. Phần \"hoa\" trắng là phần được ăn, trong khi phần cuống dày và xanh có thể được sử dụng để nấu canh.', 'Bông cải súp lơ chứa nhiều vitamin C, K và các chất chống oxy hóa, giúp tăng cường hệ miễn dịch, bảo vệ tế bào khỏi hư hại và cải thiện sức khỏe tim mạch. Nó cũng giàu chất xơ, hỗ trợ tiêu hóa và giúp duy trì cân nặng.', 'Bông cải súp lơ thường được trồng ở các vùng cao nguyên có khí hậu mát mẻ, chủ yếu là ở Đà Lạt và các tỉnh miền Bắc của Việt Nam.', 'Một bông cải súp lơ trung bình nặng từ 500 gram đến 1 kg, tùy vào kích thước và điều kiện trồng.', 'Bông cải súp lơ nên được bảo quản trong tủ lạnh ở nhiệt độ từ 4-8°C. Nếu để trong tủ lạnh, bông cải có thể giữ tươi trong khoảng 5-7 ngày.', 'Bông cải súp lơ chứa nhiều vitamin C, vitamin K, folate và chất xơ. Nó cũng là nguồn cung cấp các chất chống oxy hóa mạnh mẽ, có thể giúp bảo vệ cơ thể khỏi các bệnh mãn tính.', NULL, 'Bông cải súp lơ có hương vị thanh nhẹ, ngọt dịu và hơi giòn khi nấu. Khi nấu chín, súp lơ giữ được vị ngọt tự nhiên và rất ngon khi ăn kèm với các loại sốt hoặc gia vị.', 'Bông cải súp lơ có hàm lượng đường rất thấp, phù hợp với những người theo chế độ ăn ít đường hoặc muốn kiểm soát cân nặng.', NULL, '2024-10-07 21:47:42', '2024-10-08 02:08:50'),
(13, 9, 'Mâm xôi (hay còn gọi là quả dâu rừng) là loại trái cây giàu dinh dưỡng, đặc biệt là các chất chống oxy hóa. Quả mâm xôi nhỏ, màu đỏ hoặc đen, có vị ngọt xen lẫn chua nhẹ và thường được sử dụng làm nguyên liệu cho các món bánh, mứt, hoặc ăn trực tiếp.', 'Quả mâm xôi có hình dáng nhỏ, kết cấu giống như những viên nhỏ gắn kết lại, với màu đỏ hoặc đen tùy loại. Mỗi quả mâm xôi có hình dáng tròn và bề mặt sần sùi đặc trưng.', 'Mâm xôi chứa nhiều vitamin C, chất xơ và chất chống oxy hóa giúp tăng cường hệ miễn dịch, hỗ trợ tiêu hóa và cải thiện sức khỏe tim mạch. Ngoài ra, nó còn có khả năng chống lão hóa và hỗ trợ giảm cân nhờ lượng calo thấp.', 'Mâm xôi được trồng tại các vùng có khí hậu mát mẻ, ở Việt Nam chủ yếu được trồng ở Đà Lạt và các khu vực có điều kiện thời tiết tương tự.', 'Một hộp mâm xôi thường có trọng lượng từ 150-250 gram.', 'Mâm xôi nên được bảo quản trong tủ lạnh ở nhiệt độ 4-6°C và sử dụng trong vòng 2-3 ngày sau khi mua. Quả rất nhạy cảm và dễ hỏng nên cần giữ lạnh liên tục.', 'Mâm xôi giàu chất xơ, vitamin C, vitamin K, và mangan. Ngoài ra, nó còn chứa các hợp chất thực vật mạnh mẽ như anthocyanin, giúp ngăn ngừa viêm và bảo vệ cơ thể khỏi các bệnh mạn tính.', NULL, 'Mâm xôi có vị ngọt thanh, chua nhẹ, hương thơm dịu và rất thích hợp để làm mứt, nước ép, hoặc ăn tươi. Khi chín, mâm xôi sẽ ngọt hơn và thơm đậm đà hơn.', 'Mâm xôi có nồng độ đường tự nhiên khá thấp, thường khoảng 4-7%, phù hợp với người ăn kiêng hoặc cần kiểm soát lượng đường trong cơ thể.', NULL, '2024-10-07 21:47:45', '2024-10-08 02:06:23'),
(14, 10, 'Nho là loại trái cây giàu dinh dưỡng, được yêu thích nhờ vị ngọt thanh, mọng nước và giàu chất chống oxy hóa. Nho có thể được ăn trực tiếp, làm nước ép, rượu vang hoặc các món tráng miệng. Có nhiều loại nho khác nhau như nho xanh, nho đỏ, nho đen.', 'Nho có hình tròn hoặc hơi bầu dục, vỏ mỏng. Tùy thuộc vào loại, nho có màu sắc từ xanh, đỏ đến tím đen, với phần thịt mọng nước bên trong.', 'Nho chứa nhiều vitamin C, K và chất chống oxy hóa như resveratrol, giúp bảo vệ tim mạch, tăng cường hệ miễn dịch và ngăn ngừa lão hóa. Nó cũng giàu chất xơ, giúp cải thiện hệ tiêu hóa.', 'Nho được trồng phổ biến ở các vùng khí hậu ôn đới như Mỹ, Chile, Úc và Việt Nam (tỉnh Ninh Thuận). Nho Ninh Thuận là giống nho được ưa chuộng nhờ vị ngọt và hương thơm đặc trưng.', 'Một chùm nho trung bình nặng từ 300-500 gram.', 'Nho nên được bảo quản trong tủ lạnh ở nhiệt độ 4-6°C để giữ tươi lâu hơn. Có thể bảo quản trong vòng 7-10 ngày. Tránh để nho tiếp xúc với ánh nắng trực tiếp vì sẽ làm hỏng nhanh.', 'Nho chứa nhiều vitamin C, K, kali và chất chống oxy hóa mạnh. Nó có lợi cho sức khỏe tim mạch, cải thiện lưu thông máu và giảm nguy cơ mắc các bệnh mãn tính.', NULL, 'Nho có vị ngọt thanh, mọng nước và rất thơm. Loại nho đỏ và đen thường có vị đậm đà hơn, trong khi nho xanh có vị chua nhẹ.', 'Nho có nồng độ đường tự nhiên dao động từ 12-20%, tùy thuộc vào loại và độ chín của trái.', NULL, '2024-10-07 21:47:51', '2024-10-08 02:09:35'),
(15, 11, 'Chanh là loại trái cây thuộc họ cam quýt, có vị chua đặc trưng và chứa nhiều vitamin C. Chanh được sử dụng rộng rãi trong nấu ăn, làm nước ép, gia vị hoặc làm nguyên liệu trong các loại nước uống giải khát. Nó cũng được sử dụng trong các công thức làm đẹp tự nhiên.', 'Chanh có hình bầu dục hoặc tròn, vỏ ngoài mỏng và nhẵn, màu xanh lá cây hoặc vàng khi chín. Bên trong là phần thịt mọng nước có màu vàng nhạt.', 'Chanh chứa nhiều vitamin C, giúp tăng cường hệ miễn dịch, làm đẹp da, hỗ trợ tiêu hóa và giải nhiệt. Chanh cũng có tác dụng thanh lọc cơ thể, hỗ trợ giảm cân và cân bằng điện giải trong cơ thể.', 'Chanh được trồng phổ biến tại nhiều vùng nông nghiệp Việt Nam, đặc biệt là ở các vùng đồng bằng sông Cửu Long, nơi có điều kiện đất đai màu mỡ và khí hậu ấm áp. Ngoài ra, chanh còn được nhập khẩu từ các nước nhiệt đới khác.', 'Một quả chanh trung bình nặng khoảng 50-100 gram.', 'Chanh có thể được bảo quản ở nhiệt độ phòng trong 1-2 tuần. Nếu muốn giữ chanh tươi lâu hơn, có thể bảo quản trong tủ lạnh ở nhiệt độ 4-8°C, kéo dài thời gian bảo quản lên đến 3-4 tuần.', 'Chanh chứa nhiều vitamin C, chất xơ, kali và một lượng nhỏ vitamin B6. Nó giúp tăng cường hệ miễn dịch, giảm viêm và hỗ trợ quá trình thải độc của cơ thể.', NULL, 'Chanh có vị chua đặc trưng, hơi đắng nhẹ ở phần vỏ. Vị chua thanh mát của chanh rất phù hợp để làm gia vị hoặc thức uống giải khát vào mùa hè.', 'Chanh có nồng độ đường rất thấp, thường dưới 2%, chủ yếu là axit citric mang lại vị chua tự nhiên cho trái.', NULL, '2024-10-07 21:47:54', '2024-10-08 02:10:08'),
(16, 12, 'Dưa lưới là loại trái cây giàu dinh dưỡng, có vị ngọt thanh, thơm mát và giàu nước. Dưa lưới thường được dùng để ăn tươi, làm nước ép hoặc trang trí món tráng miệng. Loại trái cây này rất phổ biến trong mùa hè, mang lại cảm giác tươi mát.', 'Dưa lưới có hình cầu hoặc hình bầu dục, vỏ ngoài sần sùi với các đường vân đặc trưng. Vỏ có màu xanh nhạt, bên trong là phần thịt màu cam hoặc xanh, mọng nước.', 'Dưa lưới giàu vitamin C, vitamin A và chất chống oxy hóa giúp tăng cường hệ miễn dịch, tốt cho da và mắt. Nó còn chứa nhiều nước, giúp cơ thể giải nhiệt và duy trì độ ẩm trong những ngày nóng bức.', 'Dưa lưới thường được trồng tại các vùng có khí hậu ấm áp như Bình Thuận, Ninh Thuận, và Tây Ninh của Việt Nam. Ngoài ra, dưa lưới nhập khẩu cũng phổ biến từ các nước như Nhật Bản, Hàn Quốc.', 'Một quả dưa lưới trung bình nặng khoảng 1-2,5 kg tùy vào loại và điều kiện trồng trọt.', 'Dưa lưới nên được bảo quản trong tủ lạnh ở nhiệt độ từ 4-8°C sau khi cắt. Trái nguyên có thể để ở nhiệt độ phòng trong 5-7 ngày, hoặc lâu hơn nếu bảo quản trong tủ lạnh.', 'Dưa lưới chứa nhiều vitamin A, vitamin C, kali, và chất chống oxy hóa. Nó cũng là một nguồn cung cấp nước tuyệt vời giúp giữ ẩm cho cơ thể và tốt cho sức khỏe tiêu hóa.', NULL, 'Dưa lưới có vị ngọt mát, hương thơm nhẹ nhàng, phần thịt mềm và mọng nước, rất thích hợp để làm món tráng miệng hoặc ăn tươi.', 'Nồng độ đường trong dưa lưới dao động từ 10-14%, tạo nên vị ngọt tự nhiên, thanh mát.', NULL, '2024-10-07 21:48:00', '2024-10-08 02:11:12'),
(17, 13, 'Hồng xiêm (hay còn gọi là sapoche) là loại trái cây nhiệt đới với vị ngọt đậm đà và hương thơm dịu nhẹ. Quả hồng xiêm thường được ăn tươi, có thể làm sinh tố, hoặc kết hợp với các món tráng miệng khác.', 'Quả hồng xiêm có hình oval hoặc tròn, vỏ ngoài màu nâu sẫm, bề mặt mịn. Bên trong là phần thịt mềm, màu nâu nhạt hoặc vàng, chứa nhiều nước và đường.', 'Hồng xiêm giàu năng lượng, vitamin C và các khoáng chất như canxi, sắt, và phốt pho. Quả có tác dụng bổ sung năng lượng nhanh chóng, giúp hỗ trợ hệ tiêu hóa và cải thiện làn da.', 'Hồng xiêm chủ yếu được trồng tại các tỉnh miền Nam Việt Nam như Tiền Giang, Long An, và Tây Ninh, nơi có khí hậu nhiệt đới và đất đai màu mỡ.', 'Một quả hồng xiêm nặng khoảng 100-200 gram, tùy vào giống và điều kiện trồng trọt.', 'Hồng xiêm nên được bảo quản ở nhiệt độ phòng cho đến khi chín mềm. Khi đã chín, có thể giữ trong tủ lạnh từ 3-5 ngày để tránh bị hỏng.', 'Hồng xiêm chứa nhiều đường tự nhiên, vitamin C, canxi, và chất xơ. Nó là nguồn cung cấp năng lượng tốt, giúp cải thiện hệ tiêu hóa và làm đẹp da.', NULL, 'Hồng xiêm có vị ngọt đậm, thơm dịu, thịt quả mềm mịn. Khi chín, quả có độ ngọt cao và rất dễ ăn.', 'Hồng xiêm có nồng độ đường khá cao, dao động từ 15-22%, tùy thuộc vào độ chín của quả.', NULL, '2024-10-07 21:48:03', '2024-10-08 02:11:52'),
(18, 14, 'Rau muống là loại rau xanh phổ biến trong ẩm thực Việt Nam, có thể chế biến thành nhiều món ăn như luộc, xào, hoặc nấu canh. Rau muống là loại rau dễ trồng và chứa nhiều dinh dưỡng có lợi cho sức khỏe.', 'Rau muống có thân dài, lá hình mũi mác, màu xanh đậm. Phần thân giòn, lá mềm, thích hợp cho nhiều cách chế biến khác nhau.', 'Rau muống chứa nhiều vitamin A, C, sắt, và canxi. Nó có tác dụng tốt cho mắt, tăng cường sức khỏe xương và răng, cải thiện hệ tiêu hóa, và giúp giải nhiệt cơ thể.', 'Rau muống được trồng phổ biến tại Việt Nam, từ các vùng đồng bằng đến miền núi. Rau muống trồng ở các vùng nước ngọt như miền Tây Nam Bộ thường có chất lượng cao.', 'Một bó rau muống trung bình nặng khoảng 300-500 gram.', 'Rau muống nên được bảo quản trong tủ lạnh ở nhiệt độ 4-8°C và sử dụng trong vòng 2-3 ngày sau khi mua. Nếu bảo quản quá lâu, rau sẽ mất độ tươi và giòn.', 'Rau muống chứa nhiều vitamin A, C, chất sắt và canxi. Nó là loại rau xanh có lợi cho sức khỏe mắt, hệ tiêu hóa, và giúp thanh nhiệt cho cơ thể.', NULL, 'Rau muống có vị giòn ngọt, thơm nhẹ và thanh mát. Khi xào hoặc luộc, rau giữ được độ giòn và màu xanh đẹp mắt, rất phù hợp với các món ăn gia đình.', 'Rau muống có hàm lượng đường thấp và chủ yếu giàu chất xơ, vitamin.', NULL, '2024-10-07 21:48:05', '2024-10-08 02:12:35'),
(19, 15, 'Bí đỏ (hay bí ngô) là loại rau củ phổ biến, có màu cam đặc trưng và giàu dinh dưỡng. Bí đỏ thường được sử dụng trong nhiều món ăn như súp, canh, hầm, nấu cháo hoặc làm bánh. Nó là một nguồn cung cấp dồi dào vitamin và khoáng chất, giúp tăng cường sức khỏe tổng thể.', 'Bí đỏ có hình dáng to tròn hoặc hơi dẹt, vỏ ngoài cứng và màu vàng cam hoặc xanh lục sẫm. Phần thịt bên trong dày, có màu cam rực rỡ, chứa nhiều hạt nhỏ ở phần giữa.', 'Bí đỏ rất giàu vitamin A, C, E, và beta-carotene, giúp cải thiện thị lực, tăng cường hệ miễn dịch và chống lão hóa. Ngoài ra, bí đỏ còn chứa nhiều chất xơ, giúp hỗ trợ tiêu hóa và kiểm soát cân nặng. Nó cũng là thực phẩm tốt cho tim mạch và có khả năng chống viêm.', 'Bí đỏ được trồng phổ biến tại nhiều vùng nông nghiệp của Việt Nam, đặc biệt ở các vùng đất phù sa màu mỡ như Đồng bằng sông Cửu Long và các vùng cao nguyên. Các giống bí đỏ địa phương thường có chất lượng cao và hương vị thơm ngon.', 'Một quả bí đỏ có khối lượng trung bình từ 1-3 kg, tùy vào giống và điều kiện trồng trọt.', 'Bí đỏ nguyên quả có thể được bảo quản ở nơi thoáng mát, khô ráo trong vòng 1-3 tháng. Sau khi cắt, bí đỏ nên được bảo quản trong tủ lạnh ở nhiệt độ từ 4-8°C và nên sử dụng trong vòng 5-7 ngày.', 'Bí đỏ giàu vitamin A, C, chất xơ, kali và chất chống oxy hóa. Đây là nguồn thực phẩm tốt cho thị lực, làn da, và hệ tiêu hóa. Nó cũng có hàm lượng calo thấp, rất phù hợp với các chế độ ăn kiêng.', NULL, 'Bí đỏ có vị ngọt thanh tự nhiên, thơm dịu và béo nhẹ khi nấu chín. Nó phù hợp với nhiều món ăn từ món mặn đến món ngọt, như canh bí, súp bí, hoặc các món tráng miệng.', 'Bí đỏ có nồng độ đường tự nhiên thấp, khoảng 6-8%, nhưng khi nấu chín, vị ngọt sẽ rõ hơn, tạo cảm giác dễ chịu và ngon miệng.', NULL, '2024-10-07 21:48:08', '2024-10-08 02:13:09'),
(20, 16, 'Combo A bao gồm nhiều loại rau củ tươi sạch và chất lượng cao, thích hợp cho các bữa ăn gia đình. Combo này gồm các loại rau như cải thảo, súp lơ, bắp cải, ớt chuông, cà rốt, cà chua, dưa chuột và các loại rau khác, đảm bảo cung cấp đầy đủ dưỡng chất thiết yếu.', 'Thành phần:  Cải thảo: Giàu vitamin C và chất xơ, giúp tăng cường hệ miễn dịch và tốt cho tiêu hóa. Súp lơ xanh: Chứa nhiều vitamin C, K và folate, có lợi cho tim mạch và xương. Bắp cải: Tốt cho hệ tiêu hóa và chứa nhiều chất chống oxy hóa. Ớt chuông: Giàu vitamin C và A, có tác dụng tăng cường sức khỏe mắt và da. Cà rốt: Giúp cải thiện thị lực, giàu beta-carotene. Cà chua: Tốt cho da và sức khỏe tim mạch nhờ chứa nhiều lycopene. Dưa chuột: Cung cấp nước và các chất chống oxy hóa, tốt cho làn da và giải nhiệt cơ thể.', 'Combo A phù hợp cho nhiều món ăn như xào, luộc, làm salad, nấu canh, hoặc ăn kèm. Mỗi loại rau trong combo đều có nhiều lợi ích sức khỏe, giúp bổ sung vitamin, khoáng chất và chất xơ cho cơ thể.', NULL, NULL, 'Các loại rau trong combo nên được bảo quản trong tủ lạnh ở nhiệt độ 4-8°C và sử dụng trong vòng 3-5 ngày để giữ độ tươi ngon.', NULL, NULL, NULL, NULL, NULL, '2024-10-07 21:48:11', '2024-10-08 02:14:50'),
(23, 20, 'Combo A - Trái Cây Tươi là sự kết hợp hoàn hảo của các loại trái cây tươi ngon, được tuyển chọn kỹ lưỡng. Combo này mang lại sự cân bằng về hương vị và dinh dưỡng, thích hợp cho các bữa tiệc nhỏ, ăn vặt lành mạnh hoặc làm quà tặng.', 'Thành phần:  Xoài: Giàu vitamin A, C và chất chống oxy hóa, giúp tăng cường hệ miễn dịch và cải thiện thị lực. Dưa vàng: Chứa nhiều nước và chất điện giải, giúp giải khát và cung cấp vitamin A, C. Kiwi: Rất giàu vitamin C và chất xơ, giúp tăng cường tiêu hóa và cải thiện làn da. Nho đỏ: Nguồn cung cấp chất chống oxy hóa, giúp bảo vệ sức khỏe tim mạch và cải thiện tuần hoàn máu. Bưởi hồng: Chứa nhiều vitamin C, giúp giải nhiệt cơ thể, hỗ trợ tiêu hóa và tăng cường miễn dịch. Dứa: Giàu enzyme bromelain, có tác dụng chống viêm, hỗ trợ tiêu hóa và làm đẹp da.', 'Combo trái cây này là lựa chọn hoàn hảo cho những ai muốn bổ sung vitamin và khoáng chất hàng ngày. Nó phù hợp để làm món tráng miệng, ăn nhẹ hoặc dùng trong các buổi tiệc. Trái cây tươi không chỉ giúp giải nhiệt mà còn cung cấp năng lượng và dinh dưỡng.', NULL, NULL, 'Trái cây trong combo nên được bảo quản trong tủ lạnh ở nhiệt độ từ 4-6°C và nên sử dụng trong vòng 1-2 ngày để giữ độ tươi ngon.', NULL, NULL, 'Mỗi loại trái cây trong combo đều có hương vị tự nhiên tươi mát, từ vị ngọt thơm của xoài và dứa đến vị chua thanh nhẹ của bưởi và kiwi, tạo nên sự cân bằng hoàn hảo.', NULL, NULL, '2024-10-08 02:16:59', '2024-10-08 02:16:59');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `danhgiakhachhangs`
--

CREATE TABLE `danhgiakhachhangs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `sanphams_id` bigint(20) UNSIGNED NOT NULL,
  `ho_ten` varchar(255) NOT NULL,
  `tieude` varchar(255) DEFAULT NULL,
  `so_sao` int(11) NOT NULL DEFAULT 5,
  `noi_dung` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `danhgiakhachhangs`
--

INSERT INTO `danhgiakhachhangs` (`id`, `sanphams_id`, `ho_ten`, `tieude`, `so_sao`, `noi_dung`, `created_at`, `updated_at`) VALUES
(6, 8, 'asd', NULL, 1, 'asd', '2024-10-09 19:12:57', '2024-10-09 19:12:57'),
(10, 4, 'asd', NULL, 5, 'sad', '2024-10-09 19:59:09', '2024-10-09 19:59:09');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `danhsachsanpham`
--

CREATE TABLE `danhsachsanpham` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `danhsachsanpham`
--

INSERT INTO `danhsachsanpham` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Trái cây tươi', '2024-10-01 03:39:08', '2024-10-08 02:58:51'),
(2, 'rau củ', '2024-10-01 03:39:13', '2024-10-01 03:39:13'),
(3, 'Combo rau ', '2024-10-02 02:23:32', '2024-10-02 02:23:32'),
(5, 'Combo Trái Cây Tươi', '2024-10-04 04:05:16', '2024-10-06 02:48:34');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `diachichitiets`
--

CREATE TABLE `diachichitiets` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `diachi` varchar(255) NOT NULL DEFAULT 'No address provided',
  `email` varchar(255) NOT NULL,
  `sdt` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `status` varchar(255) DEFAULT 'không sử dụng'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `diachichitiets`
--

INSERT INTO `diachichitiets` (`id`, `diachi`, `email`, `sdt`, `created_at`, `updated_at`, `status`) VALUES
(1, 'Xã Tân Thạnh Đông,Củ Chi,Thành phố Hồ Chí Minh', 'admin@gmail.com', '0123456789', '2024-10-01 03:42:44', '2024-10-07 01:50:46', 'không sử dụng'),
(2, 'tân bình', 'admin1@gmail.com', '0778719281', '2024-10-08 04:13:56', '2024-10-08 04:39:07', 'đang sử dụng');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hoadonchitiets`
--

CREATE TABLE `hoadonchitiets` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `bill_id` bigint(20) UNSIGNED NOT NULL,
  `sanpham_ids` text NOT NULL,
  `quantity` int(11) NOT NULL DEFAULT 1,
  `price` decimal(15,3) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hoadons`
--

CREATE TABLE `hoadons` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_code` varchar(255) DEFAULT NULL,
  `khachhang_id` bigint(20) UNSIGNED NOT NULL,
  `total_price` decimal(15,3) NOT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'Chờ xử lý',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `khachhangs`
--

CREATE TABLE `khachhangs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `ten` varchar(255) NOT NULL,
  `ho` varchar(255) NOT NULL,
  `diachicuthe` varchar(255) NOT NULL,
  `thanhpho` varchar(255) NOT NULL,
  `sdt` varchar(255) NOT NULL,
  `Emaildiachi` varchar(255) NOT NULL,
  `ghichu` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `lien_hes`
--

CREATE TABLE `lien_hes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `ten` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `sdt` varchar(255) NOT NULL,
  `ghichu` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(7, '2024_09_20_113610_create_khachhangs_table', 2),
(8, '2024_09_23_081627_create_khach_hang_table', 3),
(9, '2024_09_23_082024_create_hoa_don_table', 3),
(10, '2024_09_23_082053_create_hoa_doan_chitiet_table', 3),
(20, '2014_10_12_000000_create_users_table', 4),
(21, '2014_10_12_100000_create_password_reset_tokens_table', 4),
(22, '2019_08_19_000000_create_failed_jobs_table', 4),
(23, '2019_12_14_000001_create_personal_access_tokens_table', 4),
(24, '2024_09_19_122329_create_sanphams_table', 4),
(25, '2024_09_19_122421_create_danhsachsanpham_table', 4),
(26, '2024_10_01_090511_create_diachichitiets_table', 4),
(27, '2024_10_01_095838_create_lien_hes_table', 4),
(28, '2024_10_02_110351_create_khachhangs_table', 5),
(29, '2024_10_02_110352_create_hoadons_table', 6),
(30, '2024_10_02_110637_create_hoadonchitiets_table', 7),
(31, '2024_10_02_112632_create_hoadonchitiets_table', 8),
(32, '2024_10_03_101717_add_order_code_to_hoadons_table', 9),
(33, '2024_10_03_103320_add_order_code_to_hoadons_table', 10),
(34, '2024_10_03_110357_add_status_to_hoadons_table', 11),
(35, '2024_10_04_042712_add_quantity_to_hoadonchitiets_table', 12),
(36, '2024_10_04_051846_add_quantity_to_hoadonchitiets_table', 13),
(37, '2024_10_04_063144_add_quantity_to_hoadonchitiets_table', 14),
(38, '2024_10_04_090208_create_doanhthu_table', 15),
(39, '2024_10_04_092656_create_doanhthu_table', 16),
(40, '2024_10_04_094443_create_danhthus_table', 17),
(41, '2024_10_07_100634_create_admins_table', 18),
(42, '2024_10_08_030010_create_chitiets_table', 19),
(43, '2024_10_08_031208_create_chitiets_table', 20),
(44, '2024_10_10_003430_add_bai-viet_to_chitiets_table', 21),
(45, '2024_10_10_013414_create_danhgiakhachhangs_table', 22);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sanphams`
--

CREATE TABLE `sanphams` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `price` decimal(8,3) NOT NULL,
  `don_vi_tinh` varchar(50) DEFAULT NULL,
  `image` varchar(255) NOT NULL,
  `status` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `danhsachsanpham_id` bigint(20) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `sanphams`
--

INSERT INTO `sanphams` (`id`, `title`, `price`, `don_vi_tinh`, `image`, `status`, `created_at`, `updated_at`, `danhsachsanpham_id`) VALUES
(1, 'Dâu tươi Đà Lạt', 250.000, 'Kg', 'products/mTnGLJzu9N0jqT08M7hfT3szAQu5TLYJd3dFHcIv.jpg', 'Còn hàng', '2024-10-01 03:39:34', '2024-10-09 20:11:08', 1),
(2, 'cam', 150.000, 'Kg', 'products/XbmrFOF4tIdIU8IkGwYkRRCtoSPnv3LU13VKdc3n.jpg', 'Hết hàng', '2024-10-01 22:40:21', '2024-10-09 06:09:18', 1),
(3, 'Táo Hàn Quốc', 200.000, 'Kg', 'products/nQOnQxez56Oj68iPbYcPO5wIchra5bV78gMTKS1r.jpg', 'Còn hàng', '2024-10-02 01:18:11', '2024-10-07 21:47:27', 1),
(4, 'Chuối', 20.000, 'Kg', 'products/EI5zHtnPEPpeJVzUmv1zjMakuX24wthvQ3niMRAP.jpg', 'Còn hàng', '2024-10-02 01:18:42', '2024-10-07 21:47:30', 1),
(6, 'Ớt chuông Đà Lạt', 100.000, 'Kg', 'products/0oLVKR5D7cLxS0v96N3LVU3H8PRNDnuZdbrNhuiI.jpg', 'Còn hàng', '2024-10-02 01:19:32', '2024-10-07 21:47:34', 2),
(7, 'Khoai Tây', 40.000, 'Kg', 'products/LYePTxmyXm9inzZG1gdzoxEr3dLndsYYNgiqgCqH.jpg', 'Còn hàng', '2024-10-02 01:19:50', '2024-10-07 21:47:39', 2),
(8, 'bông cải (súp lơ)', 60.000, 'Kg', 'products/kyyVAlGwIqSgY86bgul7OrbuzOU2r3DnxgyIVOjl.jpg', 'Còn hàng', '2024-10-02 01:20:09', '2024-10-07 21:47:42', 2),
(9, 'Mâm xôi', 300.000, 'Kg', 'products/cQNppiDK4IYUCWTlA5rZTzNAA4typJKKPi6SzDZG.jpg', 'Còn hàng', '2024-10-02 01:26:52', '2024-10-07 21:47:45', 1),
(10, 'Nho', 250.000, 'Kg', 'products/VbK90OtNZfFuDHbYc7oYqHIwyClrKE1bWxYSr3h8.jpg', 'Còn hàng', '2024-10-02 01:27:12', '2024-10-07 21:47:51', 1),
(11, 'Chanh', 50.000, 'Kg', 'products/yWM7J8MxpiXv9BRDlYSeIpl9vU9iG1bYZk5CS7cF.jpg', 'Còn hàng', '2024-10-02 02:18:02', '2024-10-07 21:47:54', 2),
(12, 'Dưa Lưới', 60.000, 'Kg', 'products/FBtA2pYOX2ZAIco7yArXp1Fjm5GAU2amgROgnL2y.jpg', 'Còn hàng', '2024-10-02 02:19:22', '2024-10-07 21:48:00', 1),
(13, 'Hồng Xiêm', 60.000, 'Kg', 'products/Ca7XZXuEHCjHAKaiZoyicCF2vokO0wDaTxo6XUSU.jpg', 'Còn hàng', '2024-10-02 02:20:22', '2024-10-07 21:48:03', 1),
(14, 'Rau Muống', 20.000, 'Kg', 'products/30yaKFmVQAOYtawa4NKjrLiwWmZxsPT7KeesgooD.jpg', 'Còn hàng', '2024-10-02 02:21:32', '2024-10-07 21:48:05', 2),
(15, 'Bí đỏ', 25.000, 'Kg', 'products/tDrCtTQL6fOHVr9ZaEGSdyzpk4TofIuCZdie5gsm.jpg', 'Còn hàng', '2024-10-02 02:22:57', '2024-10-07 21:48:08', 2),
(16, 'Combo A', 400.000, 'Phần', 'products/B3g2naDTVZubUODq1ay8wDKGnM1doVGFNWXdiLBP.webp', 'Còn hàng', '2024-10-02 02:26:37', '2024-10-07 21:48:11', 3),
(17, 'Combo B', 200.000, 'Phần', 'products/BIn7tblIDsOD7ReGxc4su9KiipEng43Z8ZDRtrXh.jpg', 'Còn hàng', '2024-10-02 02:27:54', '2024-10-07 21:48:20', 3),
(20, 'ComboA', 350.000, 'Phần', 'products/WOZZkV02XTqoibUZ3PzdeFCJ9jendBq23hRrbPFN.jpg', 'Còn hàng', '2024-10-06 02:50:32', '2024-10-07 21:48:28', 5);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admins_username_unique` (`username`);

--
-- Chỉ mục cho bảng `chitiets`
--
ALTER TABLE `chitiets`
  ADD PRIMARY KEY (`id`),
  ADD KEY `chitiets_sanphams_id_foreign` (`sanphams_id`);

--
-- Chỉ mục cho bảng `danhgiakhachhangs`
--
ALTER TABLE `danhgiakhachhangs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `danhgiakhachhangs_sanphams_id_foreign` (`sanphams_id`);

--
-- Chỉ mục cho bảng `danhsachsanpham`
--
ALTER TABLE `danhsachsanpham`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `diachichitiets`
--
ALTER TABLE `diachichitiets`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `diachichitiets_email_unique` (`email`);

--
-- Chỉ mục cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Chỉ mục cho bảng `hoadonchitiets`
--
ALTER TABLE `hoadonchitiets`
  ADD PRIMARY KEY (`id`),
  ADD KEY `hoadonchitiets_bill_id_foreign` (`bill_id`);

--
-- Chỉ mục cho bảng `hoadons`
--
ALTER TABLE `hoadons`
  ADD PRIMARY KEY (`id`),
  ADD KEY `hoadons_khachhang_id_foreign` (`khachhang_id`);

--
-- Chỉ mục cho bảng `khachhangs`
--
ALTER TABLE `khachhangs`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `lien_hes`
--
ALTER TABLE `lien_hes`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Chỉ mục cho bảng `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Chỉ mục cho bảng `sanphams`
--
ALTER TABLE `sanphams`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sanphams_danhsachsanpham_id_foreign` (`danhsachsanpham_id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `chitiets`
--
ALTER TABLE `chitiets`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT cho bảng `danhgiakhachhangs`
--
ALTER TABLE `danhgiakhachhangs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT cho bảng `danhsachsanpham`
--
ALTER TABLE `danhsachsanpham`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `diachichitiets`
--
ALTER TABLE `diachichitiets`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `hoadonchitiets`
--
ALTER TABLE `hoadonchitiets`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT cho bảng `hoadons`
--
ALTER TABLE `hoadons`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT cho bảng `khachhangs`
--
ALTER TABLE `khachhangs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT cho bảng `lien_hes`
--
ALTER TABLE `lien_hes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT cho bảng `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=82;

--
-- AUTO_INCREMENT cho bảng `sanphams`
--
ALTER TABLE `sanphams`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `chitiets`
--
ALTER TABLE `chitiets`
  ADD CONSTRAINT `chitiets_sanphams_id_foreign` FOREIGN KEY (`sanphams_id`) REFERENCES `sanphams` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `danhgiakhachhangs`
--
ALTER TABLE `danhgiakhachhangs`
  ADD CONSTRAINT `danhgiakhachhangs_sanphams_id_foreign` FOREIGN KEY (`sanphams_id`) REFERENCES `sanphams` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `hoadonchitiets`
--
ALTER TABLE `hoadonchitiets`
  ADD CONSTRAINT `hoadonchitiets_bill_id_foreign` FOREIGN KEY (`bill_id`) REFERENCES `hoadons` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `hoadons`
--
ALTER TABLE `hoadons`
  ADD CONSTRAINT `hoadons_khachhang_id_foreign` FOREIGN KEY (`khachhang_id`) REFERENCES `khachhangs` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `sanphams`
--
ALTER TABLE `sanphams`
  ADD CONSTRAINT `sanphams_danhsachsanpham_id_foreign` FOREIGN KEY (`danhsachsanpham_id`) REFERENCES `danhsachsanpham` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
