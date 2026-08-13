---
name: VietEduKit - Toán lớp 5 VN 2026-2027
module: math-grade-5-vn
version: 0.1.0-beta.1
last_verified: 2026-08-13
verification_status: provisional
language: vi
provider: generic
source_of_truth: false
license: CC-BY-SA-4.0
---

# VietEduKit — Toán lớp 5 Việt Nam 2026–2027

## Instructions for the AI model

Dùng toàn bộ file này như module tham chiếu bắt buộc khi tạo học liệu. Xác định đúng scope theo bài/chủ đề/học kỳ, chỉ dùng kiến thức đã học đến scope, tạo câu hỏi mới và chạy Quality Gate trước khi trả lời. Không sao chép nguyên văn bài tập SGK.

Khi người dùng yêu cầu tạo đề, phiếu, bài tập, bài luyện hoặc học liệu hoàn chỉnh: nếu nền tảng có document/artifact/canvas thì trình bày trong view đó; nếu không, trình bày rõ ràng ngay trong chat. Không tự tạo file PDF/DOCX trước khi người dùng chọn.

Các đường dẫn được nhắc trong nội dung là tên các phần nguồn đã được hợp nhất bên dưới; không yêu cầu người dùng tải thêm file.

> Đây là học liệu tham khảo, không phải tài liệu hoặc đề chính thức của Bộ Giáo dục và Đào tạo. Người lớn cần rà soát trước khi sử dụng với học sinh.

---

## Merged source: `core/assessment.md`

---
version: 1.0.0
language: vi
scope: primary-education
source_ref: TOAN3_SKILL_v1_1_VERIFIED_20260812.md#2
---

# Đánh giá dùng chung

## Mức độ câu hỏi

Khi thiết kế câu hỏi đánh giá theo Điều 7 Thông tư 27/2020/TT-BGDĐT, dùng:

- **M1 – Nhận biết/áp dụng trực tiếp:** nhận biết, nhắc lại hoặc mô tả nội dung đã học và áp dụng trực tiếp trong tình huống quen thuộc.
- **M2 – Kết nối:** kết nối, sắp xếp một số nội dung đã học để giải quyết vấn đề có nội dung tương tự.
- **M3 – Vận dụng:** vận dụng nội dung đã học để giải quyết vấn đề mới hoặc đưa ra phản hồi hợp lý trong học tập và cuộc sống.

Không gắn M3 chỉ vì số liệu lớn hơn. Tỉ lệ M1/M2/M3 do từng module đề xuất là quy ước thiết kế nội bộ, không được gọi là tỉ lệ bắt buộc của Bộ GDĐT.

## Phân biệt mục đích

Phân biệt rõ:

- **luyện tập/ôn tập:** có thể không chấm điểm; nếu người dùng yêu cầu thang điểm thì tổng phải đúng thang;
- **mô phỏng bài kiểm tra định kỳ:** áp dụng đúng rule đánh giá và chấm điểm của module lớp/môn;
- **đề chính thức:** hệ thống không được tự nhận đầu ra là đề chính thức của cơ quan quản lý giáo dục.

Tên gọi người dùng cung cấp không tự động làm thay đổi bản chất pháp lý của sản phẩm. Module lớp/môn phải quy định các trường hợp dễ nhầm.

---

## Merged source: `core/question-design.md`

---
version: 1.0.0
language: vi
source_ref: TOAN3_SKILL_v1_1_VERIFIED_20260812.md#7
---

# Thiết kế câu hỏi

