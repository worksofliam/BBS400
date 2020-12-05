             PGM

             DCL        VAR(&USRLVLC) TYPE(*CHAR) LEN(2)
             DCL        VAR(&BUFFER) TYPE(*CHAR) LEN(376)
             DCL        VAR(&IPLYY) TYPE(*CHAR) LEN(2)
             DCL        VAR(&IPLMM) TYPE(*CHAR) LEN(2)
             DCL        VAR(&IPLDD) TYPE(*CHAR) LEN(2)
             DCL        VAR(&IPLHO) TYPE(*CHAR) LEN(2)
             DCL        VAR(&IPLMI) TYPE(*CHAR) LEN(2)
             DCL        VAR(&IPLSE) TYPE(*CHAR) LEN(2)
             DCLF       FILE(BBSSYSINFD)

         /* Get Header's information */
             RTVDTAARA  DTAARA(BBS400DTA (7 40)) RTNVAR(&SCRBBS)
             RTVDTAARA  DTAARA(BBS400DTA (101 10)) RTNVAR(&SCRNCK)
             RTVDTAARA  DTAARA(BBS400DTA (111 2)) RTNVAR(&USRLVLC)
             RTVDTAARA  DTAARA(BBS400DTA (113 15)) RTNVAR(&SCRLVD)
             CHGVAR     VAR(&SCRLVL) VALUE(&USRLVLC)
             CHGVAR     VAR(&SCRSCR) VALUE('BBSSYSINF')
         /* Get System Values and assign them to screen variables */
             RTVSYSVAL  SYSVAL(QMODEL) RTNVAR(&SCRMDL)
             RTVSYSVAL  SYSVAL(QDATFMT) RTNVAR(&SCRDFM)
             RTVSYSVAL  SYSVAL(QCNTRYID) RTNVAR(&SCRCID)
             RTVSYSVAL  SYSVAL(QPRCFEAT) RTNVAR(&SCRPFE)
             RTVSYSVAL  SYSVAL(QUTCOFFSET) RTNVAR(&SCRUOF)
         /* Get last IPL date/time */
             CALL       PGM(QUSRJOBI) PARM(&BUFFER X'00000178' +
                          'JOBI0400' 'SCPF      QSYS      000000' +
                          '                ')
             CHGVAR     VAR(&IPLYY) VALUE(%SST(&BUFFER 64 2))
             CHGVAR     VAR(&IPLMM) VALUE(%SST(&BUFFER 66 2))
             CHGVAR     VAR(&IPLDD) VALUE(%SST(&BUFFER 68 2))
             CHGVAR     VAR(&IPLHO) VALUE(%SST(&BUFFER 70 2))
             CHGVAR     VAR(&IPLMI) VALUE(%SST(&BUFFER 72 2))
             CHGVAR     VAR(&IPLSE) VALUE(%SST(&BUFFER 74 2))
             CHGVAR     VAR(&SCRLID) VALUE(&IPLDD *TCAT '/' *TCAT +
                          &IPLMM *TCAT '/' *TCAT &IPLYY)
             CHGVAR     VAR(&SCRLIT) VALUE(&IPLHO *TCAT ':' *TCAT +
                          &IPLMI *TCAT ':' *TCAT &IPLSE)
             SNDPGMMSG  MSG(&SCRLIT)

 START:
             SNDF       RCDFMT(HEADER)
             SNDF       RCDFMT(BODY)
             SNDRCVF    RCDFMT(FOOTER)
             IF         COND(&IN12) THEN(GOTO CMDLBL(END))
 LOOP:       GOTO       CMDLBL(START)

 END:        ENDPGM
