# Đóng góp

Cảm ơn bạn muốn đóng góp cho Open Giáo Dục VN. Tiếng Việt là ngôn ngữ chính của curriculum; tên file/thư mục dùng tiếng Anh để thuận tiện phát triển.

## Nguyên tắc

- Không thay đổi nội dung giáo dục trong một refactor thuần kỹ thuật.
- Giữ thay đổi nhỏ, dễ diff và ghi rõ file nguồn.
- Ưu tiên Markdown/YAML; không thêm framework nếu fixture và script nhỏ đã đủ.
- Không sao chép nguyên văn bài tập SGK. Mapping chỉ dùng để xác định phạm vi và tạo câu hỏi mới tương đương chuẩn kiến thức.
- Không gọi học liệu tạo ra là tài liệu hoặc đề chính thức của Bộ GDĐT.

## Quy trình

1. Tạo issue hoặc mô tả rõ loại thay đổi: `content`, `curriculum`, `adapter`, `test`, `docs` hay `refactor`.
2. Với thay đổi curriculum, dẫn nguồn chính thức và nêu rõ ngày xác minh.
3. Cập nhật metadata module và `CHANGELOG.md` khi cần.
4. Thêm/sửa fixture thể hiện hành vi mong đợi.
5. Chạy `pwsh -File tests/validate-repository.ps1`.
6. Trong pull request, ghi rõ: phạm vi, file nguồn, thay đổi giáo dục (nếu có), kết quả test và rủi ro.

## Thay đổi mapping SGK

`subjects/math/grade-3/textbook-mapping.yaml` là source of truth cho mapping Toán 3. Không lặp lại danh sách bài trong Markdown. Pull request đổi mapping phải:

- nêu số bài bị ảnh hưởng;
- có nguồn kiểm chứng;
- cập nhật `last_verified` khi đã rà soát đầy đủ;
- bảo đảm ID ổn định nếu bài không đổi;
- cập nhật fixture/validator để phát hiện thiếu, trùng hoặc đứt dãy.

## Thêm môn/lớp

Dùng module Toán 3 làm mẫu cấu trúc, không sao chép các rule Toán 3 sang môn khác. Tách rõ:

- quy tắc dùng chung (`core/`);
- nội dung môn/lớp (`subjects/`);
- cách nạp vào công cụ (`adapters/`);
- fixture hành vi (`tests/`).

## Báo lỗi curriculum

Issue nên có:

- vị trí (`file`, heading hoặc lesson ID);
- mô tả sai lệch;
- nội dung đúng được đề xuất;
- văn bản/SGK làm căn cứ và ngày kiểm tra;
- ảnh hưởng dự kiến tới fixture, adapter hoặc output.

Không gửi dữ liệu cá nhân, bài làm có tên thật của học sinh hoặc tài liệu không có quyền chia sẻ.
