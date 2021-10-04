             PGM        PARM(&LIBOBJ &LIBDTA)

             DCL        VAR(&LIBOBJ) TYPE(*CHAR) LEN(10)
             DCL        VAR(&LIBDTA) TYPE(*CHAR) LEN(10)

             DCL        VAR(&VERSION) TYPE(*CHAR) LEN(6) +
                          VALUE('V0R1M0')

         /* Set up Library List */
             RMVLIBLE   LIB(&LIBOBJ)
             MONMSG     MSGID(CPF2104) /* LIB is not in the LIBLE */
             RMVLIBLE   LIB(&LIBDTA)
             MONMSG     MSGID(CPF2104) /* LIB is not in the LIBLE */

             ADDLIBLE   LIB(&LIBOBJ) POSITION(*FIRST)
             MONMSG     MSGID(CPF2103)
             ADDLIBLE   LIB(&LIBDTA) POSITION(*FIRST)
             MONMSG     MSGID(CPF2103)

         /* Create DTAARA in QTEMP */
             CRTDTAARA  DTAARA(QTEMP/BBS400DTA) TYPE(*CHAR) LEN(151) +
                          VALUE(&VERSION) TEXT('DTAARA for BBS400')
             MONMSG     MSGID(CPF1023)

         /* Call start program */
             CALL       PGM(BBSLGINR)

             DLTDTAARA  DTAARA(QTEMP/BBS400DTA)

             ENDPGM
