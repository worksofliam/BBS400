             PGM
/*********************************************************************/
/* Change this VALUE, to build FROM a different Release VxRxMx       */
             DCL        VAR(&RELEASE) TYPE(*CHAR) LEN(10) +
                          VALUE('CURRENTSRC')
/*********************************************************************/
/* Change this VALUE, to build FROM a different source library       */
             DCL        VAR(&LIBSRC) TYPE(*CHAR) LEN(10) +
                          VALUE('DVBBS400')
/*********************************************************************/
/* Change this VALUE, to build INTO a different Library              */
             DCL        VAR(&LIBOBJ) TYPE(*CHAR) LEN(10) +
                          VALUE('PBBS400OBJ')
/*********************************************************************/
/* Add LIBS to Library List Entry                                    */
             ADDLIBLE   LIB(&LIBOBJ) POSITION(*FIRST)
             MONMSG     MSGID(CPF2103) /* LIB already in LIBLE */
/*********************************************************************/
/* Compile PNLGRP files                                              */
        CRTPNLGRP  PNLGRP(&LIBOBJ/BBSHELPPNL) SRCFILE(&LIBSRC/&RELEASE)
/*********************************************************************/
/* Compile DSPF files                                                */
          CRTDSPF    FILE(&LIBOBJ/BBSAACCLVD) SRCFILE(&LIBSRC/&RELEASE)
          CRTDSPF    FILE(&LIBOBJ/BBSADBLD) SRCFILE(&LIBSRC/&RELEASE)
          CRTDSPF    FILE(&LIBOBJ/BBSADGCD) SRCFILE(&LIBSRC/&RELEASE)
          CRTDSPF    FILE(&LIBOBJ/BBSADMMNUD) SRCFILE(&LIBSRC/&RELEASE)
          CRTDSPF    FILE(&LIBOBJ/BBSADNUDFD) SRCFILE(&LIBSRC/&RELEASE)
          CRTDSPF    FILE(&LIBOBJ/BBSAEPGMMD) SRCFILE(&LIBSRC/&RELEASE)
          CRTDSPF    FILE(&LIBOBJ/BBSBRDLD) SRCFILE(&LIBSRC/&RELEASE)
          CRTDSPF    FILE(&LIBOBJ/BBSETPGMSD) SRCFILE(&LIBSRC/&RELEASE)
          CRTDSPF    FILE(&LIBOBJ/BBSIFSFILD) SRCFILE(&LIBSRC/&RELEASE)
          CRTDSPF    FILE(&LIBOBJ/BBSINFD) SRCFILE(&LIBSRC/&RELEASE)
          CRTDSPF    FILE(&LIBOBJ/BBSLGIND) SRCFILE(&LIBSRC/&RELEASE)
          CRTDSPF    FILE(&LIBOBJ/BBSLSTUSRD) SRCFILE(&LIBSRC/&RELEASE)
          CRTDSPF    FILE(&LIBOBJ/BBSMENUD) SRCFILE(&LIBSRC/&RELEASE)
          CRTDSPF    FILE(&LIBOBJ/BBSMSGSD) SRCFILE(&LIBSRC/&RELEASE)
          CRTDSPF    FILE(&LIBOBJ/BBSMSGSLLD) SRCFILE(&LIBSRC/&RELEASE)
          CRTDSPF    FILE(&LIBOBJ/BBSNEWMSGD) SRCFILE(&LIBSRC/&RELEASE)
          CRTDSPF    FILE(&LIBOBJ/BBSPOLLSLD) SRCFILE(&LIBSRC/&RELEASE)
          CRTDSPF    FILE(&LIBOBJ/BBSRDMSGD) SRCFILE(&LIBSRC/&RELEASE)
          CRTDSPF    FILE(&LIBOBJ/BBSRDU2UMD) SRCFILE(&LIBSRC/&RELEASE)
          CRTDSPF    FILE(&LIBOBJ/BBSSBRLD) SRCFILE(&LIBSRC/&RELEASE)
          CRTDSPF    FILE(&LIBOBJ/BBSSYSINFD) SRCFILE(&LIBSRC/&RELEASE)
          CRTDSPF    FILE(&LIBOBJ/BBSUSROPTD) SRCFILE(&LIBSRC/&RELEASE)
          CRTDSPF    FILE(&LIBOBJ/BBSWELCD) SRCFILE(&LIBSRC/&RELEASE)
          CRTDSPF    FILE(&LIBOBJ/BBSWINASKW) SRCFILE(&LIBSRC/&RELEASE)
          CRTDSPF    FILE(&LIBOBJ/BBSWINSBSW) SRCFILE(&LIBSRC/&RELEASE)
          CRTDSPF    FILE(&LIBOBJ/BBSWINYNW) SRCFILE(&LIBSRC/&RELEASE)
