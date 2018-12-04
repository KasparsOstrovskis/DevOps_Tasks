$filePath =Get-Content C:\Users\kaspars.ostrovskis\Desktop\DevOpsTasks\task3\Task3Json.json | ConvertFrom-Json

foreach($var in $filePath.Count){

$print = Write-Output $filePath.RgName,$filepath.Name,$filePath.appName
$print
$print |Out-File C:\Users\kaspars.ostrovskis\Desktop\DevOpsTasks\task3\result.txt


}

#not sure if i understood the task correctly