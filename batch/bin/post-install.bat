@echo on
set TOPDIR=%~dp0..\..
echo %TOPDIR%

if exist "%~dp0..\..\td-agent" (
  @rem migrate c:\opt\td-agent\etc\td-agent.conf
  if exist "%~dp0..\..\td-agent\etc\td-agent\td-agent.conf" (
     move /Y "%~dp0..\..\td-agent\etc\td-agent\td-agent.conf" "%~dp0..\etc\fluent\td-agent.conf"
  )
  @rem migrate c:\opt\td-agent\var\log\td-agent\* files
  for %%f in (%~dp0..\..\td-agent\var\log\td-agent\*) do (
     move /Y %%f "%~dp0..\var\log\fluent\"
  )
  @rem migrate c:\opt\td-agent\var\log\td-agent\* directory (e.g buffer)
  for /d %%d in (%~dp0..\..\td-agent\var\log\td-agent\*) do (
     move /Y %%d "%~dp0..\var\log\fluent\"
  )
  @rem migrate c:\opt\td-agent\etc\ files
  for %%f in (%~dp0..\..\td-agent\etc\*) do (
     move /Y %%f "%~dp0..\etc\fluent\"
  )
  @rem migrate c:\opt\td-agent\etc\plugin directory
  for /d %%d in (%~dp0..\..\td-agent\etc\plugin\*) do (
     move /Y %%d "%~dp0..\etc\fluent\plugin\"
  )
  @rem ensure to remove remained directory
  rmdir /S /Q %~dp0..\..\td-agent
  @rem create symbolic link to c:\opt\fluent (we can't use hardlink for directory)
  @rem symlink c:\opt\td-agent to c:\opt\fluent
  mklink /D %~dp0..\..\td-agent %~dp0..\..\fluent
  @rem symlink c:\opt\fluent\var\log\td-agent to c:\opt\fluent\var\log\fluent
  mklink /D %~dp0..\..\fluent\var\log\td-agent %~dp0..\..\fluent\var\log\fluent
)
