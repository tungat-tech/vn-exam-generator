# Generic adapter

Adapter này đóng gói module thành file Markdown độc lập nhà cung cấp LLM.

## Người dùng cuối

Không cần dùng manifest. Chỉ tải một file đúng lớp từ [`downloads/`](../../downloads/) và đính kèm vào ChatGPT, Claude, Gemini hoặc LLM có hỗ trợ file Markdown.

## Developer

Manifest xác định chính xác thứ tự hợp nhất các nguồn:

- `manifest.yaml`: Toán 3 verified;
- `math-grade-1-manifest.yaml`, `math-grade-2-manifest.yaml`, `math-grade-4-manifest.yaml`, `math-grade-5-manifest.yaml`: các module beta.

Build tất cả:

```powershell
powershell -ExecutionPolicy Bypass -File scripts/build-generic-math-grade.ps1
```

Build một lớp:

```powershell
powershell -ExecutionPolicy Bypass -File scripts/build-generic-math-grade.ps1 -Grade 3
```

Các file trong `downloads/` là artifact được commit để người dùng tải trực tiếp, nhưng có `source_of_truth: false`. Mọi thay đổi curriculum phải thực hiện trong `core/` hoặc `subjects/`, sau đó rebuild và chạy `tests/validate-generic-bundles.ps1`.
