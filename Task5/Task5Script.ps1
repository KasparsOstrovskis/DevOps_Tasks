


if(!(Test-Path variable:global:testVar))
{
 
 Write-Warning "Variable does not exist"
 $testVar= Read-Host 'What value you want to set to $testvar?'

}

elseif(Test-Path variable:global:testVar)
{

Write-Output $testVar

}