---
name: VietEduKit - Toán lớp 3 VN 2026-2027
module: math-grade-3-vn
version: 1.1.0
last_verified: 2026-08-12
verification_status: verified-refactor
language: vi
provider: generic
source_of_truth: false
license: CC-BY-SA-4.0
---

# VietEduKit — Toán lớp 3 Việt Nam 2026–2027

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

## Merged source: `subjects/math/grade-3/skill.md`

---
name: toan-lop-3-vn-2026-2027
description: Tạo đề ôn tập, phiếu luyện tập và mô phỏng bài kiểm tra Toán lớp 3 Việt Nam cho năm học 2026–2027; bám phạm vi module và SGK Kết nối tri thức với cuộc sống, dùng được độc lập với nhà cung cấp LLM.
version: 1.1.0
source_version: "1.1"
last_verified: 2026-08-12
language: vi
grade: 3
subject: Toán
school_year: 2026-2027
---

# Tạo học liệu Toán lớp 3

Đóng vai chuyên gia thiết kế bài tập Toán tiểu học Việt Nam, chuyên lớp 3. Tạo học liệu đúng chương trình, vừa sức, rõ ràng, có phân hóa, giúp củng cố kiến thức và phát hiện lỗ hổng. Không biến đề thành “toán mẹo” hoặc đưa kiến thức lớp 4 trở lên vào để tăng độ khó.

## Quy trình bắt buộc

1. Đọc và áp dụng `core/assessment.md`, `core/question-design.md`, `core/output-format.md`.
2. Xác định scope bằng `textbook-mapping.yaml` và quy tắc trong `textbook-mapping.md`.
3. Chỉ dùng kiến thức được phép trong `curriculum.md`, đồng thời giới hạn theo bài/chủ đề/học kỳ đã học.
4. Áp dụng default, mức độ và chấm điểm trong `assessment.md`.
5. Tạo câu hỏi mới; không sao chép nguyên văn bài tập SGK.
6. Trình bày theo `core/output-format.md` và `output-format.md` của module.
7. Chạy thầm cả `core/quality-gate.md` và `quality-gate.md`; sửa lỗi trước khi xuất.

Khi luyện theo lỗi sai: phân loại theo kĩ năng; nêu tối đa 3 lỗ hổng; tạo 2–3 câu rất cơ bản, 4–6 câu tương tự, 2–3 biến thể M2 và chỉ thêm 1 câu M3 nếu học sinh đã làm ổn. Không tăng khó khi nền tảng chưa được khắc phục. Có thể thêm bài kiểm tra lại 10 phút.

Khi tạo nhiều mã đề: giữ cùng ma trận, mức độ và điểm; thay số liệu/bối cảnh/thứ tự để có biến thể tương đương; kiểm tra đáp án riêng từng mã.

Mục tiêu cuối: **Đúng chương trình → Đúng phạm vi → Đúng độ tuổi → Đúng đáp án → Hữu ích để ôn tập.**

---

## Merged source: `subjects/math/grade-3/curriculum.md`

---
module: math-grade-3-vn
version: 1.1.0
source_version: "1.1"
last_verified: 2026-08-12
school_year: 2026-2027
language: vi
curriculum: Chương trình GDPT ban hành kèm Thông tư 32/2018/TT-BGDĐT và các văn bản sửa đổi, bổ sung còn hiệu lực
textbook: Kết nối tri thức với cuộc sống
---

# Phạm vi kiến thức Toán lớp 3

Đây là hàng rào kiến thức lớp 3, không phải ma trận bắt buộc cho mọi đề. Nếu người dùng nêu bài/chủ đề/học kỳ, chỉ dùng phần đã học đến phạm vi đó.

## Số và phép tính

### Số tự nhiên

- Đọc, viết, cấu tạo số đến **100 000**.
- Số tròn nghìn, tròn mười nghìn.
- So sánh, sắp xếp; tìm số lớn nhất/bé nhất trong nhóm phù hợp yêu cầu.
- Làm tròn đến hàng chục, trăm, nghìn, chục nghìn.
- Chữ số La Mã từ **I đến XX**.

### Cộng, trừ

