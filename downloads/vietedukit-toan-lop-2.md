---
name: VietEduKit - Toán lớp 2 VN 2026-2027
module: math-grade-2-vn
version: 0.1.0-beta.1
last_verified: 2026-08-12
verification_status: provisional
language: vi
provider: generic
source_of_truth: false
license: CC-BY-SA-4.0
---

# VietEduKit — Toán lớp 2 Việt Nam 2026–2027

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

## Merged source: `subjects/math/grade-2/skill.md`

---
name: toan-lop-2-vn-2026-2027
description: Tạo phiếu luyện tập và đề ôn tập Toán lớp 2 Việt Nam năm học 2026–2027 theo Chương trình GDPT hiện hành và SGK Kết nối tri thức với cuộc sống; dùng khi giáo viên hoặc phụ huynh cần học liệu đúng phạm vi lớp 2.
version: 0.1.0-beta.1
last_verified: 2026-08-12
language: vi
grade: 2
subject: Toán
school_year: 2026-2027
verification_status: provisional
---

# Tạo học liệu Toán lớp 2

Tạo bài tập ngắn, rõ, vừa sức với học sinh 7–8 tuổi. Không tăng độ khó bằng kiến thức lớp 3 trở lên hoặc toán mẹo.

## Quy trình bắt buộc

1. Áp dụng `core/assessment.md`, `core/question-design.md`, `core/output-format.md`.
2. Xác định scope bằng `textbook-mapping.yaml` và `textbook-mapping.md`.
3. Chỉ dùng kiến thức trong `curriculum.md` đã xuất hiện đến hết scope.
4. Áp dụng default và chấm điểm trong `assessment.md`.
5. Tạo câu hỏi mới, không sao chép nguyên văn bài SGK.
6. Trình bày theo `output-format.md`.
7. Chạy cả hai Quality Gate và sửa lỗi trước khi xuất.

Nếu yêu cầu không nêu scope, mặc định ôn tổng hợp lớp 2. Nếu yêu cầu theo tuần nhưng không có kế hoạch dạy học của trường, phải nói rõ scope chỉ là ước lượng theo thứ tự SGK.

Mục tiêu: **đúng lớp 2 → đúng phạm vi đã học → rõ với trẻ 7–8 tuổi → đúng đáp án → hữu ích để luyện tập.**

---

## Merged source: `subjects/math/grade-2/curriculum.md`

---
module: math-grade-2-vn
version: 0.1.0-beta.1
last_verified: 2026-08-12
school_year: 2026-2027
language: vi
curriculum: Chương trình GDPT ban hành kèm Thông tư 32/2018/TT-BGDĐT và các văn bản sửa đổi, bổ sung còn hiệu lực
textbook: Kết nối tri thức với cuộc sống
verification_status: provisional-secondary-mapping
---

# Phạm vi kiến thức Toán lớp 2

Đây là hàng rào cả năm. Khi người dùng nêu bài/chủ đề/học kỳ, chỉ dùng kiến thức đã học đến scope đó.

## Số và phép tính

- Đếm, đọc, viết, cấu tạo, so sánh và sắp xếp số trong phạm vi **1 000**.
- Nhận biết đơn vị, chục, trăm, nghìn; số tròn chục, số tròn trăm; số liền trước, số liền sau; tia số.
- Viết số có ba chữ số thành tổng các trăm, chục, đơn vị.
- Nhận biết thành phần của phép cộng, phép trừ, phép nhân, phép chia.
- Cộng, trừ không nhớ và có nhớ trong phạm vi **1 000**, theo dạng đã học đến scope.
- Tính trường hợp có tối đa hai dấu cộng/trừ, thực hiện từ trái sang phải.
- Hiểu ý nghĩa phép nhân/chia qua nhóm bằng nhau; dùng bảng nhân 2, bảng nhân 5, bảng chia 2, bảng chia 5.
- Không dùng bảng nhân/chia 3, 4, 6, 7, 8, 9 như kiến thức lớp 2.
- Không đặt tính nhân/chia số nhiều chữ số; không chia có dư.
- Bài toán có lời văn tối đa **1 bước tính**, liên quan cộng, trừ, nhân hoặc chia trong phạm vi đã học.
- Không dùng phân số, số thập phân, phần trăm, trung bình cộng hoặc tìm hai số biết tổng–hiệu.

