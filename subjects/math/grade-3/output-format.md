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
