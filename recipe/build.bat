@echo on
@setlocal EnableDelayedExpansion

make || goto :error
make test || goto :error

go-licenses save .\cmd\micro\ --save_path=license-files || goto :error

goto :eof

:error
echo Failed with error #%errorlevel%.
exit 1
