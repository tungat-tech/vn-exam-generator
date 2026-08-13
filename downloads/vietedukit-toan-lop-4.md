---
name: VietEduKit - Toán lớp 4 VN 2026-2027
module: math-grade-4-vn
version: 0.1.0-beta.1
last_verified: 2026-08-13
verification_status: provisional
language: vi
provider: generic
source_of_truth: false
license: CC-BY-SA-4.0
---

# VietEduKit — Toán lớp 4 Việt Nam 2026–2027

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

## Merged source: `subjects/math/grade-4/skill.md`

---
name: toan-lop-4-vn-2026-2027
description: Tạo phiếu luyện tập và đề kiểm tra tham khảo Toán lớp 4 Việt Nam năm học 2026–2027 theo Chương trình GDPT hiện hành và SGK Kết nối tri thức với cuộc sống; dùng khi cần giới hạn chính xác theo bài, chủ đề hoặc học kỳ lớp 4.
version: 0.1.0-beta.1
last_verified: 2026-08-13
language: vi
grade: 4
subject: Toán
school_year: 2026-2027
verification_status: provisional
---

# Tạo học liệu Toán lớp 4

## Quy trình bắt buộc

1. Áp dụng `core/` và xác định loại sản phẩm.
2. Tra scope trong `textbook-mapping.yaml`.
3. Chỉ dùng kiến thức trong `curriculum.md` đã xuất hiện đến scope.
4. Áp dụng `assessment.md`, định dạng và hai Quality Gate.
5. Tạo câu hỏi mới, kiểm lại phép tính, phân số, đơn vị và tổng điểm.

Nếu yêu cầu theo tuần thiếu kế hoạch của trường, ghi rõ mapping tuần chỉ là ước lượng.

---

## Merged source: `subjects/math/grade-4/curriculum.md`

---
module: math-grade-4-vn
version: 0.1.0-beta.1
last_verified: 2026-08-13
school_year: 2026-2027
language: vi
textbook: Kết nối tri thức với cuộc sống
verification_status: provisional-secondary-mapping
---

# Phạm vi kiến thức Toán lớp 4

## Số tự nhiên và phép tính

- Đọc, viết, cấu tạo, so sánh và làm tròn số tự nhiên trong phạm vi **lớp triệu** theo nội dung đã học.
- Cộng, trừ số có nhiều chữ số; nhân, chia số tự nhiên theo dạng đã học.
- Nhân với số có hai chữ số chỉ từ Bài 43; chia cho số có hai chữ số chỉ từ Bài 44.
- Không dùng số thập phân, số âm, lũy thừa, biến đổi đại số hoặc phương trình như kỹ năng lớp 4.
- Với phép chia có dư, luôn bảo đảm **số dư < số chia** và số chia khác 0.
- Bài toán có lời văn tối đa **3 bước tính**; độ khó tăng bằng kết nối dữ kiện, không thêm kiến thức lớp 5.
- Bao gồm số trung bình cộng, rút về đơn vị và tìm hai số biết tổng–hiệu khi scope đã học.

## Phân số

- Chỉ dùng phân số từ Bài 53 trở đi.
- Bao gồm khái niệm, phân số và phép chia số tự nhiên, tính chất cơ bản, rút gọn, quy đồng, so sánh.
- Cộng/trừ phân số từ Bài 60–61; nhân/chia phân số từ Bài 63–64; tìm phân số của một số từ Bài 65.
- Mẫu số luôn khác 0. Không dùng hỗn số, phân số thập phân, số thập phân hoặc phần trăm như kỹ năng chính lớp 4.

## Hình học và đo lường

- Đo góc; nhận biết góc nhọn, tù, bẹt; hai đường thẳng vuông góc/song song.
- Nhận biết và thực hành với hình bình hành, hình thoi theo scope.
- Dùng yến, tạ, tấn; giây, thế kỉ; dm², m², mm² và các đơn vị đã học.
- Không dùng công thức diện tích tam giác, hình thang, hình tròn hoặc thể tích như kiến thức lớp 4.

## Thống kê và xác suất

- Đọc, mô tả dãy số liệu và biểu đồ cột.
- Đếm số lần xuất hiện của một sự kiện trong thí nghiệm/trò chơi đơn giản.
- Không dùng xác suất dưới dạng phân số, phần trăm hoặc công thức xác suất.

## Giới hạn theo scope

Một nội dung xuất hiện ở Bài N không được dùng khi scope kết thúc trước Bài N, kể cả khi nội dung đó thuộc chương trình cả năm.

---

## Merged source: `subjects/math/grade-4/textbook-mapping.yaml`

