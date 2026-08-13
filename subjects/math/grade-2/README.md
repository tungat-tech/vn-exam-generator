---
module: math-grade-2-vn
version: 0.1.0-beta.1
last_verified: 2026-08-12
school_year: 2026-2027
language: vi
status: provisional-secondary-mapping
---

# Toán lớp 2 Việt Nam — 2026–2027

Module beta tạo học liệu Toán lớp 2 theo Chương trình GDPT hiện hành và mapping SGK *Kết nối tri thức với cuộc sống*.

Khác module Toán 3, module này chưa có skill nguồn do chuyên gia cung cấp. Mapping 75 bài đã được đối chiếu chéo từ các mục lục công khai, nhưng cần một giáo viên/chuyên gia rà soát trực tiếp SGK trước khi gắn trạng thái `verified` hoặc dùng như đề chính thức tại trường.

## Thành phần

- `skill.md`: workflow điều phối.
- `curriculum.md`: phạm vi và hàng rào kiến thức lớp 2.
- `textbook-mapping.yaml`: source of truth cho 14 chủ đề, Bài 1–75.
- `textbook-mapping.md`: quy tắc giới hạn scope.
- `assessment.md`: mức độ, default, chấm điểm và phân biệt loại đề.
- `output-format.md`, `quality-gate.md`: quy tắc xuất và kiểm tra.

Không dùng module này để sao chép bài tập SGK. Đầu ra không phải tài liệu hay đề chính thức của Bộ GDĐT.