## Hình học

- Nhận biết điểm, đoạn thẳng, đường thẳng, đường cong và ba điểm thẳng hàng.
- Nhận biết, mô tả đường gấp khúc và hình tứ giác; tính độ dài đường gấp khúc bằng tổng độ dài các đoạn.
- Thực hành gấp, cắt, ghép, xếp hình và vẽ đoạn thẳng có độ dài cho trước.
- Nhận biết trực quan khối trụ, khối cầu.
- Không yêu cầu góc vuông, chu vi/diện tích hình chữ nhật, hình vuông hoặc chứng minh hình học như kĩ năng lớp 2.

## Đo lường, thời gian và tiền

- Khối lượng: `kg`; dung tích: `l`.
- Độ dài: `cm`, `dm`, `m`, `km`; đo, ước lượng và đổi đơn vị đơn giản trong phạm vi đã học.
- Thời gian: ngày–giờ, giờ–phút, ngày–tháng; xem đồng hồ và lịch theo dạng đã học.
- Nhận biết và sử dụng tiền Việt Nam trong các tình huống mua bán đơn giản phù hợp lớp 2.
- Không dùng gam, mi-li-mét, mi-li-lít hoặc độ C như kiến thức chính lớp 2.

## Thống kê và xác suất trực quan

- Thu thập, phân loại, kiểm đếm số liệu.
- Đọc và mô tả biểu đồ tranh đơn giản.
- Dùng các từ **chắc chắn, có thể, không thể** để mô tả khả năng trực quan.
- Không dùng công thức xác suất, phân số hoặc phần trăm xác suất.

## Quy tắc vừa sức

- Câu ngắn, dữ kiện đủ, ngữ cảnh gần gũi.
- Một bài lời văn chỉ cần một phép tính.
- Mức nâng cao tăng yêu cầu lựa chọn phép tính hoặc giải thích đơn giản, không thêm kiến thức lớp trên.
- Nếu một nội dung chỉ xuất hiện từ bài sau, không dùng cho scope kết thúc trước bài đó.

## Căn cứ và trạng thái kiểm chứng

- Chương trình GDPT theo Thông tư **32/2018/TT-BGDĐT** và văn bản sửa đổi còn hiệu lực.
- Đánh giá học sinh tiểu học theo Thông tư **27/2020/TT-BGDĐT**.
- Trạng thái SGK/năm học kế thừa căn cứ triển khai 2026–2027 đã dùng trong module Toán 3.
- Mapping Bài 1–75 được đối chiếu từ nhiều mục lục công khai của SGK Toán 2 – Kết nối tri thức; chưa được chuyên gia xác nhận trực tiếp trên bản SGK gốc, vì vậy module giữ trạng thái `provisional`.

---

## Merged source: `subjects/math/grade-2/textbook-mapping.md`

---
module: math-grade-2-vn
version: 0.1.0-beta.1
last_verified: 2026-08-12
data_source: textbook-mapping.yaml
verification_status: provisional
---

# Mapping và xử lý scope

`textbook-mapping.yaml` là source of truth cho 14 chủ đề, Bài 1–75 của Toán 2 – Kết nối tri thức.

- Chỉ dùng kiến thức từ Bài 1 đến hết bài cuối của scope.
- Scope Bài 1–3 không được chứa “hơn, kém nhau bao nhiêu” của Bài 4 hoặc nội dung bài sau.
- Không suy diễn “tuần X” thành một bài chính xác nếu thiếu kế hoạch của trường; phải ghi là ước lượng.
- Ưu tiên phân phối chương trình/kế hoạch lớp do người dùng cung cấp.
- Mapping chỉ giới hạn kiến thức; không sao chép nguyên văn bài tập SGK.
- Do mapping đang ở trạng thái provisional, khi tiêu đề/mốc bài ảnh hưởng quyết định quan trọng cần đối chiếu trực tiếp SGK.

---

## Merged source: `subjects/math/grade-2/textbook-mapping.yaml`

