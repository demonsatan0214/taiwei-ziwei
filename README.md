# 太微命判｜黃進長老師 紫微斗數線上論命網 & 手機 App 專案

> **給施工 AI（Claude Code / Cursor / Codex / Antigravity）的進場指引**：
> 1. 開工前請先閱讀 [`_AI_MEMORY/PROJECT_SPEC.md`](./_AI_MEMORY/PROJECT_SPEC.md) 了解品牌背景、書籍理論、四階定價與目前架構。
> 2. 修改前後請在 [`_AI_MEMORY/ACTIVE_WORK.md`](./_AI_MEMORY/ACTIVE_WORK.md) 登記工作項目與異動檔案。
> 3. 每次修改完 UI，請執行 `powershell -NoProfile -File .\scripts\deploy.ps1 "更新說明"`（或參考 [`_AI_MEMORY/DEPLOY_SOP.md`](./_AI_MEMORY/DEPLOY_SOP.md)），同步更新線上公開預覽網址。

---

## 🌐 線上公開網址（可隨時傳 LINE 給家人與老師預覽）
- **正式預覽網址**：**https://demonsatan0214.github.io/taiwei-ziwei/**
- **GitHub 儲存庫**：`https://github.com/demonsatan0214/taiwei-ziwei`

---

## 📁 專案資料夾結構

```text
太微命判_黃進長算命網/
├── index.html                          # 網站主檔案（RWD 電腦＋手機雙端自適應、含排盤與預約互動）
├── .nojekyll                           # GitHub Pages 靜態發布設定檔
├── README.md                           # 專案總覽與 AI 進場指引（本檔案）
├── _AI_MEMORY/                         # 🤖 施工 AI 專用記憶與協作目錄
│   ├── PROJECT_SPEC.md                 # 專案規格書（老師背景、太微命判核心主張、定價與設計規範）
│   ├── ACTIVE_WORK.md                  # AI 施工交接與變更紀錄看板
│   └── DEPLOY_SOP.md                   # 線上網址發布與更新 SOP
├── docs/                               # 📋 企劃與說明文件
│   ├── 01_網站與App商業模式企劃書.md   # 給黃進長老師與家人看的功能與收費規劃說明
│   └── 02_未來開發路線圖_Roadmap.md    # 從前端 UI 邁向真實排盤後端、金流與 App 的施工藍圖
├── assets/                             # 🖼️ 品牌與設計素材庫
│   ├── master_photos/                  # 放置黃進長老師本人照片、印章、題字素材
│   ├── books/                          # 放置武陵出版社兩部著作之封面與簡介素材
│   └── ui_previews/                    # 網站各區塊預覽截圖備份
└── scripts/                            # ⚡ 自動化工具腳本
    ├── deploy.ps1                      # 一鍵推送更新至公開網址腳本
    └── preview_local.ps1               # 本機啟動預覽伺服器腳本
```
