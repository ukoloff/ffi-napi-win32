For /f %%a in ('node -p process.arch') do set NArch=%%a
Echo Node architecture: %NArch%
node -v
call npm -v
git clone src %NArch%
cd %NArch%
call npm install
xcopy /SIY lib ../build/lib
xcopy /Y build/Release/ffi_bindings.node ../build/lib/%NArch%-ffi_bindings.node
For %%a in (package.json CHANGELOG.md) do xcopy /Y %%a ../build/
cd ..
xcopy /Y README.md build/
xcopy /Y lib build/lib