schema_version: 1
module: math-grade-2-vn
version: 0.1.0-beta.1
last_verified: 2026-08-12
verification_status: provisional-secondary-mapping
school_year: 2026-2027
grade: 2
subject: math
language: vi
textbook: Kết nối tri thức với cuộc sống
lesson_count: 75
topics:
  - {id: 1, semester: 1, volume: 1, title: "Ôn tập và bổ sung", lesson_from: 1, lesson_to: 6}
  - {id: 2, semester: 1, volume: 1, title: "Phép cộng, phép trừ trong phạm vi 20", lesson_from: 7, lesson_to: 14}
  - {id: 3, semester: 1, volume: 1, title: "Làm quen với khối lượng, dung tích", lesson_from: 15, lesson_to: 18}
  - {id: 4, semester: 1, volume: 1, title: "Phép cộng, phép trừ (có nhớ) trong phạm vi 100", lesson_from: 19, lesson_to: 24}
  - {id: 5, semester: 1, volume: 1, title: "Làm quen với hình phẳng", lesson_from: 25, lesson_to: 28}
  - {id: 6, semester: 1, volume: 1, title: "Ngày – giờ, giờ – phút, ngày – tháng", lesson_from: 29, lesson_to: 32}
  - {id: 7, semester: 1, volume: 1, title: "Ôn tập học kì I", lesson_from: 33, lesson_to: 36}
  - {id: 8, semester: 2, volume: 2, title: "Phép nhân, phép chia", lesson_from: 37, lesson_to: 45}
  - {id: 9, semester: 2, volume: 2, title: "Làm quen với hình khối", lesson_from: 46, lesson_to: 47}
  - {id: 10, semester: 2, volume: 2, title: "Các số trong phạm vi 1 000", lesson_from: 48, lesson_to: 54}
  - {id: 11, semester: 2, volume: 2, title: "Độ dài và đơn vị đo độ dài. Tiền Việt Nam", lesson_from: 55, lesson_to: 58}
  - {id: 12, semester: 2, volume: 2, title: "Phép cộng, phép trừ trong phạm vi 1 000", lesson_from: 59, lesson_to: 63}
  - {id: 13, semester: 2, volume: 2, title: "Làm quen với yếu tố thống kê, xác suất", lesson_from: 64, lesson_to: 67}
  - {id: 14, semester: 2, volume: 2, title: "Ôn tập cuối năm", lesson_from: 68, lesson_to: 75}
