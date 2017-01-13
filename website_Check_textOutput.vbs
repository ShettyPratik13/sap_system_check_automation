Dim strWebsite
Dim fso
Set fso = WScript.CreateObject("Scripting.Filesystemobject")
Set f = fso.OpenTextFile("links_status.txt", 2)


'------------------------------------
strWebsite = "http://mmkndscmepp:50000/irj/portal"
StatusThrow(strWebsite)
'------------------------------------

f.Close





Function StatusThrow(strWebsite)
    If PingSite(strWebsite) Then
        f.WriteLine "Website " & strWebsite & " is UP"
    Else
        f.WriteLine "Website " & strWebsite & " is DOWN"
    End If
End Function


Function PingSite(strWebsite)
' This function checks if a website is running by sending an HTTP request.
' If the website is up, the function returns True, otherwise it returns False.
' Argument: myWebsite [string] in "www.domain.tld" format, without the
' "http://" prefix.
'
' Written by Rob van der Woude
' http://www.robvanderwoude.com
' "WinHttp.WinHttpRequest.5.1" 
    Dim intStatus, objHTTP

    Set objHTTP = CreateObject("WinHttp.WinHttpRequest.5.1")

    objHTTP.Open "GET", strWebsite, False
    ' objHTTP.SetRequestHeader "User-Agent", "Mozilla/4.0 (compatible; MyApp 1.0; Windows NT 5.1)"

    On Error Resume Next

    objHTTP.Send
    intStatus = objHTTP.Status

    On Error Goto 0

    If intStatus = 200 Then
        PingSite = True
    Else
        PingSite = False
    End If

    Set objHTTP = Nothing
End Function
