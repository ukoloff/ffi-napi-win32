For /f %%a in ('node -p process.arch') do set NArch=%%a
Echo Node architecture: %NArch%
node -v
call npm -v
git clone src %NArch%
cd %NArch%
call npm install
xcopy lib ..\build\lib /SIY
xcopy build\Release\ffi_bindings.node ..\build\lib\%NArch%-ffi_bindings.node /Y
For %%a in (package.json CHANGELOG.md) do xcopy %%a ..\build\ /Y
cd ..
xcopy README.md build\ /Y
xcopy lib build\lib /Y
