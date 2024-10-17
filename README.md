# Banking Credit Segment Exploration

## 1. GIỚI THIỆU
   Dự án này tập trung vào việc tổng hợp và phân tích dữ liệu tín dụng cho ngân hàng VNC trong năm 2023. Dữ liệu bao gồm các chỉ số liên quan đến quy mô tín dụng, số lượng khách hàng, giá trị tài sản bảo đảm (TSBD), và các yếu tố tăng trưởng trong các giai đoạn khác nhau như cuối năm 2022, nửa đầu và nửa cuối năm 2023. Mục tiêu của dự án là tạo ra một báo cáo toàn diện về tình hình tín dụng, đánh giá các thay đổi trong hoạt động cho vay nhằm cải thiện chiến lược kinh doanh và quản lý rủi ro tín dụng.

## 2. MỤC TIÊU CỦA PROJECT
  Mục tiêu của dự án này là thu thập và phân tích dữ liệu tín dụng, bao gồm hợp đồng tín dụng, khách hàng, dư nợ và giá trị tài sản bảo đảm (TSBD) trong các giai đoạn khác nhau của năm 2023. Dự án sẽ so sánh các biến động về số lượng khách hàng và giá trị tín dụng, bao gồm cả sự tăng giảm, để đánh giá sức khỏe tài chính của ngân hàng trong các khoảng thời gian cụ thể. Đồng thời, dự án cũng theo dõi hiệu suất của tài sản bảo đảm, xem xét sự thay đổi về tổng giá trị TSBD và so sánh với cùng kỳ năm trước để dự đoán tiềm năng thu hồi nợ và giảm thiểu rủi ro tín dụng. Từ đó, dự án cung cấp những thông tin chiến lược quan trọng, giúp ban lãnh đạo điều chỉnh chiến lược tín dụng và quản lý rủi ro, tối ưu hóa lợi nhuận đồng thời giảm thiểu thiệt hại. Dự án này đóng vai trò then chốt trong việc hỗ trợ ra quyết định chiến lược và cải thiện hoạt động quản lý tín dụng của ngân hàng cho các hoạt động trong tương lai.

## 3. CÁC BÀI TOÁN ĐẶT RA
### BÀI TOÁN 1: Báo cáo tình hình tín dụng 6 tháng đầu năm
- Truy vấn: Xem truy vấn tại BAOCAO_TINDUNG.sql
- Kết quả:
| STT | Nội dung | 31/12/2022 | 6 tháng đầu năm 2023 |  | 6 tháng cuối năm 2023 |  | 31/12/2023 |
| --- | --- | --- | --- | --- | --- | --- | --- |
|  |  |  | Phát sinh tăng | Phát sinh giảm | Phát sinh tăng | Phát sinh giảm |  |
| 1 | Số hợp đồng tín dụng | 97| 7 | 10 | 6 | 11 | 89 |
| 2 | Số lượng khách hàng | 70 | 3 | 7 | 2 | 8 | 60 |
| 3 | Tổng tiền giải ngân | 4,357,124,475,047 | 20,300,000,000 | 32,740,000,000 | 53,100,000,000 | 1,020,478,000,000 | 3,377,306,475,047 |
| 4 | Dư nợ tín dụng (nợ gốc còn lại) | 2,602,895,025,966 | 20,300,000,000 | 8,228,333,330 | 53,100,000,000 | 1,017,633,371,716 | 1,650,433,320,888 |

  Dựa trên dữ liệu được cung cấp, chúng ta có thể rút ra một số thông tin quan trọng từ các chỉ số hiệu suất tín dụng của ngân hàng từ cuối năm 2022 đến cuối năm 2023.

##### 1. Số lượng hợp đồng tín dụng:
  Tình hình: Số hợp đồng tín dụng đã giảm từ 97 hợp đồng cuối năm 2022 xuống còn 89 hợp đồng vào cuối năm 2023.
  Phân tích: Mặc dù có sự gia tăng 7 hợp đồng mới trong nửa đầu năm 2023, nhưng tổng số hợp đồng đã giảm do kết thúc hoặc chấm dứt 21 hợp đồng trong suốt cả năm. Điều này có thể phản ánh khả năng quản lý tốt các khoản vay của ngân hàng hoặc có thể là dấu hiệu cho thấy sự trì trệ trong việc ký kết các hợp đồng mới. Ngân hàng cần xem xét kỹ lưỡng điều này để đảm bảo hoạt động tín dụng không bị chững lại trong tương lai.

