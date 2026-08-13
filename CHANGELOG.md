# Changelog

Các thay đổi đáng chú ý của repository được ghi tại đây. Module nội dung có version riêng và phải giữ lịch sử nguồn.

## [Unreleased]

### Added

- Quy tắc preview/export dùng chung cho GPTs Toán 1–5: hiển thị document view trước, không tạo sẵn file; chỉ xuất PDF hoặc DOCX sau khi người dùng chọn.
- Canvas routing thống nhất cho các intent tạo đề, phiếu, bài, bài tập, bài luyện và học liệu; không còn phụ thuộc riêng từ khóa “đề”.
- Module beta Toán lớp 1 năm học 2026–2027 với mapping 10 chủ đề, Bài 1–41.
- Module beta Toán lớp 4 năm học 2026–2027 với mapping 13 chủ đề, Bài 1–73.
- Module beta Toán lớp 5 năm học 2026–2027 với mapping 12 chủ đề, Bài 1–75.
- Fixtures, validator dùng chung và GPT deployment bundle cho Toán 1, 4, 5.
- Module beta Toán lớp 2 năm học 2026–2027 với mapping 14 chủ đề, Bài 1–75.
- Contract fixtures, validator và GPTs deployment bundle cho Toán 2.
- Kiến trúc content/skill-first cho phase 1.
- Module mẫu Toán lớp 3 năm học 2026–2027.
- Mapping machine-readable Bài 1–81 của SGK Kết nối tri thức với cuộc sống.
- Generic, ChatGPT và Codex adapters không chứa curriculum gốc.
- Fixture hành vi và script kiểm tra tính toàn vẹn repository.
- Bản nguồn v1.1 bất biến để đối chiếu refactor.

### Refactored

- Tách `TOAN3_SKILL_v1_1_VERIFIED_20260812.md` thành core dùng chung, curriculum Toán 3, assessment, mapping, output và quality gates; không chủ ý thay đổi nội dung giáo dục.