lessons:
  - {id: math-g2-kntt-001, grade: 2, subject: math, semester: 1, volume: 1, topic: 1, lesson: 1, title: "Ôn tập các số đến 100"}
  - {id: math-g2-kntt-002, grade: 2, subject: math, semester: 1, volume: 1, topic: 1, lesson: 2, title: "Tia số. Số liền trước, số liền sau"}
  - {id: math-g2-kntt-003, grade: 2, subject: math, semester: 1, volume: 1, topic: 1, lesson: 3, title: "Các thành phần của phép cộng, phép trừ"}
  - {id: math-g2-kntt-004, grade: 2, subject: math, semester: 1, volume: 1, topic: 1, lesson: 4, title: "Hơn, kém nhau bao nhiêu"}
  - {id: math-g2-kntt-005, grade: 2, subject: math, semester: 1, volume: 1, topic: 1, lesson: 5, title: "Ôn tập phép cộng, phép trừ (không nhớ) trong phạm vi 100"}
  - {id: math-g2-kntt-006, grade: 2, subject: math, semester: 1, volume: 1, topic: 1, lesson: 6, title: "Luyện tập chung"}
  - {id: math-g2-kntt-007, grade: 2, subject: math, semester: 1, volume: 1, topic: 2, lesson: 7, title: "Phép cộng (qua 10) trong phạm vi 20"}
  - {id: math-g2-kntt-008, grade: 2, subject: math, semester: 1, volume: 1, topic: 2, lesson: 8, title: "Bảng cộng (qua 10)"}
  - {id: math-g2-kntt-009, grade: 2, subject: math, semester: 1, volume: 1, topic: 2, lesson: 9, title: "Bài toán về thêm, bớt một số đơn vị"}
  - {id: math-g2-kntt-010, grade: 2, subject: math, semester: 1, volume: 1, topic: 2, lesson: 10, title: "Luyện tập chung"}
  - {id: math-g2-kntt-011, grade: 2, subject: math, semester: 1, volume: 1, topic: 2, lesson: 11, title: "Phép trừ (qua 10) trong phạm vi 20"}
  - {id: math-g2-kntt-012, grade: 2, subject: math, semester: 1, volume: 1, topic: 2, lesson: 12, title: "Bảng trừ (qua 10)"}
  - {id: math-g2-kntt-013, grade: 2, subject: math, semester: 1, volume: 1, topic: 2, lesson: 13, title: "Bài toán về nhiều hơn, ít hơn một số đơn vị"}
  - {id: math-g2-kntt-014, grade: 2, subject: math, semester: 1, volume: 1, topic: 2, lesson: 14, title: "Luyện tập chung"}
  - {id: math-g2-kntt-015, grade: 2, subject: math, semester: 1, volume: 1, topic: 3, lesson: 15, title: "Ki-lô-gam"}
  - {id: math-g2-kntt-016, grade: 2, subject: math, semester: 1, volume: 1, topic: 3, lesson: 16, title: "Lít"}
  - {id: math-g2-kntt-017, grade: 2, subject: math, semester: 1, volume: 1, topic: 3, lesson: 17, title: "Thực hành và trải nghiệm với các đơn vị ki-lô-gam, lít"}
  - {id: math-g2-kntt-018, grade: 2, subject: math, semester: 1, volume: 1, topic: 3, lesson: 18, title: "Luyện tập chung"}
  - {id: math-g2-kntt-019, grade: 2, subject: math, semester: 1, volume: 1, topic: 4, lesson: 19, title: "Phép cộng (có nhớ) số có hai chữ số với số có một chữ số"}
  - {id: math-g2-kntt-020, grade: 2, subject: math, semester: 1, volume: 1, topic: 4, lesson: 20, title: "Phép cộng (có nhớ) số có hai chữ số với số có hai chữ số"}
  - {id: math-g2-kntt-021, grade: 2, subject: math, semester: 1, volume: 1, topic: 4, lesson: 21, title: "Luyện tập chung"}
  - {id: math-g2-kntt-022, grade: 2, subject: math, semester: 1, volume: 1, topic: 4, lesson: 22, title: "Phép trừ (có nhớ) số có hai chữ số cho số có một chữ số"}
  - {id: math-g2-kntt-023, grade: 2, subject: math, semester: 1, volume: 1, topic: 4, lesson: 23, title: "Phép trừ (có nhớ) số có hai chữ số cho số có hai chữ số"}
  - {id: math-g2-kntt-024, grade: 2, subject: math, semester: 1, volume: 1, topic: 4, lesson: 24, title: "Luyện tập chung"}
  - {id: math-g2-kntt-025, grade: 2, subject: math, semester: 1, volume: 1, topic: 5, lesson: 25, title: "Điểm, đoạn thẳng, đường thẳng, đường cong, ba điểm thẳng hàng"}
  - {id: math-g2-kntt-026, grade: 2, subject: math, semester: 1, volume: 1, topic: 5, lesson: 26, title: "Đường gấp khúc. Hình tứ giác"}
  - {id: math-g2-kntt-027, grade: 2, subject: math, semester: 1, volume: 1, topic: 5, lesson: 27, title: "Thực hành gấp, cắt, ghép, xếp hình, vẽ đoạn thẳng"}
  - {id: math-g2-kntt-028, grade: 2, subject: math, semester: 1, volume: 1, topic: 5, lesson: 28, title: "Luyện tập chung"}
  - {id: math-g2-kntt-029, grade: 2, subject: math, semester: 1, volume: 1, topic: 6, lesson: 29, title: "Ngày – giờ, giờ – phút"}
  - {id: math-g2-kntt-030, grade: 2, subject: math, semester: 1, volume: 1, topic: 6, lesson: 30, title: "Ngày – tháng"}
  - {id: math-g2-kntt-031, grade: 2, subject: math, semester: 1, volume: 1, topic: 6, lesson: 31, title: "Thực hành và trải nghiệm xem đồng hồ, xem lịch"}
  - {id: math-g2-kntt-032, grade: 2, subject: math, semester: 1, volume: 1, topic: 6, lesson: 32, title: "Luyện tập chung"}
  - {id: math-g2-kntt-033, grade: 2, subject: math, semester: 1, volume: 1, topic: 7, lesson: 33, title: "Ôn tập phép cộng, phép trừ trong phạm vi 20, 100"}
  - {id: math-g2-kntt-034, grade: 2, subject: math, semester: 1, volume: 1, topic: 7, lesson: 34, title: "Ôn tập hình phẳng"}
  - {id: math-g2-kntt-035, grade: 2, subject: math, semester: 1, volume: 1, topic: 7, lesson: 35, title: "Ôn tập đo lường"}
  - {id: math-g2-kntt-036, grade: 2, subject: math, semester: 1, volume: 1, topic: 7, lesson: 36, title: "Ôn tập chung"}
  - {id: math-g2-kntt-037, grade: 2, subject: math, semester: 2, volume: 2, topic: 8, lesson: 37, title: "Phép nhân"}
  - {id: math-g2-kntt-038, grade: 2, subject: math, semester: 2, volume: 2, topic: 8, lesson: 38, title: "Thừa số, tích"}
  - {id: math-g2-kntt-039, grade: 2, subject: math, semester: 2, volume: 2, topic: 8, lesson: 39, title: "Bảng nhân 2"}
  - {id: math-g2-kntt-040, grade: 2, subject: math, semester: 2, volume: 2, topic: 8, lesson: 40, title: "Bảng nhân 5"}
  - {id: math-g2-kntt-041, grade: 2, subject: math, semester: 2, volume: 2, topic: 8, lesson: 41, title: "Phép chia"}
  - {id: math-g2-kntt-042, grade: 2, subject: math, semester: 2, volume: 2, topic: 8, lesson: 42, title: "Số bị chia, số chia, thương"}
  - {id: math-g2-kntt-043, grade: 2, subject: math, semester: 2, volume: 2, topic: 8, lesson: 43, title: "Bảng chia 2"}
  - {id: math-g2-kntt-044, grade: 2, subject: math, semester: 2, volume: 2, topic: 8, lesson: 44, title: "Bảng chia 5"}
  - {id: math-g2-kntt-045, grade: 2, subject: math, semester: 2, volume: 2, topic: 8, lesson: 45, title: "Luyện tập chung"}
  - {id: math-g2-kntt-046, grade: 2, subject: math, semester: 2, volume: 2, topic: 9, lesson: 46, title: "Khối trụ, khối cầu"}
  - {id: math-g2-kntt-047, grade: 2, subject: math, semester: 2, volume: 2, topic: 9, lesson: 47, title: "Luyện tập chung"}
  - {id: math-g2-kntt-048, grade: 2, subject: math, semester: 2, volume: 2, topic: 10, lesson: 48, title: "Đơn vị, chục, trăm, nghìn"}
  - {id: math-g2-kntt-049, grade: 2, subject: math, semester: 2, volume: 2, topic: 10, lesson: 49, title: "Các số tròn trăm, tròn chục"}
  - {id: math-g2-kntt-050, grade: 2, subject: math, semester: 2, volume: 2, topic: 10, lesson: 50, title: "So sánh các số tròn trăm, tròn chục"}
  - {id: math-g2-kntt-051, grade: 2, subject: math, semester: 2, volume: 2, topic: 10, lesson: 51, title: "Số có ba chữ số"}
  - {id: math-g2-kntt-052, grade: 2, subject: math, semester: 2, volume: 2, topic: 10, lesson: 52, title: "Viết số thành tổng các trăm, chục, đơn vị"}
  - {id: math-g2-kntt-053, grade: 2, subject: math, semester: 2, volume: 2, topic: 10, lesson: 53, title: "So sánh các số có ba chữ số"}
  - {id: math-g2-kntt-054, grade: 2, subject: math, semester: 2, volume: 2, topic: 10, lesson: 54, title: "Luyện tập chung"}
  - {id: math-g2-kntt-055, grade: 2, subject: math, semester: 2, volume: 2, topic: 11, lesson: 55, title: "Đề-xi-mét. Mét. Ki-lô-mét"}
  - {id: math-g2-kntt-056, grade: 2, subject: math, semester: 2, volume: 2, topic: 11, lesson: 56, title: "Giới thiệu tiền Việt Nam"}
  - {id: math-g2-kntt-057, grade: 2, subject: math, semester: 2, volume: 2, topic: 11, lesson: 57, title: "Thực hành và trải nghiệm đo độ dài"}
  - {id: math-g2-kntt-058, grade: 2, subject: math, semester: 2, volume: 2, topic: 11, lesson: 58, title: "Luyện tập chung"}
  - {id: math-g2-kntt-059, grade: 2, subject: math, semester: 2, volume: 2, topic: 12, lesson: 59, title: "Phép cộng (không nhớ) trong phạm vi 1 000"}
  - {id: math-g2-kntt-060, grade: 2, subject: math, semester: 2, volume: 2, topic: 12, lesson: 60, title: "Phép cộng (có nhớ) trong phạm vi 1 000"}
  - {id: math-g2-kntt-061, grade: 2, subject: math, semester: 2, volume: 2, topic: 12, lesson: 61, title: "Phép trừ (không nhớ) trong phạm vi 1 000"}
  - {id: math-g2-kntt-062, grade: 2, subject: math, semester: 2, volume: 2, topic: 12, lesson: 62, title: "Phép trừ (có nhớ) trong phạm vi 1 000"}
  - {id: math-g2-kntt-063, grade: 2, subject: math, semester: 2, volume: 2, topic: 12, lesson: 63, title: "Luyện tập chung"}
  - {id: math-g2-kntt-064, grade: 2, subject: math, semester: 2, volume: 2, topic: 13, lesson: 64, title: "Thu thập, phân loại, kiểm đếm số liệu"}
  - {id: math-g2-kntt-065, grade: 2, subject: math, semester: 2, volume: 2, topic: 13, lesson: 65, title: "Biểu đồ tranh"}
  - {id: math-g2-kntt-066, grade: 2, subject: math, semester: 2, volume: 2, topic: 13, lesson: 66, title: "Chắc chắn, có thể, không thể"}
  - {id: math-g2-kntt-067, grade: 2, subject: math, semester: 2, volume: 2, topic: 13, lesson: 67, title: "Thực hành và trải nghiệm thu thập, phân loại, kiểm đếm số liệu"}
  - {id: math-g2-kntt-068, grade: 2, subject: math, semester: 2, volume: 2, topic: 14, lesson: 68, title: "Ôn tập các số trong phạm vi 1 000"}
  - {id: math-g2-kntt-069, grade: 2, subject: math, semester: 2, volume: 2, topic: 14, lesson: 69, title: "Ôn tập phép cộng, phép trừ trong phạm vi 100"}
  - {id: math-g2-kntt-070, grade: 2, subject: math, semester: 2, volume: 2, topic: 14, lesson: 70, title: "Ôn tập phép cộng, phép trừ trong phạm vi 1 000"}
  - {id: math-g2-kntt-071, grade: 2, subject: math, semester: 2, volume: 2, topic: 14, lesson: 71, title: "Ôn tập phép nhân, phép chia"}
  - {id: math-g2-kntt-072, grade: 2, subject: math, semester: 2, volume: 2, topic: 14, lesson: 72, title: "Ôn tập hình học"}
  - {id: math-g2-kntt-073, grade: 2, subject: math, semester: 2, volume: 2, topic: 14, lesson: 73, title: "Ôn tập đo lường"}
  - {id: math-g2-kntt-074, grade: 2, subject: math, semester: 2, volume: 2, topic: 14, lesson: 74, title: "Ôn tập kiểm đếm số liệu và lựa chọn khả năng"}
  - {id: math-g2-kntt-075, grade: 2, subject: math, semester: 2, volume: 2, topic: 14, lesson: 75, title: "Ôn tập chung"}

