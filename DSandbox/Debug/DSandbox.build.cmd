set PATH=C:\D\dmd2\windows\bin;C:\Program Files (x86)\Microsoft Visual Studio 12.0\\Common7\IDE;C:\Program Files (x86)\Windows Kits\8.1\\bin;%PATH%
dmd -g -debug -X -Xf"Debug\DSandbox.json" -deps="Debug\DSandbox.dep" -c -of"Debug\DSandbox.obj" main.d
if errorlevel 1 goto reportError

set LIB="C:\D\dmd2\windows\bin\..\lib"
echo. > C:\Users\chpink\Home\sandbox\DSandbox\DSandbox\Debug\DSandbox.build.lnkarg
echo "Debug\DSandbox.obj","Debug\DSandbox.exe","Debug\DSandbox.map",user32.lib+ >> C:\Users\chpink\Home\sandbox\DSandbox\DSandbox\Debug\DSandbox.build.lnkarg
echo kernel32.lib/NOMAP/CO/NOI/DELEXE >> C:\Users\chpink\Home\sandbox\DSandbox\DSandbox\Debug\DSandbox.build.lnkarg

"C:\Program Files (x86)\VisualD\pipedmd.exe" -deps Debug\DSandbox.lnkdep C:\D\dmd2\windows\bin\link.exe @C:\Users\chpink\Home\sandbox\DSandbox\DSandbox\Debug\DSandbox.build.lnkarg
if errorlevel 1 goto reportError
if not exist "Debug\DSandbox.exe" (echo "Debug\DSandbox.exe" not created! && goto reportError)

goto noError

:reportError
echo Building Debug\DSandbox.exe failed!

:noError
