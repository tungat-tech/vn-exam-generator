---
name: VietEduKit - Toán lớp 1 VN 2026-2027
module: math-grade-1-vn
version: 0.1.0-beta.1
last_verified: 2026-08-13
verification_status: provisional
language: vi
provider: generic
source_of_truth: false
license: CC-BY-SA-4.0
---

# VietEduKit — Toán lớp 1 Việt Nam 2026–2027

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

## Merged source: `subjects/math/grade-1/skill.md`

---
name: toan-lop-1-vn-2026-2027
description: Tạo phiếu luyện tập và đề ôn tập Toán lớp 1 Việt Nam năm học 2026–2027 theo Chương trình GDPT hiện hành và SGK Kết nối tri thức với cuộc sống; dùng khi giáo viên hoặc phụ huynh cần học liệu đúng phạm vi lớp 1.
version: 0.1.0-beta.1
last_verified: 2026-08-13
language: vi
grade: 1
subject: Toán
school_year: 2026-2027
verification_status: provisional
---

# Tạo học liệu Toán lớp 1

Tạo câu ngắn, trực quan, phù hợp học sinh 6–7 tuổi. Không tăng độ khó bằng kiến thức lớp 2 trở lên.

## Quy trình bắt buộc

1. Áp dụng các quy tắc dùng chung trong `core/`.
2. Xác định bài/chủ đề/học kỳ bằng `textbook-mapping.yaml`.
3. Chỉ dùng nội dung trong `curriculum.md` đã xuất hiện đến hết scope.
4. Áp dụng `assessment.md` và `output-format.md`.
5. Tạo câu hỏi mới, không sao chép nguyên văn SGK.
6. Chạy Quality Gate chung và riêng trước khi xuất.

Nếu người dùng yêu cầu theo tuần nhưng không cung cấp kế hoạch dạy học của trường, phải ghi rõ phạm vi tuần chỉ là ước lượng theo thứ tự SGK.

---

## Merged source: `subjects/math/grade-1/curriculum.md`

---
module: math-grade-1-vn
version: 0.1.0-beta.1
last_verified: 2026-08-13
school_year: 2026-2027
language: vi
textbook: Kết nối tri thức với cuộc sống
verification_status: provisional-secondary-mapping
---

# Phạm vi kiến thức Toán lớp 1

Đây là hàng rào cả năm. Với scope theo bài, chỉ dùng kiến thức đã xuất hiện đến bài cuối của scope đó.

## Số và phép tính

- Đếm, đọc, viết, cấu tạo, so sánh và sắp xếp số trong phạm vi **100**.
- Cộng, trừ trong phạm vi **10**; cộng, trừ **không nhớ** trong phạm vi 100 theo dạng đã học.
- Không dùng cộng hoặc trừ có nhớ trong phạm vi 100 như kỹ năng chính.
- Không dùng phép nhân, phép chia, phân số, số thập phân, phần trăm hoặc số âm.
- Bài toán có lời văn tối đa **1 bước tính**, dùng cộng hoặc trừ trong phạm vi đã học.

## Hình học và vị trí

- Nhận biết hình vuông, hình tròn, hình tam giác, hình chữ nhật.
- Nhận biết trực quan khối lập phương và khối hộp chữ nhật.
- Ghép, xếp hình; mô tả vị trí và định hướng đơn giản.
- Không yêu cầu góc, chu vi, diện tích, đường gấp khúc hoặc chứng minh hình học.

## Đo lường và thời gian

- So sánh dài hơn, ngắn hơn; đo và ước lượng độ dài đơn giản, dùng xăng-ti-mét khi đã học.
- Xem giờ đúng; nhận biết các ngày trong tuần; thực hành xem lịch đơn giản.
- Không dùng đổi đơn vị phức tạp, khối lượng, dung tích hoặc tiền như kỹ năng chính nếu scope SGK chưa có.

## Quy tắc vừa sức

- Ưu tiên đồ vật, tranh hoặc mô tả trực quan; không phụ thuộc khả năng đọc đoạn văn dài.
- Một yêu cầu chỉ có một nhiệm vụ chính; dữ kiện ngắn và đủ.
- Mức M3 thay đổi cách biểu diễn hoặc yêu cầu giải thích ngắn, không thêm kiến thức lớp trên.
- Không dùng nội dung của bài nằm sau scope.

