# sap_system_check_automation
Contains vbscript to automatically check status of SAP systems and java web app links and send email.

This file contains the instructions on how the Batch File Automation works.
------------------------------------------------------------------------------------------------------------
1. First check whether the following files are available in the folder:-
   i.   SystemsBatchFile_AllSystems.bat
   ii.  website_Check_textOutput.vbs
   iii. newvbs.vbs
   iv.  sapinfo.exe
   v.   systems_status.txt
   vi.  links_status.txt

2. The order of script execution and each of their functions are as follows:-
   (a) - SystemsBatchFile_AllSystems.bat must be executed first using task scheduler(or manually)
       - It checks the status of all SAP ABAP systems and writes them into systems_status.txt 
       - sapinfo.exe is used to retrieve SAP System status information
   (b) - website_Check_textOutput.vbs is then called to check status of all links
       - The link statuses get written to links_status.txt
   (c) - newvbs.vbs is then called to attach files systems_status.txt,links_status.txt and generate the email
-------------------------------------------------------------------------------------------------------------
     
