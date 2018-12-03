param(

[int]$myVar1 =1,
[string]$myVar2 ="test",
[string]$myVar3 = "test2"
)
function PrintMyVariables()
{
Write-Output $myVar1 $myVar2 $myVar3
}