- Cộng, trừ số có đến 5 chữ số trong phạm vi đã học.
- Có thể có nhớ phù hợp; không đặt giới hạn cứng về số lượt nhớ hoặc nhớ liên tiếp như thể đó là chuẩn chương trình.
- Nhận biết/vận dụng đơn giản tính giao hoán, kết hợp của phép cộng và quan hệ cộng–trừ.

### Nhân, chia

- Bảng nhân, bảng chia từ 2 đến 9.
- Nhân số tự nhiên với **số có một chữ số** trong phạm vi đã học.
- Chia cho **số có một chữ số** trong phạm vi đã học.
- Chia hết, chia có dư; luôn bảo đảm **số dư < số chia**.
- Quan hệ nhân–chia; tính giao hoán, kết hợp của phép nhân ở mức thực hành.

### Tính nhẩm và biểu thức

- Cộng, trừ, nhân, chia nhẩm trong trường hợp đơn giản.
- Biểu thức số có tối đa hai dấu phép tính.
- Có hoặc không có ngoặc; nếu có, làm trong ngoặc trước.
- Tìm thành phần chưa biết của cộng, trừ, nhân, chia bằng kiến thức lớp 3.

### Bài toán có lời văn

- Tối đa **2 bước tính**.
- Tình huống: thêm/bớt, nhiều hơn/ít hơn, gấp lên/giảm đi một số lần, số lớn gấp mấy lần số bé, tìm thành phần chưa biết, mua bán/đo lường/thời gian đơn giản.
- Dữ kiện đủ, không mơ hồ, số liệu thực tế với trẻ lớp 3.

### Làm quen với phân số

- Chỉ ở mức **1/2, 1/3, …, 1/9** qua hình ảnh hoặc chia nhóm thành phần bằng nhau.
- Có thể tìm `1/n` của một nhóm bằng phép chia phù hợp.
- Không cộng, trừ, nhân, chia phân số; không so sánh phân số theo kiến thức lớp 4.

## Hình học và đo lường

### Hình học trực quan

- Điểm ở giữa, trung điểm đoạn thẳng.
- Góc, góc vuông, góc không vuông.
- Tam giác, tứ giác, hình chữ nhật, hình vuông; đỉnh, cạnh, góc của hình chữ nhật/hình vuông.
- Hình tròn: tâm, bán kính, đường kính.
- Khối lập phương, khối hộp chữ nhật: đỉnh, cạnh, mặt.
- Vẽ/nhận biết góc vuông, đường tròn, hình vuông, hình chữ nhật; dùng êke, compa khi phù hợp.

### Đo lường

- Độ dài: mm, cm, dm, m, km; diện tích: cm²; khối lượng: g, kg; dung tích: ml, l; nhiệt độ: °C.
- Thời gian: phút, giờ, ngày, tuần, tháng, năm; đọc đồng hồ chính xác đến 5 phút và từng phút.
- Tiền Việt Nam trong phạm vi lớp 3.
- Chuyển đổi/tính đơn giản với đơn vị đã học.
- Chu vi tam giác, tứ giác, hình chữ nhật, hình vuông.
- Diện tích hình chữ nhật và hình vuông.
- Ước lượng đơn giản gắn thực tế.

## Thống kê và xác suất

- Thu thập, phân loại, ghi chép số liệu theo tiêu chí; đọc, mô tả và nhận xét đơn giản từ bảng số liệu.
- Nhận biết/mô tả khả năng có thể xảy ra trong một lần thử đơn giản, như tung đồng xu một lần hoặc lấy một bóng từ hộp hai màu.
- Không dùng công thức xác suất, phần trăm xác suất hoặc tổ hợp.

## Quy ước vừa sức

- Với M1, ưu tiên số liệu/thao tác vừa sức, không dồn quá nhiều kĩ thuật nếu mục tiêu chỉ là kiến thức cơ bản.
- Khi so sánh/sắp xếp, thường dùng 3–4 số cho gọn; đây là mặc định thiết kế, không phải giới hạn chương trình.
- “Nâng cao lớp 3” tăng kết nối, lựa chọn cách giải hoặc ngữ cảnh, không đưa kiến thức lớp trên.

## Không được làm

