# GPT bundle Toán lớp 3

Chạy `scripts/build-chatgpt-math-grade-3.ps1`, sau đó:

1. Dán nội dung `dist/chatgpt/math-grade-3-v1.1.0/instructions.md` vào Instructions của GPT.
2. Upload `knowledge-rules.md` và `knowledge-mapping.md` vào Knowledge.
3. Copy từng dòng `conversation-starters.txt` vào Conversation starters.
4. Bật **Canvas** để GPT hiện bản xem trước và nút Download; Code Interpreter & Data Analysis chỉ là fallback sau khi người dùng chọn định dạng.
5. Không chỉnh curriculum tại adapter; source of truth vẫn nằm trong `subjects/math/grade-3/`.

Starter gợi ý:

- `Tạo phiếu luyện tập Bài 1–3, 20 phút, mức chuẩn, có đáp án.`
- `Tạo đề ôn tập cuối học kỳ I Toán 3, thang 10, kèm ma trận và hướng dẫn chấm.`
- `Tạo 8 bài chia có dư trong phạm vi Bài 25–29 và kiểm tra số dư.`
