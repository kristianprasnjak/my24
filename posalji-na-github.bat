@echo off
setlocal EnableDelayedExpansion
chcp 65001 >nul
cd /d "%~dp0"

echo.
echo ==========================================
echo   my24  -  slanje na GitHub
echo ==========================================
echo.

REM ---- je li git dostupan ----
git --version >nul 2>&1
if errorlevel 1 (
  echo [x] Git nije pronaden.
  echo     Instaliraj ga s https://git-scm.com i pokreni ovo ponovno.
  goto :kraj
)

REM ---- prvi put: napravi repozitorij ----
if not exist ".git" (
  echo Prvo pokretanje - stvaram lokalni repozitorij...
  git init -b main
  if errorlevel 1 goto :greska
  echo.
)

REM ---- prvi put: poveznica na GitHub ----
git remote get-url origin >nul 2>&1
if errorlevel 1 (
  echo Jos nema poveznice na GitHub.
  set /p GHUSER=Upisi svoje GitHub korisnicko ime:
  if "!GHUSER!"=="" (
    echo [x] Korisnicko ime je obavezno.
    goto :kraj
  )
  git remote add origin https://github.com/!GHUSER!/my24.git
  if errorlevel 1 goto :greska
  echo Povezano s https://github.com/!GHUSER!/my24.git
  echo.
)

REM ---- ima li uopce promjena ----
git add -A
git diff --cached --quiet
if not errorlevel 1 (
  echo Nema novih promjena za slanje.
  goto :kraj
)

echo Promjene koje se salju:
echo ------------------------------------------
git diff --cached --name-status
echo ------------------------------------------
echo.

REM ---- sigurnosna provjera: kljuc za potpisivanje ----
git diff --cached --name-only | findstr /I /C:".jks" /C:".keystore" /C:"keystore.properties" /C:"key.properties" >nul
if not errorlevel 1 (
  echo.
  echo [x] STANI. Medu promjenama je kljuc za potpisivanje aplikacije.
  echo     Taj file NIKAD ne smije na GitHub.
  echo     Provjeri .gitignore, pa pokreni:  git reset
  goto :kraj
)

REM ---- identitet: git bez toga ne moze napraviti commit ----
git config user.email >nul 2>&1
if errorlevel 1 (
  echo.
  echo Git jos ne zna tko si. Svaki commit biljezi ime i e-mail autora.
  echo.
  echo VAZNO: ako je repozitorij javan, taj e-mail ostaje trajno vidljiv
  echo u povijesti i ne moze se lako ukloniti. GitHub zato nudi zamjenski
  echo e-mail: Settings - Emails - Keep my email addresses private.
  echo Tamo pise adresa oblika  12345678+ime@users.noreply.github.com
  echo.
  set "GNAME="
  set "GMAIL="
  set /p GNAME=Ime za commitove:
  set /p GMAIL=E-mail za commitove:
  if "!GNAME!"=="" goto :kraj
  if "!GMAIL!"=="" goto :kraj
  git config user.name "!GNAME!"
  git config user.email "!GMAIL!"
  echo.
  echo Postavljeno - samo za ovaj repozitorij, ne globalno.
  echo.
)

REM ---- poruka ----
set "PORUKA="
set /p PORUKA=Opis promjene (Enter za zadano):
if "!PORUKA!"=="" set "PORUKA=my24: azuriranje %DATE% %TIME:~0,5%"

git commit -m "!PORUKA!"
if errorlevel 1 goto :greska

echo.
echo Saljem na GitHub...
git push -u origin main
if errorlevel 1 (
  echo.
  echo [x] Slanje nije uspjelo.
  echo     Najcesci razlozi:
  echo       - repozitorij na GitHubu ne postoji ili se zove drukcije
  echo       - trazi prijavu: otvorit ce se prozor za GitHub racun
  echo       - netko je vec slao promjene: pokreni  git pull --rebase  pa opet ovu skriptu
  goto :kraj
)

echo.
echo ==========================================
echo   Poslano.
echo ==========================================
goto :kraj

:greska
echo.
echo [x] Naredba je javila gresku. Poruka je iznad.

:kraj
echo.
pause
endlocal