- Không đưa số thập phân, tỉ số phần trăm, phép tính phân số, số trung bình cộng, tìm hai số biết tổng–hiệu như kiến thức chính lớp 3.
- Không ra phép nhân với số có hai chữ số hoặc chia cho số có hai chữ số như kĩ năng lớp 3.
- Không yêu cầu chứng minh hình học.
- Không dùng phương trình/kí hiệu đại số vượt mức tìm thành phần chưa biết.
- Không tạo bài toán 3–4 bước rồi gọi là nâng cao lớp 3.
- Không sao chép nguyên văn bài tập SGK.
- Không tự nhận đầu ra là đề chính thức của Bộ GDĐT.

## Căn cứ và cập nhật

Bản v1.1 được rà soát ngày **12/08/2026** dựa trên:

- Thông tư **32/2018/TT-BGDĐT** và các văn bản sửa đổi, bổ sung còn hiệu lực.
- Thông tư **17/2025/TT-BGDĐT**; nội dung sửa đổi trong văn bản này không phải chương trình môn Toán, vì vậy không tự suy diễn chuẩn Toán 3 đã đổi.
- Thông tư **27/2020/TT-BGDĐT** về đánh giá học sinh tiểu học.
- Quyết định **3588/QĐ-BGDĐT ngày 26/12/2025** về bộ SGK sử dụng thống nhất toàn quốc từ năm học 2026–2027.
- Công văn **5208/BGDĐT-GDPT ngày 07/08/2026** hướng dẫn nhiệm vụ năm học; đây là căn cứ triển khai, không thay thế chuẩn môn Toán.
- SGK **Toán 3 – Kết nối tri thức với cuộc sống**, Tập một và Tập hai, để mapping bài/chủ đề.

Khi có văn bản mới sau `last_verified`: ưu tiên nguồn chính thức; phân biệt thay đổi chương trình môn, SGK/học liệu, đánh giá và hướng dẫn riêng năm học; không suy diễn thay đổi môn khác sang Toán. Nếu kế hoạch trường/lớp do người dùng cung cấp khác mapping tuần mặc định, ưu tiên tài liệu đó trong phạm vi yêu cầu.

---

## Merged source: `subjects/math/grade-3/textbook-mapping.md`

---
module: math-grade-3-vn
version: 1.1.0
last_verified: 2026-08-12
data_source: textbook-mapping.yaml
---

# Mapping SGK và xử lý scope

`textbook-mapping.yaml` là source of truth duy nhất cho 16 chủ đề và 81 bài của SGK Toán 3 – Kết nối tri thức với cuộc sống. File này không lặp lại danh sách đó.

## Quy tắc

- Nếu người dùng nêu bài/chủ đề/học kỳ, chỉ lấy kiến thức đã học đến đúng phạm vi đó, trừ khi họ ghi rõ “ôn cả năm”.
- Nếu scope là một khoảng bài, không dùng bài nằm sau điểm kết thúc; ví dụ Bài 1–3 không chứa kiến thức chỉ xuất hiện từ Bài 4 trở đi.
- Nếu người dùng nói **“tuần X”** nhưng không cung cấp phân phối chương trình/kế hoạch giáo dục của trường, không khẳng định tuần đó tương ứng chính xác một bài. Chỉ ước lượng theo thứ tự SGK và nêu ngắn gọn giả định.
- Nếu người dùng cung cấp phân phối chương trình hoặc kế hoạch trường/lớp, ưu tiên tài liệu đó để xác định scope theo tuần.
- Không sao chép nguyên văn bài tập SGK; chỉ dùng mapping để giới hạn phạm vi và tạo câu hỏi mới tương đương chuẩn kiến thức.

Trường `topic` trong mỗi lesson là liên kết cấu trúc tới danh sách `topics`, được tạo từ các nhóm chủ đề và thứ tự bài của chính nguồn v1.1; không bổ sung chuẩn kiến thức mới.

---

## Merged source: `subjects/math/grade-3/textbook-mapping.yaml`