##### 2. Số lượng khách hàng:
  Tình hình: Số lượng khách hàng cũng ghi nhận mức giảm, từ 70 khách hàng cuối năm 2022 xuống còn 60 khách hàng vào cuối năm 2023.
  Phân tích: Sự sụt giảm số lượng khách hàng có thể là kết quả của một chiến lược tín dụng thận trọng hơn từ phía ngân hàng, hoặc có thể là do sự giảm nhu cầu vay vốn từ khách hàng. Điều này có thể ảnh hưởng đến doanh thu tín dụng nếu xu hướng tiếp tục trong các năm tới. Việc hiểu rõ nguyên nhân sẽ giúp ngân hàng điều chỉnh chiến lược tiếp cận khách hàng hiệu quả hơn.

##### 3. Tổng số tiền giải ngân:
  Tình hình: Tổng số tiền giải ngân cuối năm 2023 đạt mức 3,377,306,475,047 VND, tăng mạnh so với con số 4,357,124,475,047 VND vào đầu năm.
  Phân tích: Mặc dù số lượng hợp đồng và khách hàng giảm, giá trị giải ngân lại tăng đáng kể, đặc biệt là trong nửa cuối năm 2023 khi có thêm 1,020,478,000,000 VND được giải ngân. Điều này cho thấy ngân hàng có thể đã chuyển hướng chiến lược, tập trung vào các khoản vay có giá trị lớn hơn hoặc các khách hàng tiềm năng hơn thay vì phân bổ vốn cho nhiều khách hàng nhỏ lẻ. Chiến lược này giúp nâng cao giá trị giải ngân, đồng thời giảm thiểu rủi ro nợ xấu.

##### 4. Dư nợ tín dụng (nợ gốc còn lại):
  Tình hình: Dư nợ tín dụng giảm mạnh từ 2,602,895,025,966 VND vào cuối năm 2022 xuống còn 1,650,433,320,888 VND cuối năm 2023.
  Phân tích: Việc giảm dư nợ tín dụng phản ánh khả năng thu hồi nợ hiệu quả của ngân hàng, đặc biệt là trong nửa cuối năm khi giá trị giải ngân lớn nhưng dư nợ vẫn giảm mạnh. Đây là tín hiệu tích cực, cho thấy ngân hàng đang kiểm soát dòng tiền tốt, thu hồi nợ đúng hạn và hạn chế rủi ro liên quan đến nợ xấu. Điều này cũng thể hiện khả năng quản lý rủi ro của ngân hàng được cải thiện đáng kể, góp phần tạo nền tảng vững chắc cho sự phát triển trong tương lai.

#### Kết luận và các thông tin nổi bật:
- Chiến lược tín dụng thận trọng: Sự giảm sút về số lượng hợp đồng và khách hàng có thể cho thấy ngân hàng đang hướng tới chiến lược thận trọng hơn trong việc cho vay, tập trung vào chất lượng hơn là số lượng. Điều này giúp giảm thiểu rủi ro, nhưng đồng thời cũng cần chú trọng để không bỏ lỡ cơ hội mở rộng thị trường.

- Tăng trưởng giá trị khoản vay: Dù số lượng hợp đồng và khách hàng giảm, nhưng tổng giá trị giải ngân lại tăng mạnh, chứng tỏ ngân hàng đã tối ưu hóa nguồn vốn bằng cách nhắm vào những khoản vay lớn và chất lượng hơn. Chiến lược này giúp ngân hàng tận dụng tối đa nguồn vốn, đồng thời nâng cao hiệu quả quản lý rủi ro.

- Quản lý nợ hiệu quả: Việc giảm mạnh dư nợ tín dụng là một điểm sáng, cho thấy ngân hàng đang kiểm soát tốt quá trình thu hồi nợ và quản lý tín dụng hiệu quả, tạo ra một nền tảng ổn định cho các hoạt động trong tương lai.

  Tóm lại, VNC Bank đã thành công trong việc cân bằng giữa việc giảm thiểu rủi ro và duy trì tăng trưởng tín dụng. Ngân hàng đã chuyển hướng chiến lược một cách thông minh khi tập trung vào các khoản vay lớn hơn, đồng thời quản lý nợ hiệu quả. Tuy nhiên, việc mở rộng và thu hút khách hàng mới vẫn cần được chú trọng để đảm bảo sự phát triển bền vững trong dài hạn.

