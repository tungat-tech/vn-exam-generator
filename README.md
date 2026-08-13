# VietEduKit

VietEduKit giúp giáo viên và phụ huynh tạo học liệu Toán tiểu học Việt Nam bằng ChatGPT, Claude, Gemini hoặc mô hình AI có hỗ trợ tải file Markdown.

> **Tuyên bố:** Học liệu do dự án hoặc mô hình sinh ra không phải tài liệu, đề thi hay hướng dẫn chính thức của Bộ Giáo dục và Đào tạo. Giáo viên/người lớn cần rà soát trước khi sử dụng với học sinh.

## Dành cho giáo viên và phụ huynh

### Bạn chỉ cần một file

Chọn đúng lớp, tải **một file `.md`**, rồi đính kèm file đó vào cuộc trò chuyện với AI:

| Lớp | File dùng ngay | Trạng thái nội dung |
|---|---|---|
| Toán 1 | [Tải `vietedukit-toan-lop-1.md`](downloads/vietedukit-toan-lop-1.md) | Beta, mapping Bài 1–41 |
| Toán 2 | [Tải `vietedukit-toan-lop-2.md`](downloads/vietedukit-toan-lop-2.md) | Beta, mapping Bài 1–75 |
| Toán 3 | [Tải `vietedukit-toan-lop-3.md`](downloads/vietedukit-toan-lop-3.md) | Verified từ skill nguồn v1.1, Bài 1–81 |
| Toán 4 | [Tải `vietedukit-toan-lop-4.md`](downloads/vietedukit-toan-lop-4.md) | Beta, mapping Bài 1–73 |
| Toán 5 | [Tải `vietedukit-toan-lop-5.md`](downloads/vietedukit-toan-lop-5.md) | Beta, mapping Bài 1–75 |

Bạn không cần tải repository, cài phần mềm hoặc chạy file `.ps1`.

### Cách dùng

1. Tải file đúng lớp từ bảng trên.
2. Mở ChatGPT, Claude hoặc Gemini và đính kèm file `.md` vào cuộc trò chuyện.
3. Gửi yêu cầu bằng tiếng Việt. Ví dụ:

```text
Hãy dùng file VietEduKit tôi đã cung cấp.
Tạo phiếu luyện tập Toán lớp 3 từ Bài 1 đến Bài 3,
thời gian 20 phút, mức chuẩn, có đáp án tách riêng.
```

Một số yêu cầu khác:

- `Tạo 10 câu luyện phép chia có dư đúng phạm vi đã học.`
- `Ra đề ôn tập cuối học kỳ I, thang điểm 10, có ma trận và hướng dẫn chấm.`
- `Con đang sai phép trừ có nhớ. Tạo bài luyện từ dễ đến vừa và giải thích lỗi thường gặp.`
- `Tạo đề chỉ có câu hỏi, không kèm đáp án.`

Nếu mở cuộc trò chuyện mới hoặc nền tảng không giữ file cũ, hãy đính kèm lại file `.md`. Toán 1, 2, 4 và 5 đang ở trạng thái beta; nên rà soát kỹ phạm vi bài trước khi in hoặc giao cho học sinh.

## Dành cho developer và contributor

### Mục tiêu kỹ thuật

Repository được tổ chức theo hướng **content/skill-first** và độc lập nhà cung cấp LLM. Curriculum nằm trong `core/` và `subjects/`; adapter và file tải xuống chỉ là cách đóng gói, không phải source of truth.

Dự án hiện chưa có webapp.

### Kiến trúc

```text
core/                         Quy tắc dùng chung giữa các môn/lớp
subjects/math/grade-<n>/      Curriculum và hành vi riêng của từng lớp
adapters/                     Cách nạp nội dung vào từng môi trường
downloads/                    Bundle một file cho người dùng cuối, được sinh tự động
scripts/                      Script build bundle
tests/math-grade-<n>/         Fixture hành vi và expected behavior
docs/                         ADR, provenance và bản nguồn bất biến
```

Các quyết định chính:

- `skill.md` chỉ điều phối; nội dung chi tiết được tách thành curriculum, assessment, mapping và quality gate.
- YAML mapping là nguồn dữ liệu duy nhất cho danh sách bài; Markdown mô tả cách sử dụng mapping.
- Quy tắc dùng chung nằm trong `core/`; mỗi lớp bổ sung hàng rào riêng trong `subjects/`.
- File trong `downloads/` được sinh từ manifest để người dùng chỉ cần một file; không chỉnh trực tiếp các file này để thay đổi curriculum.
- Adapter không được trở thành source of truth.
- Bản nguồn Toán 3 được giữ tại `docs/source/` để review bằng diff và kiểm tra provenance.

Xem thêm [ADR 0001](docs/adr/0001-content-skill-first.md).

### Build bundle một file

Sinh lại toàn bộ Toán 1–5:

```powershell
powershell -ExecutionPolicy Bypass -File scripts/build-generic-math-grade.ps1
```

Chỉ sinh một lớp:

```powershell
powershell -ExecutionPolicy Bypass -File scripts/build-generic-math-grade.ps1 -Grade 3
```

Manifest và hướng dẫn đóng gói chi tiết nằm tại [adapters/generic/](adapters/generic/README.md). Các bundle dành riêng cho GPT Builder nằm trong `dist/` và không được commit.

### Chạy kiểm tra

```powershell
powershell -ExecutionPolicy Bypass -File tests/validate-repository.ps1
powershell -ExecutionPolicy Bypass -File tests/validate-generic-bundles.ps1
powershell -ExecutionPolicy Bypass -File tests/validate-chatgpt-bundles.ps1
powershell -ExecutionPolicy Bypass -File tests/validate-beta-math-grades.ps1
powershell -ExecutionPolicy Bypass -File tests/validate-math-grade-2.ps1
```

### Thêm môn/lớp mới

1. Tạo `subjects/<subject>/<grade>/` với `README.md`, `skill.md`, `curriculum.md`, `assessment.md`, `quality-gate.md` và mapping machine-readable nếu có.
2. Ghi metadata `version`, `last_verified`, phạm vi áp dụng và nguồn kiểm chứng.
3. Chỉ đưa quy tắc thực sự dùng chung vào `core/`.
4. Thêm manifest, fixture dương/âm và validation cho các hàng rào kiến thức.
5. Sinh lại bundle người dùng và ghi thay đổi trong `CHANGELOG.md`.

Xem [CONTRIBUTING.md](CONTRIBUTING.md) để biết quy trình đóng góp và cách báo lỗi curriculum.

### Versioning

Dự án dùng Semantic Versioning; mỗi module nội dung có version độc lập:

- `PATCH`: sửa diễn đạt, metadata hoặc test mà không đổi hành vi giáo dục;
- `MINOR`: thêm khả năng tương thích ngược hoặc mở rộng có kiểm soát;
- `MAJOR`: thay đổi curriculum, mapping hoặc rule không tương thích.

## Giấy phép

Repository sử dụng dual-license:

- mã nguồn, script, schema và thành phần phần mềm: **GNU AGPL-3.0** — xem [LICENSE](LICENSE);
- curriculum, mapping, quy tắc giáo dục, ví dụ và tài liệu: **CC BY-SA 4.0** — xem [LICENSE-CONTENT.md](LICENSE-CONTENT.md).

Cả hai giấy phép đều cho phép sử dụng thương mại, với nghĩa vụ mở nguồn hoặc chia sẻ tương tự theo phạm vi tương ứng. Các quyền đã được cấp cho bản phát hành trước theo MIT/CC BY 4.0 không bị thu hồi.
