@echo off
title Calcular Áreas de Figuras Geométricas

:menu
cls
echo ============================================
echo Calcular AREAS de FIGURAS GEOMETRICAS                                                                  Creditos: Dxkr
echo ============================================
echo [1] Calcular a Area do Quadrado
echo [2] Calcular a Area do Retangulo
echo [3] Calcular a Area do Triangulo
echo [4] Sair do programa
set /p opcao=Escolha uma opcao: 
if %opcao%==1  goto func1
if %opcao%==2  goto func2
if %opcao%==3  goto func3
if %opcao%==4  goto func4
echo Opcao Invalida
pause
goto menu

:func1
    cls
    echo Quadrado
    echo Digite o lado do quadrado:
    set /p lado=
    set /a quadrado=lado*lado
    echo Resultado: %quadrado%
    pause
    goto menu

:func2
    cls
    echo Retangulo
    echo Digite o tamanho da base:
    set /p base=
    echo Digite a altura:
    set /p altura=
    set /a retangulo=base*altura
    echo Resultado: %retangulo%
    pause
    goto menu

:func3
    cls
    echo Triangulo
    echo Digite o tamanho da base:
    set /p base2=
    echo Digite a altura:
    set /p altura2=
    set /a triangulo=(base2*altura2)/2
    echo Resultado: %triangulo%
    pause
    goto menu

:func4
exit
