DEFINT A-Z
DECLARE FUNCTION Hex2Bin$ (Hcs$)
90 CLS
CLS
COLOR 7, 0

SHELL "C:"
SHELL "CD \"
PRINT "ES/7 Loader (Open-Source Edition)"
SLEEP 4
CLS
PRINT ""
PRINT "Loading User File"
SLEEP 3
OPEN "sys.dat" FOR BINARY AS #1
IF LOF(1) = 0 THEN
CLOSE #1
OPEN "sys.dat" FOR OUTPUT AS #1
WRITE #1, 0
WRITE #1, 0
WRITE #1, 0
PRINT "New User File Created"
SLEEP 1
END IF
CLOSE #1
OPEN "sys.dat" FOR INPUT AS #1
INPUT #1, e
INPUT #1, f$
INPUT #1, PASSE$
CLOSE #1
PRINT "User File loaded"
SLEEP 2
Build$ = "15.05.321"
Ver$ = "Open Source Edition (Based on 14.10 Code)"
 CLS
164 SLEEP 1
CLS
PRINT "ES/7 init..."
SLEEP 3
CLS
CLS
CLS
CLS
PRINT "The Everytab System/7 for "; Ver$
SLEEP 1
PRINT "OS Build "; Build$
SLEEP 2
PRINT "Loading"
SLEEP 3
SLEEP 1

PRINT e
IF e = 0 THEN
CLS
CLS
COLOR 15, 6
CLS
PRINT "Post-Install Setup"
PRINT "================================================================================"
PRINT ""
PRINT "Welcome to the Everytab System/7"
INPUT "Enter your name"; nanme$
INPUT "Enter your password"; non$
PRINT "Ready to Write"
PRINT "Press any key to continue ..."
OPEN "sys.dat" FOR OUTPUT AS #1
WRITE #1, 1
PRINT
DO
LOOP UNTIL INKEY$ <> ""
WRITE #1, nanme$
WRITE #1, non$
CLOSE #1
PRINT "Press any key to restart ..."
PRINT
DO
LOOP UNTIL INKEY$ <> ""
GOTO 90

ELSE
CLS
PRINT "Starting Login Session, Please Wait..."
SLEEP 2
CLS
SLEEP 1
CLS
COLOR 15, 1
CLS
95 CLS

PRINT "LOGIN"
PRINT "================================================================================"
PRINT ""
PRINT ""
PRINT "Please Login"
PRINT ""
PRINT "Username : "; f$
PRINT "Enter the password"
PRINT ""
97 INPUT ">"; PASS$
98 IF PASS$ = PASSE$ THEN
123 CLS
    PRINT "Welcome "; f$
    PRINT "================================================================================"
    PRINT ""
    PRINT ""
    PRINT "Please choose an task"
    PRINT ""
    PRINT "1) Built-in tasks"
    PRINT "2) Command line"
    PRINT "3) End Session"
106 INPUT ">"; op

    IF op = 1 THEN
124 CLS
PRINT "Built-in tasks"
PRINT "================================================================================"
	PRINT "Tasks :-"
	PRINT ""
	PRINT "1) Settings"
	PRINT "2) Decimal to Binary Converter"
	PRINT "3) Legacy Calculator"
	PRINT "4) PlayIt! (Sound test)"
	PRINT "5) < Return Back"
124.5 INPUT ">"; app
	IF app = 1 THEN
125 CLS
	    PRINT "SETTINGS"
	    PRINT "================================================================================"
	    PRINT ""
	    PRINT "Options available are :-"
	    PRINT ""
	    PRINT "1 - Reset"
	    PRINT "2 - About"
	    PRINT "3 - Exit"
126 INPUT ">"; set
	    IF set = 1 THEN
		CLS
		COLOR 15, 4
		CLS
		PRINT "Settings > RESET"
		PRINT "================================================================================"
		PRINT ""
		
444 INPUT "***WARNING!!!*** THIS WILL RESET YOUR PASSWORD, ARE YOU SURE?(Y/N)"; e$
		IF e$ = "Y" THEN