1. Dùng câu chữ ngắn, phù hợp độ tuổi do module quy định.
2. Mỗi câu nên kiểm tra một mục tiêu chính, trừ bài vận dụng.
3. Không dùng dữ kiện thừa để đánh đố nếu mục tiêu không phải đọc hiểu dữ liệu.
4. Ưu tiên bối cảnh gần gũi, tránh tên riêng hoặc tình huống gây phân tâm.
5. Dùng số liệu hợp lý trong các bài tiền, số lượng và đo lường.
6. Với single-choice, chỉ có một đáp án đúng; phương án nhiễu bắt nguồn từ lỗi thường gặp, không vô lý hoặc dễ loại chỉ bằng hình thức.
7. Hình phải đủ thông tin; không suy luận từ vẻ ngoài nếu đề không cho dữ kiện.
8. Bảng số liệu phải có tiêu đề/cột rõ và mọi câu hỏi phải trả lời được từ dữ liệu đã cho.
9. Không lặp cùng một cấu trúc số quá nhiều trong một đề.
10. Có ít nhất một câu gắn thực tế nếu phạm vi cho phép.

Khi tạo nhiều mã đề, giữ cùng ma trận, mức độ và số điểm; tạo biến thể tương đương thật sự và kiểm tra đáp án riêng, không chỉ đảo A/B/C/D.

---

## Merged source: `core/output-format.md`

---
version: 1.0.0
language: vi
source_ref: TOAN3_SKILL_v1_1_VERIFIED_20260812.md#5,#9,#15
---

# Contract đầu vào và đầu ra

## Tham số yêu cầu

Trích xuất khi có:

- `scope`: bài, chủ đề, tuần, học kỳ, cả năm hoặc danh sách kiến thức;
- `mode`: loại phiếu/đề/luyện theo lỗi sai;
- `num_questions`, `duration`, `difficulty`, `level_mix`;
- `formats`: trắc nghiệm, điền đáp án, đặt tính, tự luận, lời văn, hình học, bảng số liệu;
- `answer_mode`: không đáp án, đáp án ngắn, lời giải chi tiết, đáp án tách riêng;
- `matrix`: `yes`, `no` hoặc `auto`;
- `printable`: có/không định dạng để in.

Không hỏi lại nếu vẫn có thể tạo sản phẩm hợp lý. Module môn/lớp định nghĩa default cụ thể.

## Cấu trúc mặc định

Nếu người dùng chỉ yêu cầu “ra một đề”, ưu tiên:

```text
TÊN ĐỀ
Phạm vi: ...
Thời gian: ... phút

A. CƠ BẢN
...

B. THỰC HÀNH / TỰ LUẬN
...

C. VẬN DỤNG
...

--------------------
ĐÁP ÁN
...

MA TRẬN NGẮN
...
```

Chỉ thêm đáp án nếu `answer_mode` cho phép. Nếu người dùng yêu cầu “chỉ đề”, tuyệt đối không thêm đáp án.

Ma trận ngắn, khi cần, gồm: Câu, Nội dung, Yêu cầu cần đạt, Mức M1/M2/M3, Điểm.

---

## Merged source: `core/quality-gate.md`

---
version: 1.0.0
language: vi
source_ref: TOAN3_SKILL_v1_1_VERIFIED_20260812.md#12
---

# Quality Gate dùng chung

Tự kiểm tra trước khi xuất và sửa mọi lỗi phát hiện được.

## Nội dung và dữ kiện

- [ ] Không có nội dung ngoài scope người dùng yêu cầu.
- [ ] Mọi phép tính, chuyển đổi và công thức đã được kiểm tra lại.
- [ ] Dữ kiện không mâu thuẫn hoặc mơ hồ.
- [ ] Single-choice chỉ có một đáp án đúng.

## Đánh giá

- [ ] M1/M2/M3 đúng bản chất câu hỏi, không dựa riêng vào độ lớn số liệu.
- [ ] Không gọi tỉ lệ thiết kế nội bộ là tỉ lệ bắt buộc của Bộ GDĐT.
- [ ] Độ phân hóa không biến thành đánh đố hoặc kiến thức ngoài scope.
- [ ] Đã phân biệt đúng luyện tập/ôn tập với kiểm tra định kỳ.

## Trình bày

- [ ] Ngôn ngữ phù hợp độ tuổi.
- [ ] Đề và đáp án tách rõ.
- [ ] Không để lộ đáp án trong câu hỏi.
- [ ] Nếu có điểm, tổng đúng thang điểm yêu cầu.

