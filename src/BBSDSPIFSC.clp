             PGM        PARM(&PATH &FILENAME)

             DCL        VAR(&PATH) TYPE(*CHAR) LEN(30)
             DCL        VAR(&FILENAME) TYPE(*CHAR) LEN(20)

             CD         DIR(&PATH)
             DSPF       STMF(&FILENAME)

             ENDPGM
