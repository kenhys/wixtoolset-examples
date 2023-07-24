
function main () {
    var projectLocation = Session.Property("FLUENTPROJECTLOCATION");
    var newValue = projectLocation.replace(/\\/g, "/");
    var shell = new ActiveXObject("WScript.Shell");
    var systemEnv = shell.Environment("SYSTEM");
    systemEnv.Item("FLUENT_PACKAGE_TOPDIR") = newValue;
}
