@echo off
title Push Portfolio ke GitHub - Jesslyn Jetta Kurniawan
echo ======================================================================
echo       UPLOAD PORTFOLIO KE GITHUB (BINUS CS INTERNSHIP 3+1)
echo ======================================================================
echo.
echo Pastikan kamu sudah membuat repository baru di https://github.com/new
echo.
set /p repo_url="Masukkan URL Repository GitHub kamu (contoh: https://github.com/username/portfolio.git): "

if "%repo_url%"=="" (
    echo [ERROR] URL repository tidak boleh kosong!
    pause
    exit /b
)

echo.
echo [1/3] Menyiapkan remote origin...
git remote remove origin 2>nul
git remote add origin %repo_url%

echo [2/3] Memastikan branch utama adalah 'main'...
git branch -M main

echo [3/3] Mengunggah file ke GitHub...
git push -u origin main

if %errorlevel% equ 0 (
    echo.
    echo ======================================================================
    echo   BERHASIL! Portfolio kamu sudah terupload ke GitHub!
    echo ======================================================================
    echo.
    echo Langkah selanjutnya untuk mengaktifkan Website Online Gratis:
    echo 1. Buka repo kamu di GitHub
    echo 2. Masuk ke menu 'Settings' -^> 'Pages'
    echo 3. Pada 'Source', pilih 'Deploy from a branch'
    echo 4. Pilih branch 'main' dan folder '/ (root)', klik Save
    echo 5. Tunggu 1-2 menit, link portofolio kamu sudah aktif online!
    echo ======================================================================
) else (
    echo.
    echo [CATATAN] Jika diminta login, silakan login ke akun GitHub kamu di jendela browser atau masukkan Personal Access Token.
)

pause
