
function main () {
    var location = Session.Property["FLUENTPROJECTLOCATION"];
    var newValue = Replace(location, "\\", "/")
    var systemEnv = WScript.Shell.Environment("SYSTEM");
    systemEnv("FLUENT_PACKAGE_TOPDIR") = newValue;
}
