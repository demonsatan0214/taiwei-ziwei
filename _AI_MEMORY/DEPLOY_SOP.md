# 線上網址發布與更新 SOP（DEPLOY_SOP）

本專案已綁定 GitHub 遠端儲存庫並啟用 **GitHub Pages**，任何時候修改完 [`index.html`](../index.html) 或新增圖片素材後，只需執行下方一鍵腳本即可在 15～30 秒內更新公開網址。

## 1. 公開網址與 Git 資訊
- **公開瀏覽網址**：`https://demonsatan0214.github.io/taiwei-ziwei/`
- **GitHub Repo**：`https://github.com/demonsatan0214/taiwei-ziwei.git`
- **分支**：`main`（根目錄 `/` 直接發布，含 `.nojekyll` 避免 Jekyll 編譯阻擋）

## 2. 一鍵更新指令（推薦施工 AI 直接執行）
在專案根目錄下執行：
```powershell
powershell -NoProfile -ExecutionPolicy Bypass -File .\scripts\deploy.ps1 "描述本次修改內容"
```

## 3. 手動 Git 更新步驟
若不透過腳本，亦可直接執行：
```powershell
git add -A
git commit -m "Update UI"
git push origin main
gh api -X POST repos/demonsatan0214/taiwei-ziwei/pages/builds
```
推送後約 15～30 秒，重新整理 `https://demonsatan0214.github.io/taiwei-ziwei/` 即可看到最新畫面（手機 LINE 內建瀏覽器若有快取，可在網址後加上 `?v=任意數字` 強制刷新）。