Luôn chạy thêm Quality Gate của module môn/lớp.

---

## Merged source: `subjects/math/grade-5/skill.md`

---
name: toan-lop-5-vn-2026-2027
description: Tạo phiếu luyện tập và đề kiểm tra tham khảo Toán lớp 5 Việt Nam năm học 2026–2027 theo Chương trình GDPT hiện hành và SGK Kết nối tri thức với cuộc sống; dùng khi cần học liệu đúng phạm vi bài, chủ đề hoặc học kỳ lớp 5.
version: 0.1.0-beta.1
last_verified: 2026-08-13
language: vi
grade: 5
subject: Toán
school_year: 2026-2027
verification_status: provisional
---

# Tạo học liệu Toán lớp 5

1. Áp dụng quy tắc trong `core/`.
2. Khóa scope bằng `textbook-mapping.yaml`.
3. Chỉ mở từng kỹ năng theo mốc bài trong `curriculum.md`.
4. Áp dụng `assessment.md`, `output-format.md` và hai Quality Gate.
5. Tạo câu hỏi mới; kiểm lại phân số, số thập phân, phần trăm, đơn vị, công thức và tổng điểm.

Yêu cầu theo tuần không có kế hoạch trường phải được ghi là ước lượng.

---

## Merged source: `subjects/math/grade-5/curriculum.md`

---
module: math-grade-5-vn
version: 0.1.0-beta.1
last_verified: 2026-08-13
school_year: 2026-2027
language: vi
textbook: Kết nối tri thức với cuộc sống
verification_status: provisional-secondary-mapping
---

# Phạm vi kiến thức Toán lớp 5

## Số và phép tính

- Ôn tập số tự nhiên và bốn phép tính; không dùng số âm, lũy thừa, căn, biến đổi đại số hoặc phương trình cấp THCS.
- Phân số: ôn tập và thực hiện phép tính theo scope; mẫu số và số chia luôn khác 0.
- Phân số thập phân từ Bài 4; hỗn số từ Bài 7.
- Số thập phân từ Bài 10; cộng, trừ, nhân, chia số thập phân lần lượt từ Bài 19–22.
- Làm tròn số thập phân và viết số đo dưới dạng số thập phân theo bài đã học.
- Với phép chia số tự nhiên có dư, số dư phải nhỏ hơn số chia.

## Tỉ số và phần trăm

- Tỉ số và tỉ số phần trăm từ Bài 36.
- Tỉ lệ bản đồ từ Bài 37; bài toán tổng–tỉ và hiệu–tỉ từ Bài 38–39.
- Tìm tỉ số phần trăm của hai số từ Bài 40; tìm giá trị phần trăm của một số từ Bài 41.
- Không dùng lãi kép, phương trình phần trăm hoặc nội dung tài chính cấp trên.

## Hình học và đo lường

- Diện tích tam giác từ Bài 25, hình thang từ Bài 26; chu vi và diện tích hình tròn từ Bài 27.
- Ki-lô-mét vuông, héc-ta và các đơn vị diện tích theo scope.
- Thể tích, cm³, dm³, m³ từ Bài 45–47.
- Diện tích xung quanh/toàn phần và thể tích hình hộp chữ nhật, hình lập phương theo Bài 49–55.
- Không dùng định lý hình học, số pi vượt quá quy ước tiểu học hoặc hình học tọa độ.

## Thời gian và chuyển động đều

- Cộng, trừ, nhân, chia số đo thời gian từ Bài 56–58.
- Vận tốc từ Bài 59; quãng đường và thời gian từ Bài 60.
- Chỉ dùng chuyển động đều cơ bản; không dùng đồ thị hàm số, gia tốc hoặc phương trình vật lý cấp trên.

## Thống kê và xác suất

