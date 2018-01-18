@ECHO ON
REM Install Hugo if it's not installed
pushd D:\home\site\deployments\tools 
if not exist Hugo0323 md Hugo0323
cd Hugo0323
if exist bin goto build
md bin
cd bin
:install
curl -o Hugo0323.zip -L https://github.com/gohugoio/hugo/releases/download/v0.32.3/hugo_0.32.3_Windows-64bit.zip
echo Installing Hugo...
SetLocal DisableDelayedExpansion & d:\7zip\7za x Hugo0323.zip

REM Generate Hugo static site from source on GitHub
:build
popd
call D:\home\site\deployments\tools\Hugo0323\bin\hugo -d D:\home\site\wwwroot
echo Hugo build finished successfully.