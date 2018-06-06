For /f %%a in ('node -p process.arch') do set NArch=%%a
Echo Node architecture: %NArch%
node -v
npm -v
git clone src %NArch%
cd %NArch%
npm install
dir build\Release