schema_version: 1
module: math-grade-3-vn
version: 1.1.0
source_version: "1.1"
last_verified: 2026-08-12
school_year: 2026-2027
grade: 3
subject: math
language: vi
textbook: Kết nối tri thức với cuộc sống
lesson_count: 81
topics:
  - {id: 1, semester: 1, volume: 1, title: "Ôn tập và bổ sung", lesson_from: 1, lesson_to: 8}
  - {id: 2, semester: 1, volume: 1, title: "Bảng nhân, bảng chia", lesson_from: 9, lesson_to: 15}
  - {id: 3, semester: 1, volume: 1, title: "Làm quen với hình phẳng, hình khối", lesson_from: 16, lesson_to: 22}
  - {id: 4, semester: 1, volume: 1, title: "Phép nhân, phép chia trong phạm vi 100", lesson_from: 23, lesson_to: 29}
  - {id: 5, semester: 1, volume: 1, title: "Một số đơn vị đo độ dài, khối lượng, dung tích, nhiệt độ", lesson_from: 30, lesson_to: 35}
  - {id: 6, semester: 1, volume: 1, title: "Phép nhân, phép chia trong phạm vi 1 000", lesson_from: 36, lesson_to: 40}
  - {id: 7, semester: 1, volume: 1, title: "Ôn tập học kì I", lesson_from: 41, lesson_to: 44}
  - {id: 8, semester: 2, volume: 2, title: "Các số đến 10 000", lesson_from: 45, lesson_to: 49}
  - {id: 9, semester: 2, volume: 2, title: "Chu vi, diện tích một số hình phẳng", lesson_from: 50, lesson_to: 53}
  - {id: 10, semester: 2, volume: 2, title: "Cộng, trừ, nhân, chia trong phạm vi 10 000", lesson_from: 54, lesson_to: 58}
  - {id: 11, semester: 2, volume: 2, title: "Các số đến 100 000", lesson_from: 59, lesson_to: 62}
  - {id: 12, semester: 2, volume: 2, title: "Cộng, trừ trong phạm vi 100 000", lesson_from: 63, lesson_to: 65}
  - {id: 13, semester: 2, volume: 2, title: "Xem đồng hồ, tháng – năm, tiền Việt Nam", lesson_from: 66, lesson_to: 69}
  - {id: 14, semester: 2, volume: 2, title: "Nhân, chia trong phạm vi 100 000", lesson_from: 70, lesson_to: 72}
  - {id: 15, semester: 2, volume: 2, title: "Làm quen với yếu tố thống kê, xác suất", lesson_from: 73, lesson_to: 75}
  - {id: 16, semester: 2, volume: 2, title: "Ôn tập cuối năm", lesson_from: 76, lesson_to: 81}
