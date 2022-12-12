CREATE DATABASE FashionSneaker;
GO

USE FashionSneaker;
GO

CREATE TABLE [user] (
	id INT IDENTITY(1,1) PRIMARY KEY,
	email VARCHAR(50) NOT NULL,
    address NVARCHAR(100) NULL,
	full_name NVARCHAR(50) NOT NULL,
	phone_number VARCHAR(50) NULL,
	password VARCHAR(50) NOT NULL,
	isAdmin BIT NOT NULL
)
GO

CREATE TABLE category (
	id INT IDENTITY(1,1) PRIMARY KEY,
	category_name NVARCHAR(50) NOT NULL
)
GO

CREATE TABLE brand (
	id INT IDENTITY(1,1) PRIMARY KEY,
	brand_name NVARCHAR(20) NOT NULL
)
GO

CREATE TABLE product (
	id INT IDENTITY(1,1) PRIMARY KEY,
	category_id INT FOREIGN KEY REFERENCES category(id),
	brand_id INT FOREIGN KEY REFERENCES brand(id),
	product_name NVARCHAR(50) NOT NULL,
	description NVARCHAR(MAX) NOT NULL,
	price INT NOT NULL,
	size VARCHAR(20) NOT NULL,
	quantity INT NOT NULL,
	img_url VARCHAR(100) NOT NULL,
)
GO 

CREATE TABLE receipt (
	id INT IDENTITY(1,1) PRIMARY KEY,
	[user_id] INT FOREIGN KEY REFERENCES [user](id),
        total_money INT NOT NULL,
	createddate TIMESTAMP NOT NULL,
)
GO

CREATE TABLE receipt_item (
	id INT IDENTITY(1,1) PRIMARY KEY,
	product_id INT FOREIGN KEY REFERENCES product(id),
	receipt_id INT FOREIGN KEY REFERENCES receipt(id),
	item_quantity INT NOT NULL,
)
GO

CREATE TABLE cart (
	id INT IDENTITY(1,1) PRIMARY KEY,
	user_id INT FOREIGN KEY REFERENCES [user](id),
)
GO

CREATE TABLE cart_item (
	id INT IDENTITY(1,1) PRIMARY KEY,
	product_id INT FOREIGN KEY REFERENCES product(id),
	cart_id INT FOREIGN KEY REFERENCES cart(id),
	item_quantity INT NOT NULL,
)
GO

INSERT INTO [user] VALUES ('ny64394@gmail.com', N'Quận 1 Đống Đa, Hà Nội', N'Nguyễn Ý', '0886315580', '123', 1)
INSERT INTO [user] VALUES ('caobinhoh@gmail.com', N'Quận 2 Đống Đa, Hà Nội', N'Nguyễn Trị Quốc', '0327325177', '1234', 0)
INSERT INTO [user] VALUES ('dinhquangthang3112002@gmail.com', N'Quận 3 Đống Đa, Hà Nội', N'Đinh Quang Thắng', '0334687767', '12345', 1)
INSERT INTO [user] VALUES ('thanhtung@gmail.com', N'Quận 4 Đống Đa, Hà Nội', N'Nguyễn Thanh Tùng', '08864267342', '123456', 0)

INSERT INTO cart VALUES (2);
INSERT INTO cart VALUES (4);

INSERT INTO category VALUES('Nam');
INSERT INTO category VALUES(N'Nữ');

INSERT INTO brand VALUES('Nike');
INSERT INTO brand VALUES('Adidas');
INSERT INTO brand VALUES('Vans');
INSERT INTO brand VALUES('Puma');
INSERT INTO brand VALUES('New Balance');
INSERT INTO brand VALUES('Converse');
INSERT INTO brand VALUES('MLB');

