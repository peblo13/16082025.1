@echo off
echo ================================
echo  eCVjob.pl - Diagnostyka Serwera
echo ================================

echo.
echo 1. Sprawdzanie procesu Apache...
tasklist | findstr "httpd.exe"

echo.
echo 2. Sprawdzanie portów...
netstat -an | findstr ":80"

echo.
echo 3. Sprawdzanie plików...
if exist "c:\serwer\htdocs\index.html" (
    echo ✅ index.html istnieje
) else (
    echo ❌ index.html nie istnieje
)

echo.
echo 4. Testowanie URL...
echo Sprawdź te adresy w przeglądarce:
echo.
echo → http://localhost/
echo → http://127.0.0.1/
echo → http://localhost/index.html
echo → http://127.0.0.1/index.html
echo.

echo 5. Jeśli nic nie działa, użyj:
echo → file:///c:/serwer/htdocs/index.html
echo.

pause
