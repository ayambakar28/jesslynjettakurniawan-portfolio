@echo off
title Push Portfolio ke GitHub - Jesslyn Jetta Kurniawan
echo ======================================================================
echo       UPLOAD PORTFOLIO KE GITHUB (BINUS CS INTERNSHIP 3+1)
echo ======================================================================
echo.

cd /d D:\jesslyn-portfolio

echo [1/3] Menyimpan semua perubahan file dan gambar...
git add .
git commit -m "update: refresh project images and content" 2>nul

echo [2/3] Memastikan branch utama adalah 'main'...
git branch -M main

echo [3/3] Mengunggah file ke GitHub (https://github.com/ayambakar28/jesslynjettakurniawan-portfolio)...
git push -u origin main

if %errorlevel% equ 0 (
    echo.
    echo ======================================================================
    echo   BERHASIL! Portfolio kamu sudah terupload ke GitHub!
    echo ======================================================================
    echo.
    echo Cara Deploy ke Netlify:
    echo 1. Buka https://app.netlify.com/
    echo 2. Klik "Add new site" -^> "Import an existing project"
    echo 3. Pilih "GitHub" dan pilih repository "jesslynjettakurniawan-portfolio"
    echo 4. Klik tombol "Deploy"! Dalam 30 detik website kamu langsung live online!
    echo ======================================================================
) else (
    echo.
    echo ======================================================================
    echo [PERHATIAN: PERMISSION 403 / AKUN GITHUB TIDAK SESUAI]
    echo ======================================================================
    echo Laptop kamu saat ini terhubung dengan akun GitHub: jesslyna2808-ui
    echo sedangkan repo dibuat di akun: ayambakar28
    echo.
    echo SOLUSI TERCEPAT (Pilih salah satu):
    echo.
    echo CARA 1 (Paling Mudah):
    echo - Buka browser, login ke GitHub "ayambakar28"
    echo - Buka link: https://github.com/ayambakar28/jesslynjettakurniawan-portfolio/settings/access
    echo - Klik "Add people", ketik: jesslyna2808-ui dan klik Invite.
    echo - Buka email atau buka notifikasi di akun jesslyna2808-ui, lalu Accept Invite.
    echo - Jalankan file .bat ini lagi! Langsung sukses ter-push!
    echo.
    echo CARA 2:
    echo - Buat Personal Access Token (classic) di akun ayambakar28 dengan izin 'repo'.
    echo ======================================================================
)

pause
