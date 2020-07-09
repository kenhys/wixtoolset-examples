
function main () {
    var install_dir = Session.Property["TD_INSTALLDIR"];
    var fs = new ActiveXObject("Scripting.FileSystemObject");
    var input_path = install_dir + "/td-agent/etc/td-agent/td-agent.conf"
    var file = fs.OpenTextFile(input_path, 1, false,  0);
    var input = file.ReadAll();
    WScript.Echo(input);
    var output_path = install_dir + "/td-agent/etc/td-agent/td-agent.conf.tmp"
    var output = fs.OpenTextFile(output_path, 2, true,  0);
    file.Close();
    fs = null;
}