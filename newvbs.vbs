strAttachment = "C:\Batch File Test\systems_status.txt"
strAttachment2 = "C:\Batch File Test\links_status.txt"
strMailFile = 2

sendMail "vivek.vadher@bcone.com", _
"pratik.shetty@bcone.com", _
"Batch File Automation Test", _
"This is a test of the Batch Files Automation process."

    '#-------------------------------------------------------------------------
    '#  FUNCTION.......:  sendMail(strFrom, strTo, strSubject, strMail)
    '#  ARGUMENTS......:  strFrom - Email Sender
    '#                    strTo - Email recipient
    '#                    strSubject - Email subject
    '#                    strMail - Email body
    '#  PURPOSE........:  Sends email from a script
    '#  EXAMPLE........:  sendMail "scriptTest@gmail.com", _
    '#                    "recipient@emailAddress.com", _
    '#                    "sendMail Function Test", _
    '#                    "This is a test of the sendMail Function."
    '#          
    '#  NOTES..........:  For this to work, you must define the variable 
    '#                    "oMailServer" on line 1 of the actual Function. This
    '#                    must be set to a valid email server that will accept
    '#                    unauthenticated email from your machine (if you host
    '#                    Exchange onsite, it will do this by default).
    '#
    '#                    To add an attachment add this code above the Function
    '#                    call:
    '#                    strAttachment = "c:\yourAttachment.txt"
    '#                    strMailFile = 1
    '#
    '#                    If there are two attachemnts, add this code before
    '#                    the Function call:
    '#                    strAttachment = "c:\yourAttachment.txt"
    '#                    strAttachment2 = "c:\yourAttachment2.txt"
    '#                    strMailFile = 2
    '# 
    '#-------------------------------------------------------------------------
    Function sendMail(strFrom, strTo, strSubject, strMail)
        oMailServer = "10.30.24.65"
        Set objEmail = CreateObject("CDO.Message")
            objEmail.From = strFrom
            objEmail.To = strTo
            objEmail.Subject = strSubject 
            objEmail.Textbody = strMail
            If strMailFile = 1 Then
                objEmail.AddAttachment strAttachment
            End If
            If strMailFile = 2 Then
                objEmail.AddAttachment strAttachment
                objEmail.AddAttachment strAttachment2
            End If
        objEmail.Configuration.Fields.Item _
    	    ("http://schemas.microsoft.com/cdo/configuration/sendusing") = 2
        objEmail.Configuration.Fields.Item _
    	    ("http://schemas.microsoft.com/cdo/configuration/smtpserver") = _
    	        oMailServer 
        objEmail.Configuration.Fields.Item _
    	    ("http://schemas.microsoft.com/cdo/configuration/smtpserverport") _
                = 25
        objEmail.Configuration.Fields.Update
        objEmail.Send
    End Function