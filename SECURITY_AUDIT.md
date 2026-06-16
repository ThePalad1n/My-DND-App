# Security Audit Report — thepalad1n/my-dnd-app

**Audit Date:** June 16, 2026  
**Severity:** 0 CRITICAL, 1 HIGH, 1 MEDIUM, 1 LOW

---

## 🟠 HIGH Severity

### [DND-H1] Severely Outdated Flutter Dependencies With Known CVEs
- **File:** `pubspec.yaml`
- **Issue:** Key dependencies are multiple major versions behind with known security issues:

| Package | Pinned | Current | Risk |
|---------|--------|---------|------|
| `dio` | `^4.0.4` | 5.x | CVE in redirect handling (SSRF risk) |
| `webview_flutter` | `^3.0.4` | 4.x | Predates multiple sandbox hardening patches |
| `syncfusion_flutter_pdfviewer` | `^20.2.44-beta` | 26.x | 4-year-old beta version |
| Flutter SDK | `>=2.17.6 <3.0.0` | Dart 3.x | Excludes all Dart 3 security patches |

- **Fix:**
  1. Run `flutter pub upgrade --major-versions`
  2. Migrate SDK constraint to `>=3.0.0 <4.0.0`
  3. Remove the beta version pin for Syncfusion; use a stable release
  4. Update `dio` to 5.x and fix any breaking changes
  5. Update `webview_flutter` to 4.x

---

## 🟡 MEDIUM Severity

### [DND-M1] Overly Broad Android Storage Permissions
- **Issue:** The app uses `downloads_path_provider_28` and `permission_handler`, which on Android require `READ_EXTERNAL_STORAGE` / `WRITE_EXTERNAL_STORAGE`. These are deprecated broad permissions in Android 10+ (API 29+).
- **Fix:** Migrate to Android scoped storage APIs (`MediaStore`). Replace `downloads_path_provider_28` with `path_provider`. Request only minimum required permissions using `permission_handler` v11 scoped API.

---

## 🔵 LOW Severity

### [DND-L1] Unmaintained `gallery: ^0.0.1` Package
- **Issue:** This package is at version 0.0.1 and appears to be an experimental/placeholder. Including unmaintained packages is a supply chain risk.
- **Fix:** Identify what this package is used for and replace with a maintained alternative (`photo_manager`, `image_picker`).

---

## Remediation Priority

1. **THIS WEEK:** Run `flutter pub upgrade --major-versions` and migrate to Dart 3
2. **THIS SPRINT:** Fix Android storage permissions (DND-M1)
3. **BACKLOG:** Replace `gallery: ^0.0.1` (DND-L1)

---

*Report generated: June 16, 2026 | Part of IS Partners cross-repository security audit*