/*********************************************************************/
/* Compile RPGILE files                                              */
          CRTBNDRPG  PGM(&LIBOBJ/BBSAACCLVR) SRCFILE(&LIBSRC/&RELEASE)
          CRTBNDRPG  PGM(&LIBOBJ/BBSADGCR) SRCFILE(&LIBSRC/&RELEASE)
          CRTBNDRPG  PGM(&LIBOBJ/BBSADMMNUR) SRCFILE(&LIBSRC/&RELEASE)
          CRTBNDRPG  PGM(&LIBOBJ/BBSADNUDFR) SRCFILE(&LIBSRC/&RELEASE)
          CRTBNDRPG  PGM(&LIBOBJ/BBSAEPGMMR) SRCFILE(&LIBSRC/&RELEASE)
          CRTBNDRPG  PGM(&LIBOBJ/BBSBRDLR) SRCFILE(&LIBSRC/&RELEASE)
          CRTBNDRPG  PGM(&LIBOBJ/BBSETPGMSR) SRCFILE(&LIBSRC/&RELEASE)
          CRTBNDRPG  PGM(&LIBOBJ/BBSIFSFILR) SRCFILE(&LIBSRC/&RELEASE)
          CRTBNDRPG  PGM(&LIBOBJ/BBSLGINR) SRCFILE(&LIBSRC/&RELEASE)
          CRTBNDRPG  PGM(&LIBOBJ/BBSLSTUSRR) SRCFILE(&LIBSRC/&RELEASE)
          CRTBNDRPG  PGM(&LIBOBJ/BBSMENUR) SRCFILE(&LIBSRC/&RELEASE)
          CRTBNDRPG  PGM(&LIBOBJ/BBSMSGSR) SRCFILE(&LIBSRC/&RELEASE)
          CRTBNDRPG  PGM(&LIBOBJ/BBSNEWMSGR) SRCFILE(&LIBSRC/&RELEASE)
          CRTBNDRPG  PGM(&LIBOBJ/BBSNEWREGR) SRCFILE(&LIBSRC/&RELEASE)
          CRTBNDRPG  PGM(&LIBOBJ/BBSPOLLSLR) SRCFILE(&LIBSRC/&RELEASE)
          CRTBNDRPG  PGM(&LIBOBJ/BBSRDMSGR) SRCFILE(&LIBSRC/&RELEASE)
          CRTBNDRPG  PGM(&LIBOBJ/BBSRDU2UMR) SRCFILE(&LIBSRC/&RELEASE)
          CRTBNDRPG  PGM(&LIBOBJ/BBSSBRLR) SRCFILE(&LIBSRC/&RELEASE)
          CRTBNDRPG  PGM(&LIBOBJ/BBSSOTEXPR) SRCFILE(&LIBSRC/&RELEASE)
          CRTBNDRPG  PGM(&LIBOBJ/BBSUSROPTR) SRCFILE(&LIBSRC/&RELEASE)
          CRTBNDRPG  PGM(&LIBOBJ/BBSWINASKR) SRCFILE(&LIBSRC/&RELEASE)
          CRTBNDRPG  PGM(&LIBOBJ/BBSWINSBSR) SRCFILE(&LIBSRC/&RELEASE)
          CRTBNDRPG  PGM(&LIBOBJ/BBSWINYNR) SRCFILE(&LIBSRC/&RELEASE)
          CRTBNDRPG  PGM(&LIBOBJ/GETMD5HASH) SRCFILE(&LIBSRC/&RELEASE)
/*********************************************************************/
/* Compile SQLRPGLE files                                            */
          CRTSQLRPGI OBJ(&LIBOBJ/BBSMSGSLLR) SRCFILE(&LIBSRC/&RELEASE)
/*********************************************************************/
/* Compile CLP files                                                 */
          CRTCLPGM   PGM(&LIBOBJ/BBSDSPIFSC) SRCFILE(&LIBSRC/&RELEASE)
          CRTCLPGM   PGM(&LIBOBJ/BBSHELPERC) SRCFILE(&LIBSRC/&RELEASE)
          CRTCLPGM   PGM(&LIBOBJ/BBSINFC) SRCFILE(&LIBSRC/&RELEASE)
          CRTCLPGM   PGM(&LIBOBJ/BBSSYSINFC) SRCFILE(&LIBSRC/&RELEASE)
          CRTCLPGM   PGM(&LIBOBJ/BBSWELCC) SRCFILE(&LIBSRC/&RELEASE)
          CRTCLPGM   PGM(&LIBOBJ/BBS400PROD) SRCFILE(&LIBSRC/&RELEASE)
/*********************************************************************/
/* Remove LIBS from Library List Entry                               */
             RMVLIBLE   LIB(&LIBOBJ)

             ENDPGM
