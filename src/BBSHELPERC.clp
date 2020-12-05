             PGM        PARM(&MODE &EXTPGM &EXTLIB &USER)

             DCL        VAR(&MODE) TYPE(*CHAR) LEN(1)
             DCL        VAR(&EXTPGM) TYPE(*CHAR) LEN(10)
             DCL        VAR(&EXTLIB) TYPE(*CHAR) LEN(10)
             DCL        VAR(&USER) TYPE(*CHAR) LEN(10)

    /* MODE = C -> Call External programs */
             IF         COND(&MODE *EQ 'C') THEN(DO)
             CALL       PGM(&EXTLIB/&EXTPGM)
             MONMSG     MSGID(CPF0000)
             GOTO       CMDLBL(END)
             ENDDO
    /* MODE = N -> Send Notification of message to user */
             IF         COND(&MODE *EQ 'N') THEN(DO)
             SNDMSG     MSG('You have received a new BBS message.') +
                          TOUSR(&USER)
             GOTO       CMDLBL(END)
             ENDDO
    /* MODE = R -> Send Notification of New User Registration */
             IF         COND(&MODE *EQ 'R') THEN(DO)
             SNDMSG     MSG('A new user just registered to the BBS.') +
                          TOUSR(&USER)
             GOTO       CMDLBL(END)
             ENDDO
 END:
             ENDPGM
