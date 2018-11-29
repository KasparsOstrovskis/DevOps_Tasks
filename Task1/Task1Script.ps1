$cd                        = [xml](Get-Content C:\Users\kaspars.ostrovskis\Desktop\DevOpsTasks\Task1\OriginalXML2.xml)
$saveLocation              = "C:\Users\kaspars.ostrovskis\Desktop\DevOpsTasks\Task1\testXML.xml"

$numberToRepeat            = 1..10

foreach ($number in $numberToRepeat) {
       
$cd.note.to = "This XML for $number"

$pathToSAve = "C:\Users\kaspars.ostrovskis\Desktop\DevOpsTasks\Task1\testXML$number.xml"
$cd.Save($pathToSAve) 

}
        



