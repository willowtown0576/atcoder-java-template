@echo off
REM 使用方法: submit.bat abc380 a

IF "%~2"=="" (
    echo 使い方: %~nx0 ^<コンテスト名^> ^<問題番号^>
    echo 例:      %~nx0 abc380 a
    exit /b 1
)

SET CONTEST=%1
SET PROBLEM=%2
SET TARGET_DIR=%CONTEST%\%PROBLEM%

IF NOT EXIST "%TARGET_DIR%" (
    echo エラー: ディレクトリ "%TARGET_DIR%" は存在しません
    exit /b 1
)

CD /D "%TARGET_DIR%" || exit /b 1

REM Java (language-id: 5005) で提出
acc submit Main.java -- -l 5005