---

## Merged source: `subjects/math/grade-1/textbook-mapping.yaml`

schema_version: 1
module: math-grade-1-vn
version: 0.1.0-beta.1
last_verified: 2026-08-13
verification_status: provisional-secondary-mapping
school_year: 2026-2027
grade: 1
subject: math
language: vi
textbook: Kết nối tri thức với cuộc sống
lesson_count: 41
topics:
  - {id: 1, semester: 1, volume: 1, title: "Các số từ 0 đến 10", lesson_from: 1, lesson_to: 6}
  - {id: 2, semester: 1, volume: 1, title: "Làm quen với một số hình phẳng", lesson_from: 7, lesson_to: 9}
  - {id: 3, semester: 1, volume: 1, title: "Phép cộng, phép trừ trong phạm vi 10", lesson_from: 10, lesson_to: 13}
  - {id: 4, semester: 1, volume: 1, title: "Làm quen với một số hình khối", lesson_from: 14, lesson_to: 16}
  - {id: 5, semester: 1, volume: 1, title: "Ôn tập học kì 1", lesson_from: 17, lesson_to: 20}
  - {id: 6, semester: 2, volume: 2, title: "Các số đến 100", lesson_from: 21, lesson_to: 24}
  - {id: 7, semester: 2, volume: 2, title: "Độ dài và đo độ dài", lesson_from: 25, lesson_to: 28}
  - {id: 8, semester: 2, volume: 2, title: "Phép cộng, phép trừ không nhớ trong phạm vi 100", lesson_from: 29, lesson_to: 33}
  - {id: 9, semester: 2, volume: 2, title: "Thời gian, giờ và lịch", lesson_from: 34, lesson_to: 37}
  - {id: 10, semester: 2, volume: 2, title: "Ôn tập cuối năm", lesson_from: 38, lesson_to: 41}