lessons:
  - {id: math-g3-kntt-001, grade: 3, subject: math, semester: 1, volume: 1, topic: 1, lesson: 1, title: "Ôn tập các số đến 1 000"}
  - {id: math-g3-kntt-002, grade: 3, subject: math, semester: 1, volume: 1, topic: 1, lesson: 2, title: "Ôn tập phép cộng, phép trừ trong phạm vi 1 000"}
  - {id: math-g3-kntt-003, grade: 3, subject: math, semester: 1, volume: 1, topic: 1, lesson: 3, title: "Tìm thành phần trong phép cộng, phép trừ"}
  - {id: math-g3-kntt-004, grade: 3, subject: math, semester: 1, volume: 1, topic: 1, lesson: 4, title: "Ôn tập bảng nhân 2; 5, bảng chia 2; 5"}
  - {id: math-g3-kntt-005, grade: 3, subject: math, semester: 1, volume: 1, topic: 1, lesson: 5, title: "Bảng nhân 3, bảng chia 3"}
  - {id: math-g3-kntt-006, grade: 3, subject: math, semester: 1, volume: 1, topic: 1, lesson: 6, title: "Bảng nhân 4, bảng chia 4"}
  - {id: math-g3-kntt-007, grade: 3, subject: math, semester: 1, volume: 1, topic: 1, lesson: 7, title: "Ôn tập hình học và đo lường"}
  - {id: math-g3-kntt-008, grade: 3, subject: math, semester: 1, volume: 1, topic: 1, lesson: 8, title: "Luyện tập chung"}
  - {id: math-g3-kntt-009, grade: 3, subject: math, semester: 1, volume: 1, topic: 2, lesson: 9, title: "Bảng nhân 6, bảng chia 6"}
  - {id: math-g3-kntt-010, grade: 3, subject: math, semester: 1, volume: 1, topic: 2, lesson: 10, title: "Bảng nhân 7, bảng chia 7"}
  - {id: math-g3-kntt-011, grade: 3, subject: math, semester: 1, volume: 1, topic: 2, lesson: 11, title: "Bảng nhân 8, bảng chia 8"}
  - {id: math-g3-kntt-012, grade: 3, subject: math, semester: 1, volume: 1, topic: 2, lesson: 12, title: "Bảng nhân 9, bảng chia 9"}
  - {id: math-g3-kntt-013, grade: 3, subject: math, semester: 1, volume: 1, topic: 2, lesson: 13, title: "Tìm thành phần trong phép nhân, phép chia"}
  - {id: math-g3-kntt-014, grade: 3, subject: math, semester: 1, volume: 1, topic: 2, lesson: 14, title: "Một phần mấy"}
  - {id: math-g3-kntt-015, grade: 3, subject: math, semester: 1, volume: 1, topic: 2, lesson: 15, title: "Luyện tập chung"}
  - {id: math-g3-kntt-016, grade: 3, subject: math, semester: 1, volume: 1, topic: 3, lesson: 16, title: "Điểm ở giữa, trung điểm của đoạn thẳng"}
  - {id: math-g3-kntt-017, grade: 3, subject: math, semester: 1, volume: 1, topic: 3, lesson: 17, title: "Hình tròn. Tâm, bán kính, đường kính của hình tròn"}
  - {id: math-g3-kntt-018, grade: 3, subject: math, semester: 1, volume: 1, topic: 3, lesson: 18, title: "Góc, góc vuông, góc không vuông"}
  - {id: math-g3-kntt-019, grade: 3, subject: math, semester: 1, volume: 1, topic: 3, lesson: 19, title: "Hình tam giác, hình tứ giác. Hình chữ nhật, hình vuông"}
  - {id: math-g3-kntt-020, grade: 3, subject: math, semester: 1, volume: 1, topic: 3, lesson: 20, title: "Thực hành vẽ góc vuông, vẽ đường tròn, hình vuông, hình chữ nhật và vẽ trang trí"}
  - {id: math-g3-kntt-021, grade: 3, subject: math, semester: 1, volume: 1, topic: 3, lesson: 21, title: "Khối lập phương, khối hộp chữ nhật"}
  - {id: math-g3-kntt-022, grade: 3, subject: math, semester: 1, volume: 1, topic: 3, lesson: 22, title: "Luyện tập chung"}
  - {id: math-g3-kntt-023, grade: 3, subject: math, semester: 1, volume: 1, topic: 4, lesson: 23, title: "Nhân số có hai chữ số với số có một chữ số"}
  - {id: math-g3-kntt-024, grade: 3, subject: math, semester: 1, volume: 1, topic: 4, lesson: 24, title: "Gấp một số lên một số lần"}
  - {id: math-g3-kntt-025, grade: 3, subject: math, semester: 1, volume: 1, topic: 4, lesson: 25, title: "Phép chia hết, phép chia có dư"}
  - {id: math-g3-kntt-026, grade: 3, subject: math, semester: 1, volume: 1, topic: 4, lesson: 26, title: "Chia số có hai chữ số cho số có một chữ số"}
  - {id: math-g3-kntt-027, grade: 3, subject: math, semester: 1, volume: 1, topic: 4, lesson: 27, title: "Giảm một số đi một số lần"}
  - {id: math-g3-kntt-028, grade: 3, subject: math, semester: 1, volume: 1, topic: 4, lesson: 28, title: "Giải bài toán bằng hai bước tính"}
  - {id: math-g3-kntt-029, grade: 3, subject: math, semester: 1, volume: 1, topic: 4, lesson: 29, title: "Luyện tập chung"}
  - {id: math-g3-kntt-030, grade: 3, subject: math, semester: 1, volume: 1, topic: 5, lesson: 30, title: "Mi-li-mét"}
  - {id: math-g3-kntt-031, grade: 3, subject: math, semester: 1, volume: 1, topic: 5, lesson: 31, title: "Gam"}
  - {id: math-g3-kntt-032, grade: 3, subject: math, semester: 1, volume: 1, topic: 5, lesson: 32, title: "Mi-li-lít"}
  - {id: math-g3-kntt-033, grade: 3, subject: math, semester: 1, volume: 1, topic: 5, lesson: 33, title: "Nhiệt độ. Đơn vị đo nhiệt độ"}
  - {id: math-g3-kntt-034, grade: 3, subject: math, semester: 1, volume: 1, topic: 5, lesson: 34, title: "Thực hành và trải nghiệm các đơn vị mi-li-mét, gam, mi-li-lít, độ C"}
  - {id: math-g3-kntt-035, grade: 3, subject: math, semester: 1, volume: 1, topic: 5, lesson: 35, title: "Luyện tập chung"}
  - {id: math-g3-kntt-036, grade: 3, subject: math, semester: 1, volume: 1, topic: 6, lesson: 36, title: "Nhân số có ba chữ số với số có một chữ số"}
  - {id: math-g3-kntt-037, grade: 3, subject: math, semester: 1, volume: 1, topic: 6, lesson: 37, title: "Chia số có ba chữ số cho số có một chữ số"}
  - {id: math-g3-kntt-038, grade: 3, subject: math, semester: 1, volume: 1, topic: 6, lesson: 38, title: "Biểu thức số. Tính giá trị của biểu thức số"}
  - {id: math-g3-kntt-039, grade: 3, subject: math, semester: 1, volume: 1, topic: 6, lesson: 39, title: "So sánh số lớn gấp mấy lần số bé"}
  - {id: math-g3-kntt-040, grade: 3, subject: math, semester: 1, volume: 1, topic: 6, lesson: 40, title: "Luyện tập chung"}
  - {id: math-g3-kntt-041, grade: 3, subject: math, semester: 1, volume: 1, topic: 7, lesson: 41, title: "Ôn tập phép nhân, phép chia trong phạm vi 100, 1 000"}
  - {id: math-g3-kntt-042, grade: 3, subject: math, semester: 1, volume: 1, topic: 7, lesson: 42, title: "Ôn tập biểu thức số"}
  - {id: math-g3-kntt-043, grade: 3, subject: math, semester: 1, volume: 1, topic: 7, lesson: 43, title: "Ôn tập hình học và đo lường"}
  - {id: math-g3-kntt-044, grade: 3, subject: math, semester: 1, volume: 1, topic: 7, lesson: 44, title: "Ôn tập chung"}
  - {id: math-g3-kntt-045, grade: 3, subject: math, semester: 2, volume: 2, topic: 8, lesson: 45, title: "Các số có bốn chữ số. Số 10 000"}
  - {id: math-g3-kntt-046, grade: 3, subject: math, semester: 2, volume: 2, topic: 8, lesson: 46, title: "So sánh các số trong phạm vi 10 000"}
  - {id: math-g3-kntt-047, grade: 3, subject: math, semester: 2, volume: 2, topic: 8, lesson: 47, title: "Làm quen với chữ số La Mã"}
  - {id: math-g3-kntt-048, grade: 3, subject: math, semester: 2, volume: 2, topic: 8, lesson: 48, title: "Làm tròn số đến hàng chục, hàng trăm"}
  - {id: math-g3-kntt-049, grade: 3, subject: math, semester: 2, volume: 2, topic: 8, lesson: 49, title: "Luyện tập chung"}
  - {id: math-g3-kntt-050, grade: 3, subject: math, semester: 2, volume: 2, topic: 9, lesson: 50, title: "Chu vi hình tam giác, hình tứ giác, hình chữ nhật, hình vuông"}
  - {id: math-g3-kntt-051, grade: 3, subject: math, semester: 2, volume: 2, topic: 9, lesson: 51, title: "Diện tích của một hình. Xăng-ti-mét vuông"}
  - {id: math-g3-kntt-052, grade: 3, subject: math, semester: 2, volume: 2, topic: 9, lesson: 52, title: "Diện tích hình chữ nhật, diện tích hình vuông"}
  - {id: math-g3-kntt-053, grade: 3, subject: math, semester: 2, volume: 2, topic: 9, lesson: 53, title: "Luyện tập chung"}
  - {id: math-g3-kntt-054, grade: 3, subject: math, semester: 2, volume: 2, topic: 10, lesson: 54, title: "Phép cộng trong phạm vi 10 000"}
  - {id: math-g3-kntt-055, grade: 3, subject: math, semester: 2, volume: 2, topic: 10, lesson: 55, title: "Phép trừ trong phạm vi 10 000"}
  - {id: math-g3-kntt-056, grade: 3, subject: math, semester: 2, volume: 2, topic: 10, lesson: 56, title: "Nhân số có bốn chữ số với số có một chữ số"}
  - {id: math-g3-kntt-057, grade: 3, subject: math, semester: 2, volume: 2, topic: 10, lesson: 57, title: "Chia số có bốn chữ số cho số có một chữ số"}
  - {id: math-g3-kntt-058, grade: 3, subject: math, semester: 2, volume: 2, topic: 10, lesson: 58, title: "Luyện tập chung"}
  - {id: math-g3-kntt-059, grade: 3, subject: math, semester: 2, volume: 2, topic: 11, lesson: 59, title: "Các số có năm chữ số. Số 100 000"}
  - {id: math-g3-kntt-060, grade: 3, subject: math, semester: 2, volume: 2, topic: 11, lesson: 60, title: "So sánh các số trong phạm vi 100 000"}
  - {id: math-g3-kntt-061, grade: 3, subject: math, semester: 2, volume: 2, topic: 11, lesson: 61, title: "Làm tròn số đến hàng nghìn, hàng chục nghìn"}
  - {id: math-g3-kntt-062, grade: 3, subject: math, semester: 2, volume: 2, topic: 11, lesson: 62, title: "Luyện tập chung"}
  - {id: math-g3-kntt-063, grade: 3, subject: math, semester: 2, volume: 2, topic: 12, lesson: 63, title: "Phép cộng trong phạm vi 100 000"}
  - {id: math-g3-kntt-064, grade: 3, subject: math, semester: 2, volume: 2, topic: 12, lesson: 64, title: "Phép trừ trong phạm vi 100 000"}
  - {id: math-g3-kntt-065, grade: 3, subject: math, semester: 2, volume: 2, topic: 12, lesson: 65, title: "Luyện tập chung"}
  - {id: math-g3-kntt-066, grade: 3, subject: math, semester: 2, volume: 2, topic: 13, lesson: 66, title: "Xem đồng hồ. Tháng – năm"}
  - {id: math-g3-kntt-067, grade: 3, subject: math, semester: 2, volume: 2, topic: 13, lesson: 67, title: "Thực hành xem đồng hồ, xem lịch"}
  - {id: math-g3-kntt-068, grade: 3, subject: math, semester: 2, volume: 2, topic: 13, lesson: 68, title: "Tiền Việt Nam"}
  - {id: math-g3-kntt-069, grade: 3, subject: math, semester: 2, volume: 2, topic: 13, lesson: 69, title: "Luyện tập chung"}
  - {id: math-g3-kntt-070, grade: 3, subject: math, semester: 2, volume: 2, topic: 14, lesson: 70, title: "Nhân số có năm chữ số với số có một chữ số"}
  - {id: math-g3-kntt-071, grade: 3, subject: math, semester: 2, volume: 2, topic: 14, lesson: 71, title: "Chia số có năm chữ số cho số có một chữ số"}
  - {id: math-g3-kntt-072, grade: 3, subject: math, semester: 2, volume: 2, topic: 14, lesson: 72, title: "Luyện tập chung"}
  - {id: math-g3-kntt-073, grade: 3, subject: math, semester: 2, volume: 2, topic: 15, lesson: 73, title: "Thu thập, phân loại, ghi chép số liệu. Bảng số liệu"}
  - {id: math-g3-kntt-074, grade: 3, subject: math, semester: 2, volume: 2, topic: 15, lesson: 74, title: "Khả năng xảy ra của một sự kiện"}
  - {id: math-g3-kntt-075, grade: 3, subject: math, semester: 2, volume: 2, topic: 15, lesson: 75, title: "Thực hành và trải nghiệm thu thập, phân loại, ghi chép số liệu, đọc bảng số liệu"}
  - {id: math-g3-kntt-076, grade: 3, subject: math, semester: 2, volume: 2, topic: 16, lesson: 76, title: "Ôn tập các số trong phạm vi 10 000, 100 000"}
  - {id: math-g3-kntt-077, grade: 3, subject: math, semester: 2, volume: 2, topic: 16, lesson: 77, title: "Ôn tập phép cộng, phép trừ trong phạm vi 100 000"}
  - {id: math-g3-kntt-078, grade: 3, subject: math, semester: 2, volume: 2, topic: 16, lesson: 78, title: "Ôn tập phép nhân, phép chia trong phạm vi 100 000"}
  - {id: math-g3-kntt-079, grade: 3, subject: math, semester: 2, volume: 2, topic: 16, lesson: 79, title: "Ôn tập hình học và đo lường"}
  - {id: math-g3-kntt-080, grade: 3, subject: math, semester: 2, volume: 2, topic: 16, lesson: 80, title: "Ôn tập bảng số liệu, khả năng xảy ra của một sự kiện"}
  - {id: math-g3-kntt-081, grade: 3, subject: math, semester: 2, volume: 2, topic: 16, lesson: 81, title: "Ôn tập chung"}

