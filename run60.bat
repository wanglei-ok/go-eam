
COLOR 0A

title Cluster Client 实时监控

@echo off

rem 执行代码
:start 

rem 显示时间
echo %time% 

::设置字符串变量 运行目标程序 字符串不能过长 过长无法完整进程名最多 Lottery_count_3d_ssq_1.ex 位 26位
set str1=go-eam.exe

@taskkill /F /IM %str1% 2>nul

start ""  "%cd%\%str1%"


ping 127.1 -n 60 >nul
goto start