---

## Merged source: `subjects/math/grade-2/assessment.md`

---
module: math-grade-2-vn
version: 0.1.0-beta.1
last_verified: 2026-08-12
assessment: Thông tư 27/2020/TT-BGDĐT
---

# Assessment Toán lớp 2

Áp dụng định nghĩa M1/M2/M3 trong `core/assessment.md`. Tỉ lệ dưới đây là quy ước thiết kế nội bộ, không phải tỉ lệ bắt buộc của Bộ GDĐT.

## Default

- `mode = đề ôn tập`
- `scope = nội dung vừa nhắc`; nếu không có, tổng hợp lớp 2
- `duration = 35 phút`
- `difficulty = chuẩn`
- `answer_mode = đáp án tách riêng`
- `matrix = auto`
- `printable = có`

| Mức | M1 | M2 | M3 |
|---|---:|---:|---:|
| Dễ | 65% | 30% | 5% |
| Chuẩn | 55% | 35% | 10% |
| Khá | 45% | 40% | 15% |
| Nâng cao trong lớp 2 | 35% | 45% | 20% |

## Phân biệt loại đề

Nếu người dùng chỉ nói “giữa học kỳ” lớp 2, gọi sản phẩm là **đề ôn tập/bài luyện tập giữa học kỳ**; không tự gọi là bài kiểm tra định kỳ bắt buộc theo TT27.

