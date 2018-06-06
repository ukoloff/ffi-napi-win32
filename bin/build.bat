For /f %%a in ('node -p process.arch') do set NArch=%%a
Echo Node architecture: %NArch%
node -v
call npm -v
git clone src %NArch%
cd %NArch%
echo Building...
call npm install
echo Copying...
xcopy lib ..\build\lib /SIY
copy /B /Y build\Release\ffi_bindings.node ..\build\lib\%NArch%-ffi_bindings.node
For %%a in (package.json CHANGELOG.md) do copy /B /Y %%a ..\build\
cd ..
copy /B /Y README.md build\
copy /B /Y lib build\lib
echo Done...
