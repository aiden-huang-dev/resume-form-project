# Resume Form Web Project

A web practice project that demonstrates basic frontend form handling, PHP backend processing, and MySQL database integration.

---

## 專案簡介（Project Overview）

這是一個 Web 練習專案，透過前端表單、PHP 後端與 MySQL 資料庫，
實作基本的資料傳遞與儲存流程。

---

## Tech Stack / 使用技術
- Frontend: HTML / CSS / JavaScript
- Backend: PHP
- Database: MySQL
- Environment: WampServer (localhost)

---

## What This Project Does / 專案功能
- 使用者於前端填寫履歷表單
- 前端進行基本欄位與格式驗證
- 表單資料送至 PHP (`save.php`)
- PHP 組成 SQL 並寫入 MySQL 資料庫
- 可透過 phpMyAdmin 檢視成功寫入的資料

---

## Project Structure / 專案結構
- `index.html` - 前端表單頁面
- `save.php` - 接收表單資料並寫入資料庫
- `schema.sql` - 資料庫結構（僅包含資料表，無任何資料）

---

## How to Run (Local) / 本機執行方式
1. 安裝 WampServer
2. 將專案資料夾放入：
   `C:\wamp64\www\resume_test`
3. 啟動 WampServer
4. 瀏覽器開啟：
   `http://localhost/resume_test/`
5. 開啟 phpMyAdmin：
   `http://localhost/phpmyadmin5.2.3/`
   - 預設帳號：`root`
   - 預設密碼：（空白）

---

## Database Setup / 資料庫設定
匯入 `schema.sql` 以建立資料表結構（僅包含 schema，不含任何資料）。

---

## Notes / 備註
此專案為學習用途，主要用來理解前後端與資料庫的串接流程，仍在持續整理與優化中。
