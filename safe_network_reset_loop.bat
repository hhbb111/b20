
@echo off
:loop
cls
echo ===========================
echo تحسين الاتصال بالإنترنت (بدون قطع الاتصال)
echo ===========================
echo تنظيف كاش DNS...
ipconfig /flushdns

echo إعادة تعيين Winsock...
netsh winsock reset catalog

echo إعادة تعيين TCP/IP (آمن)...
netsh int ip reset

:: لو تريد إعادة ضبط جدار الحماية فعّل هذا السطر:
netsh advfirewall reset

echo تم تحسين الاتصال بنجاح. الإنترنت سيبقى يعمل.
echo انتظر 60 ثانية لإعادة التكرار... اضغط Ctrl+C للخروج.
timeout /t 60 >nul
goto loop