- Thu thập, phân loại, sắp xếp số liệu; biểu đồ hình quạt tròn.
- Tỉ số số lần lặp lại một sự kiện so với tổng số lần thực hiện từ Bài 65.
- Không suy diễn thành xác suất lý thuyết hoặc tổ hợp cấp THCS.

## Độ phức tạp

- Bài toán lời văn mặc định tối đa **4 bước tính** và mỗi bước phải cần thiết.
- Mức nâng cao tăng yêu cầu lập luận/kết nối trong chương trình lớp 5, không thêm kiến thức lớp 6.
- Không dùng bất kỳ nội dung nào trước bài mở khóa tương ứng.

---

## Merged source: `subjects/math/grade-5/textbook-mapping.yaml`

schema_version: 1
module: math-grade-5-vn
version: 0.1.0-beta.1
last_verified: 2026-08-13
verification_status: provisional-secondary-mapping
school_year: 2026-2027
grade: 5
subject: math
language: vi
textbook: Kết nối tri thức với cuộc sống
lesson_count: 75
topics:
  - {id: 1, semester: 1, volume: 1, title: "Ôn tập và bổ sung", lesson_from: 1, lesson_to: 9}
  - {id: 2, semester: 1, volume: 1, title: "Số thập phân", lesson_from: 10, lesson_to: 14}
  - {id: 3, semester: 1, volume: 1, title: "Một số đơn vị đo diện tích", lesson_from: 15, lesson_to: 18}
  - {id: 4, semester: 1, volume: 1, title: "Các phép tính với số thập phân", lesson_from: 19, lesson_to: 24}
  - {id: 5, semester: 1, volume: 1, title: "Một số hình phẳng. Chu vi và diện tích", lesson_from: 25, lesson_to: 29}
  - {id: 6, semester: 1, volume: 1, title: "Ôn tập học kì 1", lesson_from: 30, lesson_to: 35}
  - {id: 7, semester: 2, volume: 2, title: "Tỉ số và các bài toán liên quan", lesson_from: 36, lesson_to: 44}
  - {id: 8, semester: 2, volume: 2, title: "Thể tích. Đơn vị đo thể tích", lesson_from: 45, lesson_to: 48}
  - {id: 9, semester: 2, volume: 2, title: "Diện tích và thể tích của một số hình khối", lesson_from: 49, lesson_to: 55}
  - {id: 10, semester: 2, volume: 2, title: "Số đo thời gian, vận tốc và chuyển động đều", lesson_from: 56, lesson_to: 62}
  - {id: 11, semester: 2, volume: 2, title: "Một số yếu tố thống kê và xác suất", lesson_from: 63, lesson_to: 67}
  - {id: 12, semester: 2, volume: 2, title: "Ôn tập cuối năm", lesson_from: 68, lesson_to: 75}
