$json   = Get-Content C:\Users\kaspars.ostrovskis\Desktop\DevOpsTasks\Task2\task2.json | ConvertFrom-Json
$sortas = $Json.glossary.GlossDiv.GlossList.GlossEntry.SortAs = "OMPL"
$json |ConvertTo-Json -Depth 20| Set-Content C:\Users\kaspars.ostrovskis\Desktop\DevOpsTasks\Task2\task2_saved.json

