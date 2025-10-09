MYPROG   CSECT
         STM   14,12,12(13)   Save registers
         LR    12,15          Establish
         USING MYPROG,12         addressability
*  Save pointer to calling programs registers
         ST    13,SAVE+4
*  Point to own save area
         LA    13,SAVE
**********************************************
         WTO   'HELLO'
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
         END   MYPROG