OPEN "sys.dat" FOR OUTPUT AS #1
WRITE #1, 0
WRITE #1, 0
WRITE #1, 0
CLOSE #1
		PRINT "Press any key to restart ..."
		PRINT
		DO
		LOOP UNTIL INKEY$ <> ""
		GOTO 90
		ELSEIF e$ = "N" THEN
		CLS
		COLOR 15, 1
		CLS
		GOTO 125
		ELSE
		CLS
		GOTO 444
		END IF
	    ELSEIF set = 2 THEN
		CLS
		PRINT "Settings > About"
		PRINT "================================================================================"
		PRINT ""
		PRINT "About Everytab System/7:-"
		PRINT ""
		PRINT "The Everytab System/7 Version "; Ver$
		PRINT "OS Build "; Build$
		PRINT ""
		PRINT "Credits :"
		PRINT ""
		PRINT "Developers : Everytab, JayTheCoderX, greenland, Mark_ & CoroX_
		PRINT ""
		PRINT "Press any key to continue ..."
		PRINT
		DO
		LOOP UNTIL INKEY$ <> ""
		GOTO 125

	    ELSEIF set = 3 THEN
		GOTO 124
	    ELSE
		BEEP
		GOTO 126

	    END IF
	ELSEIF app = 2 THEN
	    REM binary
CLS
PRINT "Binary Coder"

SLEEP 5

start:

CLS
LOCATE 1, 1
PRINT "Binary coder"
PRINT "_____________"
PRINT ""
PRINT ""
PRINT ""
PRINT ""



INPUT "Enter Decimal number"; A
CLS
PRINT "Binary coder"
PRINT "_____________"
PRINT ""
PRINT ""
WHILE A <> 0
    PRINT A MOD 2;
    IF A MOD 2 = 1 THEN
	A = A \ 2
    ELSE A = A / 2
    END IF

WEND
PRINT ""
PRINT ""
PRINT "Binary code is reversed"
SLEEP 5
GOTO 124
ELSEIF app = 3 THEN
	    CLS
200 PRINT "Legacy Calculator"
	    PRINT ("+,-,x,_(Divide)")
	    PRINT "CHOOSE AN OPERATION"
	    INPUT "TRICALC>"; os$
	    IF os$ = "+" THEN
		PRINT "FIRST NO."
		INPUT "TRICALC>"; A
		PRINT "SECOND.NO"
		INPUT "TRICALC>"; B
		PRINT (A + B)
		SLEEP 5
		GOTO 124.5
	      
	    ELSEIF os$ = "-" THEN
		PRINT "FIRST NO."
		INPUT "TRICALC>"; A
		PRINT "SECOND.NO"
		INPUT "TRICALC>"; B
		PRINT (A - B)
		SLEEP 5
		GOTO 124.5
	      
	    ELSEIF os$ = "x" THEN
		PRINT "FIRST NO."
		INPUT "TRICALC>"; A
		PRINT "SECOND.NO"
		INPUT "TRICALC>"; B
		PRINT (A * B)
		SLEEP 5
		GOTO 124.5
	       
	    ELSEIF os$ = "_" THEN
		PRINT "FIRST NO."
		INPUT "TRICALC>"; A
		PRINT "SECOND.NO"
		INPUT "TRICALC>"; B
		PRINT (A \ B)
		SLEEP 5
		GOTO 124.5
	    ELSE
		PRINT "INVALID VALUE"
		SLEEP 1
		GOTO 200

	    END IF
	    GOTO 124.5
	ELSEIF app = 4 THEN
	    PRINT "DISABLED (BUG)"
            SLEEP 2
	    GOTO 124.5
	ELSEIF app = 5 THEN
	  GOTO 123
	ELSE
	    BEEP
	    GOTO 124.5
	END IF
    ELSEIF op = 2 THEN
	CLS
	COLOR 7, 0
	CLS
	PRINT "The Everytab System/7 Command Prompt"
	PRINT "Due to limitations, only commands with UPPERCASE are supported"
100 INPUT ">"; COMAND$
	IF COMAND$ = "LIST" THEN
	    SHELL "DIR /W"
	    GOTO 100
	ELSEIF COMAND$ = "RUN" THEN
	INPUT "File"; r$
	    ON ERROR GOTO 111
	    SHELL r$
	    ON ERROR GOTO 111
	    GOTO 100
	ELSEIF COMAND$ = "EXIT" THEN
	    COLOR 15, 1
	    GOTO 123
	ELSEIF COMAND$ = "HELP" THEN
