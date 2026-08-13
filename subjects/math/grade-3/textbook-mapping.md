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