schema_version: 1
module: math-grade-4-vn
version: 0.1.0-beta.1
last_verified: 2026-08-13
verification_status: provisional-secondary-mapping
school_year: 2026-2027
grade: 4
subject: math
language: vi
textbook: Kết nối tri thức với cuộc sống
lesson_count: 73
topics:
  - {id: 1, semester: 1, volume: 1, title: "Ôn tập và bổ sung", lesson_from: 1, lesson_to: 6}
  - {id: 2, semester: 1, volume: 1, title: "Góc và đơn vị đo góc", lesson_from: 7, lesson_to: 9}
  - {id: 3, semester: 1, volume: 1, title: "Số có nhiều chữ số", lesson_from: 10, lesson_to: 16}
  - {id: 4, semester: 1, volume: 1, title: "Một số đơn vị đo đại lượng", lesson_from: 17, lesson_to: 21}
  - {id: 5, semester: 1, volume: 1, title: "Phép cộng và phép trừ", lesson_from: 22, lesson_to: 26}
  - {id: 6, semester: 1, volume: 1, title: "Đường thẳng vuông góc. Đường thẳng song song", lesson_from: 27, lesson_to: 32}
  - {id: 7, semester: 1, volume: 1, title: "Ôn tập học kì 1", lesson_from: 33, lesson_to: 37}
  - {id: 8, semester: 2, volume: 2, title: "Phép nhân và phép chia", lesson_from: 38, lesson_to: 48}
  - {id: 9, semester: 2, volume: 2, title: "Làm quen với yếu tố thống kê, xác suất", lesson_from: 49, lesson_to: 52}
  - {id: 10, semester: 2, volume: 2, title: "Phân số", lesson_from: 53, lesson_to: 59}
  - {id: 11, semester: 2, volume: 2, title: "Phép cộng, phép trừ phân số", lesson_from: 60, lesson_to: 62}
  - {id: 12, semester: 2, volume: 2, title: "Phép nhân, phép chia phân số", lesson_from: 63, lesson_to: 66}
  - {id: 13, semester: 2, volume: 2, title: "Ôn tập cuối năm", lesson_from: 67, lesson_to: 73}
