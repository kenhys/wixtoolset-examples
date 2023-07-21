
pathValue = "c:\\opt\\fluent"
newValue = Replace(pathvalue, "\\", "/")
' Session.Property("FLUENTPROJECTLOCATION") = newValue
WScript.echo(newValue)
shellObject = CreateObject("WScript.Shell")
' systemEnv = shellObject.Environment("SYSTEM")
systemEnv = shellObject.Environment("USER")
systemEnv("FLUENT_PACKAGE_TOPDIR") = newValue
