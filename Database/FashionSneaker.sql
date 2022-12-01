CREATE DATABASE FashionSneaker
GO

USE FashionSneaker
GO

CREATE TABLE account (
	id INT IDENTITY(1,1) PRIMARY KEY,
	email VARCHAR(50) NOT NULL,
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

CREATE TABLE cart (
	id INT IDENTITY(1,1) PRIMARY KEY,
	account_id INT NOT NULL,
	product_id INT FOREIGN KEY REFERENCES product(id),
	product_quantity INT NULL,
)
GO

INSERT INTO category VALUES('Nam');
INSERT INTO category VALUES(N'Nữ');

INSERT INTO brand VALUES('Nike');
INSERT INTO brand VALUES('Adidas');
INSERT INTO brand VALUES('Vans');
INSERT INTO brand VALUES('Puma');
INSERT INTO brand VALUES('New Balance');
INSERT INTO brand VALUES('Converse');
INSERT INTO brand VALUES('MLB');

INSERT INTO product VALUES(1, 6, 'Converse Chuck Taylor All Star 1970s', N'Converse Chuck Taylor All Star 1970s Black
Nhìn qua thì nhiều người hay nhầm với đôi Classic đen, sau đây là 1 số điểm khác biệt tạo nên độ hot của 70s:
-Lớp lót dày tạo cảm giác êm ái khi vận động.
-Phần đế màu trắng ngà vintage được phủ 1 lớp bóng bên ngoài là điểm nhấn riêng cho dòng 1970s, dễ vệ sinh hơn.
-Vải dày dặn, cứng form hơn.
-Dây giày dày hơn, cùng màu với phần đế.
-Tem gót đen 1st-tring - đặc trưng riêng của dòng 1970s.', 1710000, 40, 10, 'a');
INSERT INTO product VALUES(1, 5, 'New Balance 550 White Green', N'New Balance là một thương hiệu thời trang và giày thể thao từ Mỹ. Hơn 100 năm qua, New Balance luôn tìm hiểu nhu cầu của những vận động viên để đầu tư, thiết kế những sản phẩm phù hợp. New Balance luôn tập trung đến từng chuyển động của cơ thể con người để có thể “Tạo-Ra-Điều-Tuyệt-Vời” (Making Excellent Happen)!', 1090000, 40, 10, 'a');
INSERT INTO product VALUES(1, 7, 'MLB Chunky New York White', N'MLB - Thương hiệu MLB thuộc tập đoàn F&F đã mở cửa hàng MLB Korea đầu tiên vào năm 1997 - đây cũng là mô hình kinh doanh đầu tiên ra mắt MLB như một thương hiệu thời trang theo phong cách thường ngày.
Chất liệu: Da tổng hợp 
Kiểu dáng giày sneaker đế cao thời trang
Thiết kế lấy cảm hứng từ hiệp hội bóng chày MLB
Lớp lót êm ái, nâng dáng bước chân
Đế cao su với độ bền cao, chắc chắn mang lại độ ma sát tốt
Sản phẩm không bảo hành
Hướng dẫn bảo quản: Xem chi tiết trên tag sản phẩm
An toàn cho người sử dụng', 1850000, 40, 10, 'a');
INSERT INTO product VALUES(1, 1, 'Nike Air Jordan 4 Pure Money', N'Air Jordan 4 Pure Money có có chủ đề thiết kế gợi nhớ lại ‘Oreo’ AJ4 ban đầu từ năm 1999. 
Phần da lộn trên màu đen của chiếc giày cũ được thay thế bằng lớp hoàn thiện màu trắng sạch sẽ. 
Màu sắc trung tính được lặp lại trên biểu tượng gót chân Jumpman và đế giữa bằng polyurethane, có đệm Air bọc ở bàn chân trước và bộ phận có thể nhìn thấy dưới gót chân.
Thiết kế thể thao năng động: 
- Chất liệu vải thông thoáng mềm mịn 
- Đẳng cấp thời trang vượt trội 
- Đế chống trơn trượt 
- Co dãn 4 chiều', 3800000, 40, 10, 'a');
INSERT INTO product VALUES(1, 1, 'Nike Air Jordan 1 Mid ‘College Grey’', N'Nike Air Jordan 1 với lịch sử hơn 30 năm luôn được nhìn nhận như một trong những dòng sản phẩm thành công nhất của Nike. Nike Jordan 1 luôn bán hết một cách nhanh chóng ngay từ khi ra mắt đến nay, luôn là sản phẩm được các tín đồ thời trang chú ý hàng đầu. Air Jordan được đặt dựa theo ngôi sao bóng rổ lừng danh Michael Jordan – huyền thoại của NBA.
Tổng thể được khoác lên lớp màu đồng nhất, từ hộp ngón chân, mắt cá chân, đế ngoài đều có màu xám nhạt như bao sneakerhead mong đợi.
Hoàn chỉnh tổng thể với với phần dây buộc và lưỡi gà màu trắng, phù hiệu Jumpman lại có phần tương phản khi sử dụng những sợi chỉ đỏ.', 1000000, 40, 10, 'a');
INSERT INTO product VALUES(1, 6, 'Converse All-Court VLTG', N'Converse Cons All-Court với những mẫu giày đậm chất sporty những vẫn cực thoải mái để diện hàng ngày, cho bạn một vẻ ngoài thật năng động. 
Thân giày được làm từ chất liệu da cao cấp với độ dày dặn vừa phải
Thích hợp để mang trong những ngày thời tiết giao mùa như hiện nay.', 1540000, 40, 10, 'a');
INSERT INTO product VALUES(1, 1, 'Nike Air Force 1', N'Ra mắt vào năm 1982, AF-1 là đôi giày bóng rổ đầu tiên của Nike Air, đã cách mạng hóa trò chơi trong khi nhanh chóng thu hút được sức hút trên khắp thế giới. Ngày nay, Air Force 1 vẫn đúng với nguồn gốc của nó với cùng một lớp đệm mềm mại và có độ đàn hồi đã thay đổi lịch sử giày thể thao.
Các lớp da khâu ở phía trên thêm phong cách di sản, độ bền và hỗ trợ.
Được thiết kế ban đầu cho vòng đệm, đệm Nike Air bổ sung thêm trọng lượng nhẹ, thoải mái cả ngày.
Hình bóng được cắt thấp tạo thêm một cái nhìn gọn gàng, hợp lý.
Cổ áo có đệm tạo cảm giác mềm mại và thoải mái.', 2390000, 40, 10, 'a');
INSERT INTO product VALUES(1, 2, 'Adidas Ultra Boost Triple White', N'Ultraboost không phải là dòng giày chạy bộ hiệu năng đầu tiên của chúng tôi có sức hút mãnh liệt trong giới thời trang.
Dáng regular fit
Có dây giày
Thân giày bằng vải dệt adidas PRIMEKNIT
Cảm giác nâng đỡ và hoàn trả năng lượng
Đệm gót giày đúc Fitcounter
Đế giữa BOOST', 4200000, 40, 10, 'a');
INSERT INTO product VALUES(1, 4, 'Puma Smash', N'Puma Smash là mẫu giày mới nhất được đông đảo tín đồ thời trang yêu thích trong thời gian gần đây. 
Đôi giày được thiết kế kiểu dáng thời trang và được làm từ chất liệu cao cấp bền đẹp trong suốt quá trình sử dụng.
Được làm từ chất liệu da cao cấp, bền đẹp trong suốt quá trình sử dụng. 
Với kiểu dáng Style trẻ trung, đẹp mắt, mang đậm phong cách, cá tính, thiết kế linh động cho đôi chân cùng với phần đế chống trơn trượt an toàn.
Với đôi giày thể thao Puma Smash V2 Black thời trang này bạn có thể kết hợp với các trang phục khác nhau từ sang trọng, lịch lãm đến những trang phục thường nhật mặc hàng ngày.', 1450000, 40, 10, 'a');
INSERT INTO product VALUES(1, 3, 'Vans Old Skool White', N'Vans Old Skool được ra đời vào năm 1977 với một số bổ sung mới độc đáo
Với Vans Old Skool Color Theory, đôi giày được thiết kế với form dáng cứng cáp, đường may tỉ mỉ, phần mũi và cổ giày được làm từ da lộn cao cấp tạo nên vẻ ngoài cổ điển cho đôi giày. Đường kẻ lượn sóng quanh thân giày – biểu tượng vượt thời gian của Vans làm cho form dáng của đôi giày thêm phần khỏe khoắn cũng như không kém phần cá tính. Phần cổ giày được trang bị lớp đệm mút êm ái, giúp cổ chân người mang không bị đau trong quá trình di chuyển.', 1300000, 40, 10, 'a');
INSERT INTO product VALUES(1, 2, 'Adidas Stan Smith', N'Vẻ đẹp kinh điển. Phong cách vốn dĩ. Đa năng hàng ngày. Suốt hơn 50 năm qua và chưa dừng ở đó, giày adidas Stan Smith luôn giữ vững vị trí là một biểu tượng. Đôi giày này là phiên bản cải biên mới mẻ, là một phần cam kết của adidas hướng tới chỉ sử dụng polyester tái chế bắt đầu từ năm 2024. Với thân giày vegan và đế ngoài làm từ cao su phế liệu, đôi giày này vẫn mang phong cách đầy tính biểu tượng, đồng thời thân thiện với môi trường.
Dáng regular fit
Có dây giày
Lớp lót bằng chất liệu tổng hợp
Đế ngoài bằng cao su', 2500000, 40, 10, 'a');
INSERT INTO product VALUES(1, 5, 'New Balance 574 "White Blue"', N'Mẫu giày này thuộc dòng New Balance 574 với nhiều điểm nổi bật về mặt công nghệ cũng như thiết kế. Khả năng thoáng khí cực chất giúp bàn chân của bạn luôn khô thoáng và đặc biệt không gây mùi. 
Chất liệu chính là da Suede (da lộn) cực sang. Hơn nữa, phần TPU trên miếng lót gót chân tạo nên độ ổn định đáng kinh ngạc. Mẫu giày vô cùng bền bỉ và không có hiện tượng cong vênh và hở phần đầu.
Kết cấu của mẫu giày bám sát mọi sự chuyển động của người dùng, đem lại sự thoải mái khi mang hàng giờ liền. Tính năng hỗ trợ vòm tuyệt hảo phục vụ mục đích đi dạo nhiều giờ liền mà không cảm thấy đau chân.', 1050000, 40, 10, 'a');
INSERT INTO product VALUES(1, 7, 'MLB Chunky Liner New York Green', N'MLB - Thương hiệu MLB thuộc tập đoàn F&F đã mở cửa hàng MLB Korea đầu tiên vào năm 1997 - đây cũng là mô hình kinh doanh đầu tiên ra mắt MLB như một thương hiệu thời trang theo phong cách thường ngày.
Chất liệu: Da tổng hợp 
Kiểu dáng giày sneaker đế cao thời trang
Thiết kế lấy cảm hứng từ hiệp hội bóng chày MLB
Lớp lót êm ái, nâng dáng bước chân
Đế cao su với độ bền cao, chắc chắn mang lại độ ma sát tốt
Sản phẩm không bảo hành
Hướng dẫn bảo quản: Xem chi tiết trên tag sản phẩm
An toàn cho người sử dụng', 3350000, 40, 10, 'a');
INSERT INTO product VALUES(1, 3, 'Vans Old Skool Classic Black', N'Vans Old Skool được ra đời vào năm 1977 với một số bổ sung mới độc đáo
Với Vans Old Skool Color Theory, đôi giày được thiết kế với form dáng cứng cáp, đường may tỉ mỉ, phần mũi và cổ giày được làm từ da lộn cao cấp tạo nên vẻ ngoài cổ điển cho đôi giày. Đường kẻ lượn sóng quanh thân giày – biểu tượng vượt thời gian của Vans làm cho form dáng của đôi giày thêm phần khỏe khoắn cũng như không kém phần cá tính. Phần cổ giày được trang bị lớp đệm mút êm ái, giúp cổ chân người mang không bị đau trong quá trình di chuyển.', 1050000, 40, 10, 'a');
INSERT INTO product VALUES(1, 4, 'Puma Slipstream Lo Reprise ', N'GIÀY THỂ THAO UNISEX PUMA SLIPSTREAM LO REPRISE 
Đôi giày nổi bật với một số đặc điểm như sử dụng tính năng PUMA Formstrip giúp ổn định và tăng tính thăng bằng trong di chuyển, đế cao su trong hay lỗ xỏ giày đúc khuôn...
Slipstream Lo được sản xuất dưới dạng một đôi giày bóng rổ chuyên nghiệp vào năm 1987, được cải tiến và tái sản xuất vào những năm 2000 với nhiều màu sắc độc đáo. Hãy thêm một phong cách mới lạ cho bộ sưu tập của bạn với Slipstream Lo Reprise.
Da tổng hợp
Khuôn dạng TPU đúc 
Lớp lót lưới
Đế giữa bằng cao su
Đế ngoài bằng cao su trong', 2520000, 40, 10, 'a');
INSERT INTO product VALUES(1, 1, 'Nike Sportswear Blazer 77', N'Nike đã giới thiệu Blazer Mid 77 nổi tiếng của mình theo những phiên bản da lộn cực kỳ mới. 
Đây là phiên bản retro mạnh mẽ với sự kết hợp cổ điển của màu sắc và kiến tạo, cả hai Blazers này đều được chào đón đến với team Nike Sportswear.
Mỗi phối màu đều được làm từ chất liệu da lộn mềm mại, cùng với dây buộc màu trắng với biểu tượng Swooshes không thể nhầm lẫn và chạm khắc logo Nike ở dưới phần gót chân. 
Phối màu Neptune Grey như được dựa trên phần phiên bản trước đó hợp tác của Nike X Stranger Things, tuy nhiên với phối màu Wolf Grey thì luôn giữ cho mình một nét tinh tế và lạnh lùng. Mỗi đôi sneaker đều sở hữu cho mình 1 bộ đệm cao su màu cánh buồm.', 3500000, 40, 10, 'a');
INSERT INTO product VALUES(1, 6, 'Converse Run Star Hike', N'Giày Converse Run Star Hike là dòng sản phẩm được kết hợp giữa Converse cùng JW Anderson. Trước đó, sự kết hợp này đã trình làng những sản phẩm giày mang nhiều cải tiến để thích hợp hơn với bộ môn leo núi. 
Gót giày thay vì có logo Converse quen thuộc thì với đôi Run Star Hike thay bằng ngôi sao màu đen ở chính giữa. Đế giày dày tới 6cm, và là một trong những đôi sneakers có phần đế dày nhất tính đến hiện tại. 
Hiện được ra mắt với hai tông màu chính là trắng basic và đen cá tính. Chắc chắn trong tương lai, Run Star Hike có thể tạo cho mình được một đế chế riêng không chỉ dành cho dân leo núi mà còn có chỗ đứng trong lòng các bạn trẻ Việt Nam.', 2600000, 40, 10, 'a');
INSERT INTO product VALUES(1, 2, 'Adidas Prophere Xanh Navy', N'Táo bạo và không ngại ngùng, mẫu giày Prophere được thiết kế dành cho những cá tính tỏa sáng trên đường phố. Mẫu giày có kiểu dáng ấn tượng với đế giữa lượn sóng và thành đế giày cao có họa tiết chạm khắc. Chất liệu bằng vải dệt đặc biệt kết hợp giữa mềm mại và sần nhẹ cho vẻ ngoài bụi bặm. Thân giày bằng vải dệt với đế giữa cho cảm giác nâng đỡ, mềm dẻo.
Kiểu dáng ấn tượng
Đế giữa chạm khắc họa tiết lượn sóng là nét đặc trưng của mẫu giày Prophere
Tỷ lệ ngoại cỡ
Thành đế giày cao tăng dáng vẻ đường phố', 5600000, 40, 10, 'a');
INSERT INTO product VALUES(1, 1, 'Nike Air Jordan 1 High Panda Twist ', N'Là một trong những đôi giày được mong đợi nhất trong mùa giải của Nike, Air Jordan 1 “Panda Twist” đã thu hút được khá nhiều tiếng vang kể từ khi được drop. 
Tông màu được sử dụng ở đây là những tông lạnh mang sắc thái nhẹ, cùng với sự sắp xếp một cách khéo léo các lớp phủ da lộn cao cấp.
Phía dưới của đôi giày, phần đế giữa được phủ một lớp da trơn có màu trắng, tương phản trực tiếp với cổ giày, phù hiệu Wings và Swoosh khoác lên mình màu đen sẫm.', 5890000, 40, 10, 'a');
INSERT INTO product VALUES(1, 3, 'Vans Classic Slip-On', N'Vans Classic Slip-On Checkerboard luôn là Best-seller được restock liên tục tại Drake nhờ vào thiết kế Checkerboard kinh điển cực kỳ thời trang và cá tính. Chất vải Canvas mềm, nhẹ có màu trắng ngà cổ điển kết hợp với các họa tiết caro được in rõ nét trên thân giày chắc chắn sẽ mang đến cho bạn một sản phẩm cực chất và sành điệu.', 2100000, 40, 10, 'a');
