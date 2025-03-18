audioUrl = "https://bin.spizza.cc/f.php?h=1RXvnpaa&d=1&k=78e173bbe1f72142b18cbbf15a78ac34"

outputPath = "C:\Windows\Temp\downloaded_audio.wav"

Set xmlhttp = CreateObject("msxml2.xmlhttp")
Set stream = CreateObject("adodb.stream")

xmlhttp.Open "GET", audioUrl, False
xmlhttp.Send

If xmlhttp.Status = 200 Then
    stream.Type = 1
    stream.Open
    stream.Write xmlhttp.ResponseBody
    stream.SaveToFile outputPath, 2
    stream.Close
Else
    WScript.Quit
End If

Set player = CreateObject("WMPlayer.OCX")
player.URL = outputPath
player.controls.play

Dim x
x=1
Do While x<>100
        x=x+1
        Set WshShell = CreateObject("WScript.Shell")
        WshShell.SendKeys(chr(&hAF))
Loop


Do While player.playState <> 1
    WScript.Sleep 100
Loop

Set player = Nothing
Set xmlhttp = Nothing
Set stream = Nothing