lessons:
  - {id: math-g4-kntt-001, grade: 4, subject: math, semester: 1, volume: 1, topic: 1, lesson: 1, title: "Ôn tập các số đến 100 000"}
  - {id: math-g4-kntt-002, grade: 4, subject: math, semester: 1, volume: 1, topic: 1, lesson: 2, title: "Ôn tập các phép tính trong phạm vi 100 000"}
  - {id: math-g4-kntt-003, grade: 4, subject: math, semester: 1, volume: 1, topic: 1, lesson: 3, title: "Số chẵn, số lẻ"}
  - {id: math-g4-kntt-004, grade: 4, subject: math, semester: 1, volume: 1, topic: 1, lesson: 4, title: "Biểu thức chứa chữ"}
  - {id: math-g4-kntt-005, grade: 4, subject: math, semester: 1, volume: 1, topic: 1, lesson: 5, title: "Giải bài toán có ba bước tính"}
  - {id: math-g4-kntt-006, grade: 4, subject: math, semester: 1, volume: 1, topic: 1, lesson: 6, title: "Luyện tập chung"}
  - {id: math-g4-kntt-007, grade: 4, subject: math, semester: 1, volume: 1, topic: 2, lesson: 7, title: "Đo góc, đơn vị đo góc"}
  - {id: math-g4-kntt-008, grade: 4, subject: math, semester: 1, volume: 1, topic: 2, lesson: 8, title: "Góc nhọn, góc tù, góc bẹt"}
  - {id: math-g4-kntt-009, grade: 4, subject: math, semester: 1, volume: 1, topic: 2, lesson: 9, title: "Luyện tập chung"}
  - {id: math-g4-kntt-010, grade: 4, subject: math, semester: 1, volume: 1, topic: 3, lesson: 10, title: "Số có sáu chữ số. Số 1 000 000"}
  - {id: math-g4-kntt-011, grade: 4, subject: math, semester: 1, volume: 1, topic: 3, lesson: 11, title: "Hàng và lớp"}
  - {id: math-g4-kntt-012, grade: 4, subject: math, semester: 1, volume: 1, topic: 3, lesson: 12, title: "Các số trong phạm vi lớp triệu"}
  - {id: math-g4-kntt-013, grade: 4, subject: math, semester: 1, volume: 1, topic: 3, lesson: 13, title: "Làm tròn số đến hàng trăm nghìn"}
  - {id: math-g4-kntt-014, grade: 4, subject: math, semester: 1, volume: 1, topic: 3, lesson: 14, title: "So sánh các số có nhiều chữ số"}
  - {id: math-g4-kntt-015, grade: 4, subject: math, semester: 1, volume: 1, topic: 3, lesson: 15, title: "Làm quen với dãy số tự nhiên"}
  - {id: math-g4-kntt-016, grade: 4, subject: math, semester: 1, volume: 1, topic: 3, lesson: 16, title: "Luyện tập chung"}
  - {id: math-g4-kntt-017, grade: 4, subject: math, semester: 1, volume: 1, topic: 4, lesson: 17, title: "Yến, tạ, tấn"}
  - {id: math-g4-kntt-018, grade: 4, subject: math, semester: 1, volume: 1, topic: 4, lesson: 18, title: "Đề-xi-mét vuông, mét vuông, mi-li-mét vuông"}
  - {id: math-g4-kntt-019, grade: 4, subject: math, semester: 1, volume: 1, topic: 4, lesson: 19, title: "Giây, thế kỉ"}
  - {id: math-g4-kntt-020, grade: 4, subject: math, semester: 1, volume: 1, topic: 4, lesson: 20, title: "Thực hành và trải nghiệm sử dụng một số đơn vị đo đại lượng"}
  - {id: math-g4-kntt-021, grade: 4, subject: math, semester: 1, volume: 1, topic: 4, lesson: 21, title: "Luyện tập chung"}
  - {id: math-g4-kntt-022, grade: 4, subject: math, semester: 1, volume: 1, topic: 5, lesson: 22, title: "Phép cộng các số có nhiều chữ số"}
  - {id: math-g4-kntt-023, grade: 4, subject: math, semester: 1, volume: 1, topic: 5, lesson: 23, title: "Phép trừ các số có nhiều chữ số"}
  - {id: math-g4-kntt-024, grade: 4, subject: math, semester: 1, volume: 1, topic: 5, lesson: 24, title: "Tính chất giao hoán và kết hợp của phép cộng"}
  - {id: math-g4-kntt-025, grade: 4, subject: math, semester: 1, volume: 1, topic: 5, lesson: 25, title: "Tìm hai số biết tổng và hiệu của hai số đó"}
  - {id: math-g4-kntt-026, grade: 4, subject: math, semester: 1, volume: 1, topic: 5, lesson: 26, title: "Luyện tập chung"}
  - {id: math-g4-kntt-027, grade: 4, subject: math, semester: 1, volume: 1, topic: 6, lesson: 27, title: "Hai đường thẳng vuông góc"}
  - {id: math-g4-kntt-028, grade: 4, subject: math, semester: 1, volume: 1, topic: 6, lesson: 28, title: "Thực hành và trải nghiệm vẽ hai đường thẳng vuông góc"}
  - {id: math-g4-kntt-029, grade: 4, subject: math, semester: 1, volume: 1, topic: 6, lesson: 29, title: "Hai đường thẳng song song"}
  - {id: math-g4-kntt-030, grade: 4, subject: math, semester: 1, volume: 1, topic: 6, lesson: 30, title: "Thực hành và trải nghiệm vẽ hai đường thẳng song song"}
  - {id: math-g4-kntt-031, grade: 4, subject: math, semester: 1, volume: 1, topic: 6, lesson: 31, title: "Hình bình hành, hình thoi"}
  - {id: math-g4-kntt-032, grade: 4, subject: math, semester: 1, volume: 1, topic: 6, lesson: 32, title: "Luyện tập chung"}
  - {id: math-g4-kntt-033, grade: 4, subject: math, semester: 1, volume: 1, topic: 7, lesson: 33, title: "Ôn tập các số đến lớp triệu"}
  - {id: math-g4-kntt-034, grade: 4, subject: math, semester: 1, volume: 1, topic: 7, lesson: 34, title: "Ôn tập phép cộng, phép trừ"}
  - {id: math-g4-kntt-035, grade: 4, subject: math, semester: 1, volume: 1, topic: 7, lesson: 35, title: "Ôn tập hình học"}
  - {id: math-g4-kntt-036, grade: 4, subject: math, semester: 1, volume: 1, topic: 7, lesson: 36, title: "Ôn tập đo lường"}
  - {id: math-g4-kntt-037, grade: 4, subject: math, semester: 1, volume: 1, topic: 7, lesson: 37, title: "Ôn tập chung"}
  - {id: math-g4-kntt-038, grade: 4, subject: math, semester: 2, volume: 2, topic: 8, lesson: 38, title: "Nhân với số có một chữ số"}
  - {id: math-g4-kntt-039, grade: 4, subject: math, semester: 2, volume: 2, topic: 8, lesson: 39, title: "Chia cho số có một chữ số"}
  - {id: math-g4-kntt-040, grade: 4, subject: math, semester: 2, volume: 2, topic: 8, lesson: 40, title: "Tính chất giao hoán và kết hợp của phép nhân"}
  - {id: math-g4-kntt-041, grade: 4, subject: math, semester: 2, volume: 2, topic: 8, lesson: 41, title: "Nhân, chia với 10, 100, 1 000, ..."}
  - {id: math-g4-kntt-042, grade: 4, subject: math, semester: 2, volume: 2, topic: 8, lesson: 42, title: "Tính chất phân phối của phép nhân đối với phép cộng"}
  - {id: math-g4-kntt-043, grade: 4, subject: math, semester: 2, volume: 2, topic: 8, lesson: 43, title: "Nhân với số có hai chữ số"}
  - {id: math-g4-kntt-044, grade: 4, subject: math, semester: 2, volume: 2, topic: 8, lesson: 44, title: "Chia cho số có hai chữ số"}
  - {id: math-g4-kntt-045, grade: 4, subject: math, semester: 2, volume: 2, topic: 8, lesson: 45, title: "Thực hành và trải nghiệm ước lượng trong tính toán"}
  - {id: math-g4-kntt-046, grade: 4, subject: math, semester: 2, volume: 2, topic: 8, lesson: 46, title: "Tìm số trung bình cộng"}
  - {id: math-g4-kntt-047, grade: 4, subject: math, semester: 2, volume: 2, topic: 8, lesson: 47, title: "Bài toán liên quan đến rút về đơn vị"}
  - {id: math-g4-kntt-048, grade: 4, subject: math, semester: 2, volume: 2, topic: 8, lesson: 48, title: "Luyện tập chung"}
  - {id: math-g4-kntt-049, grade: 4, subject: math, semester: 2, volume: 2, topic: 9, lesson: 49, title: "Dãy số liệu thống kê"}
  - {id: math-g4-kntt-050, grade: 4, subject: math, semester: 2, volume: 2, topic: 9, lesson: 50, title: "Biểu đồ cột"}
  - {id: math-g4-kntt-051, grade: 4, subject: math, semester: 2, volume: 2, topic: 9, lesson: 51, title: "Số lần xuất hiện của một sự kiện"}
  - {id: math-g4-kntt-052, grade: 4, subject: math, semester: 2, volume: 2, topic: 9, lesson: 52, title: "Luyện tập chung"}
  - {id: math-g4-kntt-053, grade: 4, subject: math, semester: 2, volume: 2, topic: 10, lesson: 53, title: "Khái niệm phân số"}
  - {id: math-g4-kntt-054, grade: 4, subject: math, semester: 2, volume: 2, topic: 10, lesson: 54, title: "Phân số và phép chia số tự nhiên"}
  - {id: math-g4-kntt-055, grade: 4, subject: math, semester: 2, volume: 2, topic: 10, lesson: 55, title: "Tính chất cơ bản của phân số"}
  - {id: math-g4-kntt-056, grade: 4, subject: math, semester: 2, volume: 2, topic: 10, lesson: 56, title: "Rút gọn phân số"}
  - {id: math-g4-kntt-057, grade: 4, subject: math, semester: 2, volume: 2, topic: 10, lesson: 57, title: "Quy đồng mẫu số các phân số"}
  - {id: math-g4-kntt-058, grade: 4, subject: math, semester: 2, volume: 2, topic: 10, lesson: 58, title: "So sánh phân số"}
  - {id: math-g4-kntt-059, grade: 4, subject: math, semester: 2, volume: 2, topic: 10, lesson: 59, title: "Luyện tập chung"}
  - {id: math-g4-kntt-060, grade: 4, subject: math, semester: 2, volume: 2, topic: 11, lesson: 60, title: "Phép cộng phân số"}
  - {id: math-g4-kntt-061, grade: 4, subject: math, semester: 2, volume: 2, topic: 11, lesson: 61, title: "Phép trừ phân số"}
  - {id: math-g4-kntt-062, grade: 4, subject: math, semester: 2, volume: 2, topic: 11, lesson: 62, title: "Luyện tập chung"}
  - {id: math-g4-kntt-063, grade: 4, subject: math, semester: 2, volume: 2, topic: 12, lesson: 63, title: "Phép nhân phân số"}
  - {id: math-g4-kntt-064, grade: 4, subject: math, semester: 2, volume: 2, topic: 12, lesson: 64, title: "Phép chia phân số"}
  - {id: math-g4-kntt-065, grade: 4, subject: math, semester: 2, volume: 2, topic: 12, lesson: 65, title: "Tìm phân số của một số"}
  - {id: math-g4-kntt-066, grade: 4, subject: math, semester: 2, volume: 2, topic: 12, lesson: 66, title: "Luyện tập chung"}
  - {id: math-g4-kntt-067, grade: 4, subject: math, semester: 2, volume: 2, topic: 13, lesson: 67, title: "Ôn tập số tự nhiên"}
  - {id: math-g4-kntt-068, grade: 4, subject: math, semester: 2, volume: 2, topic: 13, lesson: 68, title: "Ôn tập phép tính với số tự nhiên"}
  - {id: math-g4-kntt-069, grade: 4, subject: math, semester: 2, volume: 2, topic: 13, lesson: 69, title: "Ôn tập phân số"}
  - {id: math-g4-kntt-070, grade: 4, subject: math, semester: 2, volume: 2, topic: 13, lesson: 70, title: "Ôn tập phép tính với phân số"}
  - {id: math-g4-kntt-071, grade: 4, subject: math, semester: 2, volume: 2, topic: 13, lesson: 71, title: "Ôn tập hình học và đo lường"}
  - {id: math-g4-kntt-072, grade: 4, subject: math, semester: 2, volume: 2, topic: 13, lesson: 72, title: "Ôn tập một số yếu tố thống kê và xác suất"}
  - {id: math-g4-kntt-073, grade: 4, subject: math, semester: 2, volume: 2, topic: 13, lesson: 73, title: "Ôn tập chung"}