lessons:
  - {id: math-g5-kntt-001, grade: 5, subject: math, semester: 1, volume: 1, topic: 1, lesson: 1, title: "Ôn tập số tự nhiên"}
  - {id: math-g5-kntt-002, grade: 5, subject: math, semester: 1, volume: 1, topic: 1, lesson: 2, title: "Ôn tập các phép tính với số tự nhiên"}
  - {id: math-g5-kntt-003, grade: 5, subject: math, semester: 1, volume: 1, topic: 1, lesson: 3, title: "Ôn tập phân số"}
  - {id: math-g5-kntt-004, grade: 5, subject: math, semester: 1, volume: 1, topic: 1, lesson: 4, title: "Phân số thập phân"}
  - {id: math-g5-kntt-005, grade: 5, subject: math, semester: 1, volume: 1, topic: 1, lesson: 5, title: "Ôn tập các phép tính với phân số"}
  - {id: math-g5-kntt-006, grade: 5, subject: math, semester: 1, volume: 1, topic: 1, lesson: 6, title: "Cộng, trừ hai phân số khác mẫu số"}
  - {id: math-g5-kntt-007, grade: 5, subject: math, semester: 1, volume: 1, topic: 1, lesson: 7, title: "Hỗn số"}
  - {id: math-g5-kntt-008, grade: 5, subject: math, semester: 1, volume: 1, topic: 1, lesson: 8, title: "Ôn tập hình học và đo lường"}
  - {id: math-g5-kntt-009, grade: 5, subject: math, semester: 1, volume: 1, topic: 1, lesson: 9, title: "Luyện tập chung"}
  - {id: math-g5-kntt-010, grade: 5, subject: math, semester: 1, volume: 1, topic: 2, lesson: 10, title: "Khái niệm số thập phân"}
  - {id: math-g5-kntt-011, grade: 5, subject: math, semester: 1, volume: 1, topic: 2, lesson: 11, title: "So sánh các số thập phân"}
  - {id: math-g5-kntt-012, grade: 5, subject: math, semester: 1, volume: 1, topic: 2, lesson: 12, title: "Viết số đo đại lượng dưới dạng số thập phân"}
  - {id: math-g5-kntt-013, grade: 5, subject: math, semester: 1, volume: 1, topic: 2, lesson: 13, title: "Làm tròn số thập phân"}
  - {id: math-g5-kntt-014, grade: 5, subject: math, semester: 1, volume: 1, topic: 2, lesson: 14, title: "Luyện tập chung"}
  - {id: math-g5-kntt-015, grade: 5, subject: math, semester: 1, volume: 1, topic: 3, lesson: 15, title: "Ki-lô-mét vuông. Héc-ta"}
  - {id: math-g5-kntt-016, grade: 5, subject: math, semester: 1, volume: 1, topic: 3, lesson: 16, title: "Các đơn vị đo diện tích"}
  - {id: math-g5-kntt-017, grade: 5, subject: math, semester: 1, volume: 1, topic: 3, lesson: 17, title: "Thực hành và trải nghiệm với một số đơn vị đo đại lượng"}
  - {id: math-g5-kntt-018, grade: 5, subject: math, semester: 1, volume: 1, topic: 3, lesson: 18, title: "Luyện tập chung"}
  - {id: math-g5-kntt-019, grade: 5, subject: math, semester: 1, volume: 1, topic: 4, lesson: 19, title: "Phép cộng số thập phân"}
  - {id: math-g5-kntt-020, grade: 5, subject: math, semester: 1, volume: 1, topic: 4, lesson: 20, title: "Phép trừ số thập phân"}
  - {id: math-g5-kntt-021, grade: 5, subject: math, semester: 1, volume: 1, topic: 4, lesson: 21, title: "Phép nhân số thập phân"}
  - {id: math-g5-kntt-022, grade: 5, subject: math, semester: 1, volume: 1, topic: 4, lesson: 22, title: "Phép chia số thập phân"}
  - {id: math-g5-kntt-023, grade: 5, subject: math, semester: 1, volume: 1, topic: 4, lesson: 23, title: "Nhân, chia số thập phân với 10; 100; 1000;... hoặc với 0,1; 0,01; 0,001; ..."}
  - {id: math-g5-kntt-024, grade: 5, subject: math, semester: 1, volume: 1, topic: 4, lesson: 24, title: "Luyện tập chung"}
  - {id: math-g5-kntt-025, grade: 5, subject: math, semester: 1, volume: 1, topic: 5, lesson: 25, title: "Hình tam giác. Diện tích hình tam giác"}
  - {id: math-g5-kntt-026, grade: 5, subject: math, semester: 1, volume: 1, topic: 5, lesson: 26, title: "Hình thang. Diện tích hình thang"}
  - {id: math-g5-kntt-027, grade: 5, subject: math, semester: 1, volume: 1, topic: 5, lesson: 27, title: "Đường tròn. Chu vi và diện tích hình tròn"}
  - {id: math-g5-kntt-028, grade: 5, subject: math, semester: 1, volume: 1, topic: 5, lesson: 28, title: "Thực hành và trải nghiệm đo, vẽ, lắp ghép, tạo hình"}
  - {id: math-g5-kntt-029, grade: 5, subject: math, semester: 1, volume: 1, topic: 5, lesson: 29, title: "Luyện tập chung"}
  - {id: math-g5-kntt-030, grade: 5, subject: math, semester: 1, volume: 1, topic: 6, lesson: 30, title: "Ôn tập số thập phân"}
  - {id: math-g5-kntt-031, grade: 5, subject: math, semester: 1, volume: 1, topic: 6, lesson: 31, title: "Ôn tập các phép tính với số thập phân"}
  - {id: math-g5-kntt-032, grade: 5, subject: math, semester: 1, volume: 1, topic: 6, lesson: 32, title: "Ôn tập một số hình phẳng"}
  - {id: math-g5-kntt-033, grade: 5, subject: math, semester: 1, volume: 1, topic: 6, lesson: 33, title: "Ôn tập diện tích, chu vi một số hình phẳng"}
  - {id: math-g5-kntt-034, grade: 5, subject: math, semester: 1, volume: 1, topic: 6, lesson: 34, title: "Ôn tập đo lường"}
  - {id: math-g5-kntt-035, grade: 5, subject: math, semester: 1, volume: 1, topic: 6, lesson: 35, title: "Ôn tập chung"}
  - {id: math-g5-kntt-036, grade: 5, subject: math, semester: 2, volume: 2, topic: 7, lesson: 36, title: "Tỉ số. Tỉ số phần trăm"}
  - {id: math-g5-kntt-037, grade: 5, subject: math, semester: 2, volume: 2, topic: 7, lesson: 37, title: "Tỉ lệ bản đồ và ứng dụng"}
  - {id: math-g5-kntt-038, grade: 5, subject: math, semester: 2, volume: 2, topic: 7, lesson: 38, title: "Tìm hai số khi biết tổng và tỉ số của hai số đó"}
  - {id: math-g5-kntt-039, grade: 5, subject: math, semester: 2, volume: 2, topic: 7, lesson: 39, title: "Tìm hai số khi biết hiệu và tỉ số của hai số đó"}
  - {id: math-g5-kntt-040, grade: 5, subject: math, semester: 2, volume: 2, topic: 7, lesson: 40, title: "Tìm tỉ số phần trăm của hai số"}
  - {id: math-g5-kntt-041, grade: 5, subject: math, semester: 2, volume: 2, topic: 7, lesson: 41, title: "Tìm giá trị phần trăm của một số"}
  - {id: math-g5-kntt-042, grade: 5, subject: math, semester: 2, volume: 2, topic: 7, lesson: 42, title: "Máy tính cầm tay"}
  - {id: math-g5-kntt-043, grade: 5, subject: math, semester: 2, volume: 2, topic: 7, lesson: 43, title: "Thực hành và trải nghiệm sử dụng máy tính cầm tay"}
  - {id: math-g5-kntt-044, grade: 5, subject: math, semester: 2, volume: 2, topic: 7, lesson: 44, title: "Luyện tập chung"}
  - {id: math-g5-kntt-045, grade: 5, subject: math, semester: 2, volume: 2, topic: 8, lesson: 45, title: "Thể tích của một hình"}
  - {id: math-g5-kntt-046, grade: 5, subject: math, semester: 2, volume: 2, topic: 8, lesson: 46, title: "Xăng-ti-mét khối. Đề-xi-mét khối"}
  - {id: math-g5-kntt-047, grade: 5, subject: math, semester: 2, volume: 2, topic: 8, lesson: 47, title: "Mét khối"}
  - {id: math-g5-kntt-048, grade: 5, subject: math, semester: 2, volume: 2, topic: 8, lesson: 48, title: "Luyện tập chung"}
  - {id: math-g5-kntt-049, grade: 5, subject: math, semester: 2, volume: 2, topic: 9, lesson: 49, title: "Hình khai triển của hình lập phương, hình hộp chữ nhật và hình trụ"}
  - {id: math-g5-kntt-050, grade: 5, subject: math, semester: 2, volume: 2, topic: 9, lesson: 50, title: "Diện tích xung quanh và diện tích toàn phần của hình hộp chữ nhật"}
  - {id: math-g5-kntt-051, grade: 5, subject: math, semester: 2, volume: 2, topic: 9, lesson: 51, title: "Diện tích xung quanh và diện tích toàn phần của hình lập phương"}
  - {id: math-g5-kntt-052, grade: 5, subject: math, semester: 2, volume: 2, topic: 9, lesson: 52, title: "Thể tích của hình hộp chữ nhật"}
  - {id: math-g5-kntt-053, grade: 5, subject: math, semester: 2, volume: 2, topic: 9, lesson: 53, title: "Thể tích của hình lập phương"}
  - {id: math-g5-kntt-054, grade: 5, subject: math, semester: 2, volume: 2, topic: 9, lesson: 54, title: "Thực hành tính toán và ước lượng thể tích một số hình khối"}
  - {id: math-g5-kntt-055, grade: 5, subject: math, semester: 2, volume: 2, topic: 9, lesson: 55, title: "Luyện tập chung"}
  - {id: math-g5-kntt-056, grade: 5, subject: math, semester: 2, volume: 2, topic: 10, lesson: 56, title: "Các đơn vị đo thời gian"}
  - {id: math-g5-kntt-057, grade: 5, subject: math, semester: 2, volume: 2, topic: 10, lesson: 57, title: "Cộng, trừ số đo thời gian"}
  - {id: math-g5-kntt-058, grade: 5, subject: math, semester: 2, volume: 2, topic: 10, lesson: 58, title: "Nhân, chia số đo thời gian với một số"}
  - {id: math-g5-kntt-059, grade: 5, subject: math, semester: 2, volume: 2, topic: 10, lesson: 59, title: "Vận tốc của một chuyển động đều"}
  - {id: math-g5-kntt-060, grade: 5, subject: math, semester: 2, volume: 2, topic: 10, lesson: 60, title: "Quãng đường, thời gian của một chuyển động đều"}
  - {id: math-g5-kntt-061, grade: 5, subject: math, semester: 2, volume: 2, topic: 10, lesson: 61, title: "Thực hành tính toán và ước lượng về vận tốc, quãng đường, thời gian trong chuyển động đều"}
  - {id: math-g5-kntt-062, grade: 5, subject: math, semester: 2, volume: 2, topic: 10, lesson: 62, title: "Luyện tập chung"}
  - {id: math-g5-kntt-063, grade: 5, subject: math, semester: 2, volume: 2, topic: 11, lesson: 63, title: "Thu thập, phân loại, sắp xếp các số liệu"}
  - {id: math-g5-kntt-064, grade: 5, subject: math, semester: 2, volume: 2, topic: 11, lesson: 64, title: "Biểu đồ hình quạt tròn"}
  - {id: math-g5-kntt-065, grade: 5, subject: math, semester: 2, volume: 2, topic: 11, lesson: 65, title: "Tỉ số của số lần lặp lại một sự kiện so với tổng số lần thực hiện"}
  - {id: math-g5-kntt-066, grade: 5, subject: math, semester: 2, volume: 2, topic: 11, lesson: 66, title: "Thực hành và trải nghiệm thu thập, phân tích, biểu diễn các số liệu thống kê"}
  - {id: math-g5-kntt-067, grade: 5, subject: math, semester: 2, volume: 2, topic: 11, lesson: 67, title: "Luyện tập chung"}
  - {id: math-g5-kntt-068, grade: 5, subject: math, semester: 2, volume: 2, topic: 12, lesson: 68, title: "Ôn tập số tự nhiên, phân số, số thập phân"}
  - {id: math-g5-kntt-069, grade: 5, subject: math, semester: 2, volume: 2, topic: 12, lesson: 69, title: "Ôn tập các phép tính với số tự nhiên, phân số, số thập phân"}
  - {id: math-g5-kntt-070, grade: 5, subject: math, semester: 2, volume: 2, topic: 12, lesson: 70, title: "Ôn tập tỉ số, tỉ số phần trăm"}
  - {id: math-g5-kntt-071, grade: 5, subject: math, semester: 2, volume: 2, topic: 12, lesson: 71, title: "Ôn tập hình học"}
  - {id: math-g5-kntt-072, grade: 5, subject: math, semester: 2, volume: 2, topic: 12, lesson: 72, title: "Ôn tập đo lường"}
  - {id: math-g5-kntt-073, grade: 5, subject: math, semester: 2, volume: 2, topic: 12, lesson: 73, title: "Ôn tập toán chuyển động đều"}
  - {id: math-g5-kntt-074, grade: 5, subject: math, semester: 2, volume: 2, topic: 12, lesson: 74, title: "Ôn tập một số yếu tố thống kê và xác suất"}
  - {id: math-g5-kntt-075, grade: 5, subject: math, semester: 2, volume: 2, topic: 12, lesson: 75, title: "Ôn tập chung"}

