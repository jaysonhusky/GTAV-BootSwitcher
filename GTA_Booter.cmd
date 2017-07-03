@echo off
@echo #################################
@echo ###### GTA V Mode Switcher ######
@echo ######### By JaysonHusky ########
@echo ########### (C) 2017 ############
@echo #################################



:: SET THE GTA_INSTALL_DIR TO YOUR GTA V INSTALLATION LOCATION, DO NOT INCLUDE A TRAILING SLASH ::

SET GTA_INSTALL_DIR=C:\GTA-V
echo.
echo.


:: CHECKING WHICH VERSION OF THE GAME IS CURRENTLY SET ::

IF EXIST %GTA_INSTALL_DIR%-Vanilla GOTO VanillaGameLauncher
IF EXIST %GTA_INSTALL_DIR%-MODDED GOTO ModifiedGameLauncher



:VanillaGameLauncher
@echo Altering GTA V Launcher (Setting to Vanilla) [ Safe to Play Online ]
REN %GTA_INSTALL_DIR%-Vanilla\ GTA-V-Temp
REN %GTA_INSTALL_DIR%\ GTA-V-MODDED
REN %GTA_INSTALL_DIR%-Temp\ GTA-V
GOTO Finish

:ModifiedGameLauncher
@echo Altering GTA V Launcher (Setting to Modified) [ Do Not Play Online ]
REN %GTA_INSTALL_DIR%-MODDED\ GTA-V-Temp
REN %GTA_INSTALL_DIR%\ GTA-V-Vanilla
REN %GTA_INSTALL_DIR%-Temp\ GTA-V
GOTO Finish



:: ANNOUNCE COMPLETED MODIFICATION ::

:Finish
echo.
echo.
echo Modification complete
echo.
echo.
pause
:: UNCOMMENT THE FOLLOWING LINES TO ALLOW THE GAME TO LOAD ON EXIT OF THIS PROGRAM ::

::echo.
::echo.
::echo Now loading game......
::START %GTA_INSTALL_DIR%\PlayGTAV.exe
::echo.
::echo.
::pause

:: CLOSE PROGRAM ::
exit