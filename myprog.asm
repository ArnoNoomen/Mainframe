MYPROG   CSECT
         STM   14,12,12(13)   Save registers
         LR    12,15          Establish
         USING MYPROG,12         addressability
*  Save pointer to calling programs registers
         ST    13,13,SAVE+4
*  Point to own save area
         LA    13,SAVE
**********************************************
         WTO   'HALLO'
**********************************************
*  Pick up address of calling programs save area
         L     13,SAVE+4
         LM    14,12,12(13)   Restore registers
         SR    15,15          Return code = 0
         BR    14             Return to system
**********************************************
*
*         Constants and data areas
*
***********************************************
SAVE     DC    18F'0'
R0       EQU   0
R1       EQU   1
R2       EQU   2
R3       EQU   3
R4       EQU   4
R5       EQU   5
R6       EQU   6
R7       EQU   7
R8       EQU   8
R9       EQU   9
R10      EQU   10
R11      EQU   11
R12      EQU   12
R13      EQU   13
R14      EQU   14
R15      EQU   15
         END   MYPROG
