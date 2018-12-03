

if(!(Test-Path variable:global:testVar))
{
 
 Write-Warning "Variable does not exist"
 $testVar= Read-Host 'What value you want to set to $testvar?'

}

elseif(Test-Path variable:global:testVar)
{
if($testVar -ne $null -and $testVar -ne ''){
 Write-Output $testVar  
 }
 else
 {
    Write-Warning "Variable is null or empty"
 }
}