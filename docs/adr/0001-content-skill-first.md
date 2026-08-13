# ADR 0001: Kiến trúc content/skill-first

- Trạng thái: accepted
- Ngày: 2026-08-12

## Bối cảnh

Dự án cần dùng được với nhiều LLM, bắt đầu nhỏ từ Toán 3 và vẫn cho phép mở rộng sang môn/lớp khác. File nguồn v1.1 đang kết hợp curriculum, assessment, workflow, output và quality gate.

## Quyết định

1. Đặt quy tắc có khả năng dùng chung trong `core/`.
2. Đặt kiến thức và hàng rào riêng môn/lớp trong `subjects/`.
3. Giữ `skill.md` như manifest điều phối ngắn, không là bản sao toàn bộ nội dung.
4. Dùng YAML làm source of truth cho mapping SGK; Markdown mô tả ý nghĩa và cách dùng.
5. Adapter chỉ tham chiếu module chuẩn và hướng dẫn cách nạp; không chứa curriculum riêng.
6. Giữ snapshot nguồn bất biến và kiểm tra SHA-256 để refactor dễ audit.
7. Phase 1 dùng fixture + validator nhỏ, chưa thêm runtime/framework sinh đề.

## Hệ quả

- Người dùng phải nạp nhiều file hoặc tạo bundle tạm thời, đổi lại mỗi phần có trách nhiệm rõ và dễ review.
- Adapter có thể phát triển độc lập mà không phân nhánh curriculum.
- Chưa tự động đánh giá mọi output LLM; fixture hiện mô tả contract để dùng cho manual eval hoặc framework phase sau.
