--
-- PostgreSQL database dump
--

-- Dumped from database version 9.6.0
-- Dumped by pg_dump version 9.6.0

-- Started on 2017-01-15 08:16:37

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

SET search_path = public, pg_catalog;

--
-- TOC entry 2277 (class 0 OID 0)
-- Dependencies: 187
-- Name: account_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('account_id_seq', 10, true);


--
-- TOC entry 2252 (class 0 OID 16849)
-- Dependencies: 186
-- Data for Name: roles; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO roles VALUES (1, 'admin', NULL);
INSERT INTO roles VALUES (3, 'guest', NULL);
INSERT INTO roles VALUES (2, 'member', NULL);


--
-- TOC entry 2255 (class 0 OID 16892)
-- Dependencies: 189
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO users VALUES (1, 'Le Viet Toan', true, NULL, NULL, NULL, NULL, '2016-12-26 17:31:02.693912', 'toanleviet1995@gmail.com');
INSERT INTO users VALUES (2, 'Toan Le Viet', true, '1995-04-09', '18/32 Bùi Thế Mỹ, P.10, Q.Tân Bình', 'Hồ Chí Minh', '0938239554', '2016-12-29 11:00:34.338992', 'toanleviet95@gmail.com');
INSERT INTO users VALUES (7, 'Lê Văn Toàn', true, '1995-04-09', '', '', '', '2017-01-15 00:06:29.803075', 'toanle123@gmail.com');
INSERT INTO users VALUES (8, 'ADMIN', true, NULL, NULL, NULL, NULL, '2017-01-15 07:21:32.644846', 'admin@gmail.com');


--
-- TOC entry 2251 (class 0 OID 16844)
-- Dependencies: 185
-- Data for Name: accounts; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO accounts VALUES (10, 'admin@gmail.com', '$2a$10$dcs3wwOj//FYpO0cY2N.YOW2UgRUyA4eSlaKycGknEBBq6u5ItgTi', 1, '2017-01-15 07:22:56.692019', '2017-01-15 07:22:56.692019', true, 'e-foodlover', NULL, NULL, 'ADMIN', NULL);
INSERT INTO accounts VALUES (2, 'toanleviet95@gmail.com', NULL, 3, '2016-12-29 11:00:34.374476', '2016-12-29 11:00:34.374476', true, 'google_oauth2', '112665511626950625263', 'ya29.CjDDAwG_ZQT8RzkeyvJaCCQa3I0I64ZwAWxG0X0pNY8-FFFgC1m2TwBHFUF2sVIpN9M', 'Toan Le Viet', 'https://lh4.googleusercontent.com/-YN9aZrBl3wk/AAAAAAAAAAI/AAAAAAAAAJw/lg0_1IpxgyM/photo.jpg');
INSERT INTO accounts VALUES (5, 'toanleviet95@gmail.com', '$2a$10$bxVI1KzBWTjmPIAcltDSA.EnsJ3i1Rri6BBUBkmkYaZlOUSD5uLW.', 2, '2016-12-30 16:56:01.394048', '2016-12-30 16:56:01.394048', true, 'e-foodlover', NULL, NULL, 'Toan Le Viet', NULL);
INSERT INTO accounts VALUES (3, 'toanleviet95@gmail.com', NULL, 3, '2016-12-29 11:02:15.173688', '2016-12-29 11:02:15.173688', true, 'facebook', '1009937285778765', 'EAAI5DE7JICgBADvLBAf8JNd0x0ddwZCgy2dLoZCHor45G7wZAkd17uTdRGi80e74mRnEqFM9OLhlgWUG8ib9Kr6ZC0S2FwoItGq9rCBPSZCPdPiaiF2MtvWZAr3mx7F5eNRq4ehEt33wNxr6FsS4vBY3xgwHTDoAB2WySobzouswZDZD', 'Toan Le Viet', 'http://graph.facebook.com/v2.6/1009937285778765/picture');
INSERT INTO accounts VALUES (1, 'toanleviet1995@gmail.com', '$2a$10$dcs3wwOj//FYpO0cY2N.YOW2UgRUyA4eSlaKycGknEBBq6u5ItgTi', 2, '2016-12-29 12:07:19.250381', '2016-12-29 12:07:19.250381', true, 'e-foodlover', NULL, NULL, 'Toan Le', NULL);
INSERT INTO accounts VALUES (9, 'toanle123@gmail.com', '$2a$10$DHBVDOukjcfNVHPD7kwsLeGjjAxh2i03TheqXqbXlRG.nZ3KsOY.C', 2, '2017-01-15 00:06:29.807477', '2017-01-15 00:06:29.807477', true, 'e-foodlover', NULL, NULL, 'Lê Văn Toàn', NULL);
INSERT INTO accounts VALUES (4, 'toanleviet95@gmail.com', '$2a$10$dcs3wwOj//FYpO0cY2N.YOW2UgRUyA4eSlaKycGknEBBq6u5ItgTi', 3, '2016-12-30 11:51:59.060967', '2016-12-30 11:51:59.060967', true, 'e-foodlover', NULL, NULL, 'Toan Le Viet', NULL);


--
-- TOC entry 2268 (class 0 OID 17625)
-- Dependencies: 202
-- Data for Name: ar_internal_metadata; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO ar_internal_metadata VALUES ('environment', 'development', '2017-01-13 04:31:30.496189', '2017-01-13 04:31:30.496189');


--
-- TOC entry 2256 (class 0 OID 16907)
-- Dependencies: 190
-- Data for Name: categories; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO categories VALUES (1, 'Cơm', 0, 1);
INSERT INTO categories VALUES (2, 'Bún & Mỳ', 0, 2);
INSERT INTO categories VALUES (3, 'Lẩu', 0, 3);
INSERT INTO categories VALUES (4, 'Đồ ăn nhanh', 0, 4);
INSERT INTO categories VALUES (5, 'Đồ nướng', 0, 5);
INSERT INTO categories VALUES (6, 'Hải sản', 0, 6);
INSERT INTO categories VALUES (7, 'Bánh kẹo', 0, 7);
INSERT INTO categories VALUES (8, 'Đồ uống', 0, 8);
INSERT INTO categories VALUES (9, 'Cơm chiên', 1, 1);
INSERT INTO categories VALUES (10, 'Cơm văn phòng', 1, 2);
INSERT INTO categories VALUES (11, 'Cơm nắm', 1, 3);
INSERT INTO categories VALUES (15, 'Lẩu Việt', 3, 1);
INSERT INTO categories VALUES (16, 'Lẩu Thái', 3, 2);
INSERT INTO categories VALUES (17, 'Lẩu Hàn', 3, 3);
INSERT INTO categories VALUES (14, 'Hủ tiếu', 2, 3);
INSERT INTO categories VALUES (12, 'Bún', 2, 1);
INSERT INTO categories VALUES (13, 'Mỳ', 2, 2);
INSERT INTO categories VALUES (18, 'Món ăn vặt', 4, 1);
INSERT INTO categories VALUES (19, 'Món chiên', 4, 2);
INSERT INTO categories VALUES (20, 'Kem', 4, 3);
INSERT INTO categories VALUES (21, 'Thịt nướng', 5, 1);
INSERT INTO categories VALUES (22, 'Xiên nướng', 5, 2);
INSERT INTO categories VALUES (23, 'Nướng ngói', 5, 3);
INSERT INTO categories VALUES (24, 'Cá', 6, 1);
INSERT INTO categories VALUES (25, 'Cua & Ghẹ', 6, 2);
INSERT INTO categories VALUES (26, 'Mực & Bạch tuộc', 6, 3);
INSERT INTO categories VALUES (27, 'Bánh bông lan', 7, 1);
INSERT INTO categories VALUES (28, 'Bánh kem', 7, 2);
INSERT INTO categories VALUES (29, 'Kẹo chocolate', 7, 3);
INSERT INTO categories VALUES (30, 'Cà phê', 8, 1);
INSERT INTO categories VALUES (31, 'Trà sữa', 8, 2);
INSERT INTO categories VALUES (32, 'Lẩu Trung', 3, 4);
INSERT INTO categories VALUES (33, 'Bánh pizza', 7, 3);


--
-- TOC entry 2278 (class 0 OID 0)
-- Dependencies: 192
-- Name: category_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('category_id_seq', 31, true);


--
-- TOC entry 2270 (class 0 OID 17854)
-- Dependencies: 204
-- Data for Name: ckeditor_assets; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 2279 (class 0 OID 0)
-- Dependencies: 203
-- Name: ckeditor_assets_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('ckeditor_assets_id_seq', 1, false);


--
-- TOC entry 2280 (class 0 OID 0)
-- Dependencies: 193
-- Name: food_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('food_id_seq', 157, true);


--
-- TOC entry 2257 (class 0 OID 16914)
-- Dependencies: 191
-- Data for Name: foods; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO foods VALUES (5, 'Cơm chiên dương châu', 285000, 'Nói đến cơm chiên thì không thể nào không nhắc đến món Cơm Chiên Dương Châu bởi nó đã quá quen thuộc với giới mộ điệu sành ăn tại Sài Gòn. Những nguyên liệu hỗn hợp như lạp xưởng, đậu hà lan, củ cà rốt…đầy màu sắc tạo nên nét đặc trưng của nó.', '<section class="left full">
                <div style="text-align: justify;">Nói đến cơm chiên thì không thể nào không nhắc đến món Cơm Chiên Dương Châu bởi nó đã quá quen thuộc với giới mộ điệu sành ăn tại Sài Gòn. Những nguyên liệu hỗn hợp như lạp xưỡng, đậu hà lan, củ cà rốt…đầy màu sắc tạo nên nét đặc trưng của nó.</div>

<p><strong>CHƯƠNG TRÌNH 1&nbsp;ĐỔI 1:&nbsp;</strong><br>
<br>
<a href="http://flyfood.vn/chuong-trinh-1-doi-1--detail-d068181215175617586.html"><img alt="Chương trình 1 đổi 1 Flyfood" src="http://flyfood.vn/Files/images/Banner%201%20%C4%91%E1%BB%95i%201.jpg" style="height:100%; line-height:20.8px; text-align:center; width:100%" title="Chương trình 1 đổi 1 Flyfood"></a></p>

            </section>', '<section class="left full">
                <div style="text-align: justify;">Nói đến cơm chiên thì không thể nào không nhắc đến món Cơm Chiên Dương Châu bởi nó đã quá quen thuộc với giới mộ điệu sành ăn tại Sài Gòn. Những nguyên liệu hỗn hợp như lạp xưỡng, đậu hà lan, củ cà rốt…đầy màu sắc tạo nên nét đặc trưng của nó.</div>
<img alt="Hộp giữ nhiệt Flyfood" src="http://flyfood.vn/Files/images/hop-giu-nhiet-flyfood.jpg" style="height:100%; width:100%" title="Hộp giữ nhiệt Flyfood">
<p>&nbsp;</p>

<p style="text-align:center">&nbsp;</p>

<p style="text-align:center"><span style="font-size:24px"><span style="color:rgb(255, 0, 0)"><strong>MIỄN 100%</strong></span></span>&nbsp;&nbsp;phí giao hàng cho đơn hàng có giá trị món ăn trên&nbsp;<strong>1.000.000đ</strong>, trên tất cả địa bàn giao hàng gần xa!</p>

<p style="margin-left:30pt; text-align:center"><span style="color:rgb(255, 0, 0)"><span style="font-size:24px"><strong>BẢNG KHU VỰC VÀ PHÍ GIAO HÀNG:</strong></span></span></p>

<table align="center" border="1" cellpadding="0" cellspacing="0" style="border-collapse:collapse; border-spacing:0px; box-sizing:border-box; color:rgb(71, 71, 71); font-family:open sans,arial; font-size:14px; line-height:20.8px; width:100%">
	<tbody>
		<tr>
			<td style="height:31px; width:25%">
			<p style="text-align:center"><span style="font-size:16px"><strong>KHU VỰC 1</strong></span></p>
			</td>
			<td style="height:31px; width:50%">
			<p style="text-align:center"><span style="font-size:16px"><strong>QUY ĐỊNH GIAO HÀNG</strong></span></p>
			</td>
			<td style="height:31px; width:15%">
			<p style="text-align:center"><span style="font-size:16px"><strong>PHÍ</strong></span></p>
			</td>
		</tr>
		<tr>
			<td style="height:31px">
			<p style="text-align:center">Quận Tân Bình</p>
			</td>
			<td rowspan="10" style="height:31px">
			<p>&nbsp; Đặt hàng trước 1 giờ</p>

			<p>&nbsp; Giao hàng liên tục từ 8h00 đến 20h00, kết thúc thời gian đặt hàng lúc 18h30</p>

			<p>&nbsp; Giao hàng tất cả các địa chỉ có tên đường trên bản đồ&nbsp;<a href="http://www.google.com/maps" style="box-sizing: border-box; color: rgb(71, 71, 71); text-decoration: none; background-color: transparent;">www.google.com/maps</a></p>

			<p>&nbsp; Thời gian giao động dự trù 30 phút</p>

			<p><strong>&nbsp; Đơn hàng tối thiểu 180.000 đồng</strong></p>

			<p>&nbsp; Không giao hàng lên lầu hoặc phải gửi xe để chuyển hàng vào nhà.</p>

			<p>&nbsp;</p>
			</td>
			<td style="height:31px">
			<p style="text-align:center">0</p>
			</td>
		</tr>
		<tr>
			<td style="height:31px">
			<p style="text-align:center">Quận Phú Nhuận</p>
			</td>
			<td style="height:31px">
			<p style="text-align:center">0</p>
			</td>
		</tr>
		<tr>
			<td style="height:31px">
			<p style="text-align:center">Quận 1</p>
			</td>
			<td style="height:31px">
			<p style="text-align:center">&nbsp;15,000</p>
			</td>
		</tr>
		<tr>
			<td style="height:31px">
			<p style="text-align:center">Quận 3</p>
			</td>
			<td style="height:31px">
			<p style="text-align:center">&nbsp;15,000</p>
			</td>
		</tr>
		<tr>
			<td style="height:31px">
			<p style="text-align:center">Quận 4</p>
			</td>
			<td style="height:31px">
			<p style="text-align:center">&nbsp;20,000</p>
			</td>
		</tr>
		<tr>
			<td style="height:31px">
			<p style="text-align:center">Quận 5</p>
			</td>
			<td style="height:31px">
			<p style="text-align:center">&nbsp;15,000</p>
			</td>
		</tr>
		<tr>
			<td style="height:31px">
			<p style="text-align:center">Quận 10</p>
			</td>
			<td style="height:31px">
			<p style="text-align:center">&nbsp;15,000</p>
			</td>
		</tr>
		<tr>
			<td style="height:31px">
			<p style="text-align:center">Quận 11</p>
			</td>
			<td style="height:31px">
			<p style="text-align:center">&nbsp;15,000</p>
			</td>
		</tr>
		<tr>
			<td style="height:31px">
			<p style="text-align:center">Quận Tân phú</p>
			</td>
			<td style="height:31px">
			<p style="text-align:center">&nbsp;15,000</p>
			</td>
		</tr>
		<tr>
			<td style="height:31px">
			<p style="text-align:center">Quận Binh Thạnh</p>
			</td>
			<td style="height:31px">
			<p style="text-align:center">&nbsp;20,000</p>
			</td>
		</tr>
		<tr>
			<td style="height:31px">
			<p style="text-align:center"><strong>KHU VỰC 2</strong></p>
			</td>
			<td colspan="2" style="height:31px">
			<p><em>&nbsp; Flyfood rất mong được sự hỗ trợ của quý khách hàng để</em></p>

			<p><em>&nbsp; Nhân Viên Flyfood làm tốt trách nhiệm phục vụ của mình!</em></p>
			</td>
		</tr>
		<tr>
			<td style="height:31px">
			<p style="text-align:center">Quận 2</p>
			</td>
			<td rowspan="8" style="height:31px">
			<p>&nbsp; Đặt hàng trước 2 tiếng</p>

			<p>&nbsp; Giao hàng liên tục từ 8h00 đến 20h00, kết thúc thời gian đặt hàng lúc 18h30</p>

			<p>&nbsp; Giao hàng tất cả các địa chỉ có tên đường trên bản đồ&nbsp;<a href="http://www.google.com/maps" style="box-sizing: border-box; color: rgb(71, 71, 71); text-decoration: none; background-color: transparent;">www.google.com/maps</a></p>

			<p>&nbsp; Thời gian giao động dự trù 45 phút</p>

			<p><strong>&nbsp; Đơn hàng tối thiểu 220.000 đồng</strong></p>

			<p>&nbsp; Không giao hàng lên lầu hoặc phải gửi xe để chuyển hàng vào nhà.</p>

			<p>&nbsp; Có thể từ chối giao hàng trong những trường hợp bất khả kháng về thời tiết, đường ngập nước.</p>
			</td>
			<td style="height:31px">
			<p style="text-align:center">30,000</p>
			</td>
		</tr>
		<tr>
			<td style="height:31px">
			<p style="text-align:center">Quận 6</p>
			</td>
			<td style="height:31px">
			<p style="text-align:center">30,000</p>
			</td>
		</tr>
		<tr>
			<td style="height:31px">
			<p style="text-align:center">Quận 7</p>
			</td>
			<td style="height:31px">
			<p style="text-align:center">30,000</p>
			</td>
		</tr>
		<tr>
			<td style="height:31px">
			<p style="text-align:center">Quận 8</p>
			</td>
			<td style="height:31px">
			<p style="text-align:center">30,000</p>
			</td>
		</tr>
		<tr>
			<td style="height:31px">
			<p style="text-align:center">Quận 12</p>
			</td>
			<td style="height:31px">
			<p style="text-align:center">30,000</p>
			</td>
		</tr>
		<tr>
			<td style="height:31px">
			<p style="text-align:center">Quận Gò Vấp</p>
			</td>
			<td style="height:31px">
			<p style="text-align:center">30,000</p>
			</td>
		</tr>
		<tr>
			<td style="height:31px">
			<p style="text-align:center">Quận Thủ Đức</p>
			</td>
			<td style="height:31px">
			<p style="text-align:center">30,000</p>
			</td>
		</tr>
		<tr>
			<td style="height:31px">
			<p style="text-align:center">Quận Bình Tân</p>
			</td>
			<td style="height:31px">
			<p style="text-align:center">30,000</p>
			</td>
		</tr>
		<tr>
			<td style="height:31px">
			<p style="text-align:center"><strong>KHU VỰC 3</strong></p>
			</td>
			<td colspan="2" style="height:31px">
			<p><em>&nbsp; Flyfood rất mong được sự hỗ trợ của quý khách hàng để</em></p>

			<p><em>&nbsp; Nhân Viên Flyfood làm tốt trách nhiệm phục vụ của mình!</em></p>
			</td>
		</tr>
		<tr>
			<td style="height:31px">
			<p style="text-align:center">Quận 9</p>
			</td>
			<td rowspan="4" style="height:31px">
			<p>&nbsp; Đặt hàng trước 9h00 sáng hoặc 15h00 chiều.</p>

			<p>&nbsp; Giờ giao hàng:</p>

			<p>&nbsp; + Sáng: 10h30 đến 11h30</p>

			<p>&nbsp; + Chiều: 16h30 đến 17h30</p>

			<p>&nbsp; Giao hàng tất cả các địa chỉ có tên đường trên bản đồ&nbsp;<a href="http://www.google.com/maps" style="box-sizing: border-box; color: rgb(71, 71, 71); text-decoration: none; background-color: transparent;">www.google.com/maps</a></p>

			<p>&nbsp; Thời gian giao động dự trù 60 phút</p>

			<p><strong>&nbsp; Đơn hàng trên 2.000.000 đồng không quy định giờ giao hàng (Giao hàng bất kỳ giờ nào theo &nbsp; &nbsp; yêu cầu!)</strong></p>

			<p><strong>&nbsp; Đơn hàng tối thiểu 320.000 đồng</strong></p>
			</td>
			<td style="height:31px">
			<p style="text-align:center">30,000</p>
			</td>
		</tr>
		<tr>
			<td style="height:31px">
			<p style="text-align:center">Huyện Nhà Bè</p>
			</td>
			<td style="height:31px">
			<p style="text-align:center">30,000</p>
			</td>
		</tr>
		<tr>
			<td style="height:31px">
			<p style="text-align:center">Huyện Hóc Môn</p>
			</td>
			<td style="height:31px">
			<p style="text-align:center">30,000</p>
			</td>
		</tr>
		<tr>
			<td style="height:31px">
			<p style="text-align:center">Huyện Bình Chánh</p>

			<p>&nbsp;</p>
			</td>
			<td style="height:31px">
			<p style="text-align:center">30.000</p>
			</td>
		</tr>
		<tr>
			<td style="height:31px">
			<p style="text-align:center">Huyện Củ Chi</p>
			</td>
			<td style="height:31px">
			<p>&nbsp; Đặt hàng trước 9h00 sáng hoặc 15h00 chiều.</p>

			<p>&nbsp; Giờ giao hàng:</p>

			<p>&nbsp; + Sáng: 10h30 đến 11h30</p>

			<p>&nbsp; + Chiều: 16h30 đến 17h30</p>

			<p>&nbsp; Giao hàng theo trục đường:</p>

			<p>&nbsp; + Đường Trường Chinh, đường Xuyên Á, khu vực trung tâm Huyện Củ Chi</p>

			<p>&nbsp; Thời gian giao động dự trù 60 phút</p>

			<p><strong>&nbsp; Đơn hàng trên 2.000.000 đồng không quy định giờ giao hàng (Giao hàng bất kỳ giờ nào theo &nbsp; &nbsp; yêu cầu!)</strong></p>

			<p><strong>&nbsp; Đơn hàng tối thiểu 320.000 đồng</strong></p>
			</td>
			<td style="height:31px">
			<p style="text-align:center">30.000</p>
			</td>
		</tr>
		<tr>
			<td style="height:31px">
			<p style="text-align:center">TP. Thủ Dầu Một và TP. Biên Hòa</p>
			</td>
			<td style="height:31px">
			<p>&nbsp;+ Đặt hàng trước 9h00 sáng hoặc trước&nbsp;15h00 chiều</p>

			<p>+ Thời gian phục vụ từ 8h đến 20h mỗi ngày, kể cả ngày chủ nhật và các ngày lễ.</p>

			<p><strong>Chỉ nhận đơn hàng trên 2.000.000 đồng và&nbsp;không quy định giờ giao hàng (Giao hàng bất kỳ giờ nào theo yêu cầu!)</strong></p>
			</td>
			<td style="height:31px">
			<p style="text-align:center">30.000</p>
			</td>
		</tr>
		<tr>
			<td style="height:31px">
			<p style="text-align:center">Huyện Cần Giờ</p>
			</td>
			<td style="height:31px">
			<p>Chưa triển khai được trong thời gian này, mong quý khách hàng thông cảm!</p>
			</td>
			<td style="height:31px">
			<p>&nbsp;</p>
			</td>
		</tr>
	</tbody>
</table>

<div style="line-height: 20.8px; clear: both;">&nbsp;</div>

<p style="margin-left:0.5in; text-align:center"><span style="color:rgb(255, 0, 0)"><strong>Hấp dẫn vô cùng, càng ăn càng ngon!</strong></span></p>

<p style="margin-left:0.5in; text-align:center"><span style="color:rgb(255, 0, 0)"><span style="font-size:14px"><strong>Giao hà</strong></span><strong>ng cực nhanh, từ 60 đến 90 phút.</strong></span></p>

<p style="margin-left:0.5in; text-align:center"><span style="color:rgb(255, 0, 0)"><strong>Vui lòng đặt hàng trước 16h (sau 16h00 có thể hết hàng)</strong></span></p>

<p style="margin-left:0.5in; text-align:center">&nbsp;</p>

<p style="margin-left:0.5in; text-align:center"><span style="font-size:14px"><strong><img alt="" src="http://flyfood.vn/image/data/card%20qua%20tang.png" style="height:10%; width:10%"></strong></span></p>

<p style="margin-left:0.5in; text-align:center"><span style="font-size:22px"><span style="color:rgb(255, 0, 0)"><strong>Gọi ngay: 08 39 911 911</strong></span></span></p>

<p style="text-align:center"><span style="font-size:16px"><span style="color:rgb(0, 128, 0)"><strong><em>Flyfood – Fast &amp; Hot: “Hiện tượng mới” cho dịch vụ ăn uống Sài Gòn 2014!</em></strong></span></span></p>

<p style="text-align:center">&nbsp;</p>

<p style="text-align:right"><strong>Flyfood.vn</strong></p>

            </section>', 120000, 25, 9, '2016-12-05 15:28:34.517965', '2016-12-05 15:28:34.517965', '5_1.png', NULL, NULL, true, 1, 'com-chien-duong-chau');
INSERT INTO foods VALUES (4, 'Cơm chiên cá mặn', 285000, 'Cơm chiên với những thành phần như cá mặn xé nhỏ, trứng vịt muối, bơ, hành phi…chiên cùng với cơm tạo nên món Cơm Chiên Cá Mặn có mùi vị độc đáo, đầy tầng lớp hương vị.', '<section class="left full">
                <div style="text-align: justify;">Cơm chiên với những thành phần như cá mặn xé nhỏ, trứng vịt muối, bơ, hành phi…chiên cùng với cơm tạo nên món cơm chiên cá mặn có mùi vị độc đáo, đầy tầng lớp hương vị.</div>

<p><strong>CHƯƠNG TRÌNH 1&nbsp;ĐỔI 1:&nbsp;</strong><br>
<br>
<a href="http://flyfood.vn/chuong-trinh-1-doi-1--detail-d068181215175617586.html"><img alt="Chương trình 1 đổi 1 Flyfood" src="http://flyfood.vn/Files/images/Banner%201%20%C4%91%E1%BB%95i%201.jpg" style="height:100%; line-height:20.8px; text-align:center; width:100%" title="Chương trình 1 đổi 1 Flyfood"></a></p>

            </section>', '<section class="left full">
                <div style="text-align: justify;">Cơm chiên với những thành phần như cá mặn xé nhỏ, trứng vịt muối, bơ, hành phi…chiên cùng với cơm tạo nên món cơm chiên cá mặn có mùi vị độc đáo, đầy tầng lớp hương vị.<br>
&nbsp;</div>

<div style="text-align: center;"><br>
<img alt="Cơm chiên cá mặn Flyfood" src="http://flyfood.vn/Files/Accounts/Nguyen Cao Vuong/images/C%c6%a0M%20CHI%c3%8aN%20C%c3%81%20M%e1%ba%b6N%20FLYFOOD%203.jpg" style="width:100%" title="Cơm chiên cá mặn Flyfood"><br>
<br>
<img alt="cơm chiên cá mặn flyfood" src="http://flyfood.vn/Files/Accounts/Nguyen Cao Vuong/images/C%c6%a0M%20CHI%c3%8aN%20C%c3%81%20M%e1%ba%b6N%20FLYFOOD%201.jpg" style="width:100%" title="cơm chiên cá mặn flyfood"><br>
<br>
<img alt="cơm chiên cá mặn flyfood 3" src="http://flyfood.vn/Files/Accounts/Nguyen Cao Vuong/images/C%c6%a0M%20CHI%c3%8aN%20C%c3%81%20M%e1%ba%b6N%20FLYFOOD%204.jpg" style="width:100%" title="cơm chiên cá mặn flyfood 3"><br>
&nbsp;</div>
<img alt="Hộp giữ nhiệt Flyfood" src="http://flyfood.vn/Files/images/hop-giu-nhiet-flyfood.jpg" style="height:100%; width:100%" title="Hộp giữ nhiệt Flyfood">
<p style="text-align:center">&nbsp;</p>

<p style="text-align:center">&nbsp;</p>

<p style="text-align:center"><span style="font-size:24px"><span style="color:rgb(255, 0, 0)"><strong>MIỄN 100%</strong></span></span>&nbsp;&nbsp;phí giao hàng cho đơn hàng có giá trị món ăn trên&nbsp;<strong>1.000.000đ</strong>, trên tất cả địa bàn giao hàng gần xa!</p>

<p style="margin-left:30pt; text-align:center"><span style="color:rgb(255, 0, 0)"><span style="font-size:24px"><strong>BẢNG KHU VỰC VÀ PHÍ GIAO HÀNG:</strong></span></span></p>

<table align="center" border="1" cellpadding="0" cellspacing="0" style="border-collapse:collapse; border-spacing:0px; box-sizing:border-box; color:rgb(71, 71, 71); font-family:open sans,arial; font-size:14px; line-height:20.8px; width:100%">
	<tbody>
		<tr>
			<td style="height:31px; width:25%">
			<p style="text-align:center"><span style="font-size:16px"><strong>KHU VỰC 1</strong></span></p>
			</td>
			<td style="height:31px; width:50%">
			<p style="text-align:center"><span style="font-size:16px"><strong>QUY ĐỊNH GIAO HÀNG</strong></span></p>
			</td>
			<td style="height:31px; width:15%">
			<p style="text-align:center"><span style="font-size:16px"><strong>PHÍ</strong></span></p>
			</td>
		</tr>
		<tr>
			<td style="height:31px">
			<p style="text-align:center">Quận Tân Bình</p>
			</td>
			<td rowspan="10" style="height:31px">
			<p>&nbsp; Đặt hàng trước 1 giờ</p>

			<p>&nbsp; Giao hàng liên tục từ 8h00 đến 20h00, kết thúc thời gian đặt hàng lúc 18h30</p>

			<p>&nbsp; Giao hàng tất cả các địa chỉ có tên đường trên bản đồ&nbsp;<a href="http://www.google.com/maps" style="box-sizing: border-box; color: rgb(71, 71, 71); text-decoration: none; background-color: transparent;">www.google.com/maps</a></p>

			<p>&nbsp; Thời gian giao động dự trù 30 phút</p>

			<p><strong>&nbsp; Đơn hàng tối thiểu 180.000 đồng</strong></p>

			<p>&nbsp; Không giao hàng lên lầu hoặc phải gửi xe để chuyển hàng vào nhà.</p>

			<p>&nbsp;</p>
			</td>
			<td style="height:31px">
			<p style="text-align:center">0</p>
			</td>
		</tr>
		<tr>
			<td style="height:31px">
			<p style="text-align:center">Quận Phú Nhuận</p>
			</td>
			<td style="height:31px">
			<p style="text-align:center">0</p>
			</td>
		</tr>
		<tr>
			<td style="height:31px">
			<p style="text-align:center">Quận 1</p>
			</td>
			<td style="height:31px">
			<p style="text-align:center">&nbsp;15,000</p>
			</td>
		</tr>
		<tr>
			<td style="height:31px">
			<p style="text-align:center">Quận 3</p>
			</td>
			<td style="height:31px">
			<p style="text-align:center">&nbsp;15,000</p>
			</td>
		</tr>
		<tr>
			<td style="height:31px">
			<p style="text-align:center">Quận 4</p>
			</td>
			<td style="height:31px">
			<p style="text-align:center">&nbsp;20,000</p>
			</td>
		</tr>
		<tr>
			<td style="height:31px">
			<p style="text-align:center">Quận 5</p>
			</td>
			<td style="height:31px">
			<p style="text-align:center">&nbsp;15,000</p>
			</td>
		</tr>
		<tr>
			<td style="height:31px">
			<p style="text-align:center">Quận 10</p>
			</td>
			<td style="height:31px">
			<p style="text-align:center">&nbsp;15,000</p>
			</td>
		</tr>
		<tr>
			<td style="height:31px">
			<p style="text-align:center">Quận 11</p>
			</td>
			<td style="height:31px">
			<p style="text-align:center">&nbsp;15,000</p>
			</td>
		</tr>
		<tr>
			<td style="height:31px">
			<p style="text-align:center">Quận Tân phú</p>
			</td>
			<td style="height:31px">
			<p style="text-align:center">&nbsp;15,000</p>
			</td>
		</tr>
		<tr>
			<td style="height:31px">
			<p style="text-align:center">Quận Binh Thạnh</p>
			</td>
			<td style="height:31px">
			<p style="text-align:center">&nbsp;20,000</p>
			</td>
		</tr>
		<tr>
			<td style="height:31px">
			<p style="text-align:center"><strong>KHU VỰC 2</strong></p>
			</td>
			<td colspan="2" style="height:31px">
			<p><em>&nbsp; Flyfood rất mong được sự hỗ trợ của quý khách hàng để</em></p>

			<p><em>&nbsp; Nhân Viên Flyfood làm tốt trách nhiệm phục vụ của mình!</em></p>
			</td>
		</tr>
		<tr>
			<td style="height:31px">
			<p style="text-align:center">Quận 2</p>
			</td>
			<td rowspan="8" style="height:31px">
			<p>&nbsp; Đặt hàng trước 2 tiếng</p>

			<p>&nbsp; Giao hàng liên tục từ 8h00 đến 20h00, kết thúc thời gian đặt hàng lúc 18h30</p>

			<p>&nbsp; Giao hàng tất cả các địa chỉ có tên đường trên bản đồ&nbsp;<a href="http://www.google.com/maps" style="box-sizing: border-box; color: rgb(71, 71, 71); text-decoration: none; background-color: transparent;">www.google.com/maps</a></p>

			<p>&nbsp; Thời gian giao động dự trù 45 phút</p>

			<p><strong>&nbsp; Đơn hàng tối thiểu 220.000 đồng</strong></p>

			<p>&nbsp; Không giao hàng lên lầu hoặc phải gửi xe để chuyển hàng vào nhà.</p>

			<p>&nbsp; Có thể từ chối giao hàng trong những trường hợp bất khả kháng về thời tiết, đường ngập nước.</p>
			</td>
			<td style="height:31px">
			<p style="text-align:center">30,000</p>
			</td>
		</tr>
		<tr>
			<td style="height:31px">
			<p style="text-align:center">Quận 6</p>
			</td>
			<td style="height:31px">
			<p style="text-align:center">30,000</p>
			</td>
		</tr>
		<tr>
			<td style="height:31px">
			<p style="text-align:center">Quận 7</p>
			</td>
			<td style="height:31px">
			<p style="text-align:center">30,000</p>
			</td>
		</tr>
		<tr>
			<td style="height:31px">
			<p style="text-align:center">Quận 8</p>
			</td>
			<td style="height:31px">
			<p style="text-align:center">30,000</p>
			</td>
		</tr>
		<tr>
			<td style="height:31px">
			<p style="text-align:center">Quận 12</p>
			</td>
			<td style="height:31px">
			<p style="text-align:center">30,000</p>
			</td>
		</tr>
		<tr>
			<td style="height:31px">
			<p style="text-align:center">Quận Gò Vấp</p>
			</td>
			<td style="height:31px">
			<p style="text-align:center">30,000</p>
			</td>
		</tr>
		<tr>
			<td style="height:31px">
			<p style="text-align:center">Quận Thủ Đức</p>
			</td>
			<td style="height:31px">
			<p style="text-align:center">30,000</p>
			</td>
		</tr>
		<tr>
			<td style="height:31px">
			<p style="text-align:center">Quận Bình Tân</p>
			</td>
			<td style="height:31px">
			<p style="text-align:center">30,000</p>
			</td>
		</tr>
		<tr>
			<td style="height:31px">
			<p style="text-align:center"><strong>KHU VỰC 3</strong></p>
			</td>
			<td colspan="2" style="height:31px">
			<p><em>&nbsp; Flyfood rất mong được sự hỗ trợ của quý khách hàng để</em></p>

			<p><em>&nbsp; Nhân Viên Flyfood làm tốt trách nhiệm phục vụ của mình!</em></p>
			</td>
		</tr>
		<tr>
			<td style="height:31px">
			<p style="text-align:center">Quận 9</p>
			</td>
			<td rowspan="4" style="height:31px">
			<p>&nbsp; Đặt hàng trước 9h00 sáng hoặc 15h00 chiều.</p>

			<p>&nbsp; Giờ giao hàng:</p>

			<p>&nbsp; + Sáng: 10h30 đến 11h30</p>

			<p>&nbsp; + Chiều: 16h30 đến 17h30</p>

			<p>&nbsp; Giao hàng tất cả các địa chỉ có tên đường trên bản đồ&nbsp;<a href="http://www.google.com/maps" style="box-sizing: border-box; color: rgb(71, 71, 71); text-decoration: none; background-color: transparent;">www.google.com/maps</a></p>

			<p>&nbsp; Thời gian giao động dự trù 60 phút</p>

			<p><strong>&nbsp; Đơn hàng trên 2.000.000 đồng không quy định giờ giao hàng (Giao hàng bất kỳ giờ nào theo &nbsp; &nbsp; yêu cầu!)</strong></p>

			<p><strong>&nbsp; Đơn hàng tối thiểu 320.000 đồng</strong></p>
			</td>
			<td style="height:31px">
			<p style="text-align:center">30,000</p>
			</td>
		</tr>
		<tr>
			<td style="height:31px">
			<p style="text-align:center">Huyện Nhà Bè</p>
			</td>
			<td style="height:31px">
			<p style="text-align:center">30,000</p>
			</td>
		</tr>
		<tr>
			<td style="height:31px">
			<p style="text-align:center">Huyện Hóc Môn</p>
			</td>
			<td style="height:31px">
			<p style="text-align:center">30,000</p>
			</td>
		</tr>
		<tr>
			<td style="height:31px">
			<p style="text-align:center">Huyện Bình Chánh</p>

			<p>&nbsp;</p>
			</td>
			<td style="height:31px">
			<p style="text-align:center">30.000</p>
			</td>
		</tr>
		<tr>
			<td style="height:31px">
			<p style="text-align:center">Huyện Củ Chi</p>
			</td>
			<td style="height:31px">
			<p>&nbsp; Đặt hàng trước 9h00 sáng hoặc 15h00 chiều.</p>

			<p>&nbsp; Giờ giao hàng:</p>

			<p>&nbsp; + Sáng: 10h30 đến 11h30</p>

			<p>&nbsp; + Chiều: 16h30 đến 17h30</p>

			<p>&nbsp; Giao hàng theo trục đường:</p>

			<p>&nbsp; + Đường Trường Chinh, đường Xuyên Á, khu vực trung tâm Huyện Củ Chi</p>

			<p>&nbsp; Thời gian giao động dự trù 60 phút</p>

			<p><strong>&nbsp; Đơn hàng trên 2.000.000 đồng không quy định giờ giao hàng (Giao hàng bất kỳ giờ nào theo &nbsp; &nbsp; yêu cầu!)</strong></p>

			<p><strong>&nbsp; Đơn hàng tối thiểu 320.000 đồng</strong></p>
			</td>
			<td style="height:31px">
			<p style="text-align:center">30.000</p>
			</td>
		</tr>
		<tr>
			<td style="height:31px">
			<p style="text-align:center">TP. Thủ Dầu Một và TP. Biên Hòa</p>
			</td>
			<td style="height:31px">
			<p>&nbsp;+ Đặt hàng trước 9h00 sáng hoặc trước&nbsp;15h00 chiều</p>

			<p>+ Thời gian phục vụ từ 8h đến 20h mỗi ngày, kể cả ngày chủ nhật và các ngày lễ.</p>

			<p><strong>Chỉ nhận đơn hàng trên 2.000.000 đồng và&nbsp;không quy định giờ giao hàng (Giao hàng bất kỳ giờ nào theo yêu cầu!)</strong></p>
			</td>
			<td style="height:31px">
			<p style="text-align:center">30.000</p>
			</td>
		</tr>
		<tr>
			<td style="height:31px">
			<p style="text-align:center">Huyện Cần Giờ</p>
			</td>
			<td style="height:31px">
			<p>Chưa triển khai được trong thời gian này, mong quý khách hàng thông cảm!</p>
			</td>
			<td style="height:31px">
			<p>&nbsp;</p>
			</td>
		</tr>
	</tbody>
</table>

<div style="line-height: 20.8px; clear: both;">&nbsp;</div>

<p style="margin-left:0.5in; text-align:center"><span style="color:rgb(255, 0, 0)"><strong>Hấp dẫn vô cùng, càng ăn càng ngon!</strong></span></p>

<p style="margin-left:0.5in; text-align:center"><span style="color:rgb(255, 0, 0)"><span style="font-size:14px"><strong>Giao hà</strong></span><strong>ng cực nhanh, từ 60 đến 90 phút.</strong></span></p>

<p style="margin-left:0.5in; text-align:center"><span style="color:rgb(255, 0, 0)"><strong>Vui lòng đặt hàng trước 16h (sau 16h00 có thể hết hàng)</strong></span></p>

<p style="margin-left:0.5in; text-align:center">&nbsp;</p>

<p style="margin-left:0.5in; text-align:center"><span style="font-size:14px"><strong><img alt="" src="http://flyfood.vn/image/data/card%20qua%20tang.png" style="height:10%; width:10%"></strong></span></p>

<p style="margin-left:0.5in; text-align:center"><span style="font-size:22px"><span style="color:rgb(255, 0, 0)"><strong>Gọi ngay: 08 39 911 911</strong></span></span></p>

<p style="text-align:center"><span style="font-size:16px"><span style="color:rgb(0, 128, 0)"><strong><em>Flyfood – Fast &amp; Hot: “Hiện tượng mới” cho dịch vụ ăn uống Sài Gòn 2014!</em></strong></span></span></p>

<p style="text-align:center">&nbsp;</p>

<p style="text-align:right"><strong>Flyfood.vn</strong></p>

            </section>', 120000, 25, 9, '2016-12-05 15:25:37.6384', '2016-12-05 15:25:37.6384', '4_1.jpg', NULL, NULL, true, 1, 'com-chien-ca-man');
INSERT INTO foods VALUES (8, 'Cơm cá nục kho với khế', 30000, NULL, NULL, NULL, NULL, 25, 10, '2016-12-06 18:47:50.047565', '2016-12-06 18:47:50.047565', '8_1.jpg', NULL, NULL, true, 1, 'com-ca-nuc-kho-voi-khe');
INSERT INTO foods VALUES (12, 'Cơm sườn bì chả', 30000, NULL, NULL, NULL, NULL, 25, 10, '2016-12-06 18:47:50.047565', '2016-12-06 18:47:50.047565', '12_1.jpg', NULL, NULL, true, 1, 'com-suon-bi-cha');
INSERT INTO foods VALUES (1, 'Cơm gà lá sen', 315000, 'Món ăn đậm chất hương vị truyền thống Việt Nam, gợi nhớ về những tinh hoa tốt đẹp của dân tộc. Hạt cơm thơm dẻo quyện cùng hương vị đậm đà của thịt gà xé phay, cà rốt, đậu ve, hạt sen được gói trong lá sen mang lại hương vị rất riêng cho món cơm gà lá sen', '<section class="left full">
                <div style="text-align: justify;">-&nbsp;Cơm Gà Lá Sen Flyfood món ăn đậm chất hương vị truyền thống Việt Nam, gợi nhớ về những tinh hoa tốt đẹp của dân tộc. Hạt cơm thơm dẻo quyện cùng hương vị đậm đà của thịt gà xé phay, cà rốt, đậu ve, hạt sen được gói trong lá sen mang lại hương vị rất riêng cho món cơm gà lá sen.&nbsp;<br>
- Món cơm phù hợp cho khách dùng trong các bữa cơm trưa&nbsp;ở văn phòng, công ty, phù hợp trong các bữa tiệc lớn và nhỏ.</div>
<span style="color:#FF0000"><strong>SUẤT CƠM GÀ LÁ SEN Gồm:&nbsp;</strong></span><br>
<span style="color:#008000">- Cơm dẻo, thơm 1kg<br>
- Gà ta xé phay<br>
- Hạt sen tươi<br>
- Cà rốt,&nbsp;đậu ve<br>
- Lá sen<br>
- Nước&nbsp;tương Flyfood</span>
            </section>', '<section class="left full">
                <div style="text-align: justify;">Cơm Gà Lá Sen Flyfood món ăn đậm chất hương vị truyền thống Việt Nam, gợi nhớ về những tinh hoa tốt đẹp của dân tộc. Hạt cơm thơm dẻo quyện cùng hương vị đậm đà của thịt gà xé phay, cà rốt, đậu ve, hạt sen được gói trong lá sen mang lại hương vị rất riêng cho món cơm gà lá sen.&nbsp;<br>
&nbsp;</div>

<div style="text-align: center;"><img alt="Cơm gà lá sen Flyfood 1" src="http://flyfood.vn/Files/images/com-ga-la-sen-flyfood-1.png" style="height:100%; width:100%" title="Cơm gà lá sen Flyfood 1"></div>

<div style="text-align: justify;"><br>
Cơm gà lá&nbsp;sen là một món ăn có thể nói là hội tụ nét tinh hoa trong ẩm thực truyền thống&nbsp;Việt Nam&nbsp;nói chung và ẩm thực từ sen nói riêng cũng như thể hiện nét tài hoa độc đáo của người nghệ nhân, bởi cơm gà lá&nbsp;sen không chỉ đòi hỏi sự tỉ mỉ trong chế biến mà còn cầu kỳ trong cách trang trí và&nbsp;bày biện.&nbsp;</div>

<div style="text-align: center;"><br>
<img alt="Cơm gà lá sen Flyfood 2" src="http://flyfood.vn/Files/images/com-ga-la-sen-flyfood-2.png" style="height:100%; width:100%" title="Cơm gà lá sen Flyfood 2"></div>

<div style="text-align: justify;"><br>
Để thực hiện món cơm sen ngon, đẹp mắt thì việc đầu tiên đó là lựa chọn nguồn nguyên liệu. Gạo nấu cơm phải mềm, dẻo, thơm.&nbsp;Một bí quyết để cho món cơm gà lá&nbsp;sen ngon hơn, đậm đà hơn thì khi chọn hạt sen ta nên chọn sen tươi bởi sen tươi có nhiều chất bổ, hương vị sen còn rất&nbsp;nồng nàn.&nbsp;<br>
&nbsp;</div>

<div style="text-align: center;"><img alt="Cơm gà lá sen Flyfood 3" src="http://flyfood.vn/Files/images/com-ga-la-sen-flyfood-3.png" style="height:100%; width:100%" title="Cơm gà lá sen Flyfood 3"></div>

<div style="text-align: justify;"><br>
Để được món cơm gà lá sen&nbsp;ngon Flyfood còn chú trọng vào&nbsp;cách&nbsp;trình bày trang trí sao cho đẹp, hấp dẫn. Chọn lá sen nguyên, không bị rách, rửa sạch, lau khô, chừa cuống lại. Đặt lá sen vào trong tô, tạo thành miệng giếng và cho hỗn hợp cơm đã trộn vào, ép chặt và gọn rồi gói lá sen lại. Khi gói cần phải chú ý không để bị rách lá bằng cách dùng dao nhọn rạch theo sống của ngọn lá và để các sứa lá khỏi rời nhau, phải túm đầu các sứa lá với nhau, xong dùng kim găm kết lại.&nbsp;Để tăng thêm sức hấp dẫn của món ăn, một vài cánh hoa sen được phủ lên trên vành đĩa như một bông hoa đang nở.<br>
&nbsp;</div>

<div style="text-align: center;"><img alt="Cơm gà lá sen Flyfood 4" src="http://flyfood.vn/Files/images/com-ga-la-sen-flyfood-4.png" style="height:100%; width:100%" title="Cơm gà lá sen Flyfood 4"><br>
<br>
<br>
<img alt="Cơm gà lá sen Flyfood 5" src="http://flyfood.vn/Files/images/com-ga-la-sen-flyfood-5.png" style="height:100%; width:100%" title="Cơm gà lá sen Flyfood 5"><br>
<br>
<br>
<img alt="Cơm gà lá sen Flyfood 6" src="http://flyfood.vn/Files/images/com-ga-la-sen-flyfood-6.png" style="height:100%; width:100%" title="Cơm gà lá sen Flyfood 6"><br>
<br>
<br>
<img alt="Cơm gà lá sen Flyfood 7" src="http://flyfood.vn/Files/images/com-ga-la-sen-flyfood-7.png" style="height:100%; width:100%" title="Cơm gà lá sen Flyfood 7"><br>
<br>
<br>
<img alt="Cơm gà lá sen Flyfood 8" src="http://flyfood.vn/Files/images/com-ga-la-sen-flyfood-8.png" style="height:100%; width:100%" title="Cơm gà lá sen Flyfood 8"><br>
<br>
<br>
<img alt="Cơm gà lá sen Flyfood 9" src="http://flyfood.vn/Files/images/com-ga-la-sen-flyfood-9.png" style="height:100%; width:100%" title="Cơm gà lá sen Flyfood 9"></div>

<div style="text-align: justify;"><br>
&nbsp;</div>
<img alt="Hộp giữ nhiệt Flyfood" src="http://flyfood.vn/Files/images/hop-giu-nhiet-flyfood.jpg" style="height:100%; width:100%" title="Hộp giữ nhiệt Flyfood">
<p>&nbsp;</p>

<p style="text-align:center">&nbsp;</p>

<p style="text-align:center"><span style="font-size:24px"><span style="color:rgb(255, 0, 0)"><strong>MIỄN 100%</strong></span></span>&nbsp;&nbsp;phí giao hàng cho đơn hàng có giá trị món ăn trên&nbsp;<strong>1.000.000đ</strong>, trên tất cả địa bàn giao hàng gần xa!</p>

<p style="margin-left:30pt; text-align:center"><span style="color:rgb(255, 0, 0)"><span style="font-size:24px"><strong>BẢNG KHU VỰC VÀ PHÍ GIAO HÀNG:</strong></span></span></p>

<table align="center" border="1" cellpadding="0" cellspacing="0" style="border-collapse:collapse; border-spacing:0px; box-sizing:border-box; color:rgb(71, 71, 71); font-family:open sans,arial; font-size:14px; line-height:20.8px; width:100%">
	<tbody>
		<tr>
			<td style="height:31px; width:25%">
			<p style="text-align:center"><span style="font-size:16px"><strong>KHU VỰC 1</strong></span></p>
			</td>
			<td style="height:31px; width:50%">
			<p style="text-align:center"><span style="font-size:16px"><strong>QUY ĐỊNH GIAO HÀNG</strong></span></p>
			</td>
			<td style="height:31px; width:15%">
			<p style="text-align:center"><span style="font-size:16px"><strong>PHÍ</strong></span></p>
			</td>
		</tr>
		<tr>
			<td style="height:31px">
			<p style="text-align:center">Quận Tân Bình</p>
			</td>
			<td rowspan="10" style="height:31px">
			<p>&nbsp; Đặt hàng trước 1 giờ</p>

			<p>&nbsp; Giao hàng liên tục từ 8h00 đến 20h00, kết thúc thời gian đặt hàng lúc 18h30</p>

			<p>&nbsp; Giao hàng tất cả các địa chỉ có tên đường trên bản đồ&nbsp;<a href="http://www.google.com/maps" style="box-sizing: border-box; color: rgb(71, 71, 71); text-decoration: none; background-color: transparent;">www.google.com/maps</a></p>

			<p>&nbsp; Thời gian giao động dự trù 30 phút</p>

			<p><strong>&nbsp; Đơn hàng tối thiểu 180.000 đồng</strong></p>

			<p>&nbsp; Không giao hàng lên lầu hoặc phải gửi xe để chuyển hàng vào nhà.</p>

			<p>&nbsp;</p>
			</td>
			<td style="height:31px">
			<p style="text-align:center">0</p>
			</td>
		</tr>
		<tr>
			<td style="height:31px">
			<p style="text-align:center">Quận Phú Nhuận</p>
			</td>
			<td style="height:31px">
			<p style="text-align:center">0</p>
			</td>
		</tr>
		<tr>
			<td style="height:31px">
			<p style="text-align:center">Quận 1</p>
			</td>
			<td style="height:31px">
			<p style="text-align:center">&nbsp;15,000</p>
			</td>
		</tr>
		<tr>
			<td style="height:31px">
			<p style="text-align:center">Quận 3</p>
			</td>
			<td style="height:31px">
			<p style="text-align:center">&nbsp;15,000</p>
			</td>
		</tr>
		<tr>
			<td style="height:31px">
			<p style="text-align:center">Quận 4</p>
			</td>
			<td style="height:31px">
			<p style="text-align:center">&nbsp;20,000</p>
			</td>
		</tr>
		<tr>
			<td style="height:31px">
			<p style="text-align:center">Quận 5</p>
			</td>
			<td style="height:31px">
			<p style="text-align:center">&nbsp;15,000</p>
			</td>
		</tr>
		<tr>
			<td style="height:31px">
			<p style="text-align:center">Quận 10</p>
			</td>
			<td style="height:31px">
			<p style="text-align:center">&nbsp;15,000</p>
			</td>
		</tr>
		<tr>
			<td style="height:31px">
			<p style="text-align:center">Quận 11</p>
			</td>
			<td style="height:31px">
			<p style="text-align:center">&nbsp;15,000</p>
			</td>
		</tr>
		<tr>
			<td style="height:31px">
			<p style="text-align:center">Quận Tân phú</p>
			</td>
			<td style="height:31px">
			<p style="text-align:center">&nbsp;15,000</p>
			</td>
		</tr>
		<tr>
			<td style="height:31px">
			<p style="text-align:center">Quận Binh Thạnh</p>
			</td>
			<td style="height:31px">
			<p style="text-align:center">&nbsp;20,000</p>
			</td>
		</tr>
		<tr>
			<td style="height:31px">
			<p style="text-align:center"><strong>KHU VỰC 2</strong></p>
			</td>
			<td colspan="2" style="height:31px">
			<p><em>&nbsp; Flyfood rất mong được sự hỗ trợ của quý khách hàng để</em></p>

			<p><em>&nbsp; Nhân Viên Flyfood làm tốt trách nhiệm phục vụ của mình!</em></p>
			</td>
		</tr>
		<tr>
			<td style="height:31px">
			<p style="text-align:center">Quận 2</p>
			</td>
			<td rowspan="8" style="height:31px">
			<p>&nbsp; Đặt hàng trước 2 tiếng</p>

			<p>&nbsp; Giao hàng liên tục từ 8h00 đến 20h00, kết thúc thời gian đặt hàng lúc 18h30</p>

			<p>&nbsp; Giao hàng tất cả các địa chỉ có tên đường trên bản đồ&nbsp;<a href="http://www.google.com/maps" style="box-sizing: border-box; color: rgb(71, 71, 71); text-decoration: none; background-color: transparent;">www.google.com/maps</a></p>

			<p>&nbsp; Thời gian giao động dự trù 45 phút</p>

			<p><strong>&nbsp; Đơn hàng tối thiểu 220.000 đồng</strong></p>

			<p>&nbsp; Không giao hàng lên lầu hoặc phải gửi xe để chuyển hàng vào nhà.</p>

			<p>&nbsp; Có thể từ chối giao hàng trong những trường hợp bất khả kháng về thời tiết, đường ngập nước.</p>
			</td>
			<td style="height:31px">
			<p style="text-align:center">30,000</p>
			</td>
		</tr>
		<tr>
			<td style="height:31px">
			<p style="text-align:center">Quận 6</p>
			</td>
			<td style="height:31px">
			<p style="text-align:center">30,000</p>
			</td>
		</tr>
		<tr>
			<td style="height:31px">
			<p style="text-align:center">Quận 7</p>
			</td>
			<td style="height:31px">
			<p style="text-align:center">30,000</p>
			</td>
		</tr>
		<tr>
			<td style="height:31px">
			<p style="text-align:center">Quận 8</p>
			</td>
			<td style="height:31px">
			<p style="text-align:center">30,000</p>
			</td>
		</tr>
		<tr>
			<td style="height:31px">
			<p style="text-align:center">Quận 12</p>
			</td>
			<td style="height:31px">
			<p style="text-align:center">30,000</p>
			</td>
		</tr>
		<tr>
			<td style="height:31px">
			<p style="text-align:center">Quận Gò Vấp</p>
			</td>
			<td style="height:31px">
			<p style="text-align:center">30,000</p>
			</td>
		</tr>
		<tr>
			<td style="height:31px">
			<p style="text-align:center">Quận Thủ Đức</p>
			</td>
			<td style="height:31px">
			<p style="text-align:center">30,000</p>
			</td>
		</tr>
		<tr>
			<td style="height:31px">
			<p style="text-align:center">Quận Bình Tân</p>
			</td>
			<td style="height:31px">
			<p style="text-align:center">30,000</p>
			</td>
		</tr>
		<tr>
			<td style="height:31px">
			<p style="text-align:center"><strong>KHU VỰC 3</strong></p>
			</td>
			<td colspan="2" style="height:31px">
			<p><em>&nbsp; Flyfood rất mong được sự hỗ trợ của quý khách hàng để</em></p>

			<p><em>&nbsp; Nhân Viên Flyfood làm tốt trách nhiệm phục vụ của mình!</em></p>
			</td>
		</tr>
		<tr>
			<td style="height:31px">
			<p style="text-align:center">Quận 9</p>
			</td>
			<td rowspan="4" style="height:31px">
			<p>&nbsp; Đặt hàng trước 9h00 sáng hoặc 15h00 chiều.</p>

			<p>&nbsp; Giờ giao hàng:</p>

			<p>&nbsp; + Sáng: 10h30 đến 11h30</p>

			<p>&nbsp; + Chiều: 16h30 đến 17h30</p>

			<p>&nbsp; Giao hàng tất cả các địa chỉ có tên đường trên bản đồ&nbsp;<a href="http://www.google.com/maps" style="box-sizing: border-box; color: rgb(71, 71, 71); text-decoration: none; background-color: transparent;">www.google.com/maps</a></p>

			<p>&nbsp; Thời gian giao động dự trù 60 phút</p>

			<p><strong>&nbsp; Đơn hàng trên 2.000.000 đồng không quy định giờ giao hàng (Giao hàng bất kỳ giờ nào theo &nbsp; &nbsp; yêu cầu!)</strong></p>

			<p><strong>&nbsp; Đơn hàng tối thiểu 320.000 đồng</strong></p>
			</td>
			<td style="height:31px">
			<p style="text-align:center">30,000</p>
			</td>
		</tr>
		<tr>
			<td style="height:31px">
			<p style="text-align:center">Huyện Nhà Bè</p>
			</td>
			<td style="height:31px">
			<p style="text-align:center">30,000</p>
			</td>
		</tr>
		<tr>
			<td style="height:31px">
			<p style="text-align:center">Huyện Hóc Môn</p>
			</td>
			<td style="height:31px">
			<p style="text-align:center">30,000</p>
			</td>
		</tr>
		<tr>
			<td style="height:31px">
			<p style="text-align:center">Huyện Bình Chánh</p>

			<p>&nbsp;</p>
			</td>
			<td style="height:31px">
			<p style="text-align:center">30.000</p>
			</td>
		</tr>
		<tr>
			<td style="height:31px">
			<p style="text-align:center">Huyện Củ Chi</p>
			</td>
			<td style="height:31px">
			<p>&nbsp; Đặt hàng trước 9h00 sáng hoặc 15h00 chiều.</p>

			<p>&nbsp; Giờ giao hàng:</p>

			<p>&nbsp; + Sáng: 10h30 đến 11h30</p>

			<p>&nbsp; + Chiều: 16h30 đến 17h30</p>

			<p>&nbsp; Giao hàng theo trục đường:</p>

			<p>&nbsp; + Đường Trường Chinh, đường Xuyên Á, khu vực trung tâm Huyện Củ Chi</p>

			<p>&nbsp; Thời gian giao động dự trù 60 phút</p>

			<p><strong>&nbsp; Đơn hàng trên 2.000.000 đồng không quy định giờ giao hàng (Giao hàng bất kỳ giờ nào theo &nbsp; &nbsp; yêu cầu!)</strong></p>

			<p><strong>&nbsp; Đơn hàng tối thiểu 320.000 đồng</strong></p>
			</td>
			<td style="height:31px">
			<p style="text-align:center">30.000</p>
			</td>
		</tr>
		<tr>
			<td style="height:31px">
			<p style="text-align:center">TP. Thủ Dầu Một và TP. Biên Hòa</p>
			</td>
			<td style="height:31px">
			<p>&nbsp;+ Đặt hàng trước 9h00 sáng hoặc trước&nbsp;15h00 chiều</p>

			<p>+ Thời gian phục vụ từ 8h đến 20h mỗi ngày, kể cả ngày chủ nhật và các ngày lễ.</p>

			<p><strong>Chỉ nhận đơn hàng trên 2.000.000 đồng và&nbsp;không quy định giờ giao hàng (Giao hàng bất kỳ giờ nào theo yêu cầu!)</strong></p>
			</td>
			<td style="height:31px">
			<p style="text-align:center">30.000</p>
			</td>
		</tr>
		<tr>
			<td style="height:31px">
			<p style="text-align:center">Huyện Cần Giờ</p>
			</td>
			<td style="height:31px">
			<p>Chưa triển khai được trong thời gian này, mong quý khách hàng thông cảm!</p>
			</td>
			<td style="height:31px">
			<p>&nbsp;</p>
			</td>
		</tr>
	</tbody>
</table>

<div style="line-height: 20.8px; clear: both;">&nbsp;</div>

<p style="margin-left:0.5in; text-align:center"><span style="color:rgb(255, 0, 0)"><strong>Hấp dẫn vô cùng, càng ăn càng ngon!</strong></span></p>

<p style="margin-left:0.5in; text-align:center"><span style="color:rgb(255, 0, 0)"><span style="font-size:14px"><strong>Giao hà</strong></span><strong>ng cực nhanh, từ 60 đến 90 phút.</strong></span></p>

<p style="margin-left:0.5in; text-align:center"><span style="color:rgb(255, 0, 0)"><strong>Vui lòng đặt hàng trước 16h (sau 16h00 có thể hết hàng)</strong></span></p>

<p style="margin-left:0.5in; text-align:center">&nbsp;</p>

<p style="margin-left:0.5in; text-align:center"><span style="font-size:14px"><strong><img alt="" src="http://flyfood.vn/image/data/card%20qua%20tang.png" style="height:10%; width:10%"></strong></span></p>

<p style="margin-left:0.5in; text-align:center"><span style="font-size:22px"><span style="color:rgb(255, 0, 0)"><strong>Gọi ngay: 08 39 911 911</strong></span></span></p>

<p style="text-align:center"><span style="font-size:16px"><span style="color:rgb(0, 128, 0)"><strong><em>Flyfood – Fast &amp; Hot: “Hiện tượng mới” cho dịch vụ ăn uống Sài Gòn 2014!</em></strong></span></span></p>

<p style="text-align:center">&nbsp;</p>

<p style="text-align:right"><strong>Flyfood.vn</strong></p>

            </section>', 250000, 25, 9, '2016-12-04 20:36:35.444084', '2016-12-04 20:36:35.444084', '1_1.png', '1_2.png', '1_3.png', true, 1, 'com-ga-la-sen');
INSERT INTO foods VALUES (11, 'Cơm cá rim', 30000, NULL, NULL, NULL, NULL, 25, 10, '2016-12-06 18:47:50.047565', '2016-12-06 18:47:50.047565', '11_1.jpg', NULL, NULL, true, 1, 'com-ca-rim');
INSERT INTO foods VALUES (9, 'Cơm gà kho măng', 30000, NULL, NULL, NULL, NULL, 25, 10, '2016-12-06 18:47:50.047565', '2016-12-06 18:47:50.047565', '9_1.jpg', NULL, NULL, true, 1, 'com-ga-kho-mang');
INSERT INTO foods VALUES (7, 'Cơm cá diêu hồng chiên', 30000, NULL, NULL, NULL, NULL, 25, 10, '2016-12-06 18:47:50.047565', '2016-12-06 18:47:50.047565', '7_1.jpg', NULL, NULL, true, 1, 'com-ca-dieu-hong-chien');
INSERT INTO foods VALUES (10, 'Cơm thịt heo xào xả ớt', 30000, NULL, NULL, NULL, NULL, 25, 10, '2016-12-06 18:47:50.047565', '2016-12-06 18:47:50.047565', '10_1.jpg', NULL, NULL, true, 1, 'com-thit-heo-xao-xa-ot');
INSERT INTO foods VALUES (37, 'Lẩu nấm hải sản', 565000, 'Món Lẩu Nấm Hải Sản rất giàu chất dinh dưỡng và không gây xơ cứng động mạch, không làm tăng cholesterol trong máu giống như các loại thực phẩm có nguồn gốc từ động vật. Chống lại sự đông máu, công hiệu như aspirin trong việc phòng ngừa bệnh tim và tai biến mạch máu não, tăng cường sức đề kháng.', '<section class="left full">
                <div style="text-align: justify;">- Món <strong>Lẩu Nấm Hải Sản</strong> rất giàu chất dinh dưỡng và không gây xơ cứng động mạch, không làm tăng cholesterol trong máu giống như các loại thực phẩm có nguồn gốc từ động vật.&nbsp;Chống lại sự đông máu, công hiệu như aspirin trong việc phòng ngừa bệnh tim và tai biến mạch máu não, tăng cường sức đề kháng.<br>
- <span style="font-family:arial">Nấm là thực phẩm giàu đạm, đầy đủ các acid amin thiết yếu, hàm lượng chất béo ít và là những acid béo chưa bão hòa. Do đó tốt cho sức khỏe của con người.<br>
- N</span>ước lẩu&nbsp;được nấu rất&nbsp;đặc biết với các loại vị thuốc bắc quý (táo tàu, hoài sơn, sinh&nbsp;địa, kỷ tử, tam thất, bạch chỉ,&nbsp;đương quy,...). Có nhiều cách nấu nước lẩu:&nbsp;nấu nước trong và&nbsp;nấu nước đỏ (táo táo, nước tương, nấm)&nbsp;<br>
- Món lẩu&nbsp;bày trí sang trong thích hợp trong các bữa tiệc lớn nhỏ.</div>
<span style="color:#FF0000"><strong>Suất LẨU&nbsp;NẤM&nbsp;HẢI&nbsp;SẢN</strong></span><span style="color:#FF0000"><strong>&nbsp;g&#8203;ồm:</strong></span><br>
<span style="color:#008000">-&nbsp;300gram nấm&nbsp;<br>
- 100gram đậu hủ trứng<br>
- 10 con tôm sú<br>
- 150gram mực lá<br>
- 100gram dồi trường<br>
- 150gram cá hú<br>
- 1kg bún<br>
- 400gram rau tần ô (cải&nbsp;cúc)<br>
- 2 lít nước</span>

<div style="text-align:justify"><span style="color:#FF0000"><strong>Trọng&nbsp;lượng thành phẩm: 2kg&nbsp;nước + 1,4kg nguyên liệu&nbsp;phụ</strong></span><br>
<span style="color:#FF0000"><strong>Nước thêm 1kg giá&nbsp;50.000 VNĐ</strong></span></div>
<br>
<strong>CHƯƠNG TRÌNH 1&nbsp;ĐỔI 1:&nbsp;</strong><br>
<br>
<a href="http://flyfood.vn/chuong-trinh-1-doi-1--detail-d068181215175617586.html" style="line-height: 20.8px;"><img alt="Chương trình 1 đổi 1 Flyfood" src="http://flyfood.vn/Files/images/Banner%201%20%C4%91%E1%BB%95i%201.jpg" style="height:100%; line-height:20.8px; text-align:center; width:100%" title="Chương trình 1 đổi 1 Flyfood"></a>
            </section>', '<section class="left full">
                <div style="text-align: justify;">Món <strong>Lẩu Nấm Hải Sản</strong> rất giàu chất dinh dưỡng và không gây xơ cứng động mạch, không làm tăng cholesterol trong máu giống như các loại thực phẩm có nguồn gốc từ động vật.&nbsp;Chống lại sự đông máu, công hiệu như aspirin trong việc phòng ngừa bệnh tim và tai biến mạch máu não, tăng cường sức đề kháng.&nbsp;</div>

<div style="text-align: center;"><br>
<img alt="Lẩu nấm hải sản Flyfood 1" src="http://flyfood.vn/Files/images/lau-nam-hai-san-flyfood-1.png" style="height:100%; width:100%" title="Lẩu nấm hải sản Flyfood 1"><br>
&nbsp;</div>

<p><strong>Lẩu Nấm Hải Sản </strong>giúp&nbsp;điều hòa khí huyết và ngừa ung thư…&nbsp;giúp chống lão hóa, dưỡng tóc, đẹp da… từ bên trong.&nbsp;Các chuyên gia dinh dưỡng cũng đã chỉ ra rằng, về mùa hè nóng nực, ăn <strong>Lẩu Nấm Hải Sản</strong>&nbsp;sẽ giúp cơ thể con người thanh nhiệt , mát gan giải độc, có sức khỏe tốt và làn da đẹp!</p>

<p style="text-align:center"><br>
<img alt="Lẩu nấm hải sản Flyfood 2" src="http://flyfood.vn/Files/images/lau-nam-hai-san-flyfood-2.png" style="height:100%; width:100%" title="Lẩu nấm hải sản Flyfood 2"><br>
<br>
<img alt="Lẩu nấm hải sản Flyfood 3" src="http://flyfood.vn/Files/images/lau-nam-hai-san-flyfood-3.png" style="height:100%; width:100%" title="Lẩu nấm hải sản Flyfood 3"><br>
<br>
<br>
<img alt="Lẩu nấm hải sản Flyfood 4" src="http://flyfood.vn/Files/images/lau-nam-hai-san-flyfood-4.png" style="height:100%; width:100%" title="Lẩu nấm hải sản Flyfood 4"><br>
<br>
<br>
<img alt="Lẩu nấm hải sản Flyfood 5" src="http://flyfood.vn/Files/images/lau-nam-hai-san-flyfood-5.png" style="height:100%; width:100%" title="Lẩu nấm hải sản Flyfood 5"><br>
<br>
<br>
<img alt="Lẩu nấm hải sản Flyfood 6" src="http://flyfood.vn/Files/images/lau-nam-hai-san-flyfood-6.png" style="height:100%; width:100%" title="Lẩu nấm hải sản Flyfood 6"><br>
<br>
<br>
<img alt="Lẩu nấm hải sản Flyfood 7" src="http://flyfood.vn/Files/images/lau-nam-hai-san-flyfood-7.png" style="height:100%; width:100%" title="Lẩu nấm hải sản Flyfood 7"><br>
<br>
<br>
<img alt="Lẩu nấm hải sản Flyfood 8" src="http://flyfood.vn/Files/images/lau-nam-hai-san-flyfood-8.png" style="height:100%; width:100%" title="Lẩu nấm hải sản Flyfood 8"><br>
<br>
<br>
<img alt="Lẩu nấm hải sản Flyfood 9" src="http://flyfood.vn/Files/images/lau-nam-hai-san-flyfood-9.png" style="height:100%; width:100%" title="Lẩu nấm hải sản Flyfood 9"><br>
<br>
<br>
<img alt="Lẩu nấm hải sản Flyfood 10" src="http://flyfood.vn/Files/images/lau-nam-hai-san-flyfood-10.png" style="height:100%; width:100%" title="Lẩu nấm hải sản Flyfood 10"><br>
<br>
<br>
<img alt="Lẩu nấm hải sản Flyfood 11" src="http://flyfood.vn/Files/images/lau-nam-hai-san-flyfood-11.png" style="height:100%; width:100%" title="Lẩu nấm hải sản Flyfood 11"><br>
<br>
<br>
<img alt="Lẩu nấm hải sản Flyfood 12" src="http://flyfood.vn/Files/images/lau-nam-hai-san-flyfood-12.png" style="height:100%; width:100%" title="Lẩu nấm hải sản Flyfood 12"><br>
<br>
<br>
<img alt="Lẩu nấm hải sản Flyfood 13" src="http://flyfood.vn/Files/images/lau-nam-hai-san-flyfood-13.png" style="height:100%; width:100%" title="Lẩu nấm hải sản Flyfood 13"><br>
<br>
<br>
<img alt="Lẩu nấm hải sản Flyfood 14" src="http://flyfood.vn/Files/images/lau-nam-hai-san-flyfood-14.png" style="height:100%; width:100%" title="Lẩu nấm hải sản Flyfood 14"><br>
<br>
<br>
<img alt="Lẩu nấm hải sản Flyfood 15" src="http://flyfood.vn/Files/images/lau-nam-hai-san-flyfood-15.png" style="height:100%; width:100%" title="Lẩu nấm hải sản Flyfood 15"><br>
<br>
<br>
<br>
<img alt="Hộp giữ nhiệt Flyfood" src="http://flyfood.vn/Files/images/hop-giu-nhiet-flyfood.jpg" style="height:100%; width:100%" title="Hộp giữ nhiệt Flyfood"><br>
&nbsp;</p>

<p style="text-align:center"><span style="font-size:24px"><span style="color:rgb(255, 0, 0)"><strong>MIỄN 100%</strong></span></span>&nbsp;&nbsp;phí giao hàng cho đơn hàng có giá trị món ăn trên&nbsp;<strong>1.000.000đ</strong>, trên tất cả địa bàn giao hàng gần xa!</p>

<p style="margin-left:30pt; text-align:center"><span style="color:rgb(255, 0, 0)"><span style="font-size:24px"><strong>BẢNG KHU VỰC VÀ PHÍ GIAO HÀNG:</strong></span></span></p>

<table align="center" border="1" cellpadding="0" cellspacing="0" style="border-collapse:collapse; border-spacing:0px; box-sizing:border-box; color:rgb(71, 71, 71); font-family:open sans,arial; font-size:14px; line-height:20.8px; width:100%">
	<tbody>
		<tr>
			<td style="height:31px; width:25%">
			<p style="text-align:center"><span style="font-size:16px"><strong>KHU VỰC 1</strong></span></p>
			</td>
			<td style="height:31px; width:50%">
			<p style="text-align:center"><span style="font-size:16px"><strong>QUY ĐỊNH GIAO HÀNG</strong></span></p>
			</td>
			<td style="height:31px; width:15%">
			<p style="text-align:center"><span style="font-size:16px"><strong>PHÍ</strong></span></p>
			</td>
		</tr>
		<tr>
			<td style="height:31px">
			<p style="text-align:center">Quận Tân Bình</p>
			</td>
			<td rowspan="10" style="height:31px">
			<p>&nbsp; Đặt hàng trước 1 giờ</p>

			<p>&nbsp; Giao hàng liên tục từ 8h00 đến 20h00, kết thúc thời gian đặt hàng lúc 18h30</p>

			<p>&nbsp; Giao hàng tất cả các địa chỉ có tên đường trên bản đồ&nbsp;<a href="http://www.google.com/maps" style="box-sizing: border-box; color: rgb(71, 71, 71); text-decoration: none; background-color: transparent;">www.google.com/maps</a></p>

			<p>&nbsp; Thời gian giao động dự trù 30 phút</p>

			<p><strong>&nbsp; Đơn hàng tối thiểu 180.000 đồng</strong></p>

			<p>&nbsp; Không giao hàng lên lầu hoặc phải gửi xe để chuyển hàng vào nhà.</p>

			<p>&nbsp;</p>
			</td>
			<td style="height:31px">
			<p style="text-align:center">0</p>
			</td>
		</tr>
		<tr>
			<td style="height:31px">
			<p style="text-align:center">Quận Phú Nhuận</p>
			</td>
			<td style="height:31px">
			<p style="text-align:center">0</p>
			</td>
		</tr>
		<tr>
			<td style="height:31px">
			<p style="text-align:center">Quận 1</p>
			</td>
			<td style="height:31px">
			<p style="text-align:center">&nbsp;15,000</p>
			</td>
		</tr>
		<tr>
			<td style="height:31px">
			<p style="text-align:center">Quận 3</p>
			</td>
			<td style="height:31px">
			<p style="text-align:center">&nbsp;15,000</p>
			</td>
		</tr>
		<tr>
			<td style="height:31px">
			<p style="text-align:center">Quận 4</p>
			</td>
			<td style="height:31px">
			<p style="text-align:center">&nbsp;20,000</p>
			</td>
		</tr>
		<tr>
			<td style="height:31px">
			<p style="text-align:center">Quận 5</p>
			</td>
			<td style="height:31px">
			<p style="text-align:center">&nbsp;15,000</p>
			</td>
		</tr>
		<tr>
			<td style="height:31px">
			<p style="text-align:center">Quận 10</p>
			</td>
			<td style="height:31px">
			<p style="text-align:center">&nbsp;15,000</p>
			</td>
		</tr>
		<tr>
			<td style="height:31px">
			<p style="text-align:center">Quận 11</p>
			</td>
			<td style="height:31px">
			<p style="text-align:center">&nbsp;15,000</p>
			</td>
		</tr>
		<tr>
			<td style="height:31px">
			<p style="text-align:center">Quận Tân phú</p>
			</td>
			<td style="height:31px">
			<p style="text-align:center">&nbsp;15,000</p>
			</td>
		</tr>
		<tr>
			<td style="height:31px">
			<p style="text-align:center">Quận Binh Thạnh</p>
			</td>
			<td style="height:31px">
			<p style="text-align:center">&nbsp;20,000</p>
			</td>
		</tr>
		<tr>
			<td style="height:31px">
			<p style="text-align:center"><strong>KHU VỰC 2</strong></p>
			</td>
			<td colspan="2" style="height:31px">
			<p><em>&nbsp; Flyfood rất mong được sự hỗ trợ của quý khách hàng để</em></p>

			<p><em>&nbsp; Nhân Viên Flyfood làm tốt trách nhiệm phục vụ của mình!</em></p>
			</td>
		</tr>
		<tr>
			<td style="height:31px">
			<p style="text-align:center">Quận 2</p>
			</td>
			<td rowspan="8" style="height:31px">
			<p>&nbsp; Đặt hàng trước 2 tiếng</p>

			<p>&nbsp; Giao hàng liên tục từ 8h00 đến 20h00, kết thúc thời gian đặt hàng lúc 18h30</p>

			<p>&nbsp; Giao hàng tất cả các địa chỉ có tên đường trên bản đồ&nbsp;<a href="http://www.google.com/maps" style="box-sizing: border-box; color: rgb(71, 71, 71); text-decoration: none; background-color: transparent;">www.google.com/maps</a></p>

			<p>&nbsp; Thời gian giao động dự trù 45 phút</p>

			<p><strong>&nbsp; Đơn hàng tối thiểu 220.000 đồng</strong></p>

			<p>&nbsp; Không giao hàng lên lầu hoặc phải gửi xe để chuyển hàng vào nhà.</p>

			<p>&nbsp; Có thể từ chối giao hàng trong những trường hợp bất khả kháng về thời tiết, đường ngập nước.</p>
			</td>
			<td style="height:31px">
			<p style="text-align:center">30,000</p>
			</td>
		</tr>
		<tr>
			<td style="height:31px">
			<p style="text-align:center">Quận 6</p>
			</td>
			<td style="height:31px">
			<p style="text-align:center">30,000</p>
			</td>
		</tr>
		<tr>
			<td style="height:31px">
			<p style="text-align:center">Quận 7</p>
			</td>
			<td style="height:31px">
			<p style="text-align:center">30,000</p>
			</td>
		</tr>
		<tr>
			<td style="height:31px">
			<p style="text-align:center">Quận 8</p>
			</td>
			<td style="height:31px">
			<p style="text-align:center">30,000</p>
			</td>
		</tr>
		<tr>
			<td style="height:31px">
			<p style="text-align:center">Quận 12</p>
			</td>
			<td style="height:31px">
			<p style="text-align:center">30,000</p>
			</td>
		</tr>
		<tr>
			<td style="height:31px">
			<p style="text-align:center">Quận Gò Vấp</p>
			</td>
			<td style="height:31px">
			<p style="text-align:center">30,000</p>
			</td>
		</tr>
		<tr>
			<td style="height:31px">
			<p style="text-align:center">Quận Thủ Đức</p>
			</td>
			<td style="height:31px">
			<p style="text-align:center">30,000</p>
			</td>
		</tr>
		<tr>
			<td style="height:31px">
			<p style="text-align:center">Quận Bình Tân</p>
			</td>
			<td style="height:31px">
			<p style="text-align:center">30,000</p>
			</td>
		</tr>
		<tr>
			<td style="height:31px">
			<p style="text-align:center"><strong>KHU VỰC 3</strong></p>
			</td>
			<td colspan="2" style="height:31px">
			<p><em>&nbsp; Flyfood rất mong được sự hỗ trợ của quý khách hàng để</em></p>

			<p><em>&nbsp; Nhân Viên Flyfood làm tốt trách nhiệm phục vụ của mình!</em></p>
			</td>
		</tr>
		<tr>
			<td style="height:31px">
			<p style="text-align:center">Quận 9</p>
			</td>
			<td rowspan="4" style="height:31px">
			<p>&nbsp; Đặt hàng trước 9h00 sáng hoặc 15h00 chiều.</p>

			<p>&nbsp; Giờ giao hàng:</p>

			<p>&nbsp; + Sáng: 10h30 đến 11h30</p>

			<p>&nbsp; + Chiều: 16h30 đến 17h30</p>

			<p>&nbsp; Giao hàng tất cả các địa chỉ có tên đường trên bản đồ&nbsp;<a href="http://www.google.com/maps" style="box-sizing: border-box; color: rgb(71, 71, 71); text-decoration: none; background-color: transparent;">www.google.com/maps</a></p>

			<p>&nbsp; Thời gian giao động dự trù 60 phút</p>

			<p><strong>&nbsp; Đơn hàng trên 2.000.000 đồng không quy định giờ giao hàng (Giao hàng bất kỳ giờ nào theo &nbsp; &nbsp; yêu cầu!)</strong></p>

			<p><strong>&nbsp; Đơn hàng tối thiểu 320.000 đồng</strong></p>
			</td>
			<td style="height:31px">
			<p style="text-align:center">30,000</p>
			</td>
		</tr>
		<tr>
			<td style="height:31px">
			<p style="text-align:center">Huyện Nhà Bè</p>
			</td>
			<td style="height:31px">
			<p style="text-align:center">30,000</p>
			</td>
		</tr>
		<tr>
			<td style="height:31px">
			<p style="text-align:center">Huyện Hóc Môn</p>
			</td>
			<td style="height:31px">
			<p style="text-align:center">30,000</p>
			</td>
		</tr>
		<tr>
			<td style="height:31px">
			<p style="text-align:center">Huyện Bình Chánh</p>

			<p>&nbsp;</p>
			</td>
			<td style="height:31px">
			<p style="text-align:center">30.000</p>
			</td>
		</tr>
		<tr>
			<td style="height:31px">
			<p style="text-align:center">Huyện Củ Chi</p>
			</td>
			<td style="height:31px">
			<p>&nbsp; Đặt hàng trước 9h00 sáng hoặc 15h00 chiều.</p>

			<p>&nbsp; Giờ giao hàng:</p>

			<p>&nbsp; + Sáng: 10h30 đến 11h30</p>

			<p>&nbsp; + Chiều: 16h30 đến 17h30</p>

			<p>&nbsp; Giao hàng theo trục đường:</p>

			<p>&nbsp; + Đường Trường Chinh, đường Xuyên Á, khu vực trung tâm Huyện Củ Chi</p>

			<p>&nbsp; Thời gian giao động dự trù 60 phút</p>

			<p><strong>&nbsp; Đơn hàng trên 2.000.000 đồng không quy định giờ giao hàng (Giao hàng bất kỳ giờ nào theo &nbsp; &nbsp; yêu cầu!)</strong></p>

			<p><strong>&nbsp; Đơn hàng tối thiểu 320.000 đồng</strong></p>
			</td>
			<td style="height:31px">
			<p style="text-align:center">30.000</p>
			</td>
		</tr>
		<tr>
			<td style="height:31px">
			<p style="text-align:center">TP. Thủ Dầu Một và TP. Biên Hòa</p>
			</td>
			<td style="height:31px">
			<p>&nbsp;+ Đặt hàng trước 9h00 sáng hoặc trước&nbsp;15h00 chiều</p>

			<p>+ Thời gian phục vụ từ 8h đến 20h mỗi ngày, kể cả ngày chủ nhật và các ngày lễ.</p>

			<p><strong>Chỉ nhận đơn hàng trên 2.000.000 đồng và&nbsp;không quy định giờ giao hàng (Giao hàng bất kỳ giờ nào theo yêu cầu!)</strong></p>
			</td>
			<td style="height:31px">
			<p style="text-align:center">30.000</p>
			</td>
		</tr>
		<tr>
			<td style="height:31px">
			<p style="text-align:center">Huyện Cần Giờ</p>
			</td>
			<td style="height:31px">
			<p>Chưa triển khai được trong thời gian này, mong quý khách hàng thông cảm!</p>
			</td>
			<td style="height:31px">
			<p>&nbsp;</p>
			</td>
		</tr>
	</tbody>
</table>

<div style="line-height: 20.8px; clear: both;">&nbsp;</div>

<p style="margin-left:0.5in; text-align:center"><span style="color:rgb(255, 0, 0)"><strong>Hấp dẫn vô cùng, càng ăn càng ngon!</strong></span></p>

<p style="margin-left:0.5in; text-align:center"><span style="color:rgb(255, 0, 0)"><span style="font-size:14px"><strong>Giao hà</strong></span><strong>ng cực nhanh, từ 60 đến 90 phút.</strong></span></p>

<p style="margin-left:0.5in; text-align:center"><span style="color:rgb(255, 0, 0)"><strong>Vui lòng đặt hàng trước 16h (sau 16h00 có thể hết hàng)</strong></span></p>

<p style="margin-left:0.5in; text-align:center">&nbsp;</p>

<p style="margin-left:0.5in; text-align:center"><span style="font-size:14px"><strong><img alt="" src="http://flyfood.vn/image/data/card%20qua%20tang.png" style="height:76px; width:113.297px"></strong></span></p>

<p style="margin-left:0.5in; text-align:center"><span style="font-size:22px"><span style="color:rgb(255, 0, 0)"><strong>Gọi ngay: 08 39 911 911</strong></span></span></p>

<p style="text-align:center"><span style="font-size:16px"><span style="color:rgb(0, 128, 0)"><strong><em>Flyfood – Fast &amp; Hot: “Hiện tượng mới” cho dịch vụ ăn uống Sài Gòn 2014!</em></strong></span></span></p>

<p style="text-align:center">&nbsp;</p>

<p style="text-align:right"><strong>Flyfood.vn</strong></p>

            </section>', 450000, 20, 15, '2016-12-08 18:15:35.302649', '2016-12-08 18:15:35.302649', '37_1.png', '37_2.png', NULL, true, 1, 'lau-nam-hai-san');
INSERT INTO foods VALUES (25, 'Mỳ xào bò', 15000, NULL, NULL, NULL, NULL, 50, 13, '2016-12-08 15:37:26.541505', '2016-12-08 15:37:26.541505', '25_1.jpg', NULL, NULL, true, 1, 'my-xao-bo');
INSERT INTO foods VALUES (33, 'Hủ tiếu bò kho', 35000, NULL, NULL, NULL, 25000, 50, 14, '2016-12-08 17:38:14.390029', '2016-12-08 17:38:14.390029', '33_1.jpg', NULL, NULL, true, 1, 'hu-tieu-bo-kho');
INSERT INTO foods VALUES (16, 'Cơm nắm panda', 45000, NULL, NULL, NULL, NULL, 25, 11, '2016-12-06 23:12:48.165698', '2016-12-06 23:12:48.165698', '16_1.jpg', NULL, NULL, true, 1, 'com-nam-panda');
INSERT INTO foods VALUES (18, 'Cơm nắm cá ngừ', 55000, NULL, NULL, NULL, NULL, 25, 11, '2016-12-06 23:12:48.165698', '2016-12-06 23:12:48.165698', '18_1.jpg', NULL, NULL, true, 1, 'com-nam-ca-ngu');
INSERT INTO foods VALUES (20, 'Bún thịt nướng chả giò', 35000, NULL, NULL, NULL, NULL, 50, 12, '2016-12-08 12:40:02.842146', '2016-12-08 12:40:02.842146', '20_1.jpg', NULL, NULL, true, 1, 'bun-thit-nuong-cha-gio');
INSERT INTO foods VALUES (14, 'Cơm nắm rong biển', 35000, NULL, NULL, NULL, NULL, 25, 11, '2016-12-06 23:12:48.165698', '2016-12-06 23:12:48.165698', '14_1.jpg', NULL, NULL, true, 1, 'com-nam-rong-bien');
INSERT INTO foods VALUES (15, 'Cơm nắm nướng', 45000, NULL, NULL, NULL, NULL, 25, 11, '2016-12-06 23:12:48.165698', '2016-12-06 23:12:48.165698', '15_1.jpg', NULL, NULL, true, 1, 'com-nam-nuong');
INSERT INTO foods VALUES (19, 'Bún thịt nướng', 30000, NULL, NULL, NULL, 20000, 30, 12, '2016-12-08 10:12:00.11027', '2016-12-08 10:12:00.11027', '19_1.jpg', NULL, NULL, true, 1, 'bun-thit-nuong');
INSERT INTO foods VALUES (17, 'Cơm nắm lady', 45000, NULL, NULL, NULL, NULL, 25, 11, '2016-12-06 23:12:48.165698', '2016-12-06 23:12:48.165698', '17_1.jpg', NULL, NULL, true, 1, 'com-nam-lady');
INSERT INTO foods VALUES (21, 'Bún thịt nướng nem chua', 40000, NULL, NULL, NULL, 35000, 50, 12, '2016-12-08 12:51:31.965116', '2016-12-08 12:51:31.965116', '21_1.jpg', NULL, NULL, true, 1, 'bun-thit-nuong-nem-chua');
INSERT INTO foods VALUES (27, 'Mỳ xào hải sản', 25000, NULL, NULL, NULL, NULL, 50, 13, '2016-12-08 15:37:26.541505', '2016-12-08 15:37:26.541505', '27_1.jpg', NULL, NULL, true, 1, 'my-xao-hai-san');
INSERT INTO foods VALUES (36, 'Hủ tiếu mực', 30000, NULL, NULL, NULL, NULL, 50, 14, '2016-12-08 17:38:14.390029', '2016-12-08 17:38:14.390029', '36_1.jpg', NULL, NULL, true, 1, 'hu-tieu-muc');
INSERT INTO foods VALUES (23, 'Bún bò thập cẩm', 25000, NULL, NULL, NULL, NULL, 50, 12, '2016-12-08 12:51:31.965116', '2016-12-08 12:51:31.965116', '23_1.jpg', NULL, NULL, true, 1, 'bun-bo-thap-cam');
INSERT INTO foods VALUES (31, 'Hủ tiếu Thái', 30000, NULL, NULL, NULL, NULL, 50, 14, '2016-12-08 17:38:14.390029', '2016-12-08 17:38:14.390029', '31_1.jpg', NULL, NULL, true, 1, 'hu-tieu-thai');
INSERT INTO foods VALUES (24, 'Bún riêu cua ốc', 25000, NULL, NULL, NULL, NULL, 50, 12, '2016-12-08 12:51:31.965116', '2016-12-08 12:51:31.965116', '24_1.jpg', NULL, NULL, true, 1, 'bun-rieu-cua-oc');
INSERT INTO foods VALUES (29, 'Mỳ Efu xào thịt gà', 50000, NULL, NULL, NULL, 40000, 50, 13, '2016-12-08 15:37:26.541505', '2016-12-08 15:37:26.541505', '29_1.jpg', NULL, NULL, true, 1, 'my-efu-xao-thit-ga');
INSERT INTO foods VALUES (30, 'Mỳ quảng', 30000, NULL, NULL, NULL, NULL, 50, 13, '2016-12-08 15:37:26.541505', '2016-12-08 15:37:26.541505', '30_1.jpg', NULL, NULL, true, 1, 'my-quang');
INSERT INTO foods VALUES (22, 'Bún bò Huế', 35000, NULL, NULL, NULL, NULL, 50, 12, '2016-12-08 12:51:31.965116', '2016-12-08 12:51:31.965116', '22_1.jpg', NULL, NULL, true, 1, 'bun-bo-hue');
INSERT INTO foods VALUES (114, 'Bánh gato flan caramel', 30000, NULL, NULL, NULL, NULL, 25, 28, '2016-12-10 10:11:01.272419', '2016-12-10 10:11:01.272419', '114_1.jpg', NULL, NULL, true, 1, 'banh-ga-to-flan-caramel');
INSERT INTO foods VALUES (115, 'Marshmallow phủ chocolate', 5000, NULL, NULL, NULL, NULL, 75, 29, '2016-12-10 10:25:55.414793', '2016-12-10 10:25:55.414793', '115_1.jpg', NULL, NULL, true, 1, 'marshmallow-phu-chocolate');
INSERT INTO foods VALUES (116, 'Nama chocolate', 100000, NULL, NULL, NULL, 80000, 75, 29, '2016-12-10 10:25:55.414793', '2016-12-10 10:25:55.414793', '116_1.jpg', NULL, NULL, true, 1, 'nama-chocolate');
INSERT INTO foods VALUES (117, 'Kobito chocolate', 190000, NULL, NULL, NULL, NULL, 75, 29, '2016-12-10 10:25:55.414793', '2016-12-10 10:25:55.414793', '117_1.jpg', NULL, NULL, true, 1, 'kobito-chocolate');
INSERT INTO foods VALUES (118, 'Chocolate sầu riêng', 80000, NULL, NULL, NULL, NULL, 85, 29, '2016-12-10 10:25:55.414793', '2016-12-10 10:25:55.414793', '118_1.jpg', NULL, NULL, true, 1, 'chocolate-sau-rieng');
INSERT INTO foods VALUES (120, 'Cà phê đá xay', 50000, NULL, NULL, NULL, NULL, 75, 30, '2016-12-10 10:58:02.786903', '2016-12-10 10:58:02.786903', '120_1.jpg', NULL, NULL, true, 1, 'ca-phe-da-xay');
INSERT INTO foods VALUES (119, 'Starbucks', 55000, NULL, NULL, NULL, NULL, 75, 30, '2016-12-10 10:58:02.786903', '2016-12-10 10:58:02.786903', '119_1.jpg', NULL, NULL, true, 1, 'starbucks');
INSERT INTO foods VALUES (121, 'Matcha freeze', 35000, NULL, NULL, NULL, NULL, 75, 30, '2016-12-10 10:58:02.786903', '2016-12-10 10:58:02.786903', '121_1.jpg', NULL, NULL, true, 1, 'matcha-freeze');
INSERT INTO foods VALUES (124, 'Cà phê sữa đá', 20000, NULL, NULL, NULL, NULL, 85, 30, '2016-12-10 10:58:02.786903', '2016-12-10 10:58:02.786903', '124_1.jpg', NULL, NULL, true, 1, 'ca-phe-sua-da');
INSERT INTO foods VALUES (123, 'Matcha latte', 35000, NULL, NULL, NULL, NULL, 85, 30, '2016-12-10 10:58:02.786903', '2016-12-10 10:58:02.786903', '123_1.jpg', NULL, NULL, true, 1, 'matcha-latte');
INSERT INTO foods VALUES (125, 'Trà sữa đen', 28000, NULL, NULL, NULL, NULL, 75, 31, '2016-12-10 11:10:28.458377', '2016-12-10 11:10:28.458377', '125_1.jpg', NULL, NULL, true, 1, 'tra-sua-den');
INSERT INTO foods VALUES (122, 'Capuchino', 35000, NULL, NULL, NULL, NULL, 85, 30, '2016-12-10 10:58:02.786903', '2016-12-10 10:58:02.786903', '122_1.jpg', NULL, NULL, true, 1, 'caphuchino');
INSERT INTO foods VALUES (6, 'Cơm chiên hải sản', 285000, 'Cơm Chiên Hải Sản giữ trọn được hương vị những thành phần chủ đạo của hải sản như tôm, mực, cá, nghêu...đan xen với hạt cơm thơm lừng làm nên món cơm chiên đa dạng này.', '<section class="left full">
                <div style="text-align: justify;">Cơm chiên hải sản giữ trọn được hương vị những thành phần chủ đạo của hải sản như tôm, mực, cá, nghêu...đan xen với hạt cơm thơm lừng làm nên món cơm chiên đa dạng này.<br>
&nbsp;</div>

<p><strong>CHƯƠNG TRÌNH 1&nbsp;ĐỔI 1:&nbsp;</strong><br>
<br>
<a href="http://flyfood.vn/chuong-trinh-1-doi-1--detail-d068181215175617586.html"><img alt="Chương trình 1 đổi 1 Flyfood" src="http://flyfood.vn/Files/images/Banner%201%20%C4%91%E1%BB%95i%201.jpg" style="height:100%; line-height:20.8px; text-align:center; width:100%" title="Chương trình 1 đổi 1 Flyfood"></a></p>

            </section>', '<section class="left full">
                <div style="text-align: justify;">Cơm chiên hải sản giữ trọn được hương vị những thành phần chủ đạo của hải sản như tôm, mực, cá, nghêu...đan xen với hạt cơm thơm lừng làm nên món cơm chiên đa dạng này.</div>

<div style="text-align: center;"><br>
<img alt="Cơm chiên hải sản Flyfood" src="http://flyfood.vn/Files/images/C%C6%A0M%20CHI%C3%8AN%20H%E1%BA%A2I%20S%E1%BA%A2N.png" style="height:100%; width:100%" title="Cơm chiên hải sản Flyfood"></div>
<img alt="Hộp giữ nhiệt Flyfood" src="http://flyfood.vn/Files/images/hop-giu-nhiet-flyfood.jpg" style="height:100%; width:100%" title="Hộp giữ nhiệt Flyfood">
<p>&nbsp;</p>

<p style="text-align:center">&nbsp;</p>

<p style="text-align:center"><span style="font-size:24px"><span style="color:rgb(255, 0, 0)"><strong>MIỄN 100%</strong></span></span>&nbsp;&nbsp;phí giao hàng cho đơn hàng có giá trị món ăn trên&nbsp;<strong>1.000.000đ</strong>, trên tất cả địa bàn giao hàng gần xa!</p>

<p style="margin-left:30pt; text-align:center"><span style="color:rgb(255, 0, 0)"><span style="font-size:24px"><strong>BẢNG KHU VỰC VÀ PHÍ GIAO HÀNG:</strong></span></span></p>

<table align="center" border="1" cellpadding="0" cellspacing="0" style="border-collapse:collapse; border-spacing:0px; box-sizing:border-box; color:rgb(71, 71, 71); font-family:open sans,arial; font-size:14px; line-height:20.8px; width:100%">
	<tbody>
		<tr>
			<td style="height:31px; width:25%">
			<p style="text-align:center"><span style="font-size:16px"><strong>KHU VỰC 1</strong></span></p>
			</td>
			<td style="height:31px; width:50%">
			<p style="text-align:center"><span style="font-size:16px"><strong>QUY ĐỊNH GIAO HÀNG</strong></span></p>
			</td>
			<td style="height:31px; width:15%">
			<p style="text-align:center"><span style="font-size:16px"><strong>PHÍ</strong></span></p>
			</td>
		</tr>
		<tr>
			<td style="height:31px">
			<p style="text-align:center">Quận Tân Bình</p>
			</td>
			<td rowspan="10" style="height:31px">
			<p>&nbsp; Đặt hàng trước 1 giờ</p>

			<p>&nbsp; Giao hàng liên tục từ 8h00 đến 20h00, kết thúc thời gian đặt hàng lúc 18h30</p>

			<p>&nbsp; Giao hàng tất cả các địa chỉ có tên đường trên bản đồ&nbsp;<a href="http://www.google.com/maps" style="box-sizing: border-box; color: rgb(71, 71, 71); text-decoration: none; background-color: transparent;">www.google.com/maps</a></p>

			<p>&nbsp; Thời gian giao động dự trù 30 phút</p>

			<p><strong>&nbsp; Đơn hàng tối thiểu 180.000 đồng</strong></p>

			<p>&nbsp; Không giao hàng lên lầu hoặc phải gửi xe để chuyển hàng vào nhà.</p>

			<p>&nbsp;</p>
			</td>
			<td style="height:31px">
			<p style="text-align:center">0</p>
			</td>
		</tr>
		<tr>
			<td style="height:31px">
			<p style="text-align:center">Quận Phú Nhuận</p>
			</td>
			<td style="height:31px">
			<p style="text-align:center">0</p>
			</td>
		</tr>
		<tr>
			<td style="height:31px">
			<p style="text-align:center">Quận 1</p>
			</td>
			<td style="height:31px">
			<p style="text-align:center">&nbsp;15,000</p>
			</td>
		</tr>
		<tr>
			<td style="height:31px">
			<p style="text-align:center">Quận 3</p>
			</td>
			<td style="height:31px">
			<p style="text-align:center">&nbsp;15,000</p>
			</td>
		</tr>
		<tr>
			<td style="height:31px">
			<p style="text-align:center">Quận 4</p>
			</td>
			<td style="height:31px">
			<p style="text-align:center">&nbsp;20,000</p>
			</td>
		</tr>
		<tr>
			<td style="height:31px">
			<p style="text-align:center">Quận 5</p>
			</td>
			<td style="height:31px">
			<p style="text-align:center">&nbsp;15,000</p>
			</td>
		</tr>
		<tr>
			<td style="height:31px">
			<p style="text-align:center">Quận 10</p>
			</td>
			<td style="height:31px">
			<p style="text-align:center">&nbsp;15,000</p>
			</td>
		</tr>
		<tr>
			<td style="height:31px">
			<p style="text-align:center">Quận 11</p>
			</td>
			<td style="height:31px">
			<p style="text-align:center">&nbsp;15,000</p>
			</td>
		</tr>
		<tr>
			<td style="height:31px">
			<p style="text-align:center">Quận Tân phú</p>
			</td>
			<td style="height:31px">
			<p style="text-align:center">&nbsp;15,000</p>
			</td>
		</tr>
		<tr>
			<td style="height:31px">
			<p style="text-align:center">Quận Binh Thạnh</p>
			</td>
			<td style="height:31px">
			<p style="text-align:center">&nbsp;20,000</p>
			</td>
		</tr>
		<tr>
			<td style="height:31px">
			<p style="text-align:center"><strong>KHU VỰC 2</strong></p>
			</td>
			<td colspan="2" style="height:31px">
			<p><em>&nbsp; Flyfood rất mong được sự hỗ trợ của quý khách hàng để</em></p>

			<p><em>&nbsp; Nhân Viên Flyfood làm tốt trách nhiệm phục vụ của mình!</em></p>
			</td>
		</tr>
		<tr>
			<td style="height:31px">
			<p style="text-align:center">Quận 2</p>
			</td>
			<td rowspan="8" style="height:31px">
			<p>&nbsp; Đặt hàng trước 2 tiếng</p>

			<p>&nbsp; Giao hàng liên tục từ 8h00 đến 20h00, kết thúc thời gian đặt hàng lúc 18h30</p>

			<p>&nbsp; Giao hàng tất cả các địa chỉ có tên đường trên bản đồ&nbsp;<a href="http://www.google.com/maps" style="box-sizing: border-box; color: rgb(71, 71, 71); text-decoration: none; background-color: transparent;">www.google.com/maps</a></p>

			<p>&nbsp; Thời gian giao động dự trù 45 phút</p>

			<p><strong>&nbsp; Đơn hàng tối thiểu 220.000 đồng</strong></p>

			<p>&nbsp; Không giao hàng lên lầu hoặc phải gửi xe để chuyển hàng vào nhà.</p>

			<p>&nbsp; Có thể từ chối giao hàng trong những trường hợp bất khả kháng về thời tiết, đường ngập nước.</p>
			</td>
			<td style="height:31px">
			<p style="text-align:center">30,000</p>
			</td>
		</tr>
		<tr>
			<td style="height:31px">
			<p style="text-align:center">Quận 6</p>
			</td>
			<td style="height:31px">
			<p style="text-align:center">30,000</p>
			</td>
		</tr>
		<tr>
			<td style="height:31px">
			<p style="text-align:center">Quận 7</p>
			</td>
			<td style="height:31px">
			<p style="text-align:center">30,000</p>
			</td>
		</tr>
		<tr>
			<td style="height:31px">
			<p style="text-align:center">Quận 8</p>
			</td>
			<td style="height:31px">
			<p style="text-align:center">30,000</p>
			</td>
		</tr>
		<tr>
			<td style="height:31px">
			<p style="text-align:center">Quận 12</p>
			</td>
			<td style="height:31px">
			<p style="text-align:center">30,000</p>
			</td>
		</tr>
		<tr>
			<td style="height:31px">
			<p style="text-align:center">Quận Gò Vấp</p>
			</td>
			<td style="height:31px">
			<p style="text-align:center">30,000</p>
			</td>
		</tr>
		<tr>
			<td style="height:31px">
			<p style="text-align:center">Quận Thủ Đức</p>
			</td>
			<td style="height:31px">
			<p style="text-align:center">30,000</p>
			</td>
		</tr>
		<tr>
			<td style="height:31px">
			<p style="text-align:center">Quận Bình Tân</p>
			</td>
			<td style="height:31px">
			<p style="text-align:center">30,000</p>
			</td>
		</tr>
		<tr>
			<td style="height:31px">
			<p style="text-align:center"><strong>KHU VỰC 3</strong></p>
			</td>
			<td colspan="2" style="height:31px">
			<p><em>&nbsp; Flyfood rất mong được sự hỗ trợ của quý khách hàng để</em></p>

			<p><em>&nbsp; Nhân Viên Flyfood làm tốt trách nhiệm phục vụ của mình!</em></p>
			</td>
		</tr>
		<tr>
			<td style="height:31px">
			<p style="text-align:center">Quận 9</p>
			</td>
			<td rowspan="4" style="height:31px">
			<p>&nbsp; Đặt hàng trước 9h00 sáng hoặc 15h00 chiều.</p>

			<p>&nbsp; Giờ giao hàng:</p>

			<p>&nbsp; + Sáng: 10h30 đến 11h30</p>

			<p>&nbsp; + Chiều: 16h30 đến 17h30</p>

			<p>&nbsp; Giao hàng tất cả các địa chỉ có tên đường trên bản đồ&nbsp;<a href="http://www.google.com/maps" style="box-sizing: border-box; color: rgb(71, 71, 71); text-decoration: none; background-color: transparent;">www.google.com/maps</a></p>

			<p>&nbsp; Thời gian giao động dự trù 60 phút</p>

			<p><strong>&nbsp; Đơn hàng trên 2.000.000 đồng không quy định giờ giao hàng (Giao hàng bất kỳ giờ nào theo &nbsp; &nbsp; yêu cầu!)</strong></p>

			<p><strong>&nbsp; Đơn hàng tối thiểu 320.000 đồng</strong></p>
			</td>
			<td style="height:31px">
			<p style="text-align:center">30,000</p>
			</td>
		</tr>
		<tr>
			<td style="height:31px">
			<p style="text-align:center">Huyện Nhà Bè</p>
			</td>
			<td style="height:31px">
			<p style="text-align:center">30,000</p>
			</td>
		</tr>
		<tr>
			<td style="height:31px">
			<p style="text-align:center">Huyện Hóc Môn</p>
			</td>
			<td style="height:31px">
			<p style="text-align:center">30,000</p>
			</td>
		</tr>
		<tr>
			<td style="height:31px">
			<p style="text-align:center">Huyện Bình Chánh</p>

			<p>&nbsp;</p>
			</td>
			<td style="height:31px">
			<p style="text-align:center">30.000</p>
			</td>
		</tr>
		<tr>
			<td style="height:31px">
			<p style="text-align:center">Huyện Củ Chi</p>
			</td>
			<td style="height:31px">
			<p>&nbsp; Đặt hàng trước 9h00 sáng hoặc 15h00 chiều.</p>

			<p>&nbsp; Giờ giao hàng:</p>

			<p>&nbsp; + Sáng: 10h30 đến 11h30</p>

			<p>&nbsp; + Chiều: 16h30 đến 17h30</p>

			<p>&nbsp; Giao hàng theo trục đường:</p>

			<p>&nbsp; + Đường Trường Chinh, đường Xuyên Á, khu vực trung tâm Huyện Củ Chi</p>

			<p>&nbsp; Thời gian giao động dự trù 60 phút</p>

			<p><strong>&nbsp; Đơn hàng trên 2.000.000 đồng không quy định giờ giao hàng (Giao hàng bất kỳ giờ nào theo &nbsp; &nbsp; yêu cầu!)</strong></p>

			<p><strong>&nbsp; Đơn hàng tối thiểu 320.000 đồng</strong></p>
			</td>
			<td style="height:31px">
			<p style="text-align:center">30.000</p>
			</td>
		</tr>
		<tr>
			<td style="height:31px">
			<p style="text-align:center">TP. Thủ Dầu Một và TP. Biên Hòa</p>
			</td>
			<td style="height:31px">
			<p>&nbsp;+ Đặt hàng trước 9h00 sáng hoặc trước&nbsp;15h00 chiều</p>

			<p>+ Thời gian phục vụ từ 8h đến 20h mỗi ngày, kể cả ngày chủ nhật và các ngày lễ.</p>

			<p><strong>Chỉ nhận đơn hàng trên 2.000.000 đồng và&nbsp;không quy định giờ giao hàng (Giao hàng bất kỳ giờ nào theo yêu cầu!)</strong></p>
			</td>
			<td style="height:31px">
			<p style="text-align:center">30.000</p>
			</td>
		</tr>
		<tr>
			<td style="height:31px">
			<p style="text-align:center">Huyện Cần Giờ</p>
			</td>
			<td style="height:31px">
			<p>Chưa triển khai được trong thời gian này, mong quý khách hàng thông cảm!</p>
			</td>
			<td style="height:31px">
			<p>&nbsp;</p>
			</td>
		</tr>
	</tbody>
</table>

<div style="line-height: 20.8px; clear: both;">&nbsp;</div>

<p style="margin-left:0.5in; text-align:center"><span style="color:rgb(255, 0, 0)"><strong>Hấp dẫn vô cùng, càng ăn càng ngon!</strong></span></p>

<p style="margin-left:0.5in; text-align:center"><span style="color:rgb(255, 0, 0)"><span style="font-size:14px"><strong>Giao hà</strong></span><strong>ng cực nhanh, từ 60 đến 90 phút.</strong></span></p>

<p style="margin-left:0.5in; text-align:center"><span style="color:rgb(255, 0, 0)"><strong>Vui lòng đặt hàng trước 16h (sau 16h00 có thể hết hàng)</strong></span></p>

<p style="margin-left:0.5in; text-align:center">&nbsp;</p>

<p style="margin-left:0.5in; text-align:center"><span style="font-size:14px"><strong><img alt="" src="http://flyfood.vn/image/data/card%20qua%20tang.png" style="height:10%; width:10%"></strong></span></p>

<p style="margin-left:0.5in; text-align:center"><span style="font-size:22px"><span style="color:rgb(255, 0, 0)"><strong>Gọi ngay: 08 39 911 911</strong></span></span></p>

<p style="text-align:center"><span style="font-size:16px"><span style="color:rgb(0, 128, 0)"><strong><em>Flyfood – Fast &amp; Hot: “Hiện tượng mới” cho dịch vụ ăn uống Sài Gòn 2014!</em></strong></span></span></p>

<p style="text-align:center">&nbsp;</p>

<p style="text-align:right"><strong>Flyfood.vn</strong></p>

            </section>', 120000, 25, 9, '2016-12-05 15:31:12.479291', '2016-12-05 15:31:12.479291', '6_1.png', NULL, NULL, true, 1, 'com-chien-hai-san');
INSERT INTO foods VALUES (44, 'Lẩu Thái Tomyum', 500000, NULL, NULL, NULL, 400000, 15, 16, '2016-12-08 19:18:49.011486', '2016-12-08 19:18:49.011486', '44_1.jpg', NULL, NULL, true, 1, 'lau-thai-tomyum');
INSERT INTO foods VALUES (40, 'Lẩu gà tiềm ớt hiểm', 475000, 'Món “Lẩu Gà Tiềm Ớt Hiểm” là sự kết hợp độc đáo 3 nguyên liệu tạo vị và mùi đặc biệt: ớt xanh, hương quế, nấm đông cô và gà ta được chiên sơ, hầm mềm trên lửa nhỏ tạo cảm giác ấm áp, thơm và ngọt khi thưởng thức. Gà mái nòi (giống gà đá), sử dụng loại gà mái tơ, chưa ôm trứng, thịt dai mềm, ít mỡ, gà mái ít xương hơn gà trống', '<section class="left full">
                <ul>
	<li style="text-align:justify"><span style="font-size:small"><strong><em>Món “L</em></strong></span><em><strong>ẩu Gà Tiềm Ớt Hiểm</strong></em><span style="font-size:small"><strong><em>”&nbsp;</em></strong>là sự kết hợp độc đáo 3 nguyên liệu tạo vị và mùi đặc biệt: ớt xanh, hương quế, nấm đông cô và gà ta được chiên sơ, hầm mềm trên lửa nhỏ tạo cảm giác ấm áp, thơm và ngọt khi thưởng thức.</span></li>
	<li>Gà mái nòi (giống gà đá), sử dụng loại gà mái tơ, chưa ôm trứng, thịt dai mềm, ít mỡ, gà mái ít xương hơn gà trống</li>
	<li>Món ăn đậm đà thanh mát với sà lách son và cải bẹ xanh</li>
	<li>Bún gạo sơ chế mỡ hành tạo sự đậm đà hấp dẫn</li>
	<li><span style="color:rgb(255, 0, 0)"><strong>Suất GÀ TIỀM ỚT HIỂM bao gồm:</strong></span>
	<ul>
		<li><span style="color:rgb(0, 128, 0)">1 con gà ta (gà mái&nbsp;nòi) 1,6 - 1,7kg (lúc còn sống)</span></li>
		<li><span style="color:rgb(0, 128, 0)">Xà lách son và cải bẹ xanh: 0,5kg</span></li>
		<li><span style="color:rgb(0, 128, 0)">Bún gạo: 0,5kg</span></li>
		<li><span style="color:rgb(0, 128, 0)">Muối ớt, muối tiêu chanh</span></li>
		<li><span style="color:rgb(0, 128, 0)">1&nbsp;đôi bao tay</span></li>
	</ul>
	</li>
	<li><span style="color:rgb(0, 128, 0)"><strong>Trọng&nbsp;lượng thành phẩm: 1,8kg nước + 1kg gà ta</strong></span></li>
	<li><span style="color:rgb(0, 128, 0)"><strong>Nước thêm 1kg giá&nbsp;50.000 VNĐ</strong></span>
	<ul>
		<li>&#8203;<span style="color:rgb(0, 128, 0)"><em><strong>Gà to hơn, nuôi nhiều tháng hơn, thịt dai và ngọt hơn!</strong></em></span></li>
	</ul>
	</li>
</ul>

<p><strong>CHƯƠNG TRÌNH 1&nbsp;ĐỔI 1:</strong><br>
&nbsp;</p>

<p style="text-align:center"><a href="http://flyfood.vn/chuong-trinh-1-doi-1--detail-d068181215175617586.html"><img alt="Chương trình 1 đổi 1 Flyfood" src="http://flyfood.vn/Files/images/Banner%201%20%C4%91%E1%BB%95i%201.jpg" style="height:100%; line-height:20.7999992370605px; text-align:center; width:100%" title="Chương trình 1 đổi 1 Flyfood"></a></p>

            </section>', '<section class="left full">
                <p><span style="font-size:16px">Gà được chế biến thành rất nhiều món ăn thơm ngon, bổ dưỡng như gà nấu hèm, gà tiềm thuốc Bắc,…Vậy đã bao giờ bạn thử qua món&nbsp;“L</span>ẩu<span style="font-size:16px">&nbsp;g</span>à<span style="font-size:16px">&nbsp;tiềm ớt hiểm” với cái tên phải khiến bạn hít hà khi nhắc đến chưa? Nếu chưa hoặc đã từng thử và đang muốn thưởng thức lại thì đừng bỏ qua&nbsp;</span><strong>“Lẩu Gà Tiềm Ớt Hiểm”&nbsp;</strong><span style="font-size:16px">dành cho 4 - 5 người được chế biến hấp dẫn tại&nbsp;</span><strong>Flyfood.</strong></p>

<p style="text-align:center"><img alt="Gà tiềm ớt hiểm flyfood 1" src="http://flyfood.vn/Files/images/ga-tiem-ot-hiem-Flyfood%20(1)(1).jpg" style="height:100%; width:100%" title="Gà tiềm ớt hiểm flyfood 1"></p>

<p style="text-align:center"><span style="font-size:16px"><em>Hình thật - Flyfood</em></span></p>

<p style="text-align:justify"><span style="font-size:16px"><strong><em>Gà Tiềm Ớt Hiểm</em></strong>&nbsp;là món tuyệt hảo cho mọi lứa tuổi, là sự kết hợp độc đáo 3 nguyên liệu tạo vị và mùi đặc biệt: ớt xanh, hương quế và nấm đông cô. Bên cạnh đó, gà ta được chiên sơ để giảm bớt mỡ, thịt gà thêm săn chắc và hầm mềm trên lửa nhỏ để thịt gà thơm, thấm sâu gia vị tạo cảm giác ấm áp, thơm và ngọt.</span></p>

<p style="text-align:center"><br>
<img alt="Gà tiềm ớt hiểm flyfood 7" src="http://flyfood.vn/Files/images/ga-tiem-ot-hiem-Flyfood%20(07).png" style="height:100%; width:100%" title="Gà tiềm ớt hiểm flyfood 7"></p>

<p style="text-align:center"><span style="font-size:16px"><em>Hình thật - Flyfood</em></span></p>

<p style="text-align:justify"><span style="font-size:16px">Những người không sành ăn cay vẫn có thể thưởng thức được món ăn hấp dẫn này vì ớt xanh được sơ chế giảm cay, chỉ còn lại tinh dầu thơm và vị ngọt mát.</span></p>

<p style="text-align:center"><br>
<img alt="Gà tiềm ớt hiểm flyfood 4" src="http://flyfood.vn/Files/images/ga-tiem-ot-hiem-Flyfood%20(4)(1).jpg" style="height:100%; width:100%" title="Gà tiềm ớt hiểm flyfood 4"></p>

<p style="text-align:center"><span style="font-size:16px"><em>Hình thật - Flyfood</em></span></p>

<p style="text-align:justify"><span style="font-size:16px">Dùng món gà tiềm ớt hiểm như dùng lẩu cùng với rau xà lách xoong và bún gạo đã sơ chế. Ớt xanh nhiều nhưng không cay, hương quế đậm đà, ngọt đặc trưng, nấm giòn, ngọt, nước dùng đậm đà đó là những hương vị mà vị giác và khướu giác của bạn cảm nhận được khi thưởng thức món ăn bổ dưỡng này.</span></p>

<p style="text-align:center"><br>
<img alt="Gà tiềm ớt hiểm flyfood 5" src="http://flyfood.vn/Files/images/ga-tiem-ot-hiem-Flyfood%20(5)(1).jpg" style="height:100%; width:100%" title="Gà tiềm ớt hiểm flyfood 5"></p>

<p style="text-align:center"><span style="font-size:16px"><em>Hình thật - Flyfood</em></span></p>

<p style="text-align:center"><br>
<img alt="Gà tiềm ớt hiểm flyfood 2" src="http://flyfood.vn/Files/images/ga-tiem-ot-hiem-Flyfood%20(2)(1).jpg" style="height:100%; width:100%" title="Gà tiềm ớt hiểm flyfood 2"></p>

<p style="text-align:center"><span style="font-size:16px"><em>Hình thật - Flyfood</em></span></p>

<p style="text-align:center"><br>
<img alt="Gà tiềm ớt hiểm flyfood 3" src="http://flyfood.vn/Files/images/ga-tiem-ot-hiem-Flyfood%20(3)(1).jpg" style="height:100%; width:100%" title="Gà tiềm ớt hiểm flyfood 4"></p>

<p style="text-align:center"><span style="font-size:16px"><em>Hình thật - Flyfood</em></span></p>

<p style="text-align:center"><br>
<img alt="Hộp giữ nhiệt Flyfood" src="http://flyfood.vn/Files/images/hop-giu-nhiet-flyfood.jpg" style="height:100%; width:100%" title="Hộp giữ nhiệt Flyfood"><br>
&nbsp;</p>

<div style="line-height: 20.7999992370605px;">
<p style="text-align:center"><span style="font-size:24px"><span style="color:rgb(255, 0, 0)"><strong>MIỄN 100%</strong></span></span>&nbsp;&nbsp;phí giao hàng cho đơn hàng có giá trị món ăn trên&nbsp;<strong>1.000.000đ</strong>, trên tất cả địa bàn giao hàng gần xa!</p>

<p style="margin-left:30pt; text-align:center"><span style="color:rgb(255, 0, 0)"><span style="font-size:24px"><strong>BẢNG KHU VỰC VÀ PHÍ GIAO HÀNG:</strong></span></span></p>

<table align="center" border="1" cellpadding="0" cellspacing="0" style="border-collapse:collapse; border-spacing:0px; box-sizing:border-box; color:rgb(71, 71, 71); font-family:open sans,arial; font-size:14px; line-height:20.8px; width:100%">
	<tbody>
		<tr>
			<td style="height:31px; width:25%">
			<p style="text-align:center"><span style="font-size:16px"><strong>KHU VỰC 1</strong></span></p>
			</td>
			<td style="height:31px; width:50%">
			<p style="text-align:center"><span style="font-size:16px"><strong>QUY ĐỊNH GIAO HÀNG</strong></span></p>
			</td>
			<td style="height:31px; width:15%">
			<p style="text-align:center"><span style="font-size:16px"><strong>PHÍ</strong></span></p>
			</td>
		</tr>
		<tr>
			<td style="height:31px">
			<p style="text-align:center">Quận Tân Bình</p>
			</td>
			<td rowspan="10" style="height:31px">
			<p>&nbsp; Đặt hàng trước 1 giờ</p>

			<p>&nbsp; Giao hàng liên tục từ 8h00 đến 20h00, kết thúc thời gian đặt hàng lúc 18h30</p>

			<p>&nbsp; Giao hàng tất cả các địa chỉ có tên đường trên bản đồ&nbsp;<a href="http://www.google.com/maps" style="box-sizing: border-box; color: rgb(71, 71, 71); text-decoration: none; background-color: transparent;">www.google.com/maps</a></p>

			<p>&nbsp; Thời gian giao động dự trù 30 phút</p>

			<p><strong>&nbsp; Đơn hàng tối thiểu 180.000 đồng</strong></p>

			<p>&nbsp; Không giao hàng lên lầu hoặc phải gửi xe để chuyển hàng vào nhà.</p>

			<p>&nbsp;</p>
			</td>
			<td style="height:31px">
			<p style="text-align:center">0</p>
			</td>
		</tr>
		<tr>
			<td style="height:31px">
			<p style="text-align:center">Quận Phú Nhuận</p>
			</td>
			<td style="height:31px">
			<p style="text-align:center">0</p>
			</td>
		</tr>
		<tr>
			<td style="height:31px">
			<p style="text-align:center">Quận 1</p>
			</td>
			<td style="height:31px">
			<p style="text-align:center">&nbsp;15,000</p>
			</td>
		</tr>
		<tr>
			<td style="height:31px">
			<p style="text-align:center">Quận 3</p>
			</td>
			<td style="height:31px">
			<p style="text-align:center">&nbsp;15,000</p>
			</td>
		</tr>
		<tr>
			<td style="height:31px">
			<p style="text-align:center">Quận 4</p>
			</td>
			<td style="height:31px">
			<p style="text-align:center">&nbsp;20,000</p>
			</td>
		</tr>
		<tr>
			<td style="height:31px">
			<p style="text-align:center">Quận 5</p>
			</td>
			<td style="height:31px">
			<p style="text-align:center">&nbsp;15,000</p>
			</td>
		</tr>
		<tr>
			<td style="height:31px">
			<p style="text-align:center">Quận 10</p>
			</td>
			<td style="height:31px">
			<p style="text-align:center">&nbsp;15,000</p>
			</td>
		</tr>
		<tr>
			<td style="height:31px">
			<p style="text-align:center">Quận 11</p>
			</td>
			<td style="height:31px">
			<p style="text-align:center">&nbsp;15,000</p>
			</td>
		</tr>
		<tr>
			<td style="height:31px">
			<p style="text-align:center">Quận Tân phú</p>
			</td>
			<td style="height:31px">
			<p style="text-align:center">&nbsp;15,000</p>
			</td>
		</tr>
		<tr>
			<td style="height:31px">
			<p style="text-align:center">Quận Binh Thạnh</p>
			</td>
			<td style="height:31px">
			<p style="text-align:center">&nbsp;20,000</p>
			</td>
		</tr>
		<tr>
			<td style="height:31px">
			<p style="text-align:center"><strong>KHU VỰC 2</strong></p>
			</td>
			<td colspan="2" style="height:31px">
			<p><em>&nbsp; Flyfood rất mong được sự hỗ trợ của quý khách hàng để</em></p>

			<p><em>&nbsp; Nhân Viên Flyfood làm tốt trách nhiệm phục vụ của mình!</em></p>
			</td>
		</tr>
		<tr>
			<td style="height:31px">
			<p style="text-align:center">Quận 2</p>
			</td>
			<td rowspan="8" style="height:31px">
			<p>&nbsp; Đặt hàng trước 2 tiếng</p>

			<p>&nbsp; Giao hàng liên tục từ 8h00 đến 20h00, kết thúc thời gian đặt hàng lúc 18h30</p>

			<p>&nbsp; Giao hàng tất cả các địa chỉ có tên đường trên bản đồ&nbsp;<a href="http://www.google.com/maps" style="box-sizing: border-box; color: rgb(71, 71, 71); text-decoration: none; background-color: transparent;">www.google.com/maps</a></p>

			<p>&nbsp; Thời gian giao động dự trù 45 phút</p>

			<p><strong>&nbsp; Đơn hàng tối thiểu 220.000 đồng</strong></p>

			<p>&nbsp; Không giao hàng lên lầu hoặc phải gửi xe để chuyển hàng vào nhà.</p>

			<p>&nbsp; Có thể từ chối giao hàng trong những trường hợp bất khả kháng về thời tiết, đường ngập nước.</p>
			</td>
			<td style="height:31px">
			<p style="text-align:center">30,000</p>
			</td>
		</tr>
		<tr>
			<td style="height:31px">
			<p style="text-align:center">Quận 6</p>
			</td>
			<td style="height:31px">
			<p style="text-align:center">30,000</p>
			</td>
		</tr>
		<tr>
			<td style="height:31px">
			<p style="text-align:center">Quận 7</p>
			</td>
			<td style="height:31px">
			<p style="text-align:center">30,000</p>
			</td>
		</tr>
		<tr>
			<td style="height:31px">
			<p style="text-align:center">Quận 8</p>
			</td>
			<td style="height:31px">
			<p style="text-align:center">30,000</p>
			</td>
		</tr>
		<tr>
			<td style="height:31px">
			<p style="text-align:center">Quận 12</p>
			</td>
			<td style="height:31px">
			<p style="text-align:center">30,000</p>
			</td>
		</tr>
		<tr>
			<td style="height:31px">
			<p style="text-align:center">Quận Gò Vấp</p>
			</td>
			<td style="height:31px">
			<p style="text-align:center">30,000</p>
			</td>
		</tr>
		<tr>
			<td style="height:31px">
			<p style="text-align:center">Quận Thủ Đức</p>
			</td>
			<td style="height:31px">
			<p style="text-align:center">30,000</p>
			</td>
		</tr>
		<tr>
			<td style="height:31px">
			<p style="text-align:center">Quận Bình Tân</p>
			</td>
			<td style="height:31px">
			<p style="text-align:center">30,000</p>
			</td>
		</tr>
		<tr>
			<td style="height:31px">
			<p style="text-align:center"><strong>KHU VỰC 3</strong></p>
			</td>
			<td colspan="2" style="height:31px">
			<p><em>&nbsp; Flyfood rất mong được sự hỗ trợ của quý khách hàng để</em></p>

			<p><em>&nbsp; Nhân Viên Flyfood làm tốt trách nhiệm phục vụ của mình!</em></p>
			</td>
		</tr>
		<tr>
			<td style="height:31px">
			<p style="text-align:center">Quận 9</p>
			</td>
			<td rowspan="4" style="height:31px">
			<p>&nbsp; Đặt hàng trước 9h00 sáng hoặc 15h00 chiều.</p>

			<p>&nbsp; Giờ giao hàng:</p>

			<p>&nbsp; + Sáng: 10h30 đến 11h30</p>

			<p>&nbsp; + Chiều: 16h30 đến 17h30</p>

			<p>&nbsp; Giao hàng tất cả các địa chỉ có tên đường trên bản đồ&nbsp;<a href="http://www.google.com/maps" style="box-sizing: border-box; color: rgb(71, 71, 71); text-decoration: none; background-color: transparent;">www.google.com/maps</a></p>

			<p>&nbsp; Thời gian giao động dự trù 60 phút</p>

			<p><strong>&nbsp; Đơn hàng trên 2.000.000 đồng không quy định giờ giao hàng (Giao hàng bất kỳ giờ nào theo &nbsp; &nbsp; yêu cầu!)</strong></p>

			<p><strong>&nbsp; Đơn hàng tối thiểu 320.000 đồng</strong></p>
			</td>
			<td style="height:31px">
			<p style="text-align:center">30,000</p>
			</td>
		</tr>
		<tr>
			<td style="height:31px">
			<p style="text-align:center">Huyện Nhà Bè</p>
			</td>
			<td style="height:31px">
			<p style="text-align:center">30,000</p>
			</td>
		</tr>
		<tr>
			<td style="height:31px">
			<p style="text-align:center">Huyện Hóc Môn</p>
			</td>
			<td style="height:31px">
			<p style="text-align:center">30,000</p>
			</td>
		</tr>
		<tr>
			<td style="height:31px">
			<p style="text-align:center">Huyện Bình Chánh</p>

			<p>&nbsp;</p>
			</td>
			<td style="height:31px">
			<p style="text-align:center">30.000</p>
			</td>
		</tr>
		<tr>
			<td style="height:31px">
			<p style="text-align:center">Huyện Củ Chi</p>
			</td>
			<td style="height:31px">
			<p>&nbsp; Đặt hàng trước 9h00 sáng hoặc 15h00 chiều.</p>

			<p>&nbsp; Giờ giao hàng:</p>

			<p>&nbsp; + Sáng: 10h30 đến 11h30</p>

			<p>&nbsp; + Chiều: 16h30 đến 17h30</p>

			<p>&nbsp; Giao hàng theo trục đường:</p>

			<p>&nbsp; + Đường Trường Chinh, đường Xuyên Á, khu vực trung tâm Huyện Củ Chi</p>

			<p>&nbsp; Thời gian giao động dự trù 60 phút</p>

			<p><strong>&nbsp; Đơn hàng trên 2.000.000 đồng không quy định giờ giao hàng (Giao hàng bất kỳ giờ nào theo &nbsp; &nbsp; yêu cầu!)</strong></p>

			<p><strong>&nbsp; Đơn hàng tối thiểu 320.000 đồng</strong></p>
			</td>
			<td style="height:31px">
			<p style="text-align:center">30.000</p>
			</td>
		</tr>
		<tr>
			<td style="height:31px">
			<p style="text-align:center">TP. Thủ Dầu Một và TP. Biên Hòa</p>
			</td>
			<td style="height:31px">
			<p>&nbsp;+ Đặt hàng trước 9h00 sáng hoặc trước&nbsp;15h00 chiều</p>

			<p>+ Thời gian phục vụ từ 8h đến 20h mỗi ngày, kể cả ngày chủ nhật và các ngày lễ.</p>

			<p><strong>Chỉ nhận đơn hàng trên 2.000.000 đồng và&nbsp;không quy định giờ giao hàng (Giao hàng bất kỳ giờ nào theo yêu cầu!)</strong></p>
			</td>
			<td style="height:31px">
			<p style="text-align:center">30.000</p>
			</td>
		</tr>
		<tr>
			<td style="height:31px">
			<p style="text-align:center">Huyện Cần Giờ</p>
			</td>
			<td style="height:31px">
			<p>Chưa triển khai được trong thời gian này, mong quý khách hàng thông cảm!</p>
			</td>
			<td style="height:31px">
			<p>&nbsp;</p>
			</td>
		</tr>
	</tbody>
</table>

<div style="line-height: 20.8px; clear: both;">&nbsp;</div>

<p style="margin-left:0.5in; text-align:center"><span style="color:rgb(255, 0, 0)"><strong>Hấp dẫn vô cùng, càng ăn càng ngon!</strong></span></p>

<p style="margin-left:0.5in; text-align:center"><span style="color:rgb(255, 0, 0)"><span style="font-size:14px"><strong>Giao hà</strong></span><strong>ng cực nhanh, từ 60 đến 90 phút.</strong></span></p>

<p style="margin-left:0.5in; text-align:center"><span style="color:rgb(255, 0, 0)"><strong>Vui lòng đặt hàng trước 16h (sau 16h00 có thể hết hàng)</strong></span></p>

<p style="margin-left:0.5in; text-align:center">&nbsp;</p>

<p style="margin-left:0.5in; text-align:center"><span style="font-size:14px"><strong><img alt="" src="http://flyfood.vn/image/data/card%20qua%20tang.png" style="height:76px; width:113.297px"></strong></span></p>

<p style="margin-left:0.5in; text-align:center"><span style="font-size:22px"><span style="color:rgb(255, 0, 0)"><strong>Gọi ngay: 08 39 911 911</strong></span></span></p>

<p style="text-align:center"><span style="font-size:16px"><span style="color:rgb(0, 128, 0)"><strong><em>Flyfood – Fast &amp; Hot: “Hiện tượng mới” cho dịch vụ ăn uống Sài Gòn 2014!</em></strong></span></span></p>

<p style="text-align:center">&nbsp;</p>

<p style="text-align:right"><strong>Flyfood.vn</strong></p>
</div>

            </section>', 380000, 20, 15, '2016-12-08 18:15:35.302649', '2016-12-08 18:15:35.302649', '40_1.png', '40_2.png', NULL, true, 1, 'lau-ga-tiem-ot-hiem');
INSERT INTO foods VALUES (43, 'Lẩu nướng Thái Lan', 250000, NULL, NULL, NULL, 200000, 25, 16, '2016-12-08 19:18:49.011486', '2016-12-08 19:18:49.011486', '43_1.jpg', NULL, NULL, true, 1, 'lau-nuong-thai-lan');
INSERT INTO foods VALUES (42, 'Lẩu nấm vị Thái', 250000, NULL, NULL, NULL, 200000, 15, 16, '2016-12-08 19:18:49.011486', '2016-12-08 19:18:49.011486', '42_1.jpg', NULL, NULL, true, 1, 'lau-nam-vi-thai');
INSERT INTO foods VALUES (48, 'Lẩu Hotpot', 250000, NULL, NULL, NULL, NULL, 15, 17, '2016-12-09 00:25:19.982929', '2016-12-09 00:25:19.982929', '48_1.jpg', NULL, NULL, true, 1, 'lau-hotpot');
INSERT INTO foods VALUES (45, 'Lẩu nghêu Thái', 150000, NULL, NULL, NULL, NULL, 25, 16, '2016-12-08 19:18:49.011486', '2016-12-08 19:18:49.011486', '45_1.jpg', NULL, NULL, true, 1, 'lau-ngheu-thai');
INSERT INTO foods VALUES (49, 'Lẩu Poki', 250000, NULL, NULL, NULL, NULL, 25, 17, '2016-12-09 00:25:19.982929', '2016-12-09 00:25:19.982929', '49_1.jpg', NULL, NULL, true, 1, 'lau-poki');
INSERT INTO foods VALUES (47, 'Lẩu hải sản Hàn Quốc', 500000, NULL, NULL, NULL, 300000, 25, 17, '2016-12-09 00:25:19.982929', '2016-12-09 00:25:19.982929', '47_1.jpg', NULL, NULL, true, 1, 'lau-hai-san-han-quoc');
INSERT INTO foods VALUES (46, 'Lẩu kim chi sụn bò', 150000, NULL, NULL, NULL, NULL, 15, 17, '2016-12-09 00:25:19.982929', '2016-12-09 00:25:19.982929', '46_1.jpg', NULL, NULL, true, 1, 'lau-kim-chi-sun-bo');
INSERT INTO foods VALUES (50, 'Lẩu bánh Toek', 200000, NULL, NULL, NULL, NULL, 25, 17, '2016-12-09 00:25:19.982929', '2016-12-09 00:25:19.982929', '50_1.jpg', NULL, NULL, true, 1, 'lau-banh-toek');
INSERT INTO foods VALUES (127, 'Trà sữa vệt quất', 15000, NULL, NULL, NULL, NULL, 75, 31, '2016-12-10 11:10:28.458377', '2016-12-10 11:10:28.458377', '127_1.jpg', NULL, NULL, true, 1, 'tra-sua-vet-quat');
INSERT INTO foods VALUES (129, 'Trà sữa hương nhài', 35000, NULL, NULL, NULL, NULL, 85, 31, '2016-12-10 11:10:28.458377', '2016-12-10 11:10:28.458377', '129_1.jpg', NULL, NULL, true, 1, 'tra-sua-huong-nhai');
INSERT INTO foods VALUES (130, 'Trà sữa Bobapop', 30000, NULL, NULL, NULL, NULL, 85, 31, '2016-12-10 11:10:28.458377', '2016-12-10 11:10:28.458377', '130_1.jpg', NULL, NULL, true, 1, 'tra-sua-bobapop');
INSERT INTO foods VALUES (128, 'Trà sữa Thái xanh củ năng', 30000, NULL, NULL, NULL, NULL, 85, 31, '2016-12-10 11:10:28.458377', '2016-12-10 11:10:28.458377', '128_1.jpg', NULL, NULL, true, 1, 'tra-sua-thai-xanh-cu-nang');
INSERT INTO foods VALUES (126, 'Trà sữa ô long', 30000, NULL, NULL, NULL, NULL, 75, 31, '2016-12-10 11:10:28.458377', '2016-12-10 11:10:28.458377', '126_1.jpg', NULL, NULL, true, 1, 'tra-sua-o-long');
INSERT INTO foods VALUES (98, 'Bạch tuộc nướng Takoyaki', 58000, NULL, NULL, NULL, NULL, 25, 26, '2016-12-10 02:21:39.568755', '2016-12-10 02:21:39.568755', '98_1.jpg', NULL, NULL, true, 1, 'bach-tuoc-nuong-takoyaki');
INSERT INTO foods VALUES (99, 'Bạch tuộc xào kim chi', 55000, NULL, NULL, NULL, NULL, 25, 26, '2016-12-10 02:21:39.568755', '2016-12-10 02:21:39.568755', '99_1.jpg', NULL, NULL, true, 1, 'bach-tuoc-xao-kim-chi');
INSERT INTO foods VALUES (38, 'Lẩu vịt xiêm nấu chao', 315000, 'Lẩu Vịt Xiêm Nấu Chao là món ăn đặc sản mang hương vị miền Tây có sự hòa trộn giữa 4 loại gia vị lên men chủ lực là rượu trắng, gừng già, chao trắng và chao đỏ tẩm ướp trong 4 tiếng để tạo nên hương vị độc đáo mà không thể có ở bất kì món nào khác. Loại VỊT XIÊM 1/2 con nặng 1,6kg lúc còn sống ăn kèm với khoai môn cao, cải bẹ xanh, rau muống và bún tươi tạo nên món ăn có mùi thơm đặc trưng, hương vị đậm đà, cảm nhận thịt vịt săn chắc và gia vị thấm sâu vào thịt.', '<section class="left full">
                <ul>
	<li style="text-align:justify"><em><strong><span style="font-size:small">L</span>ẩu Vịt Xiêm Nấu Chao</strong></em><span style="font-size:small">&nbsp;là món ăn đặc sản mang hương vị miền Tây có sự hòa trộn giữa 4 loại gia vị lên men chủ lực là rượu trắng, gừng già, chao trắng và chao đỏ tẩm ướp trong 4 tiếng để tạo nên hương vị độc đáo mà không thể có ở bất kì món nào khác.</span></li>
	<li style="text-align:justify"><span style="font-size:small">Nước lèo thanh ngọt, mùi chao đã được chuyển hóa đễ chịu, đậm đà,&nbsp;có màu vàng sáng đẹp mắt, màu vịt hơi đỏ mận làm kích thích vị giác và thị giác của thực khách.</span></li>
	<li style="text-align:justify"><span style="font-size:small">Loại VỊT XIÊM "chính hiệu"&nbsp;để làm đẵng cấp cho món ăn này.&nbsp;Khoai môn cao, nấm rơm,&nbsp;cải bẹ xanh, rau muống và bún tươi tạo nên món ăn có mùi thơm đặc trưng, hương vị đậm đà, cảm nhận thịt vịt săn chắc và gia vị thấm sâu vào thịt.</span></li>
	<li style="text-align:justify"><span style="font-size:small">Nguyên liệu chế biến món ăn tươi ngon, đảm bảo hợp vệ sinh, hộp đựng thức ăn chuyên dụng độc quyền, có thể giữ nóng và giữ nguyên mùi đến 8 tiếng.</span></li>
	<li><span style="font-family:arial,helvetica,sans-serif"><span style="font-size:14px"><u><strong><span style="color:rgb(255, 0, 0)">Suất VỊT XIÊM NẤU CHAO&nbsp;bao gồm:</span></strong></u></span></span></li>
	<li><span style="font-family:arial,helvetica,sans-serif"><span style="color:rgb(0, 100, 0)"><strong>Xuất nhỏ:&nbsp;</strong></span><span style="color:rgb(255, 0, 0)"><strong>250.000đ</strong></span><br>
	<span style="color:rgb(0, 0, 0)">- 1/2 con vịt xiêm, nấu chín thành phẩm 0,7kg (từ con vịt lúc còn sống 3,2kg)</span><br>
	<span style="color:rgb(0, 0, 0)">- 1,8kg nước lẩu vịt</span><br>
	<span style="color:rgb(0, 0, 0)">- 500g khoai môn</span><br>
	<span style="color:rgb(0, 0, 0)">- 100g nấm rơm</span><br>
	<span style="color:rgb(0, 0, 0)">- 500g rau muống + cải bẹ xanh&nbsp;</span><br>
	<span style="color:rgb(0, 0, 0)">- Bún tươi: 0,5kg</span></span></li>
	<li><span style="font-family:arial,helvetica,sans-serif"><strong><span style="color:rgb(0, 128, 0)">Xuất lớn:&nbsp;</span><span style="color:rgb(255, 0, 0)">480.000đ</span></strong><br>
	<span style="color:rgb(0, 0, 0)">- 1 con vịt xiêm, nấu chín thành phẩm 1,4kg (từ con vịt lúc còn sống 3,2kg)</span><br>
	<span style="color:rgb(0, 0, 0)">- 2,2kg nước lẩu vịt</span><br>
	<span style="color:rgb(0, 0, 0)">- 800g khoai môn</span><br>
	<span style="color:rgb(0, 0, 0)">- 100g nấm rơm</span><br>
	<span style="color:rgb(0, 0, 0)">- 1kg rau muống + cải bẹ xanh&nbsp;</span><br>
	<span style="color:rgb(0, 0, 0)">- Bún tươi: 1kg</span></span></li>
	<li><span style="font-family:arial,helvetica,sans-serif"><span style="color:rgb(255, 0, 0)">Nước thêm 1kg giá 50.000 VNĐ</span></span></li>
</ul>

<p><strong>CHƯƠNG TRÌNH 1&nbsp;ĐỔI 1:</strong><br>
<br>
<a href="http://flyfood.vn/chuong-trinh-1-doi-1--detail-d068181215175617586.html"><img alt="Chương trình 1 đổi 1 Flyfood" src="http://flyfood.vn/Files/images/Banner%201%20%C4%91%E1%BB%95i%201.jpg" style="height:100%; line-height:20.8px; text-align:center; width:100%" title="Chương trình 1 đổi 1 Flyfood"></a></p>

            </section>', '<section class="left full">
                <div>
<p><strong><em>Vịt Xiêm Nấu Chao&nbsp;4 người ăn tại Flyfood</em></strong><span style="font-size:small">&nbsp;được đầu tư kỹ lưỡng từ khâu lựa chọn nguyên liệu chế biến cho đến cách nấu và trình bày món ăn. Đây được xem là món đặc sản “vô đối thủ” với tất cả các món khác và được nấu từ vịt của người miền Tây, vịt xiêm&nbsp;có thịt săn chắc, không nhiều mỡ.</span></p>
</div>

<div>
<p style="text-align:justify">&nbsp;</p>

<p style="text-align:center"><img alt="Lẩu vịt xiêm nấu chao Flyfood 1" src="http://flyfood.vn/Files/images/lau-vit-nau-chao-flyfood-10.png" style="height:100%; width:100%" title="Lẩu vịt xiêm nấu chao Flyfood 1"></p>

<p style="text-align:center"><em>Hình thật - Flyfood</em></p>

<p style="text-align:justify">&nbsp;</p>

<p style="text-align:justify"><span style="font-size:small">Sự thăng hoa đỉnh cao của món vịt nấu chao nằm ở cách kết hợp 4 loại gia vị lên men chủ lực là rượu trắng, gừng già, chao trắng và chao đỏ tẩm ướp trong thời gian 4 tiếng, tạo nên một hương vị không thể có ở bất kỳ món ăn nào khác.</span></p>

<p style="text-align:center">&nbsp;</p>

<p style="text-align:center"><img alt="Lẩu vịt xiêm nấu chao Flyfood 2" src="http://flyfood.vn/Files/images/lau-vit-nau-chao-flyfood-11.png" style="height:100%; width:100%" title="Lẩu vịt xiêm nấu chao Flyfood 2"></p>

<p style="text-align:center"><em>Hình thật - Flyfood</em></p>

<p style="text-align:justify">&nbsp;</p>

<p style="text-align:justify"><span style="font-size:small">Màu vịt hơi đỏ mận, nước vịt vàng sáng, không còn mùi chao nguyên thủy mà là mùi đặc trưng thơm hơi nặng. Vị của món này thật đậm đà, bạn có thể cảm nhận thịt vịt săn chắc, dẻo, gia vị thấm sâu vào thịt. Ngoài ra nước lèo được nấu bằng xương heo và kết thúc bằng sữa bò tươi nguyên chất đem lại vị nước dùng thanh ngọt mà vẫn đậm đà quyến rũ.</span></p>

<p style="text-align:justify">&nbsp;</p>

<p style="text-align:center"><img alt="Lẩu vịt xiêm nấu chao Flyfood  3" src="http://flyfood.vn/Files/images/lau-vit-nau-chao-flyfood-12.png" style="height:100%; width:100%" title="Lẩu vịt xiêm nấu chao Flyfood 3"></p>

<p style="text-align:center"><em>Hình thật - Flyfood</em></p>

<p style="text-align:justify">&nbsp;</p>

<p style="text-align:justify"><span style="font-size:small"><strong>Vịt Nấu Chao</strong>&nbsp;ăn chung với khoai môn cao vừa đủ mềm, thấm gia vị và đặc biệt không bị nát. Bên cạnh đó còn có rau sống với rau muống và cải bẹ xanh cùng bún được dùng giống như khi ăn lẩu. Món ăn được đựng trong hộp chuyên dụng độc quyền, có khả năng giữ nóng và giữ nguyên mùi vị đến 8 tiếng đồng hồ nên bạn có thể thoải mái tận hưởng món ăn giàu dinh dưỡng.</span></p>

<p style="text-align:center">&nbsp;</p>

<p style="text-align:center"><img alt="Lẩu vịt xiêm nấu chao Flyfood 4" src="http://flyfood.vn/Files/images/lau-vit-nau-chao-flyfood-8.png" style="height:100%; width:100%" title="Lẩu vịt xiêm nấu chao Flyfood 4"></p>

<p style="text-align:center">&nbsp;</p>

<p style="text-align:center"><img alt="Lẩu vịt xiêm nấu chao Flyfood 5" src="http://flyfood.vn/Files/images/lau-vit-nau-chao-flyfood-9.png" style="height:100%; width:100%" title="Lẩu vịt xiêm nấu chao Flyfood 5"></p>

<p style="text-align:center">&nbsp;</p>

<p style="text-align:center"><img alt="Hộp giữ nhiệt Flyfood" src="http://flyfood.vn/Files/images/hop-giu-nhiet-flyfood.jpg" style="height:100%; width:100%" title="Hộp giữ nhiệt Flyfood"></p>

<p style="text-align:center"><span style="font-size:small">Hộp độc quyền Flyfood có khả năng giữ nóng 8 tiếng</span></p>

<p style="text-align:center">&nbsp;</p>

<p style="margin-left:30pt; text-align:center"><span style="color:rgb(255, 0, 0)"><span style="font-size:24px"><strong>BẢNG KHU VỰC VÀ PHÍ GIAO HÀNG:</strong></span></span><br>
<span style="font-size:24px"><span style="color:rgb(255, 0, 0)"><strong>MIỄN 100%</strong></span></span>&nbsp;&nbsp;phí giao hàng cho đơn hàng có giá trị món ăn trên&nbsp;<strong>1.000.000đ</strong>, trên tất cả địa bàn giao hàng gần xa!</p>

<table align="center" border="1" cellpadding="0" cellspacing="0" style="border-collapse:collapse; border-spacing:0px; box-sizing:border-box; color:rgb(71, 71, 71); font-family:open sans,arial; font-size:14px; line-height:20.8px; width:100%">
	<tbody>
		<tr>
			<td style="height:31px; width:25%">
			<p style="text-align:center"><span style="font-size:16px"><strong>KHU VỰC 1</strong></span></p>
			</td>
			<td style="height:31px; width:50%">
			<p style="text-align:center"><span style="font-size:16px"><strong>QUY ĐỊNH GIAO HÀNG</strong></span></p>
			</td>
			<td style="height:31px; width:15%">
			<p style="text-align:center"><span style="font-size:16px"><strong>PHÍ</strong></span></p>
			</td>
		</tr>
		<tr>
			<td style="height:31px">
			<p style="text-align:center">Quận Tân Bình</p>
			</td>
			<td rowspan="10" style="height:31px">
			<p>&nbsp; Đặt hàng trước 1 giờ</p>

			<p>&nbsp; Giao hàng liên tục từ 8h00 đến 20h00, kết thúc thời gian đặt hàng lúc 18h30</p>

			<p>&nbsp; Giao hàng tất cả các địa chỉ có tên đường trên bản đồ&nbsp;<a href="http://www.google.com/maps" style="box-sizing: border-box; color: rgb(71, 71, 71); text-decoration: none; background-color: transparent;">www.google.com/maps</a></p>

			<p>&nbsp; Thời gian giao động dự trù 30 phút</p>

			<p><strong>&nbsp; Đơn hàng tối thiểu 180.000 đồng</strong></p>

			<p>&nbsp; Không giao hàng lên lầu hoặc phải gửi xe để chuyển hàng vào nhà.</p>

			<p>&nbsp;</p>
			</td>
			<td style="height:31px">
			<p style="text-align:center">0</p>
			</td>
		</tr>
		<tr>
			<td style="height:31px">
			<p style="text-align:center">Quận Phú Nhuận</p>
			</td>
			<td style="height:31px">
			<p style="text-align:center">0</p>
			</td>
		</tr>
		<tr>
			<td style="height:31px">
			<p style="text-align:center">Quận 1</p>
			</td>
			<td style="height:31px">
			<p style="text-align:center">&nbsp;15,000</p>
			</td>
		</tr>
		<tr>
			<td style="height:31px">
			<p style="text-align:center">Quận 3</p>
			</td>
			<td style="height:31px">
			<p style="text-align:center">&nbsp;15,000</p>
			</td>
		</tr>
		<tr>
			<td style="height:31px">
			<p style="text-align:center">Quận 4</p>
			</td>
			<td style="height:31px">
			<p style="text-align:center">&nbsp;20,000</p>
			</td>
		</tr>
		<tr>
			<td style="height:31px">
			<p style="text-align:center">Quận 5</p>
			</td>
			<td style="height:31px">
			<p style="text-align:center">&nbsp;15,000</p>
			</td>
		</tr>
		<tr>
			<td style="height:31px">
			<p style="text-align:center">Quận 10</p>
			</td>
			<td style="height:31px">
			<p style="text-align:center">&nbsp;15,000</p>
			</td>
		</tr>
		<tr>
			<td style="height:31px">
			<p style="text-align:center">Quận 11</p>
			</td>
			<td style="height:31px">
			<p style="text-align:center">&nbsp;15,000</p>
			</td>
		</tr>
		<tr>
			<td style="height:31px">
			<p style="text-align:center">Quận Tân phú</p>
			</td>
			<td style="height:31px">
			<p style="text-align:center">&nbsp;15,000</p>
			</td>
		</tr>
		<tr>
			<td style="height:31px">
			<p style="text-align:center">Quận Binh Thạnh</p>
			</td>
			<td style="height:31px">
			<p style="text-align:center">&nbsp;20,000</p>
			</td>
		</tr>
		<tr>
			<td style="height:31px">
			<p style="text-align:center"><strong>KHU VỰC 2</strong></p>
			</td>
			<td colspan="2" style="height:31px">
			<p><em>&nbsp; Flyfood rất mong được sự hỗ trợ của quý khách hàng để</em></p>

			<p><em>&nbsp; Nhân Viên Flyfood làm tốt trách nhiệm phục vụ của mình!</em></p>
			</td>
		</tr>
		<tr>
			<td style="height:31px">
			<p style="text-align:center">Quận 2</p>
			</td>
			<td rowspan="8" style="height:31px">
			<p>&nbsp; Đặt hàng trước 2 tiếng</p>

			<p>&nbsp; Giao hàng liên tục từ 8h00 đến 20h00, kết thúc thời gian đặt hàng lúc 18h30</p>

			<p>&nbsp; Giao hàng tất cả các địa chỉ có tên đường trên bản đồ&nbsp;<a href="http://www.google.com/maps" style="box-sizing: border-box; color: rgb(71, 71, 71); text-decoration: none; background-color: transparent;">www.google.com/maps</a></p>

			<p>&nbsp; Thời gian giao động dự trù 45 phút</p>

			<p><strong>&nbsp; Đơn hàng tối thiểu 220.000 đồng</strong></p>

			<p>&nbsp; Không giao hàng lên lầu hoặc phải gửi xe để chuyển hàng vào nhà.</p>

			<p>&nbsp; Có thể từ chối giao hàng trong những trường hợp bất khả kháng về thời tiết, đường ngập nước.</p>
			</td>
			<td style="height:31px">
			<p style="text-align:center">30,000</p>
			</td>
		</tr>
		<tr>
			<td style="height:31px">
			<p style="text-align:center">Quận 6</p>
			</td>
			<td style="height:31px">
			<p style="text-align:center">30,000</p>
			</td>
		</tr>
		<tr>
			<td style="height:31px">
			<p style="text-align:center">Quận 7</p>
			</td>
			<td style="height:31px">
			<p style="text-align:center">30,000</p>
			</td>
		</tr>
		<tr>
			<td style="height:31px">
			<p style="text-align:center">Quận 8</p>
			</td>
			<td style="height:31px">
			<p style="text-align:center">30,000</p>
			</td>
		</tr>
		<tr>
			<td style="height:31px">
			<p style="text-align:center">Quận 12</p>
			</td>
			<td style="height:31px">
			<p style="text-align:center">30,000</p>
			</td>
		</tr>
		<tr>
			<td style="height:31px">
			<p style="text-align:center">Quận Gò Vấp</p>
			</td>
			<td style="height:31px">
			<p style="text-align:center">30,000</p>
			</td>
		</tr>
		<tr>
			<td style="height:31px">
			<p style="text-align:center">Quận Thủ Đức</p>
			</td>
			<td style="height:31px">
			<p style="text-align:center">30,000</p>
			</td>
		</tr>
		<tr>
			<td style="height:31px">
			<p style="text-align:center">Quận Bình Tân</p>
			</td>
			<td style="height:31px">
			<p style="text-align:center">30,000</p>
			</td>
		</tr>
		<tr>
			<td style="height:31px">
			<p style="text-align:center"><strong>KHU VỰC 3</strong></p>
			</td>
			<td colspan="2" style="height:31px">
			<p><em>&nbsp; Flyfood rất mong được sự hỗ trợ của quý khách hàng để</em></p>

			<p><em>&nbsp; Nhân Viên Flyfood làm tốt trách nhiệm phục vụ của mình!</em></p>
			</td>
		</tr>
		<tr>
			<td style="height:31px">
			<p style="text-align:center">Quận 9</p>
			</td>
			<td rowspan="4" style="height:31px">
			<p>&nbsp; Đặt hàng trước 9h00 sáng hoặc 15h00 chiều.</p>

			<p>&nbsp; Giờ giao hàng:</p>

			<p>&nbsp; + Sáng: 10h30 đến 11h30</p>

			<p>&nbsp; + Chiều: 16h30 đến 17h30</p>

			<p>&nbsp; Giao hàng tất cả các địa chỉ có tên đường trên bản đồ&nbsp;<a href="http://www.google.com/maps" style="box-sizing: border-box; color: rgb(71, 71, 71); text-decoration: none; background-color: transparent;">www.google.com/maps</a></p>

			<p>&nbsp; Thời gian giao động dự trù 60 phút</p>

			<p><strong>&nbsp; Đơn hàng trên 2.000.000 đồng không quy định giờ giao hàng (Giao hàng bất kỳ giờ nào theo &nbsp; &nbsp; yêu cầu!)</strong></p>

			<p><strong>&nbsp; Đơn hàng tối thiểu 320.000 đồng</strong></p>
			</td>
			<td style="height:31px">
			<p style="text-align:center">30,000</p>
			</td>
		</tr>
		<tr>
			<td style="height:31px">
			<p style="text-align:center">Huyện Nhà Bè</p>
			</td>
			<td style="height:31px">
			<p style="text-align:center">30,000</p>
			</td>
		</tr>
		<tr>
			<td style="height:31px">
			<p style="text-align:center">Huyện Hóc Môn</p>
			</td>
			<td style="height:31px">
			<p style="text-align:center">30,000</p>
			</td>
		</tr>
		<tr>
			<td style="height:31px">
			<p style="text-align:center">Huyện Bình Chánh</p>

			<p>&nbsp;</p>
			</td>
			<td style="height:31px">
			<p style="text-align:center">30.000</p>
			</td>
		</tr>
		<tr>
			<td style="height:31px">
			<p style="text-align:center">Huyện Củ Chi</p>
			</td>
			<td style="height:31px">
			<p>&nbsp; Đặt hàng trước 9h00 sáng hoặc 15h00 chiều.</p>

			<p>&nbsp; Giờ giao hàng:</p>

			<p>&nbsp; + Sáng: 10h30 đến 11h30</p>

			<p>&nbsp; + Chiều: 16h30 đến 17h30</p>

			<p>&nbsp; Giao hàng theo trục đường:</p>

			<p>&nbsp; + Đường Trường Chinh, đường Xuyên Á, khu vực trung tâm Huyện Củ Chi</p>

			<p>&nbsp; Thời gian giao động dự trù 60 phút</p>

			<p><strong>&nbsp; Đơn hàng trên 2.000.000 đồng không quy định giờ giao hàng (Giao hàng bất kỳ giờ nào theo &nbsp; &nbsp; yêu cầu!)</strong></p>

			<p><strong>&nbsp; Đơn hàng tối thiểu 320.000 đồng</strong></p>
			</td>
			<td style="height:31px">
			<p style="text-align:center">30.000</p>
			</td>
		</tr>
		<tr>
			<td style="height:31px">
			<p style="text-align:center">TP. Thủ Dầu Một và TP. Biên Hòa</p>
			</td>
			<td style="height:31px">
			<p>&nbsp;+ Đặt hàng trước 9h00 sáng hoặc trước&nbsp;15h00 chiều</p>

			<p>+ Thời gian phục vụ từ 8h đến 20h mỗi ngày, kể cả ngày chủ nhật và các ngày lễ.</p>

			<p><strong>Chỉ nhận đơn hàng trên 2.000.000 đồng và&nbsp;không quy định giờ giao hàng (Giao hàng bất kỳ giờ nào theo yêu cầu!)</strong></p>
			</td>
			<td style="height:31px">
			<p style="text-align:center">30.000</p>
			</td>
		</tr>
		<tr>
			<td style="height:31px">
			<p style="text-align:center">Huyện Cần Giờ</p>
			</td>
			<td style="height:31px">
			<p>Chưa triển khai được trong thời gian này, mong quý khách hàng thông cảm!</p>
			</td>
			<td style="height:31px">
			<p>&nbsp;</p>
			</td>
		</tr>
	</tbody>
</table>

<div style="line-height: 20.8px; clear: both;">&nbsp;</div>

<p style="margin-left:0.5in; text-align:center"><span style="color:rgb(255, 0, 0)"><strong>Hấp dẫn vô cùng, càng ăn càng ngon!</strong></span></p>

<p style="margin-left:0.5in; text-align:center"><span style="color:rgb(255, 0, 0)"><span style="font-size:14px"><strong>Giao hà</strong></span><strong>ng cực nhanh, từ 60 đến 90 phút.</strong></span></p>

<p style="margin-left:0.5in; text-align:center"><span style="color:rgb(255, 0, 0)"><strong>Vui lòng đặt hàng trước 16h (sau 16h00 có thể hết hàng)</strong></span></p>

<p style="margin-left:0.5in; text-align:center">&nbsp;</p>

<p style="margin-left:0.5in; text-align:center"><span style="font-size:14px"><strong><img alt="" src="http://flyfood.vn/image/data/card%20qua%20tang.png" style="height:76px; width:113.297px"></strong></span></p>

<p style="margin-left:0.5in; text-align:center"><span style="font-size:22px"><span style="color:rgb(255, 0, 0)"><strong>Gọi ngay: 08 39 911 911</strong></span></span></p>

<p style="text-align:center"><span style="font-size:16px"><span style="color:rgb(0, 128, 0)"><strong><em>Flyfood – Fast &amp; Hot: “Hiện tượng mới” cho dịch vụ ăn uống Sài Gòn 2014!</em></strong></span></span></p>

<p style="text-align:center">&nbsp;</p>

<p style="text-align:right"><strong>Flyfood.vn</strong></p>
</div>

            </section>', 250000, 20, 15, '2016-12-08 18:15:35.302649', '2016-12-08 18:15:35.302649', '38_1.png', '38_2.png', NULL, true, 1, 'lau-vit-xiem-nau-chao');
INSERT INTO foods VALUES (71, 'Gà nướng', 450000, NULL, NULL, NULL, 300000, 25, 21, '2016-12-10 00:08:31.84506', '2016-12-10 00:08:31.84506', '71_1.jpg', NULL, NULL, true, 1, 'ga-nuong');
INSERT INTO foods VALUES (56, 'Phá lấu bò', 15000, NULL, NULL, NULL, NULL, 125, 18, '2016-12-09 19:06:09.184459', '2016-12-09 19:06:09.184459', '56_1.jpg', NULL, NULL, true, 1, 'pha-lau-bo');
INSERT INTO foods VALUES (64, 'Kem trà xanh', 60000, NULL, NULL, NULL, NULL, 125, 20, '2016-12-09 20:22:07.493455', '2016-12-09 20:22:07.493455', '64_1.jpg', NULL, NULL, true, 1, 'kem-tra-xanh');
INSERT INTO foods VALUES (53, 'Bánh tráng trộn tép mỡ', 25000, NULL, NULL, NULL, NULL, 125, 18, '2016-12-09 19:06:09.184459', '2016-12-09 19:06:09.184459', '53_1.jpg', NULL, NULL, true, 1, 'banh-trang-tron-tep-mo');
INSERT INTO foods VALUES (62, 'Chả giò hải sản', 35000, NULL, NULL, NULL, NULL, 125, 19, '2016-12-09 20:04:26.972413', '2016-12-09 20:04:26.972413', '62_1.jpg', NULL, NULL, true, 1, 'cha-gio-hai-san');
INSERT INTO foods VALUES (69, 'Bò nướng phô mai', 250000, NULL, NULL, NULL, 200000, 25, 21, '2016-12-10 00:08:31.84506', '2016-12-10 00:08:31.84506', '69_1.jpg', NULL, NULL, true, 1, 'bo-nuong-pho-mai');
INSERT INTO foods VALUES (60, 'Sữa tươi chiên', 25000, NULL, NULL, NULL, NULL, 125, 19, '2016-12-09 20:04:26.972413', '2016-12-09 20:04:26.972413', '60_1.jpg', NULL, NULL, true, 1, 'sua-tuoi-chien');
INSERT INTO foods VALUES (66, 'Kem xôi dừa', 65000, NULL, NULL, NULL, NULL, 125, 20, '2016-12-09 20:22:07.493455', '2016-12-09 20:22:07.493455', '66_1.jpg', NULL, NULL, true, 1, 'kem-xoi-dua');
INSERT INTO foods VALUES (70, 'Vú dê nướng', 250000, NULL, NULL, NULL, NULL, 25, 21, '2016-12-10 00:08:31.84506', '2016-12-10 00:08:31.84506', '70_1.jpg', NULL, NULL, true, 1, 'vu-de-nuong');
INSERT INTO foods VALUES (55, 'Phá lấu xào rau muống', 35000, NULL, NULL, NULL, NULL, 125, 18, '2016-12-09 19:06:09.184459', '2016-12-09 19:06:09.184459', '55_1.jpg', NULL, NULL, true, 1, 'pha-lau-xao-rau-muong');
INSERT INTO foods VALUES (58, 'Cá viên chiên', 20000, NULL, NULL, NULL, NULL, 125, 19, '2016-12-09 20:04:26.972413', '2016-12-09 20:04:26.972413', '58_1.jpg', NULL, NULL, true, 1, 'ca-vien-chien');
INSERT INTO foods VALUES (65, 'Kem đào', 55000, NULL, NULL, NULL, NULL, 125, 20, '2016-12-09 20:22:07.493455', '2016-12-09 20:22:07.493455', '65_1.jpg', NULL, NULL, true, 1, 'kem-dao');
INSERT INTO foods VALUES (68, 'Kem vệt quất', 15000, NULL, NULL, NULL, NULL, 125, 20, '2016-12-09 20:22:07.493455', '2016-12-09 20:22:07.493455', '68_1.jpg', NULL, NULL, true, 1, 'kem-vet-quat');
INSERT INTO foods VALUES (52, 'Bánh tráng bơ truyền thống', 20000, NULL, NULL, NULL, NULL, 125, 18, '2016-12-09 19:06:09.184459', '2016-12-09 19:06:09.184459', '52_1.jpg', NULL, NULL, true, 1, 'banh-trang-bo-truyen-thong');
INSERT INTO foods VALUES (63, 'Kem dừa', 50000, NULL, NULL, NULL, NULL, 125, 20, '2016-12-09 20:22:07.493455', '2016-12-09 20:22:07.493455', '63_1.jpg', NULL, NULL, true, 1, 'kem-dua');
INSERT INTO foods VALUES (86, 'Heo tộc nướng', 50000, NULL, NULL, NULL, NULL, 25, 23, '2016-12-10 01:24:19.923732', '2016-12-10 01:24:19.923732', '86_1.jpg', NULL, NULL, true, 1, 'heo-toc-nuong');
INSERT INTO foods VALUES (78, 'Nem lụi nướng', 15000, NULL, NULL, NULL, NULL, 25, 22, '2016-12-10 01:09:20.199294', '2016-12-10 01:09:20.199294', '78_1.jpg', NULL, NULL, true, 1, 'nem-lui-nuong');
INSERT INTO foods VALUES (73, 'Sườn heo nướng', 250000, NULL, NULL, NULL, 200000, 15, 21, '2016-12-10 00:08:31.84506', '2016-12-10 00:08:31.84506', '73_1.jpg', NULL, NULL, true, 1, 'suon-heo-nuong');
INSERT INTO foods VALUES (84, 'Cá sấu nướng', 70000, NULL, NULL, NULL, NULL, 25, 23, '2016-12-10 01:24:19.923732', '2016-12-10 01:24:19.923732', '84_1.jpg', NULL, NULL, true, 1, 'ca-sau-nuong');
INSERT INTO foods VALUES (75, 'Tôm nướng', 25000, NULL, NULL, NULL, NULL, 25, 22, '2016-12-10 01:09:20.199294', '2016-12-10 01:09:20.199294', '75_1.jpg', NULL, NULL, true, 1, 'tom-nuong');
INSERT INTO foods VALUES (85, 'Heo nướng ngũ vị', 50000, NULL, NULL, NULL, NULL, 25, 23, '2016-12-10 01:24:19.923732', '2016-12-10 01:24:19.923732', '85_1.jpg', NULL, NULL, true, 1, 'heo-nuong-ngu-vi');
INSERT INTO foods VALUES (77, 'Thịt xiên nướng', 20000, NULL, NULL, NULL, NULL, 25, 22, '2016-12-10 01:09:20.199294', '2016-12-10 01:09:20.199294', '77_1.jpg', NULL, NULL, true, 1, 'thit-xien-nuong');
INSERT INTO foods VALUES (82, 'Ba chỉ cuộn nấm', 25000, NULL, NULL, NULL, NULL, 25, 23, '2016-12-10 01:24:19.923732', '2016-12-10 01:24:19.923732', '82_1.jpg', NULL, NULL, true, 1, 'ba-chi-cuon-nam');
INSERT INTO foods VALUES (76, 'Hồ lô nướng', 25000, NULL, NULL, NULL, NULL, 25, 22, '2016-12-10 01:09:20.199294', '2016-12-10 01:09:20.199294', '76_1.jpg', NULL, NULL, true, 1, 'ho-lo-nuong');
INSERT INTO foods VALUES (83, 'Bò nướng Hàn Quốc', 70000, NULL, NULL, NULL, 50000, 25, 23, '2016-12-10 01:24:19.923732', '2016-12-10 01:24:19.923732', '83_1.jpg', NULL, NULL, true, 1, 'bo-nuong-han-quoc');
INSERT INTO foods VALUES (81, 'Bò cuộn phô mai', 35000, NULL, NULL, NULL, NULL, 25, 23, '2016-12-10 01:24:19.923732', '2016-12-10 01:24:19.923732', '81_1.jpg', NULL, NULL, true, 1, 'bo-cuon-pho-mai');
INSERT INTO foods VALUES (79, 'Nem nướng Mỹ Tho', 15000, NULL, NULL, NULL, NULL, 25, 22, '2016-12-10 01:09:20.199294', '2016-12-10 01:09:20.199294', '79_1.jpg', NULL, NULL, true, 1, 'nem-nuong-my-tho');
INSERT INTO foods VALUES (72, 'Thỏ nướng chao', 200000, NULL, NULL, NULL, NULL, 25, 21, '2016-12-10 00:08:31.84506', '2016-12-10 00:08:31.84506', '72_1.jpg', NULL, NULL, true, 1, 'tho-nuong-chao');
INSERT INTO foods VALUES (80, 'Xúc xích nướng', 25000, NULL, NULL, NULL, NULL, 25, 22, '2016-12-10 01:09:20.199294', '2016-12-10 01:09:20.199294', '80_1.jpg', NULL, NULL, true, 1, 'xuc-xich-nuong');
INSERT INTO foods VALUES (74, 'Sò nướng', 50000, NULL, NULL, NULL, NULL, 25, 21, '2016-12-10 00:08:31.84506', '2016-12-10 00:08:31.84506', '74_1.jpg', NULL, NULL, true, 1, 'so-nuong');
INSERT INTO foods VALUES (105, 'Bánh dâu custard', 89000, NULL, NULL, NULL, NULL, 25, 27, '2016-12-10 09:56:37.25348', '2016-12-10 09:56:37.25348', '105_1.jpg', NULL, NULL, true, 1, 'banh-dau-custard');
INSERT INTO foods VALUES (110, 'Bánh su que trà xanh', 10000, NULL, NULL, NULL, NULL, 75, 28, '2016-12-10 10:11:01.272419', '2016-12-10 10:11:01.272419', '110_1.jpg', NULL, NULL, true, 1, 'banh-su-que-tra-xanh');
INSERT INTO foods VALUES (94, 'Cua rang me', 178000, NULL, NULL, NULL, NULL, 25, 25, '2016-12-10 02:09:15.865288', '2016-12-10 02:09:15.865288', '94_1.jpg', NULL, NULL, true, 1, 'cua-rang-me');
INSERT INTO foods VALUES (88, 'Cá diêu hống sốt chanh dây', 240000, 'Cá Diêu Hồng Sốt Chanh Dây Flyfood, Cá Điêu Hồng quen thuộc nhưng chế biến cầu kỳ, cùng với nguyên liệu hấp dẫn "chanh dây" tạo món Cá Điêu Hồng Sốt Chanh Dây sang trọng, thu hút và cực kỳ ngon miệng bởi mùi thơm đặc trưng và vị chua ngọt tuyệt hảo.', '<section class="left full">
                <ul>
	<li style="text-align:justify"><strong>Cá Diêu Hồng Sốt Chanh Dây</strong> loại lớn, phi lê, cắt từng miếng vuông, chiên vừa chín mềm</li>
	<li style="text-align:justify">Nước cốt Chanh Day nguyên chất, chế biến nước sốt cùng với nhiều nguyên liệu phụ khác tạo đa vị, đa sắc giúp món ăn thêm ngon và đẹp mắt.</li>
	<li style="text-align:justify">Món ăn rất thích hợp trong tiệc cưới hoặc các tiệc sang trọng khác.</li>
</ul>

<p style="text-align:justify"><span style="color:rgb(255, 0, 0)"><strong>Suất CÁ DIÊU HỒNG SỐT CHANH DÂY&nbsp;bao gồm:</strong></span></p>

<ul>
	<li style="text-align:justify"><span style="color:#008000">1 con cá Diêu Hồng size nhò&nbsp;từ 0,9 đến 1kg, size lớn&nbsp;1kg2</span></li>
	<li style="text-align:justify"><span style="color:#008000">Chanh Dây</span></li>
	<li style="text-align:justify"><span style="color:#008000">Ớt chuông, hành tây, nấm mèo</span></li>
	<li style="text-align:justify"><span style="color:#008000">Rau sống</span></li>
</ul>

<div style="text-align:justify">&nbsp;</div>

<ul>
	<li style="text-align:justify"><span style="color:#008000">.<a href="http://flyfood.vn/chuong-trinh-1-doi-1--detail-d068181215175617586.html"><img alt="Chương trình 1 đổi 1 Flyfood" src="http://flyfood.vn/Files/images/Banner-1-doi-1.png" style="height:100%; width:100%" title="Chương trình 1 đổi 1 Flyfood"></a></span></li>
</ul>

<div style="text-align: justify;">&nbsp;</div>

            </section>', '<section class="left full">
                <div style="text-align: justify;"><strong>Cá Diêu Hồng Sốt Chanh Dây</strong> quen thuộc nhưng chế biến cầu kỳ, cùng với nguyên liệu hấp dẫn "chanh dây" tạo món <strong>Cá Diêu Hồng Sốt Chanh Dây</strong> sang trọng, thu hút và cực kỳ ngon miệng bởi mùi thơm đặc trưng và vị chua ngọt tuyệt hảo.</div>

<div style="text-align: center;">
<div style="text-align: justify;">&nbsp;</div>

<div><br>
<img alt="Cá diêu hồng sốt chanh dây flyfood 1" src="http://flyfood.vn/Files/images/ca-dieu-hong-sot-chanh-day-flyfood-new-1.png" style="height:100%; width:100%" title="Cá diêu hồng sốt chanh dây flyfood 1"><br>
<br>
<br>
<img alt="Cá diêu hồng sốt chanh dây flyfood 2" src="http://flyfood.vn/Files/images/ca-dieu-hong-sot-chanh-day-flyfood-new-2.png" style="height:100%; width:100%" title="Cá diêu hồng sốt chanh dây flyfood 2"></div>

<div style="text-align: justify;"><br>
<br>
<strong>Cá Diêu Hồng Sốt Chanh Dây</strong> phi lê, cắt từng miếng vuông, chiên vừa chín mềm. Nước cốt chanh dây nguyên chất, cùng với ít phụ liệu đa vị, đa sắc giúp món ăn ngon càng thêm ngon.<br>
&nbsp;</div>

<div><br>
<img alt="Cá diêu hồng sốt chanh dây flyfood 3" src="http://flyfood.vn/Files/images/ca-dieu-hong-sot-chanh-day-flyfood-new-3.png" style="height:100%; width:100%" title="Cá diêu hồng sốt chanh dây flyfood 3"><br>
<br>
<br>
<img alt="Cá diêu hồng sốt chanh dây flyfood 4" src="http://flyfood.vn/Files/images/ca-dieu-hong-sot-chanh-day-flyfood-new-4.png" style="height:100%; width:100%" title="Cá diêu hồng sốt chanh dây flyfood 4"></div>

<div style="text-align: justify;"><br>
<br>
<strong>Hạt Chanh Dây</strong> là những chấm đen, giúp cho món ăn thêm sang trọng, đồng thời tạo vị khác biệt khi dùng cùng với cá.<br>
&nbsp;</div>

<div><br>
<img alt="Cá diêu hồng sốt chanh dây flyfood 5" src="http://flyfood.vn/Files/images/ca-dieu-hong-sot-chanh-day-flyfood-new-5.png" style="height:100%; width:100%" title="Cá diêu hồng sốt chanh dây flyfood 5"><br>
<br>
<br>
<img alt="Cá diêu hồng sốt chanh dây flyfood 6" src="http://flyfood.vn/Files/images/ca-dieu-hong-sot-chanh-day-flyfood-new-6.png" style="height:100%; width:100%" title="Cá diêu hồng sốt chanh dây flyfood 6"><br>
<br>
<br>
<img alt="Cá diêu hồng sốt chanh dây flyfood 7" src="http://flyfood.vn/Files/images/ca-dieu-hong-sot-chanh-day-flyfood-new-7.png" style="height:100%; width:100%" title="Cá diêu hồng sốt chanh dây flyfood 7"><br>
<br>
<br>
<img alt="Cá diêu hồng sốt chanh dây flyfood 8" src="http://flyfood.vn/Files/images/ca-dieu-hong-sot-chanh-day-flyfood-new-8.png" style="height:100%; width:100%" title="Cá diêu hồng sốt chanh dây flyfood 8"></div>

<div style="text-align: justify;"><br>
<br>
<br>
<img alt="Hộp giữ nhiệt Flyfood" src="http://flyfood.vn/Files/images/hop-giu-nhiet-flyfood.jpg" style="height:100%; width:100%" title="Hộp giữ nhiệt Flyfood"><br>
&nbsp;</div>

<p style="text-align:justify"><span style="font-size:24px"><span style="color:rgb(255, 0, 0)"><strong>MIỄN 100%</strong></span></span>&nbsp;&nbsp;phí giao hàng cho đơn hàng có giá trị món ăn trên&nbsp;<strong>1.000.000đ</strong>, trên tất cả địa bàn giao hàng gần xa!</p>

<p style="margin-left:30pt; text-align:justify"><span style="color:rgb(255, 0, 0)"><span style="font-size:24px"><strong>BẢNG KHU VỰC VÀ PHÍ GIAO HÀNG:</strong></span></span></p>

<table align="center" border="1" cellpadding="0" cellspacing="0" style="border-collapse:collapse; border-spacing:0px; box-sizing:border-box; color:rgb(71, 71, 71); font-family:open sans,arial; font-size:14px; line-height:20.8px; width:100%">
	<tbody>
		<tr>
			<td style="height:31px; width:25%">
			<p style="text-align:center"><span style="font-size:16px"><strong>KHU VỰC 1</strong></span></p>
			</td>
			<td style="height:31px; width:50%">
			<p style="text-align:center"><span style="font-size:16px"><strong>QUY ĐỊNH GIAO HÀNG</strong></span></p>
			</td>
			<td style="height:31px; width:15%">
			<p style="text-align:center"><span style="font-size:16px"><strong>PHÍ</strong></span></p>
			</td>
		</tr>
		<tr>
			<td style="height:31px">
			<p style="text-align:center">Quận Tân Bình</p>
			</td>
			<td rowspan="10" style="height:31px">
			<p>&nbsp; Đặt hàng trước 1 giờ</p>

			<p>&nbsp; Giao hàng liên tục từ 8h00 đến 20h00, kết thúc thời gian đặt hàng lúc 18h30</p>

			<p>&nbsp; Giao hàng tất cả các địa chỉ có tên đường trên bản đồ&nbsp;<a href="http://www.google.com/maps" style="box-sizing: border-box; color: rgb(71, 71, 71); text-decoration: none; background-color: transparent;">www.google.com/maps</a></p>

			<p>&nbsp; Thời gian giao động dự trù 30 phút</p>

			<p><strong>&nbsp; Đơn hàng tối thiểu 180.000 đồng</strong></p>

			<p>&nbsp; Không giao hàng lên lầu hoặc phải gửi xe để chuyển hàng vào nhà.</p>

			<p>&nbsp;</p>
			</td>
			<td style="height:31px">
			<p style="text-align:center">0</p>
			</td>
		</tr>
		<tr>
			<td style="height:31px">
			<p style="text-align:center">Quận Phú Nhuận</p>
			</td>
			<td style="height:31px">
			<p style="text-align:center">0</p>
			</td>
		</tr>
		<tr>
			<td style="height:31px">
			<p style="text-align:center">Quận 1</p>
			</td>
			<td style="height:31px">
			<p style="text-align:center">&nbsp;15,000</p>
			</td>
		</tr>
		<tr>
			<td style="height:31px">
			<p style="text-align:center">Quận 3</p>
			</td>
			<td style="height:31px">
			<p style="text-align:center">&nbsp;15,000</p>
			</td>
		</tr>
		<tr>
			<td style="height:31px">
			<p style="text-align:center">Quận 4</p>
			</td>
			<td style="height:31px">
			<p style="text-align:center">&nbsp;20,000</p>
			</td>
		</tr>
		<tr>
			<td style="height:31px">
			<p style="text-align:center">Quận 5</p>
			</td>
			<td style="height:31px">
			<p style="text-align:center">&nbsp;15,000</p>
			</td>
		</tr>
		<tr>
			<td style="height:31px">
			<p style="text-align:center">Quận 10</p>
			</td>
			<td style="height:31px">
			<p style="text-align:center">&nbsp;15,000</p>
			</td>
		</tr>
		<tr>
			<td style="height:31px">
			<p style="text-align:center">Quận 11</p>
			</td>
			<td style="height:31px">
			<p style="text-align:center">&nbsp;15,000</p>
			</td>
		</tr>
		<tr>
			<td style="height:31px">
			<p style="text-align:center">Quận Tân phú</p>
			</td>
			<td style="height:31px">
			<p style="text-align:center">&nbsp;15,000</p>
			</td>
		</tr>
		<tr>
			<td style="height:31px">
			<p style="text-align:center">Quận Binh Thạnh</p>
			</td>
			<td style="height:31px">
			<p style="text-align:center">&nbsp;20,000</p>
			</td>
		</tr>
		<tr>
			<td style="height:31px">
			<p style="text-align:center"><strong>KHU VỰC 2</strong></p>
			</td>
			<td colspan="2" style="height:31px">
			<p><em>&nbsp; Flyfood rất mong được sự hỗ trợ của quý khách hàng để</em></p>

			<p><em>&nbsp; Nhân Viên Flyfood làm tốt trách nhiệm phục vụ của mình!</em></p>
			</td>
		</tr>
		<tr>
			<td style="height:31px">
			<p style="text-align:center">Quận 2</p>
			</td>
			<td rowspan="8" style="height:31px">
			<p>&nbsp; Đặt hàng trước 2 tiếng</p>

			<p>&nbsp; Giao hàng liên tục từ 8h00 đến 20h00, kết thúc thời gian đặt hàng lúc 18h30</p>

			<p>&nbsp; Giao hàng tất cả các địa chỉ có tên đường trên bản đồ&nbsp;<a href="http://www.google.com/maps" style="box-sizing: border-box; color: rgb(71, 71, 71); text-decoration: none; background-color: transparent;">www.google.com/maps</a></p>

			<p>&nbsp; Thời gian giao động dự trù 45 phút</p>

			<p><strong>&nbsp; Đơn hàng tối thiểu 220.000 đồng</strong></p>

			<p>&nbsp; Không giao hàng lên lầu hoặc phải gửi xe để chuyển hàng vào nhà.</p>

			<p>&nbsp; Có thể từ chối giao hàng trong những trường hợp bất khả kháng về thời tiết, đường ngập nước.</p>
			</td>
			<td style="height:31px">
			<p style="text-align:center">30,000</p>
			</td>
		</tr>
		<tr>
			<td style="height:31px">
			<p style="text-align:center">Quận 6</p>
			</td>
			<td style="height:31px">
			<p style="text-align:center">30,000</p>
			</td>
		</tr>
		<tr>
			<td style="height:31px">
			<p style="text-align:center">Quận 7</p>
			</td>
			<td style="height:31px">
			<p style="text-align:center">30,000</p>
			</td>
		</tr>
		<tr>
			<td style="height:31px">
			<p style="text-align:center">Quận 8</p>
			</td>
			<td style="height:31px">
			<p style="text-align:center">30,000</p>
			</td>
		</tr>
		<tr>
			<td style="height:31px">
			<p style="text-align:center">Quận 12</p>
			</td>
			<td style="height:31px">
			<p style="text-align:center">30,000</p>
			</td>
		</tr>
		<tr>
			<td style="height:31px">
			<p style="text-align:center">Quận Gò Vấp</p>
			</td>
			<td style="height:31px">
			<p style="text-align:center">30,000</p>
			</td>
		</tr>
		<tr>
			<td style="height:31px">
			<p style="text-align:center">Quận Thủ Đức</p>
			</td>
			<td style="height:31px">
			<p style="text-align:center">30,000</p>
			</td>
		</tr>
		<tr>
			<td style="height:31px">
			<p style="text-align:center">Quận Bình Tân</p>
			</td>
			<td style="height:31px">
			<p style="text-align:center">30,000</p>
			</td>
		</tr>
		<tr>
			<td style="height:31px">
			<p style="text-align:center"><strong>KHU VỰC 3</strong></p>
			</td>
			<td colspan="2" style="height:31px">
			<p><em>&nbsp; Flyfood rất mong được sự hỗ trợ của quý khách hàng để</em></p>

			<p><em>&nbsp; Nhân Viên Flyfood làm tốt trách nhiệm phục vụ của mình!</em></p>
			</td>
		</tr>
		<tr>
			<td style="height:31px">
			<p style="text-align:center">Quận 9</p>
			</td>
			<td rowspan="4" style="height:31px">
			<p>&nbsp; Đặt hàng trước 9h00 sáng hoặc 15h00 chiều.</p>

			<p>&nbsp; Giờ giao hàng:</p>

			<p>&nbsp; + Sáng: 10h30 đến 11h30</p>

			<p>&nbsp; + Chiều: 16h30 đến 17h30</p>

			<p>&nbsp; Giao hàng tất cả các địa chỉ có tên đường trên bản đồ&nbsp;<a href="http://www.google.com/maps" style="box-sizing: border-box; color: rgb(71, 71, 71); text-decoration: none; background-color: transparent;">www.google.com/maps</a></p>

			<p>&nbsp; Thời gian giao động dự trù 60 phút</p>

			<p><strong>&nbsp; Đơn hàng trên 2.000.000 đồng không quy định giờ giao hàng (Giao hàng bất kỳ giờ nào theo &nbsp; &nbsp; yêu cầu!)</strong></p>

			<p><strong>&nbsp; Đơn hàng tối thiểu 320.000 đồng</strong></p>
			</td>
			<td style="height:31px">
			<p style="text-align:center">30,000</p>
			</td>
		</tr>
		<tr>
			<td style="height:31px">
			<p style="text-align:center">Huyện Nhà Bè</p>
			</td>
			<td style="height:31px">
			<p style="text-align:center">30,000</p>
			</td>
		</tr>
		<tr>
			<td style="height:31px">
			<p style="text-align:center">Huyện Hóc Môn</p>
			</td>
			<td style="height:31px">
			<p style="text-align:center">30,000</p>
			</td>
		</tr>
		<tr>
			<td style="height:31px">
			<p style="text-align:center">Huyện Bình Chánh</p>

			<p>&nbsp;</p>
			</td>
			<td style="height:31px">
			<p style="text-align:center">30.000</p>
			</td>
		</tr>
		<tr>
			<td style="height:31px">
			<p style="text-align:center">Huyện Củ Chi</p>
			</td>
			<td style="height:31px">
			<p>&nbsp; Đặt hàng trước 9h00 sáng hoặc 15h00 chiều.</p>

			<p>&nbsp; Giờ giao hàng:</p>

			<p>&nbsp; + Sáng: 10h30 đến 11h30</p>

			<p>&nbsp; + Chiều: 16h30 đến 17h30</p>

			<p>&nbsp; Giao hàng theo trục đường:</p>

			<p>&nbsp; + Đường Trường Chinh, đường Xuyên Á, khu vực trung tâm Huyện Củ Chi</p>

			<p>&nbsp; Thời gian giao động dự trù 60 phút</p>

			<p><strong>&nbsp; Đơn hàng trên 2.000.000 đồng không quy định giờ giao hàng (Giao hàng bất kỳ giờ nào theo &nbsp; &nbsp; yêu cầu!)</strong></p>

			<p><strong>&nbsp; Đơn hàng tối thiểu 320.000 đồng</strong></p>
			</td>
			<td style="height:31px">
			<p style="text-align:center">30.000</p>
			</td>
		</tr>
		<tr>
			<td style="height:31px">
			<p style="text-align:center">TP. Thủ Dầu Một và TP. Biên Hòa</p>
			</td>
			<td style="height:31px">
			<p>&nbsp;+ Đặt hàng trước 9h00 sáng hoặc trước&nbsp;15h00 chiều</p>

			<p>+ Thời gian phục vụ từ 8h đến 20h mỗi ngày, kể cả ngày chủ nhật và các ngày lễ.</p>

			<p><strong>Chỉ nhận đơn hàng trên 2.000.000 đồng và&nbsp;không quy định giờ giao hàng (Giao hàng bất kỳ giờ nào theo yêu cầu!)</strong></p>
			</td>
			<td style="height:31px">
			<p style="text-align:center">30.000</p>
			</td>
		</tr>
		<tr>
			<td style="height:31px">
			<p style="text-align:center">Huyện Cần Giờ</p>
			</td>
			<td style="height:31px">
			<p>Chưa triển khai được trong thời gian này, mong quý khách hàng thông cảm!</p>
			</td>
			<td style="height:31px">
			<p>&nbsp;</p>
			</td>
		</tr>
	</tbody>
</table>

<div style="line-height: 20.8px; clear: both; text-align: justify;">&nbsp;</div>

<p style="margin-left:0.5in; text-align:justify"><span style="color:rgb(255, 0, 0)"><strong>Hấp dẫn vô cùng, càng ăn càng ngon!</strong></span></p>

<p style="margin-left:0.5in; text-align:justify"><span style="color:rgb(255, 0, 0)"><span style="font-size:14px"><strong>Giao hà</strong></span><strong>ng cực nhanh, từ 60 đến 90 phút.</strong></span></p>

<p style="margin-left:0.5in; text-align:justify"><span style="color:rgb(255, 0, 0)"><strong>Vui lòng đặt hàng trước 16h (sau 16h00 có thể hết hàng)</strong></span></p>

<p style="margin-left:0.5in; text-align:justify">&nbsp;</p>

<p style="margin-left:0.5in; text-align:justify"><span style="font-size:14px"><strong><img alt="" src="http://flyfood.vn/image/data/card%20qua%20tang.png" style="height:76px; width:113.297px"></strong></span></p>

<p style="margin-left:0.5in; text-align:justify"><span style="font-size:22px"><span style="color:rgb(255, 0, 0)"><strong>Gọi ngay: 08 39 911 911</strong></span></span></p>

<p style="text-align:justify"><span style="font-size:16px"><span style="color:rgb(0, 128, 0)"><strong><em>Flyfood – Fast &amp; Hot: “Hiện tượng mới” cho dịch vụ ăn uống Sài Gòn 2014!</em></strong></span></span></p>

<p style="text-align:justify">&nbsp;</p>

<p style="text-align:justify"><strong>Flyfood.vn</strong></p>
</div>

<div style="text-align: center;">&nbsp;</div>

            </section>', 190000, 25, 24, '2016-12-10 01:51:02.708689', '2016-12-10 01:51:02.708689', '88_1.png', '88_2.png', NULL, true, 1, 'ca-dieu-hong-sot-chanh-day');
INSERT INTO foods VALUES (107, 'Bánh cloudy các vị', 50000, NULL, NULL, NULL, NULL, 25, 27, '2016-12-10 09:56:37.25348', '2016-12-10 09:56:37.25348', '107_1.jpg', NULL, NULL, true, 1, 'banh-cloudy-cac-vi');
INSERT INTO foods VALUES (111, 'Bánh mì kem lạnh', 15000, NULL, NULL, NULL, NULL, 75, 28, '2016-12-10 10:11:01.272419', '2016-12-10 10:11:01.272419', '111_1.jpg', NULL, NULL, true, 1, 'banh-mi-kem-lanh');
INSERT INTO foods VALUES (41, 'Lẩu Thái chua cay', 540000, 'Lẩu Thái - Món lẩu được đa số thực khách ưa chuông với hương vị đặc trưng không lẫn với bất kì một món lẩu nào khác, đó là hương thơm của sả, riềng, lá chanh và vị chua chua cay cay hấp dẫn.', '<section class="left full">
                <p style="text-align:justify">- <strong>Lẩu Thái</strong>&nbsp;luôn là sự lựa chọn của rất nhiều thực khách sành ăn bởi hương vị đặc trưng, không hề bị lẫn với những món lẩu khác với hương thơm của gừng, sả, lá chanh và vị cay nóng bỏng của ớt.&nbsp;</p>

<p style="text-align:justify">- Món lẩu&nbsp;ăn kèm với các loại hải sản (tôm, mực, cá, nghêu,...), thịt bò, cá viên, gan heo, tim heo,... Ngoài ra, còn có các loại rau muống, bắp chuối, rau cải&nbsp;<span style="font-size:small">và bún tươi tạo nên món ăn có mùi thơm đặc trưng, hương vị đậm đà&nbsp;và gia vị thấm sâu vào t</span>ừng&nbsp;món&nbsp;đồ&nbsp;ăn<span style="font-size:small">.</span></p>

<p style="text-align:justify">- Món ăn cao cấp, sang trọng, hoành&nbsp;tráng, phù hợp mọi loại hình tiệc.</p>

<p style="text-align:justify">-&nbsp;<span style="font-size:small">Nguyên liệu chế biến món ăn tươi ngon, đảm bảo hợp vệ sinh, hộp đựng thức ăn chuyên dụng độc quyền, có thể giữ nóng và giữ nguyên mùi đến 8 tiếng.</span></p>

<p style="text-align:justify"><span style="color:rgb(255, 0, 0)"><strong>Suất LẨU THÁI</strong><strong>&nbsp;bao gồm:</strong></span></p>

<ul>
	<li style="text-align:justify"><span style="color:rgb(0, 128, 0)">Đồ bồi (tôm, mực, cá, nghêu,&nbsp;thịt bò, cá viên, gan heo, tim heo,...) 1,3kg</span></li>
	<li style="text-align:justify"><span style="color:rgb(0, 128, 0)">2,5kg&nbsp;nước&nbsp;lẩu</span></li>
	<li style="text-align:justify"><span style="color:rgb(0, 128, 0)">1kg bún tươi</span></li>
	<li style="text-align:justify"><span style="color:rgb(0, 128, 0)">500g rau muống&nbsp;+ bắp&nbsp;chuối&nbsp;+ các&nbsp;loại&nbsp;rau khác</span></li>
	<li style="text-align:justify"><span style="color:rgb(0, 128, 0)">Nước mắm mặn&#8203;</span></li>
	<li style="text-align:justify"><strong><span style="color:rgb(0, 128, 0)">Trọng&nbsp;lượng thành phẩm: 3,8kg</span></strong></li>
	<li style="text-align:justify"><strong><span style="color:rgb(0, 128, 0)">Trọng&nbsp;lượng thành phẩm: 2,5kg&nbsp;nước + 1,3kg&nbsp;đồ bồi</span></strong></li>
	<li style="text-align:justify"><span style="color:rgb(0, 128, 0)"><strong>Nước thêm 1kg giá&nbsp;50.000 VNĐ</strong></span></li>
</ul>

<p><strong>CHƯƠNG TRÌNH 1&nbsp;ĐỔI 1</strong><br>
<br>
<a href="http://flyfood.vn/chuong-trinh-1-doi-1--detail-d068181215175617586.html"><img alt="Chương trình 1 đổi 1 Flyfood" src="http://flyfood.vn/Files/images/Banner%201%20%C4%91%E1%BB%95i%201.jpg" style="height:100%; line-height:20.8px; text-align:center; width:100%" title="Chương trình 1 đổi 1 Flyfood"></a></p>

            </section>', '<section class="left full">
                <p style="text-align:justify"><strong>Lẩu Thái&nbsp;</strong>luôn là sự lựa chọn của rất nhiều thực khách sành ăn bởi hương vị đặc trưng, không hề bị lẫn với những món lẩu khác với hương thơm của gừng sả, lá chanh và vị cay nóng bỏng của ớt.&nbsp;</p>

<p style="text-align:justify">&nbsp;</p>

<p style="text-align:center"><img alt="Lẩu thái Flyfood 1" src="http://flyfood.vn/Files/images/lau-thai-flyfood-0001.png" style="height:100%; width:100%" title="Lẩu thái Flyfood 1"><br>
&nbsp;</p>

<p style="text-align:justify">Cứ đến mùa mưa, khi tiết trời trở nên se&nbsp;lạnh, được cùng gia đình, bạn bè quây&nbsp;quần bên nồi lẩu thái&nbsp;đang bốc khói nghi ngút vừa ăn vừa trò chuyện rôm rả thì còn gì bằng. Không phải bỗng nhiên mà lẩu trở thành món ăn đắt hàng vào mùa mưa, bản chất của ăn <strong>Lẩu Thái</strong>&nbsp;là phải thật đông, kéo dài lai rai mới vui vì vậy món ăn này rất phù hợp với không khí đông vui của một nhóm bạn, hoặc một gia đình. Thời&nbsp;tiết mát&nbsp;lạnh dưới những cơn mưa&nbsp;mà&nbsp;ăn lẩu thái&nbsp;sẽ giúp cơ thể mọi người ấm áp hơn.</p>

<p style="text-align:justify">&nbsp;</p>

<p style="text-align:center"><img alt="Lẩu thái Flyfood 2" src="http://flyfood.vn/Files/images/lau-thai-flyfood-2.png" style="height:100%; width:100%" title="Lẩu thái Flyfood 2"></p>

<p style="text-align:justify">&nbsp;</p>

<p style="text-align:justify">Món lẩu&nbsp;ăn kèm với các loại hải sản (tôm, mực, cá, nghêu,...), thịt bò, cá viên, gan heo, tim heo,... Ngoài ra, còn có các loại rau muống, bắp chuối, rau cải&nbsp;<span style="font-size:small">và bún tươi tạo nên món ăn có mùi thơm đặc trưng, hương vị đậm đà&nbsp;và gia vị thấm sâu vào t</span>ừng&nbsp;món&nbsp;đồ&nbsp;ăn<span style="font-size:small">.</span></p>

<p style="text-align:justify">&nbsp;</p>

<p style="text-align:center"><img alt="Lẩu thái Flyfood 3" src="http://flyfood.vn/Files/images/lau-thai-flyfood-3.png" style="height:100%; width:100%" title="Lẩu thái Flyfood 3"></p>

<p style="text-align:justify">&nbsp;</p>

<p style="text-align:justify">Món ăn cao cấp, sang trọng, hoành&nbsp;tráng, phù hợp mọi loại hình tiệc.&nbsp;<span style="font-size:small">Nguyên liệu chế biến món ăn tươi ngon, đảm bảo hợp vệ sinh, hộp đựng thức ăn chuyên dụng độc quyền, có thể giữ nóng và giữ nguyên mùi đến 8 tiếng.</span></p>

<p style="text-align:justify">&nbsp;</p>

<p style="text-align:center"><img alt="Lẩu thái Flyfood 4" src="http://flyfood.vn/Files/images/lau-thai-flyfood-4.png" style="height:100%; width:100%" title="Lẩu thái Flyfood 4"><br>
<br>
<img alt="Lẩu thái Flyfood 5" src="http://flyfood.vn/Files/images/lau-thai-flyfood-5.png" style="height:100%; width:100%" title="Lẩu thái Flyfood 5"><br>
<br>
<img alt="Lẩu thái Flyfood 6" src="http://flyfood.vn/Files/images/lau-thai-flyfood-6.png" style="height:100%; width:100%" title="Lẩu thái Flyfood 6"><br>
<br>
<img alt="Lẩu thái Flyfood 7" src="http://flyfood.vn/Files/images/lau-thai-flyfood-7.png" style="height:100%; width:100%" title="Lẩu thái Flyfood 7"><br>
<br>
<img alt="Lẩu thái Flyfood 8" src="http://flyfood.vn/Files/images/lau-thai-flyfood-8.png" style="height:100%; width:100%" title="Lẩu thái Flyfood 8"><br>
<br>
<img alt="Lẩu thái Flyfood 9" src="http://flyfood.vn/Files/images/lau-thai-flyfood-9.png" style="height:100%; width:100%" title="Lẩu thái Flyfood 9"><br>
<br>
<img alt="Lẩu thái Flyfood 10" src="http://flyfood.vn/Files/images/lau-thai-flyfood-10.png" style="height:100%; width:100%" title="Lẩu thái Flyfood 10"><br>
<br>
<img alt="Lẩu thái Flyfood 11" src="http://flyfood.vn/Files/images/lau-thai-flyfood-11.png" style="height:100%; width:100%" title="Lẩu thái Flyfood 11"><br>
<br>
<img alt="Hộp giữ nhiệt Flyfood " src="http://flyfood.vn/Files/images/hop-giu-nhiet-flyfood.jpg" style="height:100%; width:100%" title="Hộp giữ nhiệt Flyfood "><br>
&nbsp;</p>

<p style="text-align:center"><span style="font-size:24px"><span style="color:rgb(255, 0, 0)"><strong>MIỄN 100%</strong></span></span>&nbsp;&nbsp;phí giao hàng cho đơn hàng có giá trị món ăn trên&nbsp;<strong>1.000.000đ</strong>, trên tất cả địa bàn giao hàng gần xa!</p>

<p style="margin-left:30pt; text-align:center"><span style="color:rgb(255, 0, 0)"><span style="font-size:24px"><strong>BẢNG KHU VỰC VÀ PHÍ GIAO HÀNG:</strong></span></span></p>

<table align="center" border="1" cellpadding="0" cellspacing="0" style="border-collapse:collapse; border-spacing:0px; box-sizing:border-box; color:rgb(71, 71, 71); font-family:open sans,arial; font-size:14px; line-height:20.8px; width:100%">
	<tbody>
		<tr>
			<td style="height:31px; width:25%">
			<p style="text-align:center"><span style="font-size:16px"><strong>KHU VỰC 1</strong></span></p>
			</td>
			<td style="height:31px; width:50%">
			<p style="text-align:center"><span style="font-size:16px"><strong>QUY ĐỊNH GIAO HÀNG</strong></span></p>
			</td>
			<td style="height:31px; width:15%">
			<p style="text-align:center"><span style="font-size:16px"><strong>PHÍ</strong></span></p>
			</td>
		</tr>
		<tr>
			<td style="height:31px">
			<p style="text-align:center">Quận Tân Bình</p>
			</td>
			<td rowspan="10" style="height:31px">
			<p>&nbsp; Đặt hàng trước 1 giờ</p>

			<p>&nbsp; Giao hàng liên tục từ 8h00 đến 20h00, kết thúc thời gian đặt hàng lúc 18h30</p>

			<p>&nbsp; Giao hàng tất cả các địa chỉ có tên đường trên bản đồ&nbsp;<a href="http://www.google.com/maps" style="box-sizing: border-box; color: rgb(71, 71, 71); text-decoration: none; background-color: transparent;">www.google.com/maps</a></p>

			<p>&nbsp; Thời gian giao động dự trù 30 phút</p>

			<p><strong>&nbsp; Đơn hàng tối thiểu 180.000 đồng</strong></p>

			<p>&nbsp; Không giao hàng lên lầu hoặc phải gửi xe để chuyển hàng vào nhà.</p>

			<p>&nbsp;</p>
			</td>
			<td style="height:31px">
			<p style="text-align:center">0</p>
			</td>
		</tr>
		<tr>
			<td style="height:31px">
			<p style="text-align:center">Quận Phú Nhuận</p>
			</td>
			<td style="height:31px">
			<p style="text-align:center">0</p>
			</td>
		</tr>
		<tr>
			<td style="height:31px">
			<p style="text-align:center">Quận 1</p>
			</td>
			<td style="height:31px">
			<p style="text-align:center">&nbsp;15,000</p>
			</td>
		</tr>
		<tr>
			<td style="height:31px">
			<p style="text-align:center">Quận 3</p>
			</td>
			<td style="height:31px">
			<p style="text-align:center">&nbsp;15,000</p>
			</td>
		</tr>
		<tr>
			<td style="height:31px">
			<p style="text-align:center">Quận 4</p>
			</td>
			<td style="height:31px">
			<p style="text-align:center">&nbsp;20,000</p>
			</td>
		</tr>
		<tr>
			<td style="height:31px">
			<p style="text-align:center">Quận 5</p>
			</td>
			<td style="height:31px">
			<p style="text-align:center">&nbsp;15,000</p>
			</td>
		</tr>
		<tr>
			<td style="height:31px">
			<p style="text-align:center">Quận 10</p>
			</td>
			<td style="height:31px">
			<p style="text-align:center">&nbsp;15,000</p>
			</td>
		</tr>
		<tr>
			<td style="height:31px">
			<p style="text-align:center">Quận 11</p>
			</td>
			<td style="height:31px">
			<p style="text-align:center">&nbsp;15,000</p>
			</td>
		</tr>
		<tr>
			<td style="height:31px">
			<p style="text-align:center">Quận Tân phú</p>
			</td>
			<td style="height:31px">
			<p style="text-align:center">&nbsp;15,000</p>
			</td>
		</tr>
		<tr>
			<td style="height:31px">
			<p style="text-align:center">Quận Binh Thạnh</p>
			</td>
			<td style="height:31px">
			<p style="text-align:center">&nbsp;20,000</p>
			</td>
		</tr>
		<tr>
			<td style="height:31px">
			<p style="text-align:center"><strong>KHU VỰC 2</strong></p>
			</td>
			<td colspan="2" style="height:31px">
			<p><em>&nbsp; Flyfood rất mong được sự hỗ trợ của quý khách hàng để</em></p>

			<p><em>&nbsp; Nhân Viên Flyfood làm tốt trách nhiệm phục vụ của mình!</em></p>
			</td>
		</tr>
		<tr>
			<td style="height:31px">
			<p style="text-align:center">Quận 2</p>
			</td>
			<td rowspan="8" style="height:31px">
			<p>&nbsp; Đặt hàng trước 2 tiếng</p>

			<p>&nbsp; Giao hàng liên tục từ 8h00 đến 20h00, kết thúc thời gian đặt hàng lúc 18h30</p>

			<p>&nbsp; Giao hàng tất cả các địa chỉ có tên đường trên bản đồ&nbsp;<a href="http://www.google.com/maps" style="box-sizing: border-box; color: rgb(71, 71, 71); text-decoration: none; background-color: transparent;">www.google.com/maps</a></p>

			<p>&nbsp; Thời gian giao động dự trù 45 phút</p>

			<p><strong>&nbsp; Đơn hàng tối thiểu 220.000 đồng</strong></p>

			<p>&nbsp; Không giao hàng lên lầu hoặc phải gửi xe để chuyển hàng vào nhà.</p>

			<p>&nbsp; Có thể từ chối giao hàng trong những trường hợp bất khả kháng về thời tiết, đường ngập nước.</p>
			</td>
			<td style="height:31px">
			<p style="text-align:center">30,000</p>
			</td>
		</tr>
		<tr>
			<td style="height:31px">
			<p style="text-align:center">Quận 6</p>
			</td>
			<td style="height:31px">
			<p style="text-align:center">30,000</p>
			</td>
		</tr>
		<tr>
			<td style="height:31px">
			<p style="text-align:center">Quận 7</p>
			</td>
			<td style="height:31px">
			<p style="text-align:center">30,000</p>
			</td>
		</tr>
		<tr>
			<td style="height:31px">
			<p style="text-align:center">Quận 8</p>
			</td>
			<td style="height:31px">
			<p style="text-align:center">30,000</p>
			</td>
		</tr>
		<tr>
			<td style="height:31px">
			<p style="text-align:center">Quận 12</p>
			</td>
			<td style="height:31px">
			<p style="text-align:center">30,000</p>
			</td>
		</tr>
		<tr>
			<td style="height:31px">
			<p style="text-align:center">Quận Gò Vấp</p>
			</td>
			<td style="height:31px">
			<p style="text-align:center">30,000</p>
			</td>
		</tr>
		<tr>
			<td style="height:31px">
			<p style="text-align:center">Quận Thủ Đức</p>
			</td>
			<td style="height:31px">
			<p style="text-align:center">30,000</p>
			</td>
		</tr>
		<tr>
			<td style="height:31px">
			<p style="text-align:center">Quận Bình Tân</p>
			</td>
			<td style="height:31px">
			<p style="text-align:center">30,000</p>
			</td>
		</tr>
		<tr>
			<td style="height:31px">
			<p style="text-align:center"><strong>KHU VỰC 3</strong></p>
			</td>
			<td colspan="2" style="height:31px">
			<p><em>&nbsp; Flyfood rất mong được sự hỗ trợ của quý khách hàng để</em></p>

			<p><em>&nbsp; Nhân Viên Flyfood làm tốt trách nhiệm phục vụ của mình!</em></p>
			</td>
		</tr>
		<tr>
			<td style="height:31px">
			<p style="text-align:center">Quận 9</p>
			</td>
			<td rowspan="4" style="height:31px">
			<p>&nbsp; Đặt hàng trước 9h00 sáng hoặc 15h00 chiều.</p>

			<p>&nbsp; Giờ giao hàng:</p>

			<p>&nbsp; + Sáng: 10h30 đến 11h30</p>

			<p>&nbsp; + Chiều: 16h30 đến 17h30</p>

			<p>&nbsp; Giao hàng tất cả các địa chỉ có tên đường trên bản đồ&nbsp;<a href="http://www.google.com/maps" style="box-sizing: border-box; color: rgb(71, 71, 71); text-decoration: none; background-color: transparent;">www.google.com/maps</a></p>

			<p>&nbsp; Thời gian giao động dự trù 60 phút</p>

			<p><strong>&nbsp; Đơn hàng trên 2.000.000 đồng không quy định giờ giao hàng (Giao hàng bất kỳ giờ nào theo &nbsp; &nbsp; yêu cầu!)</strong></p>

			<p><strong>&nbsp; Đơn hàng tối thiểu 320.000 đồng</strong></p>
			</td>
			<td style="height:31px">
			<p style="text-align:center">30,000</p>
			</td>
		</tr>
		<tr>
			<td style="height:31px">
			<p style="text-align:center">Huyện Nhà Bè</p>
			</td>
			<td style="height:31px">
			<p style="text-align:center">30,000</p>
			</td>
		</tr>
		<tr>
			<td style="height:31px">
			<p style="text-align:center">Huyện Hóc Môn</p>
			</td>
			<td style="height:31px">
			<p style="text-align:center">30,000</p>
			</td>
		</tr>
		<tr>
			<td style="height:31px">
			<p style="text-align:center">Huyện Bình Chánh</p>

			<p>&nbsp;</p>
			</td>
			<td style="height:31px">
			<p style="text-align:center">30.000</p>
			</td>
		</tr>
		<tr>
			<td style="height:31px">
			<p style="text-align:center">Huyện Củ Chi</p>
			</td>
			<td style="height:31px">
			<p>&nbsp; Đặt hàng trước 9h00 sáng hoặc 15h00 chiều.</p>

			<p>&nbsp; Giờ giao hàng:</p>

			<p>&nbsp; + Sáng: 10h30 đến 11h30</p>

			<p>&nbsp; + Chiều: 16h30 đến 17h30</p>

			<p>&nbsp; Giao hàng theo trục đường:</p>

			<p>&nbsp; + Đường Trường Chinh, đường Xuyên Á, khu vực trung tâm Huyện Củ Chi</p>

			<p>&nbsp; Thời gian giao động dự trù 60 phút</p>

			<p><strong>&nbsp; Đơn hàng trên 2.000.000 đồng không quy định giờ giao hàng (Giao hàng bất kỳ giờ nào theo &nbsp; &nbsp; yêu cầu!)</strong></p>

			<p><strong>&nbsp; Đơn hàng tối thiểu 320.000 đồng</strong></p>
			</td>
			<td style="height:31px">
			<p style="text-align:center">30.000</p>
			</td>
		</tr>
		<tr>
			<td style="height:31px">
			<p style="text-align:center">TP. Thủ Dầu Một và TP. Biên Hòa</p>
			</td>
			<td style="height:31px">
			<p>&nbsp;+ Đặt hàng trước 9h00 sáng hoặc trước&nbsp;15h00 chiều</p>

			<p>+ Thời gian phục vụ từ 8h đến 20h mỗi ngày, kể cả ngày chủ nhật và các ngày lễ.</p>

			<p><strong>Chỉ nhận đơn hàng trên 2.000.000 đồng và&nbsp;không quy định giờ giao hàng (Giao hàng bất kỳ giờ nào theo yêu cầu!)</strong></p>
			</td>
			<td style="height:31px">
			<p style="text-align:center">30.000</p>
			</td>
		</tr>
		<tr>
			<td style="height:31px">
			<p style="text-align:center">Huyện Cần Giờ</p>
			</td>
			<td style="height:31px">
			<p>Chưa triển khai được trong thời gian này, mong quý khách hàng thông cảm!</p>
			</td>
			<td style="height:31px">
			<p>&nbsp;</p>
			</td>
		</tr>
	</tbody>
</table>

<div style="line-height: 20.8px; clear: both;">&nbsp;</div>

<p style="margin-left:0.5in; text-align:center"><span style="color:rgb(255, 0, 0)"><strong>Hấp dẫn vô cùng, càng ăn càng ngon!</strong></span></p>

<p style="margin-left:0.5in; text-align:center"><span style="color:rgb(255, 0, 0)"><span style="font-size:14px"><strong>Giao hà</strong></span><strong>ng cực nhanh, từ 60 đến 90 phút.</strong></span></p>

<p style="margin-left:0.5in; text-align:center"><span style="color:rgb(255, 0, 0)"><strong>Vui lòng đặt hàng trước 16h (sau 16h00 có thể hết hàng)</strong></span></p>

<p style="margin-left:0.5in; text-align:center">&nbsp;</p>

<p style="margin-left:0.5in; text-align:center"><span style="font-size:14px"><strong><img alt="" src="http://flyfood.vn/image/data/card%20qua%20tang.png" style="height:76px; width:113.297px"></strong></span></p>

<p style="margin-left:0.5in; text-align:center"><span style="font-size:22px"><span style="color:rgb(255, 0, 0)"><strong>Gọi ngay: 08 39 911 911</strong></span></span></p>

<p style="text-align:center"><span style="font-size:16px"><span style="color:rgb(0, 128, 0)"><strong><em>Flyfood – Fast &amp; Hot: “Hiện tượng mới” cho dịch vụ ăn uống Sài Gòn 2014!</em></strong></span></span></p>

<p style="text-align:center">&nbsp;</p>

<p style="text-align:right"><strong>Flyfood.vn</strong></p>

<div>&nbsp;</div>

            </section>', 430000, 25, 16, '2016-12-08 19:10:04.762642', '2016-12-08 19:10:04.762642', '41_1.png', '41_2.png', '41_3.png', true, 1, 'lau-thai-chua-cay');
INSERT INTO foods VALUES (93, 'Cà ri cua', 183000, NULL, NULL, NULL, NULL, 25, 25, '2016-12-10 02:09:15.865288', '2016-12-10 02:09:15.865288', '93_1.jpg', NULL, NULL, true, 1, 'ca-ri-cua');
INSERT INTO foods VALUES (109, 'Bánh su kem truyền thống', 35000, NULL, NULL, NULL, NULL, 75, 28, '2016-12-10 10:11:01.272419', '2016-12-10 10:11:01.272419', '109_1.jpg', NULL, NULL, true, 1, 'banh-su-kem-truyen-thong');
INSERT INTO foods VALUES (112, 'Bánh gato kem lạnh', 150000, NULL, NULL, NULL, 120000, 25, 28, '2016-12-10 10:11:01.272419', '2016-12-10 10:11:01.272419', '112_1.jpg', NULL, NULL, true, 1, 'banh-gato-kem-lanh');
INSERT INTO foods VALUES (108, 'Bánh phô mai', 120000, NULL, NULL, NULL, 90000, 25, 27, '2016-12-10 09:56:37.25348', '2016-12-10 09:56:37.25348', '108_1.jpg', NULL, NULL, true, 1, 'banh-pho-mai');
INSERT INTO foods VALUES (102, 'Bạch tuộc nướng muối ớt', 50000, NULL, NULL, NULL, NULL, 25, 26, '2016-12-10 02:21:39.568755', '2016-12-10 02:21:39.568755', '102_1.jpg', NULL, NULL, true, 1, 'bach-tuoc-nuong-muoi-ot');
INSERT INTO foods VALUES (106, 'Bánh mousse matcha', 150000, NULL, NULL, NULL, 120000, 25, 27, '2016-12-10 09:56:37.25348', '2016-12-10 09:56:37.25348', '106_1.jpg', NULL, NULL, true, 1, 'banh-mousse-matcha');
INSERT INTO foods VALUES (103, 'Bánh bông lan trứng muối 2 tầng', 200000, NULL, NULL, NULL, 155000, 25, 27, '2016-12-10 09:56:37.25348', '2016-12-10 09:56:37.25348', '103_1.jpg', NULL, NULL, true, 1, 'banh-bong-lan-trung-muoi-2-tang');
INSERT INTO foods VALUES (104, 'Bánh su Nhật', 95000, NULL, NULL, NULL, NULL, 25, 27, '2016-12-10 09:56:37.25348', '2016-12-10 09:56:37.25348', '104_1.jpg', NULL, NULL, true, 1, 'banh-su-nhat');
INSERT INTO foods VALUES (113, 'Bánh cupcake bắp', 20000, NULL, NULL, NULL, NULL, 85, 28, '2016-12-10 10:11:01.272419', '2016-12-10 10:11:01.272419', '113_1.jpg', NULL, NULL, true, 1, 'banh-cupcake-bap');
INSERT INTO foods VALUES (91, 'Cua sốt tiêu đen', 208000, NULL, NULL, NULL, NULL, 25, 25, '2016-12-10 02:09:15.865288', '2016-12-10 02:09:15.865288', '91_1.jpg', NULL, NULL, true, 1, 'cua-sot-tieu-den');
INSERT INTO foods VALUES (39, 'Lẩu cá lăng măng chua', 450000, 'Lẩu Cá Lăng Măng Chua món ăn truyền thống với nước lẩu, vừa đậm đà, vừa chua chua cay cay, cùng với những món ăn phụ khác sẽ mang đến cho quý khách một buổi ăn quây quần cùng bạn bè, người thân một cách ẩm cúng trong những buổi tối trời trở lạnh.', '<section class="left full">
                <p>- <strong>Lẩu Cá Lăng&nbsp;Nấu Măng Chua&nbsp;</strong>là món ngon với hương vị chua chua ngọt ngọt, nước lẩu cay cay dễ làm say lòng thực khách.</p>

<p>- Cá lăng là loại cá da trơn, không có xương dăm, sống nơi tầng đáy môi trường nước ngọt. Thịt cá lăng thơm, ngon, giàu chất dinh dưỡng, Omega3… nên được thực khách&nbsp;ưa thích.</p>

<p>- Món&nbsp;lẩu&nbsp;<span style="font-size:small">ăn kèm với rau muống, b</span>ắp&nbsp;chuối,<span style="font-size:small">&nbsp;và bún tươi tạo nên món ăn có mùi thơm đặc trưng, hương vị đậm đà&nbsp;và gia vị thấm sâu vào thịt c</span>á<span style="font-size:small">.</span></p>

<p>- Món ăn cao cấp, sang trọng, hoành&nbsp;tráng, phù hợp mọi loại hình tiệc.</p>

<p>-&nbsp;<span style="font-size:small">Nguyên liệu chế biến món ăn tươi ngon, đảm bảo hợp vệ sinh, hộp đựng thức ăn chuyên dụng độc quyền, có thể giữ nóng và giữ nguyên mùi đến 8 tiếng.</span></p>

<p><span style="color:rgb(255, 0, 0)"><strong>Suất LẨU&nbsp;CÁ&nbsp;LĂNG MĂNG CHUA&nbsp;bao gồm:</strong></span></p>

<ul>
	<li><span style="color:rgb(0, 128, 0)">1 con cá lăng&nbsp;1,5kg</span></li>
	<li><span style="color:rgb(0, 128, 0)">2,5kg&nbsp;nước&nbsp;lẩu</span></li>
	<li><span style="color:rgb(0, 128, 0)">1kg bún tươi</span></li>
	<li><span style="color:rgb(0, 128, 0)">500g rau muống&nbsp;+ bắp&nbsp;chuối&nbsp;+ các&nbsp;loại&nbsp;rau khác</span></li>
	<li><span style="color:rgb(0, 128, 0)">Nước mắm mặn&#8203;</span></li>
	<li><span style="color:rgb(0, 128, 0)">Trọng&nbsp;lượng thành phẩm: 3,7kg</span></li>
	<li><span style="color:rgb(0, 128, 0)"><strong>Trọng&nbsp;lượng thành phẩm: 2,5kg&nbsp;nước + 1,3kg cá</strong></span></li>
	<li><span style="color:rgb(0, 128, 0)"><strong>Nước thêm 1kg giá&nbsp;50.000 VNĐ</strong></span></li>
</ul>

<p><strong>CHƯƠNG TRÌNH 1&nbsp;ĐỔI 1</strong><br>
<br>
<a href="http://flyfood.vn/chuong-trinh-1-doi-1--detail-d068181215175617586.html"><img alt="Chương trình 1 đổi 1 Flyfood" src="http://flyfood.vn/Files/images/Banner%201%20%C4%91%E1%BB%95i%201.jpg" style="height:100%; line-height:20.8px; text-align:center; width:100%" title="Chương trình 1 đổi 1 Flyfood"></a></p>

            </section>', '<section class="left full">
                <p style="text-align:justify"><strong>Lẩu Cá Lăng Măng Chua</strong>&nbsp;món ăn truyền thống với nước lẩu, vừa đậm đà, vừa chua chua cay cay, cùng với những món ăn phụ khác sẽ mang đến cho quý khách một buổi ăn quây quần cùng bạn bè, người thân một cách ẩm cúng trong những buổi tối trời trở lạnh.</p>

<p>&nbsp;</p>

<p style="text-align:center"><img alt="Lẩu cá lăng măng chua Flyfood 1" src="http://flyfood.vn/Files/images/lau-ca-lang-mang-chua-flyfood-1.png" style="height:100%; width:100%" title="Lẩu cá lăng măng chua Flyfood 1"></p>

<p>&nbsp;</p>

<p style="text-align:justify">Cá lăng là loại cá da trơn, không có xương dăm, sống nơi tầng đáy môi trường nước ngọt. Thịt cá lăng thơm, ngon, giàu chất dinh dưỡng, Omega 3… nên được thực khách&nbsp;ưa thích.&nbsp;Món&nbsp;lẩu&nbsp;<span style="font-size:small">ăn kèm với&nbsp;rau muống, b</span>ắp&nbsp;chuối,<span style="font-size:small">&nbsp;và bún tươi tạo nên món ăn có mùi thơm đặc trưng, hương vị đậm đà&nbsp;và gia vị thấm sâu vào thịt c</span>á<span style="font-size:small">.</span></p>

<p>&nbsp;</p>

<p style="text-align:justify">Gắp một miếng cá săn chắc, húp một muỗng nước lẩu đậm đà, nóng hổi và ăn kèm với măng chua cùng nhiều loại rau giòn giòn bạn sẽ cảm nhận được hương vị chua ngọt, cay cay đặc biệt.&nbsp;</p>

<p>&nbsp;</p>

<p style="text-align:center"><img alt="Lẩu cá lăng măng chua Flyfood 3" src="http://flyfood.vn/Files/images/lau-ca-lang-mang-chua-flyfood-3.png" style="height:100%; width:100%" title="Lẩu cá lăng măng chua Flyfood 3"></p>

<p style="text-align:center">&nbsp;</p>

<p style="text-align:justify">Món ăn cao cấp, sang trọng, hoành&nbsp;tráng, phù hợp mọi loại hình tiệc.&nbsp;<span style="font-size:small">Nguyên liệu chế biến món ăn tươi ngon, đảm bảo hợp vệ sinh, hộp đựng thức ăn chuyên dụng độc quyền, có thể giữ nóng và giữ nguyên mùi đến 8 tiếng.</span></p>

<p style="text-align:justify">&nbsp;</p>

<p style="text-align:center"><img alt="Lẩu cá lăng măng chua Flyfood 4" src="http://flyfood.vn/Files/images/lau-ca-lang-mang-chua-flyfood-4.png" style="height:100%; width:100%" title="Lẩu cá lăng măng chua Flyfood 4"><br>
<br>
<img alt="Lẩu cá lăng măng chua Flyfood 5" src="http://flyfood.vn/Files/images/lau-ca-lang-mang-chua-flyfood-5.png" style="height:100%; width:100%" title="Lẩu cá lăng măng chua Flyfood 5"><br>
<br>
<img alt="Lẩu cá lăng măng chua Flyfood 6" src="http://flyfood.vn/Files/images/lau-ca-lang-mang-chua-flyfood-6.png" style="height:100%; width:100%" title="Lẩu cá lăng măng chua Flyfood 6"><br>
<br>
<img alt="Lẩu cá lăng măng chua Flyfood 7" src="http://flyfood.vn/Files/images/lau-ca-lang-mang-chua-flyfood-7.png" style="height:100%; width:100%" title="Lẩu cá lăng măng chua Flyfood 7"><br>
<br>
<img alt="Hộp giữ nhiệt Flyfood" src="http://flyfood.vn/Files/images/hop-giu-nhiet-flyfood.jpg" style="height:100%; width:100%" title="Hộp giữ nhiệt Flyfood"><br>
&nbsp;</p>

<p style="text-align:center"><span style="font-size:24px"><span style="color:rgb(255, 0, 0)"><strong>MIỄN 100%</strong></span></span>&nbsp;&nbsp;phí giao hàng cho đơn hàng có giá trị món ăn trên&nbsp;<strong>1.000.000đ</strong>, trên tất cả địa bàn giao hàng gần xa!</p>

<p style="margin-left:30pt; text-align:center"><span style="color:rgb(255, 0, 0)"><span style="font-size:24px"><strong>BẢNG KHU VỰC VÀ PHÍ GIAO HÀNG:</strong></span></span></p>

<table align="center" border="1" cellpadding="0" cellspacing="0" style="border-collapse:collapse; border-spacing:0px; box-sizing:border-box; color:rgb(71, 71, 71); font-family:open sans,arial; font-size:14px; line-height:20.8px; width:100%">
	<tbody>
		<tr>
			<td style="height:31px; width:25%">
			<p style="text-align:center"><span style="font-size:16px"><strong>KHU VỰC 1</strong></span></p>
			</td>
			<td style="height:31px; width:50%">
			<p style="text-align:center"><span style="font-size:16px"><strong>QUY ĐỊNH GIAO HÀNG</strong></span></p>
			</td>
			<td style="height:31px; width:15%">
			<p style="text-align:center"><span style="font-size:16px"><strong>PHÍ</strong></span></p>
			</td>
		</tr>
		<tr>
			<td style="height:31px">
			<p style="text-align:center">Quận Tân Bình</p>
			</td>
			<td rowspan="10" style="height:31px">
			<p>&nbsp; Đặt hàng trước 1 giờ</p>

			<p>&nbsp; Giao hàng liên tục từ 8h00 đến 20h00, kết thúc thời gian đặt hàng lúc 18h30</p>

			<p>&nbsp; Giao hàng tất cả các địa chỉ có tên đường trên bản đồ&nbsp;<a href="http://www.google.com/maps" style="box-sizing: border-box; color: rgb(71, 71, 71); text-decoration: none; background-color: transparent;">www.google.com/maps</a></p>

			<p>&nbsp; Thời gian giao động dự trù 30 phút</p>

			<p><strong>&nbsp; Đơn hàng tối thiểu 180.000 đồng</strong></p>

			<p>&nbsp; Không giao hàng lên lầu hoặc phải gửi xe để chuyển hàng vào nhà.</p>

			<p>&nbsp;</p>
			</td>
			<td style="height:31px">
			<p style="text-align:center">0</p>
			</td>
		</tr>
		<tr>
			<td style="height:31px">
			<p style="text-align:center">Quận Phú Nhuận</p>
			</td>
			<td style="height:31px">
			<p style="text-align:center">0</p>
			</td>
		</tr>
		<tr>
			<td style="height:31px">
			<p style="text-align:center">Quận 1</p>
			</td>
			<td style="height:31px">
			<p style="text-align:center">&nbsp;15,000</p>
			</td>
		</tr>
		<tr>
			<td style="height:31px">
			<p style="text-align:center">Quận 3</p>
			</td>
			<td style="height:31px">
			<p style="text-align:center">&nbsp;15,000</p>
			</td>
		</tr>
		<tr>
			<td style="height:31px">
			<p style="text-align:center">Quận 4</p>
			</td>
			<td style="height:31px">
			<p style="text-align:center">&nbsp;20,000</p>
			</td>
		</tr>
		<tr>
			<td style="height:31px">
			<p style="text-align:center">Quận 5</p>
			</td>
			<td style="height:31px">
			<p style="text-align:center">&nbsp;15,000</p>
			</td>
		</tr>
		<tr>
			<td style="height:31px">
			<p style="text-align:center">Quận 10</p>
			</td>
			<td style="height:31px">
			<p style="text-align:center">&nbsp;15,000</p>
			</td>
		</tr>
		<tr>
			<td style="height:31px">
			<p style="text-align:center">Quận 11</p>
			</td>
			<td style="height:31px">
			<p style="text-align:center">&nbsp;15,000</p>
			</td>
		</tr>
		<tr>
			<td style="height:31px">
			<p style="text-align:center">Quận Tân phú</p>
			</td>
			<td style="height:31px">
			<p style="text-align:center">&nbsp;15,000</p>
			</td>
		</tr>
		<tr>
			<td style="height:31px">
			<p style="text-align:center">Quận Binh Thạnh</p>
			</td>
			<td style="height:31px">
			<p style="text-align:center">&nbsp;20,000</p>
			</td>
		</tr>
		<tr>
			<td style="height:31px">
			<p style="text-align:center"><strong>KHU VỰC 2</strong></p>
			</td>
			<td colspan="2" style="height:31px">
			<p><em>&nbsp; Flyfood rất mong được sự hỗ trợ của quý khách hàng để</em></p>

			<p><em>&nbsp; Nhân Viên Flyfood làm tốt trách nhiệm phục vụ của mình!</em></p>
			</td>
		</tr>
		<tr>
			<td style="height:31px">
			<p style="text-align:center">Quận 2</p>
			</td>
			<td rowspan="8" style="height:31px">
			<p>&nbsp; Đặt hàng trước 2 tiếng</p>

			<p>&nbsp; Giao hàng liên tục từ 8h00 đến 20h00, kết thúc thời gian đặt hàng lúc 18h30</p>

			<p>&nbsp; Giao hàng tất cả các địa chỉ có tên đường trên bản đồ&nbsp;<a href="http://www.google.com/maps" style="box-sizing: border-box; color: rgb(71, 71, 71); text-decoration: none; background-color: transparent;">www.google.com/maps</a></p>

			<p>&nbsp; Thời gian giao động dự trù 45 phút</p>

			<p><strong>&nbsp; Đơn hàng tối thiểu 220.000 đồng</strong></p>

			<p>&nbsp; Không giao hàng lên lầu hoặc phải gửi xe để chuyển hàng vào nhà.</p>

			<p>&nbsp; Có thể từ chối giao hàng trong những trường hợp bất khả kháng về thời tiết, đường ngập nước.</p>
			</td>
			<td style="height:31px">
			<p style="text-align:center">30,000</p>
			</td>
		</tr>
		<tr>
			<td style="height:31px">
			<p style="text-align:center">Quận 6</p>
			</td>
			<td style="height:31px">
			<p style="text-align:center">30,000</p>
			</td>
		</tr>
		<tr>
			<td style="height:31px">
			<p style="text-align:center">Quận 7</p>
			</td>
			<td style="height:31px">
			<p style="text-align:center">30,000</p>
			</td>
		</tr>
		<tr>
			<td style="height:31px">
			<p style="text-align:center">Quận 8</p>
			</td>
			<td style="height:31px">
			<p style="text-align:center">30,000</p>
			</td>
		</tr>
		<tr>
			<td style="height:31px">
			<p style="text-align:center">Quận 12</p>
			</td>
			<td style="height:31px">
			<p style="text-align:center">30,000</p>
			</td>
		</tr>
		<tr>
			<td style="height:31px">
			<p style="text-align:center">Quận Gò Vấp</p>
			</td>
			<td style="height:31px">
			<p style="text-align:center">30,000</p>
			</td>
		</tr>
		<tr>
			<td style="height:31px">
			<p style="text-align:center">Quận Thủ Đức</p>
			</td>
			<td style="height:31px">
			<p style="text-align:center">30,000</p>
			</td>
		</tr>
		<tr>
			<td style="height:31px">
			<p style="text-align:center">Quận Bình Tân</p>
			</td>
			<td style="height:31px">
			<p style="text-align:center">30,000</p>
			</td>
		</tr>
		<tr>
			<td style="height:31px">
			<p style="text-align:center"><strong>KHU VỰC 3</strong></p>
			</td>
			<td colspan="2" style="height:31px">
			<p><em>&nbsp; Flyfood rất mong được sự hỗ trợ của quý khách hàng để</em></p>

			<p><em>&nbsp; Nhân Viên Flyfood làm tốt trách nhiệm phục vụ của mình!</em></p>
			</td>
		</tr>
		<tr>
			<td style="height:31px">
			<p style="text-align:center">Quận 9</p>
			</td>
			<td rowspan="4" style="height:31px">
			<p>&nbsp; Đặt hàng trước 9h00 sáng hoặc 15h00 chiều.</p>

			<p>&nbsp; Giờ giao hàng:</p>

			<p>&nbsp; + Sáng: 10h30 đến 11h30</p>

			<p>&nbsp; + Chiều: 16h30 đến 17h30</p>

			<p>&nbsp; Giao hàng tất cả các địa chỉ có tên đường trên bản đồ&nbsp;<a href="http://www.google.com/maps" style="box-sizing: border-box; color: rgb(71, 71, 71); text-decoration: none; background-color: transparent;">www.google.com/maps</a></p>

			<p>&nbsp; Thời gian giao động dự trù 60 phút</p>

			<p><strong>&nbsp; Đơn hàng trên 2.000.000 đồng không quy định giờ giao hàng (Giao hàng bất kỳ giờ nào theo &nbsp; &nbsp; yêu cầu!)</strong></p>

			<p><strong>&nbsp; Đơn hàng tối thiểu 320.000 đồng</strong></p>
			</td>
			<td style="height:31px">
			<p style="text-align:center">30,000</p>
			</td>
		</tr>
		<tr>
			<td style="height:31px">
			<p style="text-align:center">Huyện Nhà Bè</p>
			</td>
			<td style="height:31px">
			<p style="text-align:center">30,000</p>
			</td>
		</tr>
		<tr>
			<td style="height:31px">
			<p style="text-align:center">Huyện Hóc Môn</p>
			</td>
			<td style="height:31px">
			<p style="text-align:center">30,000</p>
			</td>
		</tr>
		<tr>
			<td style="height:31px">
			<p style="text-align:center">Huyện Bình Chánh</p>

			<p>&nbsp;</p>
			</td>
			<td style="height:31px">
			<p style="text-align:center">30.000</p>
			</td>
		</tr>
		<tr>
			<td style="height:31px">
			<p style="text-align:center">Huyện Củ Chi</p>
			</td>
			<td style="height:31px">
			<p>&nbsp; Đặt hàng trước 9h00 sáng hoặc 15h00 chiều.</p>

			<p>&nbsp; Giờ giao hàng:</p>

			<p>&nbsp; + Sáng: 10h30 đến 11h30</p>

			<p>&nbsp; + Chiều: 16h30 đến 17h30</p>

			<p>&nbsp; Giao hàng theo trục đường:</p>

			<p>&nbsp; + Đường Trường Chinh, đường Xuyên Á, khu vực trung tâm Huyện Củ Chi</p>

			<p>&nbsp; Thời gian giao động dự trù 60 phút</p>

			<p><strong>&nbsp; Đơn hàng trên 2.000.000 đồng không quy định giờ giao hàng (Giao hàng bất kỳ giờ nào theo &nbsp; &nbsp; yêu cầu!)</strong></p>

			<p><strong>&nbsp; Đơn hàng tối thiểu 320.000 đồng</strong></p>
			</td>
			<td style="height:31px">
			<p style="text-align:center">30.000</p>
			</td>
		</tr>
		<tr>
			<td style="height:31px">
			<p style="text-align:center">TP. Thủ Dầu Một và TP. Biên Hòa</p>
			</td>
			<td style="height:31px">
			<p>&nbsp;+ Đặt hàng trước 9h00 sáng hoặc trước&nbsp;15h00 chiều</p>

			<p>+ Thời gian phục vụ từ 8h đến 20h mỗi ngày, kể cả ngày chủ nhật và các ngày lễ.</p>

			<p><strong>Chỉ nhận đơn hàng trên 2.000.000 đồng và&nbsp;không quy định giờ giao hàng (Giao hàng bất kỳ giờ nào theo yêu cầu!)</strong></p>
			</td>
			<td style="height:31px">
			<p style="text-align:center">30.000</p>
			</td>
		</tr>
		<tr>
			<td style="height:31px">
			<p style="text-align:center">Huyện Cần Giờ</p>
			</td>
			<td style="height:31px">
			<p>Chưa triển khai được trong thời gian này, mong quý khách hàng thông cảm!</p>
			</td>
			<td style="height:31px">
			<p>&nbsp;</p>
			</td>
		</tr>
	</tbody>
</table>

<div style="line-height: 20.8px; clear: both;">&nbsp;</div>

<p style="margin-left:0.5in; text-align:center"><span style="color:rgb(255, 0, 0)"><strong>Hấp dẫn vô cùng, càng ăn càng ngon!</strong></span></p>

<p style="margin-left:0.5in; text-align:center"><span style="color:rgb(255, 0, 0)"><span style="font-size:14px"><strong>Giao hà</strong></span><strong>ng cực nhanh, từ 60 đến 90 phút.</strong></span></p>

<p style="margin-left:0.5in; text-align:center"><span style="color:rgb(255, 0, 0)"><strong>Vui lòng đặt hàng trước 16h (sau 16h00 có thể hết hàng)</strong></span></p>

<p style="margin-left:0.5in; text-align:center">&nbsp;</p>

<p style="margin-left:0.5in; text-align:center"><span style="font-size:14px"><strong><img alt="" src="http://flyfood.vn/image/data/card%20qua%20tang.png" style="height:76px; width:113.297px"></strong></span></p>

<p style="margin-left:0.5in; text-align:center"><span style="font-size:22px"><span style="color:rgb(255, 0, 0)"><strong>Gọi ngay: 08 39 911 911</strong></span></span></p>

<p style="text-align:center"><span style="font-size:16px"><span style="color:rgb(0, 128, 0)"><strong><em>Flyfood – Fast &amp; Hot: “Hiện tượng mới” cho dịch vụ ăn uống Sài Gòn 2014!</em></strong></span></span></p>

<p style="text-align:center">&nbsp;</p>

<p style="text-align:right"><strong>Flyfood.vn</strong></p>

<div>&nbsp;</div>

            </section>', 300000, 20, 15, '2016-12-08 18:15:35.302649', '2016-12-08 18:15:35.302649', '39_1.png', '39_2.png', NULL, true, 1, 'lau-ca-lang-mang-chua');
INSERT INTO foods VALUES (13, 'Cơm nắm sake', 55000, NULL, NULL, NULL, NULL, 25, 11, '2016-12-06 23:05:11.008268', '2016-12-06 23:05:11.008268', '13_1.jpg', NULL, NULL, true, 1, 'com-nam-sake');
INSERT INTO foods VALUES (26, 'Mỳ xào giòn', 35000, NULL, NULL, NULL, 20000, 50, 13, '2016-12-08 15:37:26.541505', '2016-12-08 15:37:26.541505', '26_1.jpg', NULL, NULL, true, 1, 'my-xao-gion');
INSERT INTO foods VALUES (101, 'Bạch tuộc đại dương sốt cay', 149000, NULL, NULL, NULL, NULL, 25, 26, '2016-12-10 02:21:39.568755', '2016-12-10 02:21:39.568755', '101_1.jpg', NULL, NULL, true, 1, 'bach-tuoc-dai-duong-sot-cay');
INSERT INTO foods VALUES (95, 'Cua rang muối', 490000, NULL, NULL, NULL, 350000, 25, 25, '2016-12-10 02:09:15.865288', '2016-12-10 02:09:15.865288', '95_1.jpg', NULL, NULL, true, 1, 'cua-rang-muoi');
INSERT INTO foods VALUES (2, 'Cơm cháy Hải Sâm', 620000, 'Món Cơm Cháy Hải Sâm thật sự mới lạ và độc đáo. Cơm giòn rụm dùng với nước sốt hải sâm kèm với các loại rau củ thập cẩm...', '<section class="left full">
                Món Cơm Cháy Hải Sâm thật sự mới lạ và độc đáo. Cơm giòn rụm dùng với nước sốt hải sâm kèm với các loại rau củ thập cẩm...<br>
<br>
&nbsp;
<p><strong>CHƯƠNG TRÌNH 1&nbsp;ĐỔI 1:&nbsp;</strong><br>
<br>
<a href="http://flyfood.vn/chuong-trinh-1-doi-1--detail-d068181215175617586.html"><img alt="Chương trình 1 đổi 1 Flyfood" src="http://flyfood.vn/Files/images/Banner%201%20%C4%91%E1%BB%95i%201.jpg" style="height:100%; line-height:20.8px; text-align:center; width:100%" title="Chương trình 1 đổi 1 Flyfood"></a></p>

            </section>', '<section class="left full">
                Món Cơm Cháy Hải Sâm thật sự mới lạ và độc đáo. Cơm giòn rụm dùng với nước sốt hải sâm kèm với các loại rau củ thập cẩm...
<div style="text-align: center;"><br>
<br>
<img alt="Cơm cháy hải sâm Flyfood" src="http://flyfood.vn/Files/Accounts/Nguyen Cao Vuong/images/C%c6%a0M%20CH%c3%81Y%20H%e1%ba%a2I%20S%c3%82M%20FLYFOOD%204.jpg" style="width:100%" title="Cơm cháy hải sâm Flyfood"><br>
<br>
<img alt="cơm cháy hải sâm 2" src="http://flyfood.vn/Files/Accounts/Nguyen Cao Vuong/images/C%c6%a0M%20CH%c3%81Y%20H%e1%ba%a2I%20S%c3%82M%20FLYFOOD%206.jpg" style="width:100%" title="cơm cháy hải sâm 2"><br>
<br>
<img alt="cơm cháy hải sâm 3" src="http://flyfood.vn/Files/Accounts/Nguyen Cao Vuong/images/C%c6%a0M%20CH%c3%81Y%20H%e1%ba%a2I%20S%c3%82M%20FLYFOOD%201.jpg" style="width:100%" title="cơm cháy hải sâm 3"></div>
<br>
&nbsp; <img alt="Hộp giữ nhiệt Flyfood" src="http://flyfood.vn/Files/images/hop-giu-nhiet-flyfood.jpg" style="height:100%; width:100%" title="Hộp giữ nhiệt Flyfood">
<p>&nbsp;</p>

<p style="text-align:center">&nbsp;</p>

<p style="text-align:center"><span style="font-size:24px"><span style="color:rgb(255, 0, 0)"><strong>MIỄN 100%</strong></span></span>&nbsp;&nbsp;phí giao hàng cho đơn hàng có giá trị món ăn trên&nbsp;<strong>1.000.000đ</strong>, trên tất cả địa bàn giao hàng gần xa!</p>

<p style="margin-left:30pt; text-align:center"><span style="color:rgb(255, 0, 0)"><span style="font-size:24px"><strong>BẢNG KHU VỰC VÀ PHÍ GIAO HÀNG:</strong></span></span></p>

<table align="center" border="1" cellpadding="0" cellspacing="0" style="border-collapse:collapse; border-spacing:0px; box-sizing:border-box; color:rgb(71, 71, 71); font-family:open sans,arial; font-size:14px; line-height:20.8px; width:100%">
	<tbody>
		<tr>
			<td style="height:31px; width:25%">
			<p style="text-align:center"><span style="font-size:16px"><strong>KHU VỰC 1</strong></span></p>
			</td>
			<td style="height:31px; width:50%">
			<p style="text-align:center"><span style="font-size:16px"><strong>QUY ĐỊNH GIAO HÀNG</strong></span></p>
			</td>
			<td style="height:31px; width:15%">
			<p style="text-align:center"><span style="font-size:16px"><strong>PHÍ</strong></span></p>
			</td>
		</tr>
		<tr>
			<td style="height:31px">
			<p style="text-align:center">Quận Tân Bình</p>
			</td>
			<td rowspan="10" style="height:31px">
			<p>&nbsp; Đặt hàng trước 1 giờ</p>

			<p>&nbsp; Giao hàng liên tục từ 8h00 đến 20h00, kết thúc thời gian đặt hàng lúc 18h30</p>

			<p>&nbsp; Giao hàng tất cả các địa chỉ có tên đường trên bản đồ&nbsp;<a href="http://www.google.com/maps" style="box-sizing: border-box; color: rgb(71, 71, 71); text-decoration: none; background-color: transparent;">www.google.com/maps</a></p>

			<p>&nbsp; Thời gian giao động dự trù 30 phút</p>

			<p><strong>&nbsp; Đơn hàng tối thiểu 180.000 đồng</strong></p>

			<p>&nbsp; Không giao hàng lên lầu hoặc phải gửi xe để chuyển hàng vào nhà.</p>

			<p>&nbsp;</p>
			</td>
			<td style="height:31px">
			<p style="text-align:center">0</p>
			</td>
		</tr>
		<tr>
			<td style="height:31px">
			<p style="text-align:center">Quận Phú Nhuận</p>
			</td>
			<td style="height:31px">
			<p style="text-align:center">0</p>
			</td>
		</tr>
		<tr>
			<td style="height:31px">
			<p style="text-align:center">Quận 1</p>
			</td>
			<td style="height:31px">
			<p style="text-align:center">&nbsp;15,000</p>
			</td>
		</tr>
		<tr>
			<td style="height:31px">
			<p style="text-align:center">Quận 3</p>
			</td>
			<td style="height:31px">
			<p style="text-align:center">&nbsp;15,000</p>
			</td>
		</tr>
		<tr>
			<td style="height:31px">
			<p style="text-align:center">Quận 4</p>
			</td>
			<td style="height:31px">
			<p style="text-align:center">&nbsp;20,000</p>
			</td>
		</tr>
		<tr>
			<td style="height:31px">
			<p style="text-align:center">Quận 5</p>
			</td>
			<td style="height:31px">
			<p style="text-align:center">&nbsp;15,000</p>
			</td>
		</tr>
		<tr>
			<td style="height:31px">
			<p style="text-align:center">Quận 10</p>
			</td>
			<td style="height:31px">
			<p style="text-align:center">&nbsp;15,000</p>
			</td>
		</tr>
		<tr>
			<td style="height:31px">
			<p style="text-align:center">Quận 11</p>
			</td>
			<td style="height:31px">
			<p style="text-align:center">&nbsp;15,000</p>
			</td>
		</tr>
		<tr>
			<td style="height:31px">
			<p style="text-align:center">Quận Tân phú</p>
			</td>
			<td style="height:31px">
			<p style="text-align:center">&nbsp;15,000</p>
			</td>
		</tr>
		<tr>
			<td style="height:31px">
			<p style="text-align:center">Quận Binh Thạnh</p>
			</td>
			<td style="height:31px">
			<p style="text-align:center">&nbsp;20,000</p>
			</td>
		</tr>
		<tr>
			<td style="height:31px">
			<p style="text-align:center"><strong>KHU VỰC 2</strong></p>
			</td>
			<td colspan="2" style="height:31px">
			<p><em>&nbsp; Flyfood rất mong được sự hỗ trợ của quý khách hàng để</em></p>

			<p><em>&nbsp; Nhân Viên Flyfood làm tốt trách nhiệm phục vụ của mình!</em></p>
			</td>
		</tr>
		<tr>
			<td style="height:31px">
			<p style="text-align:center">Quận 2</p>
			</td>
			<td rowspan="8" style="height:31px">
			<p>&nbsp; Đặt hàng trước 2 tiếng</p>

			<p>&nbsp; Giao hàng liên tục từ 8h00 đến 20h00, kết thúc thời gian đặt hàng lúc 18h30</p>

			<p>&nbsp; Giao hàng tất cả các địa chỉ có tên đường trên bản đồ&nbsp;<a href="http://www.google.com/maps" style="box-sizing: border-box; color: rgb(71, 71, 71); text-decoration: none; background-color: transparent;">www.google.com/maps</a></p>

			<p>&nbsp; Thời gian giao động dự trù 45 phút</p>

			<p><strong>&nbsp; Đơn hàng tối thiểu 220.000 đồng</strong></p>

			<p>&nbsp; Không giao hàng lên lầu hoặc phải gửi xe để chuyển hàng vào nhà.</p>

			<p>&nbsp; Có thể từ chối giao hàng trong những trường hợp bất khả kháng về thời tiết, đường ngập nước.</p>
			</td>
			<td style="height:31px">
			<p style="text-align:center">30,000</p>
			</td>
		</tr>
		<tr>
			<td style="height:31px">
			<p style="text-align:center">Quận 6</p>
			</td>
			<td style="height:31px">
			<p style="text-align:center">30,000</p>
			</td>
		</tr>
		<tr>
			<td style="height:31px">
			<p style="text-align:center">Quận 7</p>
			</td>
			<td style="height:31px">
			<p style="text-align:center">30,000</p>
			</td>
		</tr>
		<tr>
			<td style="height:31px">
			<p style="text-align:center">Quận 8</p>
			</td>
			<td style="height:31px">
			<p style="text-align:center">30,000</p>
			</td>
		</tr>
		<tr>
			<td style="height:31px">
			<p style="text-align:center">Quận 12</p>
			</td>
			<td style="height:31px">
			<p style="text-align:center">30,000</p>
			</td>
		</tr>
		<tr>
			<td style="height:31px">
			<p style="text-align:center">Quận Gò Vấp</p>
			</td>
			<td style="height:31px">
			<p style="text-align:center">30,000</p>
			</td>
		</tr>
		<tr>
			<td style="height:31px">
			<p style="text-align:center">Quận Thủ Đức</p>
			</td>
			<td style="height:31px">
			<p style="text-align:center">30,000</p>
			</td>
		</tr>
		<tr>
			<td style="height:31px">
			<p style="text-align:center">Quận Bình Tân</p>
			</td>
			<td style="height:31px">
			<p style="text-align:center">30,000</p>
			</td>
		</tr>
		<tr>
			<td style="height:31px">
			<p style="text-align:center"><strong>KHU VỰC 3</strong></p>
			</td>
			<td colspan="2" style="height:31px">
			<p><em>&nbsp; Flyfood rất mong được sự hỗ trợ của quý khách hàng để</em></p>

			<p><em>&nbsp; Nhân Viên Flyfood làm tốt trách nhiệm phục vụ của mình!</em></p>
			</td>
		</tr>
		<tr>
			<td style="height:31px">
			<p style="text-align:center">Quận 9</p>
			</td>
			<td rowspan="4" style="height:31px">
			<p>&nbsp; Đặt hàng trước 9h00 sáng hoặc 15h00 chiều.</p>

			<p>&nbsp; Giờ giao hàng:</p>

			<p>&nbsp; + Sáng: 10h30 đến 11h30</p>

			<p>&nbsp; + Chiều: 16h30 đến 17h30</p>

			<p>&nbsp; Giao hàng tất cả các địa chỉ có tên đường trên bản đồ&nbsp;<a href="http://www.google.com/maps" style="box-sizing: border-box; color: rgb(71, 71, 71); text-decoration: none; background-color: transparent;">www.google.com/maps</a></p>

			<p>&nbsp; Thời gian giao động dự trù 60 phút</p>

			<p><strong>&nbsp; Đơn hàng trên 2.000.000 đồng không quy định giờ giao hàng (Giao hàng bất kỳ giờ nào theo &nbsp; &nbsp; yêu cầu!)</strong></p>

			<p><strong>&nbsp; Đơn hàng tối thiểu 320.000 đồng</strong></p>
			</td>
			<td style="height:31px">
			<p style="text-align:center">30,000</p>
			</td>
		</tr>
		<tr>
			<td style="height:31px">
			<p style="text-align:center">Huyện Nhà Bè</p>
			</td>
			<td style="height:31px">
			<p style="text-align:center">30,000</p>
			</td>
		</tr>
		<tr>
			<td style="height:31px">
			<p style="text-align:center">Huyện Hóc Môn</p>
			</td>
			<td style="height:31px">
			<p style="text-align:center">30,000</p>
			</td>
		</tr>
		<tr>
			<td style="height:31px">
			<p style="text-align:center">Huyện Bình Chánh</p>

			<p>&nbsp;</p>
			</td>
			<td style="height:31px">
			<p style="text-align:center">30.000</p>
			</td>
		</tr>
		<tr>
			<td style="height:31px">
			<p style="text-align:center">Huyện Củ Chi</p>
			</td>
			<td style="height:31px">
			<p>&nbsp; Đặt hàng trước 9h00 sáng hoặc 15h00 chiều.</p>

			<p>&nbsp; Giờ giao hàng:</p>

			<p>&nbsp; + Sáng: 10h30 đến 11h30</p>

			<p>&nbsp; + Chiều: 16h30 đến 17h30</p>

			<p>&nbsp; Giao hàng theo trục đường:</p>

			<p>&nbsp; + Đường Trường Chinh, đường Xuyên Á, khu vực trung tâm Huyện Củ Chi</p>

			<p>&nbsp; Thời gian giao động dự trù 60 phút</p>

			<p><strong>&nbsp; Đơn hàng trên 2.000.000 đồng không quy định giờ giao hàng (Giao hàng bất kỳ giờ nào theo &nbsp; &nbsp; yêu cầu!)</strong></p>

			<p><strong>&nbsp; Đơn hàng tối thiểu 320.000 đồng</strong></p>
			</td>
			<td style="height:31px">
			<p style="text-align:center">30.000</p>
			</td>
		</tr>
		<tr>
			<td style="height:31px">
			<p style="text-align:center">TP. Thủ Dầu Một và TP. Biên Hòa</p>
			</td>
			<td style="height:31px">
			<p>&nbsp;+ Đặt hàng trước 9h00 sáng hoặc trước&nbsp;15h00 chiều</p>

			<p>+ Thời gian phục vụ từ 8h đến 20h mỗi ngày, kể cả ngày chủ nhật và các ngày lễ.</p>

			<p><strong>Chỉ nhận đơn hàng trên 2.000.000 đồng và&nbsp;không quy định giờ giao hàng (Giao hàng bất kỳ giờ nào theo yêu cầu!)</strong></p>
			</td>
			<td style="height:31px">
			<p style="text-align:center">30.000</p>
			</td>
		</tr>
		<tr>
			<td style="height:31px">
			<p style="text-align:center">Huyện Cần Giờ</p>
			</td>
			<td style="height:31px">
			<p>Chưa triển khai được trong thời gian này, mong quý khách hàng thông cảm!</p>
			</td>
			<td style="height:31px">
			<p>&nbsp;</p>
			</td>
		</tr>
	</tbody>
</table>

<div style="line-height: 20.8px; clear: both;">&nbsp;</div>

<p style="margin-left:0.5in; text-align:center"><span style="color:rgb(255, 0, 0)"><strong>Hấp dẫn vô cùng, càng ăn càng ngon!</strong></span></p>

<p style="margin-left:0.5in; text-align:center"><span style="color:rgb(255, 0, 0)"><span style="font-size:14px"><strong>Giao hà</strong></span><strong>ng cực nhanh, từ 60 đến 90 phút.</strong></span></p>

<p style="margin-left:0.5in; text-align:center"><span style="color:rgb(255, 0, 0)"><strong>Vui lòng đặt hàng trước 16h (sau 16h00 có thể hết hàng)</strong></span></p>

<p style="margin-left:0.5in; text-align:center">&nbsp;</p>

<p style="margin-left:0.5in; text-align:center"><span style="font-size:14px"><strong><img alt="" src="http://flyfood.vn/image/data/card%20qua%20tang.png" style="height:10%; width:10%"></strong></span></p>

<p style="margin-left:0.5in; text-align:center"><span style="font-size:22px"><span style="color:rgb(255, 0, 0)"><strong>Gọi ngay: 08 39 911 911</strong></span></span></p>

<p style="text-align:center"><span style="font-size:16px"><span style="color:rgb(0, 128, 0)"><strong><em>Flyfood – Fast &amp; Hot: “Hiện tượng mới” cho dịch vụ ăn uống Sài Gòn 2014!</em></strong></span></span></p>

<p style="text-align:center">&nbsp;</p>

<p style="text-align:right"><strong>Flyfood.vn</strong></p>

            </section>', 350000, 25, 9, '2016-12-05 15:16:42.528046', '2016-12-05 15:16:42.528046', '2_1.jpg', NULL, NULL, true, 1, 'com-chay-hai-sam');
INSERT INTO foods VALUES (3, 'Cơm gà lá sen', 285000, 'Cơm Lá Sen là món ăn truyền thống với cách trang trí có một không hai. Những hạt cơm trộn lẫn hạt sen được gói trọn trong những lá sen xanh mát góp phần tạo nên món cơm lá sen truyền thống mang đậm chất quê hương.', '<section class="left full">
                Cơm Lá Sen là món ăn truyền thống với cách trang trí có một không hai. Những hạt cơm trộn lẫn hạt sen được gói trọn trong những lá sen xanh mát góp phần tạo nên món cơm lá sen truyền thống mang đậm chất quê hương.<br>
<br>
&nbsp;
<p><strong>CHƯƠNG TRÌNH 1&nbsp;ĐỔI 1:&nbsp;</strong><br>
<br>
<a href="http://flyfood.vn/chuong-trinh-1-doi-1--detail-d068181215175617586.html"><img alt="Chương trình 1 đổi 1 Flyfood" src="http://flyfood.vn/Files/images/Banner%201%20%C4%91%E1%BB%95i%201.jpg" style="height:100%; line-height:20.8px; text-align:center; width:100%" title="Chương trình 1 đổi 1 Flyfood"></a></p>

            </section>', '<section class="left full">
                Cơm Lá Sen là món ăn truyền thống với cách trang trí có một không hai. Những hạt cơm trộn lẫn hạt sen được gói trọn trong những lá sen xanh mát góp phần tạo nên món cơm lá sen truyền thống mang đậm chất quê hương.
<div style="text-align: center;"><br>
<img alt="Cơm lá sen Flyfood" src="http://flyfood.vn/Files/images/C%C6%A0M%20L%C3%81%20SEN.png" style="height:100%; width:100%" title="Cơm lá sen Flyfood"></div>
<br>
<br>
&nbsp; <img alt="Hộp giữ nhiệt Flyfood" src="http://flyfood.vn/Files/images/hop-giu-nhiet-flyfood.jpg" style="height:100%; width:100%" title="Hộp giữ nhiệt Flyfood">
<p>&nbsp;</p>

<p style="text-align:center">&nbsp;</p>

<p style="text-align:center"><span style="font-size:24px"><span style="color:rgb(255, 0, 0)"><strong>MIỄN 100%</strong></span></span>&nbsp;&nbsp;phí giao hàng cho đơn hàng có giá trị món ăn trên&nbsp;<strong>1.000.000đ</strong>, trên tất cả địa bàn giao hàng gần xa!</p>

<p style="margin-left:30pt; text-align:center"><span style="color:rgb(255, 0, 0)"><span style="font-size:24px"><strong>BẢNG KHU VỰC VÀ PHÍ GIAO HÀNG:</strong></span></span></p>

<table align="center" border="1" cellpadding="0" cellspacing="0" style="border-collapse:collapse; border-spacing:0px; box-sizing:border-box; color:rgb(71, 71, 71); font-family:open sans,arial; font-size:14px; line-height:20.8px; width:100%">
	<tbody>
		<tr>
			<td style="height:31px; width:25%">
			<p style="text-align:center"><span style="font-size:16px"><strong>KHU VỰC 1</strong></span></p>
			</td>
			<td style="height:31px; width:50%">
			<p style="text-align:center"><span style="font-size:16px"><strong>QUY ĐỊNH GIAO HÀNG</strong></span></p>
			</td>
			<td style="height:31px; width:15%">
			<p style="text-align:center"><span style="font-size:16px"><strong>PHÍ</strong></span></p>
			</td>
		</tr>
		<tr>
			<td style="height:31px">
			<p style="text-align:center">Quận Tân Bình</p>
			</td>
			<td rowspan="10" style="height:31px">
			<p>&nbsp; Đặt hàng trước 1 giờ</p>

			<p>&nbsp; Giao hàng liên tục từ 8h00 đến 20h00, kết thúc thời gian đặt hàng lúc 18h30</p>

			<p>&nbsp; Giao hàng tất cả các địa chỉ có tên đường trên bản đồ&nbsp;<a href="http://www.google.com/maps" style="box-sizing: border-box; color: rgb(71, 71, 71); text-decoration: none; background-color: transparent;">www.google.com/maps</a></p>

			<p>&nbsp; Thời gian giao động dự trù 30 phút</p>

			<p><strong>&nbsp; Đơn hàng tối thiểu 180.000 đồng</strong></p>

			<p>&nbsp; Không giao hàng lên lầu hoặc phải gửi xe để chuyển hàng vào nhà.</p>

			<p>&nbsp;</p>
			</td>
			<td style="height:31px">
			<p style="text-align:center">0</p>
			</td>
		</tr>
		<tr>
			<td style="height:31px">
			<p style="text-align:center">Quận Phú Nhuận</p>
			</td>
			<td style="height:31px">
			<p style="text-align:center">0</p>
			</td>
		</tr>
		<tr>
			<td style="height:31px">
			<p style="text-align:center">Quận 1</p>
			</td>
			<td style="height:31px">
			<p style="text-align:center">&nbsp;15,000</p>
			</td>
		</tr>
		<tr>
			<td style="height:31px">
			<p style="text-align:center">Quận 3</p>
			</td>
			<td style="height:31px">
			<p style="text-align:center">&nbsp;15,000</p>
			</td>
		</tr>
		<tr>
			<td style="height:31px">
			<p style="text-align:center">Quận 4</p>
			</td>
			<td style="height:31px">
			<p style="text-align:center">&nbsp;20,000</p>
			</td>
		</tr>
		<tr>
			<td style="height:31px">
			<p style="text-align:center">Quận 5</p>
			</td>
			<td style="height:31px">
			<p style="text-align:center">&nbsp;15,000</p>
			</td>
		</tr>
		<tr>
			<td style="height:31px">
			<p style="text-align:center">Quận 10</p>
			</td>
			<td style="height:31px">
			<p style="text-align:center">&nbsp;15,000</p>
			</td>
		</tr>
		<tr>
			<td style="height:31px">
			<p style="text-align:center">Quận 11</p>
			</td>
			<td style="height:31px">
			<p style="text-align:center">&nbsp;15,000</p>
			</td>
		</tr>
		<tr>
			<td style="height:31px">
			<p style="text-align:center">Quận Tân phú</p>
			</td>
			<td style="height:31px">
			<p style="text-align:center">&nbsp;15,000</p>
			</td>
		</tr>
		<tr>
			<td style="height:31px">
			<p style="text-align:center">Quận Binh Thạnh</p>
			</td>
			<td style="height:31px">
			<p style="text-align:center">&nbsp;20,000</p>
			</td>
		</tr>
		<tr>
			<td style="height:31px">
			<p style="text-align:center"><strong>KHU VỰC 2</strong></p>
			</td>
			<td colspan="2" style="height:31px">
			<p><em>&nbsp; Flyfood rất mong được sự hỗ trợ của quý khách hàng để</em></p>

			<p><em>&nbsp; Nhân Viên Flyfood làm tốt trách nhiệm phục vụ của mình!</em></p>
			</td>
		</tr>
		<tr>
			<td style="height:31px">
			<p style="text-align:center">Quận 2</p>
			</td>
			<td rowspan="8" style="height:31px">
			<p>&nbsp; Đặt hàng trước 2 tiếng</p>

			<p>&nbsp; Giao hàng liên tục từ 8h00 đến 20h00, kết thúc thời gian đặt hàng lúc 18h30</p>

			<p>&nbsp; Giao hàng tất cả các địa chỉ có tên đường trên bản đồ&nbsp;<a href="http://www.google.com/maps" style="box-sizing: border-box; color: rgb(71, 71, 71); text-decoration: none; background-color: transparent;">www.google.com/maps</a></p>

			<p>&nbsp; Thời gian giao động dự trù 45 phút</p>

			<p><strong>&nbsp; Đơn hàng tối thiểu 220.000 đồng</strong></p>

			<p>&nbsp; Không giao hàng lên lầu hoặc phải gửi xe để chuyển hàng vào nhà.</p>

			<p>&nbsp; Có thể từ chối giao hàng trong những trường hợp bất khả kháng về thời tiết, đường ngập nước.</p>
			</td>
			<td style="height:31px">
			<p style="text-align:center">30,000</p>
			</td>
		</tr>
		<tr>
			<td style="height:31px">
			<p style="text-align:center">Quận 6</p>
			</td>
			<td style="height:31px">
			<p style="text-align:center">30,000</p>
			</td>
		</tr>
		<tr>
			<td style="height:31px">
			<p style="text-align:center">Quận 7</p>
			</td>
			<td style="height:31px">
			<p style="text-align:center">30,000</p>
			</td>
		</tr>
		<tr>
			<td style="height:31px">
			<p style="text-align:center">Quận 8</p>
			</td>
			<td style="height:31px">
			<p style="text-align:center">30,000</p>
			</td>
		</tr>
		<tr>
			<td style="height:31px">
			<p style="text-align:center">Quận 12</p>
			</td>
			<td style="height:31px">
			<p style="text-align:center">30,000</p>
			</td>
		</tr>
		<tr>
			<td style="height:31px">
			<p style="text-align:center">Quận Gò Vấp</p>
			</td>
			<td style="height:31px">
			<p style="text-align:center">30,000</p>
			</td>
		</tr>
		<tr>
			<td style="height:31px">
			<p style="text-align:center">Quận Thủ Đức</p>
			</td>
			<td style="height:31px">
			<p style="text-align:center">30,000</p>
			</td>
		</tr>
		<tr>
			<td style="height:31px">
			<p style="text-align:center">Quận Bình Tân</p>
			</td>
			<td style="height:31px">
			<p style="text-align:center">30,000</p>
			</td>
		</tr>
		<tr>
			<td style="height:31px">
			<p style="text-align:center"><strong>KHU VỰC 3</strong></p>
			</td>
			<td colspan="2" style="height:31px">
			<p><em>&nbsp; Flyfood rất mong được sự hỗ trợ của quý khách hàng để</em></p>

			<p><em>&nbsp; Nhân Viên Flyfood làm tốt trách nhiệm phục vụ của mình!</em></p>
			</td>
		</tr>
		<tr>
			<td style="height:31px">
			<p style="text-align:center">Quận 9</p>
			</td>
			<td rowspan="4" style="height:31px">
			<p>&nbsp; Đặt hàng trước 9h00 sáng hoặc 15h00 chiều.</p>

			<p>&nbsp; Giờ giao hàng:</p>

			<p>&nbsp; + Sáng: 10h30 đến 11h30</p>

			<p>&nbsp; + Chiều: 16h30 đến 17h30</p>

			<p>&nbsp; Giao hàng tất cả các địa chỉ có tên đường trên bản đồ&nbsp;<a href="http://www.google.com/maps" style="box-sizing: border-box; color: rgb(71, 71, 71); text-decoration: none; background-color: transparent;">www.google.com/maps</a></p>

			<p>&nbsp; Thời gian giao động dự trù 60 phút</p>

			<p><strong>&nbsp; Đơn hàng trên 2.000.000 đồng không quy định giờ giao hàng (Giao hàng bất kỳ giờ nào theo &nbsp; &nbsp; yêu cầu!)</strong></p>

			<p><strong>&nbsp; Đơn hàng tối thiểu 320.000 đồng</strong></p>
			</td>
			<td style="height:31px">
			<p style="text-align:center">30,000</p>
			</td>
		</tr>
		<tr>
			<td style="height:31px">
			<p style="text-align:center">Huyện Nhà Bè</p>
			</td>
			<td style="height:31px">
			<p style="text-align:center">30,000</p>
			</td>
		</tr>
		<tr>
			<td style="height:31px">
			<p style="text-align:center">Huyện Hóc Môn</p>
			</td>
			<td style="height:31px">
			<p style="text-align:center">30,000</p>
			</td>
		</tr>
		<tr>
			<td style="height:31px">
			<p style="text-align:center">Huyện Bình Chánh</p>

			<p>&nbsp;</p>
			</td>
			<td style="height:31px">
			<p style="text-align:center">30.000</p>
			</td>
		</tr>
		<tr>
			<td style="height:31px">
			<p style="text-align:center">Huyện Củ Chi</p>
			</td>
			<td style="height:31px">
			<p>&nbsp; Đặt hàng trước 9h00 sáng hoặc 15h00 chiều.</p>

			<p>&nbsp; Giờ giao hàng:</p>

			<p>&nbsp; + Sáng: 10h30 đến 11h30</p>

			<p>&nbsp; + Chiều: 16h30 đến 17h30</p>

			<p>&nbsp; Giao hàng theo trục đường:</p>

			<p>&nbsp; + Đường Trường Chinh, đường Xuyên Á, khu vực trung tâm Huyện Củ Chi</p>

			<p>&nbsp; Thời gian giao động dự trù 60 phút</p>

			<p><strong>&nbsp; Đơn hàng trên 2.000.000 đồng không quy định giờ giao hàng (Giao hàng bất kỳ giờ nào theo &nbsp; &nbsp; yêu cầu!)</strong></p>

			<p><strong>&nbsp; Đơn hàng tối thiểu 320.000 đồng</strong></p>
			</td>
			<td style="height:31px">
			<p style="text-align:center">30.000</p>
			</td>
		</tr>
		<tr>
			<td style="height:31px">
			<p style="text-align:center">TP. Thủ Dầu Một và TP. Biên Hòa</p>
			</td>
			<td style="height:31px">
			<p>&nbsp;+ Đặt hàng trước 9h00 sáng hoặc trước&nbsp;15h00 chiều</p>

			<p>+ Thời gian phục vụ từ 8h đến 20h mỗi ngày, kể cả ngày chủ nhật và các ngày lễ.</p>

			<p><strong>Chỉ nhận đơn hàng trên 2.000.000 đồng và&nbsp;không quy định giờ giao hàng (Giao hàng bất kỳ giờ nào theo yêu cầu!)</strong></p>
			</td>
			<td style="height:31px">
			<p style="text-align:center">30.000</p>
			</td>
		</tr>
		<tr>
			<td style="height:31px">
			<p style="text-align:center">Huyện Cần Giờ</p>
			</td>
			<td style="height:31px">
			<p>Chưa triển khai được trong thời gian này, mong quý khách hàng thông cảm!</p>
			</td>
			<td style="height:31px">
			<p>&nbsp;</p>
			</td>
		</tr>
	</tbody>
</table>

<div style="line-height: 20.8px; clear: both;">&nbsp;</div>

<p style="margin-left:0.5in; text-align:center"><span style="color:rgb(255, 0, 0)"><strong>Hấp dẫn vô cùng, càng ăn càng ngon!</strong></span></p>

<p style="margin-left:0.5in; text-align:center"><span style="color:rgb(255, 0, 0)"><span style="font-size:14px"><strong>Giao hà</strong></span><strong>ng cực nhanh, từ 60 đến 90 phút.</strong></span></p>

<p style="margin-left:0.5in; text-align:center"><span style="color:rgb(255, 0, 0)"><strong>Vui lòng đặt hàng trước 16h (sau 16h00 có thể hết hàng)</strong></span></p>

<p style="margin-left:0.5in; text-align:center">&nbsp;</p>

<p style="margin-left:0.5in; text-align:center"><span style="font-size:14px"><strong><img alt="" src="http://flyfood.vn/image/data/card%20qua%20tang.png" style="height:10%; width:10%"></strong></span></p>

<p style="margin-left:0.5in; text-align:center"><span style="font-size:22px"><span style="color:rgb(255, 0, 0)"><strong>Gọi ngay: 08 39 911 911</strong></span></span></p>

<p style="text-align:center"><span style="font-size:16px"><span style="color:rgb(0, 128, 0)"><strong><em>Flyfood – Fast &amp; Hot: “Hiện tượng mới” cho dịch vụ ăn uống Sài Gòn 2014!</em></strong></span></span></p>

<p style="text-align:center">&nbsp;</p>

<p style="text-align:right"><strong>Flyfood.vn</strong></p>

            </section>', 120000, 25, 9, '2016-12-05 15:23:00.20245', '2016-12-05 15:23:00.20245', '3_1.png', NULL, NULL, true, 1, 'com-ga-la-sen');
INSERT INTO foods VALUES (35, 'Hủ tiếu thịt viên', 30000, NULL, NULL, NULL, NULL, 50, 14, '2016-12-08 17:38:14.390029', '2016-12-08 17:38:14.390029', '35_1.jpg', NULL, NULL, true, 1, 'hu-tieu-thit-vien');
INSERT INTO foods VALUES (28, 'Mỳ Udon xào', 35000, NULL, NULL, NULL, NULL, 50, 13, '2016-12-08 15:37:26.541505', '2016-12-08 15:37:26.541505', '28_1.jpg', NULL, NULL, true, 1, 'my-udon-xao');
INSERT INTO foods VALUES (34, 'Hủ tiếu Nam Vang', 35000, NULL, NULL, NULL, NULL, 50, 14, '2016-12-08 17:38:14.390029', '2016-12-08 17:38:14.390029', '34_1.jpg', NULL, NULL, true, 1, 'hu-tieu-nam-vang');
INSERT INTO foods VALUES (32, 'Hủ tiếu gà', 25000, NULL, NULL, NULL, NULL, 50, 14, '2016-12-08 17:38:14.390029', '2016-12-08 17:38:14.390029', '32_1.jpg', NULL, NULL, true, 1, 'hu-tieu-ga');
INSERT INTO foods VALUES (67, 'Kem dưa hấu', 15000, NULL, NULL, NULL, NULL, 125, 20, '2016-12-09 20:22:07.493455', '2016-12-09 20:22:07.493455', '67_1.jpg', NULL, NULL, true, 1, 'kem-dua-hau');
INSERT INTO foods VALUES (57, 'Phô mai chiên xù', 20000, NULL, NULL, NULL, NULL, 125, 19, '2016-12-09 20:04:26.972413', '2016-12-09 20:04:26.972413', '57_1.jpg', NULL, NULL, true, 1, 'pho-mai-chien-xu');
INSERT INTO foods VALUES (61, 'Xôi chiên kẹp', 20000, NULL, NULL, NULL, NULL, 125, 19, '2016-12-09 20:04:26.972413', '2016-12-09 20:04:26.972413', '61_1.jpg', NULL, NULL, true, 1, 'xoi-chien-kep');
INSERT INTO foods VALUES (59, 'Hoành thánh chiên', 35000, NULL, NULL, NULL, NULL, 125, 19, '2016-12-09 20:04:26.972413', '2016-12-09 20:04:26.972413', '59_1.jpg', NULL, NULL, true, 1, 'hoanh-thanh-chien');
INSERT INTO foods VALUES (51, 'Bánh tráng nướng thập cẩm', 25000, NULL, NULL, NULL, NULL, 125, 18, '2016-12-09 19:06:09.184459', '2016-12-09 19:06:09.184459', '51_1.jpg', NULL, NULL, true, 1, 'banh-trang-nuong-thap-cam');
INSERT INTO foods VALUES (54, 'Bánh tráng trộn', 25000, NULL, NULL, NULL, NULL, 125, 18, '2016-12-09 19:06:09.184459', '2016-12-09 19:06:09.184459', '54_1.jpg', NULL, NULL, true, 1, 'banh-trang-tron');
INSERT INTO foods VALUES (92, 'Cua sốt ớt Singapore', 530000, NULL, NULL, NULL, 420000, 25, 25, '2016-12-10 02:09:15.865288', '2016-12-10 02:09:15.865288', '92_1.jpg', NULL, NULL, true, 1, 'cua-sot-ot-singapore');
INSERT INTO foods VALUES (89, 'Cá lóc quay me', 225000, 'Món Cá Lóc Quay Me áp dụng kỹ thuật quay cùng với nước sốt me chua ngọt đặc biệt hiếm có. Cá lóc quay dùng cùng với bánh hỏi và rau sống, phù hợp cho mọi hình thức sử dụng: bữa trưa văn phòng, bữa tối gia đình, các loại tiệc lớn nhỏ.', '<section class="left full">
                <ul>
	<li style="text-align:justify"><strong>Cá Diêu Hồng Sốt Chanh Dây</strong> loại lớn, phi lê, cắt từng miếng vuông, chiên vừa chín mềm</li>
	<li style="text-align:justify">Nước cốt Chanh Day nguyên chất, chế biến nước sốt cùng với nhiều nguyên liệu phụ khác tạo đa vị, đa sắc giúp món ăn thêm ngon và đẹp mắt.</li>
	<li style="text-align:justify">Món ăn rất thích hợp trong tiệc cưới hoặc các tiệc sang trọng khác.</li>
</ul>

<p style="text-align:justify"><span style="color:rgb(255, 0, 0)"><strong>Suất CÁ DIÊU HỒNG SỐT CHANH DÂY&nbsp;bao gồm:</strong></span></p>

<ul>
	<li style="text-align:justify"><span style="color:#008000">1 con cá Diêu Hồng size nhò&nbsp;từ 0,9 đến 1kg, size lớn&nbsp;1kg2</span></li>
	<li style="text-align:justify"><span style="color:#008000">Chanh Dây</span></li>
	<li style="text-align:justify"><span style="color:#008000">Ớt chuông, hành tây, nấm mèo</span></li>
	<li style="text-align:justify"><span style="color:#008000">Rau sống</span></li>
</ul>

<div style="text-align:justify">&nbsp;</div>

<ul>
	<li style="text-align:justify"><span style="color:#008000">.<a href="http://flyfood.vn/chuong-trinh-1-doi-1--detail-d068181215175617586.html"><img alt="Chương trình 1 đổi 1 Flyfood" src="http://flyfood.vnhttp://flyfood.vn/Files/images/Banner-1-doi-1.png" style="height:100%; width:100%" title="Chương trình 1 đổi 1 Flyfood"></a></span></li>
</ul>

<div style="text-align: justify;">&nbsp;</div>

            </section><section class="left full">
                <ul>
	<li>Món cá áp dụng kỹ thuật quay cùng với nước sốt me chua ngọt đặc biệt hiếm có</li>
	<li>Cá lóc quay dùng cùng với bánh hỏi và rau sống, phù hợp cho mọi hình thức sử dụng: bữa trưa văn phòng, bữa tối gia đình,&nbsp;các loại tiệc lớn nhỏ.</li>
	<li>Kỹ thuật đầu bếp tuyệt hảo làm cho cá không hề có mùi tanh đến miếng cuối cùng.</li>
	<li><span style="color:rgb(255, 0, 0)"><strong>Suất&nbsp;CÁ LÓC QUAY ME - Bánh hỏi bao gồm:</strong></span>
	<ul>
		<li><span style="color:rgb(0, 128, 0)">1 con cá lóc 1kg</span></li>
		<li><span style="color:rgb(0, 128, 0)">500 gram Bánh hỏi</span></li>
		<li><span style="color:rgb(0, 128, 0)">500 gram Rau sống</span></li>
		<li><span style="color:rgb(0, 128, 0)">2 loại&nbsp;nước chấm: sốt nước tương me, nước mắm chua ngọt/nước tương ớt băm</span></li>
		<li><span style="color:rgb(0, 128, 0)">Trọng&nbsp;lượng thành phẩm 0.8 - 0.9kg</span></li>
	</ul>
	</li>
</ul>
<strong>CHƯƠNG TRÌNH 1&nbsp;ĐỔI 1:</strong><br>
<br>
<a href="http://flyfood.vn/chuong-trinh-1-doi-1--detail-d068181215175617586.html"><img alt="Chương trình 1 đổi 1 Flyfood" src="http://flyfood.vn/Files/images/Banner%201%20%C4%91%E1%BB%95i%201.jpg" style="height:100%; line-height:20.8px; text-align:center; width:100%" title="Chương trình 1 đổi 1 Flyfood"></a><br>
&nbsp;
            </section>', '<section class="left full">
                <div>&nbsp;</div>

<div>
<p style="text-align:center"><img alt="Cá lóc quay me bánh hỏi flyfood 1" src="http://flyfood.vn/Files/images/ca-loc-quay-me-banh-hoi-flyfood-1.png" style="height:100%; width:100%" title="Cá lóc quay me bánh hỏi flyfood 1"></p>

<p style="text-align:center"><em>Hình thật - Flyfood</em><br>
&nbsp;</p>

<p style="text-align:justify"><span style="font-size:16px">Đây là món cực kỳ hấp dẫn, Flyfood biến tấu từ món :”Cá lóc chiên giòn sốt me” từng đạt giải nhất liên hoan ẩm thực “Con mắm con khô đồng bằng và những đầu bếp tuyệt chiêu” trong khuôn khổ hội chợ Nông sản – sản phẩm làng nghề phía Nam tại Đồng Tháp ngày 12/7/2010.</span></p>

<p>&nbsp;</p>

<p style="text-align:center"><img alt="Cá lóc quay me bánh hỏi flyfood 2" src="http://flyfood.vn/Files/images/ca-loc-quay-me-banh-hoi-flyfood-2.png" style="height:100%; width:100%" title="Cá lóc quay me bánh hỏi flyfood 2"></p>

<p style="text-align:center"><em>Hình thật - Flyfood</em><br>
&nbsp;</p>

<p style="margin-left:0.5in; text-align:justify"><span style="font-size:16px">Cá lóc làm sạch, lóc vảy, tẩm ướp gia vị, ngâm vào nước sốt me, cho vào lò quay,… đúng là món ăn tuyệt hảo.</span></p>

<p>&nbsp;</p>

<p style="text-align:center"><img alt="Cá lóc quay me bánh hỏi flyfood 3" src="http://flyfood.vn/Files/images/ca-loc-quay-me-banh-hoi-flyfood-3.png" style="height:100%; width:100%" title="Cá lóc quay me bánh hỏi flyfood 3"></p>

<p style="text-align:center"><em>Hình thật - Flyfood</em><br>
&nbsp;</p>

<p style="margin-left:0.5in; text-align:justify"><span style="font-size:16px"><span style="color:rgb(128, 0, 0)">Tiếu chí món&nbsp;<strong><u>Cá lóc quay me</u></strong>&nbsp;ngon:</span></span></p>

<p style="margin-left:0.5in; text-align:justify"><span style="font-size:14px">Cá lóc khá to, thịt chắc, vàng óng ánh, thịt không quá khô, gia vị nhẹ nhàng (không mặn), cá tuyệt đối không có mùi tanh đến khi nguội.</span></p>

<p style="text-align:justify"><span style="font-size:14px">&nbsp;Món dùng cùng với bánh hỏi, rau sống và nước sốt.</span></p>

<p style="text-align:justify">&nbsp;</p>

<p style="text-align:center"><img alt="Cá lóc quay me bánh hỏi flyfood 4" src="http://flyfood.vn/Files/images/ca-loc-quay-me-banh-hoi-flyfood-4.png" style="height:100%; width:100%" title="Cá lóc quay me bánh hỏi flyfood 4"></p>

<p style="text-align:center"><em>Hình thật - Flyfood</em></p>

<p style="text-align:justify">&nbsp;</p>

<p style="text-align:center"><img alt="Cá lóc quay me bánh hỏi flyfood 5" src="http://flyfood.vn/Files/images/ca-loc-quay-me-banh-hoi-flyfood-5.png" style="height:100%; width:100%" title="Cá lóc quay me bánh hỏi flyfood 5"></p>

<p style="text-align:center"><em>Hình thật - Flyfood</em></p>

<div style="line-height: 20.8px;">
<p style="text-align:center"><strong>BẢNG KHU VỰC VÀ PHÍ GIAO HÀNG:</strong></p>

<p style="margin-left:30pt; text-align:center">&nbsp;</p>

<p style="text-align:center"><span style="font-size:24px"><span style="color:rgb(255, 0, 0)"><strong>MIỄN 100%</strong></span></span>&nbsp;&nbsp;phí giao hàng cho đơn hàng có giá trị món ăn trên&nbsp;<strong>1.000.000đ</strong>, trên tất cả địa bàn giao hàng gần xa!</p>

<table align="center" border="1" cellpadding="0" cellspacing="0" style="border-collapse:collapse; border-spacing:0px; box-sizing:border-box; color:rgb(71, 71, 71); font-family:open sans,arial; font-size:14px; line-height:20.8px; width:100%">
	<tbody>
		<tr>
			<td style="height:31px; width:25%">
			<p style="text-align:center"><span style="font-size:16px"><strong>KHU VỰC 1</strong></span></p>
			</td>
			<td style="height:31px; width:50%">
			<p style="text-align:center"><span style="font-size:16px"><strong>QUY ĐỊNH GIAO HÀNG</strong></span></p>
			</td>
			<td style="height:31px; width:15%">
			<p style="text-align:center"><span style="font-size:16px"><strong>PHÍ</strong></span></p>
			</td>
		</tr>
		<tr>
			<td style="height:31px">
			<p style="text-align:center">Quận Tân Bình</p>
			</td>
			<td rowspan="10" style="height:31px">
			<p>&nbsp; Đặt hàng trước 1 giờ</p>

			<p>&nbsp; Giao hàng liên tục từ 8h00 đến 20h00, kết thúc thời gian đặt hàng lúc 18h30</p>

			<p>&nbsp; Giao hàng tất cả các địa chỉ có tên đường trên bản đồ&nbsp;<a href="http://www.google.com/maps" style="box-sizing: border-box; color: rgb(71, 71, 71); text-decoration: none; background-color: transparent;">www.google.com/maps</a></p>

			<p>&nbsp; Thời gian giao động dự trù 30 phút</p>

			<p><strong>&nbsp; Đơn hàng tối thiểu 180.000 đồng</strong></p>

			<p>&nbsp; Không giao hàng lên lầu hoặc phải gửi xe để chuyển hàng vào nhà.</p>

			<p>&nbsp;</p>
			</td>
			<td style="height:31px">
			<p style="text-align:center">0</p>
			</td>
		</tr>
		<tr>
			<td style="height:31px">
			<p style="text-align:center">Quận Phú Nhuận</p>
			</td>
			<td style="height:31px">
			<p style="text-align:center">0</p>
			</td>
		</tr>
		<tr>
			<td style="height:31px">
			<p style="text-align:center">Quận 1</p>
			</td>
			<td style="height:31px">
			<p style="text-align:center">&nbsp;15,000</p>
			</td>
		</tr>
		<tr>
			<td style="height:31px">
			<p style="text-align:center">Quận 3</p>
			</td>
			<td style="height:31px">
			<p style="text-align:center">&nbsp;15,000</p>
			</td>
		</tr>
		<tr>
			<td style="height:31px">
			<p style="text-align:center">Quận 4</p>
			</td>
			<td style="height:31px">
			<p style="text-align:center">&nbsp;20,000</p>
			</td>
		</tr>
		<tr>
			<td style="height:31px">
			<p style="text-align:center">Quận 5</p>
			</td>
			<td style="height:31px">
			<p style="text-align:center">&nbsp;15,000</p>
			</td>
		</tr>
		<tr>
			<td style="height:31px">
			<p style="text-align:center">Quận 10</p>
			</td>
			<td style="height:31px">
			<p style="text-align:center">&nbsp;15,000</p>
			</td>
		</tr>
		<tr>
			<td style="height:31px">
			<p style="text-align:center">Quận 11</p>
			</td>
			<td style="height:31px">
			<p style="text-align:center">&nbsp;15,000</p>
			</td>
		</tr>
		<tr>
			<td style="height:31px">
			<p style="text-align:center">Quận Tân phú</p>
			</td>
			<td style="height:31px">
			<p style="text-align:center">&nbsp;15,000</p>
			</td>
		</tr>
		<tr>
			<td style="height:31px">
			<p style="text-align:center">Quận Binh Thạnh</p>
			</td>
			<td style="height:31px">
			<p style="text-align:center">&nbsp;20,000</p>
			</td>
		</tr>
		<tr>
			<td style="height:31px">
			<p style="text-align:center"><strong>KHU VỰC 2</strong></p>
			</td>
			<td colspan="2" style="height:31px">
			<p><em>&nbsp; Flyfood rất mong được sự hỗ trợ của quý khách hàng để</em></p>

			<p><em>&nbsp; Nhân Viên Flyfood làm tốt trách nhiệm phục vụ của mình!</em></p>
			</td>
		</tr>
		<tr>
			<td style="height:31px">
			<p style="text-align:center">Quận 2</p>
			</td>
			<td rowspan="8" style="height:31px">
			<p>&nbsp; Đặt hàng trước 2 tiếng</p>

			<p>&nbsp; Giao hàng liên tục từ 8h00 đến 20h00, kết thúc thời gian đặt hàng lúc 18h30</p>

			<p>&nbsp; Giao hàng tất cả các địa chỉ có tên đường trên bản đồ&nbsp;<a href="http://www.google.com/maps" style="box-sizing: border-box; color: rgb(71, 71, 71); text-decoration: none; background-color: transparent;">www.google.com/maps</a></p>

			<p>&nbsp; Thời gian giao động dự trù 45 phút</p>

			<p><strong>&nbsp; Đơn hàng tối thiểu 220.000 đồng</strong></p>

			<p>&nbsp; Không giao hàng lên lầu hoặc phải gửi xe để chuyển hàng vào nhà.</p>

			<p>&nbsp; Có thể từ chối giao hàng trong những trường hợp bất khả kháng về thời tiết, đường ngập nước.</p>
			</td>
			<td style="height:31px">
			<p style="text-align:center">30,000</p>
			</td>
		</tr>
		<tr>
			<td style="height:31px">
			<p style="text-align:center">Quận 6</p>
			</td>
			<td style="height:31px">
			<p style="text-align:center">30,000</p>
			</td>
		</tr>
		<tr>
			<td style="height:31px">
			<p style="text-align:center">Quận 7</p>
			</td>
			<td style="height:31px">
			<p style="text-align:center">30,000</p>
			</td>
		</tr>
		<tr>
			<td style="height:31px">
			<p style="text-align:center">Quận 8</p>
			</td>
			<td style="height:31px">
			<p style="text-align:center">30,000</p>
			</td>
		</tr>
		<tr>
			<td style="height:31px">
			<p style="text-align:center">Quận 12</p>
			</td>
			<td style="height:31px">
			<p style="text-align:center">30,000</p>
			</td>
		</tr>
		<tr>
			<td style="height:31px">
			<p style="text-align:center">Quận Gò Vấp</p>
			</td>
			<td style="height:31px">
			<p style="text-align:center">30,000</p>
			</td>
		</tr>
		<tr>
			<td style="height:31px">
			<p style="text-align:center">Quận Thủ Đức</p>
			</td>
			<td style="height:31px">
			<p style="text-align:center">30,000</p>
			</td>
		</tr>
		<tr>
			<td style="height:31px">
			<p style="text-align:center">Quận Bình Tân</p>
			</td>
			<td style="height:31px">
			<p style="text-align:center">30,000</p>
			</td>
		</tr>
		<tr>
			<td style="height:31px">
			<p style="text-align:center"><strong>KHU VỰC 3</strong></p>
			</td>
			<td colspan="2" style="height:31px">
			<p><em>&nbsp; Flyfood rất mong được sự hỗ trợ của quý khách hàng để</em></p>

			<p><em>&nbsp; Nhân Viên Flyfood làm tốt trách nhiệm phục vụ của mình!</em></p>
			</td>
		</tr>
		<tr>
			<td style="height:31px">
			<p style="text-align:center">Quận 9</p>
			</td>
			<td rowspan="4" style="height:31px">
			<p>&nbsp; Đặt hàng trước 9h00 sáng hoặc 15h00 chiều.</p>

			<p>&nbsp; Giờ giao hàng:</p>

			<p>&nbsp; + Sáng: 10h30 đến 11h30</p>

			<p>&nbsp; + Chiều: 16h30 đến 17h30</p>

			<p>&nbsp; Giao hàng tất cả các địa chỉ có tên đường trên bản đồ&nbsp;<a href="http://www.google.com/maps" style="box-sizing: border-box; color: rgb(71, 71, 71); text-decoration: none; background-color: transparent;">www.google.com/maps</a></p>

			<p>&nbsp; Thời gian giao động dự trù 60 phút</p>

			<p><strong>&nbsp; Đơn hàng trên 2.000.000 đồng không quy định giờ giao hàng (Giao hàng bất kỳ giờ nào theo &nbsp; &nbsp; yêu cầu!)</strong></p>

			<p><strong>&nbsp; Đơn hàng tối thiểu 320.000 đồng</strong></p>
			</td>
			<td style="height:31px">
			<p style="text-align:center">30,000</p>
			</td>
		</tr>
		<tr>
			<td style="height:31px">
			<p style="text-align:center">Huyện Nhà Bè</p>
			</td>
			<td style="height:31px">
			<p style="text-align:center">30,000</p>
			</td>
		</tr>
		<tr>
			<td style="height:31px">
			<p style="text-align:center">Huyện Hóc Môn</p>
			</td>
			<td style="height:31px">
			<p style="text-align:center">30,000</p>
			</td>
		</tr>
		<tr>
			<td style="height:31px">
			<p style="text-align:center">Huyện Bình Chánh</p>

			<p>&nbsp;</p>
			</td>
			<td style="height:31px">
			<p style="text-align:center">30.000</p>
			</td>
		</tr>
		<tr>
			<td style="height:31px">
			<p style="text-align:center">Huyện Củ Chi</p>
			</td>
			<td style="height:31px">
			<p>&nbsp; Đặt hàng trước 9h00 sáng hoặc 15h00 chiều.</p>

			<p>&nbsp; Giờ giao hàng:</p>

			<p>&nbsp; + Sáng: 10h30 đến 11h30</p>

			<p>&nbsp; + Chiều: 16h30 đến 17h30</p>

			<p>&nbsp; Giao hàng theo trục đường:</p>

			<p>&nbsp; + Đường Trường Chinh, đường Xuyên Á, khu vực trung tâm Huyện Củ Chi</p>

			<p>&nbsp; Thời gian giao động dự trù 60 phút</p>

			<p><strong>&nbsp; Đơn hàng trên 2.000.000 đồng không quy định giờ giao hàng (Giao hàng bất kỳ giờ nào theo &nbsp; &nbsp; yêu cầu!)</strong></p>

			<p><strong>&nbsp; Đơn hàng tối thiểu 320.000 đồng</strong></p>
			</td>
			<td style="height:31px">
			<p style="text-align:center">30.000</p>
			</td>
		</tr>
		<tr>
			<td style="height:31px">
			<p style="text-align:center">TP. Thủ Dầu Một và TP. Biên Hòa</p>
			</td>
			<td style="height:31px">
			<p>&nbsp;+ Đặt hàng trước 9h00 sáng hoặc trước&nbsp;15h00 chiều</p>

			<p>+ Thời gian phục vụ từ 8h đến 20h mỗi ngày, kể cả ngày chủ nhật và các ngày lễ.</p>

			<p><strong>Chỉ nhận đơn hàng trên 2.000.000 đồng và&nbsp;không quy định giờ giao hàng (Giao hàng bất kỳ giờ nào theo yêu cầu!)</strong></p>
			</td>
			<td style="height:31px">
			<p style="text-align:center">30.000</p>
			</td>
		</tr>
		<tr>
			<td style="height:31px">
			<p style="text-align:center">Huyện Cần Giờ</p>
			</td>
			<td style="height:31px">
			<p>Chưa triển khai được trong thời gian này, mong quý khách hàng thông cảm!</p>
			</td>
			<td style="height:31px">
			<p>&nbsp;</p>
			</td>
		</tr>
	</tbody>
</table>

<div style="line-height: 20.8px; clear: both;">&nbsp;</div>

<p style="margin-left:0.5in; text-align:center"><span style="color:rgb(255, 0, 0)"><strong>Hấp dẫn vô cùng, càng ăn càng ngon!</strong></span></p>

<p style="margin-left:0.5in; text-align:center"><span style="color:rgb(255, 0, 0)"><span style="font-size:14px"><strong>Giao hà</strong></span><strong>ng cực nhanh, từ 60 đến 90 phút.</strong></span></p>

<p style="margin-left:0.5in; text-align:center"><span style="color:rgb(255, 0, 0)"><strong>Vui lòng đặt hàng trước 16h (sau 16h00 có thể hết hàng)</strong></span></p>

<p style="margin-left:0.5in; text-align:center">&nbsp;</p>

<p style="margin-left:0.5in; text-align:center"><span style="font-size:14px"><strong><img alt="" src="http://flyfood.vn/image/data/card%20qua%20tang.png" style="height:76px; width:113.297px"></strong></span></p>

<p style="margin-left:0.5in; text-align:center"><span style="font-size:22px"><span style="color:rgb(255, 0, 0)"><strong>Gọi ngay: 08 39 911 911</strong></span></span></p>

<p style="text-align:center"><span style="font-size:16px"><span style="color:rgb(0, 128, 0)"><strong><em>Flyfood – Fast &amp; Hot: “Hiện tượng mới” cho dịch vụ ăn uống Sài Gòn 2014!</em></strong></span></span></p>

<p style="text-align:center">&nbsp;</p>

<p style="text-align:right"><strong>Flyfood.vn</strong></p>

<div>&nbsp;</div>
</div>
</div>

            </section>', 180000, 25, 24, '2016-12-10 01:51:02.708689', '2016-12-10 01:51:02.708689', '89_1.jpg', '89_2.jpg', '89_3.jpg', true, 1, 'ca-loc-quay-me');
INSERT INTO foods VALUES (96, 'Cua hấp', 150000, NULL, NULL, NULL, NULL, 25, 25, '2016-12-10 02:09:15.865288', '2016-12-10 02:09:15.865288', '96_1.jpg', NULL, NULL, true, 1, 'cua-hap');
INSERT INTO foods VALUES (100, 'Bạch tuộc nướng lá chuối', 49000, NULL, NULL, NULL, NULL, 25, 26, '2016-12-10 02:21:39.568755', '2016-12-10 02:21:39.568755', '100_1.jpg', NULL, NULL, true, 1, 'bach-tuoc-nuong-la-chuoi');
INSERT INTO foods VALUES (97, 'Bạch tuộc xào bơ cay', 59000, NULL, NULL, NULL, NULL, 25, 26, '2016-12-10 02:21:39.568755', '2016-12-10 02:21:39.568755', '97_1.jpg', NULL, NULL, true, 1, 'bach-tuoc-xao-bo-cay');
INSERT INTO foods VALUES (87, 'Cá hồi sốt bơ đậu phộng', 465000, 'Cá Hồi Phi Lê Sốt Bơ Đậu Phộng vốn là thực phẩm giàu dinh dưỡng và phù hợp cho mọi lứa tuổi. Sẽ thật thích hợp nếu kết hợp lượng đạm, Omega 3 của cá hồi với vitamin từ trái cây, cùng chất béo thực vật từ đậu phộng. Không chỉ cân bằng dinh dưỡng, món ăn này cũng sẽ mang đến một sự cân bằng hương vị tuyệt vời.', '<section class="left full">
                <div style="text-align: justify;">-&nbsp;<strong>Cá Hồi Phi Lê Sốt Bơ Đậu Phộng</strong> vốn là thực phẩm&nbsp;giàu dinh dưỡng và phù hợp cho mọi lứa tuổi. Sẽ thật thích hợp nếu kết hợp lượng đạm, Omega 3 của cá hồi với vitamin từ trái cây, cùng chất béo thực vật từ đậu phộng. Không chỉ cân bằng dinh dưỡng, món ăn này cũng sẽ mang đến một sự cân bằng hương vị tuyệt vời.<br>
- <strong>Cá Hồi Sốt Bơ Đậu Phộng</strong>&nbsp;ăn kèm với dưa leo, cà chua, xà lách, khoai tây chiên.<br>
- Món chính bày trí sang trong thích hợp trong các bữa tiệc lớn nhỏ.</div>
<span style="color:#FF0000"><strong>Suất CÁ HỒI SỐT BƠ&nbsp;ĐÂU PHÔNG g&#8203;ồm:</strong></span><br>
<span style="color:#008000">- Cá&nbsp;hồi&nbsp;phi lê 400gram còn&nbsp;sống</span><br>
<span style="color:#008000">- Rau xa lách + dưa leo + cà&nbsp;chua<br>
- Khoai tây chiên</span><br>
<span style="color:#FF0000"><strong>Trọng&nbsp;lượng&nbsp;thành&nbsp;phẩm: Cá&nbsp;Hồi&nbsp;Phi Lê&nbsp;(làm&nbsp;chín) + Khoai Tây Chiên + Nước&nbsp;Sốt&nbsp;đạt&nbsp;400gram</strong></span><br>
<strong>CHƯƠNG TRÌNH 1&nbsp;ĐỔI 1:&nbsp;</strong><br>
<br>
<a href="http://flyfood.vn/chuong-trinh-1-doi-1--detail-d068181215175617586.html" style="line-height: 20.8px;"><img alt="Chương trình 1 đổi 1 Flyfood" src="http://flyfood.vn/Files/images/Banner%201%20%C4%91%E1%BB%95i%201.jpg" style="height:100%; line-height:20.8px; text-align:center; width:100%" title="Chương trình 1 đổi 1 Flyfood"></a>
            </section>', '<section class="left full">
                <div style="text-align: justify;"><strong>Cá Hồi Phi Lê Sốt Bơ Đậu Phộng</strong>&nbsp;vốn là thực phẩm giàu dinh dưỡng và phù hợp cho mọi lứa tuổi. Sẽ thật thích hợp nếu kết hợp lượng đạm, Omega 3 của cá hồi với vitamin từ trái cây, cùng chất béo thực vật từ đậu phộng. Không chỉ cân bằng dinh dưỡng, món ăn này cũng sẽ mang đến một sự cân bằng hương vị tuyệt vời tạo cảm giác thích thú khi thưởng thức.</div>

<div style="text-align: center;"><br>
<img alt="Cá hồi sốt bơ đậu phông Flyfood 1" src="http://flyfood.vn/Files/images/ca-hoi-sot-bo-dau-phong-flyfood-1.png" style="height:100%; width:100%" title="Cá hồi sốt bơ đậu phông Flyfood 1"></div>

<div style="text-align: center;">&nbsp;</div>

<p style="text-align:justify"><strong>Cá hồi</strong> béo ngọt, dậy mùi thơm trên bếp nướng, ăn kèm món sốt bơ đậu phộng có vị rất dịu dịu rất đặc biệt là món ăn không thể bỏ qua nếu bạn đã một lần nếm thử.</p>

<p style="text-align:center"><br>
<img alt="Cá hồi sốt bơ đậu phông Flyfood 2" src="http://flyfood.vn/Files/images/ca-hoi-sot-bo-dau-phong-flyfood-2.png" style="height:100%; width:100%" title="Cá hồi sốt bơ đậu phông Flyfood 2"><br>
<br>
<br>
<img alt="Cá hồi sốt bơ đậu phông Flyfood 3" src="http://flyfood.vn/Files/images/ca-hoi-sot-bo-dau-phong-flyfood-3.png" style="height:100%; width:100%" title="Cá hồi sốt bơ đậu phông Flyfood 3"><br>
<br>
<br>
<img alt="Cá hồi sốt bơ đậu phông Flyfood 4" src="http://flyfood.vn/Files/images/ca-hoi-sot-bo-dau-phong-flyfood-4.png" style="height:100%; width:100%" title="Cá hồi sốt bơ đậu phông Flyfood 4"><br>
<br>
<br>
<img alt="Cá hồi sốt bơ đậu phông Flyfood 5" src="http://flyfood.vn/Files/images/ca-hoi-sot-bo-dau-phong-flyfood-5.png" style="height:100%; width:100%" title="Cá hồi sốt bơ đậu phông Flyfood 5"><br>
<br>
<br>
<img alt="Cá hồi sốt bơ đậu phông Flyfood 6" src="http://flyfood.vn/Files/images/ca-hoi-sot-bo-dau-phong-flyfood-6.png" style="height:100%; width:100%" title="Cá hồi sốt bơ đậu phông Flyfood 6"><br>
<br>
<br>
<img alt="Cá hồi sốt bơ đậu phông Flyfood 7" src="http://flyfood.vn/Files/images/ca-hoi-sot-bo-dau-phong-flyfood-7.png" style="height:100%; width:100%" title="Cá hồi sốt bơ đậu phông Flyfood 7"><br>
<br>
<br>
<img alt="Cá hồi sốt bơ đậu phông Flyfood 8" src="http://flyfood.vn/Files/images/ca-hoi-sot-bo-dau-phong-flyfood-8.png" style="height:100%; width:100%" title="Cá hồi sốt bơ đậu phông Flyfood 8"><br>
<br>
<br>
<img alt="Cá hồi sốt bơ đậu phông Flyfood 9" src="http://flyfood.vn/Files/images/ca-hoi-sot-bo-dau-phong-flyfood-9.png" style="height:100%; width:100%" title="Cá hồi sốt bơ đậu phông Flyfood 9"><br>
<br>
<br>
<img alt="Cá hồi sốt bơ đậu phông Flyfood 10" src="http://flyfood.vn/Files/images/ca-hoi-sot-bo-dau-phong-flyfood-10.png" style="height:100%; width:100%" title="Cá hồi sốt bơ đậu phông Flyfood 10"><br>
<br>
<br>
<img alt="Hộp giữ nhiệt Flyfood" src="http://flyfood.vn/Files/images/hop-giu-nhiet-flyfood.jpg" style="height:100%; width:100%" title="Hộp giữ nhiệt Flyfood"><br>
<br>
&nbsp;</p>

<p style="text-align:center"><span style="font-size:24px"><span style="color:rgb(255, 0, 0)"><strong>MIỄN 100%</strong></span></span>&nbsp;&nbsp;phí giao hàng cho đơn hàng có giá trị món ăn trên&nbsp;<strong>1.000.000đ</strong>, trên tất cả địa bàn giao hàng gần xa!</p>

<p style="margin-left:30pt; text-align:center"><span style="color:rgb(255, 0, 0)"><span style="font-size:24px"><strong>BẢNG KHU VỰC VÀ PHÍ GIAO HÀNG:</strong></span></span></p>

<table align="center" border="1" cellpadding="0" cellspacing="0" style="border-collapse:collapse; border-spacing:0px; box-sizing:border-box; color:rgb(71, 71, 71); font-family:open sans,arial; font-size:14px; line-height:20.8px; width:100%">
	<tbody>
		<tr>
			<td style="height:31px; width:25%">
			<p style="text-align:center"><span style="font-size:16px"><strong>KHU VỰC 1</strong></span></p>
			</td>
			<td style="height:31px; width:50%">
			<p style="text-align:center"><span style="font-size:16px"><strong>QUY ĐỊNH GIAO HÀNG</strong></span></p>
			</td>
			<td style="height:31px; width:15%">
			<p style="text-align:center"><span style="font-size:16px"><strong>PHÍ</strong></span></p>
			</td>
		</tr>
		<tr>
			<td style="height:31px">
			<p style="text-align:center">Quận Tân Bình</p>
			</td>
			<td rowspan="10" style="height:31px">
			<p>&nbsp; Đặt hàng trước 1 giờ</p>

			<p>&nbsp; Giao hàng liên tục từ 8h00 đến 20h00, kết thúc thời gian đặt hàng lúc 18h30</p>

			<p>&nbsp; Giao hàng tất cả các địa chỉ có tên đường trên bản đồ&nbsp;<a href="http://www.google.com/maps" style="box-sizing: border-box; color: rgb(71, 71, 71); text-decoration: none; background-color: transparent;">www.google.com/maps</a></p>

			<p>&nbsp; Thời gian giao động dự trù 30 phút</p>

			<p><strong>&nbsp; Đơn hàng tối thiểu 180.000 đồng</strong></p>

			<p>&nbsp; Không giao hàng lên lầu hoặc phải gửi xe để chuyển hàng vào nhà.</p>

			<p>&nbsp;</p>
			</td>
			<td style="height:31px">
			<p style="text-align:center">0</p>
			</td>
		</tr>
		<tr>
			<td style="height:31px">
			<p style="text-align:center">Quận Phú Nhuận</p>
			</td>
			<td style="height:31px">
			<p style="text-align:center">0</p>
			</td>
		</tr>
		<tr>
			<td style="height:31px">
			<p style="text-align:center">Quận 1</p>
			</td>
			<td style="height:31px">
			<p style="text-align:center">&nbsp;15,000</p>
			</td>
		</tr>
		<tr>
			<td style="height:31px">
			<p style="text-align:center">Quận 3</p>
			</td>
			<td style="height:31px">
			<p style="text-align:center">&nbsp;15,000</p>
			</td>
		</tr>
		<tr>
			<td style="height:31px">
			<p style="text-align:center">Quận 4</p>
			</td>
			<td style="height:31px">
			<p style="text-align:center">&nbsp;20,000</p>
			</td>
		</tr>
		<tr>
			<td style="height:31px">
			<p style="text-align:center">Quận 5</p>
			</td>
			<td style="height:31px">
			<p style="text-align:center">&nbsp;15,000</p>
			</td>
		</tr>
		<tr>
			<td style="height:31px">
			<p style="text-align:center">Quận 10</p>
			</td>
			<td style="height:31px">
			<p style="text-align:center">&nbsp;15,000</p>
			</td>
		</tr>
		<tr>
			<td style="height:31px">
			<p style="text-align:center">Quận 11</p>
			</td>
			<td style="height:31px">
			<p style="text-align:center">&nbsp;15,000</p>
			</td>
		</tr>
		<tr>
			<td style="height:31px">
			<p style="text-align:center">Quận Tân phú</p>
			</td>
			<td style="height:31px">
			<p style="text-align:center">&nbsp;15,000</p>
			</td>
		</tr>
		<tr>
			<td style="height:31px">
			<p style="text-align:center">Quận Binh Thạnh</p>
			</td>
			<td style="height:31px">
			<p style="text-align:center">&nbsp;20,000</p>
			</td>
		</tr>
		<tr>
			<td style="height:31px">
			<p style="text-align:center"><strong>KHU VỰC 2</strong></p>
			</td>
			<td colspan="2" style="height:31px">
			<p><em>&nbsp; Flyfood rất mong được sự hỗ trợ của quý khách hàng để</em></p>

			<p><em>&nbsp; Nhân Viên Flyfood làm tốt trách nhiệm phục vụ của mình!</em></p>
			</td>
		</tr>
		<tr>
			<td style="height:31px">
			<p style="text-align:center">Quận 2</p>
			</td>
			<td rowspan="8" style="height:31px">
			<p>&nbsp; Đặt hàng trước 2 tiếng</p>

			<p>&nbsp; Giao hàng liên tục từ 8h00 đến 20h00, kết thúc thời gian đặt hàng lúc 18h30</p>

			<p>&nbsp; Giao hàng tất cả các địa chỉ có tên đường trên bản đồ&nbsp;<a href="http://www.google.com/maps" style="box-sizing: border-box; color: rgb(71, 71, 71); text-decoration: none; background-color: transparent;">www.google.com/maps</a></p>

			<p>&nbsp; Thời gian giao động dự trù 45 phút</p>

			<p><strong>&nbsp; Đơn hàng tối thiểu 220.000 đồng</strong></p>

			<p>&nbsp; Không giao hàng lên lầu hoặc phải gửi xe để chuyển hàng vào nhà.</p>

			<p>&nbsp; Có thể từ chối giao hàng trong những trường hợp bất khả kháng về thời tiết, đường ngập nước.</p>
			</td>
			<td style="height:31px">
			<p style="text-align:center">30,000</p>
			</td>
		</tr>
		<tr>
			<td style="height:31px">
			<p style="text-align:center">Quận 6</p>
			</td>
			<td style="height:31px">
			<p style="text-align:center">30,000</p>
			</td>
		</tr>
		<tr>
			<td style="height:31px">
			<p style="text-align:center">Quận 7</p>
			</td>
			<td style="height:31px">
			<p style="text-align:center">30,000</p>
			</td>
		</tr>
		<tr>
			<td style="height:31px">
			<p style="text-align:center">Quận 8</p>
			</td>
			<td style="height:31px">
			<p style="text-align:center">30,000</p>
			</td>
		</tr>
		<tr>
			<td style="height:31px">
			<p style="text-align:center">Quận 12</p>
			</td>
			<td style="height:31px">
			<p style="text-align:center">30,000</p>
			</td>
		</tr>
		<tr>
			<td style="height:31px">
			<p style="text-align:center">Quận Gò Vấp</p>
			</td>
			<td style="height:31px">
			<p style="text-align:center">30,000</p>
			</td>
		</tr>
		<tr>
			<td style="height:31px">
			<p style="text-align:center">Quận Thủ Đức</p>
			</td>
			<td style="height:31px">
			<p style="text-align:center">30,000</p>
			</td>
		</tr>
		<tr>
			<td style="height:31px">
			<p style="text-align:center">Quận Bình Tân</p>
			</td>
			<td style="height:31px">
			<p style="text-align:center">30,000</p>
			</td>
		</tr>
		<tr>
			<td style="height:31px">
			<p style="text-align:center"><strong>KHU VỰC 3</strong></p>
			</td>
			<td colspan="2" style="height:31px">
			<p><em>&nbsp; Flyfood rất mong được sự hỗ trợ của quý khách hàng để</em></p>

			<p><em>&nbsp; Nhân Viên Flyfood làm tốt trách nhiệm phục vụ của mình!</em></p>
			</td>
		</tr>
		<tr>
			<td style="height:31px">
			<p style="text-align:center">Quận 9</p>
			</td>
			<td rowspan="4" style="height:31px">
			<p>&nbsp; Đặt hàng trước 9h00 sáng hoặc 15h00 chiều.</p>

			<p>&nbsp; Giờ giao hàng:</p>

			<p>&nbsp; + Sáng: 10h30 đến 11h30</p>

			<p>&nbsp; + Chiều: 16h30 đến 17h30</p>

			<p>&nbsp; Giao hàng tất cả các địa chỉ có tên đường trên bản đồ&nbsp;<a href="http://www.google.com/maps" style="box-sizing: border-box; color: rgb(71, 71, 71); text-decoration: none; background-color: transparent;">www.google.com/maps</a></p>

			<p>&nbsp; Thời gian giao động dự trù 60 phút</p>

			<p><strong>&nbsp; Đơn hàng trên 2.000.000 đồng không quy định giờ giao hàng (Giao hàng bất kỳ giờ nào theo &nbsp; &nbsp; yêu cầu!)</strong></p>

			<p><strong>&nbsp; Đơn hàng tối thiểu 320.000 đồng</strong></p>
			</td>
			<td style="height:31px">
			<p style="text-align:center">30,000</p>
			</td>
		</tr>
		<tr>
			<td style="height:31px">
			<p style="text-align:center">Huyện Nhà Bè</p>
			</td>
			<td style="height:31px">
			<p style="text-align:center">30,000</p>
			</td>
		</tr>
		<tr>
			<td style="height:31px">
			<p style="text-align:center">Huyện Hóc Môn</p>
			</td>
			<td style="height:31px">
			<p style="text-align:center">30,000</p>
			</td>
		</tr>
		<tr>
			<td style="height:31px">
			<p style="text-align:center">Huyện Bình Chánh</p>

			<p>&nbsp;</p>
			</td>
			<td style="height:31px">
			<p style="text-align:center">30.000</p>
			</td>
		</tr>
		<tr>
			<td style="height:31px">
			<p style="text-align:center">Huyện Củ Chi</p>
			</td>
			<td style="height:31px">
			<p>&nbsp; Đặt hàng trước 9h00 sáng hoặc 15h00 chiều.</p>

			<p>&nbsp; Giờ giao hàng:</p>

			<p>&nbsp; + Sáng: 10h30 đến 11h30</p>

			<p>&nbsp; + Chiều: 16h30 đến 17h30</p>

			<p>&nbsp; Giao hàng theo trục đường:</p>

			<p>&nbsp; + Đường Trường Chinh, đường Xuyên Á, khu vực trung tâm Huyện Củ Chi</p>

			<p>&nbsp; Thời gian giao động dự trù 60 phút</p>

			<p><strong>&nbsp; Đơn hàng trên 2.000.000 đồng không quy định giờ giao hàng (Giao hàng bất kỳ giờ nào theo &nbsp; &nbsp; yêu cầu!)</strong></p>

			<p><strong>&nbsp; Đơn hàng tối thiểu 320.000 đồng</strong></p>
			</td>
			<td style="height:31px">
			<p style="text-align:center">30.000</p>
			</td>
		</tr>
		<tr>
			<td style="height:31px">
			<p style="text-align:center">TP. Thủ Dầu Một và TP. Biên Hòa</p>
			</td>
			<td style="height:31px">
			<p>&nbsp;+ Đặt hàng trước 9h00 sáng hoặc trước&nbsp;15h00 chiều</p>

			<p>+ Thời gian phục vụ từ 8h đến 20h mỗi ngày, kể cả ngày chủ nhật và các ngày lễ.</p>

			<p><strong>Chỉ nhận đơn hàng trên 2.000.000 đồng và&nbsp;không quy định giờ giao hàng (Giao hàng bất kỳ giờ nào theo yêu cầu!)</strong></p>
			</td>
			<td style="height:31px">
			<p style="text-align:center">30.000</p>
			</td>
		</tr>
		<tr>
			<td style="height:31px">
			<p style="text-align:center">Huyện Cần Giờ</p>
			</td>
			<td style="height:31px">
			<p>Chưa triển khai được trong thời gian này, mong quý khách hàng thông cảm!</p>
			</td>
			<td style="height:31px">
			<p>&nbsp;</p>
			</td>
		</tr>
	</tbody>
</table>

<div style="line-height: 20.8px; clear: both;">&nbsp;</div>

<p style="margin-left:0.5in; text-align:center"><span style="color:rgb(255, 0, 0)"><strong>Hấp dẫn vô cùng, càng ăn càng ngon!</strong></span></p>

<p style="margin-left:0.5in; text-align:center"><span style="color:rgb(255, 0, 0)"><span style="font-size:14px"><strong>Giao hà</strong></span><strong>ng cực nhanh, từ 60 đến 90 phút.</strong></span></p>

<p style="margin-left:0.5in; text-align:center"><span style="color:rgb(255, 0, 0)"><strong>Vui lòng đặt hàng trước 16h (sau 16h00 có thể hết hàng)</strong></span></p>

<p style="margin-left:0.5in; text-align:center">&nbsp;</p>

<p style="margin-left:0.5in; text-align:center"><span style="font-size:14px"><strong><img alt="" src="http://flyfood.vn/image/data/card%20qua%20tang.png" style="height:76px; width:113.297px"></strong></span></p>

<p style="margin-left:0.5in; text-align:center"><span style="font-size:22px"><span style="color:rgb(255, 0, 0)"><strong>Gọi ngay: 08 39 911 911</strong></span></span></p>

<p style="text-align:center"><span style="font-size:16px"><span style="color:rgb(0, 128, 0)"><strong><em>Flyfood – Fast &amp; Hot: “Hiện tượng mới” cho dịch vụ ăn uống Sài Gòn 2014!</em></strong></span></span></p>

<p style="text-align:center">&nbsp;</p>

<p style="text-align:right"><strong>Flyfood.vn</strong></p>

            </section>', 370000, 25, 24, '2016-12-10 01:51:02.708689', '2016-12-10 01:51:02.708689', '87_1.png', '87_2.png', '87_3.png', true, 1, 'ca-hoi-sot-bo-dau-phong');
INSERT INTO foods VALUES (90, 'Cá da bò nướng muối ớt', 400000, 'Cá Da Bò khi còn sống rất xấu xí, nhìn vào chẳng thấy thèm ăn. Nhưng khi qua chế biến, lại có mùi thơm hấp dẫn, thịt cá lại trắng mịn, dai và ngọt mát khiến bạn khó có thể cưỡng lại trước "cám dỗ" của nó.', '<section class="left full">
                <p style="text-align:justify"><strong>Cá Da Bò&nbsp;</strong>khi còn sống rất xấu xí, nhìn vào chẳng thấy thèm ăn. Nhưng khi qua chế biến, lại có mùi thơm hấp dẫn, thịt cá lại trắng mịn, dai&nbsp;và ngọt mát khiến bạn khó có thể cưỡng lại trước "cám dỗ" của nó. &nbsp;</p>

<p style="text-align:justify"><strong>Cá Da Bò</strong>&nbsp;có vị ngọt tự nhiên, khi ướp muối ớt, để thấm khoảng 30-40 phút rồi nướng trên lửa than hồng càng tăng hương vị. Khi cá chín đều, màu vàng ươm xen lẫn màu đỏ của ớt, thơm lừng, nhìn là phát thèm...</p>

<p style="text-align:justify">Lưu ý: Flyfood nướng&nbsp;cá trực tiếp trên than hồng, giấy bạc chỉ là bao bì sau khi thành phẩm.</p>

<p style="text-align:justify">Món này thường ăn kèm với&nbsp;rau sống, và không thể thiếu muối ớt hoặc&nbsp;nước chấm hải sản đặc biệt của Flyfood.&nbsp;</p>

<p><span style="color:rgb(255, 0, 0)"><strong>Suất CÁ DA BÒ NƯỚNG MUỐI&nbsp;ỚT gồm:</strong></span></p>

<ul>
	<li><span style="color:rgb(0, 128, 0)">Cá Bò Da&nbsp;lúc còn sống: 1kg, sau khi làm sạch và nướng thành phẩm còn 0,4kg</span></li>
	<li><span style="color:rgb(0, 128, 0)">Các loại rau sống: 0,5kg</span></li>
	<li><span style="color:rgb(0, 128, 0)">0.5kg bún tươi</span></li>
	<li><span style="color:rgb(0, 128, 0)">1 phần&nbsp;bánh tráng cuốn</span></li>
	<li><span style="color:rgb(0, 128, 0)">Muối ớt, nước chấm chua ngọt</span></li>
</ul>

<p><span style="color:rgb(255, 0, 0)"><strong>Trọng lượng thành phẩm CÁ BÒ DA&nbsp;NƯỚNG MUỐI&nbsp;ỚT sau khi nướng&nbsp;đạt 0,4kg</strong></span></p>

<ul>
	<li style="text-align:justify"><strong>CHƯƠNG TRÌNH 1&nbsp;ĐỔI 1</strong></li>
</ul>

<div style="text-align:justify"><br>
<a href="http://flyfood.vn/chuong-trinh-1-doi-1--detail-d068181215175617586.html"><img alt="Chương trình 1 đổi 1 Flyfood" src="http://flyfood.vn/Files/images/Banner%201%20%C4%91%E1%BB%95i%201.jpg" style="height:100%; line-height:20.8px; text-align:center; width:100%" title="Chương trình 1 đổi 1 Flyfood"></a><br>
&nbsp;</div>

            </section>', '<section class="left full">
                <p style="text-align:justify"><strong>Cá Da Bò&nbsp;</strong>khi còn sống rất xấu xí, nhìn vào chẳng thấy thèm ăn. Nhưng khi qua chế biến, lại có mùi thơm hấp dẫn, thịt cá lại trắng mịn, dai giòn và ngọt mát khiến bạn khó có thể cưỡng lại trước "cám dỗ" của nó. &nbsp;</p>

<p>&nbsp;</p>

<p style="text-align:center"><img alt="Cá da bò nướng muối ớt Flyfood 1" src="http://flyfood.vn/Files/images/ca-da-bo-nuong-muoi-ot-flyfood-1.png" style="height:100%; width:100%" title="Cá da bò nướng muối ớt Flyfood 1"></p>

<p>&nbsp;</p>

<p style="text-align:justify"><strong>Cá Bò Da</strong>&nbsp;có vị ngọt tự nhiên, ướp muối ớt, để thấm khoảng 30-40 phút rồi nướng trên lửa than hồng càng tăng hương vị. Khi cá chín đều, màu vàng ươm xen lẫn màu đỏ của ớt, thơm lừng, nhìn là phát thèm...</p>

<p>&nbsp;</p>

<p style="text-align:center"><img alt="Cá da bò nướng muối ớt Flyfood 2" src="http://flyfood.vn/Files/images/ca-da-bo-nuong-muoi-ot-flyfood-2.png" style="height:100%; width:100%" title="Cá da bò nướng muối ớt Flyfood 2"></p>

<p>&nbsp;</p>

<p style="text-align:justify">Món này thường ăn kèm với&nbsp;rau sống, chấm muối ớt hoặc nước chấm hải sản.&nbsp;</p>

<p style="text-align:center">&nbsp;</p>

<p style="text-align:center"><img alt="Cá da bò nướng muối ớt Flyfood 3" src="http://flyfood.vn/Files/images/ca-da-bo-nuong-muoi-ot-flyfood-3.png" style="height:100%; width:100%" title="Cá da bò nướng muối ớt Flyfood 3"><br>
<br>
<br>
<img alt="Cá da bò nướng muối ớt Flyfood 4" src="http://flyfood.vn/Files/images/ca-da-bo-nuong-muoi-ot-flyfood-4.png" style="height:100%; width:100%" title="Cá da bò nướng muối ớt Flyfood 4"><br>
<br>
<br>
<img alt="Cá da bò nướng muối ớt Flyfood 5" src="http://flyfood.vn/Files/images/ca-da-bo-nuong-muoi-ot-flyfood-5.png" style="height:100%; width:100%" title="Cá da bò nướng muối ớt Flyfood 5"><br>
<br>
<img alt="Hộp giữ nhiệt Flyfood" src="http://flyfood.vn/Files/images/hop-giu-nhiet-flyfood.jpg" style="height:100%; width:100%" title="Hộp giữ nhiệt Flyfood"><br>
&nbsp;</p>

<p style="text-align:center"><span style="font-size:24px"><span style="color:rgb(255, 0, 0)"><strong>MIỄN 100%</strong></span></span>&nbsp;&nbsp;phí giao hàng cho đơn hàng có giá trị món ăn trên&nbsp;<strong>1.000.000đ</strong>, trên tất cả địa bàn giao hàng gần xa!</p>

<p style="margin-left:30pt; text-align:center"><span style="color:rgb(255, 0, 0)"><span style="font-size:24px"><strong>BẢNG KHU VỰC VÀ PHÍ GIAO HÀNG:</strong></span></span></p>

<table align="center" border="1" cellpadding="0" cellspacing="0" style="border-collapse:collapse; border-spacing:0px; box-sizing:border-box; color:rgb(71, 71, 71); font-family:open sans,arial; font-size:14px; line-height:20.8px; width:100%">
	<tbody>
		<tr>
			<td style="height:31px; width:25%">
			<p style="text-align:center"><span style="font-size:16px"><strong>KHU VỰC 1</strong></span></p>
			</td>
			<td style="height:31px; width:50%">
			<p style="text-align:center"><span style="font-size:16px"><strong>QUY ĐỊNH GIAO HÀNG</strong></span></p>
			</td>
			<td style="height:31px; width:15%">
			<p style="text-align:center"><span style="font-size:16px"><strong>PHÍ</strong></span></p>
			</td>
		</tr>
		<tr>
			<td style="height:31px">
			<p style="text-align:center">Quận Tân Bình</p>
			</td>
			<td rowspan="10" style="height:31px">
			<p>&nbsp; Đặt hàng trước 1 giờ</p>

			<p>&nbsp; Giao hàng liên tục từ 8h00 đến 20h00, kết thúc thời gian đặt hàng lúc 18h30</p>

			<p>&nbsp; Giao hàng tất cả các địa chỉ có tên đường trên bản đồ&nbsp;<a href="http://www.google.com/maps" style="box-sizing: border-box; color: rgb(71, 71, 71); text-decoration: none; background-color: transparent;">www.google.com/maps</a></p>

			<p>&nbsp; Thời gian giao động dự trù 30 phút</p>

			<p><strong>&nbsp; Đơn hàng tối thiểu 180.000 đồng</strong></p>

			<p>&nbsp; Không giao hàng lên lầu hoặc phải gửi xe để chuyển hàng vào nhà.</p>

			<p>&nbsp;</p>
			</td>
			<td style="height:31px">
			<p style="text-align:center">0</p>
			</td>
		</tr>
		<tr>
			<td style="height:31px">
			<p style="text-align:center">Quận Phú Nhuận</p>
			</td>
			<td style="height:31px">
			<p style="text-align:center">0</p>
			</td>
		</tr>
		<tr>
			<td style="height:31px">
			<p style="text-align:center">Quận 1</p>
			</td>
			<td style="height:31px">
			<p style="text-align:center">&nbsp;15,000</p>
			</td>
		</tr>
		<tr>
			<td style="height:31px">
			<p style="text-align:center">Quận 3</p>
			</td>
			<td style="height:31px">
			<p style="text-align:center">&nbsp;15,000</p>
			</td>
		</tr>
		<tr>
			<td style="height:31px">
			<p style="text-align:center">Quận 4</p>
			</td>
			<td style="height:31px">
			<p style="text-align:center">&nbsp;20,000</p>
			</td>
		</tr>
		<tr>
			<td style="height:31px">
			<p style="text-align:center">Quận 5</p>
			</td>
			<td style="height:31px">
			<p style="text-align:center">&nbsp;15,000</p>
			</td>
		</tr>
		<tr>
			<td style="height:31px">
			<p style="text-align:center">Quận 10</p>
			</td>
			<td style="height:31px">
			<p style="text-align:center">&nbsp;15,000</p>
			</td>
		</tr>
		<tr>
			<td style="height:31px">
			<p style="text-align:center">Quận 11</p>
			</td>
			<td style="height:31px">
			<p style="text-align:center">&nbsp;15,000</p>
			</td>
		</tr>
		<tr>
			<td style="height:31px">
			<p style="text-align:center">Quận Tân phú</p>
			</td>
			<td style="height:31px">
			<p style="text-align:center">&nbsp;15,000</p>
			</td>
		</tr>
		<tr>
			<td style="height:31px">
			<p style="text-align:center">Quận Binh Thạnh</p>
			</td>
			<td style="height:31px">
			<p style="text-align:center">&nbsp;20,000</p>
			</td>
		</tr>
		<tr>
			<td style="height:31px">
			<p style="text-align:center"><strong>KHU VỰC 2</strong></p>
			</td>
			<td colspan="2" style="height:31px">
			<p><em>&nbsp; Flyfood rất mong được sự hỗ trợ của quý khách hàng để</em></p>

			<p><em>&nbsp; Nhân Viên Flyfood làm tốt trách nhiệm phục vụ của mình!</em></p>
			</td>
		</tr>
		<tr>
			<td style="height:31px">
			<p style="text-align:center">Quận 2</p>
			</td>
			<td rowspan="8" style="height:31px">
			<p>&nbsp; Đặt hàng trước 2 tiếng</p>

			<p>&nbsp; Giao hàng liên tục từ 8h00 đến 20h00, kết thúc thời gian đặt hàng lúc 18h30</p>

			<p>&nbsp; Giao hàng tất cả các địa chỉ có tên đường trên bản đồ&nbsp;<a href="http://www.google.com/maps" style="box-sizing: border-box; color: rgb(71, 71, 71); text-decoration: none; background-color: transparent;">www.google.com/maps</a></p>

			<p>&nbsp; Thời gian giao động dự trù 45 phút</p>

			<p><strong>&nbsp; Đơn hàng tối thiểu 220.000 đồng</strong></p>

			<p>&nbsp; Không giao hàng lên lầu hoặc phải gửi xe để chuyển hàng vào nhà.</p>

			<p>&nbsp; Có thể từ chối giao hàng trong những trường hợp bất khả kháng về thời tiết, đường ngập nước.</p>
			</td>
			<td style="height:31px">
			<p style="text-align:center">30,000</p>
			</td>
		</tr>
		<tr>
			<td style="height:31px">
			<p style="text-align:center">Quận 6</p>
			</td>
			<td style="height:31px">
			<p style="text-align:center">30,000</p>
			</td>
		</tr>
		<tr>
			<td style="height:31px">
			<p style="text-align:center">Quận 7</p>
			</td>
			<td style="height:31px">
			<p style="text-align:center">30,000</p>
			</td>
		</tr>
		<tr>
			<td style="height:31px">
			<p style="text-align:center">Quận 8</p>
			</td>
			<td style="height:31px">
			<p style="text-align:center">30,000</p>
			</td>
		</tr>
		<tr>
			<td style="height:31px">
			<p style="text-align:center">Quận 12</p>
			</td>
			<td style="height:31px">
			<p style="text-align:center">30,000</p>
			</td>
		</tr>
		<tr>
			<td style="height:31px">
			<p style="text-align:center">Quận Gò Vấp</p>
			</td>
			<td style="height:31px">
			<p style="text-align:center">30,000</p>
			</td>
		</tr>
		<tr>
			<td style="height:31px">
			<p style="text-align:center">Quận Thủ Đức</p>
			</td>
			<td style="height:31px">
			<p style="text-align:center">30,000</p>
			</td>
		</tr>
		<tr>
			<td style="height:31px">
			<p style="text-align:center">Quận Bình Tân</p>
			</td>
			<td style="height:31px">
			<p style="text-align:center">30,000</p>
			</td>
		</tr>
		<tr>
			<td style="height:31px">
			<p style="text-align:center"><strong>KHU VỰC 3</strong></p>
			</td>
			<td colspan="2" style="height:31px">
			<p><em>&nbsp; Flyfood rất mong được sự hỗ trợ của quý khách hàng để</em></p>

			<p><em>&nbsp; Nhân Viên Flyfood làm tốt trách nhiệm phục vụ của mình!</em></p>
			</td>
		</tr>
		<tr>
			<td style="height:31px">
			<p style="text-align:center">Quận 9</p>
			</td>
			<td rowspan="4" style="height:31px">
			<p>&nbsp; Đặt hàng trước 9h00 sáng hoặc 15h00 chiều.</p>

			<p>&nbsp; Giờ giao hàng:</p>

			<p>&nbsp; + Sáng: 10h30 đến 11h30</p>

			<p>&nbsp; + Chiều: 16h30 đến 17h30</p>

			<p>&nbsp; Giao hàng tất cả các địa chỉ có tên đường trên bản đồ&nbsp;<a href="http://www.google.com/maps" style="box-sizing: border-box; color: rgb(71, 71, 71); text-decoration: none; background-color: transparent;">www.google.com/maps</a></p>

			<p>&nbsp; Thời gian giao động dự trù 60 phút</p>

			<p><strong>&nbsp; Đơn hàng trên 2.000.000 đồng không quy định giờ giao hàng (Giao hàng bất kỳ giờ nào theo &nbsp; &nbsp; yêu cầu!)</strong></p>

			<p><strong>&nbsp; Đơn hàng tối thiểu 320.000 đồng</strong></p>
			</td>
			<td style="height:31px">
			<p style="text-align:center">30,000</p>
			</td>
		</tr>
		<tr>
			<td style="height:31px">
			<p style="text-align:center">Huyện Nhà Bè</p>
			</td>
			<td style="height:31px">
			<p style="text-align:center">30,000</p>
			</td>
		</tr>
		<tr>
			<td style="height:31px">
			<p style="text-align:center">Huyện Hóc Môn</p>
			</td>
			<td style="height:31px">
			<p style="text-align:center">30,000</p>
			</td>
		</tr>
		<tr>
			<td style="height:31px">
			<p style="text-align:center">Huyện Bình Chánh</p>

			<p>&nbsp;</p>
			</td>
			<td style="height:31px">
			<p style="text-align:center">30.000</p>
			</td>
		</tr>
		<tr>
			<td style="height:31px">
			<p style="text-align:center">Huyện Củ Chi</p>
			</td>
			<td style="height:31px">
			<p>&nbsp; Đặt hàng trước 9h00 sáng hoặc 15h00 chiều.</p>

			<p>&nbsp; Giờ giao hàng:</p>

			<p>&nbsp; + Sáng: 10h30 đến 11h30</p>

			<p>&nbsp; + Chiều: 16h30 đến 17h30</p>

			<p>&nbsp; Giao hàng theo trục đường:</p>

			<p>&nbsp; + Đường Trường Chinh, đường Xuyên Á, khu vực trung tâm Huyện Củ Chi</p>

			<p>&nbsp; Thời gian giao động dự trù 60 phút</p>

			<p><strong>&nbsp; Đơn hàng trên 2.000.000 đồng không quy định giờ giao hàng (Giao hàng bất kỳ giờ nào theo &nbsp; &nbsp; yêu cầu!)</strong></p>

			<p><strong>&nbsp; Đơn hàng tối thiểu 320.000 đồng</strong></p>
			</td>
			<td style="height:31px">
			<p style="text-align:center">30.000</p>
			</td>
		</tr>
		<tr>
			<td style="height:31px">
			<p style="text-align:center">TP. Thủ Dầu Một và TP. Biên Hòa</p>
			</td>
			<td style="height:31px">
			<p>&nbsp;+ Đặt hàng trước 9h00 sáng hoặc trước&nbsp;15h00 chiều</p>

			<p>+ Thời gian phục vụ từ 8h đến 20h mỗi ngày, kể cả ngày chủ nhật và các ngày lễ.</p>

			<p><strong>Chỉ nhận đơn hàng trên 2.000.000 đồng và&nbsp;không quy định giờ giao hàng (Giao hàng bất kỳ giờ nào theo yêu cầu!)</strong></p>
			</td>
			<td style="height:31px">
			<p style="text-align:center">30.000</p>
			</td>
		</tr>
		<tr>
			<td style="height:31px">
			<p style="text-align:center">Huyện Cần Giờ</p>
			</td>
			<td style="height:31px">
			<p>Chưa triển khai được trong thời gian này, mong quý khách hàng thông cảm!</p>
			</td>
			<td style="height:31px">
			<p>&nbsp;</p>
			</td>
		</tr>
	</tbody>
</table>

<div style="line-height: 20.8px; clear: both;">&nbsp;</div>

<p style="margin-left:0.5in; text-align:center"><span style="color:rgb(255, 0, 0)"><strong>Hấp dẫn vô cùng, càng ăn càng ngon!</strong></span></p>

<p style="margin-left:0.5in; text-align:center"><span style="color:rgb(255, 0, 0)"><span style="font-size:14px"><strong>Giao hà</strong></span><strong>ng cực nhanh, từ 60 đến 90 phút.</strong></span></p>

<p style="margin-left:0.5in; text-align:center"><span style="color:rgb(255, 0, 0)"><strong>Vui lòng đặt hàng trước 16h (sau 16h00 có thể hết hàng)</strong></span></p>

<p style="margin-left:0.5in; text-align:center">&nbsp;</p>

<p style="margin-left:0.5in; text-align:center"><span style="font-size:14px"><strong><img alt="" src="http://flyfood.vn/image/data/card%20qua%20tang.png" style="height:76px; width:113.297px"></strong></span></p>

<p style="margin-left:0.5in; text-align:center"><span style="font-size:22px"><span style="color:rgb(255, 0, 0)"><strong>Gọi ngay: 08 39 911 911</strong></span></span></p>

<p style="text-align:center"><span style="font-size:16px"><span style="color:rgb(0, 128, 0)"><strong><em>Flyfood – Fast &amp; Hot: “Hiện tượng mới” cho dịch vụ ăn uống Sài Gòn 2014!</em></strong></span></span></p>

<p style="text-align:center">&nbsp;</p>

<p style="text-align:right"><strong>Flyfood.vn</strong></p>

<p style="text-align:center">&nbsp;</p>

            </section>', 320000, 25, 24, '2016-12-10 01:51:02.708689', '2016-12-10 01:51:02.708689', '90_1.png', '90_2.png', NULL, true, 1, 'ca-da-bo-nuong-muoi-ot');
INSERT INTO foods VALUES (137, 'Sườn nướng Hàn Quốc', 50000, NULL, NULL, '<p style="text-align: justify;">Món <strong>Sườn nướng kiểu Hàn Quốc</strong> hấp dẫn. &nbsp;Đầu bếp của e-Food Lover đã khéo léo kết hợp những gia vị đặc biệt tạo nên hương vị đặc biệt hấp dẫn cho món ăn mang hương vị Hàn Quốc này. Thử tưởng tượng bạn cùng những người bạn nhâm nhi cốc bia, thưởng thức món ngon&nbsp;và ngồi xem phim thì còn gì tuyệt vời hơn. </p> <p style="text-align: justify;">Hôm nào lười, ngại vào bếp mà bạn vẫn muốn thưởng thức món ăn ngon,&nbsp;nóng hổi thì hãy liên lạc ngay với chúng tôi&nbsp;nhé&nbsp;Bạn sẽ được thưởng thức món sườn nướng nhanh nhất đảm bảo thơm ngon, béo ngậy. Đảm bảo tất cả thực phẩm vệ sinh an toàn trong sản phẩm cũng như khi chế biến.</p>', 45000, 25, 21, '2017-01-11 19:08:49.75102', '2017-01-11 19:08:49.75102', '137_1.jpg', NULL, NULL, true, 1, 'suon-nuong-han-quoc');
INSERT INTO foods VALUES (131, 'Cơm Chiên', 28500, NULL, NULL, '<div class="rd-des" ng-class="{"toggle-height":DesMore}">
<span ng-bind-html="Model.Description" class="ng-binding">Chỗ này hình như chỉ có bán mua đem đi. Mới ăn khi chiều và thấy cũng khá ngon. Có da gà chiên ngon lắm :3</span><a class="view-more" href="javascript:void(0)" ng-click="ToggleDesMore()">Xem thêm</a></div><ul class="review-photos fd-clearbox ng-scope" ng-if="Model.Pictures.length>0" ng-init="InitPicture($event)"><!-- ngRepeat: item in Model.Pictures --><li data-item-main="true" data-item-id="4205834" ng-repeat="item in Model.Pictures" ng-style="{"width":item.Size.Width,"height":item.Size.Height}" class="ng-scope" style="width: 670px; height: 670px;">
<a class="foody-photo" href="javascript:void(0);" data-id="4205834" data-group="2">
<!-- ngIf: IsShowMorePictures($index) -->
<img class="rp-lazy-load" data-item-src="https://media.foody.vn/res/g19/186539/s800/foody-a-quyen-nuoc-sam-com-chien-854-636044712029811739.jpg" ng-src="https://media.foody.vn/res/g19/186539/s800/foody-a-quyen-nuoc-sam-com-chien-854-636044712029811739.jpg" alt="" title="" ng-style="{"width":item.Size.iWidth,"height":item.Size.iHeight,"background":item.BgColor}" style="position: absolute; width: 670px; height: 670px; background: rgb(168, 148, 125);" src="https://media.foody.vn/res/g19/186539/s800/foody-a-quyen-nuoc-sam-com-chien-854-636044712029811739.jpg">
</a></li><!-- end ngRepeat: item in Model.Pictures -->
</ul>', 12000, 25, 9, '2017-01-11 19:08:49.75102', '2017-01-11 19:08:49.75102', '131_1.jpg', NULL, NULL, true, 1, 'com-chien');
INSERT INTO foods VALUES (132, 'Lẩu bò nhúng giấm', 450000, '<div class="container-fluid product-description-wrapper">
								
								<p>Món ăn được rất nhiều người ưa chuộng bởi thịt bò tươi mềm cùng nước dùng chua chua ngọt ngọt vị đậm đà, đảm bảo ai dùng 1 lần sẽ phải thử thêm lần sau đấy.</p>
								
							</div>', NULL, '<p>Bò nhúng dấm vốn là một món gỏi cuốn rất được ưa chuộng của người Sài Gòn, nhưng từ khi “di cư” tới Thủ đô, nó đã được biến tấu để phù hợp với gu ăn uống và khẩu vị của người dân vùng đồng bằng Bắc Bộ. Phải công nhận rằng, hiếm có loại lẩu nào lại được nhiều người săn đón bất kể đông hay hè như lẩu bò nhúng dấm. Nồi nước dùng thơm nức mũi với đủ thứ hương vị trên đời: nào là chua thanh của dấm gạo, ngòn ngọt của vài ba miếng dứa chín, béo ngậy của nước dừa, rồi tới hương sả thơm thoang thoảng, lại đến chút cay nồng của mấy nhánh ớt tươi vừa đủ để tê tê đầu lưỡi nhưng thừa độ “kích thích” khiến ai đã ngồi vào bàn là không muốn đứng dậy.</p> 
							<p><img alt="Lẩu bò nhúng dấm 1" src="https://pastaxi-manager.onepas.vn/content/uploads/articles/2amthuc/nhahang/topbonhungdam/lau-bo-nhung-dam-ha-noi-1.jpg"></p>', 405000, 30, 15, '2017-01-11 19:08:49.75102', '2017-01-11 19:08:49.75102', '132_1.jpg', NULL, NULL, true, 1, 'lau-bo-nhung-giam');
INSERT INTO foods VALUES (133, 'Nem chua rán', 5000, '<div class="container-fluid product-description-wrapper">
								
								<p><span>Những chiếc nem nóng hổi, ngầy ngậy hòa lẫn chút cay cay của tương ớt sẽ mang lại cho bạn một cảm giác thú vị khi thưởng thức.</span></p>
								
							</div>', NULL, '<div class="body">
<p class="body-text">Nem chua rán không phải là món ăn có xuất xứ từ Hà Nội, nhắc đến nem chua người ta đều nhớ về xứ Thanh với những chiếc nem chua gói nhỏ nhỏ xinh xinh bán trên dọc con đường quốc lộ. Nem chua được làm từ thịt, bì lợn, thính (gạo rang rồi nghiền), nhờ có sự lên men do được ủ kín từ 2-3 ngày mà nem khi chín có vị chua, ngậy hấp dẫn. Nem rán phải thưởng thức lúc nóng mới ngon, vừa ăn vừa chấm tương ớt cho đỡ ngấy, hòa quyện cùng vị thanh mát của những lát dưa chuột quả là ngon tuyệt. Nem rán chua có thể ăn kèm với nhiều loại hoa quả khác nhau, nhưng phổ biết nhất là củ đậu, dưa chuột, xoài… Điều đặc biệt của nem rán là thưởng thức vào cả mùa hè và mùa đông đều thích hợp và rất được ưa chuộng. Miếng nem vừa rán xong vẫn giữ được vị giòn của vỏ nhưng lại mềm dẻo bên trong. Giòn nhưng không cứng, dẻo nhưng không hề bết.</p>
</div>', 4500, 50, 18, '2017-01-11 19:08:49.75102', '2017-01-11 19:08:49.75102', '133_1.jpg', NULL, NULL, true, 1, 'nem-chua-ran');
INSERT INTO foods VALUES (134, 'Sườn cây nướng cay', 129000, NULL, NULL, '<div class="detail_product"><p style="text-align: justify;"><span style="font-size: 12pt;">Món ăn với hương vị riêng, độc đáo duy nhất không dễ nhầm lẫn ở các nhà hàng, quán ăn khác. Thịt sườn được để nguyên cây, ướp với nước sốt cay cay và vị ngọt tự nhiên của 07 loại trái cây và rau củ, tạo nên sắc cam đẹp mắt.</span></p>
<p style="text-align: justify;"><span style="font-size: 12pt;">Trên bếp than đỏ hồng, tiếng nổ lách tách của phần mỡ xen lẫn của cây sườn và màu vàng ươm hấp dẫn báo hiệu thịt đang dần chín tới, thịt nướng thơm ngon, hòa quyện với rau xanh chấm thêm ít tương đậu, nhấp nháp cùng ly beer tươi mát lạnh, cảm giác ngon tuyệt hảo.</span></p></div>', 99000, 10, 21, '2017-01-11 19:08:49.75102', '2017-01-11 19:08:49.75102', '134_1.jpg', NULL, NULL, true, 1, 'suon-cay-nuong-cay');
INSERT INTO foods VALUES (135, 'Cơm cánh gà chiên mắm', 35000, NULL, NULL, '<p> Cơm cánh gà chiên mắm sẽ giúp bạn xóa tan cơn đói nhanh chóng chỉ sau cuộc gọi đặt món tại ship đồ ăn đêm Hà Nội. Bạn cần đồ ăn ngon rẻ, hợp vệ sinh chỉ cần gọi và hãy để chúng tôi đem món ăn ngon đến tận tay bạn với thời gian sớm nhất bất kể thời điểm nào trong 24h. Việc thưởng thức chiếc cánh gà vàng óng, thơm lừng với gia vị thấm đều trong từng thớ thịt sẽ tuyệt vời hơn biết bao nhiêu khi bạn không cần nhọc công vào bếp chuẩn bị. Công thức bí truyền để nấu món cơm cánh gà chiên mắm có vị mặn mà không gắt, thịt thơm, ngấm dầu mà không ngấy thật khiến nhiều người mê mẩn. Thực khách mới một lần thưởng thức nhưng sẽ nhớ mãi và nhận ra ngay hương vị đặc trưng, dù món ăn này rất phổ biến và không quá khó thực hiện. </p>', 25000, 10, 10, '2017-01-11 19:08:49.75102', '2017-01-11 19:08:49.75102', '135_1.jpg', '135_2.jpg', NULL, true, 1, 'com-canh-ga-chien-mam');
INSERT INTO foods VALUES (136, 'Cơm gà rang gừng', 55000, NULL, NULL, '<p> Cơm gà rang gừng của ship đồ ăn đêm Hà Nội không chỉ bổ dưỡng mà còn giúp cơ thể phục hồi năng lượng nhanh chóng bởi gà gừng đều là hai vị thuốc tốt cho cơ thể. Thịt gà có tác dụng phục hồi suy nhược, giúp cơ thể lấy lại năng lượng nhanh chóng. Gừng có tính ấm, giúp kháng viêm, giảm đau và thải độc tố cơ thể. Chính vì vậy món gà rang gừng được rất nhiều người ưa thích và gọi đặt món thường xuyên. Khi đã ngán các món gà chiên, nấu thì cơm gà rang gừng sẽ đánh thức vị giác của bạn với hương vị thơm ngon hấp dẫn.</p>', 45000, 10, 10, '2017-01-11 19:08:49.75102', '2017-01-11 19:08:49.75102', '136_1.jpg', '136_2.jpg', NULL, true, 1, 'com-ga-rang-gung');
INSERT INTO foods VALUES (138, 'Cơm sườn sốt me', 60000, NULL, NULL, '<p> Cơm sườn sốt me đang đã chinh phục hàng trăm thực khách của e-Food Lover, liệu bạn muốn có cơ hội thưởng thức món ăn tuyệt ngon này? Đừng bỏ lỡ cuộc gọi đến số 0988 380 600 để được phục vụ món ăn ngon tuyệt hảo. Vị chua ngọt cay cay nơi đầu lưỡi cùng vị thịt sườn thơm mềm sẽ khiến bạn khó mà chối từ. Không cần phải mất thời gian đi chợ mua nguyên liệu cũng như lăn vào bếp hì hục chế biến. Sau một cuộc gọi chưa đến 2 phút là bạn và gia đình sẽ có món ngon để ăn mà vẫn đảm bảo vệ sinh thực phẩm.</p>', 50000, 10, 10, '2017-01-11 19:08:49.75102', '2017-01-11 19:08:49.75102', '138_1.jpg', NULL, NULL, true, 1, 'com-suon-sot-me');
INSERT INTO foods VALUES (139, 'Mỳ xào gà', 50000, NULL, NULL, '<p> Mỳ xào gà- món ăn cung cấp đầy đủ tinh bột, protein cho cả gia đình, hiện đang trở thành cơn sốt trong ngành ẩm thực việt nói chung và đối với <a href="/" target="_blank">e-Food Lover</a> nói riêng. Vậy lí do là gì? Món ăn này rất thông dụng bổ dưỡng mang lại cho cơ thể đủ năng lượng cho một ngày làm việc vất vả. Mỳ xào gà của e-Food Lover chúng tôi đã làm hài lòng biết bao vị khách khó tính bởi sự tẩm ướp chuyên nghiệp, đúng cách. Những miếng gà thái mỏng hay xé nhỏ thì đều thơm ngon đúng điệu khiến chúng ta khó lòng cưỡng nổi. Ngay miếng thịt đầu tiên, thực khách sẽ phải ồ lên vì món ăn quá đậm đà lại béo vừa phải. Kết hợp với mỳ giòn dai, sánh mịn sẽ là tuyệt tác ẩm thực. Chúng tôi đã hết lòng cống hiến những món ăn ngon, vậy còn các bạn có sẵn lòng đón nhận không? Để được ship nhanh chóng nhất với phong cách chuyên nghiệp nhất hãy gọi e-Food Lover. </p>', 45000, 15, 13, '2017-01-11 19:08:49.75102', '2017-01-11 19:08:49.75102', '139_1.jpg', NULL, NULL, true, 1, 'my-xao-ga');
INSERT INTO foods VALUES (140, 'Cơm thịt ba chỉ kho tàu', 55000, NULL, NULL, '<p> Cơm thịt ba chỉ kho tàu của Ship đồ ăn đêm Hà Nội là một trong những món cực dễ ăn và đưa cơm. Món ăn này thưởng thức cùng dưa muối chua giữa mùa hè thì thật tuyệt vời hoặc ăn giữa tiết trời se se lạnh cũng cực kì ngon. Từng miếng thịt chín mềm thấm gia vị đậm đà và phảng phất mùi hành tiêu thơm nức thật rất hấp dẫn người ăn. Tại sao bạn còn chưa nhấc máy lên và gọi ngay tới e-Food Lover nhỉ? Chỉ sau một cuộc điện thoại món cơm thịt ba chỉ kho tàu sẽ được <a href="/" target="_blank"> e-Food Lover</a> chuyển đến bạn trong thời gian ngắn nhất và đồ ăn vẫn còn nóng hổi. Bạn sẽ tiết kiệm được khoảng thời gian nghỉ ngơi quý báu của mình và có nhiều thời gian để chăm sóc bản thân và gia đình. Đừng chần chừ nhấc máy lên và gọi ngay tới hotline của e-Food Lover. Chúng tôi luôn phục vụ bạn những đồ ăn tươi ngon chất lượng 24/24h.</p>', 45000, 15, 10, '2017-01-11 19:08:49.75102', '2017-01-11 19:08:49.75102', '140_1.jpg', NULL, NULL, true, 1, 'com-thit-ba-chi-kho-tau');
INSERT INTO foods VALUES (141, 'Kimbap chiên', 35000, NULL, NULL, '<p style="text-align: justify;">Món <strong>Kimbap</strong> nay có một biến tấu trong cách chế biến của đầu bếp&nbsp;cho bạn có thêm sự lựa chọn mới cho thực đơn của mình đó là món <strong>Kimbap chiên</strong> đầy hấp dẫn. Món ăn thơm ngon, vỏ dòn tan hòa quyện trong nước sốt đặc biệt. Thưởng thức một lần món ăn của e-Food Lover&nbsp; là mê tít ngay. </p> <p style="text-align: justify;">Hôm nay, tối xin bật mí với bạn một điều thú vị đó là bạn sẽ không phải làm gì hết mà vẫn sẽ được thưởng thức món Kimbap chiên ngon hết ý luôn. Chỉ một hành động thôi nhấc máy lên và gọi điện cho chúng mình,<strong>&nbsp;</strong><a href="/" target="_blank">e-Food Lover</a> sẽ phục vụ bạn món Kimbap chiên nhanh nhất giúp bạn. Chúng tôi luôn đảm bảo món ăn đến tay bạn nhanh nhất mà vẫn đảm bảo vị thơm ngon và nóng giòn.</p>', 30000, 50, 9, '2017-01-11 19:08:49.75102', '2017-01-11 19:08:49.75102', '141_1.jpg', NULL, NULL, true, 1, 'kimbap-chien');
INSERT INTO foods VALUES (142, 'Phở xào gà', 60000, NULL, NULL, '<p> Món ăn của <strong><em>e-Food Lover </em></strong>luôn cung cấp đầy đủ chất dinh dưỡng. Khi bạn ngán cơm thì sao không nếm thử món phở xào gà rau củ cực hấp dẫn nhỉ? Từng miếng thịt gà xé cùng với rau củ xào thơm mùi hành ăn cùng bánh phở sẽ khiến bạn không hề thấy sai lầm khi lựa chọn món ăn này để đổi món trong ngày cuối tuần. Món phở xào gà của <a href="/" target="_blank">e-Food Lover</a> "là lựa chọn hàng đầu của nhiều người trong những ngày oi bức của mùa hè. Tại sao bạn phải mất thời gian xuống bếp để chế biến món ăn khi đang mệt mỏi giữa thời tiết nóng bức nhỉ? Sau một cuộc gọi là bạn đã có một bữa ăn đầy đủ chất dinh dưỡng rồi. Hãy để chúng tôi đem đến cho bạn những phút giây thoải mái. Hãy nhấc máy lên và gọi ngay hotline 0988 380 600 &nbsp;món ăn sẽ được giao tận tay bạn khi vẫn còn đang nóng hổi." </p>', 50000, 50, 9, '2017-01-11 19:08:49.75102', '2017-01-11 19:08:49.75102', '142_1.jpg', NULL, NULL, true, 1, 'pho-xao-ga');
INSERT INTO foods VALUES (143, 'Lẩu bò Tây Tạng', 390000, '<div class="step-txt-desc">
<div class="step-caption">1. Lẩu bò Tây Tạng - Món ngon trứ danh của vùng thảo nguyên hoang dã</div>
Nếu chưa có cơ hội đặt chân tới Trung Hoa, Muachung mời bạn tới Quán Này để thưởng thức món lẩu bò Tây Tạng trứ danh mang hơi thở của vùng đất được mệnh danh là "nóc nhà thế giới"
</div>', '<div class="list-features">
<ul><li>Nồi lẩu theo đúng phong cách lẩu bò Tây Tạng hai ngăn độc đáo, một ngăn dành riêng cho người thích ăn cay. Nước lẩu hòa quyện vị ngọt từ xương bò ninh nhừ, hương thơm nồng hấp dẫn các loại thảo mộc, nấm quý... đặc sắc.</li><li>Đồ nhúng lẩu là ba chỉ bò Mỹ thơm ngon, mềm ngọt.</li><li>Set ăn dành cho 2 người gồm: Lẩu bò Tây Tạng và nộm đu đủ.</li><li>Quán Này: Chuyên phục vụ các món lẩu, nướng mang hơi thở hoang dã của vùng cao nguyên Tây Tạng, không gian mới sửa sang lại vô cùng rộng rãi, thoáng mát.</li></ul>
</div>', '<div id="sys_wd_fulltext_content" class="wd-fulltext-content hide-desc" style="height: 1595px;">
<p>Cũng như vịt quay Bắc Kinh, lẩu nấm Côn Minh, lẩu bò&nbsp;của vùng Tây Tạng từ lâu đã được dân du lịch Việt Nam "nhất quyết" phải ăn khi có dịp sang chơi đất nước Trung Hoa. Nếu chưa có cơ hội đặt chân tới Tây Tạng, Muachung mời bạn tới Quán Này để thưởng thức món lẩu bò trứ danh mang hơi thở của vùng thảo&nbsp;nguyên hoang dã.</p>
<p style="text-align: center;"><img alt="Lẩu bò Tây Tạng - Món ngon thảo nguyên cho 2 người - 1" src="https://muachung10.vcmedia.vn/thumb_w/640,90/i:gallery/2015/07/31/mm72h/Lau-bo-Tay-Tang-Mon-ngon-thao-nguyen-cho-2-nguoi.jpg"></p>
<p style="text-align: center;"><strong>Set ăn dành cho 2&nbsp;người gồm:</strong></p>
<table align="center" border="1" cellpadding="1" cellspacing="1" style="width:500px;">
<tbody>
<tr>
<td><strong>Món ăn</strong></td>
<td><strong>Định lượng</strong></td>
</tr>
<tr>
<td>Lẩu bò Tây Tạng</td>
<td>1 nồi</td>
</tr>
<tr>
<td>Ba chỉ bò Mỹ nhúng lẩu</td>
<td>300gr</td>
</tr>
<tr>
<td>Rau, bánh đa, mì tôm nhúng lẩu</td>
<td>1 rổ</td>
</tr>
<tr>
<td>Nộm đu đủ</td>
<td>1 đĩa</td>
</tr>
</tbody>
</table>
<p style="text-align: center;"><img alt="Lẩu bò Tây Tạng - Món ngon thảo nguyên cho 2 người - 2" src="https://muachung10.vcmedia.vn/thumb_w/640,90/i:gallery/2015/07/31/gtj77/Lau-bo-Tay-Tang-Mon-ngon-thao-nguyen-cho-2-nguoi.jpg"></p>
<p style="text-align: center;">Nồi nước lẩu với đủ loại nguyên liệu bắt mắt, có khả năng "hút hồn" thực khách ngay từ "cái nhìn đầu tiên". Thiết kế nồi hai ngăn độc đáo, một ngăn cay nồng và một ngăn không cay phù hợp với nhiều sở thích của khách hàng.</p>
<p style="text-align: center;"><img alt="Lẩu bò Tây Tạng - Món ngon thảo nguyên cho 2 người - 3" src="https://muachung10.vcmedia.vn/thumb_w/640,90/i:gallery/2015/07/31/qb5rb/Lau-bo-Tay-Tang-Mon-ngon-thao-nguyen-cho-2-nguoi.jpg"></p>
<p style="text-align: center;">Sự kỳ bí của đất trời Tây Tạng, sự tinh tế trong ẩm thực vùng cao nguyên hoang dã&nbsp;như được gửi gắm trong nồi nước dùng nghi ngút, đặc sánh vị ngọt thanh, vị đậm từ xương hầm cùng hàng chục vị thuốc bắc, thảo dược và nấm&nbsp;quý hòa quyện tạo thành một món ăn độc nhất vộ nhị, cực ngon và bổ dưỡng.</p>
<p style="text-align: center;"><img alt="Lẩu bò Tây Tạng - Món ngon thảo nguyên cho 2 người - 4" src="https://muachung10.vcmedia.vn/thumb_w/640,90/i:gallery/2015/07/31/zt5pr/Lau-bo-Tay-Tang-Mon-ngon-thao-nguyen-cho-2-nguoi.jpg"></p>
<p style="text-align: center;">Ba chỉ bò Mỹ thái miếng vừa ăn, khi nhúng chín tới sẽ có hương vị ngọt thơm đặc trưng.</p>
<p style="text-align: center;"><img alt="Lẩu bò Tây Tạng - Món ngon thảo nguyên cho 2 người - 6" src="https://muachung10.vcmedia.vn/thumb_w/640,90/i:gallery/2015/07/31/rhik2/Lau-bo-Tay-Tang-Mon-ngon-thao-nguyen-cho-2-nguoi.jpg"></p>
<p style="text-align: center;"><img alt="Lẩu bò Tây Tạng - Món ngon thảo nguyên cho 2 người - 7" src="https://muachung10.vcmedia.vn/thumb_w/640,90/i:gallery/2015/07/31/77t9x/Lau-bo-Tay-Tang-Mon-ngon-thao-nguyen-cho-2-nguoi.jpg"></p>
<p style="text-align: center;">Nguyên liệu nhúng lẩu là các loại rau xanh tươi mát theo mùa và bánh đa hoặc mì tôm.</p>
<p style="text-align: center;"><img alt="Lẩu bò Tây Tạng - Món ngon thảo nguyên cho 2 người - 5" src="https://muachung10.vcmedia.vn/thumb_w/640,90/i:gallery/2015/07/31/ny02d/Lau-bo-Tay-Tang-Mon-ngon-thao-nguyen-cho-2-nguoi.jpg"></p>
<p style="text-align: center;">Ăn kèm lẩu bò Tây Tạng là món nộm đu đủ giòn sần sật, quyện lẫn đậu đũa, cà chua, tôm nõn, lạc rang giã nhỏ, mang đủ vị chua, cay, ngọt độc đáo.</p>
</div>', 253000, 10, 32, '2017-01-11 19:08:49.75102', '2017-01-11 19:08:49.75102', '143_1.jpg', '143_2.jpg', NULL, true, 1, 'lau-bo-tay-tang');
INSERT INTO foods VALUES (144, 'Lẩu cháo chim/ lẩu cháo sườn non', 500000, NULL, '<div class="list-features">
<ul><li>Set ăn 3-4 người gồm: sa lát, khoai/ ngô chiên, chân gà muối &amp; chọn 1 trong 2 loại lẩu: Lẩu cháo chim/ lẩu cháo sườn non.</li><li>Đồ nhúng được chọn lựa kỹ càng, tươi ngon, đảm bảo chất lượng.</li><li>Nước lẩu cháo được nấu theo công thức riêng, cho hương vị đặc biệt khó quên.</li></ul>
</div>', '<div id="sys_wd_fulltext_content" class="wd-fulltext-content hide-desc show-desc" style="height: 1472.5px;">
<p style="-webkit-font-smoothing: antialiased; text-shadow: none; text-rendering: optimizeLegibility; box-sizing: border-box; color: rgb(51, 51, 51); font-family: Arial, sans-serif; background-color: rgb(255, 255, 255); text-align: center;"><img alt="Chọn 1 trong 4 set lẩu tụ họp bạn bè - The Corner - 3" src="https://muachung10.vcmedia.vn/thumb_w/640,90/i:gallery/2016/12/28/frc7y/Chon-1-trong-4-set-lau-tu-hop-ban-be-The-Corner.jpg" style="border-width: 0px; border-style: initial; -webkit-font-smoothing: antialiased; text-shadow: none; text-rendering: optimizeLegibility; box-sizing: border-box; max-width: 650px; height: auto; vertical-align: middle;"></p>
<p style="-webkit-font-smoothing: antialiased; text-shadow: none; text-rendering: optimizeLegibility; box-sizing: border-box; color: rgb(51, 51, 51); font-family: Arial, sans-serif; background-color: rgb(255, 255, 255); text-align: justify;"><span style="-webkit-font-smoothing: antialiased; text-shadow: none; text-rendering: optimizeLegibility; box-sizing: border-box;">Lựa chọn 1 trong 2&nbsp;loại lẩu dưới đây&nbsp;để phù hợp với khẩu vị, sở thích của bản thân.</span></p>
<p style="-webkit-font-smoothing: antialiased; text-shadow: none; text-rendering: optimizeLegibility; box-sizing: border-box; color: rgb(51, 51, 51); font-family: Arial, sans-serif; background-color: rgb(255, 255, 255); text-align: center;"><img alt="Set ăn đón Tết 4 người: Lẩu cháo chim/Lẩu sườn non Hanoi Corner - 1" src="https://muachung10.vcmedia.vn/thumb_w/640,90/i:gallery/2016/12/28/c9wdc/Set-an-don-Tet-4-nguoi-Lau-chao-chimLau-suon-non-Hanoi-Corner.jpg"></p>
<p style="-webkit-font-smoothing: antialiased; text-shadow: none; text-rendering: optimizeLegibility; box-sizing: border-box; color: rgb(51, 51, 51); font-family: Arial, sans-serif; background-color: rgb(255, 255, 255); text-align: center;"><img alt="Set ăn đón Tết 4 người: Lẩu cháo chim/Lẩu sườn non " src="https://muachung10.vcmedia.vn/thumb_w/640,90/i:gallery/2016/12/28/l96se/Set-an-don-Tet-4-nguoi-Lau-chao-chimLau-suon-non-Hanoi-Corner.jpg"></p>
<p style="-webkit-font-smoothing: antialiased; text-shadow: none; text-rendering: optimizeLegibility; box-sizing: border-box; color: rgb(51, 51, 51); font-family: Arial, sans-serif; background-color: rgb(255, 255, 255); text-align: center;"><em>Khách hàng chọn 1 trong 2 set ăn: Lẩu&nbsp;cháo chim/ lẩu sườn non</em></p>
<p style="-webkit-font-smoothing: antialiased; text-shadow: none; text-rendering: optimizeLegibility; box-sizing: border-box; color: rgb(51, 51, 51); font-family: Arial, sans-serif; background-color: rgb(255, 255, 255); text-align: center;"><strong style="-webkit-font-smoothing: antialiased; text-shadow: none; text-rendering: optimizeLegibility; box-sizing: border-box;"><span style="-webkit-font-smoothing: antialiased; text-shadow: none; text-rendering: optimizeLegibility; box-sizing: border-box; text-align: justify;">SET ĂN CHO 3-4 NGƯỜI GỒM</span></strong></p>
<table align="center" border="1" cellpadding="1" cellspacing="1" style="-webkit-font-smoothing: antialiased; background-color: rgb(255, 255, 255); border-collapse: collapse; border-spacing: 0px; box-sizing: border-box; color: rgb(51, 51, 51); font-family: arial, sans-serif; height: 200px; text-rendering: optimizeLegibility; text-shadow: none; width: 500px;">
<tbody style="-webkit-font-smoothing: antialiased; text-shadow: none; text-rendering: optimizeLegibility; box-sizing: border-box;">
<tr style="-webkit-font-smoothing: antialiased; text-shadow: none; text-rendering: optimizeLegibility; box-sizing: border-box;">
<td style="-webkit-font-smoothing: antialiased; text-shadow: none; text-rendering: optimizeLegibility; box-sizing: border-box; padding: 0px; text-align: center;"><strong style="-webkit-font-smoothing: antialiased; text-shadow: none; text-rendering: optimizeLegibility; box-sizing: border-box;">Món</strong></td>
<td style="-webkit-font-smoothing: antialiased; text-shadow: none; text-rendering: optimizeLegibility; box-sizing: border-box; padding: 0px; text-align: center;"><strong style="-webkit-font-smoothing: antialiased; text-shadow: none; text-rendering: optimizeLegibility; box-sizing: border-box;">Định lượng</strong></td>
</tr>
<tr style="-webkit-font-smoothing: antialiased; text-shadow: none; text-rendering: optimizeLegibility; box-sizing: border-box;">
<td style="-webkit-font-smoothing: antialiased; text-shadow: none; text-rendering: optimizeLegibility; box-sizing: border-box; padding: 0px; text-align: center;">1,&nbsp;Chân gà muối</td>
<td style="-webkit-font-smoothing: antialiased; text-shadow: none; text-rendering: optimizeLegibility; box-sizing: border-box; padding: 0px; text-align: center;">1 đĩa (150gr)</td>
</tr>
<tr style="-webkit-font-smoothing: antialiased; text-shadow: none; text-rendering: optimizeLegibility; box-sizing: border-box;">
<td style="-webkit-font-smoothing: antialiased; text-shadow: none; text-rendering: optimizeLegibility; box-sizing: border-box; padding: 0px; text-align: center;">2, Ngô chiên/ Khoai chiên</td>
<td style="-webkit-font-smoothing: antialiased; text-shadow: none; text-rendering: optimizeLegibility; box-sizing: border-box; padding: 0px; text-align: center;">1 đĩa</td>
</tr>
<tr style="-webkit-font-smoothing: antialiased; text-shadow: none; text-rendering: optimizeLegibility; box-sizing: border-box;">
<td style="-webkit-font-smoothing: antialiased; text-shadow: none; text-rendering: optimizeLegibility; box-sizing: border-box; padding: 0px; text-align: center;">3, Sa lát Thái</td>
<td style="-webkit-font-smoothing: antialiased; text-shadow: none; text-rendering: optimizeLegibility; box-sizing: border-box; padding: 0px; text-align: center;">1 đĩa</td>
</tr>
<tr style="-webkit-font-smoothing: antialiased; text-shadow: none; text-rendering: optimizeLegibility; box-sizing: border-box;">
<td style="-webkit-font-smoothing: antialiased; text-shadow: none; text-rendering: optimizeLegibility; box-sizing: border-box; padding: 0px; text-align: center;">
<p>4, Chọn 1 trong 2 loại lẩu:</p>
<p>- Lẩu cháo chim</p>
<p>- Lẩu cháo sườn non</p>
</td>
<td style="-webkit-font-smoothing: antialiased; text-shadow: none; text-rendering: optimizeLegibility; box-sizing: border-box; padding: 0px; text-align: center;">
<p>- 1 con chim (600gr)</p>
<p>- Sườn (450gr)</p>
<p>- Rau, mì (1 đĩa)</p>
</td>
</tr>
</tbody>
</table>
<p><strong>1. Lẩu&nbsp;<span style="color: rgb(51, 51, 51); font-family: arial, sans-serif; text-align: center; background-color: rgb(255, 255, 255);">cháo chim</span></strong></p>
<p style="text-align: justify;">Nổi tiếng từ lâu như một vị thuốc trong dân gian, chim bồ câu là món ăn rất tốt cho sức khỏe mà lại rất ngon. Và cũng nổi tiếng không kém phần, Lẩu Cháo Chim bồ câu là một trong những “đặc sản” vô cùng hấp dẫn, đặc biệt là vào tiết trời mùa đông này.</p>
<p style="text-align: center;"><img alt="Set ăn đón Tết 4 người: Lẩu cháo chim/Lẩu sườn non Hanoi Corner - 6" src="https://muachung10.vcmedia.vn/thumb_w/640,90/i:gallery/2016/12/28/9eueu/Set-an-don-Tet-4-nguoi-Lau-chao-chimLau-suon-non-Hanoi-Corner.jpg" style="text-align: center;"></p>
<p style="text-align: justify;">Lẩu cháo chim có nước lẩu quyện sánh thơm thơm của gạo ninh thật nhừ, có vị thật đặc biệt. Thêm vào nước lẩu ấy là đĩa thịt chim câu tươi nguyên. <span style="text-align: justify;">Vị chim câu béo ngậy, ngọt thơm khiến nồi nước trở nên tuyệt ngon. Bạn hãy bỏ thêm một ít rau vào nồi lẩu để hương vị trở nên thật thơm ngon hơn nhé!</span></p>
<p style="text-align: center;"><img alt="Set ăn đón Tết 4 người: Lẩu cháo chim/Lẩu sườn non Hanoi Corner - 4" src="https://muachung10.vcmedia.vn/thumb_w/640,90/i:gallery/2016/12/28/cq9t2/Set-an-don-Tet-4-nguoi-Lau-chao-chimLau-suon-non-Hanoi-Corner.jpg" style="text-align: center;"></p>
<p style="text-align: justify;"><strong>2. Lẩu cháo sườn non</strong></p>
<p style="text-align: justify;">Lẩu cháo không còn xa lạ với thực khách. Tuy nhiên lẩu cháo sườn non với n<span style="text-align: justify;">ước lẩu quyện sánh, thơm thơm của gạo ninh thật nhừ cùng sụn non mềm ngậy, pha chút giòn sần sật sẽ là món ăn thú vị trong những ngày đông lạnh giá.</span></p>
<p style="text-align: center;"><img alt="Set ăn 4N đón Tết: Lẩu cháo chim/Lẩu cháo sườn non Hanoi Corner - 2" src="https://muachung10.vcmedia.vn/thumb_w/640,90/i:gallery/2016/12/30/8rg6y/Set-an-4N-don-Tet-Lau-chao-chimLau-chao-suon-non-Hanoi-Corner.jpg"></p>
<p style="text-align: justify;">Ngoài nước dùng, những khúc sụn&nbsp;non béo mềm cũng góp phần làm nên sự hấp dẫn cho món ăn. Sườn non không quá cứng, khi ăn vừa mềm, hơi sần sật lại có vị ngọt, sẽ làm cho bất cứ thực khách nào thưởng thức cũng phải tấm tắc.</p>
<p style="text-align: center;"><img alt="Set ăn 4N đón Tết: Lẩu cháo chim/Lẩu cháo sườn non Hanoi Corner - 1" src="https://muachung10.vcmedia.vn/thumb_w/640,90/i:gallery/2016/12/30/xieb8/Set-an-4N-don-Tet-Lau-chao-chimLau-chao-suon-non-Hanoi-Corner.jpg"></p>
<p style="text-align: center;"><em>Sụn nhúng lẩu được tuyển chọn lỹ càng từ loại sụn non loại 1</em></p>
<p style="text-align: center;"><img alt="Set ăn đón Tết 4 người: Lẩu cháo chim/Lẩu sườn non Hanoi Corner - 8" src="https://muachung10.vcmedia.vn/thumb_w/640,90/i:gallery/2016/12/28/acfkg/Set-an-don-Tet-4-nguoi-Lau-chao-chimLau-suon-non-Hanoi-Corner.jpg"></p>
<p style="text-align: justify;">Kế đó, hãy thử "món tủ" - Chân gà muối. Chân gà ngấm vị mắm, quất,ớt, xả kết hợp với các cảm giác giòn&nbsp;sần sật của gân, sụn gà sẽ "đốn tim" mọi thực khách. Các chàng có thể nhâm nhi ly rượu cùng món này, còn các chị em hãy dùng như món "khai vị" cho bữa tiệc cuối năm nhé!</p>
<p style="-webkit-font-smoothing: antialiased; text-shadow: none; text-rendering: optimizeLegibility; box-sizing: border-box; color: rgb(51, 51, 51); font-family: Arial, sans-serif; background-color: rgb(255, 255, 255); text-align: center;"><img alt="Chọn 1 trong 4 set lẩu tụ họp bạn bè - The Corner - 13" src="https://muachung10.vcmedia.vn/thumb_w/640,90/i:gallery/2016/12/28/ivhiv/Chon-1-trong-4-set-lau-tu-hop-ban-be-The-Corner.jpg" style="-webkit-font-smoothing: antialiased; text-shadow: none; text-rendering: optimizeLegibility; box-sizing: border-box; border-width: 0px; border-style: initial; max-width: 650px; height: auto; vertical-align: middle;"></p>
<p style="-webkit-font-smoothing: antialiased; text-shadow: none; text-rendering: optimizeLegibility; box-sizing: border-box; color: rgb(51, 51, 51); font-family: Arial, sans-serif; background-color: rgb(255, 255, 255); text-align: center;"><img alt="Chọn 1 trong 4 set lẩu tụ họp bạn bè - The Corner - 14" src="https://muachung10.vcmedia.vn/thumb_w/640,90/i:gallery/2016/12/28/iv797/Chon-1-trong-4-set-lau-tu-hop-ban-be-The-Corner.jpg" style="-webkit-font-smoothing: antialiased; text-shadow: none; text-rendering: optimizeLegibility; box-sizing: border-box; border-width: 0px; border-style: initial; max-width: 650px; height: auto; vertical-align: middle;"></p>
<p style="-webkit-font-smoothing: antialiased; text-shadow: none; text-rendering: optimizeLegibility; box-sizing: border-box; color: rgb(51, 51, 51); font-family: Arial, sans-serif; background-color: rgb(255, 255, 255); text-align: center;"><em style="-webkit-font-smoothing: antialiased; text-shadow: none; text-rendering: optimizeLegibility; box-sizing: border-box;">Trong lúc đợi nước lẩu sôi bạn có thể khai vị với ngô chiên hoặc khoai chiên</em></p>
<p style="-webkit-font-smoothing: antialiased; text-shadow: none; text-rendering: optimizeLegibility; box-sizing: border-box; color: rgb(51, 51, 51); font-family: Arial, sans-serif; background-color: rgb(255, 255, 255); text-align: center;"><img alt="Set ăn đón Tết 4 người: Lẩu cháo chim/Lẩu sườn non Hanoi Corner - 5" src="https://muachung10.vcmedia.vn/thumb_w/640,90/i:gallery/2016/12/28/cqkp5/Set-an-don-Tet-4-nguoi-Lau-chao-chimLau-suon-non-Hanoi-Corner.jpg" style="text-align: center;"></p>
<p style="-webkit-font-smoothing: antialiased; text-shadow: none; text-rendering: optimizeLegibility; box-sizing: border-box; color: rgb(51, 51, 51); font-family: Arial, sans-serif; background-color: rgb(255, 255, 255); text-align: center;"><em style="-webkit-font-smoothing: antialiased; text-shadow: none; text-rendering: optimizeLegibility; box-sizing: border-box;">Hãy thử sa lát Thái lạ miệng&nbsp;với vị chua cay mặn ngọt</em></p>
</div>', 319000, 10, 15, '2017-01-11 19:08:49.75102', '2017-01-11 19:08:49.75102', '144_1.jpg', NULL, NULL, true, 1, 'lau-chao-chim-lau-chao-suon-non');
INSERT INTO foods VALUES (145, 'Kem dừa', 178000, '<div class="step-txt-desc">
<div class="step-caption">1. Kem dừa - món ngon đang được giới trẻ </div>
Kem dừa có màu trắng sữa đựng trong trái dừa non, bên trên có chút dừa tươi bào sợi nhỏ, hai ba trái sơ ri đỏ đỏ thật bắt mắt. Kem được sản xuất trên dây chuyền hiện đại với công thức đạt chuẩn quốc tế, an toàn cho người sử dụng.
</div>', '<div class="list-features">
<ul><li>Kem dừa có màu trắng sữa đựng trong trái dừa non, bên trên có chút dừa tươi bào sợi nhỏ, tô điểm là vài ba trái sơ tri đỏ thật hấp dẫn.</li><li>Ăn kèm lạc, nho khô và dừa tươi cùng nước cốt dừa nguyên chất .</li><li>Kem được sản xuất trên dây chuyền hiện đại với công thức đạt chuẩn quốc tế, an toàn cho người sử dụng.</li><li>Độ ngọt vừa phải, ít béo hòa quyện với màu trái cây tự nhiên mang lại những viên kem mát mà không lạnh cóng, ăn hoài không ngán.</li><li>Havana Cafe: Mang phong cách Cuba độc đáo, là sự kết hợp giữa truyền thống và hiện đại, mang lại cảm giác thư thái cho khách hàng mỗi khi đặt chân đến.</li></ul>
</div>', '<div id="sys_wd_fulltext_content" class="wd-fulltext-content hide-desc show-desc" style="height: 1595px;">
<p style="-webkit-font-smoothing: antialiased; text-shadow: none; text-rendering: optimizeLegibility; box-sizing: border-box; color: rgb(51, 51, 51); font-family: Arial, sans-serif; background-color: rgb(255, 255, 255);">Kem dừa hẳn không còn&nbsp;xa lạ gì với giới trẻ với vị ngọt mát hấp dẫn từ những viên kem đựng trong trái dừa tươi hấp dẫn, bên trên có chút dừa tươi bào sợi nhỏ, hai ba trái sơ ri đỏ đỏ thật bắt mắt. Để bạn được thưởng thức món kèm dừa ngon tuyệt này với một không gian độc đáo đậm chất Cu Ba ngay lại "lòng" Hà Nội thì hãy đến ngay với Havana Cafe trong lượt <a style="color:inherit !important;font-size:inherit !important;text-decoration:inherit !important;" href="http://muachung.vn/s/deal-giam-gia.html" title="deal" target="_blank">deal</a> hôm nay nhé!</p>
<p style="text-align: center;"><img alt="02 trái kem dừa thơm mát cho 2N tại Havana Cafe - 1" src="https://muachung10.vcmedia.vn/thumb_w/640,90/i:gallery/2016/12/25/5z4s6/02-trai-kem-dua-thom-mat-cho-2N-tai-Havana-Cafe.jpg"></p>
<p style="text-align: center;">Set gồm 02 trái kem dừa thơm mát cho 02 người</p>
<p>Kem có độ ngọt vừa phải, ít béo hòa quyện với màu trái cây tự nhiên mang lại những viên kem mát mà không lạnh cóng, ăn hoài không ngán.</p>
<p style="text-align: center;"><img alt="02 trái kem dừa thơm mát cho 2N tại Havana Cafe - 2" src="https://muachung10.vcmedia.vn/thumb_w/640,90/i:gallery/2016/12/25/8dno9/02-trai-kem-dua-thom-mat-cho-2N-tai-Havana-Cafe.jpg" style="text-align: center;"></p>
<p style="text-align: center;">Kem được sản xuất trên dây chuyền hiện đại với công thức đạt chuẩn quốc tế, an toàn cho người sử dụng</p>
<p><span style="color: rgb(51, 51, 51); font-family: Arial, sans-serif; background-color: rgb(255, 255, 255);">Havana Cafe&nbsp;nổi tiếng bởi hương vị kem phong phú, có độ ngọt vừa, ít béo. </span>Kem dừa ngọt thanh mát ăn kèm lạc và&nbsp;nho khô,dừa tươi. Nước&nbsp;cốt dừa đi kèm cốc nước dừa tươi nguyên chất<span style="color: rgb(51, 51, 51); font-family: Arial, sans-serif; background-color: rgb(255, 255, 255);">…. Dù là những khách hàng khó tính và cực sành kem cũng dễ dàng lựa chọn được cho mình hương vị yêu thích riêng.</span></p>
<p style="text-align: center;"><img alt="02 trái kem dừa thơm mát cho 2N tại Havana Cafe - 3" src="https://muachung10.vcmedia.vn/thumb_w/640,90/i:gallery/2016/12/25/2qvvm/02-trai-kem-dua-thom-mat-cho-2N-tai-Havana-Cafe.jpg"></p>
</div>', 129000, 25, 20, '2017-01-11 19:08:49.75102', '2017-01-11 19:08:49.75102', '145_1.jpg', NULL, NULL, true, 1, 'kem-dua');
INSERT INTO foods VALUES (146, 'Cá lăng nhiều món', 269000, '<div class="step-txt-desc">
<div class="step-caption">1. Chả cá lăng - món ngon Hà Thành</div>
Chả cá là món ăn mang hương vị truyền thống, đặc sản nổi tiếng của mảnh đất Hà Thành. Nguyên liệu của món ăn này là cá lăng thịt chắc nhưng mềm, không có xương dăm và thơm ngon đặc biệt.
</div>', '<div class="list-features">
<ul><li>Nhiều món ngon hấp dẫn từ 1 nguyên liệu chung là cá: Nem cá Vọng Ngư, chả cá Lăng, nồi đầu cá om măng nóng hổi cho 3-4 người.</li><li>Cá lăng có tính bình, vị ngọt, nhiều công dụng, thịt cá mềm, không có xương dăm lại giàu dinh dưỡng, hợp với khẩu vị của cả gia đình.</li><li>Các món ăn, đặc biệt là chả cá được chế biến công phu, trình bày đẹp mắt, hội tụ đủ cả sắc lẫn hương, mang tới cho bạn bữa ngon nhiều dư vị.</li><li>Nhà hàng chả cá Vọng Ngư: Không gian mở thoáng mát và không gian trong nhà sang trọng, đẹp mắt, ấm cúng. Thực đơn món ăn đa dạng, đội ngũ nhân viên thân thiện, nhiệt tình.</li></ul>
</div>', '<div id="sys_wd_fulltext_content" class="wd-fulltext-content hide-desc show-desc" style="height: 1595px;">
<p><span style="color: rgb(51, 51, 51); font-family: Arial, sans-serif; background-color: rgb(255, 255, 255);">Việt Nam là một đất nước đa dạng về văn hóa ẩm thực, phong phú các món ăn từ Bắc - Trung - Nam. Ở mỗi vùng, mỗi món ăn đều mang cho mình nét đặc thù và điểm nổi bật riêng của địa phương. Có lẽ, bạn đã từng nghe nhắc đến những món ăn nổi tiếng của miền Bắc như: dê núi Ninh Bình, cốm Vòng Hà Nội, bánh cuốn Thanh Trì, bánh đậu xanh Hải Dương, mực hấp ổi... Và lượt&nbsp;</span><a href="http://muachung.vn/s/deal-giam-gia.html" style="-webkit-font-smoothing: antialiased; text-shadow: none; text-rendering: optimizeLegibility; box-sizing: border-box; background: rgb(255, 255, 255); font-family: Arial, sans-serif; color: inherit !important; text-decoration: inherit !important; font-size: inherit !important;" target="_blank" title="deal">deal</a><span style="color: rgb(51, 51, 51); font-family: Arial, sans-serif; background-color: rgb(255, 255, 255);">&nbsp;lần này, chúng tôi sẽ giới thiệu đến bạn hương vị thơm ngon, mới lạ của món ăn nổi tiếng của vùng Bắc Bộ với Set ăn cá lăng nhiều món cho 3-4 người sẽ đem đến cho thực khách cảm nhận khó quên.</span></p>
<p style="text-align: center;"><img alt="Set cá lăng nhiều món cho 3-4N tại Chả cá Vọng Ngư - 1" src="https://muachung10.vcmedia.vn/thumb_w/640,90/i:gallery/2016/12/26/vek65/Set-ca-lang-nhieu-mon-cho-3-4N-tai-Cha-ca-Vong-Ngu.jpg"></p>
<p style="-webkit-font-smoothing: antialiased; text-shadow: none; text-rendering: optimizeLegibility; box-sizing: border-box; color: rgb(51, 51, 51); font-family: Arial, sans-serif; background-color: rgb(255, 255, 255); text-align: center;"><strong style="-webkit-font-smoothing: antialiased; text-shadow: none; text-rendering: optimizeLegibility; box-sizing: border-box;">Set ăn cho 3-4 người gồm:</strong></p>
<table align="center" border="1" cellpadding="1" cellspacing="1" style="-webkit-font-smoothing: antialiased; text-shadow: none; text-rendering: optimizeLegibility; box-sizing: border-box; border-collapse: collapse; border-spacing: 0px; color: rgb(51, 51, 51); font-family: Arial, sans-serif; background-color: rgb(255, 255, 255); width: 500px;">
<tbody style="-webkit-font-smoothing: antialiased; text-shadow: none; text-rendering: optimizeLegibility; box-sizing: border-box;">
<tr style="-webkit-font-smoothing: antialiased; text-shadow: none; text-rendering: optimizeLegibility; box-sizing: border-box;">
<td style="-webkit-font-smoothing: antialiased; text-shadow: none; text-rendering: optimizeLegibility; box-sizing: border-box; padding: 0px; text-align: center;"><strong style="-webkit-font-smoothing: antialiased; text-shadow: none; text-rendering: optimizeLegibility; box-sizing: border-box;">Món ăn</strong></td>
<td style="-webkit-font-smoothing: antialiased; text-shadow: none; text-rendering: optimizeLegibility; box-sizing: border-box; padding: 0px; text-align: center;"><strong style="-webkit-font-smoothing: antialiased; text-shadow: none; text-rendering: optimizeLegibility; box-sizing: border-box;">Định lượng</strong></td>
</tr>
<tr style="-webkit-font-smoothing: antialiased; text-shadow: none; text-rendering: optimizeLegibility; box-sizing: border-box;">
<td style="-webkit-font-smoothing: antialiased; text-shadow: none; text-rendering: optimizeLegibility; box-sizing: border-box; padding: 0px;">Nem cá Vọng Ngư</td>
<td style="-webkit-font-smoothing: antialiased; text-shadow: none; text-rendering: optimizeLegibility; box-sizing: border-box; padding: 0px; text-align: center;">4 nem</td>
</tr>
<tr style="-webkit-font-smoothing: antialiased; text-shadow: none; text-rendering: optimizeLegibility; box-sizing: border-box;">
<td style="-webkit-font-smoothing: antialiased; text-shadow: none; text-rendering: optimizeLegibility; box-sizing: border-box; padding: 0px;">Chả cá Lăng</td>
<td style="-webkit-font-smoothing: antialiased; text-shadow: none; text-rendering: optimizeLegibility; box-sizing: border-box; padding: 0px; text-align: center;">220g</td>
</tr>
<tr style="-webkit-font-smoothing: antialiased; text-shadow: none; text-rendering: optimizeLegibility; box-sizing: border-box;">
<td style="-webkit-font-smoothing: antialiased; text-shadow: none; text-rendering: optimizeLegibility; box-sizing: border-box; padding: 0px;">Nồi đầu cá om măng</td>
<td style="-webkit-font-smoothing: antialiased; text-shadow: none; text-rendering: optimizeLegibility; box-sizing: border-box; padding: 0px; text-align: center;">1 nổi</td>
</tr>
<tr style="-webkit-font-smoothing: antialiased; text-shadow: none; text-rendering: optimizeLegibility; box-sizing: border-box;">
<td style="-webkit-font-smoothing: antialiased; text-shadow: none; text-rendering: optimizeLegibility; box-sizing: border-box; padding: 0px;">Rau, bún ăn kèm</td>
<td style="-webkit-font-smoothing: antialiased; text-shadow: none; text-rendering: optimizeLegibility; box-sizing: border-box; padding: 0px; text-align: center;">1 suất</td>
</tr>
</tbody>
</table>
<p style="text-align: center;"><img alt="Set cá lăng nhiều món cho 3-4N tại Chả cá Vọng Ngư - 2" src="https://muachung10.vcmedia.vn/thumb_w/640,90/i:gallery/2016/12/26/skdgl/Set-ca-lang-nhieu-mon-cho-3-4N-tai-Cha-ca-Vong-Ngu.jpg"></p>
<p><span style="-webkit-font-smoothing: antialiased; text-shadow: none; text-rendering: optimizeLegibility; box-sizing: border-box; color: rgb(51, 51, 51); font-family: Arial, sans-serif; line-height: 20px; text-align: justify; background-color: rgb(255, 255, 255);">Cá lăng là là loài cá da trơn nước ngọt, sống tập trung tại vùng đồng bằng sông Cửu Long. Với người miền Bác, cá lăng luôn được ưa chuộng bởi vô cùng chắc thịt, đặc biệt không có xương dăm, rất thơm ngon và bổ dưỡng.</span><span style="color: rgb(34, 34, 34); font-family: arial, sans-serif; font-size: 12.8px; background-color: rgb(255, 255, 255);">Thịt cá được lạng từ 2 bên lườn, thái miếng vừa ăn</span><span style="-webkit-font-smoothing: antialiased; text-shadow: none; text-rendering: optimizeLegibility; box-sizing: border-box; color: rgb(51, 51, 51); font-family: Arial, sans-serif; line-height: 20px; text-align: justify; background-color: rgb(255, 255, 255);">, ướp với nước riềng, nghệ, mẻ, hạt tiêu, nước mắm rồi kẹp vào cặp tre nướng&nbsp;(hoặc vỉ nướng chả có quết một lớp mỡ cho đỡ dính),&nbsp;lật đều tay cho miếng cá chín vàng đều bắt mắt.</span></p>
<p style="text-align: center;"><img alt="Set cá lăng nhiều món cho 3-4N tại Chả cá Vọng Ngư - 3" src="https://muachung10.vcmedia.vn/thumb_w/640,90/i:gallery/2016/12/26/x5mjt/Set-ca-lang-nhieu-mon-cho-3-4N-tai-Cha-ca-Vong-Ngu.jpg"></p>
<p><span style="color: rgb(51, 51, 51); font-family: Arial, sans-serif; text-align: center; background-color: rgb(255, 255, 255);">Chả cá&nbsp;qua nhiều công đoạn lọc thịt và sơ chế, ướp với giềng, nghệ, mẻ, hạt tiêu và nước mắm theo công thức bí truyền. Cá ướp ít nhất 2 giờ đồng hồ, được nướng sơ, sau đó làm nóng trên chảo sao cho hai mặt chín vàng đều bắt mắt.</span></p>
<p style="text-align: center;"><img alt="Set cá lăng nhiều món cho 3-4N tại Chả cá Vọng Ngư - 4" src="https://muachung10.vcmedia.vn/thumb_w/640,90/i:gallery/2016/12/26/yv7cq/Set-ca-lang-nhieu-mon-cho-3-4N-tai-Cha-ca-Vong-Ngu.jpg"></p>
<p><span style="color: rgb(51, 51, 51); font-family: Arial, sans-serif; text-align: center; background-color: rgb(255, 255, 255);">Chả cá phải ăn nóng nếu không sẽ bị tanh và mất ngon. Khi ăn, những miếng cá vàng ươm sẽ được trút vào chảo dầu nóng, thêm chút húng láng, hành chẻ, thì là, lạc rang...đảo đều tay cho các nguyên liệu hòa quyện rồi thưởng thức.&nbsp;</span></p>
<p style="text-align: center;"><img alt="Set ăn chả cá không khói tại nhà hàng Vua Chả Cá - 3" src="https://muachung10.vcmedia.vn/thumb_w/640,90/i:gallery/2016/01/09/cy91y/Set-an-cha-ca-khong-khoi-tai-nha-hang-Vua-Cha-Ca.jpg"></p>
<p style="text-align: center;"><span style="color: rgb(51, 51, 51); font-family: Arial, sans-serif; text-align: center; background-color: rgb(255, 255, 255);">Rưới mắm tôm lên bát bún, cá quyện vị ăn rất ngon và hấp dẫn</span></p>
<p style="text-align: center;"><img alt="Set cá lăng nhiều món cho 3-4N tại Chả cá Vọng Ngư - 8" src="https://muachung10.vcmedia.vn/thumb_w/640,90/i:gallery/2016/12/26/wikl7/Set-ca-lang-nhieu-mon-cho-3-4N-tai-Cha-ca-Vong-Ngu.jpg" style="text-align: center;"></p>
<p style="text-align: center;"><span style="color: rgb(51, 51, 51); font-family: Arial, sans-serif; text-align: center; background-color: rgb(255, 255, 255);">Chả cá là món ăn mang hương vị truyền thống, đặc sản nổi tiếng của mảnh đất Hà Thành</span></p>
<p><span style="color: rgb(51, 51, 51); font-family: Arial, sans-serif; background-color: rgb(255, 255, 255);">Nem rán vốn là món ngon quen thuộc trong các mâm cỗ ngày lễ, Tết của người Việt. Món ăn tuy đơn giản song lại mang trong mình sự tinh tế từ cách thưởng thức tới trình bày. Tuy nhiên, món nem cá Vọng Ngư&nbsp;còn đặc biệt hơn thế nữa. Nem được làm từ nguyên liệu chính là cá lăng, trộn lẫn các loại rau thơm...&nbsp;rồi&nbsp;cuốn "gọn gàng" trong lớp bánh tráng, tạo thành chiếc nem nhỏ xinh rồi rán chín trong chảo ngập dầu. Món ăn thành phẩm phải có màu vàng đều chỉ nhìn thôi đã vô cùng lôi cuốn.</span></p>
<p style="text-align: center;"><img alt="Set cá lăng nhiều món cho 3-4N tại Chả cá Vọng Ngư - 9" src="https://muachung10.vcmedia.vn/thumb_w/640,90/i:gallery/2016/12/26/feuzp/Set-ca-lang-nhieu-mon-cho-3-4N-tai-Cha-ca-Vong-Ngu.jpg" style="text-align: center;"></p>
<p style="text-align: center;">Nem cá Vọng Ngư thơm ngon, hấp dẫn "càng ăn càng nghiền"</p>
<p style="text-align: center;"><img alt="Set cá lăng nhiều món cho 3-4N tại Chả cá Vọng Ngư - 10" src="https://muachung10.vcmedia.vn/thumb_w/640,90/i:gallery/2016/12/26/z6stk/Set-ca-lang-nhieu-mon-cho-3-4N-tai-Cha-ca-Vong-Ngu.jpg" style="text-align: center;"></p>
<p style="text-align: center;"><span style="color: rgb(51, 51, 51); font-family: Arial, sans-serif; background-color: rgb(255, 255, 255);">Nem rán nhân mềm ngọt, vỏ giòn rụm chấm </span><span style="color: rgb(34, 34, 34); font-family: arial, sans-serif; font-size: 12.8px; background-color: rgb(255, 255, 255);">với sốt mayonnaise</span></p>
<p style="text-align: center;"><img alt="Set cá lăng nhiều món cho 3-4N tại Chả cá Vọng Ngư - 5" src="https://muachung10.vcmedia.vn/thumb_w/640,90/i:gallery/2016/12/26/jzvid/Set-ca-lang-nhieu-mon-cho-3-4N-tai-Cha-ca-Vong-Ngu.jpg"></p>
<p style="text-align: center;">Đầu cá om măng nóng hổi, vị ngon khó cưỡng</p>
<p><span style="-webkit-font-smoothing: antialiased; text-shadow: none; text-rendering: optimizeLegibility; box-sizing: border-box; color: rgb(51, 51, 51); font-family: Arial, sans-serif; text-align: justify; line-height: 20px; background-color: rgb(255, 255, 255);">Cá lăng om măng là món ăn dân dã, khá quen thuộc nhưng lại không hề gây nhàm chán.&nbsp;</span><span style="color: rgb(34, 34, 34); font-family: arial, sans-serif; font-size: 12.8px; background-color: rgb(255, 255, 255);">Đầu cá chặt miếng vừa ăn rồi om cùng măng tươi</span><span style="-webkit-font-smoothing: antialiased; text-shadow: none; text-rendering: optimizeLegibility; box-sizing: border-box; color: rgb(51, 51, 51); font-family: Arial, sans-serif; line-height: 20px; text-align: center; background-color: rgb(255, 255, 255);">,&nbsp;thêm chút ớt cay và hành hoa&nbsp;thơm nồng, tạo thành món ăn hấp dẫn cả về hương và sắc.</span></p>
<p style="text-align: center;"><img alt="Set cá lăng nhiều món cho 3-4N tại Chả cá Vọng Ngư - 6" src="https://muachung10.vcmedia.vn/thumb_w/640,90/i:gallery/2016/12/26/7sp7m/Set-ca-lang-nhieu-mon-cho-3-4N-tai-Cha-ca-Vong-Ngu.jpg"></p>
<p style="text-align: center;"><img alt="Set cá lăng nhiều món cho 3-4N tại Chả cá Vọng Ngư - 7" src="https://muachung10.vcmedia.vn/thumb_w/640,90/i:gallery/2016/12/26/ixgww/Set-ca-lang-nhieu-mon-cho-3-4N-tai-Cha-ca-Vong-Ngu.jpg"></p>
<p style="text-align: center;">Đồ tráng miệng thêm phần tròn trịa</p>
</div>', 238000, 10, 24, '2017-01-11 19:08:49.75102', '2017-01-11 19:08:49.75102', '146_1.jpg', '146_2.jpg', '146_3.jpg', true, 1, 'ca-lang-nhieu-mon');
INSERT INTO foods VALUES (147, 'Pizza Lowcarb', 210000, NULL, '<div class="list-features">
<ul><li>Công thức Pizza đặc biệt, ăn thả ga mà không lo đổi dáng.</li><li>Đế pizza mỏng giòn 100% từ súp lơ xanh không có tinh bột, thơm ngon, tốt cho sức khỏe mà không hề gây tăng cân.</li><li>Phần topping với phô mai béo ngậy và các loại thịt, hải sản, sauce… đậm đà vô cùng hấp dẫn.</li><li>Lựa chọn 1 trong các vị: sốt bò đặc biệt, gà hun khói, tôm jăm bông, rau củ, sốt cà chua nhiều phô mai, xúc xích klobasa.</li><li>Đặc biệt: KH mua 3 phiếu được tặng thêm 1 chai Pepsi 330ml.</li><li>Đội ngũ đầu bếp chuyên nghiệp sẽ đưa các bạn đến những trải nghiệm thú vị về tinh hoa văn hóa ẩm thực thế giới.</li><li>Thực đơn pizza rất phong phú và đa dạng.</li></ul>
</div>', '<div id="sys_wd_fulltext_content" class="wd-fulltext-content hide-desc show-desc" style="height: 1595px;">
<p style="text-align: justify;">Khi ăn kiêng chế độ low carb, ta sẽ phải kiêng toàn bộ tinh bột, do đó bạn sẽ mặc định không được thưởng thức món&nbsp;pizza&nbsp;rồi. Nhưng pizza chỉ có mỗi phần đế là có bột thôi, các loại topping bên trên đều&nbsp;nằm trong thực đơn cho phép của low carb cả (kể cả phô mai).&nbsp;</p>
<p style="text-align: justify;"><span style="text-align: justify;">Pizza Lowcarb là loại Pizza hoàn toàn mới, đế bánh làm 100% từ súp lơ xanh </span>không có tinh bột, thơm ngon, tốt cho sức khỏe mà không hề gây tăng cân.&nbsp;N<span style="text-align: justify;">guyên liệu làm sốt và nhân bánh được lựa chọn kĩ lưỡng, thành phần không có “Carbonhydrate”.&nbsp;</span>Phần topping với phô mai béo ngậy và các loại thịt, hải sản, sauce… đậm đà vô cùng hấp dẫn.</p>
<p style="text-align: center;"><img alt="Pizza Lowcarb - Ăn Pizza thả ga không lo đổi dáng - 8" src="https://muachung10.vcmedia.vn/thumb_w/640,90/i:gallery/2016/12/07/aava6/Pizza-Lowcarb-An-Pizza-tha-ga-khong-lo-doi-dang.jpg"></p>
<p style="text-align: center;"><em>Beefy Pizza: Sốt Bò đặc biệt, ớt xanh, nấm đùi gà,&nbsp;phô mai mozzarella&nbsp;</em></p>
<p style="text-align: center;"><img alt="Pizza Lowcarb - Ăn Pizza thả ga không lo đổi dáng - 9" src="https://muachung10.vcmedia.vn/thumb_w/640,90/i:gallery/2016/12/07/e2mm0/Pizza-Lowcarb-An-Pizza-tha-ga-khong-lo-doi-dang.jpg"></p>
<p style="text-align: center;"><em>Ocean Pizza: Tôm,&nbsp;jam bông, xào cay, ớt xanh, hành tây, cà chua, phomai mozzarella</em></p>
<p style="text-align: center;"><img alt="Pizza Lowcarb - Ăn Pizza thả ga không lo đổi dáng - 10" src="https://muachung10.vcmedia.vn/thumb_w/640,90/i:gallery/2016/12/07/mx3cy/Pizza-Lowcarb-An-Pizza-tha-ga-khong-lo-doi-dang.jpg"></p>
<p style="text-align: center;"><em>Sausage Pizza: Xúc xích klobasa, sốt cà chua, ô - liu, pho mai Mozzarella</em></p>
<p style="text-align: center;"><img alt="Pizza Lowcarb - Ăn Pizza thả ga không lo đổi dáng - 11" src="https://muachung10.vcmedia.vn/thumb_w/640,90/i:gallery/2016/12/07/kx8t2/Pizza-Lowcarb-An-Pizza-tha-ga-khong-lo-doi-dang.jpg"></p>
<p style="text-align: center;"><em>Vegetable Pizza: Nấm, Ngô, Ô-liu, Hành tây, Cà rốt, Đậu Hà Lan, Cà chua tươi, sốt cà chua, pho mai Mozzarella</em></p>
<p style="text-align: center;"><img alt="Pizza Lowcarb - Ăn Pizza thả ga không lo đổi dáng - 12" src="https://muachung10.vcmedia.vn/thumb_w/640,90/i:gallery/2016/12/07/xc24b/Pizza-Lowcarb-An-Pizza-tha-ga-khong-lo-doi-dang.jpg"></p>
<p style="text-align: center;"><em>Smoke Chicken Pizza: Gà hun khói, nấm, sốt cà chua, pho mai mozzarella</em></p>
<p style="text-align: center;"><img alt="Pizza Lowcarb - Ăn Pizza thả ga không lo đổi dáng - 1" src="https://muachung10.vcmedia.vn/thumb_w/640,90/i:gallery/2016/12/07/c2sjo/Pizza-Lowcarb-An-Pizza-tha-ga-khong-lo-doi-dang.jpg"></p>
<p style="text-align: center;"><em>Margherita Pizza: Sốt cà chua. Cà chua tươi, nhiều pho mai Mozzarella</em></p>
<p style="text-align: justify;"><span style="text-align: justify;">Pizza KHÔNG có “tinh bột”, dành cho những người thích ăn nhưng sợ béo, những người đang trong quá trình giảm cân không cần ăn kiêng, những người đang giữ dáng, tập yoga, fitness.. Hàm lượng DINH DƯỠNG CAO, cung cấp đầy đủ năng lượng chỉ trong 1 chiếc bánh.</span></p>
<p style="text-align: center;"><strong><img alt="Pizza Lowcarb - Ăn Pizza thả ga không lo đổi dáng - 3" src="https://muachung10.vcmedia.vn/thumb_w/640,90/i:gallery/2016/12/07/jczzl/Pizza-Lowcarb-An-Pizza-tha-ga-khong-lo-doi-dang.jpg"></strong></p>
<p style="text-align: center;"><strong><span style="text-align: justify;">Pizza Low Carb -&nbsp;</span>Chất lượng hơn hẳn những cửa hàng Pizza đồng giá, đã được khách hàng kiểm chứng!</strong></p>
</div>', 135000, 50, 33, '2017-01-11 19:08:49.75102', '2017-01-11 19:08:49.75102', '147_1.jpg', '147_2.jpg', NULL, true, 1, 'pizza-lowcarb');
INSERT INTO foods VALUES (148, 'Gà không lối thoát', 299000, '<div class="step-txt-desc">
<div class="step-caption">1. Món ăn độc đáo từ tên gọi</div>
Tên món hẳn đã khiến nhiều người ấn tượng. Và nếu rủ nhau cùng “giải thoát” con gà này, chắc hẳn các bạn sẽ còn thích thú hơn.
</div>', '<div class="list-features">
<ul><li>Suất ăn hấp dẫn bao gồm: Gà nguyên con 1,2-1,3kg và xôi nếp bọc ngoài.</li><li>Gà được lựa chọn là loại gà đồi vừa phải, không quá non, không quá già, hấp chín tới có vị ngọt mềm, béo ngậy, nằm trong lớp xôi nếp nương dẻo thơm, vỏ ngoài giòn rụm.</li><li>Món ăn vừa có thịt vừa có tinh bột, không bị ngấm nhiều dầu mỡ, ngon mà không ngấy, hợp với khẩu vị nhiều người.</li></ul>
</div>', '<div id="sys_wd_fulltext_content" class="wd-fulltext-content hide-desc" style="height: 1472.5px;">
<p style="-webkit-font-smoothing: antialiased; text-shadow: none; text-rendering: optimizeLegibility; box-sizing: border-box; color: rgb(51, 51, 51); font-family: Arial, sans-serif; background-color: rgb(255, 255, 255); text-align: justify;">Cuộc sống càng hiện đại, con người càng có xu hướng muốn quay trở về với những nét ẩm thực giản dị đồng quê, đó cũng chính là lý do vì sao trong thời gian gần đây, các món ăn dân dã rất được ưa chuộng. Được chế biến từ nguyên liệu chung là thịt gà, nhưng bạn có thể nghe đến rất nhiều cái tên như gà bọc đất, gà bó xôi, gà bọc lá sen và đặc biệt là gà không lối thoát, một nét chấm phá ấn tượng trong nền ẩm thực dân tộc. Trong lượt ưu đãi lần này, Muachung mời bạn đến&nbsp;<a href="http://muachung.vn/danh-muc/c-9/am-thuc-nha-hang.html?f=13&amp;s=nha-hang" style="-webkit-font-smoothing: antialiased; text-shadow: none; text-rendering: optimizeLegibility; box-sizing: border-box; background: transparent; color: inherit !important; text-decoration: inherit !important; font-size: inherit !important;" target="_blank" title="Nhà hàng">Nhà hàng</a>&nbsp;Gà 142 Định Công để cùng thưởng thức và cảm nhận món gà không lối thoát đặc biệt.</p>
<p style="-webkit-font-smoothing: antialiased; text-shadow: none; text-rendering: optimizeLegibility; box-sizing: border-box; color: rgb(51, 51, 51); font-family: Arial, sans-serif; background-color: rgb(255, 255, 255); text-align: center;"><img alt="Ngon lạ món gà không lối thoát tại nhà hàng Gà 142 - 1" src="https://muachung10.vcmedia.vn/thumb_w/640,90/i:gallery/2015/10/13/3jyhm/Ngon-la-mon-ga-khong-loi-thoat-tai-nha-hang-Ga-142.jpg" style="-webkit-font-smoothing: antialiased; text-shadow: none; text-rendering: optimizeLegibility; box-sizing: border-box; border-width: 0px; border-style: initial; max-width: 650px; height: auto; vertical-align: middle;"></p>
<p style="-webkit-font-smoothing: antialiased; text-shadow: none; text-rendering: optimizeLegibility; box-sizing: border-box; color: rgb(51, 51, 51); font-family: Arial, sans-serif; background-color: rgb(255, 255, 255); text-align: center;">&nbsp;Set ăn bao gồm:&nbsp;Gà nguyên con 1,2-1,3kg và xôi nếp bọc ngoài.</p>
<p style="-webkit-font-smoothing: antialiased; text-shadow: none; text-rendering: optimizeLegibility; box-sizing: border-box; color: rgb(51, 51, 51); font-family: Arial, sans-serif; background-color: rgb(255, 255, 255); text-align: center;"><img alt="Ngon lạ món gà không lối thoát tại nhà hàng Gà 142 - 2" src="https://muachung10.vcmedia.vn/thumb_w/640,90/i:gallery/2015/10/13/6kvq7/Ngon-la-mon-ga-khong-loi-thoat-tai-nha-hang-Ga-142.jpg" style="-webkit-font-smoothing: antialiased; text-shadow: none; text-rendering: optimizeLegibility; box-sizing: border-box; border-width: 0px; border-style: initial; max-width: 650px; height: auto; vertical-align: middle;"></p>
<p style="-webkit-font-smoothing: antialiased; text-shadow: none; text-rendering: optimizeLegibility; box-sizing: border-box; color: rgb(51, 51, 51); font-family: Arial, sans-serif; background-color: rgb(255, 255, 255); text-align: justify;">Tuy là món ăn mới nhưng gà không lối thoát tại <a style="color:inherit !important;font-size:inherit !important;text-decoration:inherit !important;" href="http://muachung.vn/danh-muc/c-9/am-thuc-nha-hang.html?f=13&amp;s=nha-hang" title="Nhà hàng" target="_blank">Nhà hàng</a> Gà 142 được rất nhiều thực khách ưa chuộng và trở thành món ăn “hot”, sớm hết hàng nếu bạn không đặt trước. Không chỉ độc đáo bởi cái tên, khi set ăn được mang ra, thực khách sẽ không khỏi xuýt xoa với vẻ ngoài vàng ươm bắt mắt. Bó xôi vàng ruộm, thoạt nhìn đã thấy độ giòn tan, nhưng đừng vội, hãy từ từ để thưởng thức bí mật ẩn bên trong. Nhân viên của nhà hàng sẽ dùng kéo và khéo léo tách đôi bó xôi, một con gà vàng ươm khói tỏa thơm phức đang chờ bạn thưởng thức. Đó là mùi hương của thịt gà quyện với mùi xôi nếp nương rất mềm, rất thơm. Những miếng thịt gà nóng hổi, mềm béo ăn kèm với xôi chiên giòn, chấm muối vừng giản dị mà hấp dẫn bao thực khách ghé thăm.</p>
<p style="-webkit-font-smoothing: antialiased; text-shadow: none; text-rendering: optimizeLegibility; box-sizing: border-box; color: rgb(51, 51, 51); font-family: Arial, sans-serif; background-color: rgb(255, 255, 255); text-align: center;"><img alt="Ngon lạ món gà không lối thoát tại nhà hàng Gà 142 - 3" src="https://muachung10.vcmedia.vn/thumb_w/640,90/i:gallery/2015/10/13/ha10g/Ngon-la-mon-ga-khong-loi-thoat-tai-nha-hang-Ga-142.jpg" style="-webkit-font-smoothing: antialiased; text-shadow: none; text-rendering: optimizeLegibility; box-sizing: border-box; border-width: 0px; border-style: initial; max-width: 650px; height: auto; vertical-align: middle;"></p>
<p style="-webkit-font-smoothing: antialiased; text-shadow: none; text-rendering: optimizeLegibility; box-sizing: border-box; color: rgb(51, 51, 51); font-family: Arial, sans-serif; background-color: rgb(255, 255, 255); text-align: justify;">Nhà hàng đã lựa chọn những con gà có trọng lượng từ 1.2 đến 1.3kg, gà không được quá non cũng không quá già. Khác với các loại gà công nghiệp khác, gà của nhà hàng là loại gà ta, thịt chắc và ngọt. Gà được sơ chế sạch, tẩm ướp kỹ lưỡng và đem hấp cách thủy. Sau đó, gà được bọc bên ngoài bởi lớp xôi nếp nương và chiên trong dầu nóng để tạo nên lớp xôi giòn bên ngoài, dẻo thơm bên trong. Trong quá trình chiên giòn, mỡ gà và gia vị sẽ làm lớp vỏ xôi thêm mặn mà, đậm đà hơn. Món ăn này phải ăn kèm với các loại rau thơm,&nbsp;dưa leo, chấm với muối vừng mới thêm phần dậy vị.&nbsp;Sự hòa hợp từ vị ngọt của thịt gà, vị thơm dẻo của nếp nương, vị cay của tiêu ớt sẽ để lại ấn tượng khó quên.</p>
</div>', 209000, 10, 11, '2017-01-11 19:08:49.75102', '2017-01-11 19:08:49.75102', '148_1.jpg', '148_2.jpg', NULL, true, 1, 'ga-khong-loi-thoat');
INSERT INTO foods VALUES (149, 'Lẩu cá lăng Thái', 572000, '<div class="step-txt-desc">
<div class="step-caption">1. Nước lẩu Thái chua cay dậy vị</div>
Nồi nước lẩu kiểu Thái có màu đỏ cam đặc trưng, nồi nước lẩu nghi ngút ra bàn, chưa kịp ăn đã thấy hương thơm cay nồng len hỏi cuốn hút.
</div>', '<div class="list-features">
<ul><li>Set ăn cho 2-4 người gồm: Lẩu cá lăng kiểu Thái, nem cá lăng đặc biệt và khoai chip chấm sốt đậu tằm.</li><li>Nước lẩu Thái chua chua cay cay, đồ nhúng lẩu là cá lăng đặc sản mềm, ngọt, thơm thịt và ít xương dăm.</li><li>Ăn kèm lẩu là nem rán nhân mềm ngọt, vỏ giòn rụm chấm với mắm ớt và khoai chip chiên giòn chấm sốt đậu tằm độc đáo.</li></ul>
</div>', '<div id="sys_wd_fulltext_content" class="wd-fulltext-content hide-desc" style="height: 1595px;">
<p style="-webkit-font-smoothing: antialiased; text-shadow: none; text-rendering: optimizeLegibility; box-sizing: border-box; color: rgb(51, 51, 51); font-family: Arial, sans-serif; background-color: rgb(255, 255, 255); text-align: justify;"><span style="-webkit-font-smoothing: antialiased; text-shadow: none; text-rendering: optimizeLegibility; box-sizing: border-box; line-height: 20px;">Cá lăng là loài cá vốn có tính bình, vị ngọt, có&nbsp;công dụng chữa trị nhiều bệnh. Thịt cá lăng mềm mà săn chắc, ít xương dăm, nhiều chất dinh dưỡng nên từ lâu đã được nâng lên tần "đặc sản". Món đặc sản này tuy dình dị nhưng chưa đựng sự công phu và tinh tế không hề nhỏ.</p>
<p style="-webkit-font-smoothing: antialiased; text-shadow: none; text-rendering: optimizeLegibility; box-sizing: border-box; color: rgb(51, 51, 51); font-family: Arial, sans-serif; background-color: rgb(255, 255, 255); text-align: center;"><img alt="Lẩu cá lăng Thái cay mới lạ tại NH Chả cá Hà Thành - 3" src="https://muachung10.vcmedia.vn/thumb_w/640,90/i:gallery/2016/03/28/n7kbk/Lau-ca-lang-Thai-cay-moi-la-tai-NH-Cha-ca-Ha-Thanh.jpg" style="-webkit-font-smoothing: antialiased; text-shadow: none; text-rendering: optimizeLegibility; box-sizing: border-box; border-width: 0px; border-style: initial; max-width: 650px; height: auto; vertical-align: middle;"></p>
<p style="-webkit-font-smoothing: antialiased; text-shadow: none; text-rendering: optimizeLegibility; box-sizing: border-box; color: rgb(51, 51, 51); font-family: Arial, sans-serif; background-color: rgb(255, 255, 255); text-align: center;"><b>SET LẨU CHO 2-4 NGƯỜI GỒM:</b></p>
<table align="center" border="1" cellpadding="1" cellspacing="1" style="-webkit-font-smoothing:antialiased;background-color:rgb(255, 255, 255);border-collapse:collapse;border-spacing:0px;box-sizing:border-box;color:rgb(51, 51, 51);font-family:arial,sans-serif;height:250px;text-rendering:optimizeLegibility;text-shadow:none;width:500px;">
<tbody style="-webkit-font-smoothing: antialiased; text-shadow: none; text-rendering: optimizeLegibility; box-sizing: border-box;">
<tr style="-webkit-font-smoothing: antialiased; text-shadow: none; text-rendering: optimizeLegibility; box-sizing: border-box;">
<td style="-webkit-font-smoothing: antialiased; text-shadow: none; text-rendering: optimizeLegibility; box-sizing: border-box; padding: 0px; text-align: center;"><strong style="-webkit-font-smoothing: antialiased; text-shadow: none; text-rendering: optimizeLegibility; box-sizing: border-box;">Món ăn</strong></td>
<td style="-webkit-font-smoothing: antialiased; text-shadow: none; text-rendering: optimizeLegibility; box-sizing: border-box; padding: 0px; text-align: center;"><strong style="-webkit-font-smoothing: antialiased; text-shadow: none; text-rendering: optimizeLegibility; box-sizing: border-box;">Định lượng</strong></td>
</tr>
<tr style="-webkit-font-smoothing: antialiased; text-shadow: none; text-rendering: optimizeLegibility; box-sizing: border-box;">
<td style="-webkit-font-smoothing: antialiased; text-shadow: none; text-rendering: optimizeLegibility; box-sizing: border-box; padding: 0px; text-align: center;">1, Lẩu cá lăng Thái cay</td>
<td style="-webkit-font-smoothing: antialiased; text-shadow: none; text-rendering: optimizeLegibility; box-sizing: border-box; padding: 0px; text-align: center;">1 nồi</td>
</tr>
<tr style="-webkit-font-smoothing: antialiased; text-shadow: none; text-rendering: optimizeLegibility; box-sizing: border-box;">
<td style="-webkit-font-smoothing: antialiased; text-shadow: none; text-rendering: optimizeLegibility; box-sizing: border-box; padding: 0px; text-align: center;">- Cá lăng</td>
<td style="-webkit-font-smoothing: antialiased; text-shadow: none; text-rendering: optimizeLegibility; box-sizing: border-box; padding: 0px; text-align: center;">1kg</td>
</tr>
<tr style="-webkit-font-smoothing: antialiased; text-shadow: none; text-rendering: optimizeLegibility; box-sizing: border-box;">
<td style="-webkit-font-smoothing: antialiased; text-shadow: none; text-rendering: optimizeLegibility; box-sizing: border-box; padding: 0px; text-align: center;">- Rau, mì ăn lẩu</td>
<td style="-webkit-font-smoothing: antialiased; text-shadow: none; text-rendering: optimizeLegibility; box-sizing: border-box; padding: 0px; text-align: center;">1 suất</td>
</tr>
<tr style="-webkit-font-smoothing: antialiased; text-shadow: none; text-rendering: optimizeLegibility; box-sizing: border-box;">
<td style="-webkit-font-smoothing: antialiased; text-shadow: none; text-rendering: optimizeLegibility; box-sizing: border-box; padding: 0px; text-align: center;">2, Nem cá lăng đặc biệt</td>
<td style="-webkit-font-smoothing: antialiased; text-shadow: none; text-rendering: optimizeLegibility; box-sizing: border-box; padding: 0px; text-align: center;">1 đĩa</td>
</tr>
<tr style="-webkit-font-smoothing: antialiased; text-shadow: none; text-rendering: optimizeLegibility; box-sizing: border-box;">
<td style="-webkit-font-smoothing: antialiased; text-shadow: none; text-rendering: optimizeLegibility; box-sizing: border-box; padding: 0px; text-align: center;">3, Khoai chip sốt đậu tằm</td>
<td style="-webkit-font-smoothing: antialiased; text-shadow: none; text-rendering: optimizeLegibility; box-sizing: border-box; padding: 0px; text-align: center;">1 đĩa</td>
</tr>
</tbody>
</table>
<p style="-webkit-font-smoothing: antialiased; text-shadow: none; text-rendering: optimizeLegibility; box-sizing: border-box; color: rgb(51, 51, 51); font-family: Arial, sans-serif; background-color: rgb(255, 255, 255); text-align: center;"><img alt="Lẩu cá lăng Thái cay mới lạ tại NH Chả cá Hà Thành - 4" src="https://muachung10.vcmedia.vn/thumb_w/640,90/i:gallery/2016/03/28/i2csa/Lau-ca-lang-Thai-cay-moi-la-tai-NH-Cha-ca-Ha-Thanh.jpg" style="-webkit-font-smoothing: antialiased; text-shadow: none; text-rendering: optimizeLegibility; box-sizing: border-box; border-width: 0px; border-style: initial; max-width: 650px; height: auto; vertical-align: middle;"></p>
<p style="-webkit-font-smoothing: antialiased; text-shadow: none; text-rendering: optimizeLegibility; box-sizing: border-box; color: rgb(51, 51, 51); font-family: Arial, sans-serif; background-color: rgb(255, 255, 255); text-align: justify;">Lẩu Thái không khó chế biến nhưng cần được nêm nếm cho đủ độ cay mà vẫn giữ được vị ngọt của nước dùng. Nồi nước lẩu kiểu Thái có màu đỏ cam đặc trưng, khi nhân viên mang nồi nước lẩu nghi ngút ra bàn, chưa kịp ăn đã thấy hương thơm cay nồng len hỏi cuốn hút. Vị ngọt thanh từ xương ống rất hợp với vị cay nồng của sả, ớt và vị chua khiến món này tuy nhiều chất đạm mà không khiến bạn đầy bụng, ăn tuy no mà không ngán.</p>
<p style="-webkit-font-smoothing: antialiased; text-shadow: none; text-rendering: optimizeLegibility; box-sizing: border-box; color: rgb(51, 51, 51); font-family: Arial, sans-serif; background-color: rgb(255, 255, 255); text-align: center;"><img alt="Lẩu cá lăng Thái cay mới lạ tại NH Chả cá Hà Thành - 5" src="https://muachung10.vcmedia.vn/thumb_w/640,90/i:gallery/2016/03/28/1qm8f/Lau-ca-lang-Thai-cay-moi-la-tai-NH-Cha-ca-Ha-Thanh.jpg" style="-webkit-font-smoothing: antialiased; text-shadow: none; text-rendering: optimizeLegibility; box-sizing: border-box; border-width: 0px; border-style: initial; max-width: 650px; height: auto; vertical-align: middle;"></p>
<p style="-webkit-font-smoothing: antialiased; text-shadow: none; text-rendering: optimizeLegibility; box-sizing: border-box; color: rgb(51, 51, 51); font-family: Arial, sans-serif; background-color: rgb(255, 255, 255); text-align: justify;">Cá lăng tươi ngon đã được thái miếng nhỏ vừa vặn, bày sẵn sàng ra đĩa.&nbsp;Là một người khó tính trong cách chế biến và lựa chọn nguyên liệu, ông chủ Chả cá Hà Thành luôn tỉ mỉ với kho nguyên liệu của <a style="color:inherit !important;font-size:inherit !important;text-decoration:inherit !important;" href="http://muachung.vn/danh-muc/c-9/am-thuc-nha-hang.html?f=13&amp;s=nha-hang" title="Nhà hàng" target="_blank">nhà hàng</a>, từ nguyên liệu ăn kèm như hành, rau, lạc, mắm tốm, cà cuống…cho đến nguyên liệu chính là cá lăng. Tuy không phải là một nhà hàng chuyên về hải sản nhưng lại đầu tư hẳn một bể cá to để “tậu” về những chú cá lăng tươi ngon, phục vụ quý khách hàng ngay trong ngày. Lượng cá tươi của nhà hàng luôn được cung cấp thường xuyên, giúp mang đến những món ăn tươi ngon nhất dành cho khách hàng.</p>
<p style="-webkit-font-smoothing: antialiased; text-shadow: none; text-rendering: optimizeLegibility; box-sizing: border-box; color: rgb(51, 51, 51); font-family: Arial, sans-serif; background-color: rgb(255, 255, 255); text-align: center;"><img alt="Lẩu cá lăng Thái cay mới lạ tại NH Chả cá Hà Thành - 6" src="https://muachung10.vcmedia.vn/thumb_w/640,90/i:gallery/2016/03/28/48ls9/Lau-ca-lang-Thai-cay-moi-la-tai-NH-Cha-ca-Ha-Thanh.jpg" style="-webkit-font-smoothing: antialiased; text-shadow: none; text-rendering: optimizeLegibility; box-sizing: border-box; border-width: 0px; border-style: initial; max-width: 650px; height: auto; vertical-align: middle;"></p>
<p style="-webkit-font-smoothing: antialiased; text-shadow: none; text-rendering: optimizeLegibility; box-sizing: border-box; color: rgb(51, 51, 51); font-family: Arial, sans-serif; background-color: rgb(255, 255, 255); text-align: center;">Nấm tươi ngon</p>
<p style="-webkit-font-smoothing: antialiased; text-shadow: none; text-rendering: optimizeLegibility; box-sizing: border-box; color: rgb(51, 51, 51); font-family: Arial, sans-serif; background-color: rgb(255, 255, 255); text-align: center;"><img alt="Lẩu cá lăng Thái cay mới lạ tại NH Chả cá Hà Thành - 7" src="https://muachung10.vcmedia.vn/thumb_w/640,90/i:gallery/2016/03/28/b2rqd/Lau-ca-lang-Thai-cay-moi-la-tai-NH-Cha-ca-Ha-Thanh.jpg" style="-webkit-font-smoothing: antialiased; text-shadow: none; text-rendering: optimizeLegibility; box-sizing: border-box; border-width: 0px; border-style: initial; max-width: 650px; height: auto; vertical-align: middle;"></p>
<p style="-webkit-font-smoothing: antialiased; text-shadow: none; text-rendering: optimizeLegibility; box-sizing: border-box; color: rgb(51, 51, 51); font-family: Arial, sans-serif; background-color: rgb(255, 255, 255); text-align: center;">Rau thanh mát</p>
<p style="-webkit-font-smoothing: antialiased; text-shadow: none; text-rendering: optimizeLegibility; box-sizing: border-box; color: rgb(51, 51, 51); font-family: Arial, sans-serif; background-color: rgb(255, 255, 255); text-align: center;"><img alt="Lẩu cá lăng Thái cay mới lạ tại NH Chả cá Hà Thành - 8" src="https://muachung10.vcmedia.vn/thumb_w/640,90/i:gallery/2016/03/28/seoek/Lau-ca-lang-Thai-cay-moi-la-tai-NH-Cha-ca-Ha-Thanh.jpg" style="-webkit-font-smoothing: antialiased; text-shadow: none; text-rendering: optimizeLegibility; box-sizing: border-box; border-width: 0px; border-style: initial; max-width: 650px; height: auto; vertical-align: middle;"></p>
<p style="-webkit-font-smoothing: antialiased; text-shadow: none; text-rendering: optimizeLegibility; box-sizing: border-box; color: rgb(51, 51, 51); font-family: Arial, sans-serif; background-color: rgb(255, 255, 255); text-align: center;">Mì tôm ăn lẩu</p>
<p style="-webkit-font-smoothing: antialiased; text-shadow: none; text-rendering: optimizeLegibility; box-sizing: border-box; color: rgb(51, 51, 51); font-family: Arial, sans-serif; text-align: center; background-color: rgb(255, 255, 255);"><img alt="Đặc sản cá lăng nhiều món siêu hấp dẫn - chả cá Hà Thành - 9" src="https://muachung10.vcmedia.vn/thumb_w/640,90/i:gallery/2016/01/14/7yn02/Dac-san-ca-lang-nhieu-mon-sieu-hap-dan-cha-ca-Ha-Thanh.jpg" style="-webkit-font-smoothing: antialiased; text-shadow: none; text-rendering: optimizeLegibility; box-sizing: border-box; border-width: 0px; border-style: initial; max-width: 650px; height: auto; vertical-align: middle;"></p>
<p style="-webkit-font-smoothing: antialiased; text-shadow: none; text-rendering: optimizeLegibility; box-sizing: border-box; color: rgb(51, 51, 51); font-family: Arial, sans-serif; background-color: rgb(255, 255, 255); text-align: justify;">Nem rán vốn là món ngon quen thuộc trong các mâm cỗ ngày lễ, Tết của người Việt. Món ăn tuy đơn giản song lại mang trong mình sự tinh tế từ cách thưởng thức tới trình bày. Tuy nhiên, món nem tại nhà hàng Chả cá Hà Thành còn đặc biệt hơn thế nữa. Nem được làm từ nguyên liệu chính là cá lăng, trộn lẫn các loại rau thơm...&nbsp;rồi&nbsp;cuốn "gọn gàng" trong lớp bánh tráng, tạo thành chiếc nem nhỏ xinh rồi rán chín trong chảo ngập dầu. Món ăn thành phẩm phải có màu vàng đều chỉ nhìn thôi đã vô cùng lôi cuốn.</p>
<p style="-webkit-font-smoothing: antialiased; text-shadow: none; text-rendering: optimizeLegibility; box-sizing: border-box; color: rgb(51, 51, 51); font-family: Arial, sans-serif; text-align: center; background-color: rgb(255, 255, 255);"><img alt="Đặc sản cá lăng nhiều món siêu hấp dẫn - chả cá Hà Thành - 10" src="https://muachung10.vcmedia.vn/thumb_w/640,90/i:gallery/2016/01/14/fsgf0/Dac-san-ca-lang-nhieu-mon-sieu-hap-dan-cha-ca-Ha-Thanh.jpg" style="-webkit-font-smoothing: antialiased; text-shadow: none; text-rendering: optimizeLegibility; box-sizing: border-box; border-width: 0px; border-style: initial; max-width: 650px; height: auto; vertical-align: middle;"></p>
<p style="-webkit-font-smoothing: antialiased; text-shadow: none; text-rendering: optimizeLegibility; box-sizing: border-box; color: rgb(51, 51, 51); font-family: Arial, sans-serif; text-align: center; background-color: rgb(255, 255, 255);">Nem rán nhân mềm ngọt, vỏ giòn rụm chấm với mắm ớt chua chua cay cay, ăn kèm thêm chút dưa góp thái mỏng thả trong bát mắm.</p>
</div>', 355000, 10, 16, '2017-01-11 19:08:49.75102', '2017-01-11 19:08:49.75102', '149_1.jpg', '149_2.jpg', NULL, true, 1, 'lau-ca-lang-thai');
INSERT INTO foods VALUES (150, 'Gelato', 110000, '<div class="step-txt-desc">
<div class="step-caption">Gelato - Đẳng cấp hương vị kem Ý đích thực </div>
Bacio Gelato chuyên về kem Gelato, các loại đồ uống làm từ kem Gelato và trà, cafe (đa số là cafe Ý).
</div>', '<div class="list-features">
<ul><li>Gelato tại Bacio mang hương vị nguyên bản từ Ý khéo léo hòa trộn giữa những nguyên liệu được nhập khẩu từ Ý với các loại trái cây Việt Nam để đảm bảo độ tươi ngon nhất.</li><li>Hương vị thanh khiết, tự nhiên không phẩm màu - hương liệu hoàn toàn khác những loại kem thuộc dòng “Ice cream” trên thị trường.</li><li>Menu kem, cafe và đồ uống đa dạng, phong phú với nhiều hương vị lãng mạn, khó quên đậm chất Ý.</li><li>Set dành cho 2 người gồm: 1 đồ uống bất kì trong menu + set 3 viên kem 3 vị (khách hàng tuỳ chọn 3 trong số 17 vị).</li></ul>
</div>', '<div id="sys_wd_fulltext_content" class="wd-fulltext-content hide-desc" style="height: 1595px;">
<p style="text-align: justify;">Nếu một lần được đặt chân lên đất nước Italy xinh đẹp, thưởng thức hương vị kem Gelato đúng chất Ý hẳn bạn sẽ lưu luyến mãi hương vị ngọt ngào, lãng mạn, thanh tao của nó và khó tìm thấy hương vị đặc biệt đó ở bất cứ nơi đâu. Gelato cùng với Pizza, Pasta, Capuchino được xem như 4 món đặc trưng của văn hóa ẩm thực Ý.</p>
<p style="text-align: center;"><img alt="Combo đồ uống + set kem 3 vị 2 người Bacio Gelato - 9" src="https://muachung10.vcmedia.vn/thumb_w/640,90/i:gallery/2016/12/28/y4zo5/Combo-do-uong-set-kem-3-vi-2-nguoi-Bacio-Gelato.jpg"></p>
<p style="text-align: justify;">Gelato được du nhập vào Việt Nam từ khá lâu và ngày càng được giới trẻ yêu kem ưa chuộng. Thế nhưng để tìm được hương vị Gelato nguyên bản thì thật sự chưa có nơi nào làm thỏa mãn được khẩu vị của “dân sành” đồ Ý. Với mong muốn tìm lại hương vị ngọt dịu, lãng mạn, thanh tao đúng điệu của Gelato,&nbsp;Bacio Gelato&nbsp;đã ra đời.&nbsp;Bacio Gelato&nbsp;tạo ra sự khác biệt của mình so với các thương hiệu Gelato đã có mặt trên đất Hà thành khi hướng đến phục vụ hương vị Gelato nguyên bản Ý kết hợp với không gian trẻ trung, hiện đại mà không kém phần lãng mạn theo phong cách Roma.&nbsp;Thế nên, đừng bỏ lỡ cơ hội đến với <span style="text-align: justify;">Bacio Gelato</span>&nbsp;thưởng thức hương vị kem độc đáo này với Combo đồ uống + set kem 3 vị cho 2 người tại Muachung nhé!</p>
<p style="text-align: center;"><img alt="Combo đồ uống + set kem 3 vị 2 người Bacio Gelato - 11" src="https://muachung10.vcmedia.vn/thumb_w/640,90/i:gallery/2016/12/28/80aec/Combo-do-uong-set-kem-3-vi-2-nguoi-Bacio-Gelato.jpg"></p>
<p style="text-align: center;"><em>Set dành cho 2 người gồm: 1 đồ uống bất kì trong menu + set 3 viên kem 3 vị (khách hàng tuỳ chọn 3 trong số 17 vị)</em></p>
<p style="text-align: justify;">Thành phần làm nên Gelato được tuyển chọn gắt gao từ những nguyên liệu tươi có nguồn gốc hoàn toàn tự nhiên, không thêm chất bảo quản, không phẩm màu và các hương liệu nhân tạo. Cũng bởi thế mà hương vị, màu sắc của gelato luôn rất chân thật khiến ta ăn mãi mà không thấy chán.“Mùa nào thức ý”, Bacio khéo léo hòa trộn giữa những nguyên liệu được nhập khẩu từ Ý với những trái cây Việt Nam để đảm bảo&nbsp;độ tươi ngon nhất cho Gelato.</p>
<p style="text-align: center;"><img alt="Combo đồ uống + set kem 3 vị 2 người Bacio Gelato - 1" src="https://muachung10.vcmedia.vn/thumb_w/640,90/i:gallery/2016/12/28/hk0pw/Combo-do-uong-set-kem-3-vi-2-nguoi-Bacio-Gelato.jpg"></p>
<p style="text-align: center;"><img alt="Combo đồ uống + set kem 3 vị 2 người Bacio Gelato - 2" src="https://muachung10.vcmedia.vn/thumb_w/640,90/i:gallery/2016/12/28/yokto/Combo-do-uong-set-kem-3-vi-2-nguoi-Bacio-Gelato.jpg"></p>
<p style="text-align: center;"><img alt="Combo đồ uống + set kem 3 vị 2 người Bacio Gelato - 3" src="https://muachung10.vcmedia.vn/thumb_w/640,90/i:gallery/2016/12/28/tr13k/Combo-do-uong-set-kem-3-vi-2-nguoi-Bacio-Gelato.jpg"></p>
<p style="text-align: center;"><img alt="Combo đồ uống + set kem 3 vị 2 người Bacio Gelato - 4" src="https://muachung10.vcmedia.vn/thumb_w/640,90/i:gallery/2016/12/28/26j31/Combo-do-uong-set-kem-3-vi-2-nguoi-Bacio-Gelato.jpg"></p>
<p style="text-align: center;"><img alt="Combo đồ uống + set kem 3 vị 2 người Bacio Gelato - 5" src="https://muachung10.vcmedia.vn/thumb_w/640,90/i:gallery/2016/12/28/jkqco/Combo-do-uong-set-kem-3-vi-2-nguoi-Bacio-Gelato.jpg"></p>
<p style="text-align: center;"><img alt="Combo đồ uống + set kem 3 vị 2 người Bacio Gelato - 6" src="https://muachung10.vcmedia.vn/thumb_w/640,90/i:gallery/2016/12/28/cq5mn/Combo-do-uong-set-kem-3-vi-2-nguoi-Bacio-Gelato.jpg"></p>
<p style="text-align: center;"><img alt="Combo đồ uống + set kem 3 vị 2 người Bacio Gelato - 13" src="https://muachung10.vcmedia.vn/thumb_w/640,90/i:gallery/2016/12/28/w12n4/Combo-do-uong-set-kem-3-vi-2-nguoi-Bacio-Gelato.jpg"></p>
<p style="text-align: center;"><img alt="Combo đồ uống + set kem 3 vị 2 người Bacio Gelato - 14" src="https://muachung10.vcmedia.vn/thumb_w/640,90/i:gallery/2016/12/28/cxllg/Combo-do-uong-set-kem-3-vi-2-nguoi-Bacio-Gelato.jpg"></p>
<p style="text-align: justify;">Bacio&nbsp;còn có một “bí mật công nghệ” để làm ra món Gelato “mịn mượt như lụa”, cho bạn cái cảm giác tan chảy dịu dàng nơi đầu lưỡi đầy mê hoặc.&nbsp;Bacio&nbsp;có hàng chục hương vị để bạn thoải mái lựa chọn khi đến thưởng thức. Một vài gợi ý cho bạn khi đến&nbsp; với&nbsp;Bacio: Gelato socola (thơm mùi sô cô la đặc trưng), Gelato bia (vị nồng say, lâng lâng rất đặc biệt), Gelato chanh (vị thanh mát khá sảng khoái), Gelato trà xanh…&nbsp;</p>
<p style="text-align: center;"><img alt="Combo đồ uống + set kem 3 vị 2 người Bacio Gelato - 7" src="https://muachung10.vcmedia.vn/thumb_w/640,90/i:gallery/2016/12/28/4ssv0/Combo-do-uong-set-kem-3-vi-2-nguoi-Bacio-Gelato.jpg"><img alt="Combo đồ uống + set kem 3 vị 2 người Bacio Gelato - 8" src="https://muachung10.vcmedia.vn/thumb_w/640,90/i:gallery/2016/12/28/jlctg/Combo-do-uong-set-kem-3-vi-2-nguoi-Bacio-Gelato.jpg"><img alt="Combo đồ uống + set kem 3 vị 2 người Bacio Gelato - 9" src="https://muachung10.vcmedia.vn/thumb_w/640,90/i:gallery/2016/12/28/pajs0/Combo-do-uong-set-kem-3-vi-2-nguoi-Bacio-Gelato.jpg"><img alt="Combo đồ uống + set kem 3 vị 2 người Bacio Gelato - 10" src="https://muachung10.vcmedia.vn/thumb_w/640,90/i:gallery/2016/12/28/6f3th/Combo-do-uong-set-kem-3-vi-2-nguoi-Bacio-Gelato.jpg"><img alt="Combo đồ uống + set kem 3 vị 2 người Bacio Gelato - 11" src="https://muachung10.vcmedia.vn/thumb_w/640,90/i:gallery/2016/12/28/ugw5y/Combo-do-uong-set-kem-3-vi-2-nguoi-Bacio-Gelato.jpg"><img alt="Combo đồ uống + set kem 3 vị 2 người Bacio Gelato - 12" src="https://muachung10.vcmedia.vn/thumb_w/640,90/i:gallery/2016/12/28/kwqtr/Combo-do-uong-set-kem-3-vi-2-nguoi-Bacio-Gelato.jpg"></p>
<p style="text-align: justify;">Nhắc đến Ý là người ta liên tưởng đến những tách cafe đậm đà, béo ngậy. Những tách cafe thơm ngát với hương vị khó quên. Bacio xin hân hạnh được phục vụ những tách Cappuccino, Latte, Macchiato hay Mocha tuyệt vời nhất.</p>
<p style="text-align: center;"><img alt="Combo đồ uống + set kem 3 vị 2 người Bacio Gelato - 13" src="https://muachung10.vcmedia.vn/thumb_w/640,90/i:gallery/2016/12/28/0fmz2/Combo-do-uong-set-kem-3-vi-2-nguoi-Bacio-Gelato.jpg"></p>
<p style="text-align: center;"><img alt="Combo đồ uống + set kem 3 vị 2 người Bacio Gelato - 14" src="https://muachung10.vcmedia.vn/thumb_w/640,90/i:gallery/2016/12/28/r45nd/Combo-do-uong-set-kem-3-vi-2-nguoi-Bacio-Gelato.jpg"></p>
<p style="text-align: center;"><img alt="Combo đồ uống + set kem 3 vị 2 người Bacio Gelato - 15" src="https://muachung10.vcmedia.vn/thumb_w/640,90/i:gallery/2016/12/28/9tb4g/Combo-do-uong-set-kem-3-vi-2-nguoi-Bacio-Gelato.jpg"></p>
<p style="text-align: center;"><img alt="Combo đồ uống + set kem 3 vị 2 người Bacio Gelato - 16" src="https://muachung10.vcmedia.vn/thumb_w/640,90/i:gallery/2016/12/28/evwat/Combo-do-uong-set-kem-3-vi-2-nguoi-Bacio-Gelato.jpg"></p>
<p style="text-align: center;"><img alt="Combo đồ uống + set kem 3 vị 2 người Bacio Gelato - 17" src="https://muachung10.vcmedia.vn/thumb_w/640,90/i:gallery/2016/12/28/p6k5u/Combo-do-uong-set-kem-3-vi-2-nguoi-Bacio-Gelato.jpg"></p>
<p style="text-align: center;"><img alt="Combo đồ uống + set kem 3 vị 2 người Bacio Gelato - 18" src="https://muachung10.vcmedia.vn/thumb_w/640,90/i:gallery/2016/12/28/5g1cg/Combo-do-uong-set-kem-3-vi-2-nguoi-Bacio-Gelato.jpg"></p>
<p style="text-align: center;"><img alt="Combo đồ uống + set kem 3 vị 2 người Bacio Gelato - 20" src="https://muachung10.vcmedia.vn/thumb_w/640,90/i:gallery/2016/12/28/umdko/Combo-do-uong-set-kem-3-vi-2-nguoi-Bacio-Gelato.jpg"></p>
<p style="text-align: center;"><img alt="Combo đồ uống + set kem 3 vị 2 người Bacio Gelato - 21" src="https://muachung10.vcmedia.vn/thumb_w/640,90/i:gallery/2016/12/28/qfj3f/Combo-do-uong-set-kem-3-vi-2-nguoi-Bacio-Gelato.jpg"></p>
<p style="text-align: center;"><img alt="Combo đồ uống + set kem 3 vị 2 người Bacio Gelato - 22" src="https://muachung10.vcmedia.vn/thumb_w/640,90/i:gallery/2016/12/28/nj4b4/Combo-do-uong-set-kem-3-vi-2-nguoi-Bacio-Gelato.jpg"></p>
<p style="text-align: center;"><img alt="Combo đồ uống + set kem 3 vị 2 người Bacio Gelato - 25" src="https://muachung10.vcmedia.vn/thumb_w/640,90/i:gallery/2016/12/28/d67k0/Combo-do-uong-set-kem-3-vi-2-nguoi-Bacio-Gelato.jpg"></p>

</div>', 69000, 25, 20, '2017-01-11 19:08:49.75102', '2017-01-11 19:08:49.75102', '150_1.jpg', NULL, NULL, true, 1, 'gelato');


--
-- TOC entry 2281 (class 0 OID 0)
-- Dependencies: 206
-- Name: income_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('income_id_seq', 2, true);


--
-- TOC entry 2271 (class 0 OID 17892)
-- Dependencies: 205
-- Data for Name: incomes; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO incomes VALUES (1, 1, 0.0, '2017-01-15 06:19:13.941661', '2017-01-15 06:19:13.941661');
INSERT INTO incomes VALUES (2, 7, 0.0, '2017-01-15 00:06:29.811378', '2017-01-15 00:06:29.811378');
INSERT INTO incomes VALUES (3, 2, 0, '2017-01-15 08:12:52.075279', '2017-01-15 00:06:29.811378');


--
-- TOC entry 2282 (class 0 OID 0)
-- Dependencies: 198
-- Name: invoice_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('invoice_id_seq', 3, true);


--
-- TOC entry 2262 (class 0 OID 16965)
-- Dependencies: 196
-- Data for Name: transactions; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO transactions VALUES (2, 'Lê Viết Toàn', 'toanle123@gmail.com', '0938239554', '18/32 Bùi Thế Mỹ, P.10, Q.Tân Bình', 952000, '2017-01-14 18:21:31.920202', true, 'COD', 4, 'Hồ Chí Minh');
INSERT INTO transactions VALUES (3, 'Lê Toàn', 'toanle123@gmail.com', '0938239554', '18/32 Bui The My Street, Ward 10, Tan Binh District', 60000, '2017-01-14 23:30:49.362943', true, 'COD', 2, 'Hồ Chí Minh');


--
-- TOC entry 2261 (class 0 OID 16948)
-- Dependencies: 195
-- Data for Name: invoices; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO invoices VALUES (2, 2, 146, 4, 238000, false, 1, '2017-01-14');


--
-- TOC entry 2283 (class 0 OID 0)
-- Dependencies: 188
-- Name: role_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('role_id_seq', 3, true);


--
-- TOC entry 2267 (class 0 OID 17617)
-- Dependencies: 201
-- Data for Name: schema_migrations; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO schema_migrations VALUES ('20170113112034');
INSERT INTO schema_migrations VALUES ('20170114014200');


--
-- TOC entry 2284 (class 0 OID 0)
-- Dependencies: 200
-- Name: slider_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('slider_id_seq', 4, true);


--
-- TOC entry 2265 (class 0 OID 17459)
-- Dependencies: 199
-- Data for Name: sliders; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO sliders VALUES (1, 'slider_1.jpg', '<div class="text_first">Chuẩn cơm nhà nấu ?</div>
                <h3>E-FOODLOVER <i class="fa fa-smile-o"></i></h3>
                <p>Cho bạn hương vị ẩm thực tuyệt vời ngon, bổ, rẻ !</p>', 1, '2016-12-08 01:58:53.467342', '2016-12-08 01:58:53.467342');
INSERT INTO sliders VALUES (2, 'slider_2.jpg', '<span class="text_first" style="padding: 10px 0 10px 0; color: #FFFF66; background: rgba(0, 0, 0, 0.4)">&nbsp;&nbsp;Hãy chia sẻ&nbsp;&nbsp;<br/><br/>&nbsp;&nbsp;món ăn của bạn&nbsp;&nbsp;</span>
', 2, '2016-12-08 02:01:56.622868', '2016-12-08 02:01:56.622868');
INSERT INTO sliders VALUES (4, 'slider_4.jpg', '<div class="text_first">Bí quyết nấu ăn từ</div>
                <h3>Các chuyên gia</h3>', 4, '2016-12-08 02:01:56.622868', '2016-12-08 02:01:56.622868');
INSERT INTO sliders VALUES (3, 'slider_3.jpg', '<div class="text_first">Bạn muốn trở thành</div>
                <h3>Đầu bếp tại gia</h3>
                <p><a href="/tai-khoan" class="btn-lg btn-default"><i class="fa fa-hand-o-right"></i>&nbsp;Đăng ký ngay</a></p>', 3, '2016-12-08 02:01:56.622868', '2016-12-08 02:01:56.622868');


--
-- TOC entry 2285 (class 0 OID 0)
-- Dependencies: 197
-- Name: transaction_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('transaction_id_seq', 3, true);


--
-- TOC entry 2286 (class 0 OID 0)
-- Dependencies: 194
-- Name: user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('user_id_seq', 8, true);


-- Completed on 2017-01-15 08:16:37

--
-- PostgreSQL database dump complete
--

