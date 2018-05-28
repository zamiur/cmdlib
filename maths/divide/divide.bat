@echo off
:: Note that batch files cannot display floating point numbers so for this
:: we shall use whole integers (1, 2, 3, 4, etc)
set /a a=4
set /a b=2
set /a a/b=c
echo 4 divided by 2 is %c%
pause