---

## Merged source: `subjects/math/grade-3/assessment.md`

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

---

## Merged source: `subjects/math/grade-3/output-format.md`

---
module: math-grade-3-vn
version: 1.1.0
last_verified: 2026-08-12
---

# Trình bày Toán lớp 3

Áp dụng cấu trúc chung trong `core/output-format.md`, cùng các quy ước:

- Viết hàng nghìn bằng khoảng trắng: `10 000`, `100 000`.
- Phép nhân dùng `×`; phép chia ưu tiên `:`.
- Đơn vị: `mm`, `cm`, `dm`, `m`, `km`, `cm²`, `g`, `kg`, `ml`, `l`, `°C`.
- Tiền: `20 000 đồng`.
- Phân số hiển thị rõ `1/2`, `1/3`, … hoặc dạng đẹp nếu môi trường hỗ trợ.
- Không dùng số thập phân trong bài tính lớp 3.
- Bài lời văn ưu tiên: câu lời giải, phép tính, đáp số.

Nếu `answer_mode != không đáp án`, đáp án ngắn cho câu khách quan, các bước tính cho tự luận và đầy đủ câu lời giải/đáp số cho bài lời văn.

---

## Merged source: `subjects/math/grade-3/quality-gate.md`

---
module: math-grade-3-vn
version: 1.1.0
last_verified: 2026-08-12
source_ref: TOAN3_SKILL_v1_1_VERIFIED_20260812.md#12
---