---

## Merged source: `subjects/math/grade-4/assessment.md`

---
module: math-grade-4-vn
version: 0.1.0-beta.1
last_verified: 2026-08-13
assessment: Thông tư 27/2020/TT-BGDĐT
---

# Assessment Toán lớp 4

- Mặc định: đề ôn tập, 40 phút, mức chuẩn, đáp án tách riêng.
- Gợi ý mức chuẩn: M1 50%, M2 35%, M3 15%; đây là quy ước nội bộ.
- Khác lớp 1–3, TT27 quy định lớp 4 và lớp 5 có thêm bài kiểm tra định kỳ môn Toán vào giữa học kỳ I và giữa học kỳ II.
- Khi người dùng yêu cầu “đề giữa kỳ”, hỏi/ghi rõ đó là đề ôn tập hay mô phỏng kiểm tra định kỳ; nếu họ nói rõ TT27 hoặc kiểm tra định kỳ thì áp dụng cấu trúc định kỳ.
- Bài kiểm tra định kỳ dùng thang 10 và điểm cuối không ở dạng thập phân. Tổng điểm các câu phải đúng 10.

---

## Merged source: `subjects/math/grade-4/output-format.md`

# Định dạng đầu ra Toán lớp 4

- Ghi rõ loại đề, scope, thời lượng và thang điểm nếu có.
- Tách đề, đáp án và hướng dẫn chấm; không lộ đáp án trong phần đề.
- Với phân số, dùng ký hiệu nhất quán và mẫu số khác 0.
- Nếu người dùng yêu cầu “chỉ đề”, không thêm đáp án.
- Không gọi sản phẩm là đề/tài liệu chính thức của Bộ GDĐT; thêm nhãn beta/provisional ngắn.

---

## Merged source: `subjects/math/grade-4/quality-gate.md`

---
module: math-grade-4-vn
version: 0.1.0-beta.1
last_verified: 2026-08-13
---

# Quality Gate Toán lớp 4

- [ ] Không có số thập phân, phần trăm, hỗn số hoặc kiến thức lớp 5 như kỹ năng chính.
- [ ] Bài toán lời văn không quá 3 bước tính.
- [ ] Chia có dư thỏa số dư < số chia; không chia cho 0.
- [ ] Nhân/chia với số có hai chữ số chỉ xuất hiện sau Bài 43/44 tương ứng.
- [ ] Phân số và từng phép tính phân số chỉ xuất hiện sau đúng bài mở khóa.
- [ ] Mọi mẫu số khác 0 và kết quả đã được kiểm lại.
- [ ] Không dùng bài sau scope.
- [ ] Phân loại đề giữa kỳ lớp 4 đúng quy tắc TT27.
- [ ] Tổng điểm đúng thang; điểm cuối bài định kỳ không dạng thập phân.

---

This bundle is generated from the source of truth in `core/` and `subjects/`. Do not edit the bundle to change curriculum.
