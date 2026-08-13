# Generic adapter

Dùng với LLM có khả năng nhận nhiều tệp hoặc một context dài.

## Cách dùng

1. Chọn manifest đúng lớp (`manifest.yaml` cho Toán 3 hoặc `math-grade-<n>-manifest.yaml` cho module beta).
2. Nạp các file theo đúng thứ tự `load_order` và cho LLM biết `skill.md` của lớp là workflow điều phối; YAML mapping là dữ liệu, không phải lời nhắc để sao chép bài SGK.
3. Gửi yêu cầu tự nhiên bằng tiếng Việt.
4. Yêu cầu mô hình tự kiểm tra bằng hai quality gate trước khi trả lời.

Nếu môi trường chỉ nhận một prompt, nối nội dung các file theo thứ tự manifest và đặt đường dẫn làm heading phân cách. Bundle chỉ là artifact tạm; không commit bundle làm source of truth.

Ví dụ lời dẫn:

```text
Hãy tuân thủ module Toán lớp 3 được cung cấp. Xác định scope từ mapping,
không dùng kiến thức chưa học, và chạy Quality Gate trước khi trả lời.
Yêu cầu: Ra đề ôn tập từ Bài 1 đến Bài 3, 30 phút, có đáp án tách riêng.
```
