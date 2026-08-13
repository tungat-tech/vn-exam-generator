# Test strategy

Phase 1 dùng **contract fixtures + validator xác định**:

- validator kiểm tra snapshot nguồn, metadata, cấu trúc mapping và đối chiếu nguyên văn tiêu đề Bài 1–81;
- fixture mô tả prompt, các điều kiện bắt buộc/cấm và rationale;
- chưa gọi LLM trong CI, vì output không xác định và chưa chọn provider;
- fixture được thiết kế để phase sau dùng lại cho manual eval, judge hoặc rule-based output lint.

Chạy:

```powershell
pwsh -File tests/validate-repository.ps1
pwsh -File tests/validate-chatgpt-bundles.ps1
```

Test bundle ChatGPT rebuild Toán 1–5 và kiểm tra Instructions/metadata đều yêu cầu tạo file DOCX/PDF thật qua Code Interpreter & Data Analysis, không dùng liên kết tải xuống giả.

Test pass ở phase 1 nghĩa là repository bảo toàn contract và có đủ expected behavior, không có nghĩa mọi LLM chắc chắn tuân thủ. Phase sau nên thêm sample outputs, parser biểu điểm và eval runner độc lập provider.
