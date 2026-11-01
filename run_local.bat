@echo off
chcp 65001 >nul
cd /d "%~dp0"
where go >nul 2>nul || (echo Go не найден. Установите с https://go.dev/dl/ и запустите снова. & pause & exit /b)
rem Локальный запуск для разработки. Админ создаётся при первом запуске, если его ещё нет.
set PORT=8080
set DATA_DIR=data
set ADMIN_EMAIL=admin@local.test
set ADMIN_PASSWORD=admin12345
start "" http://localhost:8080
go run main.go
pause
