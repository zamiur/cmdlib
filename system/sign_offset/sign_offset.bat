::cmdlib example of getting unsigned code to run
::Only works on ARM devices (winrt)
@echo off
:signoffset
FOR /F "delims=( tokens=2" %%p IN ('cdb -z %systemroot%\system32\ntoskrnl.exe -c ".symfix;.reload;u ntoskrnl!SeGetImageRequiredSigningLevel+0x18;q" ^| findstr "ldr" ^| findstr "r3,="') DO set signinglevel=%%p
FOR /F "delims=) tokens=1" %%p IN ("%signinglevel%") DO set /a signinglevel=0x%%p + 0x16 - 0x400000