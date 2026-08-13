# Fixture Toán 3

`cases.yaml` có cả ca dương và âm. Mỗi case gồm:

- `id`: định danh ổn định;
- `prompt`: yêu cầu đại diện;
- `expected`: hành vi cần có;
- `forbidden`: hành vi không được có;
- `rationale`: rule nguồn.

Validator phase 1 kiểm tra đủ các contract bắt buộc. Khi thêm runner LLM, output cần được review theo ngữ nghĩa; không chỉ tìm keyword.
