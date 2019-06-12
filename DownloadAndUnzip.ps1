$url = "https://git.eskom.eu/tgietka/diskclean/raw/master/Clean%20Disk/BleachBit-Portable.zip"
$file = "C:\temp\BleachBit-Portable.zip"
$clnt = new-object System.Net.WebClient
$clnt.DownloadFile($url,$file)

# Unzip the file to specified location
$shell_app=new-object -com shell.application 
$zip_file = $shell_app.namespace($file) 
$destination = $shell_app.namespace("C:\temp") 
$destination.Copyhere($zip_file.items())