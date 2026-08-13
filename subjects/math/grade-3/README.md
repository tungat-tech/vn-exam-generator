---
module: math-grade-3-vn
version: 1.1.0
last_verified: 2026-08-12
school_year: 2026-2027
language: vi
status: verified-refactor
---

# Toán lớp 3 Việt Nam — 2026–2027

Module mẫu được refactor từ `TOAN3_SKILL_v1_1_VERIFIED_20260812.md`. Refactor ban đầu giữ nguyên ý nghĩa giáo dục của nguồn v1.1; version module `1.1.0` biểu thị lần đóng gói đầu tiên theo Semantic Versioning.

## Thành phần

- `skill.md`: workflow điều phối ngắn.
- `curriculum.md`: phạm vi kiến thức, hàng rào và nguồn kiểm chứng.
- `textbook-mapping.yaml`: source of truth machine-readable cho chủ đề và Bài 1–81.
- `textbook-mapping.md`: quy tắc dùng phạm vi bài/chủ đề/tuần.
- `assessment.md`: M1/M2/M3, difficulty mix, phân biệt luyện tập/định kỳ và chấm điểm.
- `quality-gate.md`: kiểm tra riêng Toán 3.
- `examples/`: yêu cầu mẫu, không phải fixture chuẩn.

Các quy tắc dùng chung được tham chiếu từ `core/`; adapter chỉ quyết định cách nạp các file này.

## Metadata kế thừa

- Skill nguồn: `toan-lop-3-vn-2026-2027`
- Version nguồn: `1.1`
- `last_verified`: `2026-08-12`
- Curriculum: Chương trình GDPT ban hành kèm Thông tư 32/2018/TT-BGDĐT và các văn bản sửa đổi, bổ sung còn hiệu lực
- SGK: Toán 3 – Kết nối tri thức với cuộc sống
- Assessment: Thông tư 27/2020/TT-BGDĐT