INSERT INTO product VALUES(1, 6, 'Converse Chuck Taylor All Star 1970s', N'<p>Converse Chuck Taylor All Star 1970s Black<br />
Nh&igrave;n qua th&igrave; nhiều người hay nhầm với đ&ocirc;i Classic đen, sau đ&acirc;y l&agrave; 1 số điểm kh&aacute;c biệt tạo n&ecirc;n độ hot của 70s:<br />
-Lớp l&oacute;t d&agrave;y tạo cảm gi&aacute;c &ecirc;m &aacute;i khi vận động.<br />
-Phần đế m&agrave;u trắng ng&agrave; vintage được phủ 1 lớp b&oacute;ng b&ecirc;n ngo&agrave;i l&agrave; điểm nhấn ri&ecirc;ng cho d&ograve;ng 1970s, dễ vệ sinh hơn.<br />
-Vải d&agrave;y dặn, cứng form hơn.<br />
-D&acirc;y gi&agrave;y d&agrave;y hơn, c&ugrave;ng m&agrave;u với phần đế.<br />
-Tem g&oacute;t đen 1st-tring - đặc trưng ri&ecirc;ng của d&ograve;ng 1970s.</p>', 1710000, 40, 10, 'conver.jpg');
INSERT INTO product VALUES(1, 5, 'New Balance 550 White Green', N'<p>New Balance l&agrave; một thương hiệu thời trang v&agrave; gi&agrave;y thể thao từ Mỹ. Hơn 100 năm qua, New Balance lu&ocirc;n t&igrave;m hiểu nhu cầu của những vận động vi&ecirc;n để đầu tư, thiết kế những sản phẩm ph&ugrave; hợp. New Balance lu&ocirc;n tập trung đến từng chuyển động của cơ thể con người để c&oacute; thể &ldquo;Tạo-Ra-Điều-Tuyệt-Vời&rdquo; (Making Excellent Happen)!</p>', 1090000, 40, 10, 'nb.jpg');
INSERT INTO product VALUES(1, 7, 'MLB Chunky New York White', N'<p>MLB - Thương hiệu MLB thuộc tập đo&agrave;n F&amp;F đ&atilde; mở cửa h&agrave;ng MLB Korea đầu ti&ecirc;n v&agrave;o năm 1997 - đ&acirc;y cũng l&agrave; m&ocirc; h&igrave;nh kinh doanh đầu ti&ecirc;n ra mắt MLB như một thương hiệu thời trang theo phong c&aacute;ch thường ng&agrave;y.<br />
Chất liệu: Da tổng hợp&nbsp;<br />
Kiểu d&aacute;ng gi&agrave;y sneaker đế cao thời trang<br />
Thiết kế lấy cảm hứng từ hiệp hội b&oacute;ng ch&agrave;y MLB<br />
Lớp l&oacute;t &ecirc;m &aacute;i, n&acirc;ng d&aacute;ng bước ch&acirc;n<br />
Đế cao su với độ bền cao, chắc chắn mang lại độ ma s&aacute;t tốt<br />
Sản phẩm kh&ocirc;ng bảo h&agrave;nh<br />
Hướng dẫn bảo quản: Xem chi tiết tr&ecirc;n tag sản phẩm<br />
An to&agrave;n cho người sử dụng</p>', 1850000, 40, 10, 'mlb4.jpg');
INSERT INTO product VALUES(1, 1, 'Nike Air Jordan 4 Pure Money', N'<p>Air Jordan 4 Pure Money c&oacute; c&oacute; chủ đề thiết kế gợi nhớ lại &lsquo;Oreo&rsquo; AJ4 ban đầu từ năm 1999.&nbsp;<br />
Phần da lộn tr&ecirc;n m&agrave;u đen của chiếc gi&agrave;y cũ được thay thế bằng lớp ho&agrave;n thiện m&agrave;u trắng sạch sẽ.&nbsp;<br />
M&agrave;u sắc trung t&iacute;nh được lặp lại tr&ecirc;n biểu tượng g&oacute;t ch&acirc;n Jumpman v&agrave; đế giữa bằng polyurethane, c&oacute; đệm Air bọc ở b&agrave;n ch&acirc;n trước v&agrave; bộ phận c&oacute; thể nh&igrave;n thấy dưới g&oacute;t ch&acirc;n.<br />
Thiết kế thể thao năng động:&nbsp;<br />
- Chất liệu vải th&ocirc;ng tho&aacute;ng mềm mịn&nbsp;<br />
- Đẳng cấp thời trang vượt trội&nbsp;<br />
- Đế chống trơn trượt&nbsp;<br />
- Co d&atilde;n 4 chiều</p>', 3800000, 40, 10, 'jordan4.jpg');
INSERT INTO product VALUES(1, 1, 'Nike Air Jordan 1 Mid ‘College Grey’', N'<p>Nike Air Jordan 1 với lịch sử hơn 30 năm lu&ocirc;n được nh&igrave;n nhận như một trong những d&ograve;ng sản phẩm th&agrave;nh c&ocirc;ng nhất của Nike. Nike Jordan 1 lu&ocirc;n b&aacute;n hết một c&aacute;ch nhanh ch&oacute;ng ngay từ khi ra mắt đến nay, lu&ocirc;n l&agrave; sản phẩm được c&aacute;c t&iacute;n đồ thời trang ch&uacute; &yacute; h&agrave;ng đầu. Air Jordan được đặt dựa theo ng&ocirc;i sao b&oacute;ng rổ lừng danh Michael Jordan &ndash; huyền thoại của NBA.<br />
Tổng thể được kho&aacute;c l&ecirc;n lớp m&agrave;u đồng nhất, từ hộp ng&oacute;n ch&acirc;n, mắt c&aacute; ch&acirc;n, đế ngo&agrave;i đều c&oacute; m&agrave;u x&aacute;m nhạt như bao sneakerhead mong đợi.<br />
Ho&agrave;n chỉnh tổng thể với với phần d&acirc;y buộc v&agrave; lưỡi g&agrave; m&agrave;u trắng, ph&ugrave; hiệu Jumpman lại c&oacute; phần tương phản khi sử dụng những sợi chỉ đỏ.</p>', 1000000, 40, 10, 'jd1.jpg');
INSERT INTO product VALUES(1, 6, 'Converse All-Court VLTG', N'<p>Converse Cons All-Court với những mẫu gi&agrave;y đậm chất sporty những vẫn cực thoải m&aacute;i để diện h&agrave;ng ng&agrave;y, cho bạn một vẻ ngo&agrave;i thật năng động.&nbsp;<br />
Th&acirc;n gi&agrave;y được l&agrave;m từ chất liệu da cao cấp với độ d&agrave;y dặn vừa phải<br />
Th&iacute;ch hợp để mang trong những ng&agrave;y thời tiết giao m&ugrave;a như hiện nay.</p>', 1540000, 40, 10, 'converdo.jpg');
INSERT INTO product VALUES(1, 1, 'Nike Air Force 1', N'<p>Ra mắt v&agrave;o năm 1982, AF-1 l&agrave; đ&ocirc;i gi&agrave;y b&oacute;ng rổ đầu ti&ecirc;n của Nike Air, đ&atilde; c&aacute;ch mạng h&oacute;a tr&ograve; chơi trong khi nhanh ch&oacute;ng thu h&uacute;t được sức h&uacute;t tr&ecirc;n khắp thế giới. Ng&agrave;y nay, Air Force 1 vẫn đ&uacute;ng với nguồn gốc của n&oacute; với c&ugrave;ng một lớp đệm mềm mại v&agrave; c&oacute; độ đ&agrave;n hồi đ&atilde; thay đổi lịch sử gi&agrave;y thể thao.<br />
C&aacute;c lớp da kh&acirc;u ở ph&iacute;a tr&ecirc;n th&ecirc;m phong c&aacute;ch di sản, độ bền v&agrave; hỗ trợ.<br />
Được thiết kế ban đầu cho v&ograve;ng đệm, đệm Nike Air bổ sung th&ecirc;m trọng lượng nhẹ, thoải m&aacute;i cả ng&agrave;y.<br />
H&igrave;nh b&oacute;ng được cắt thấp tạo th&ecirc;m một c&aacute;i nh&igrave;n gọn g&agrave;ng, hợp l&yacute;.<br />
Cổ &aacute;o c&oacute; đệm tạo cảm gi&aacute;c mềm mại v&agrave; thoải m&aacute;i.</p>', 2390000, 40, 10, 'nike2.jpg');
INSERT INTO product VALUES(1, 2, 'Adidas Ultra Boost Triple White', N'<p>Ultraboost kh&ocirc;ng phải l&agrave; d&ograve;ng gi&agrave;y chạy bộ hiệu năng đầu ti&ecirc;n của ch&uacute;ng t&ocirc;i c&oacute; sức h&uacute;t m&atilde;nh liệt trong giới thời trang.<br />
D&aacute;ng regular fit<br />
C&oacute; d&acirc;y gi&agrave;y<br />
Th&acirc;n gi&agrave;y bằng vải dệt adidas PRIMEKNIT<br />
Cảm gi&aacute;c n&acirc;ng đỡ v&agrave; ho&agrave;n trả năng lượng<br />
Đệm g&oacute;t gi&agrave;y đ&uacute;c Fitcounter<br />
Đế giữa BOOST</p>', 4200000, 40, 10, 'ultratrang.jpg');
INSERT INTO product VALUES(1, 4, 'Puma Smash', N'<p>Puma Smash l&agrave; mẫu gi&agrave;y mới nhất được đ&ocirc;ng đảo t&iacute;n đồ thời trang y&ecirc;u th&iacute;ch trong thời gian gần đ&acirc;y.&nbsp;<br />
Đ&ocirc;i gi&agrave;y được thiết kế kiểu d&aacute;ng thời trang v&agrave; được l&agrave;m từ chất liệu cao cấp bền đẹp trong suốt qu&aacute; tr&igrave;nh sử dụng.<br />
Được l&agrave;m từ chất liệu da cao cấp, bền đẹp trong suốt qu&aacute; tr&igrave;nh sử dụng.&nbsp;<br />
Với kiểu d&aacute;ng Style trẻ trung, đẹp mắt, mang đậm phong c&aacute;ch, c&aacute; t&iacute;nh, thiết kế linh động cho đ&ocirc;i ch&acirc;n c&ugrave;ng với phần đế chống trơn trượt an to&agrave;n.<br />
Với đ&ocirc;i gi&agrave;y thể thao Puma Smash V2 Black thời trang n&agrave;y bạn c&oacute; thể kết hợp với c&aacute;c trang phục kh&aacute;c nhau từ sang trọng, lịch l&atilde;m đến những trang phục thường nhật mặc h&agrave;ng ng&agrave;y.</p>', 1450000, 40, 10, 'OIP.jpg');
INSERT INTO product VALUES(1, 3, 'Vans Old Skool White', N'<p>Vans Old Skool được ra đời v&agrave;o năm 1977 với một số bổ sung mới độc đ&aacute;o<br />
Với Vans Old Skool Color Theory, đ&ocirc;i gi&agrave;y được thiết kế với form d&aacute;ng cứng c&aacute;p, đường may tỉ mỉ, phần mũi v&agrave; cổ gi&agrave;y được l&agrave;m từ da lộn cao cấp tạo n&ecirc;n vẻ ngo&agrave;i cổ điển cho đ&ocirc;i gi&agrave;y. Đường kẻ lượn s&oacute;ng quanh th&acirc;n gi&agrave;y &ndash; biểu tượng vượt thời gian của Vans l&agrave;m cho form d&aacute;ng của đ&ocirc;i gi&agrave;y th&ecirc;m phần khỏe khoắn cũng như kh&ocirc;ng k&eacute;m phần c&aacute; t&iacute;nh. Phần cổ gi&agrave;y được trang bị lớp đệm m&uacute;t &ecirc;m &aacute;i, gi&uacute;p cổ ch&acirc;n người mang kh&ocirc;ng bị đau trong qu&aacute; tr&igrave;nh di chuyển.</p>', 1300000, 40, 10, 'vans2.jpg');
INSERT INTO product VALUES(1, 2, 'Adidas Stan Smith', N'<p>Vẻ đẹp kinh điển. Phong c&aacute;ch vốn dĩ. Đa năng h&agrave;ng ng&agrave;y. Suốt hơn 50 năm qua v&agrave; chưa dừng ở đ&oacute;, gi&agrave;y adidas Stan Smith lu&ocirc;n giữ vững vị tr&iacute; l&agrave; một biểu tượng. Đ&ocirc;i gi&agrave;y n&agrave;y l&agrave; phi&ecirc;n bản cải bi&ecirc;n mới mẻ, l&agrave; một phần cam kết của adidas hướng tới chỉ sử dụng polyester t&aacute;i chế bắt đầu từ năm 2024. Với th&acirc;n gi&agrave;y vegan v&agrave; đế ngo&agrave;i l&agrave;m từ cao su phế liệu, đ&ocirc;i gi&agrave;y n&agrave;y vẫn mang phong c&aacute;ch đầy t&iacute;nh biểu tượng, đồng thời th&acirc;n thiện với m&ocirc;i trường.<br />
D&aacute;ng regular fit<br />
C&oacute; d&acirc;y gi&agrave;y<br />
Lớp l&oacute;t bằng chất liệu tổng hợp<br />
Đế ngo&agrave;i bằng cao su</p>', 2500000, 40, 10, 'stan2.jpg');
INSERT INTO product VALUES(1, 5, 'New Balance 574 "White Blue"', N'<p>Mẫu gi&agrave;y n&agrave;y thuộc d&ograve;ng New Balance 574 với nhiều điểm nổi bật về mặt c&ocirc;ng nghệ cũng như thiết kế. Khả năng tho&aacute;ng kh&iacute; cực chất gi&uacute;p b&agrave;n ch&acirc;n của bạn lu&ocirc;n kh&ocirc; tho&aacute;ng v&agrave; đặc biệt kh&ocirc;ng g&acirc;y m&ugrave;i.&nbsp;<br />
Chất liệu ch&iacute;nh l&agrave; da Suede (da lộn) cực sang. Hơn nữa, phần TPU tr&ecirc;n miếng l&oacute;t g&oacute;t ch&acirc;n tạo n&ecirc;n độ ổn định đ&aacute;ng kinh ngạc. Mẫu gi&agrave;y v&ocirc; c&ugrave;ng bền bỉ v&agrave; kh&ocirc;ng c&oacute; hiện tượng cong v&ecirc;nh v&agrave; hở phần đầu.<br />
Kết cấu của mẫu gi&agrave;y b&aacute;m s&aacute;t mọi sự chuyển động của người d&ugrave;ng, đem lại sự thoải m&aacute;i khi mang h&agrave;ng giờ liền. T&iacute;nh năng hỗ trợ v&ograve;m tuyệt hảo phục vụ mục đ&iacute;ch đi dạo nhiều giờ liền m&agrave; kh&ocirc;ng cảm thấy đau ch&acirc;n.</p>', 1050000, 40, 10, 'nb2.jpg');
INSERT INTO product VALUES(1, 7, 'MLB Chunky Liner New York Green', N'<p>MLB - Thương hiệu MLB thuộc tập đo&agrave;n F&amp;F đ&atilde; mở cửa h&agrave;ng MLB Korea đầu ti&ecirc;n v&agrave;o năm 1997 - đ&acirc;y cũng l&agrave; m&ocirc; h&igrave;nh kinh doanh đầu ti&ecirc;n ra mắt MLB như một thương hiệu thời trang theo phong c&aacute;ch thường ng&agrave;y.<br />
Chất liệu: Da tổng hợp&nbsp;<br />
Kiểu d&aacute;ng gi&agrave;y sneaker đế cao thời trang<br />
Thiết kế lấy cảm hứng từ hiệp hội b&oacute;ng ch&agrave;y MLB<br />
Lớp l&oacute;t &ecirc;m &aacute;i, n&acirc;ng d&aacute;ng bước ch&acirc;n<br />
Đế cao su với độ bền cao, chắc chắn mang lại độ ma s&aacute;t tốt<br />
Sản phẩm kh&ocirc;ng bảo h&agrave;nh<br />
Hướng dẫn bảo quản: Xem chi tiết tr&ecirc;n tag sản phẩm<br />
An to&agrave;n cho người sử dụng</p>', 3350000, 40, 10, 'mlbgreen.jpg');
INSERT INTO product VALUES(1, 3, 'Vans Old Skool Classic Black', N'<p>Vans Old Skool được ra đời v&agrave;o năm 1977 với một số bổ sung mới độc đ&aacute;o<br />
Với Vans Old Skool Color Theory, đ&ocirc;i gi&agrave;y được thiết kế với form d&aacute;ng cứng c&aacute;p, đường may tỉ mỉ, phần mũi v&agrave; cổ gi&agrave;y được l&agrave;m từ da lộn cao cấp tạo n&ecirc;n vẻ ngo&agrave;i cổ điển cho đ&ocirc;i gi&agrave;y. Đường kẻ lượn s&oacute;ng quanh th&acirc;n gi&agrave;y &ndash; biểu tượng vượt thời gian của Vans l&agrave;m cho form d&aacute;ng của đ&ocirc;i gi&agrave;y th&ecirc;m phần khỏe khoắn cũng như kh&ocirc;ng k&eacute;m phần c&aacute; t&iacute;nh. Phần cổ gi&agrave;y được trang bị lớp đệm m&uacute;t &ecirc;m &aacute;i, gi&uacute;p cổ ch&acirc;n người mang kh&ocirc;ng bị đau trong qu&aacute; tr&igrave;nh di chuyển.</p>', 1050000, 40, 10, 'vansden.jpg');
INSERT INTO product VALUES(1, 4, 'Puma Slipstream Lo Reprise ', N'<p>GI&Agrave;Y THỂ THAO UNISEX PUMA SLIPSTREAM LO REPRISE&nbsp;<br />
Đ&ocirc;i gi&agrave;y nổi bật với một số đặc điểm như sử dụng t&iacute;nh năng PUMA Formstrip gi&uacute;p ổn định v&agrave; tăng t&iacute;nh thăng bằng trong di chuyển, đế cao su trong hay lỗ xỏ gi&agrave;y đ&uacute;c khu&ocirc;n...<br />
Slipstream Lo được sản xuất dưới dạng một đ&ocirc;i gi&agrave;y b&oacute;ng rổ chuy&ecirc;n nghiệp v&agrave;o năm 1987, được cải tiến v&agrave; t&aacute;i sản xuất v&agrave;o những năm 2000 với nhiều m&agrave;u sắc độc đ&aacute;o. H&atilde;y th&ecirc;m một phong c&aacute;ch mới lạ cho bộ sưu tập của bạn với Slipstream Lo Reprise.<br />
Da tổng hợp<br />
Khu&ocirc;n dạng TPU đ&uacute;c&nbsp;<br />
Lớp l&oacute;t lưới<br />
Đế giữa bằng cao su<br />
Đế ngo&agrave;i bằng cao su trong</p>', 2520000, 40, 10, 'puma3.jpg');
INSERT INTO product VALUES(1, 1, 'Nike Sportswear Blazer 77', N'<p>Nike đ&atilde; giới thiệu Blazer Mid 77 nổi tiếng của m&igrave;nh theo những phi&ecirc;n bản da lộn cực kỳ mới.&nbsp;<br />
Đ&acirc;y l&agrave; phi&ecirc;n bản retro mạnh mẽ với sự kết hợp cổ điển của m&agrave;u sắc v&agrave; kiến tạo, cả hai Blazers n&agrave;y đều được ch&agrave;o đ&oacute;n đến với team Nike Sportswear.<br />
Mỗi phối m&agrave;u đều được l&agrave;m từ chất liệu da lộn mềm mại, c&ugrave;ng với d&acirc;y buộc m&agrave;u trắng với biểu tượng Swooshes kh&ocirc;ng thể nhầm lẫn v&agrave; chạm khắc logo Nike ở dưới phần g&oacute;t ch&acirc;n.&nbsp;<br />
Phối m&agrave;u Neptune Grey như được dựa tr&ecirc;n phần phi&ecirc;n bản trước đ&oacute; hợp t&aacute;c của Nike X Stranger Things, tuy nhi&ecirc;n với phối m&agrave;u Wolf Grey th&igrave; lu&ocirc;n giữ cho m&igrave;nh một n&eacute;t tinh tế v&agrave; lạnh l&ugrave;ng. Mỗi đ&ocirc;i sneaker đều sở hữu cho m&igrave;nh 1 bộ đệm cao su m&agrave;u c&aacute;nh buồm.</p>', 3500000, 40, 10, 'pro.jpg');
INSERT INTO product VALUES(1, 6, 'Converse Run Star Hike', N'Giày Converse Run Star Hike là dòng sản phẩm được kết hợp giữa Converse cùng JW Anderson. Trước đó, sự kết hợp này đã trình làng những sản phẩm giày mang nhiều cải tiến để thích hợp hơn với bộ môn leo núi. 
Gót giày thay vì có logo Converse quen thuộc thì với đôi Run Star Hike thay bằng ngôi sao màu đen ở chính giữa. Đế giày dày tới 6cm, và là một trong những đôi sneakers có phần đế dày nhất tính đến hiện tại. 
Hiện được ra mắt với hai tông màu chính là trắng basic và đen cá tính. Chắc chắn trong tương lai, Run Star Hike có thể tạo cho mình được một đế chế riêng không chỉ dành cho dân leo núi mà còn có chỗ đứng trong lòng các bạn trẻ Việt Nam.', 2600000, 40, 10, 'jordan10.jpg');
INSERT INTO product VALUES(1, 2, 'Adidas Prophere Xanh Navy', N'<p>T&aacute;o bạo v&agrave; kh&ocirc;ng ngại ng&ugrave;ng, mẫu gi&agrave;y Prophere được thiết kế d&agrave;nh cho những c&aacute; t&iacute;nh tỏa s&aacute;ng tr&ecirc;n đường phố. Mẫu gi&agrave;y c&oacute; kiểu d&aacute;ng ấn tượng với đế giữa lượn s&oacute;ng v&agrave; th&agrave;nh đế gi&agrave;y cao c&oacute; họa tiết chạm khắc. Chất liệu bằng vải dệt đặc biệt kết hợp giữa mềm mại v&agrave; sần nhẹ cho vẻ ngo&agrave;i bụi bặm. Th&acirc;n gi&agrave;y bằng vải dệt với đế giữa cho cảm gi&aacute;c n&acirc;ng đỡ, mềm dẻo.<br />
Kiểu d&aacute;ng ấn tượng<br />
Đế giữa chạm khắc họa tiết lượn s&oacute;ng l&agrave; n&eacute;t đặc trưng của mẫu gi&agrave;y Prophere<br />
Tỷ lệ ngoại cỡ<br />
Th&agrave;nh đế gi&agrave;y cao tăng d&aacute;ng vẻ đường phố</p>', 5600000, 40, 10, 'slip.jpg');
INSERT INTO product VALUES(1, 1, 'Nike Air Jordan 1 High Panda Twist ', N'<p>L&agrave; một trong những đ&ocirc;i gi&agrave;y được mong đợi nhất trong m&ugrave;a giải của Nike, Air Jordan 1 &ldquo;Panda Twist&rdquo; đ&atilde; thu h&uacute;t được kh&aacute; nhiều tiếng vang kể từ khi được drop.&nbsp;<br />
T&ocirc;ng m&agrave;u được sử dụng ở đ&acirc;y l&agrave; những t&ocirc;ng lạnh mang sắc th&aacute;i nhẹ, c&ugrave;ng với sự sắp xếp một c&aacute;ch kh&eacute;o l&eacute;o c&aacute;c lớp phủ da lộn cao cấp.<br />
Ph&iacute;a dưới của đ&ocirc;i gi&agrave;y, phần đế giữa được phủ một lớp da trơn c&oacute; m&agrave;u trắng, tương phản trực tiếp với cổ gi&agrave;y, ph&ugrave; hiệu Wings v&agrave; Swoosh kho&aacute;c l&ecirc;n m&igrave;nh m&agrave;u đen sẫm.</p>', 5890000, 40, 10, 'nike77.jpg');
INSERT INTO product VALUES(1, 3, 'Vans Classic Slip-On', N'<p>Vans Classic Slip-On Checkerboard lu&ocirc;n l&agrave; Best-seller được restock li&ecirc;n tục tại Drake nhờ v&agrave;o thiết kế Checkerboard kinh điển cực kỳ thời trang v&agrave; c&aacute; t&iacute;nh. Chất vải Canvas mềm, nhẹ c&oacute; m&agrave;u trắng ng&agrave; cổ điển kết hợp với c&aacute;c họa tiết caro được in r&otilde; n&eacute;t tr&ecirc;n th&acirc;n gi&agrave;y chắc chắn sẽ mang đến cho bạn một sản phẩm cực chất v&agrave; s&agrave;nh điệu.</p>', 2100000, 40, 10, 'cv3.jpg');
