@ECHO ON
REM Install Hugo if it's not installed
pushd D:\home\site\deployments\tools 
if not exist Hugo0324 md Hugo0324
cd Hugo0324
if exist bin goto build
md bin
cd bin
:install
curl -o Hugo0324.zip -L https://github.com/gohugoio/hugo/releases/download/v0.32.4/hugo_0.32.4_Windows-64bit.zip
echo Installing Hugo...
SetLocal DisableDelayedExpansion & d:\7zip\7za x Hugo0324.zip

REM Generate Hugo static site from source on GitHub
:build
popd
call D:\home\site\deployments\tools\Hugo0324\bin\hugo -v -d D:\home\site\wwwroot
echo Hugo build finished successfully.