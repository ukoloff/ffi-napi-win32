For /f %%a in ('node -p process.arch') do set NArch=%%a
Echo Node architecture: %NArch%
node -v
call npm -v
git clone src %NArch%
cd %NArch%
call npm install
dir build\Release
