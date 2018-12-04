$filepath     = 'C:\Users\kaspars.ostrovskis\Desktop\DevOpsTasks\Task4\filename.html'
$checkForFile = Test-Path -Path $filepath


if(!($checkForFile) ){

Write-Warning "File does not exist"
Write-Verbose "Downloading file" -Verbose
Invoke-WebRequest -Uri "https://www.tvnet.lv" -OutFile 'C:\Users\kaspars.ostrovskis\Desktop\DevOpsTasks\Task4\filename.html'
}
elseif($checkForFile){

Write-Verbose "File is already there" -Verbose

}

