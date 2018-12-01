## Chương 1: Giới thiệu
### 1.1 Giới thiệu đề tài
Như chúng ta đã biết, mắt là bộ phận quan trọng trên cơ thể con người đóng vai trò là cơ quan đáp ứng với ánh sáng và giúp chúng quan sát mọi vật xung quanh. Trong đó, võng mạc đóng vai trò như một cuốn phim trong máy quay phim. Võng mạc có chức năng chuyển năng lượng ánh sáng thành thị lực và gửi thông tin ngược về não qua những dây thần kinh thị giác. Nếu giác mạc bị tổn hại có thể ảnh hưởng đến một phần hoặc làm mất hoàn toàn tầm nhìn của chủ thể.

Một số bệnh có thể được chẩn đoán thông qua các triệu chứng xuất hiện trên ảnh võng mạc, như bệnh tiểu đường (Diabetes), bệnh suy giảm thị lực do tiểu đường (Diabetic Retinopathy), bệnh tăng nhãn áp (Glaucoma), bệnh huyết áp cao (High Blood Pressure), bệnh ung thư mắt ... Một số triệu chứng của những bệnh trên có triệu chứng xuất hiện sớm trên hình ảnh võng mạc ở giai đoạn đầu, dẫn tới việc chẩn đoán trên ảnh võng mạc là một phương pháp hiệu quả để điều trị sớm, dẫn tới kết quả điều trị khả quan hơn. 

Việc thu thập ảnh võng mạc của bệnh nhân thường được thực hiện với thiết bị chuyên dụng là Kính soi đáy mắt (Ophthalmoscope). Kính soi đáy mắt chuyên dụng cho y tế thường có giá thành cao (> 300$), do vậy ở các cơ sở y tế ở vùng sâu vùng xa, ở những nơi không có đầy đủ cơ sở vật chất ... sẽ không có điều kiện áp dụng thiết bị này vào chẩn đoán. Một số phương pháp thay thế có thể được dùng để chụp ảnh võng mạc (ví dụ như chụp bằng camera của smartphone kết hợp với thấu kính - link : https://www.ncbi.nlm.nih.gov/pmc/articles/PMC5609317/), tuy nhiên độ chính xác và chất lượng sẽ không cao. Độ tương phản giữa mạch máu và vùng nền thấp, khó phân biệt được với nhau khiến việc chẩn đoán gặp khó khăn.

Việc dùng phần mềm để có thể tách phần mạch máu ra khỏi ảnh võng mạc có thể giúp ích cho bác sĩ chẩn đoán nhanh chóng phát hiện những dấu hiệu bất thường, từ đó đưa ra kết luận sớm chính xác hơn.

Trong đề tài luận văn này, chúng tôi sẽ đưa ra công cụ phân đoạn các mạch máu trong ảnh võng mạc mắt (dùng ảnh y khoa) và dựa vào đó để phát hiện một số bất thường trên võng mạc. Dựa vào kết quả đó để chuẩn đoán, đưa ra kết quá tổn thương võng mạc để lựa chọn phương pháp điều trị phù hợp với bệnh nhân.
### 1.2 Mục tiêu nội dung đề tài
Mục tiêu : Phát hiện bất thường trong ảnh võng mạc mát
Nội dung : Ảnh y khoa có vai trò quan trọng trong việc chẩn đoán các dị tật bất thường trong cơ thể bệnh nhân, đặc biệt là võng mạc mắt. Phần lớn ảnh y khoa có chất lượng kém nên việc phát hiện ra các bất thường có kích thước nhỏ và hình dạng bất thường bằng mắt thường là rất khó. Nội dung chính của đề tài này là nghiên cứu các phương pháp để phân đoạn các mạch máu trong ảnh võng mạc mắt.
### 1.3 Giới hạn đề tài
Đề tài này sử dụng ảnh y khoa của võng mạc mắt của một người bình thường, từ đó phân tích các mạch máu trong ảnh và tìm ra những bất thường nếu có.
### 1.4 Cấu trúc báo cáo
Được chia thành 4 chương có cấu trúc như sau : 
  - Chương 1 : Giới thiệu đề tài, nội dùng, giới hạn và cấu trúc đề tài
  - Chương 2 : Cơ sở lý thuyết và các nghiên cứu liên quan : (trong chương này tui sẽ thực hiện những gì ...)
  - Chương 3 : Phương pháp đề xuất giải quyết đề tài và đánh giá phương pháp
  - Chương 4 : Kết luận
## Chương 2: Cơ sở lý thuyết và các nghiên cứu liên quan
### 2.1 Cơ sở lý thuyết
Những lý thuyết liên quan tới đề tài
### 2.2 Các nghiên cứu liên quan
Đưa những bài báo đã đọc vào, bài báo nói những nội dung gì, ưu và nhược điểm của những phương pháp mà bài báo đề xuất, kết quả đạt được là gì
## Chương 3: Phương pháp đề xuất
### 3.1 Yêu cầu bài toán
Bài toán đề cương yêu cầu: Từ hình ảnh võng mạc mắt(input) ta có thê phân tích, tính toán và tìm ra được sự bất thường(output) từ đó có thể chẩn đoán được bệnh mà bệnh nhân đang mắc phải.
### 3.2 Phương pháp đề xuất
Sau một thời gian nghiên cứu và tìm kiếm, nhóm đề xuất phương pháp lọc tách mạch máu trong ảnh võng mạc và từ đó phát hiện ra bất thường bao gồm các bước sau:
#### 3.2.1 Tiền xử lý - Pre-processing:
  - Lọc lấy kênh màu xanh lá cây (green channel)
  - loại bỏ Optical Disk
  - Lọc nhiễu bằng Median Filter
  - Tăng cường độ tương phản bằng Constract-Limited Adaptive Histogram Equalization (CLAHE filter)
#### 3.2.2 Phân đoạn mạch máu - Blood vessel segmentation
  Ở bước phân đoạn mạch máu, nhóm có tìm hiểu một số phương pháp có thể khả thi để áp dụng :
  
   a) Mean-C Thresholding
   
   b) Gabor Filter
   
   c) Deep Learning CNN 