lessons:
  - {id: math-g1-kntt-001, grade: 1, subject: math, semester: 1, volume: 1, topic: 1, lesson: 1, title: "Các số 0, 1, 2, 3, 4, 5"}
  - {id: math-g1-kntt-002, grade: 1, subject: math, semester: 1, volume: 1, topic: 1, lesson: 2, title: "Các số 6, 7, 8, 9, 10"}
  - {id: math-g1-kntt-003, grade: 1, subject: math, semester: 1, volume: 1, topic: 1, lesson: 3, title: "Nhiều hơn, ít hơn, bằng nhau"}
  - {id: math-g1-kntt-004, grade: 1, subject: math, semester: 1, volume: 1, topic: 1, lesson: 4, title: "So sánh số"}
  - {id: math-g1-kntt-005, grade: 1, subject: math, semester: 1, volume: 1, topic: 1, lesson: 5, title: "Mấy và mấy"}
  - {id: math-g1-kntt-006, grade: 1, subject: math, semester: 1, volume: 1, topic: 1, lesson: 6, title: "Luyện tập chung"}
  - {id: math-g1-kntt-007, grade: 1, subject: math, semester: 1, volume: 1, topic: 2, lesson: 7, title: "Hình vuông, hình tròn, hình tam giác, hình chữ nhật"}
  - {id: math-g1-kntt-008, grade: 1, subject: math, semester: 1, volume: 1, topic: 2, lesson: 8, title: "Thực hành lắp ghép, xếp hình"}
  - {id: math-g1-kntt-009, grade: 1, subject: math, semester: 1, volume: 1, topic: 2, lesson: 9, title: "Luyện tập chung"}
  - {id: math-g1-kntt-010, grade: 1, subject: math, semester: 1, volume: 1, topic: 3, lesson: 10, title: "Phép cộng trong phạm vi 10"}
  - {id: math-g1-kntt-011, grade: 1, subject: math, semester: 1, volume: 1, topic: 3, lesson: 11, title: "Phép trừ trong phạm vi 10"}
  - {id: math-g1-kntt-012, grade: 1, subject: math, semester: 1, volume: 1, topic: 3, lesson: 12, title: "Bảng cộng, bảng trừ trong phạm vi 10"}
  - {id: math-g1-kntt-013, grade: 1, subject: math, semester: 1, volume: 1, topic: 3, lesson: 13, title: "Luyện tập chung"}
  - {id: math-g1-kntt-014, grade: 1, subject: math, semester: 1, volume: 1, topic: 4, lesson: 14, title: "Khối lập phương, khối hộp chữ nhật"}
  - {id: math-g1-kntt-015, grade: 1, subject: math, semester: 1, volume: 1, topic: 4, lesson: 15, title: "Vị trí, định hướng trong không gian"}
  - {id: math-g1-kntt-016, grade: 1, subject: math, semester: 1, volume: 1, topic: 4, lesson: 16, title: "Luyện tập chung"}
  - {id: math-g1-kntt-017, grade: 1, subject: math, semester: 1, volume: 1, topic: 5, lesson: 17, title: "Ôn tập các số trong phạm vi 10"}
  - {id: math-g1-kntt-018, grade: 1, subject: math, semester: 1, volume: 1, topic: 5, lesson: 18, title: "Ôn tập phép cộng, phép trừ trong phạm vi 10"}
  - {id: math-g1-kntt-019, grade: 1, subject: math, semester: 1, volume: 1, topic: 5, lesson: 19, title: "Ôn tập hình học"}
  - {id: math-g1-kntt-020, grade: 1, subject: math, semester: 1, volume: 1, topic: 5, lesson: 20, title: "Ôn tập chung"}
  - {id: math-g1-kntt-021, grade: 1, subject: math, semester: 2, volume: 2, topic: 6, lesson: 21, title: "Số có hai chữ số"}
  - {id: math-g1-kntt-022, grade: 1, subject: math, semester: 2, volume: 2, topic: 6, lesson: 22, title: "So sánh số có hai chữ số"}
  - {id: math-g1-kntt-023, grade: 1, subject: math, semester: 2, volume: 2, topic: 6, lesson: 23, title: "Bảng các số từ 1 đến 100"}
  - {id: math-g1-kntt-024, grade: 1, subject: math, semester: 2, volume: 2, topic: 6, lesson: 24, title: "Luyện tập chung"}
  - {id: math-g1-kntt-025, grade: 1, subject: math, semester: 2, volume: 2, topic: 7, lesson: 25, title: "Dài hơn, ngắn hơn"}
  - {id: math-g1-kntt-026, grade: 1, subject: math, semester: 2, volume: 2, topic: 7, lesson: 26, title: "Đơn vị đo độ dài"}
  - {id: math-g1-kntt-027, grade: 1, subject: math, semester: 2, volume: 2, topic: 7, lesson: 27, title: "Thực hành ước lượng và đo độ dài"}
  - {id: math-g1-kntt-028, grade: 1, subject: math, semester: 2, volume: 2, topic: 7, lesson: 28, title: "Luyện tập chung"}
  - {id: math-g1-kntt-029, grade: 1, subject: math, semester: 2, volume: 2, topic: 8, lesson: 29, title: "Phép cộng số có hai chữ số với số có một chữ số"}
  - {id: math-g1-kntt-030, grade: 1, subject: math, semester: 2, volume: 2, topic: 8, lesson: 30, title: "Phép cộng số có hai chữ số với số có hai chữ số"}
  - {id: math-g1-kntt-031, grade: 1, subject: math, semester: 2, volume: 2, topic: 8, lesson: 31, title: "Phép trừ số có hai chữ số cho số có một chữ số"}
  - {id: math-g1-kntt-032, grade: 1, subject: math, semester: 2, volume: 2, topic: 8, lesson: 32, title: "Phép trừ số có hai chữ số cho số có hai chữ số"}
  - {id: math-g1-kntt-033, grade: 1, subject: math, semester: 2, volume: 2, topic: 8, lesson: 33, title: "Luyện tập chung"}
  - {id: math-g1-kntt-034, grade: 1, subject: math, semester: 2, volume: 2, topic: 9, lesson: 34, title: "Xem giờ đúng trên đồng hồ"}
  - {id: math-g1-kntt-035, grade: 1, subject: math, semester: 2, volume: 2, topic: 9, lesson: 35, title: "Các ngày trong tuần"}
  - {id: math-g1-kntt-036, grade: 1, subject: math, semester: 2, volume: 2, topic: 9, lesson: 36, title: "Thực hành xem lịch và giờ"}
  - {id: math-g1-kntt-037, grade: 1, subject: math, semester: 2, volume: 2, topic: 9, lesson: 37, title: "Luyện tập chung"}
  - {id: math-g1-kntt-038, grade: 1, subject: math, semester: 2, volume: 2, topic: 10, lesson: 38, title: "Ôn tập các số và phép tính trong phạm vi 10"}
  - {id: math-g1-kntt-039, grade: 1, subject: math, semester: 2, volume: 2, topic: 10, lesson: 39, title: "Ôn tập các số và phép tính trong phạm vi 100"}
  - {id: math-g1-kntt-040, grade: 1, subject: math, semester: 2, volume: 2, topic: 10, lesson: 40, title: "Ôn tập hình học và đo lường"}
  - {id: math-g1-kntt-041, grade: 1, subject: math, semester: 2, volume: 2, topic: 10, lesson: 41, title: "Ôn tập chung"}

