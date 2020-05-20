@Echo Off
@Title Launching
Mode Con:Cols=100 Lines=25
Echo.Set Hide = CreateObject^(^"Wscript.Shell^"^) : Dim strArgs : strArgs = ^"cmd ^/c rbir.exe^" : Hide.Run strArgs, 0, false> "rbir.vbs"
Pushd %~dp0
Cscript rbir.vbs
Del "rbir.vbs" /S /F /Q >Nul 2>&1
Exit