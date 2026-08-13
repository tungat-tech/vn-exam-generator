# VietEduKit

VietEduKit là dự án mã nguồn mở theo hướng **content/skill-first**, giúp giáo viên và phụ huynh Việt Nam tạo học liệu bám chương trình phổ thông bằng nhiều mô hình ngôn ngữ khác nhau.

Module đã có:

- **Toán lớp 1 Việt Nam, năm học 2026–2027** — beta/provisional, mapping Bài 1–41.
- **Toán lớp 3 Việt Nam, năm học 2026–2027** — verified từ skill nguồn v1.1.
- **Toán lớp 2 Việt Nam, năm học 2026–2027** — beta/provisional, chờ chuyên gia rà soát mapping trực tiếp SGK.
- **Toán lớp 4 Việt Nam, năm học 2026–2027** — beta/provisional, mapping Bài 1–73.
- **Toán lớp 5 Việt Nam, năm học 2026–2027** — beta/provisional, mapping Bài 1–75.

Dự án chưa có webapp và không coi bất kỳ adapter LLM nào là nguồn sự thật.

> **Tuyên bố:** Học liệu do dự án hoặc mô hình sinh ra không phải tài liệu, đề thi hay hướng dẫn chính thức của Bộ Giáo dục và Đào tạo. Giáo viên/người lớn cần rà soát trước khi sử dụng với học sinh.

## Quick start

Không cần cài framework:

1. Mở [adapters/generic/README.md](adapters/generic/README.md).
2. Nạp/copy các tệp theo thứ tự trong `adapters/generic/manifest.yaml` vào LLM bạn chọn.
3. Đưa yêu cầu, ví dụ: `Ra đề ôn tập Toán 3 từ Bài 1 đến Bài 3, 30 phút, có đáp án.`
4. Kiểm tra đầu ra theo `core/quality-gate.md` và `subjects/math/grade-3/quality-gate.md` trước khi dùng.

Khi triển khai bằng GPT Builder, xem `adapters/chatgpt/README.md` và bật **Canvas** để xem học liệu trước; chỉ dùng Code Interpreter & Data Analysis làm phương án xuất file sau khi người dùng chọn PDF hoặc DOCX.

Kiểm tra tính toàn vẹn repository trên PowerShell:

```powershell
pwsh -File tests/validate-repository.ps1
```

Trên Windows PowerShell 5.1 có thể dùng:

```powershell
powershell -ExecutionPolicy Bypass -File tests/validate-repository.ps1
```

## Kiến trúc

```text
core/                         Quy tắc dùng chung giữa các môn/lớp
subjects/math/grade-<n>/      Curriculum và hành vi riêng của từng lớp
adapters/                     Cách nạp nội dung vào từng môi trường; không là source of truth
tests/math-grade-<n>/         Fixture hành vi và expected behavior
docs/                         ADR, provenance và bản nguồn bất biến
```

Các quyết định chính:

- `skill.md` chỉ điều phối và trỏ tới reference; nội dung chi tiết không bị nhét vào một prompt lớn.
- `textbook-mapping.yaml` là nguồn dữ liệu duy nhất cho danh sách Bài 1–81; Markdown chỉ mô tả cách dùng mapping.
- Quy tắc dùng chung nằm trong `core/`; lớp/môn có quality gate bổ sung thay vì sao chép checklist chung.
- Adapter chỉ quyết định cách đóng gói/nạp file, không được sửa curriculum.
- Bản gốc được giữ tại `docs/source/` để review bằng diff và kiểm tra provenance.

Xem thêm [ADR 0001](docs/adr/0001-content-skill-first.md).

## Thêm môn/lớp mới

1. Tạo `subjects/<subject>/<grade>/` với `README.md`, `skill.md`, `curriculum.md`, `assessment.md`, `quality-gate.md` và mapping machine-readable nếu có.
2. Ghi metadata `version`, `last_verified`, phạm vi áp dụng và nguồn kiểm chứng.
3. Chỉ đưa quy tắc thực sự dùng chung vào `core/`; không sửa core chỉ để phục vụ một trường hợp đơn lẻ.
4. Thêm fixture dương/âm và validation cho các hàng rào kiến thức.
5. Ghi thay đổi curriculum rõ ràng trong `CHANGELOG.md` và pull request.

## Versioning

Dự án dùng Semantic Versioning cho release repository. Mỗi module nội dung có version độc lập trong frontmatter:

- `PATCH`: sửa diễn đạt/metadata/test, không đổi chuẩn kiến thức hay hành vi dự kiến;
- `MINOR`: thêm khả năng tương thích ngược hoặc mở rộng có kiểm soát;
- `MAJOR`: thay đổi curriculum, mapping, rule hoặc hành vi không tương thích.

Mọi thay đổi sau `last_verified` phải nêu nguồn, phạm vi ảnh hưởng và ngày rà soát mới.

## Báo lỗi curriculum

Mở issue với tiêu đề `curriculum: <mô tả ngắn>` và cung cấp: file/mục liên quan, hành vi hiện tại, hành vi đề xuất, nguồn chính thức, ngày truy cập và phạm vi (chương trình, SGK, đánh giá hay hướng dẫn năm học). Không trộn sửa curriculum với refactor kỹ thuật trong cùng commit nếu có thể.

## Giấy phép

Repository sử dụng dual-license:

- mã nguồn, script, schema và thành phần phần mềm: **GNU Affero General Public License v3.0 (AGPL-3.0)** — xem [LICENSE](LICENSE);
- curriculum, mapping do dự án biên soạn, quy tắc giáo dục, ví dụ và tài liệu: **Creative Commons Attribution-ShareAlike 4.0 International (CC BY-SA 4.0)** — xem [LICENSE-CONTENT.md](LICENSE-CONTENT.md).

Cả hai giấy phép đều cho phép sử dụng thương mại. AGPL yêu cầu duy trì quyền tiếp cận mã nguồn, bao gồm trường hợp phần mềm đã sửa được cung cấp qua mạng; CC BY-SA yêu cầu ghi công và chia sẻ bản chuyển thể theo cùng điều khoản. Các quyền đã được cấp cho bản phát hành trước theo MIT/CC BY 4.0 không bị thu hồi.