14 PRINT "AVAILABLE COMMANDS - LIST,HELP,ABOUT,CLS,EXIT,CD"
	    PRINT "NOTE : PLEASE USE CAPS LOCK !"; ""
	    GOTO 100
	ELSEIF COMAND$ = "CD" THEN
	    INPUT "CHOOSE DIR TO CHANGE TO"; CD$
	    ON ERROR GOTO 111
	    CHDIR CD$
	    ON ERROR GOTO 111
	    GOTO 100
	ELSEIF COMAND$ = "DRIVE" THEN
	    INPUT "CHOOSE DRIVE"; D$
	    ON ERROR GOTO 111
	    SHELL D$
	    ON ERROR GOTO 111
	    GOTO 100
	ELSEIF COMAND$ = "ABOUT" THEN
	    CLS
	    PRINT ("THE EVERYTAB SYSTEM/7 BUILD "); Build$
	    PRINT "?"
	    PRINT "Press any key to continue ..."
	    PRINT
	    DO
	    LOOP UNTIL INKEY$ <> ""
	    CLS
	    GOTO 100

	ELSEIF COMAND$ = "LETSCRASH" THEN
111 CLS
	    
	    SLEEP 1
	    COLOR 7,4
	    CLS
	    CLS
	    PRINT "The system detected an processing"
	    PRINT "error at location DOSRUN"
	    PRINT ""
	    PRINT "FAIL Code : 00000001"
	    PRINT "OS Revision "; Build$
	    PRINT ""
	    PRINT ""
	    PRINT "The system has halted. Record the FAIL code"
	    PRINT "of the error and contact an Everytab System/7 Developer"
	    SLEEP 5
	    CLS
	    SLEEP 1
	    GOTO 90
	ELSEIF COMAND$ = "" THEN
	    GOTO 100
	ELSEIF COMAND$ = "CLS" THEN
	    CLS
	    GOTO 100

	ELSE
	    SHELL COMAND$
	    GOTO 100



	END IF
    ELSEIF op = 3 THEN
	CLS
	PRINT "SHUTDOWN"
	PRINT "================================================================================"
	PRINT "Choose an option "
	PRINT ""
	PRINT "1) End the session"
	PRINT "2) Restart the session"
	PRINT "3) Logoff"
	PRINT "4) < Return"
6465 INPUT ">"; shut
	IF shut = 1 THEN
	    PRINT "Preparing to Exit"
	    SLEEP 2
	    CLS
	    SLEEP 1
	    COLOR 7, 0
	    CLS
	    CLS
	    PRINT "Ending ES/7 Session"
	    SLEEP 5
	    CLS
	    SLEEP 1
	    PRINT "System shutdown is complete"
	    PRINT "It is now safe to turn off the computer"
	    CLOSE #1
            SHELL ("SHUTDOWN 0")
423
GOTO 423
	ELSEIF shut = 2 THEN
	    PRINT "Preparing to restart session"
	    CLS
	    SLEEP 1
	    CLS
	    COLOR 7, 0
	    CLS
	    CLS
	    PRINT "Restarting ES/7"

	    SLEEP 5
	    CLS
	    SLEEP 1
	    GOTO 90
	ELSEIF shut = 3 THEN
	CLS
	    GOTO 95
	ELSEIF shut = 4 THEN
	    GOTO 123
	ELSE
	    BEEP
	    GOTO 6465
	END IF
    ELSE
	BEEP
	GOTO 106
    END IF
ELSE
    CLS
    PRINT "LOGIN > ERROR"
    PRINT "================================================================================"
    PRINT ""
    PRINT "The Password which was entered is invalid for the user specified"
    SLEEP 3
    CLS
    GOTO 95
END IF
END IF

FUNCTION Hex2Bin$ (Hcs$)
   Hcs$ = UCASE$(Hcs$)
   lc = LEN(Hcs$)
   FOR x = 1 TO lc
      SELECT CASE MID$(Hcs$, x, 1)
	 CASE "0"
	    Out$ = Out$ + "0000"
	 CASE "1"
	    Out$ = Out$ + "0001"
	 CASE "2"
	    Out$ = Out$ + "0010"
	 CASE "3"
	    Out$ = Out$ + "0011"
	 CASE "4"
	    Out$ = Out$ + "0100"
	 CASE "5"
	    Out$ = Out$ + "0101"
	 CASE "6"
	    Out$ = Out$ + "0110"
	 CASE "7"
	    Out$ = Out$ + "0111"
	 CASE "8"
	    Out$ = Out$ + "1000"
	 CASE "9"
	    Out$ = Out$ + "1001"
	 CASE "A"
	    Out$ = Out$ + "1010"
	 CASE "B"
	    Out$ = Out$ + "1011"
	 CASE "C"
	    Out$ = Out$ + "1100"
	 CASE "D"
	    Out$ = Out$ + "1101"
	 CASE "E"
	    Out$ = Out$ + "1110"
	 CASE "F"
	    Out$ = Out$ + "1111"
      END SELECT
   NEXT
   Hex2Bin$ = Out$
END FUNCTION