Với đề ôn tập thang 10, điểm thành phần có thể là 0,5 và tổng phải đúng 10. Với yêu cầu mô phỏng bài kiểm tra định kỳ theo TT27, dùng thang 10 và không xuất điểm bài kiểm tra cuối dạng thập phân.

## Cấu trúc gợi ý

- Cơ bản: số, tính nhẩm, nhận biết hình/đơn vị.
- Thực hành: đặt tính cộng/trừ, bảng nhân/chia 2 và 5, đọc lịch/biểu đồ.
- Vận dụng: 1–2 bài lời văn, mỗi bài đúng **một bước tính**.

---

## Merged source: `subjects/math/grade-2/output-format.md`

---
module: math-grade-2-vn
version: 0.1.0-beta.1
last_verified: 2026-08-12
---

# Trình bày Toán lớp 2

- Dùng `×` cho phép nhân và `:` cho phép chia.
- Đơn vị phù hợp: `cm`, `dm`, `m`, `km`, `kg`, `l`, giờ, phút, ngày, tháng.
- Tiền viết như `5 000 đồng` nếu dạng bài phù hợp.
- Không dùng số thập phân.
- Bài lời văn trình bày: câu lời giải, một phép tính, đáp số.
- Nếu người dùng yêu cầu “chỉ đề”, không thêm đáp án.
- Ghi chú ngắn: đây là học liệu tham khảo, không phải đề chính thức của Bộ GDĐT.

