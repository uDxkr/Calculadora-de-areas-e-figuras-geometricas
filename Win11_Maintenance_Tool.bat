 
@echo off
title Cleaner Windows 11
 
 
net session >nul 2>&1
if %errorlevel% neq 0 (
    color 4
    echo Execute como Administrador!
    pause
    exit
)
 
 
:menu
cls
color 0A
title Cleaner Windows 11
echo =============================================
echo .
echo Cleaner Windows 11
echo Username: %Username%
echo Dia: %date%
echo Horas: %time%
 
echo Make <3 by uDxkr
echo .
echo =============================================
echo =                                           =    
echo =      [1] Limpar Prefetch                  =
echo =      [2] Limpar Temp                      =
echo =      [3] Limpar Temporarios do windos     =
echo =      [4] Verificar arquivos do sistema    =
echo =      [5] Desativar servicos               =
echo =      [6] Ativar servicos                  =
echo =      [7] Limpar Lixeira                   =
echo =      [8] Limpar Cache Windows             =
echo =      [9] Limpar Cache DNS                 =
echo =      [10] Limpar temp WinUP               =
echo =      [11] Otimizar Disco                  =
echo =      [12] Limpar historico Win+R          =
echo =      [13] Abrir gerenciador de servicos   =
echo =      [14] Opti e desfragmentar de disco   =
echo =      [15] Limpar TUDO                     =
echo =      [0] Sair do programa                 =
echo =                                           =
echo =============================================
 
set /p opcao=Escolha uma opcao:
if %opcao%==1  goto func1
if %opcao%==2  goto func2
if %opcao%==3  goto func3
if %opcao%==4  goto func4
if %opcao%==5  goto func5
if %opcao%==6  goto func6
if %opcao%==7  goto func7
if %opcao%==8  goto func8
if %opcao%==9  goto func9
if %opcao%==10 goto func10
if %opcao%==11 goto func11
if %opcao%==12 goto func12
if %opcao%==13 goto func13
if %opcao%==14 goto func14
if %opcao%==15 goto func15
if %opcao%==0  goto exitfunc
echo Opcao Invalida
pause
goto menu
 
:func1
title Limpando logs...
echo ============================================
echo A limpar logs da Prefetch...
echo ============================================
del /q/f/s C:\Windows\Prefetch\*.*  
pause
goto menu
 
:func2
title Limpando logs...
echo ============================================
echo A limpar logs temporarios da Temp...
echo ============================================
del /q/f/s C:\Users\%username%\AppData\Local\Temp\*
pause
goto menu
 
:func3
title Limpando logs...
echo ============================================
echo A limpar logs temporarios do windows%...
echo ============================================
del /q/f/s C:\Windows\Temp\*
pause
goto menu
 
:func4
title Verificando arquivos do sistema...
echo ============================================
echo Verificando arquivos do sistema...
echo ============================================
sfc /scannow
pause
goto menu
 
:func5
title A desativar Servicos...
echo ============================================
echo A desativar servicos...
echo ============================================
sc stop sysmain
sc stop bam
sc stop DPS
sc stop PcaSvC
sc stop Diagtrack
sc config sysmain start=disabled
sc config bam start=disabled
sc config DPS start=disabled
sc config PcaSvC start=disabled
sc config Diagtrack start=disabled
pause
goto
 
:func6
title A ativar servicos....
cls
echo ============================================
echo A ativar servicos...
echo ============================================
sc config sysmain start=auto
sc config bam start=auto
sc config DPS start=auto
sc config PcaSvC start=auto
sc config Diagtrack start=auto
sc start sysmain
sc start bam
sc start DPS
sc start PcaSvC
sc start Diagtrack
pause
goto menu
 
:func7
title Limpando...
echo ============================================
echo A limpar a Lixeira...
echo ============================================
rd /s /q C:\$Recycle.Bin
pause
goto menu
 
:func8
title Limpando...
echo ============================================
echo A limpar a Cache do windows...
echo ============================================
net stop wuauserv
net stop bits
rd /s /q C:\Windows\SoftwareDistribution
mkdir C:\Windows\SoftwareDistribution
net start wuauserv
net start bits
pause
goto menu
 
:func9
title Limpando DNS...
echo ============================================
echo A limpar cache DNS...
echo ============================================
ipconfig /flushdns
pause
goto menu
 
:func10
title Limpando temporarios...
echo ============================================
echo A limpar arquivos temporarios do windows update...
echo ============================================
net stop wuauserv
net stop bits
del /q /f /s C:\Windows\SoftwareDistribution\Download\*
net start wuauserv
net start bits
pause
goto menu
 
:func11
title Otimizando o disco...
echo ============================================
echo Otimizando disco...
echo ============================================
defrag C: /O
pause
goto menu
 
:func12
title Limpando RegEdit...
echo ============================================
echo A limpar historico do Executar (Win+R)...
echo ============================================
reg delete "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\RunMRU" /f
pause
goto menu
 
:func13
title Abrindo services.msc
echo ============================================
echo A abrir gerenciador de servicos...
echo ============================================
start services.msc
 
:func14
title Otimizacao e desfragmentacao do disco
echo ============================================
echo A desfragmentar e otimizar o disco...
echo ============================================
defrag C: -f -v
goto menu
pause
 
 
 
:func15
title Limpando & Otimizando...
echo ============================================
echo A otimizar & limpar conputador...
echo ============================================
call :func1
call :func2
call :func3
call :func7
call :func8
call :func9
call :func10
call :func12
pause
goto menu
 
:exitfunc
exit
 
 
 
 
