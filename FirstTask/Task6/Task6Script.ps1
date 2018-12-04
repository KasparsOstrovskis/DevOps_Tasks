$bool = Get-Random($false,$true)
Write-Output $bool

if($bool)
{

Get-WmiObject -ComputerName localhost -class win32_logicaldisk -Filter "DeviceID='c:'"

}