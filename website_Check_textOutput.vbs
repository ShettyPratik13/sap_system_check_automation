Dim strWebsite
Dim fso
Set fso = WScript.CreateObject("Scripting.Filesystemobject")
Set f = fso.OpenTextFile("links_status.txt", 2)


'------------------------------------
strWebsite = "http://mkhasrmd:50013/"
StatusThrow(strWebsite)
'------------------------------------
strWebsite = "http://mmkndsrmep.corp.mahindra.com:50000/irj/portal"
StatusThrow(strWebsite)
'------------------------------------
strWebsite = "http://mkharpid.corp.mahindra.com:50013/"
StatusThrow(strWebsite)
'------------------------------------
strWebsite = "http://mkharpid.corp.mahindra.com:8000/"
StatusThrow(strWebsite)
'------------------------------------
strWebsite = "http://mlkndcrmsdev.corp.mahindra.com:8000/sap/bc/bsp/sap/crm_ui_frame/default.htm?sap-client=100&sap-sessioncmd=open"
StatusThrow(strWebsite)
'------------------------------------
strWebsite = "http://grcdev70:50000/AE/index.jsp"
StatusThrow(strWebsite)
'------------------------------------
strWebsite = "http://mkhasrmd.corp.mahindra.com:50100/monitoring/SystemInfo/"
StatusThrow(strWebsite)
'------------------------------------
strWebsite = "http://MMKNDSRMEP.corp.mahindra.com:50000/monitoring/SystemInfo/"
StatusThrow(strWebsite)
'------------------------------------
strWebsite = "http://mkharepd:50000/irj/portal/"
StatusThrow(strWebsite)
'------------------------------------
strWebsite = "http://mmkndbobdev.corp.mahindra.com:8080/BOE/CMC"
StatusThrow(strWebsite)
'------------------------------------
strWebsite = "http://10.2.145.13/HyperionFDM"
StatusThrow(strWebsite)
'------------------------------------
strWebsite = "http://10.2.145.13/workspace/index.jsp"
StatusThrow(strWebsite)
'------------------------------------
strWebsite = "http://mmkndscmepd:50000/irj/portal"
StatusThrow(strWebsite)
'------------------------------------
strWebsite = "http://mkhasrmq:50013/"
StatusThrow(strWebsite)
'------------------------------------
strWebsite = "http://mkharpiq:50013/ "
StatusThrow(strWebsite)
'------------------------------------
strWebsite = "http://mlkndcrmtst:50000/index.html"
StatusThrow(strWebsite)
'------------------------------------
strWebsite = "http://mkharepq:50000"
StatusThrow(strWebsite)
'------------------------------------
strWebsite = "http://mmkndsrmqep.corp.mahindra.com:50000/irj/portal/ "
StatusThrow(strWebsite)
'------------------------------------
strWebsite = "http://mkhasrmq.corp.mahindra.com:50100/monitoring/SystemInfo"
StatusThrow(strWebsite)
'------------------------------------
strWebsite = "http://mmkndbobjqa:8080/BOE/CMC"
StatusThrow(strWebsite)
'------------------------------------
strWebsite = "http://ep.mahindra.com"
StatusThrow(strWebsite)
'------------------------------------
strWebsite = "http://srm.mahindra.com"
StatusThrow(strWebsite)
'------------------------------------
strWebsite = "http://grcprod70:50000/AE/index.jsp"
StatusThrow(strWebsite)
'------------------------------------
strWebsite = "http://mksrmap1.corp.mahindra.com:50100/index.html"
StatusThrow(strWebsite)
'------------------------------------
strWebsite = "http://mmkndmii.corp.mahindra.com:50100/XMII/index.html"
StatusThrow(strWebsite)
'------------------------------------
strWebsite = "http://mmkndnakprd/OrgChart/default.aspx"
StatusThrow(strWebsite)
'------------------------------------
strWebsite = "http://10.142.0.78:50000/index.html"
StatusThrow(strWebsite)
'------------------------------------
strWebsite = "http://mmsolprd:50000/index.html"
StatusThrow(strWebsite)
'------------------------------------
strWebsite = "http://10.2.202.230:8080/qcbin/"
StatusThrow(strWebsite)
'------------------------------------
strWebsite = "http://srmxi-n1:50500/rep/start/index.jsp"
StatusThrow(strWebsite)
'------------------------------------
strWebsite = "http://mmkndgrcprdclu.corp.mahindra.com:8004/nwbc/?sap-nwbc-node=root&sap-client=001&sap-language=EN"
StatusThrow(strWebsite)
'------------------------------------
strWebsite = "http://bo.mahindra.com:8080/InfoViewApp/logon.jsp"
StatusThrow(strWebsite)
'------------------------------------
strWebsite = "http://bo.mahindra.com:8080/polestar/"
StatusThrow(strWebsite)
'------------------------------------
strWebsite = "http://bo1.mahindra.com:8080/BOE/CMC"
StatusThrow(strWebsite)
'------------------------------------
strWebsite = "http://bo1.mahindra.com:8080/BOE/BI"
StatusThrow(strWebsite)
'------------------------------------
strWebsite = "http://bo1.mahindra.com:8080/explorer"
StatusThrow(strWebsite)
'------------------------------------
strWebsite = "http://mdwds01.mahindradms.com:50000/index.html"
StatusThrow(strWebsite)
'------------------------------------
strWebsite = "http://mdwds01.mahindradms.com:50000/irj/portal"
StatusThrow(strWebsite)
'------------------------------------
strWebsite = "http://mmkndgrcprdclu.corp.mahindra.com:8004/sap/bc/webdynpro/sap/"
StatusThrow(strWebsite)
'------------------------------------
strWebsite = "http://grc10prd.mahindra.com/sap/bc/webdynpro/sap/"
StatusThrow(strWebsite)
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