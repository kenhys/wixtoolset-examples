
function main () {
    var projectLocation = Session.Property["FLUENTPROJECTLOCATION"];
    var newValue = projectLocation.replace(location, "\\", "/")
    var systemEnv = WScript.Shell.Environment("SYSTEM");
    systemEnv("FLUENT_PACKAGE_TOPDIR") = newValue;
}