### BÀI TOÁN 2: Báo cáo tình hình tài sản thế chấp 6 tháng đầu năm
- Truy vấn: Xem truy vấn tại BAOCAO_TAISANTHECHAP.sql
- Kết quả:
| STT | Nội dung | 31/12/2022 | 6 tháng đầu năm 2023 |  | 6 tháng cuối năm 2023 |  | 31/12/2023 |
| --- | --- | --- | --- | --- | --- | --- | --- |
|  |  |  | Phát sinh tăng | Phát sinh giảm | Phát sinh tăng | Phát sinh giảm |  |
|  | TSBD |  |  |  |  |  |  |
| 1 | Số TSBD | 145 | 25 | 9 | 19 | 26 | 154 |
| 2 | Tổng giá trị TSBD | 17,763,992,591,577 | 603,667,420,000 | 429,394,000,000 | 1,309,214,248,973 | 1,664,357,100,494 | 17,583,123,160,056 |

Dựa trên dữ liệu liên quan đến tài sản thế chấp (TSBD) trong nửa đầu và nửa cuối năm 2023, chúng ta có thể rút ra một số thông tin chi tiết quan trọng như sau:

##### 1. Số lượng tài sản thế chấp (TSBD)
- Tình hình: Số lượng tài sản thế chấp đã tăng từ 145 vào cuối năm 2022 lên 154 vào cuối năm 2023. Điều này cho thấy một xu hướng tích cực trong việc gia tăng số lượng tài sản mà ngân hàng sử dụng để bảo đảm các khoản vay.

- Phân tích:
+ Trong nửa đầu năm 2023, ngân hàng đã bổ sung 25 tài sản thế chấp mới, thể hiện nỗ lực mở rộng danh mục tài sản bảo đảm. Tuy nhiên, cùng thời gian đó, có 9 tài sản thế chấp đã bị giảm, có thể là do thanh lý tài sản không còn giá trị hoặc giải quyết các khoản nợ tồn đọng.
+ Trong nửa cuối năm, số lượng tài sản thế chấp lại tăng thêm 19 tài sản, nhưng cũng ghi nhận sự giảm 26 tài sản. Sự giảm này cho thấy có thể ngân hàng đã phải điều chỉnh danh mục tài sản thế chấp nhằm giải quyết các vấn đề nợ xấu, dẫn đến mức tăng trưởng tổng thể khiêm tốn trong năm.

- Nhận định: Mặc dù số lượng tài sản thế chấp có tăng, nhưng tốc độ tăng trưởng khá chậm cho thấy ngân hàng có thể đang gặp phải những khó khăn nhất định trong việc quản lý và duy trì tài sản thế chấp. Đặc biệt, sự giảm mạnh trong tài sản thế chấp vào nửa cuối năm cho thấy ngân hàng có thể đã thanh lý hoặc giảm tài sản thế chấp để ứng phó với các khoản nợ xấu, điều này cần được theo dõi sát sao để có các biện pháp cải thiện kịp thời.

##### 2. Tổng giá trị tài sản thế chấp
- Tình hình: Tổng giá trị tài sản thế chấp vào cuối năm 2022 là 17,763,992,591,577 VND, nhưng đến cuối năm 2023, giá trị này đã giảm nhẹ xuống còn 17,583,123,160,056 VND. Điều này cho thấy một sự sụt giảm tổng thể về giá trị tài sản thế chấp mà ngân hàng đang nắm giữ.

- Phân tích:
+ Trong nửa đầu năm 2023, tổng giá trị tài sản thế chấp đã tăng 603,667,420,000 VND, điều này phản ánh sự gia tăng giá trị của các tài sản mới được bổ sung. Tuy nhiên, trong cùng thời gian, giá trị tài sản thế chấp cũng giảm 429,394,000,000 VND, dẫn đến mức tăng trưởng ròng tối thiểu.
+ Đến nửa cuối năm, tổng giá trị tài sản thế chấp đã chứng kiến sự gia tăng đáng kể lên tới 1,309,214,248,973 VND, nhưng đồng thời cũng có sự giảm lớn lên đến 1,664,357,100,494 VND. Kết quả là tổng giá trị tài sản thế chấp đã giảm nhẹ so với cuối năm 2022, cho thấy rằng mặc dù có sự gia tăng trong một số thời kỳ, tổng giá trị tài sản vẫn bị ảnh hưởng tiêu cực do sự giảm giá trị hoặc thanh lý tài sản.

+ Nhận định: Mặc dù có sự tăng trưởng trong số lượng và giá trị tài sản thế chấp trong một số giai đoạn, sự giảm giá trị tài sản thế chấp đã vượt qua mức tăng trưởng, đặc biệt là trong nửa cuối năm. Điều này có thể cho thấy ngân hàng đã phải thanh lý một phần lớn tài sản thế chấp hoặc gặp phải tình trạng mất giá tài sản, dẫn đến việc giảm tổng giá trị tài sản thế chấp. Để duy trì và nâng cao giá trị của các tài sản này, ngân hàng cần xem xét và cải tiến quy trình quản lý tài sản thế chấp một cách hiệu quả hơn.