---

## Merged source: `subjects/math/grade-1/assessment.md`

---
module: math-grade-1-vn
version: 0.1.0-beta.1
last_verified: 2026-08-13
assessment: Thông tư 27/2020/TT-BGDĐT
---

# Assessment Toán lớp 1

Áp dụng M1/M2/M3 trong `core/assessment.md`. Tỉ lệ là quy ước nội bộ, không phải tỉ lệ bắt buộc của Bộ GDĐT.

- Mặc định: đề ôn tập, 30 phút, mức chuẩn, đáp án tách riêng.
- Gợi ý mức chuẩn: M1 60%, M2 35%, M3 5%.
- Nếu người dùng chỉ nói “giữa học kỳ”, gọi là **đề ôn tập giữa học kỳ**; lớp 1 không có bài kiểm tra định kỳ môn Toán bắt buộc vào giữa học kỳ theo quy tắc dành riêng cho lớp 4–5 của TT27.
- Với mô phỏng bài kiểm tra định kỳ: thang 10, điểm bài kiểm tra cuối không ở dạng thập phân.
- Nếu đề có điểm, tổng điểm phải đúng thang yêu cầu.

---

## Merged source: `subjects/math/grade-1/output-format.md`

# Định dạng đầu ra Toán lớp 1

- Tiêu đề ghi rõ lớp, loại học liệu và scope.
- Dùng câu ngắn, cỡ nhiệm vụ nhỏ; ưu tiên bảng, ô trống hoặc lựa chọn trực quan.
- Tách phần đề và đáp án. Nếu người dùng yêu cầu “chỉ đề”, không thêm đáp án.
- Không tự nhận đầu ra là tài liệu hoặc đề chính thức của Bộ GDĐT.
- Khi mapping còn provisional, thêm một lưu ý rà soát ngắn ở cuối.

---

## Merged source: `subjects/math/grade-1/quality-gate.md`

---
module: math-grade-1-vn
version: 0.1.0-beta.1
last_verified: 2026-08-13
---

# Quality Gate Toán lớp 1

- [ ] Mọi số không vượt 100 và đúng phạm vi bài đã học.
- [ ] Không có nhân, chia, phân số, số thập phân hoặc phần trăm.
- [ ] Cộng/trừ trong phạm vi 100 không có nhớ nếu dùng như kỹ năng chính.
- [ ] Mỗi bài toán lời văn chỉ cần một phép tính.
- [ ] Không dùng kiến thức của bài sau scope.
- [ ] Câu chữ ngắn, phù hợp học sinh 6–7 tuổi.
- [ ] Đáp án và phép tính đã được kiểm lại.
- [ ] Tổng điểm đúng thang yêu cầu; mô phỏng định kỳ TT27 không xuất điểm cuối dạng thập phân.
- [ ] Có disclaimer và nhãn provisional phù hợp.

---

This bundle is generated from the source of truth in `core/` and `subjects/`. Do not edit the bundle to change curriculum.
