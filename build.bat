@echo off
color 09
cls
::Some internal tools
set sdkver=0.1
set platform=Windows
set arch=i386
::Console Main

echo   """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
echo   "                              __                   _                  "
echo   "                             / _|                 | |                 "
echo   "   ___ ___  __ _  ___ ______| |_ _ __ ___  ___  __| | ___  _ __ ___   "
echo   "  / __/ __|/ _` |/ _ \______|  _| '__/ _ \/ _ \/ _` |/ _ \| '_ ` _ \  "
echo   " | (__\__ \ (_| | (_) |     | | | | |  __/  __/ (_| | (_) | | | | | | "
echo   "  \___|___/\__, |\___/      |_| |_|  \___|\___|\__,_|\___/|_| |_| |_| "
echo   "            __/ |                                                     "
echo   "           |___/                                                      "
echo   "                                                                      "
echo   """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
echo 	Crossplatform SDK for Counter-Strike: Global Offensive
echo 		By SparkHacks and csgo-freedom contributors
echo 	  Version: %sdkver%  Platform: %platform% Architecture: %arch%
timeout /t 3 /nobreak > NUL
echo Before compilation, you need to install:
echo LLVM CLang 14
echo Meson
echo Ninja
echo Hit ENTER to continue...
pause > NUL
color 09
echo Meson is about building env...
meson setup Build
color 09
echo Compiling...
meson compile -C Build
color 09
echo Compilation Complete! See folder: "Build"
pause > NUL

::set NUM=0 1 2 3 4 5 6 7 8 9 A B C D E F
::for %%x in (%NUM%) do ( 
::    for %%y in (%NUM%) do (
::        color %%x%%y
::		echo "color %%x%%y"
::        timeout 1 >nul
::    )
::)
