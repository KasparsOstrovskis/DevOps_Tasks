$os   =Get-Wmiobject -ComputerName localhost -Class Win32_OperatingSystem
$hdd  =Get-WmiObject -ComputerName localhost -class Win32_LogicalDisk -filter "DeviceID='c:'"
$Prop =[ordered]@{
        'Organization' =$os.Organization;
        'ComputerName'=$env:COMPUTERNAME;
        'OS Name'=$os.caption;
        'OS Version'=$os.version;
        'Size(gb)'=$hdd.Size / 1gb -as [int]
        'FreeSpace(gb)'=$hdd.freespace / 1gb -as [int]
        'Used hdd space(gb)'=($hdd.size-$hdd.FreeSpace) /1gb -as [int]
       }

$Obj  =New-Object -TypeName PSObject -Property $Prop 
Write-Output $Obj