---

## Merged source: `subjects/math/grade-5/assessment.md`

---
module: math-grade-5-vn
version: 0.1.0-beta.1
last_verified: 2026-08-13
assessment: Thông tư 27/2020/TT-BGDĐT
---

# Assessment Toán lớp 5

- Mặc định: đề ôn tập, 40 phút, mức chuẩn, đáp án tách riêng.
- Gợi ý mức chuẩn: M1 45%, M2 40%, M3 15%; đây là quy ước nội bộ.
- TT27 quy định lớp 4 và lớp 5 có thêm bài kiểm tra định kỳ môn Toán giữa học kỳ I và giữa học kỳ II.
- Khi người dùng yêu cầu “đề giữa kỳ”, phân biệt đề ôn tập với mô phỏng kiểm tra định kỳ; nếu nói rõ TT27/định kỳ, áp dụng dạng định kỳ.
- Bài kiểm tra định kỳ dùng thang 10, điểm cuối không dạng thập phân và tổng điểm câu đúng 10.

---

## Merged source: `subjects/math/grade-5/output-format.md`

# Định dạng đầu ra Toán lớp 5

- Ghi loại đề, scope, thời lượng, thang điểm.
- Tách đề, đáp án và hướng dẫn chấm.
- Dùng dấu phẩy làm dấu thập phân trong văn bản tiếng Việt; giữ ký hiệu nhất quán.
- Nêu đơn vị trong đáp số; kiểm tra chuyển đổi đơn vị và công thức hình học.
- Không tự nhận là đề/tài liệu chính thức; thêm nhãn beta/provisional ngắn.

---

## Merged source: `subjects/math/grade-5/quality-gate.md`

---
module: math-grade-5-vn
version: 0.1.0-beta.1
last_verified: 2026-08-13
---

# Quality Gate Toán lớp 5

- [ ] Không có số âm, lũy thừa, căn, phương trình hoặc kiến thức lớp 6.
- [ ] Phân số, số thập phân, phần trăm, hình học, thể tích và chuyển động chỉ xuất hiện sau đúng bài mở khóa.
- [ ] Mọi mẫu số/số chia khác 0; chia có dư thỏa số dư < số chia.
- [ ] Phép tính phân số, thập phân, phần trăm và thời gian đã kiểm lại.
- [ ] Công thức diện tích, chu vi, thể tích và đơn vị đúng.
- [ ] Bài toán lời văn không quá 4 bước tính mặc định.
- [ ] Không có nội dung của bài sau scope.
- [ ] Phân loại đề giữa kỳ lớp 5 đúng TT27.
- [ ] Tổng điểm đúng thang; điểm cuối bài định kỳ không dạng thập phân.

---

This bundle is generated from the source of truth in `core/` and `subjects/`. Do not edit the bundle to change curriculum.