---

## Merged source: `subjects/math/grade-2/quality-gate.md`

---
module: math-grade-2-vn
version: 0.1.0-beta.1
last_verified: 2026-08-12
---

# Quality Gate Toán lớp 2

Chạy sau `core/quality-gate.md`.

- [ ] Số tự nhiên không vượt 1 000.
- [ ] Không có kiến thức lớp 3 trở lên.
- [ ] Scope không chứa kiến thức của bài sau.
- [ ] Mọi bài toán lời văn chỉ có một bước tính.
- [ ] Nhân/chia chỉ dùng ý nghĩa nhóm bằng nhau và bảng 2, bảng 5 trong phạm vi đã học.
- [ ] Không chia có dư hoặc đặt tính nhân/chia số nhiều chữ số.
- [ ] Không có phân số, thập phân, phần trăm hoặc trung bình cộng.
- [ ] Không có chu vi/diện tích hoặc góc vuông như kĩ năng lớp 2.
- [ ] Phép tính và đáp án đã được tính lại.
- [ ] Single-choice chỉ có một đáp án đúng.
- [ ] Đề giữa kỳ không tự bị gọi là kiểm tra định kỳ bắt buộc.
- [ ] Nếu có điểm, tổng đúng thang yêu cầu.
- [ ] Ngôn ngữ phù hợp học sinh 7–8 tuổi.
- [ ] Đầu ra không tự nhận là đề chính thức của Bộ GDĐT.

---

This bundle is generated from the source of truth in `core/` and `subjects/`. Do not edit the bundle to change curriculum.