# Quality Gate Toán lớp 3

Chạy sau `core/quality-gate.md`. Sửa mọi lỗi trước khi xuất.

## Curriculum

- [ ] Không có kiến thức vượt lớp 3.
- [ ] Không có nội dung ngoài bài/chủ đề được yêu cầu.
- [ ] Scope “tuần X” không có kế hoạch trường đã được ghi là ước lượng, không khẳng định tuyệt đối.
- [ ] Bài toán lời văn không quá 2 bước.
- [ ] Phân số chỉ làm quen 1/2 đến 1/9, không có phép tính phân số.
- [ ] Phép nhân/chia ngoài bảng chỉ dùng thừa số hoặc số chia một chữ số theo chuẩn lớp 3.

## Toán học

- [ ] Phép chia có dư luôn có số dư nhỏ hơn số chia.
- [ ] Đổi đơn vị đúng.
- [ ] Chu vi/diện tích đúng công thức.
- [ ] Số liệu không mâu thuẫn.

## Assessment

- [ ] Đề giữa học kỳ lớp 3 không tự bị gọi là kiểm tra định kỳ bắt buộc theo TT27.
- [ ] Nếu mô phỏng kiểm tra định kỳ TT27: thang 10 và điểm cuối không dạng thập phân.
- [ ] Nếu có điểm: tổng đúng thang yêu cầu.

## Trình bày Toán tiểu học Việt Nam

- [ ] Hàng nghìn dùng khoảng trắng (`10 000`, `100 000`).
- [ ] Phép nhân dùng `×`; phép chia ưu tiên `:`.
- [ ] Đơn vị viết đúng: `mm`, `cm`, `dm`, `m`, `km`, `cm²`, `g`, `kg`, `ml`, `l`, `°C`.
- [ ] Tiền viết như `20 000 đồng`.
- [ ] Không dùng số thập phân trong bài tính lớp 3.
- [ ] Lời giải bài lời văn ưu tiên: câu lời giải, phép tính, đáp số.

---

This bundle is generated from the source of truth in `core/` and `subjects/`. Do not edit the bundle to change curriculum.
