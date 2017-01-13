@ECHO OFF
CLS
@ECHO Checking -----  RD2 ABAP --------
cd C:\Batch File Test
sapinfo ashost=10.2.203.34 sysnr=00 & if errorlevel 1 goto SDOWN

@echo RD2 system up>  systems_status.txt
goto BYE

:SDOWN
@echo RD2 system down>  systems_status.txt


:BYE

@ECHO Checking -----  RD3 ABAP --------
cd C:\Batch File Test
sapinfo ashost=10.2.146.12 sysnr=00 & if errorlevel 1 goto SDOWN   

@echo RD3 system up>>  systems_status.txt
goto BYE

:SDOWN
@echo RD3 system down>>  systems_status.txt


:BYE


@ECHO Checking -----  SD2 ABAP --------
cd C:\Batch File Test
sapinfo ashost=10.2.203.87 sysnr=00 & if errorlevel 1 goto SDOWN  

@echo SD2 system up>>  systems_status.txt
goto BYE

:SDOWN
@echo SD2 system down>>  systems_status.txt


:BYE

@ECHO Checking -----  PD2 ABAP --------
cd C:\Batch File Test
sapinfo ashost=10.2.203.89  sysnr=00 & if errorlevel 1 goto SDOWN   

@echo PD2 system up>>  systems_status.txt
goto BYE

:SDOWN
@echo PD2 system down>>  systems_status.txt


:BYE

@ECHO Checking -----  SMD ABAP --------
cd C:\Batch File Test
sapinfo ashost=10.2.150.8  sysnr=00 & if errorlevel 1 goto SDOWN    

@echo SMD system up>>  systems_status.txt
goto BYE

:SDOWN
@echo SMD system down>>  systems_status.txt


:BYE

@ECHO Checking -----  BD2 ABAP --------
cd C:\Batch File Test
sapinfo ashost=10.2.202.243  sysnr=10 & if errorlevel 1 goto SDOWN  
 
@echo BD2  system up>>  systems_status.txt
goto BYE

:SDOWN
@echo BD2 system down>>  systems_status.txt


:BYE

@ECHO Checking -----   GD1 ABAP --------
cd C:\Batch File Test
sapinfo ashost=10.2.206.136 sysnr=00 & if errorlevel 1 goto SDOWN   
 
@echo  GD1 system up>>  systems_status.txt
goto BYE

:SDOWN
@echo  GD1 system down>>  systems_status.txt


:BYE

@ECHO Checking -----  XD7 ABAP --------
cd C:\Batch File Test
sapinfo ashost=10.2.206.162  sysnr=00 & if errorlevel 1 goto SDOWN  

@echo XD7 system up>>  systems_status.txt
goto BYE

:SDOWN
@echo XD7 system down>>  systems_status.txt


:BYE

@ECHO Checking -----   S5D ABAP --------
cd C:\Batch File Test
sapinfo ashost=MMS51DEV  sysnr=00 & if errorlevel 1 goto SDOWN   

@echo  S5D system up>>  systems_status.txt
goto BYE

:SDOWN
@echo  S5D system down>>  systems_status.txt


:BYE

@ECHO Checking -----  LCD ABAP --------
cd C:\Batch File Test
sapinfo ashost=10.2.202.254  sysnr=00 & if errorlevel 1 goto SDOWN  
@echo LCD system up>>  systems_status.txt
goto BYE

:SDOWN
@echo LCD system down>>  systems_status.txt


:BYE

@ECHO Checking -----   PO7 ABAP --------
cd C:\Batch File Test
sapinfo ashost=pidev sysnr=00 & if errorlevel 1 goto SDOWN    

@echo  PO7 system up>>  systems_status.txt
goto BYE

:SDOWN
@echo  PO7 system down>>  systems_status.txt


:BYE

@ECHO Checking -----  RQ2 ABAP --------
cd C:\Batch File Test
sapinfo ashost=10.2.203.35  sysnr=00 & if errorlevel 1 goto SDOWN   

@echo RQ2 system up>>  systems_status.txt
goto BYE

:SDOWN
@echo RQ2 system down>>  systems_status.txt


:BYE

@ECHO Checking -----  RQ3 ABAP --------
cd C:\Batch File Test
sapinfo ashost=10.2.146.13  sysnr=00 & if errorlevel 1 goto SDOWN   

@echo RQ3 system up>>  systems_status.txt
goto BYE

:SDOWN
@echo RQ3 system down>>  systems_status.txt


:BYE

@ECHO Checking ----- SQ2  ABAP --------
cd C:\Batch File Test
sapinfo ashost=10.2.203.90  sysnr=00 & if errorlevel 1 goto SDOWN    
 
@echo SQ2  system up>>  systems_status.txt
goto BYE

:SDOWN
@echo SQ2 system down>>  systems_status.txt


:BYE

@ECHO Checking -----  PQ2 ABAP --------
cd C:\Batch File Test
sapinfo ashost=10.2.203.92  sysnr=00 & if errorlevel 1 goto SDOWN  

@echo PQ2 system up>>  systems_status.txt
goto BYE

:SDOWN
@echo PQ2 system down>>  systems_status.txt


:BYE

@ECHO Checking -----  BQ2 ABAP --------
cd C:\Batch File Test
sapinfo ashost=10.2.202.242 sysnr=00 & if errorlevel 1 goto SDOWN   

@echo BQ2 system up>>  systems_status.txt
goto BYE

:SDOWN
@echo BQ2 system down>>  systems_status.txt


:BYE

@ECHO Checking -----  S5T ABAP --------
cd C:\Batch File Test
sapinfo ashost=MMS51TST  sysnr=00 & if errorlevel 1 goto SDOWN  