#### 3.2.3 Phát hiện bất thường 
  Với dữ liệu thu được ở bước phân đoạn, một số bất thường có thể phát hiện được :
##### 3.2.3.1 Suy giảm thị lực do tiểu đường - Diabetic Retinopathy
  Đối với bệnh suy giảm thị lực do tiểu đường, một triệu chứng có thể xảy ra là các mạch máu mới sẽ được sinh ra nhiều hơn dẫn tới diện tích của mạch máu tăng. Ta có thể dùng thống kê để xác định lượng mạch máu trên võng mạc là bình thường hay bất thường.

### 3.3 Phương pháp đánh giá
#### 3.3.1 Đánh giá bằng phương pháp định tính
  Ở phương pháp này chúng tôi định lượng các tiêu thức để đánh giá và có sự phân biệt mức độ quan trọng cho các tiêu thức. Trình tự thực hiện như sau:

 * Trước hết cần phải xác định được những tiêu chí cần đánh giá cho một ảnh đã xử lý.
   * Độ rõ mạch máu (đường đen) trong ảnh so với ảnh gốc (K1).
   * Mật độ mạch máu (đường đen) còn lại trong ảnh so với ảnh gốc (K2).
   * Địa thị (K3).

 *Ví dụ:*

|    Chuyên gia| K1 | K2 | K3 | Trung bình |
|--------------|:----:|:----:|:----:|:----:|
|Chuyên gia 1  | 7  | 8  | 7  |  7.3 |
|Chuyên gia 2  | 8  | 9  | 7  |  8   |
|Chuyên gia 3  | 9  | 9  | 9  |  9   |
|Trung bình    | 8  |8.7 |7.7 |  8.1 |

#### 3.3.2 Đánh giá bằng phương pháp định lượng

#### 3.3.2.1 Đánh giá phân đoạn mạch máu 
  
|                          | Mạch máu hiện diện | Mạch máu không hiện diện |
|--------------------------|--------------------|--------------------------|
|Xác định là mạch máu      |True positive (TP)  |False Positive (FP)       |
|Xác định không là mạch máu|False negative (FN) |True Negative (TN)        |

Sensitivity = TP/(TP+TN)

Specificity = FN(FN+FP)


## Chương 4: Kết luận (?)
### 4.1 Kết quả đạt được
Nội dung đề tài có bao nhiêu ý thì phần này có bấy nhiêu ý
### 4.2 Ưu và nhược điểm
Phương pháp đề xuất có ưu điểm gì, nhược điểm gì
### 4.3 Hướng mở rộng / công việc thực hiện trong luận văn
Muốn làm luận văn thì phải thực hiện những công việc gì ?
 - ...
 - ...
 - ...
