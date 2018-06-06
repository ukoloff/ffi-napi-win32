For /f %%a in ('node -p process.arch') do set NArch=%%a
Echo Node architecture: %Narch%
node -v
npm -v