@echo S5T system up>>  systems_status.txt
goto BYE

:SDOWN
@echo S5T system down>>  systems_status.txt


:BYE

@ECHO Checking -----  LCQ ABAP --------
cd C:\Batch File Test
sapinfo ashost=10.2.202.255  sysnr=00 & if errorlevel 1 goto SDOWN  

@echo LCQ system up>>  systems_status.txt
goto BYE

:SDOWN
@echo LCQ system down>>  systems_status.txt


:BYE

@ECHO Checking -----  GQ1 ABAP --------
cd C:\Batch File Test
sapinfo ashost=10.2.206.137 sysnr=00 & if errorlevel 1 goto SDOWN    

@echo GQ1 system up>>  systems_status.txt
goto BYE

:SDOWN
@echo GQ1 system down>>  systems_status.txt


:BYE

@ECHO Checking -----  XT7 ABAP --------
cd C:\Batch File Test
sapinfo ashost=10.2.206.153  sysnr=00 & if errorlevel 1 goto SDOWN   

@echo XT7 system up>>  systems_status.txt
goto BYE

:SDOWN
@echo XT7 system down>>  systems_status.txt


:BYE

@ECHO Checking -----  S6P ABAP --------
cd C:\Batch File Test
sapinfo ashost=10.174.0.52  sysnr=00 & if errorlevel 1 goto SDOWN   

@echo S6P system up>>  systems_status.txt
goto BYE

:SDOWN
@echo S6P system down>>  systems_status.txt


:BYE

@ECHO Checking -----  BWP ABAP --------
cd C:\Batch File Test
sapinfo ashost=mkbiwprd sysnr=00 & if errorlevel 1 goto SDOWN  

@echo BWP system up>>  systems_status.txt
goto BYE

:SDOWN
@echo BWP system down>>  systems_status.txt


:BYE

@ECHO Checking -----  LCP ABAP --------
cd C:\Batch File Test
sapinfo ashost=10.2.203.2  sysnr=00 & if errorlevel 1 goto SDOWN    

@echo LCP system up>>  systems_status.txt
goto BYE

:SDOWN
@echo LCP system down>>  systems_status.txt


:BYE


@ECHO Checking -----  RP2 ABAP --------
cd C:\Batch File Test
sapinfo ashost=10.142.0.75  sysnr=20 & if errorlevel 1 goto SDOWN     

@echo RP2 system up>>  systems_status.txt
goto BYE

:SDOWN
@echo RP2 system down>>  systems_status.txt


:BYE

@ECHO Checking -----  PP2 ABAP --------
cd C:\Batch File Test
sapinfo ashost=10.142.0.78  sysnr=00 & if errorlevel 1 goto SDOWN  

@echo PP2 system up>>  systems_status.txt
goto BYE

:SDOWN
@echo PP2 system down>>  systems_status.txt


:BYE

@ECHO Checking -----  PCE ABAP --------
cd C:\Batch File Test
sapinfo ashost=mrlr3prd  sysnr=00 & if errorlevel 1 goto SDOWN  

@echo PCE system up>>  systems_status.txt
goto BYE

:SDOWN
@echo PCE system down>>  systems_status.txt


:BYE

@ECHO Checking -----  S5P ABAP --------
cd C:\Batch File Test
sapinfo ashost=10.2.202.102 sysnr=00 & if errorlevel 1 goto SDOWN  

@echo S5P system up>>  systems_status.txt
goto BYE

:SDOWN
@echo S5P system down>>  systems_status.txt


:BYE

@ECHO Checking -----  SMP ABAP --------
cd C:\Batch File Test
sapinfo ashost=10.2.202.10  sysnr=00 & if errorlevel 1 goto SDOWN  

@echo SMP system up>>  systems_status.txt
goto BYE

:SDOWN
@echo SMP system down>>  systems_status.txt


:BYE

@ECHO Checking -----  SP2 ABAP --------
cd C:\Batch File Test
sapinfo ashost=10.142.0.81  sysnr=00 & if errorlevel 1 goto SDOWN  

@echo SP2 system up>>  systems_status.txt
goto BYE

:SDOWN
@echo SP2 system down>>  systems_status.txt


:BYE

@ECHO Checking -----  S07 ABAP --------
cd C:\Batch File Test 
sapinfo ashost=10.2.152.42  sysnr=05 & if errorlevel 1 goto SDOWN     

@echo S07 system up>>  systems_status.txt
goto BYE

:SDOWN
@echo S07 system down>>  systems_status.txt


:BYE

@ECHO Checking -----  GP1 ABAP --------
cd C:\Batch File Test
sapinfo ashost=10.2.206.168  sysnr=04 & if errorlevel 1 goto SDOWN  

@echo GP1 system up>>  systems_status.txt
goto BYE

:SDOWN
@echo GP1 system down>>  systems_status.txt


:BYE

@ECHO Checking -----  RP3 ABAP --------
cd C:\Batch File Test
sapinfo ashost=10.2.146.10 sysnr=00 & if errorlevel 1 goto SDOWN  

@echo RP3 system up>>  systems_status.txt
goto BYE

:SDOWN
@echo RP3 system down>>  systems_status.txt


:BYE


@ECHO Checking -----  XP7 ABAP --------
cd C:\Batch File Test
sapinfo ashost=10.2.206.163 sysnr=00 & if errorlevel 1 goto SDOWN  

@echo XP7 system up>>  systems_status.txt
goto BYE

:SDOWN
@echo XP7 system down>>  systems_status.txt


:BYE


cscript.exe website_Check_textOutput.vbs
cscript.exe newvbs.vbs



