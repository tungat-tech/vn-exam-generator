---
module: math-grade-3-vn
version: 1.1.0
source_version: "1.1"
last_verified: 2026-08-12
assessment: Thông tư 27/2020/TT-BGDĐT
---

# Assessment Toán lớp 3

Áp dụng định nghĩa M1/M2/M3 trong `core/assessment.md`.

## Phân biệt giữa học kỳ và kiểm tra định kỳ

Nếu người dùng chỉ nói “giữa học kỳ” lớp 3, tạo và gọi là **Đề ôn tập giữa học kỳ** hoặc **Bài luyện tập giữa học kỳ**; không tự gắn nhãn bài kiểm tra định kỳ bắt buộc theo Thông tư 27.

Theo rule của nguồn v1.1: với môn bắt buộc lớp 3, bài kiểm tra định kỳ được tổ chức cuối học kỳ I và cuối năm học; quy định thêm kiểm tra định kỳ giữa học kỳ I/II cho Toán và Tiếng Việt áp dụng với lớp 4 và lớp 5.

## Default

- `mode = đề ôn tập`
- `scope = nội dung vừa nhắc`; nếu không có, ôn tập tổng hợp lớp 3
- `duration = 40 phút`
- `difficulty = chuẩn`
- `answer_mode = đáp án tách riêng sau đề`
- `matrix = auto`: thêm ma trận ngắn cho đề kiểm tra/đề tổng hợp cuối HKI/cuối năm hoặc khi được yêu cầu; không tự thêm cho phiếu ngắn, luyện một kĩ năng hay “chỉ bài tập”
- `printable = có`

## Difficulty mix

Đây là quy ước của skill, không phải tỉ lệ bắt buộc toàn quốc.

| Mức | M1 | M2 | M3 |
|---|---:|---:|---:|
| Dễ | 60% | 30% | 10% |
| Chuẩn | 45% | 40% | 15% |
| Khá | 35% | 45% | 20% |
| Nâng cao trong lớp 3 | 25% | 45% | 30% |

Nâng cao phải tăng kết nối, suy luận và ngữ cảnh, không dùng kiến thức lớp trên.

## Cấu trúc đề Toán 3

- **A — Cơ bản:** trắc nghiệm/điền nhanh; số, phép tính, đơn vị, nhận biết hình.
- **B — Thực hành:** đặt tính, biểu thức, thành phần chưa biết, đổi đơn vị hoặc chu vi/diện tích nếu trong scope.
- **C — Vận dụng:** 1–2 bài toán lời văn tối đa 2 bước; có thể thêm một bài dữ liệu/hình học/thực tế.
- **Đáp án:** đáp án ngắn cho khách quan; bước tính cho tự luận; lời giải và đáp số cho bài lời văn.

## Chấm điểm

Với luyện tập/ôn tập yêu cầu thang 10:

- tổng đúng **10**;
- có thể dùng điểm thành phần 0,5; 1; 1,5; 2;
- ghi điểm từng ý nếu yêu cầu hướng dẫn chấm;
- cộng kiểm tra tổng trước khi xuất.

Với yêu cầu **mô phỏng bài kiểm tra định kỳ theo Thông tư 27**:

- thể hiện theo **thang điểm 10**;
- **không xuất điểm bài kiểm tra cuối dạng thập phân**;
- ưu tiên biểu điểm cho phép giáo viên ghi điểm cuối bằng số nguyên; không gọi 0,5 điểm là “quy định của Bộ”;
- phân biệt rõ với đề ôn tập.

Nếu không yêu cầu thang điểm, có thể bỏ điểm.
