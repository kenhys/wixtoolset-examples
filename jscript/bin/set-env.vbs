
pathValue = "c:\\opt\\fluent"
newValue = Replace(pathvalue, "\\", "/")
' Session.Property("FLUENTPROJECTLOCATION") = newValue
WScript.echo(newValue)
Set shellObject = CreateObject("WScript.Shell")
' systemEnv = shellObject.Environment("SYSTEM")
Set systemEnv = shellObject.Environment("USER")
systemEnv.item("FLUENT_PACKAGE_TOPDIR") = newValue
WScript.echo(systemEnv.item("FLUENT_PACKAGE_TOPDIR"))