#### 3. Kết luận và Nhận định:
- Biến động trong số lượng tài sản thế chấp: Số lượng tài sản thế chấp có sự biến động lớn với mức tăng trưởng chậm và những giảm sút đáng kể, đặc biệt là trong nửa cuối năm. Điều này có thể là dấu hiệu cho thấy ngân hàng đang giải quyết một số tài sản thế chấp hoặc đang gặp phải những thách thức trong việc quản lý danh mục nợ của mình.

- Giảm nhẹ tổng giá trị tài sản thế chấp: Mặc dù trong một số thời kỳ có sự tăng trưởng mạnh mẽ trong giá trị tài sản thế chấp, tổng giá trị tài sản thế chấp vào cuối năm 2023 vẫn giảm nhẹ so với cuối năm 2022. Điều này cho thấy rằng một số tài sản thế chấp có thể đã bị thanh lý hoặc mất giá trị, ảnh hưởng đến tình hình tài chính chung của ngân hàng.

- Quản lý tài sản thế chấp: Ngân hàng có thể cần cải thiện quy trình quản lý tài sản thế chấp để tránh tình trạng mất giá trị tài sản và tối ưu hóa việc sử dụng tài sản thế chấp trong việc giảm thiểu rủi ro tín dụng. Việc xem xét lại các tiêu chí và phương pháp định giá tài sản thế chấp cũng như xây dựng chiến lược quản lý hiệu quả sẽ giúp ngân hàng duy trì và nâng cao giá trị tài sản trong tương lai.

  Tóm lại, trong khi số lượng tài sản thế chấp và giá trị của chúng đã tăng trong một số thời kỳ của năm, sự giảm đáng kể trong nửa cuối năm yêu cầu ngân hàng phải chú ý đến các chiến lược quản lý tài sản thế chấp nhằm bảo đảm sự ổn định và phát triển bền vững trong tương lai.

### BÀI TOÁN 3: BÁO CÁO TÌNH HÌNH TĂNG TRƯỞNG QUA CÁC NĂM
- Truy vấn: Xem tại BAOCAO_TANGTRUONG.sql
- Kết quả: 
| STT | Thời điểm | Tổng giá trị HĐTD (Chưa tất toán) | Tăng trưởng (so với cùng kỳ năm trước) | Tổng giá trị TSBDD (Chưa xuất tài sản) | Tăng trưởng (so với cùng kỳ năm trước) |
| --- | --- | --- | --- | --- | --- |
| 1 | 31/12/2021 | 2,702,834,923,508 | 100% | 17,989,974,014,144 | 100% |
| 2 | 31/12/2022 | 2,602,895,025,966 | 96,3024% | 17,763,992,591,577 | 98,7438% |
| 3 | 31/12/2023 | 1,650,433,320,888 | 63,4076% | 17,583,123,160,056 | 98,9818% |

Từ bảng đã cung cấp, chúng ta có thể rút ra và phân tích những xu hướng chính liên quan đến cả hợp đồng tín dụng (HĐTD) và tài sản bảo đảm (TSBD) trong ba năm (2021, 2022 và 2023). Dưới đây là phân tích dựa trên dữ liệu thu được:

#### 1. Hợp đồng tín dụng chưa thanh toán (HĐTD):
- Năm 2021: Tổng giá trị tín dụng chưa thanh toán đạt 2,702,834,923,508 VND.
- Năm 2022: Giá trị giảm nhẹ xuống còn 2,602,895,025,966 VND, cho thấy tỷ lệ tăng trưởng đạt 96.30% so với năm 2021.
- Năm 2023: Có sự sụt giảm đáng kể trong nợ tín dụng xuống còn 1,650,433,320,888 VND, với tỷ lệ tăng trưởng 63.41% so với năm 2022.

   Phân tích:
  Sự giảm nhẹ giá trị nợ vay từ năm 2021 đến năm 2022 cho thấy ngân hàng đã duy trì một danh mục cho vay tương đối ổn định trong giai đoạn này.

  Tuy nhiên, sự sụt giảm mạnh vào năm 2023 cho thấy một sự giảm thiểu lớn trong các khoản nợ chưa thanh toán, điều này có thể phản ánh một số khả năng sau:

- Ngân hàng có thể đã tập trung vào việc thu hồi nợ và giảm thiểu rủi ro.
- Có thể có sự sụt giảm trong nhu cầu vay hoặc chính sách cho vay trở nên chặt chẽ hơn.
- Các khoản thanh toán nợ có thể đã tăng tốc, hoặc có thể đã có việc xóa nợ xấu, dẫn đến số lượng nợ chưa thanh toán giảm.

##### 2. Tổng giá trị tài sản thế chấp (TSBD):
- Năm 2021: Tổng giá trị tài sản thế chấp đạt 17,989,974,014,144 VND.
- Năm 2022: Giá trị tài sản thế chấp giảm nhẹ xuống còn 17,763,992,591,577 VND, cho thấy tỷ lệ tăng trưởng đạt 98.74% so với năm 2021.
- Năm 2023: Giá trị tài sản thế chấp tiếp tục giảm xuống còn 17,583,123,160,056 VND, với tỷ lệ tăng trưởng đạt 98.98% so với năm 2022.

  Phân tích:
  Sự sụt giảm nhẹ trong giá trị tài sản thế chấp từ năm 2021 đến năm 2023 cho thấy cơ sở tài sản thế chấp vẫn tương đối ổn định với chỉ những biến động nhỏ. Sự giảm này không nghiêm trọng như sự giảm trong nợ vay, cho thấy ngân hàng đã duy trì một cấu trúc tài sản thế chấp lành mạnh ngay cả khi danh mục cho vay thu hẹp.
  Sự giảm nhẹ này cũng có thể chỉ ra rằng một số tài sản thế chấp đã bị thanh lý hoặc mất giá trị, nhưng ngân hàng vẫn có thể duy trì hầu hết giá trị tài sản thế chấp theo thời gian.

  Những điểm chính:
- Quản lý danh mục cho vay:
  Sự giảm đáng kể trong nợ vay chưa thanh toán vào năm 2023 có thể chỉ ra một cách tiếp cận cho vay thận trọng hơn hoặc những nỗ lực thành công trong việc thu hồi nợ. Đây có thể là một phần trong chiến lược quản lý rủi ro nhằm bảo vệ ngân hàng trước những tổn thất tiềm ẩn hoặc các yếu tố kinh tế bên ngoài ảnh hưởng đến thực tiễn cho vay.

- Sự ổn định của tài sản thế chấp:
  Mặc dù có sự giảm trong các khoản vay, giá trị tài sản thế chấp vẫn duy trì tương đối ổn định, với chỉ những giảm nhẹ trong suốt ba năm qua. Sự ổn định này cho thấy ngân hàng không quá quyết liệt trong việc thanh lý tài sản thế chấp và vẫn giữ vững được nền tảng tài sản vững mạnh.

- Xu hướng tăng trưởng:
  Sự giảm trong tỷ lệ tăng trưởng, đặc biệt là vào năm 2023, cho thấy ngân hàng đã chuyển trọng tâm từ việc mở rộng danh mục cho vay sang củng cố các tài sản hiện tại và có thể tập trung vào việc giảm thiểu rủi ro và thu hồi nợ. Sự chuyển dịch chiến lược này có thể phản ánh những thay đổi trong điều kiện thị trường hoặc là một quyết định nội bộ nhằm ưu tiên sức khỏe tài chính hơn là tăng trưởng.

Đề xuất:
- Chiến lược cho vay trong tương lai: Ngân hàng nên xem xét lại chính sách cho vay của mình để xác định các lĩnh vực có thể mở rộng danh mục cho vay một cách an toàn, đồng thời quản lý rủi ro hiệu quả.

- Quản lý tài sản thế chấp: Duy trì cơ sở tài sản thế chấp sẽ tiếp tục là điều quan trọng để giảm thiểu rủi ro liên quan đến các khoản vay không thanh toán. Đảm bảo rằng tài sản thế chấp được định giá và quản lý đúng cách sẽ bảo vệ tài sản của ngân hàng.

- Tập trung vào thu hồi nợ: Với sự sụt giảm lớn trong các khoản nợ chưa thanh toán, ngân hàng nên tập trung vào việc cải thiện hơn nữa công tác thu hồi nợ và quản lý các khoản nợ xấu (NPLs) nhằm đảm bảo sự ổn định tài chính trong tương lai.

Tóm lại, mặc dù sự giảm trong nợ tín dụng chưa thanh toán là đáng chú ý, nhưng sự ổn định của giá trị tài sản thế chấp cho thấy ngân hàng đang quản lý rủi ro tín dụng một cách hiệu quả.
