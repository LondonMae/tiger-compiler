PROCEDURE tigermain
# Before canonicalization: 
SEQ(
 SEQ(
  SEQ(
   SEQ(
    SEQ(
     SEQ(
      SEQ(
       SEQ(
        SEQ(
         SEQ(
          SEQ(
           MOVE(
            MEM(
             BINOP(PLUS,
              TEMP fp,
              CONST -16)),
            TEMP ra),
           SEQ(
            MOVE(
             MEM(
              BINOP(PLUS,
               TEMP fp,
               CONST -20)),
             TEMP r16),
            SEQ(
             MOVE(
              MEM(
               BINOP(PLUS,
                TEMP fp,
                CONST -24)),
              TEMP r17),
             SEQ(
              MOVE(
               MEM(
                BINOP(PLUS,
                 TEMP fp,
                 CONST -28)),
               TEMP r18),
              SEQ(
               MOVE(
                MEM(
                 BINOP(PLUS,
                  TEMP fp,
                  CONST -32)),
                TEMP r19),
               SEQ(
                MOVE(
                 MEM(
                  BINOP(PLUS,
                   TEMP fp,
                   CONST -36)),
                 TEMP r20),
                SEQ(
                 MOVE(
                  MEM(
                   BINOP(PLUS,
                    TEMP fp,
                    CONST -40)),
                  TEMP r21),
                 SEQ(
                  MOVE(
                   MEM(
                    BINOP(PLUS,
                     TEMP fp,
                     CONST -44)),
                   TEMP r22),
                  SEQ(
                   MOVE(
                    MEM(
                     BINOP(PLUS,
                      TEMP fp,
                      CONST -48)),
                    TEMP r23),
                   SEQ(
                    MOVE(
                     MEM(
                      BINOP(PLUS,
                       TEMP fp,
                       CONST -52)),
                     TEMP fp),
                    SEQ(
                     MOVE(
                      MEM(
                       BINOP(PLUS,
                        TEMP fp,
                        CONST 0)),
                      TEMP r4),
                     SEQ(
                      SEQ(
                       SEQ(
                        MOVE(
                         MEM(
                          BINOP(PLUS,
                           TEMP fp,
                           CONST -4)),
                         CALL(
                          NAME _getchar)),
                        MOVE(
                         MEM(
                          BINOP(PLUS,
                           TEMP fp,
                           CONST -8)),
                         CALL(
                          NAME tigermain.readlist.1,
                           TEMP fp))),
                       MOVE(
                        MEM(
                         BINOP(PLUS,
                          TEMP fp,
                          CONST -12)),
                        ESEQ(
                         MOVE(
                          MEM(
                           BINOP(PLUS,
                            TEMP fp,
                            CONST -4)),
                          CALL(
                           NAME _getchar)),
                         CALL(
                          NAME tigermain.readlist.1,
                           TEMP fp)))),
                      UEXP(
                       CALL(
                        NAME tigermain.printlist.4,
                         TEMP fp,
                         CALL(
                          NAME tigermain.merge.2,
                           TEMP fp,
                           MEM(
                            BINOP(PLUS,
                             TEMP fp,
                             CONST -8)),
                           MEM(
                            BINOP(PLUS,
                             TEMP fp,
                             CONST -12))))))))))))))))),
          MOVE(
           TEMP fp,
           MEM(
            BINOP(PLUS,
             TEMP fp,
             CONST -52)))),
         MOVE(
          TEMP r23,
          MEM(
           BINOP(PLUS,
            TEMP fp,
            CONST -48)))),
        MOVE(
         TEMP r22,
         MEM(
          BINOP(PLUS,
           TEMP fp,
           CONST -44)))),
       MOVE(
        TEMP r21,
        MEM(
         BINOP(PLUS,
          TEMP fp,
          CONST -40)))),
      MOVE(
       TEMP r20,
       MEM(
        BINOP(PLUS,
         TEMP fp,
         CONST -36)))),
     MOVE(
      TEMP r19,
      MEM(
       BINOP(PLUS,
        TEMP fp,
        CONST -32)))),
    MOVE(
     TEMP r18,
     MEM(
      BINOP(PLUS,
       TEMP fp,
       CONST -28)))),
   MOVE(
    TEMP r17,
    MEM(
     BINOP(PLUS,
      TEMP fp,
      CONST -24)))),
  MOVE(
   TEMP r16,
   MEM(
    BINOP(PLUS,
     TEMP fp,
     CONST -20)))),
 MOVE(
  TEMP ra,
  MEM(
   BINOP(PLUS,
    TEMP fp,
    CONST -16))))
# After canonicalization: 
MOVE(
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST -16)),
 TEMP ra)
MOVE(
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST -20)),
 TEMP r16)
MOVE(
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST -24)),
 TEMP r17)
MOVE(
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST -28)),
 TEMP r18)
MOVE(
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST -32)),
 TEMP r19)
MOVE(
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST -36)),
 TEMP r20)
MOVE(
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST -40)),
 TEMP r21)
MOVE(
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST -44)),
 TEMP r22)
MOVE(
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST -48)),
 TEMP r23)
MOVE(
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST -52)),
 TEMP fp)
MOVE(
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST 0)),
 TEMP r4)
MOVE(
 TEMP t57,
 BINOP(PLUS,
  TEMP fp,
  CONST -4))
MOVE(
 TEMP t56,
 CALL(
  NAME _getchar))
MOVE(
 MEM(
  TEMP t57),
 TEMP t56)
MOVE(
 TEMP t59,
 BINOP(PLUS,
  TEMP fp,
  CONST -8))
MOVE(
 TEMP t58,
 CALL(
  NAME tigermain.readlist.1,
   TEMP fp))
MOVE(
 MEM(
  TEMP t59),
 TEMP t58)
MOVE(
 TEMP t62,
 BINOP(PLUS,
  TEMP fp,
  CONST -12))
MOVE(
 TEMP t61,
 BINOP(PLUS,
  TEMP fp,
  CONST -4))
MOVE(
 TEMP t60,
 CALL(
  NAME _getchar))
MOVE(
 MEM(
  TEMP t61),
 TEMP t60)
MOVE(
 MEM(
  TEMP t62),
 CALL(
  NAME tigermain.readlist.1,
   TEMP fp))
MOVE(
 TEMP t64,
 TEMP fp)
MOVE(
 TEMP t63,
 CALL(
  NAME tigermain.merge.2,
   TEMP fp,
   MEM(
    BINOP(PLUS,
     TEMP fp,
     CONST -8)),
   MEM(
    BINOP(PLUS,
     TEMP fp,
     CONST -12))))
UEXP(
 CALL(
  NAME tigermain.printlist.4,
   TEMP t64,
   TEMP t63))
MOVE(
 TEMP fp,
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST -52)))
MOVE(
 TEMP r23,
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST -48)))
MOVE(
 TEMP r22,
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST -44)))
MOVE(
 TEMP r21,
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST -40)))
MOVE(
 TEMP r20,
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST -36)))
MOVE(
 TEMP r19,
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST -32)))
MOVE(
 TEMP r18,
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST -28)))
MOVE(
 TEMP r17,
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST -24)))
MOVE(
 TEMP r16,
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST -20)))
MOVE(
 TEMP ra,
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST -16)))
# Basic Blocks: 
#
LABEL L54
MOVE(
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST -16)),
 TEMP ra)
MOVE(
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST -20)),
 TEMP r16)
MOVE(
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST -24)),
 TEMP r17)
MOVE(
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST -28)),
 TEMP r18)
MOVE(
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST -32)),
 TEMP r19)
MOVE(
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST -36)),
 TEMP r20)
MOVE(
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST -40)),
 TEMP r21)
MOVE(
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST -44)),
 TEMP r22)
MOVE(
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST -48)),
 TEMP r23)
MOVE(
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST -52)),
 TEMP fp)
MOVE(
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST 0)),
 TEMP r4)
MOVE(
 TEMP t57,
 BINOP(PLUS,
  TEMP fp,
  CONST -4))
MOVE(
 TEMP t56,
 CALL(
  NAME _getchar))
MOVE(
 MEM(
  TEMP t57),
 TEMP t56)
MOVE(
 TEMP t59,
 BINOP(PLUS,
  TEMP fp,
  CONST -8))
MOVE(
 TEMP t58,
 CALL(
  NAME tigermain.readlist.1,
   TEMP fp))
MOVE(
 MEM(
  TEMP t59),
 TEMP t58)
MOVE(
 TEMP t62,
 BINOP(PLUS,
  TEMP fp,
  CONST -12))
MOVE(
 TEMP t61,
 BINOP(PLUS,
  TEMP fp,
  CONST -4))
MOVE(
 TEMP t60,
 CALL(
  NAME _getchar))
MOVE(
 MEM(
  TEMP t61),
 TEMP t60)
MOVE(
 MEM(
  TEMP t62),
 CALL(
  NAME tigermain.readlist.1,
   TEMP fp))
MOVE(
 TEMP t64,
 TEMP fp)
MOVE(
 TEMP t63,
 CALL(
  NAME tigermain.merge.2,
   TEMP fp,
   MEM(
    BINOP(PLUS,
     TEMP fp,
     CONST -8)),
   MEM(
    BINOP(PLUS,
     TEMP fp,
     CONST -12))))
UEXP(
 CALL(
  NAME tigermain.printlist.4,
   TEMP t64,
   TEMP t63))
MOVE(
 TEMP fp,
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST -52)))
MOVE(
 TEMP r23,
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST -48)))
MOVE(
 TEMP r22,
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST -44)))
MOVE(
 TEMP r21,
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST -40)))
MOVE(
 TEMP r20,
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST -36)))
MOVE(
 TEMP r19,
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST -32)))
MOVE(
 TEMP r18,
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST -28)))
MOVE(
 TEMP r17,
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST -24)))
MOVE(
 TEMP r16,
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST -20)))
MOVE(
 TEMP ra,
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST -16)))
JUMP(
 NAME L53)
LABEL L53
# Trace Scheduled: 
LABEL L54
MOVE(
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST -16)),
 TEMP ra)
MOVE(
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST -20)),
 TEMP r16)
MOVE(
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST -24)),
 TEMP r17)
MOVE(
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST -28)),
 TEMP r18)
MOVE(
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST -32)),
 TEMP r19)
MOVE(
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST -36)),
 TEMP r20)
MOVE(
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST -40)),
 TEMP r21)
MOVE(
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST -44)),
 TEMP r22)
MOVE(
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST -48)),
 TEMP r23)
MOVE(
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST -52)),
 TEMP fp)
MOVE(
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST 0)),
 TEMP r4)
MOVE(
 TEMP t57,
 BINOP(PLUS,
  TEMP fp,
  CONST -4))
MOVE(
 TEMP t56,
 CALL(
  NAME _getchar))
MOVE(
 MEM(
  TEMP t57),
 TEMP t56)
MOVE(
 TEMP t59,
 BINOP(PLUS,
  TEMP fp,
  CONST -8))
MOVE(
 TEMP t58,
 CALL(
  NAME tigermain.readlist.1,
   TEMP fp))
MOVE(
 MEM(
  TEMP t59),
 TEMP t58)
MOVE(
 TEMP t62,
 BINOP(PLUS,
  TEMP fp,
  CONST -12))
MOVE(
 TEMP t61,
 BINOP(PLUS,
  TEMP fp,
  CONST -4))
MOVE(
 TEMP t60,
 CALL(
  NAME _getchar))
MOVE(
 MEM(
  TEMP t61),
 TEMP t60)
MOVE(
 MEM(
  TEMP t62),
 CALL(
  NAME tigermain.readlist.1,
   TEMP fp))
MOVE(
 TEMP t64,
 TEMP fp)
MOVE(
 TEMP t63,
 CALL(
  NAME tigermain.merge.2,
   TEMP fp,
   MEM(
    BINOP(PLUS,
     TEMP fp,
     CONST -8)),
   MEM(
    BINOP(PLUS,
     TEMP fp,
     CONST -12))))
UEXP(
 CALL(
  NAME tigermain.printlist.4,
   TEMP t64,
   TEMP t63))
MOVE(
 TEMP fp,
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST -52)))
MOVE(
 TEMP r23,
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST -48)))
MOVE(
 TEMP r22,
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST -44)))
MOVE(
 TEMP r21,
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST -40)))
MOVE(
 TEMP r20,
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST -36)))
MOVE(
 TEMP r19,
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST -32)))
MOVE(
 TEMP r18,
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST -28)))
MOVE(
 TEMP r17,
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST -24)))
MOVE(
 TEMP r16,
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST -20)))
MOVE(
 TEMP ra,
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST -16)))
JUMP(
 NAME L53)
LABEL L53
# Instructions: 
L54: 
	stw ra, -16+tigermain_framesize(sp)
	stw r16, -20+tigermain_framesize(sp)
	stw r17, -24+tigermain_framesize(sp)
	stw r18, -28+tigermain_framesize(sp)
	stw r19, -32+tigermain_framesize(sp)
	stw r20, -36+tigermain_framesize(sp)
	stw r21, -40+tigermain_framesize(sp)
	stw r22, -44+tigermain_framesize(sp)
	stw r23, -48+tigermain_framesize(sp)
	stw fp, -52+tigermain_framesize(sp)
	stw r4, 0+tigermain_framesize(sp)
	addi t65, sp, -4+tigermain_framesize
	mov t57, t65
	call _getchar
	mov t56, r2
	stw t56, (t57)
	addi t66, sp, -8+tigermain_framesize
	mov t59, t66
	addi t67, sp, tigermain_framesize
	mov r4, t67
	call tigermain.readlist.1
	mov t58, r2
	stw t58, (t59)
	addi t68, sp, -12+tigermain_framesize
	mov t62, t68
	addi t69, sp, -4+tigermain_framesize
	mov t61, t69
	call _getchar
	mov t60, r2
	stw t60, (t61)
	addi t70, sp, tigermain_framesize
	mov r4, t70
	call tigermain.readlist.1
	stw r2, (t62)
	addi t71, sp, tigermain_framesize
	mov t64, t71
	addi t72, sp, tigermain_framesize
	mov r4, t72
	ldw t73, -8+tigermain_framesize(sp)
	mov r5, t73
	ldw t74, -12+tigermain_framesize(sp)
	mov r6, t74
	call tigermain.merge.2
	mov t63, r2
	mov r4, t64
	mov r5, t63
	call tigermain.printlist.4
	ldw fp, -52+tigermain_framesize(sp)
	ldw r23, -48+tigermain_framesize(sp)
	ldw r22, -44+tigermain_framesize(sp)
	ldw r21, -40+tigermain_framesize(sp)
	ldw r20, -36+tigermain_framesize(sp)
	ldw r19, -32+tigermain_framesize(sp)
	ldw r18, -28+tigermain_framesize(sp)
	ldw r17, -24+tigermain_framesize(sp)
	ldw r16, -20+tigermain_framesize(sp)
	ldw ra, -16+tigermain_framesize(sp)
	br L53
L53: 
END tigermain
PROCEDURE tigermain.printlist.4
# Before canonicalization: 
SEQ(
 SEQ(
  SEQ(
   SEQ(
    SEQ(
     SEQ(
      SEQ(
       SEQ(
        SEQ(
         SEQ(
          SEQ(
           MOVE(
            MEM(
             BINOP(PLUS,
              TEMP fp,
              CONST -4)),
            TEMP ra),
           SEQ(
            MOVE(
             MEM(
              BINOP(PLUS,
               TEMP fp,
               CONST -8)),
             TEMP r16),
            SEQ(
             MOVE(
              MEM(
               BINOP(PLUS,
                TEMP fp,
                CONST -12)),
              TEMP r17),
             SEQ(
              MOVE(
               MEM(
                BINOP(PLUS,
                 TEMP fp,
                 CONST -16)),
               TEMP r18),
              SEQ(
               MOVE(
                MEM(
                 BINOP(PLUS,
                  TEMP fp,
                  CONST -20)),
                TEMP r19),
               SEQ(
                MOVE(
                 MEM(
                  BINOP(PLUS,
                   TEMP fp,
                   CONST -24)),
                 TEMP r20),
                SEQ(
                 MOVE(
                  MEM(
                   BINOP(PLUS,
                    TEMP fp,
                    CONST -28)),
                  TEMP r21),
                 SEQ(
                  MOVE(
                   MEM(
                    BINOP(PLUS,
                     TEMP fp,
                     CONST -32)),
                   TEMP r22),
                  SEQ(
                   MOVE(
                    MEM(
                     BINOP(PLUS,
                      TEMP fp,
                      CONST -36)),
                    TEMP r23),
                   SEQ(
                    MOVE(
                     MEM(
                      BINOP(PLUS,
                       TEMP fp,
                       CONST -40)),
                     TEMP fp),
                    SEQ(
                     MOVE(
                      MEM(
                       BINOP(PLUS,
                        TEMP fp,
                        CONST 0)),
                      TEMP r4),
                     SEQ(
                      MOVE(
                       MEM(
                        BINOP(PLUS,
                         TEMP fp,
                         CONST 4)),
                       TEMP r5),
                      SEQ(
                       SEQ(
                        CJUMP(EQ,
                         MEM(
                          BINOP(PLUS,
                           TEMP fp,
                           CONST 4)),
                         CONST 0,
                         L50,L51),
                        SEQ(
                         SEQ(
                          SEQ(
                           LABEL L50,
                           UEXP(
                            CALL(
                             NAME _print,
                              NAME L8))),
                          JUMP(
                           NAME L52)),
                         SEQ(
                          SEQ(
                           LABEL L51,
                           SEQ(
                            SEQ(
                             UEXP(
                              CALL(
                               NAME tigermain.printint.3,
                                MEM(
                                 BINOP(PLUS,
                                  TEMP fp,
                                  CONST 0)),
                                ESEQ(
                                 SEQ(
                                  MOVE(
                                   TEMP t53,
                                   MEM(
                                    BINOP(PLUS,
                                     TEMP fp,
                                     CONST 4))),
                                  SEQ(
                                   CJUMP(EQ,
                                    TEMP t53,
                                    CONST 0,
                                    _BADPTR,L48),
                                   LABEL L48)),
                                 MEM(
                                  BINOP(PLUS,
                                   TEMP t53,
                                   CONST 0))))),
                             UEXP(
                              CALL(
                               NAME _print,
                                NAME L7))),
                            UEXP(
                             CALL(
                              NAME tigermain.printlist.4,
                               MEM(
                                BINOP(PLUS,
                                 TEMP fp,
                                 CONST 0)),
                               ESEQ(
                                SEQ(
                                 MOVE(
                                  TEMP t54,
                                  MEM(
                                   BINOP(PLUS,
                                    TEMP fp,
                                    CONST 4))),
                                 SEQ(
                                  CJUMP(EQ,
                                   TEMP t54,
                                   CONST 0,
                                   _BADPTR,L49),
                                  LABEL L49)),
                                MEM(
                                 BINOP(PLUS,
                                  TEMP t54,
                                  CONST 4))))))),
                          JUMP(
                           NAME L52)))),
                       LABEL L52))))))))))))),
          MOVE(
           TEMP fp,
           MEM(
            BINOP(PLUS,
             TEMP fp,
             CONST -40)))),
         MOVE(
          TEMP r23,
          MEM(
           BINOP(PLUS,
            TEMP fp,
            CONST -36)))),
        MOVE(
         TEMP r22,
         MEM(
          BINOP(PLUS,
           TEMP fp,
           CONST -32)))),
       MOVE(
        TEMP r21,
        MEM(
         BINOP(PLUS,
          TEMP fp,
          CONST -28)))),
      MOVE(
       TEMP r20,
       MEM(
        BINOP(PLUS,
         TEMP fp,
         CONST -24)))),
     MOVE(
      TEMP r19,
      MEM(
       BINOP(PLUS,
        TEMP fp,
        CONST -20)))),
    MOVE(
     TEMP r18,
     MEM(
      BINOP(PLUS,
       TEMP fp,
       CONST -16)))),
   MOVE(
    TEMP r17,
    MEM(
     BINOP(PLUS,
      TEMP fp,
      CONST -12)))),
  MOVE(
   TEMP r16,
   MEM(
    BINOP(PLUS,
     TEMP fp,
     CONST -8)))),
 MOVE(
  TEMP ra,
  MEM(
   BINOP(PLUS,
    TEMP fp,
    CONST -4))))
# After canonicalization: 
MOVE(
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST -4)),
 TEMP ra)
MOVE(
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST -8)),
 TEMP r16)
MOVE(
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST -12)),
 TEMP r17)
MOVE(
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST -16)),
 TEMP r18)
MOVE(
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST -20)),
 TEMP r19)
MOVE(
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST -24)),
 TEMP r20)
MOVE(
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST -28)),
 TEMP r21)
MOVE(
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST -32)),
 TEMP r22)
MOVE(
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST -36)),
 TEMP r23)
MOVE(
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST -40)),
 TEMP fp)
MOVE(
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST 0)),
 TEMP r4)
MOVE(
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST 4)),
 TEMP r5)
CJUMP(EQ,
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST 4)),
 CONST 0,
 L50,L51)
LABEL L50
UEXP(
 CALL(
  NAME _print,
   NAME L8))
JUMP(
 NAME L52)
LABEL L51
MOVE(
 TEMP t75,
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST 0)))
MOVE(
 TEMP t53,
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST 4)))
CJUMP(EQ,
 TEMP t53,
 CONST 0,
 _BADPTR,L48)
LABEL L48
UEXP(
 CALL(
  NAME tigermain.printint.3,
   TEMP t75,
   MEM(
    BINOP(PLUS,
     TEMP t53,
     CONST 0))))
UEXP(
 CALL(
  NAME _print,
   NAME L7))
MOVE(
 TEMP t76,
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST 0)))
MOVE(
 TEMP t54,
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST 4)))
CJUMP(EQ,
 TEMP t54,
 CONST 0,
 _BADPTR,L49)
LABEL L49
UEXP(
 CALL(
  NAME tigermain.printlist.4,
   TEMP t76,
   MEM(
    BINOP(PLUS,
     TEMP t54,
     CONST 4))))
JUMP(
 NAME L52)
LABEL L52
MOVE(
 TEMP fp,
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST -40)))
MOVE(
 TEMP r23,
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST -36)))
MOVE(
 TEMP r22,
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST -32)))
MOVE(
 TEMP r21,
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST -28)))
MOVE(
 TEMP r20,
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST -24)))
MOVE(
 TEMP r19,
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST -20)))
MOVE(
 TEMP r18,
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST -16)))
MOVE(
 TEMP r17,
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST -12)))
MOVE(
 TEMP r16,
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST -8)))
MOVE(
 TEMP ra,
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST -4)))
# Basic Blocks: 
#
LABEL L56
MOVE(
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST -4)),
 TEMP ra)
MOVE(
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST -8)),
 TEMP r16)
MOVE(
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST -12)),
 TEMP r17)
MOVE(
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST -16)),
 TEMP r18)
MOVE(
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST -20)),
 TEMP r19)
MOVE(
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST -24)),
 TEMP r20)
MOVE(
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST -28)),
 TEMP r21)
MOVE(
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST -32)),
 TEMP r22)
MOVE(
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST -36)),
 TEMP r23)
MOVE(
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST -40)),
 TEMP fp)
MOVE(
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST 0)),
 TEMP r4)
MOVE(
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST 4)),
 TEMP r5)
CJUMP(EQ,
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST 4)),
 CONST 0,
 L50,L51)
#
LABEL L50
UEXP(
 CALL(
  NAME _print,
   NAME L8))
JUMP(
 NAME L52)
#
LABEL L51
MOVE(
 TEMP t75,
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST 0)))
MOVE(
 TEMP t53,
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST 4)))
CJUMP(EQ,
 TEMP t53,
 CONST 0,
 _BADPTR,L48)
#
LABEL L48
UEXP(
 CALL(
  NAME tigermain.printint.3,
   TEMP t75,
   MEM(
    BINOP(PLUS,
     TEMP t53,
     CONST 0))))
UEXP(
 CALL(
  NAME _print,
   NAME L7))
MOVE(
 TEMP t76,
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST 0)))
MOVE(
 TEMP t54,
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST 4)))
CJUMP(EQ,
 TEMP t54,
 CONST 0,
 _BADPTR,L49)
#
LABEL L49
UEXP(
 CALL(
  NAME tigermain.printlist.4,
   TEMP t76,
   MEM(
    BINOP(PLUS,
     TEMP t54,
     CONST 4))))
JUMP(
 NAME L52)
#
LABEL L52
MOVE(
 TEMP fp,
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST -40)))
MOVE(
 TEMP r23,
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST -36)))
MOVE(
 TEMP r22,
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST -32)))
MOVE(
 TEMP r21,
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST -28)))
MOVE(
 TEMP r20,
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST -24)))
MOVE(
 TEMP r19,
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST -20)))
MOVE(
 TEMP r18,
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST -16)))
MOVE(
 TEMP r17,
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST -12)))
MOVE(
 TEMP r16,
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST -8)))
MOVE(
 TEMP ra,
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST -4)))
JUMP(
 NAME L55)
LABEL L55
# Trace Scheduled: 
LABEL L56
MOVE(
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST -4)),
 TEMP ra)
MOVE(
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST -8)),
 TEMP r16)
MOVE(
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST -12)),
 TEMP r17)
MOVE(
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST -16)),
 TEMP r18)
MOVE(
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST -20)),
 TEMP r19)
MOVE(
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST -24)),
 TEMP r20)
MOVE(
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST -28)),
 TEMP r21)
MOVE(
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST -32)),
 TEMP r22)
MOVE(
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST -36)),
 TEMP r23)
MOVE(
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST -40)),
 TEMP fp)
MOVE(
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST 0)),
 TEMP r4)
MOVE(
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST 4)),
 TEMP r5)
CJUMP(EQ,
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST 4)),
 CONST 0,
 L50,L51)
LABEL L51
MOVE(
 TEMP t75,
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST 0)))
MOVE(
 TEMP t53,
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST 4)))
CJUMP(EQ,
 TEMP t53,
 CONST 0,
 _BADPTR,L48)
LABEL L48
UEXP(
 CALL(
  NAME tigermain.printint.3,
   TEMP t75,
   MEM(
    BINOP(PLUS,
     TEMP t53,
     CONST 0))))
UEXP(
 CALL(
  NAME _print,
   NAME L7))
MOVE(
 TEMP t76,
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST 0)))
MOVE(
 TEMP t54,
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST 4)))
CJUMP(EQ,
 TEMP t54,
 CONST 0,
 _BADPTR,L49)
LABEL L49
UEXP(
 CALL(
  NAME tigermain.printlist.4,
   TEMP t76,
   MEM(
    BINOP(PLUS,
     TEMP t54,
     CONST 4))))
LABEL L52
MOVE(
 TEMP fp,
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST -40)))
MOVE(
 TEMP r23,
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST -36)))
MOVE(
 TEMP r22,
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST -32)))
MOVE(
 TEMP r21,
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST -28)))
MOVE(
 TEMP r20,
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST -24)))
MOVE(
 TEMP r19,
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST -20)))
MOVE(
 TEMP r18,
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST -16)))
MOVE(
 TEMP r17,
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST -12)))
MOVE(
 TEMP r16,
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST -8)))
MOVE(
 TEMP ra,
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST -4)))
JUMP(
 NAME L55)
LABEL L50
UEXP(
 CALL(
  NAME _print,
   NAME L8))
JUMP(
 NAME L52)
LABEL L55
# Instructions: 
L56: 
	stw ra, -4+tigermain.printlist.4_framesize(sp)
	stw r16, -8+tigermain.printlist.4_framesize(sp)
	stw r17, -12+tigermain.printlist.4_framesize(sp)
	stw r18, -16+tigermain.printlist.4_framesize(sp)
	stw r19, -20+tigermain.printlist.4_framesize(sp)
	stw r20, -24+tigermain.printlist.4_framesize(sp)
	stw r21, -28+tigermain.printlist.4_framesize(sp)
	stw r22, -32+tigermain.printlist.4_framesize(sp)
	stw r23, -36+tigermain.printlist.4_framesize(sp)
	stw fp, -40+tigermain.printlist.4_framesize(sp)
	stw r4, 0+tigermain.printlist.4_framesize(sp)
	stw r5, 4+tigermain.printlist.4_framesize(sp)
	ldw t77, 4+tigermain.printlist.4_framesize(sp)
	beq t77, zero, L50
L51: 
	ldw t75, 0+tigermain.printlist.4_framesize(sp)
	ldw t53, 4+tigermain.printlist.4_framesize(sp)
	beq t53, zero, _BADPTR
L48: 
	mov r4, t75
	ldw t78, 0(t53)
	mov r5, t78
	call tigermain.printint.3
	movia t79, L7
	mov r4, t79
	call _print
	ldw t76, 0+tigermain.printlist.4_framesize(sp)
	ldw t54, 4+tigermain.printlist.4_framesize(sp)
	beq t54, zero, _BADPTR
L49: 
	mov r4, t76
	ldw t80, 4(t54)
	mov r5, t80
	call tigermain.printlist.4
L52: 
	ldw fp, -40+tigermain.printlist.4_framesize(sp)
	ldw r23, -36+tigermain.printlist.4_framesize(sp)
	ldw r22, -32+tigermain.printlist.4_framesize(sp)
	ldw r21, -28+tigermain.printlist.4_framesize(sp)
	ldw r20, -24+tigermain.printlist.4_framesize(sp)
	ldw r19, -20+tigermain.printlist.4_framesize(sp)
	ldw r18, -16+tigermain.printlist.4_framesize(sp)
	ldw r17, -12+tigermain.printlist.4_framesize(sp)
	ldw r16, -8+tigermain.printlist.4_framesize(sp)
	ldw ra, -4+tigermain.printlist.4_framesize(sp)
	br L55
L50: 
	movia t81, L8
	mov r4, t81
	call _print
	br L52
L55: 
END tigermain.printlist.4
PROCEDURE tigermain.printint.3
# Before canonicalization: 
SEQ(
 SEQ(
  SEQ(
   SEQ(
    SEQ(
     SEQ(
      SEQ(
       SEQ(
        SEQ(
         SEQ(
          SEQ(
           MOVE(
            MEM(
             BINOP(PLUS,
              TEMP fp,
              CONST -4)),
            TEMP ra),
           SEQ(
            MOVE(
             MEM(
              BINOP(PLUS,
               TEMP fp,
               CONST -8)),
             TEMP r16),
            SEQ(
             MOVE(
              MEM(
               BINOP(PLUS,
                TEMP fp,
                CONST -12)),
              TEMP r17),
             SEQ(
              MOVE(
               MEM(
                BINOP(PLUS,
                 TEMP fp,
                 CONST -16)),
               TEMP r18),
              SEQ(
               MOVE(
                MEM(
                 BINOP(PLUS,
                  TEMP fp,
                  CONST -20)),
                TEMP r19),
               SEQ(
                MOVE(
                 MEM(
                  BINOP(PLUS,
                   TEMP fp,
                   CONST -24)),
                 TEMP r20),
                SEQ(
                 MOVE(
                  MEM(
                   BINOP(PLUS,
                    TEMP fp,
                    CONST -28)),
                  TEMP r21),
                 SEQ(
                  MOVE(
                   MEM(
                    BINOP(PLUS,
                     TEMP fp,
                     CONST -32)),
                   TEMP r22),
                  SEQ(
                   MOVE(
                    MEM(
                     BINOP(PLUS,
                      TEMP fp,
                      CONST -36)),
                    TEMP r23),
                   SEQ(
                    MOVE(
                     MEM(
                      BINOP(PLUS,
                       TEMP fp,
                       CONST -40)),
                     TEMP fp),
                    SEQ(
                     MOVE(
                      MEM(
                       BINOP(PLUS,
                        TEMP fp,
                        CONST 0)),
                      TEMP r4),
                     SEQ(
                      MOVE(
                       MEM(
                        BINOP(PLUS,
                         TEMP fp,
                         CONST 4)),
                       TEMP r5),
                      SEQ(
                       SEQ(
                        CJUMP(LT,
                         MEM(
                          BINOP(PLUS,
                           TEMP fp,
                           CONST 4)),
                         CONST 0,
                         L45,L46),
                        SEQ(
                         SEQ(
                          SEQ(
                           LABEL L45,
                           SEQ(
                            UEXP(
                             CALL(
                              NAME _print,
                               NAME L41)),
                            UEXP(
                             CALL(
                              NAME tigermain.printint.3.f.0,
                               TEMP fp,
                               BINOP(MINUS,
                                CONST 0,
                                MEM(
                                 BINOP(PLUS,
                                  TEMP fp,
                                  CONST 4))))))),
                          JUMP(
                           NAME L47)),
                         SEQ(
                          SEQ(
                           LABEL L46,
                           SEQ(
                            SEQ(
                             CJUMP(GT,
                              MEM(
                               BINOP(PLUS,
                                TEMP fp,
                                CONST 4)),
                              CONST 0,
                              L42,L43),
                             SEQ(
                              SEQ(
                               SEQ(
                                LABEL L42,
                                UEXP(
                                 CALL(
                                  NAME tigermain.printint.3.f.0,
                                   TEMP fp,
                                   MEM(
                                    BINOP(PLUS,
                                     TEMP fp,
                                     CONST 4))))),
                               JUMP(
                                NAME L44)),
                              SEQ(
                               SEQ(
                                LABEL L43,
                                UEXP(
                                 CALL(
                                  NAME _print,
                                   NAME L0))),
                               JUMP(
                                NAME L44)))),
                            LABEL L44)),
                          JUMP(
                           NAME L47)))),
                       LABEL L47))))))))))))),
          MOVE(
           TEMP fp,
           MEM(
            BINOP(PLUS,
             TEMP fp,
             CONST -40)))),
         MOVE(
          TEMP r23,
          MEM(
           BINOP(PLUS,
            TEMP fp,
            CONST -36)))),
        MOVE(
         TEMP r22,
         MEM(
          BINOP(PLUS,
           TEMP fp,
           CONST -32)))),
       MOVE(
        TEMP r21,
        MEM(
         BINOP(PLUS,
          TEMP fp,
          CONST -28)))),
      MOVE(
       TEMP r20,
       MEM(
        BINOP(PLUS,
         TEMP fp,
         CONST -24)))),
     MOVE(
      TEMP r19,
      MEM(
       BINOP(PLUS,
        TEMP fp,
        CONST -20)))),
    MOVE(
     TEMP r18,
     MEM(
      BINOP(PLUS,
       TEMP fp,
       CONST -16)))),
   MOVE(
    TEMP r17,
    MEM(
     BINOP(PLUS,
      TEMP fp,
      CONST -12)))),
  MOVE(
   TEMP r16,
   MEM(
    BINOP(PLUS,
     TEMP fp,
     CONST -8)))),
 MOVE(
  TEMP ra,
  MEM(
   BINOP(PLUS,
    TEMP fp,
    CONST -4))))
# After canonicalization: 
MOVE(
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST -4)),
 TEMP ra)
MOVE(
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST -8)),
 TEMP r16)
MOVE(
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST -12)),
 TEMP r17)
MOVE(
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST -16)),
 TEMP r18)
MOVE(
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST -20)),
 TEMP r19)
MOVE(
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST -24)),
 TEMP r20)
MOVE(
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST -28)),
 TEMP r21)
MOVE(
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST -32)),
 TEMP r22)
MOVE(
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST -36)),
 TEMP r23)
MOVE(
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST -40)),
 TEMP fp)
MOVE(
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST 0)),
 TEMP r4)
MOVE(
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST 4)),
 TEMP r5)
CJUMP(LT,
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST 4)),
 CONST 0,
 L45,L46)
LABEL L45
UEXP(
 CALL(
  NAME _print,
   NAME L41))
UEXP(
 CALL(
  NAME tigermain.printint.3.f.0,
   TEMP fp,
   BINOP(MINUS,
    CONST 0,
    MEM(
     BINOP(PLUS,
      TEMP fp,
      CONST 4)))))
JUMP(
 NAME L47)
LABEL L46
CJUMP(GT,
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST 4)),
 CONST 0,
 L42,L43)
LABEL L42
UEXP(
 CALL(
  NAME tigermain.printint.3.f.0,
   TEMP fp,
   MEM(
    BINOP(PLUS,
     TEMP fp,
     CONST 4))))
JUMP(
 NAME L44)
LABEL L43
UEXP(
 CALL(
  NAME _print,
   NAME L0))
JUMP(
 NAME L44)
LABEL L44
JUMP(
 NAME L47)
LABEL L47
MOVE(
 TEMP fp,
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST -40)))
MOVE(
 TEMP r23,
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST -36)))
MOVE(
 TEMP r22,
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST -32)))
MOVE(
 TEMP r21,
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST -28)))
MOVE(
 TEMP r20,
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST -24)))
MOVE(
 TEMP r19,
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST -20)))
MOVE(
 TEMP r18,
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST -16)))
MOVE(
 TEMP r17,
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST -12)))
MOVE(
 TEMP r16,
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST -8)))
MOVE(
 TEMP ra,
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST -4)))
# Basic Blocks: 
#
LABEL L58
MOVE(
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST -4)),
 TEMP ra)
MOVE(
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST -8)),
 TEMP r16)
MOVE(
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST -12)),
 TEMP r17)
MOVE(
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST -16)),
 TEMP r18)
MOVE(
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST -20)),
 TEMP r19)
MOVE(
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST -24)),
 TEMP r20)
MOVE(
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST -28)),
 TEMP r21)
MOVE(
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST -32)),
 TEMP r22)
MOVE(
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST -36)),
 TEMP r23)
MOVE(
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST -40)),
 TEMP fp)
MOVE(
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST 0)),
 TEMP r4)
MOVE(
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST 4)),
 TEMP r5)
CJUMP(LT,
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST 4)),
 CONST 0,
 L45,L46)
#
LABEL L45
UEXP(
 CALL(
  NAME _print,
   NAME L41))
UEXP(
 CALL(
  NAME tigermain.printint.3.f.0,
   TEMP fp,
   BINOP(MINUS,
    CONST 0,
    MEM(
     BINOP(PLUS,
      TEMP fp,
      CONST 4)))))
JUMP(
 NAME L47)
#
LABEL L46
CJUMP(GT,
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST 4)),
 CONST 0,
 L42,L43)
#
LABEL L42
UEXP(
 CALL(
  NAME tigermain.printint.3.f.0,
   TEMP fp,
   MEM(
    BINOP(PLUS,
     TEMP fp,
     CONST 4))))
JUMP(
 NAME L44)
#
LABEL L43
UEXP(
 CALL(
  NAME _print,
   NAME L0))
JUMP(
 NAME L44)
#
LABEL L44
JUMP(
 NAME L47)
#
LABEL L47
MOVE(
 TEMP fp,
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST -40)))
MOVE(
 TEMP r23,
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST -36)))
MOVE(
 TEMP r22,
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST -32)))
MOVE(
 TEMP r21,
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST -28)))
MOVE(
 TEMP r20,
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST -24)))
MOVE(
 TEMP r19,
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST -20)))
MOVE(
 TEMP r18,
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST -16)))
MOVE(
 TEMP r17,
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST -12)))
MOVE(
 TEMP r16,
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST -8)))
MOVE(
 TEMP ra,
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST -4)))
JUMP(
 NAME L57)
LABEL L57
# Trace Scheduled: 
LABEL L58
MOVE(
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST -4)),
 TEMP ra)
MOVE(
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST -8)),
 TEMP r16)
MOVE(
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST -12)),
 TEMP r17)
MOVE(
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST -16)),
 TEMP r18)
MOVE(
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST -20)),
 TEMP r19)
MOVE(
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST -24)),
 TEMP r20)
MOVE(
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST -28)),
 TEMP r21)
MOVE(
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST -32)),
 TEMP r22)
MOVE(
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST -36)),
 TEMP r23)
MOVE(
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST -40)),
 TEMP fp)
MOVE(
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST 0)),
 TEMP r4)
MOVE(
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST 4)),
 TEMP r5)
CJUMP(LT,
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST 4)),
 CONST 0,
 L45,L46)
LABEL L46
CJUMP(GT,
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST 4)),
 CONST 0,
 L42,L43)
LABEL L43
UEXP(
 CALL(
  NAME _print,
   NAME L0))
LABEL L44
LABEL L47
MOVE(
 TEMP fp,
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST -40)))
MOVE(
 TEMP r23,
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST -36)))
MOVE(
 TEMP r22,
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST -32)))
MOVE(
 TEMP r21,
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST -28)))
MOVE(
 TEMP r20,
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST -24)))
MOVE(
 TEMP r19,
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST -20)))
MOVE(
 TEMP r18,
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST -16)))
MOVE(
 TEMP r17,
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST -12)))
MOVE(
 TEMP r16,
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST -8)))
MOVE(
 TEMP ra,
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST -4)))
JUMP(
 NAME L57)
LABEL L45
UEXP(
 CALL(
  NAME _print,
   NAME L41))
UEXP(
 CALL(
  NAME tigermain.printint.3.f.0,
   TEMP fp,
   BINOP(MINUS,
    CONST 0,
    MEM(
     BINOP(PLUS,
      TEMP fp,
      CONST 4)))))
JUMP(
 NAME L47)
LABEL L42
UEXP(
 CALL(
  NAME tigermain.printint.3.f.0,
   TEMP fp,
   MEM(
    BINOP(PLUS,
     TEMP fp,
     CONST 4))))
JUMP(
 NAME L44)
LABEL L57
# Instructions: 
L58: 
	stw ra, -4+tigermain.printint.3_framesize(sp)
	stw r16, -8+tigermain.printint.3_framesize(sp)
	stw r17, -12+tigermain.printint.3_framesize(sp)
	stw r18, -16+tigermain.printint.3_framesize(sp)
	stw r19, -20+tigermain.printint.3_framesize(sp)
	stw r20, -24+tigermain.printint.3_framesize(sp)
	stw r21, -28+tigermain.printint.3_framesize(sp)
	stw r22, -32+tigermain.printint.3_framesize(sp)
	stw r23, -36+tigermain.printint.3_framesize(sp)
	stw fp, -40+tigermain.printint.3_framesize(sp)
	stw r4, 0+tigermain.printint.3_framesize(sp)
	stw r5, 4+tigermain.printint.3_framesize(sp)
	ldw t82, 4+tigermain.printint.3_framesize(sp)
	blt t82, zero, L45
L46: 
	ldw t83, 4+tigermain.printint.3_framesize(sp)
	bgt t83, zero, L42
L43: 
	movia t84, L0
	mov r4, t84
	call _print
L44: 
L47: 
	ldw fp, -40+tigermain.printint.3_framesize(sp)
	ldw r23, -36+tigermain.printint.3_framesize(sp)
	ldw r22, -32+tigermain.printint.3_framesize(sp)
	ldw r21, -28+tigermain.printint.3_framesize(sp)
	ldw r20, -24+tigermain.printint.3_framesize(sp)
	ldw r19, -20+tigermain.printint.3_framesize(sp)
	ldw r18, -16+tigermain.printint.3_framesize(sp)
	ldw r17, -12+tigermain.printint.3_framesize(sp)
	ldw r16, -8+tigermain.printint.3_framesize(sp)
	ldw ra, -4+tigermain.printint.3_framesize(sp)
	br L57
L45: 
	movia t85, L41
	mov r4, t85
	call _print
	addi t86, sp, tigermain.printint.3_framesize
	mov r4, t86
	ldw t88, 4+tigermain.printint.3_framesize(sp)
	subi t87, t88, 0
	mov r5, t87
	call tigermain.printint.3.f.0
	br L47
L42: 
	addi t89, sp, tigermain.printint.3_framesize
	mov r4, t89
	ldw t90, 4+tigermain.printint.3_framesize(sp)
	mov r5, t90
	call tigermain.printint.3.f.0
	br L44
L57: 
END tigermain.printint.3
	.data
	.word 1
L41:	.asciz	"-"
PROCEDURE tigermain.printint.3.f.0
# Before canonicalization: 
SEQ(
 SEQ(
  SEQ(
   SEQ(
    SEQ(
     SEQ(
      SEQ(
       SEQ(
        SEQ(
         SEQ(
          SEQ(
           MOVE(
            MEM(
             BINOP(PLUS,
              TEMP fp,
              CONST -4)),
            TEMP ra),
           SEQ(
            MOVE(
             MEM(
              BINOP(PLUS,
               TEMP fp,
               CONST -8)),
             TEMP r16),
            SEQ(
             MOVE(
              MEM(
               BINOP(PLUS,
                TEMP fp,
                CONST -12)),
              TEMP r17),
             SEQ(
              MOVE(
               MEM(
                BINOP(PLUS,
                 TEMP fp,
                 CONST -16)),
               TEMP r18),
              SEQ(
               MOVE(
                MEM(
                 BINOP(PLUS,
                  TEMP fp,
                  CONST -20)),
                TEMP r19),
               SEQ(
                MOVE(
                 MEM(
                  BINOP(PLUS,
                   TEMP fp,
                   CONST -24)),
                 TEMP r20),
                SEQ(
                 MOVE(
                  MEM(
                   BINOP(PLUS,
                    TEMP fp,
                    CONST -28)),
                  TEMP r21),
                 SEQ(
                  MOVE(
                   MEM(
                    BINOP(PLUS,
                     TEMP fp,
                     CONST -32)),
                   TEMP r22),
                  SEQ(
                   MOVE(
                    MEM(
                     BINOP(PLUS,
                      TEMP fp,
                      CONST -36)),
                    TEMP r23),
                   SEQ(
                    MOVE(
                     MEM(
                      BINOP(PLUS,
                       TEMP fp,
                       CONST -40)),
                     TEMP fp),
                    SEQ(
                     MOVE(
                      MEM(
                       BINOP(PLUS,
                        TEMP fp,
                        CONST 0)),
                      TEMP r4),
                     SEQ(
                      MOVE(
                       MEM(
                        BINOP(PLUS,
                         TEMP fp,
                         CONST 4)),
                       TEMP r5),
                      SEQ(
                       SEQ(
                        CJUMP(GT,
                         MEM(
                          BINOP(PLUS,
                           TEMP fp,
                           CONST 4)),
                         CONST 0,
                         L38,L39),
                        SEQ(
                         SEQ(
                          SEQ(
                           LABEL L38,
                           SEQ(
                            UEXP(
                             CALL(
                              NAME tigermain.printint.3.f.0,
                               MEM(
                                BINOP(PLUS,
                                 TEMP fp,
                                 CONST 0)),
                               BINOP(DIV,
                                MEM(
                                 BINOP(PLUS,
                                  TEMP fp,
                                  CONST 4)),
                                CONST 10))),
                            UEXP(
                             CALL(
                              NAME _print,
                               CALL(
                                NAME _chr,
                                 BINOP(PLUS,
                                  BINOP(MINUS,
                                   MEM(
                                    BINOP(PLUS,
                                     TEMP fp,
                                     CONST 4)),
                                   BINOP(MUL,
                                    BINOP(DIV,
                                     MEM(
                                      BINOP(PLUS,
                                       TEMP fp,
                                       CONST 4)),
                                     CONST 10),
                                    CONST 10)),
                                  CALL(
                                   NAME _ord,
                                    NAME L0))))))),
                          JUMP(
                           NAME L40)),
                         SEQ(
                          SEQ(
                           LABEL L39,
                           UEXP(
                            CONST 0)),
                          JUMP(
                           NAME L40)))),
                       LABEL L40))))))))))))),
          MOVE(
           TEMP fp,
           MEM(
            BINOP(PLUS,
             TEMP fp,
             CONST -40)))),
         MOVE(
          TEMP r23,
          MEM(
           BINOP(PLUS,
            TEMP fp,
            CONST -36)))),
        MOVE(
         TEMP r22,
         MEM(
          BINOP(PLUS,
           TEMP fp,
           CONST -32)))),
       MOVE(
        TEMP r21,
        MEM(
         BINOP(PLUS,
          TEMP fp,
          CONST -28)))),
      MOVE(
       TEMP r20,
       MEM(
        BINOP(PLUS,
         TEMP fp,
         CONST -24)))),
     MOVE(
      TEMP r19,
      MEM(
       BINOP(PLUS,
        TEMP fp,
        CONST -20)))),
    MOVE(
     TEMP r18,
     MEM(
      BINOP(PLUS,
       TEMP fp,
       CONST -16)))),
   MOVE(
    TEMP r17,
    MEM(
     BINOP(PLUS,
      TEMP fp,
      CONST -12)))),
  MOVE(
   TEMP r16,
   MEM(
    BINOP(PLUS,
     TEMP fp,
     CONST -8)))),
 MOVE(
  TEMP ra,
  MEM(
   BINOP(PLUS,
    TEMP fp,
    CONST -4))))
# After canonicalization: 
MOVE(
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST -4)),
 TEMP ra)
MOVE(
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST -8)),
 TEMP r16)
MOVE(
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST -12)),
 TEMP r17)
MOVE(
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST -16)),
 TEMP r18)
MOVE(
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST -20)),
 TEMP r19)
MOVE(
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST -24)),
 TEMP r20)
MOVE(
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST -28)),
 TEMP r21)
MOVE(
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST -32)),
 TEMP r22)
MOVE(
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST -36)),
 TEMP r23)
MOVE(
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST -40)),
 TEMP fp)
MOVE(
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST 0)),
 TEMP r4)
MOVE(
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST 4)),
 TEMP r5)
CJUMP(GT,
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST 4)),
 CONST 0,
 L38,L39)
LABEL L38
UEXP(
 CALL(
  NAME tigermain.printint.3.f.0,
   MEM(
    BINOP(PLUS,
     TEMP fp,
     CONST 0)),
   BINOP(DIV,
    MEM(
     BINOP(PLUS,
      TEMP fp,
      CONST 4)),
    CONST 10)))
MOVE(
 TEMP t93,
 BINOP(MINUS,
  MEM(
   BINOP(PLUS,
    TEMP fp,
    CONST 4)),
  BINOP(MUL,
   BINOP(DIV,
    MEM(
     BINOP(PLUS,
      TEMP fp,
      CONST 4)),
    CONST 10),
   CONST 10)))
MOVE(
 TEMP t92,
 CALL(
  NAME _ord,
   NAME L0))
MOVE(
 TEMP t91,
 CALL(
  NAME _chr,
   BINOP(PLUS,
    TEMP t93,
    TEMP t92)))
UEXP(
 CALL(
  NAME _print,
   TEMP t91))
JUMP(
 NAME L40)
LABEL L39
JUMP(
 NAME L40)
LABEL L40
MOVE(
 TEMP fp,
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST -40)))
MOVE(
 TEMP r23,
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST -36)))
MOVE(
 TEMP r22,
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST -32)))
MOVE(
 TEMP r21,
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST -28)))
MOVE(
 TEMP r20,
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST -24)))
MOVE(
 TEMP r19,
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST -20)))
MOVE(
 TEMP r18,
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST -16)))
MOVE(
 TEMP r17,
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST -12)))
MOVE(
 TEMP r16,
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST -8)))
MOVE(
 TEMP ra,
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST -4)))
# Basic Blocks: 
#
LABEL L60
MOVE(
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST -4)),
 TEMP ra)
MOVE(
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST -8)),
 TEMP r16)
MOVE(
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST -12)),
 TEMP r17)
MOVE(
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST -16)),
 TEMP r18)
MOVE(
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST -20)),
 TEMP r19)
MOVE(
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST -24)),
 TEMP r20)
MOVE(
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST -28)),
 TEMP r21)
MOVE(
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST -32)),
 TEMP r22)
MOVE(
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST -36)),
 TEMP r23)
MOVE(
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST -40)),
 TEMP fp)
MOVE(
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST 0)),
 TEMP r4)
MOVE(
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST 4)),
 TEMP r5)
CJUMP(GT,
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST 4)),
 CONST 0,
 L38,L39)
#
LABEL L38
UEXP(
 CALL(
  NAME tigermain.printint.3.f.0,
   MEM(
    BINOP(PLUS,
     TEMP fp,
     CONST 0)),
   BINOP(DIV,
    MEM(
     BINOP(PLUS,
      TEMP fp,
      CONST 4)),
    CONST 10)))
MOVE(
 TEMP t93,
 BINOP(MINUS,
  MEM(
   BINOP(PLUS,
    TEMP fp,
    CONST 4)),
  BINOP(MUL,
   BINOP(DIV,
    MEM(
     BINOP(PLUS,
      TEMP fp,
      CONST 4)),
    CONST 10),
   CONST 10)))
MOVE(
 TEMP t92,
 CALL(
  NAME _ord,
   NAME L0))
MOVE(
 TEMP t91,
 CALL(
  NAME _chr,
   BINOP(PLUS,
    TEMP t93,
    TEMP t92)))
UEXP(
 CALL(
  NAME _print,
   TEMP t91))
JUMP(
 NAME L40)
#
LABEL L39
JUMP(
 NAME L40)
#
LABEL L40
MOVE(
 TEMP fp,
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST -40)))
MOVE(
 TEMP r23,
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST -36)))
MOVE(
 TEMP r22,
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST -32)))
MOVE(
 TEMP r21,
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST -28)))
MOVE(
 TEMP r20,
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST -24)))
MOVE(
 TEMP r19,
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST -20)))
MOVE(
 TEMP r18,
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST -16)))
MOVE(
 TEMP r17,
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST -12)))
MOVE(
 TEMP r16,
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST -8)))
MOVE(
 TEMP ra,
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST -4)))
JUMP(
 NAME L59)
LABEL L59
# Trace Scheduled: 
LABEL L60
MOVE(
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST -4)),
 TEMP ra)
MOVE(
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST -8)),
 TEMP r16)
MOVE(
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST -12)),
 TEMP r17)
MOVE(
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST -16)),
 TEMP r18)
MOVE(
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST -20)),
 TEMP r19)
MOVE(
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST -24)),
 TEMP r20)
MOVE(
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST -28)),
 TEMP r21)
MOVE(
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST -32)),
 TEMP r22)
MOVE(
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST -36)),
 TEMP r23)
MOVE(
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST -40)),
 TEMP fp)
MOVE(
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST 0)),
 TEMP r4)
MOVE(
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST 4)),
 TEMP r5)
CJUMP(GT,
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST 4)),
 CONST 0,
 L38,L39)
LABEL L39
LABEL L40
MOVE(
 TEMP fp,
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST -40)))
MOVE(
 TEMP r23,
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST -36)))
MOVE(
 TEMP r22,
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST -32)))
MOVE(
 TEMP r21,
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST -28)))
MOVE(
 TEMP r20,
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST -24)))
MOVE(
 TEMP r19,
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST -20)))
MOVE(
 TEMP r18,
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST -16)))
MOVE(
 TEMP r17,
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST -12)))
MOVE(
 TEMP r16,
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST -8)))
MOVE(
 TEMP ra,
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST -4)))
JUMP(
 NAME L59)
LABEL L38
UEXP(
 CALL(
  NAME tigermain.printint.3.f.0,
   MEM(
    BINOP(PLUS,
     TEMP fp,
     CONST 0)),
   BINOP(DIV,
    MEM(
     BINOP(PLUS,
      TEMP fp,
      CONST 4)),
    CONST 10)))
MOVE(
 TEMP t93,
 BINOP(MINUS,
  MEM(
   BINOP(PLUS,
    TEMP fp,
    CONST 4)),
  BINOP(MUL,
   BINOP(DIV,
    MEM(
     BINOP(PLUS,
      TEMP fp,
      CONST 4)),
    CONST 10),
   CONST 10)))
MOVE(
 TEMP t92,
 CALL(
  NAME _ord,
   NAME L0))
MOVE(
 TEMP t91,
 CALL(
  NAME _chr,
   BINOP(PLUS,
    TEMP t93,
    TEMP t92)))
UEXP(
 CALL(
  NAME _print,
   TEMP t91))
JUMP(
 NAME L40)
LABEL L59
# Instructions: 
L60: 
	stw ra, -4+tigermain.printint.3.f.0_framesize(sp)
	stw r16, -8+tigermain.printint.3.f.0_framesize(sp)
	stw r17, -12+tigermain.printint.3.f.0_framesize(sp)
	stw r18, -16+tigermain.printint.3.f.0_framesize(sp)
	stw r19, -20+tigermain.printint.3.f.0_framesize(sp)
	stw r20, -24+tigermain.printint.3.f.0_framesize(sp)
	stw r21, -28+tigermain.printint.3.f.0_framesize(sp)
	stw r22, -32+tigermain.printint.3.f.0_framesize(sp)
	stw r23, -36+tigermain.printint.3.f.0_framesize(sp)
	stw fp, -40+tigermain.printint.3.f.0_framesize(sp)
	stw r4, 0+tigermain.printint.3.f.0_framesize(sp)
	stw r5, 4+tigermain.printint.3.f.0_framesize(sp)
	ldw t94, 4+tigermain.printint.3.f.0_framesize(sp)
	bgt t94, zero, L38
L39: 
L40: 
	ldw fp, -40+tigermain.printint.3.f.0_framesize(sp)
	ldw r23, -36+tigermain.printint.3.f.0_framesize(sp)
	ldw r22, -32+tigermain.printint.3.f.0_framesize(sp)
	ldw r21, -28+tigermain.printint.3.f.0_framesize(sp)
	ldw r20, -24+tigermain.printint.3.f.0_framesize(sp)
	ldw r19, -20+tigermain.printint.3.f.0_framesize(sp)
	ldw r18, -16+tigermain.printint.3.f.0_framesize(sp)
	ldw r17, -12+tigermain.printint.3.f.0_framesize(sp)
	ldw r16, -8+tigermain.printint.3.f.0_framesize(sp)
	ldw ra, -4+tigermain.printint.3.f.0_framesize(sp)
	br L59
L38: 
	ldw t95, 0+tigermain.printint.3.f.0_framesize(sp)
	mov r4, t95
	ldw t97, 4+tigermain.printint.3.f.0_framesize(sp)
	divi t96, t97, 10
	mov r5, t96
	call tigermain.printint.3.f.0
	ldw t99, 4+tigermain.printint.3.f.0_framesize(sp)
	ldw t102, 4+tigermain.printint.3.f.0_framesize(sp)
	divi t101, t102, 10
	muli t100, t101, 10
	sub t98, t99, t100
	mov t93, t98
	movia t103, L0
	mov r4, t103
	call _ord
	mov t92, r2
	add t104, t93, t92
	mov r4, t104
	call _chr
	mov t91, r2
	mov r4, t91
	call _print
	br L40
L59: 
END tigermain.printint.3.f.0
PROCEDURE tigermain.merge.2
# Before canonicalization: 
SEQ(
 SEQ(
  SEQ(
   SEQ(
    SEQ(
     SEQ(
      SEQ(
       SEQ(
        SEQ(
         SEQ(
          SEQ(
           MOVE(
            MEM(
             BINOP(PLUS,
              TEMP fp,
              CONST -4)),
            TEMP ra),
           SEQ(
            MOVE(
             MEM(
              BINOP(PLUS,
               TEMP fp,
               CONST -8)),
             TEMP r16),
            SEQ(
             MOVE(
              MEM(
               BINOP(PLUS,
                TEMP fp,
                CONST -12)),
              TEMP r17),
             SEQ(
              MOVE(
               MEM(
                BINOP(PLUS,
                 TEMP fp,
                 CONST -16)),
               TEMP r18),
              SEQ(
               MOVE(
                MEM(
                 BINOP(PLUS,
                  TEMP fp,
                  CONST -20)),
                TEMP r19),
               SEQ(
                MOVE(
                 MEM(
                  BINOP(PLUS,
                   TEMP fp,
                   CONST -24)),
                 TEMP r20),
                SEQ(
                 MOVE(
                  MEM(
                   BINOP(PLUS,
                    TEMP fp,
                    CONST -28)),
                  TEMP r21),
                 SEQ(
                  MOVE(
                   MEM(
                    BINOP(PLUS,
                     TEMP fp,
                     CONST -32)),
                   TEMP r22),
                  SEQ(
                   MOVE(
                    MEM(
                     BINOP(PLUS,
                      TEMP fp,
                      CONST -36)),
                    TEMP r23),
                   SEQ(
                    MOVE(
                     MEM(
                      BINOP(PLUS,
                       TEMP fp,
                       CONST -40)),
                     TEMP fp),
                    SEQ(
                     MOVE(
                      MEM(
                       BINOP(PLUS,
                        TEMP fp,
                        CONST 0)),
                      TEMP r4),
                     SEQ(
                      MOVE(
                       MEM(
                        BINOP(PLUS,
                         TEMP fp,
                         CONST 4)),
                       TEMP r5),
                      SEQ(
                       MOVE(
                        MEM(
                         BINOP(PLUS,
                          TEMP fp,
                          CONST 8)),
                        TEMP r6),
                       MOVE(
                        TEMP r2,
                        ESEQ(
                         SEQ(
                          SEQ(
                           CJUMP(EQ,
                            MEM(
                             BINOP(PLUS,
                              TEMP fp,
                              CONST 4)),
                            CONST 0,
                            L35,L36),
                           SEQ(
                            SEQ(
                             LABEL L35,
                             SEQ(
                              MOVE(
                               TEMP t48,
                               MEM(
                                BINOP(PLUS,
                                 TEMP fp,
                                 CONST 8))),
                              JUMP(
                               NAME L37))),
                            SEQ(
                             LABEL L36,
                             SEQ(
                              MOVE(
                               TEMP t48,
                               ESEQ(
                                SEQ(
                                 SEQ(
                                  CJUMP(EQ,
                                   MEM(
                                    BINOP(PLUS,
                                     TEMP fp,
                                     CONST 8)),
                                   CONST 0,
                                   L32,L33),
                                  SEQ(
                                   SEQ(
                                    LABEL L32,
                                    SEQ(
                                     MOVE(
                                      TEMP t49,
                                      MEM(
                                       BINOP(PLUS,
                                        TEMP fp,
                                        CONST 4))),
                                     JUMP(
                                      NAME L34))),
                                   SEQ(
                                    LABEL L33,
                                    SEQ(
                                     MOVE(
                                      TEMP t49,
                                      ESEQ(
                                       SEQ(
                                        SEQ(
                                         CJUMP(LT,
                                          ESEQ(
                                           SEQ(
                                            MOVE(
                                             TEMP t40,
                                             MEM(
                                              BINOP(PLUS,
                                               TEMP fp,
                                               CONST 4))),
                                            SEQ(
                                             CJUMP(EQ,
                                              TEMP t40,
                                              CONST 0,
                                              _BADPTR,L23),
                                             LABEL L23)),
                                           MEM(
                                            BINOP(PLUS,
                                             TEMP t40,
                                             CONST 0))),
                                          ESEQ(
                                           SEQ(
                                            MOVE(
                                             TEMP t41,
                                             MEM(
                                              BINOP(PLUS,
                                               TEMP fp,
                                               CONST 8))),
                                            SEQ(
                                             CJUMP(EQ,
                                              TEMP t41,
                                              CONST 0,
                                              _BADPTR,L24),
                                             LABEL L24)),
                                           MEM(
                                            BINOP(PLUS,
                                             TEMP t41,
                                             CONST 0))),
                                          L29,L30),
                                         SEQ(
                                          SEQ(
                                           LABEL L29,
                                           SEQ(
                                            MOVE(
                                             TEMP t50,
                                             ESEQ(
                                              SEQ(
                                               MOVE(
                                                TEMP t44,
                                                CALL(
                                                 NAME _allocRecord,
                                                  CONST 2)),
                                               SEQ(
                                                MOVE(
                                                 MEM(
                                                  BINOP(PLUS,
                                                   TEMP t44,
                                                   CONST 0)),
                                                 ESEQ(
                                                  SEQ(
                                                   MOVE(
                                                    TEMP t42,
                                                    MEM(
                                                     BINOP(PLUS,
                                                      TEMP fp,
                                                      CONST 4))),
                                                   SEQ(
                                                    CJUMP(EQ,
                                                     TEMP t42,
                                                     CONST 0,
                                                     _BADPTR,L25),
                                                    LABEL L25)),
                                                  MEM(
                                                   BINOP(PLUS,
                                                    TEMP t42,
                                                    CONST 0)))),
                                                MOVE(
                                                 MEM(
                                                  BINOP(PLUS,
                                                   TEMP t44,
                                                   CONST 4)),
                                                 CALL(
                                                  NAME tigermain.merge.2,
                                                   MEM(
                                                    BINOP(PLUS,
                                                     TEMP fp,
                                                     CONST 0)),
                                                   ESEQ(
                                                    SEQ(
                                                     MOVE(
                                                      TEMP t43,
                                                      MEM(
                                                       BINOP(PLUS,
                                                        TEMP fp,
                                                        CONST 4))),
                                                     SEQ(
                                                      CJUMP(EQ,
                                                       TEMP t43,
                                                       CONST 0,
                                                       _BADPTR,L26),
                                                      LABEL L26)),
                                                    MEM(
                                                     BINOP(PLUS,
                                                      TEMP t43,
                                                      CONST 4))),
                                                   MEM(
                                                    BINOP(PLUS,
                                                     TEMP fp,
                                                     CONST 8)))))),
                                              TEMP t44)),
                                            JUMP(
                                             NAME L31))),
                                          SEQ(
                                           LABEL L30,
                                           SEQ(
                                            MOVE(
                                             TEMP t50,
                                             ESEQ(
                                              SEQ(
                                               MOVE(
                                                TEMP t47,
                                                CALL(
                                                 NAME _allocRecord,
                                                  CONST 2)),
                                               SEQ(
                                                MOVE(
                                                 MEM(
                                                  BINOP(PLUS,
                                                   TEMP t47,
                                                   CONST 0)),
                                                 ESEQ(
                                                  SEQ(
                                                   MOVE(
                                                    TEMP t45,
                                                    MEM(
                                                     BINOP(PLUS,
                                                      TEMP fp,
                                                      CONST 8))),
                                                   SEQ(
                                                    CJUMP(EQ,
                                                     TEMP t45,
                                                     CONST 0,
                                                     _BADPTR,L27),
                                                    LABEL L27)),
                                                  MEM(
                                                   BINOP(PLUS,
                                                    TEMP t45,
                                                    CONST 0)))),
                                                MOVE(
                                                 MEM(
                                                  BINOP(PLUS,
                                                   TEMP t47,
                                                   CONST 4)),
                                                 CALL(
                                                  NAME tigermain.merge.2,
                                                   MEM(
                                                    BINOP(PLUS,
                                                     TEMP fp,
                                                     CONST 0)),
                                                   MEM(
                                                    BINOP(PLUS,
                                                     TEMP fp,
                                                     CONST 4)),
                                                   ESEQ(
                                                    SEQ(
                                                     MOVE(
                                                      TEMP t46,
                                                      MEM(
                                                       BINOP(PLUS,
                                                        TEMP fp,
                                                        CONST 8))),
                                                     SEQ(
                                                      CJUMP(EQ,
                                                       TEMP t46,
                                                       CONST 0,
                                                       _BADPTR,L28),
                                                      LABEL L28)),
                                                    MEM(
                                                     BINOP(PLUS,
                                                      TEMP t46,
                                                      CONST 4))))))),
                                              TEMP t47)),
                                            JUMP(
                                             NAME L31))))),
                                        LABEL L31),
                                       TEMP t50)),
                                     JUMP(
                                      NAME L34))))),
                                 LABEL L34),
                                TEMP t49)),
                              JUMP(
                               NAME L37))))),
                          LABEL L37),
                         TEMP t48))))))))))))))),
          MOVE(
           TEMP fp,
           MEM(
            BINOP(PLUS,
             TEMP fp,
             CONST -40)))),
         MOVE(
          TEMP r23,
          MEM(
           BINOP(PLUS,
            TEMP fp,
            CONST -36)))),
        MOVE(
         TEMP r22,
         MEM(
          BINOP(PLUS,
           TEMP fp,
           CONST -32)))),
       MOVE(
        TEMP r21,
        MEM(
         BINOP(PLUS,
          TEMP fp,
          CONST -28)))),
      MOVE(
       TEMP r20,
       MEM(
        BINOP(PLUS,
         TEMP fp,
         CONST -24)))),
     MOVE(
      TEMP r19,
      MEM(
       BINOP(PLUS,
        TEMP fp,
        CONST -20)))),
    MOVE(
     TEMP r18,
     MEM(
      BINOP(PLUS,
       TEMP fp,
       CONST -16)))),
   MOVE(
    TEMP r17,
    MEM(
     BINOP(PLUS,
      TEMP fp,
      CONST -12)))),
  MOVE(
   TEMP r16,
   MEM(
    BINOP(PLUS,
     TEMP fp,
     CONST -8)))),
 MOVE(
  TEMP ra,
  MEM(
   BINOP(PLUS,
    TEMP fp,
    CONST -4))))
# After canonicalization: 
MOVE(
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST -4)),
 TEMP ra)
MOVE(
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST -8)),
 TEMP r16)
MOVE(
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST -12)),
 TEMP r17)
MOVE(
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST -16)),
 TEMP r18)
MOVE(
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST -20)),
 TEMP r19)
MOVE(
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST -24)),
 TEMP r20)
MOVE(
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST -28)),
 TEMP r21)
MOVE(
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST -32)),
 TEMP r22)
MOVE(
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST -36)),
 TEMP r23)
MOVE(
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST -40)),
 TEMP fp)
MOVE(
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST 0)),
 TEMP r4)
MOVE(
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST 4)),
 TEMP r5)
MOVE(
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST 8)),
 TEMP r6)
CJUMP(EQ,
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST 4)),
 CONST 0,
 L35,L36)
LABEL L35
MOVE(
 TEMP t48,
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST 8)))
JUMP(
 NAME L37)
LABEL L36
CJUMP(EQ,
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST 8)),
 CONST 0,
 L32,L33)
LABEL L32
MOVE(
 TEMP t49,
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST 4)))
JUMP(
 NAME L34)
LABEL L33
MOVE(
 TEMP t40,
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST 4)))
CJUMP(EQ,
 TEMP t40,
 CONST 0,
 _BADPTR,L23)
LABEL L23
MOVE(
 TEMP t105,
 MEM(
  BINOP(PLUS,
   TEMP t40,
   CONST 0)))
MOVE(
 TEMP t41,
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST 8)))
CJUMP(EQ,
 TEMP t41,
 CONST 0,
 _BADPTR,L24)
LABEL L24
CJUMP(LT,
 TEMP t105,
 MEM(
  BINOP(PLUS,
   TEMP t41,
   CONST 0)),
 L29,L30)
LABEL L29
MOVE(
 TEMP t44,
 CALL(
  NAME _allocRecord,
   CONST 2))
MOVE(
 TEMP t106,
 BINOP(PLUS,
  TEMP t44,
  CONST 0))
MOVE(
 TEMP t42,
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST 4)))
CJUMP(EQ,
 TEMP t42,
 CONST 0,
 _BADPTR,L25)
LABEL L25
MOVE(
 MEM(
  TEMP t106),
 MEM(
  BINOP(PLUS,
   TEMP t42,
   CONST 0)))
MOVE(
 TEMP t109,
 BINOP(PLUS,
  TEMP t44,
  CONST 4))
MOVE(
 TEMP t108,
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST 0)))
MOVE(
 TEMP t43,
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST 4)))
CJUMP(EQ,
 TEMP t43,
 CONST 0,
 _BADPTR,L26)
LABEL L26
MOVE(
 TEMP t107,
 CALL(
  NAME tigermain.merge.2,
   TEMP t108,
   MEM(
    BINOP(PLUS,
     TEMP t43,
     CONST 4)),
   MEM(
    BINOP(PLUS,
     TEMP fp,
     CONST 8))))
MOVE(
 MEM(
  TEMP t109),
 TEMP t107)
MOVE(
 TEMP t50,
 TEMP t44)
JUMP(
 NAME L31)
LABEL L30
MOVE(
 TEMP t47,
 CALL(
  NAME _allocRecord,
   CONST 2))
MOVE(
 TEMP t110,
 BINOP(PLUS,
  TEMP t47,
  CONST 0))
MOVE(
 TEMP t45,
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST 8)))
CJUMP(EQ,
 TEMP t45,
 CONST 0,
 _BADPTR,L27)
LABEL L27
MOVE(
 MEM(
  TEMP t110),
 MEM(
  BINOP(PLUS,
   TEMP t45,
   CONST 0)))
MOVE(
 TEMP t114,
 BINOP(PLUS,
  TEMP t47,
  CONST 4))
MOVE(
 TEMP t113,
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST 0)))
MOVE(
 TEMP t112,
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST 4)))
MOVE(
 TEMP t46,
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST 8)))
CJUMP(EQ,
 TEMP t46,
 CONST 0,
 _BADPTR,L28)
LABEL L28
MOVE(
 TEMP t111,
 CALL(
  NAME tigermain.merge.2,
   TEMP t113,
   TEMP t112,
   MEM(
    BINOP(PLUS,
     TEMP t46,
     CONST 4))))
MOVE(
 MEM(
  TEMP t114),
 TEMP t111)
MOVE(
 TEMP t50,
 TEMP t47)
JUMP(
 NAME L31)
LABEL L31
MOVE(
 TEMP t49,
 TEMP t50)
JUMP(
 NAME L34)
LABEL L34
MOVE(
 TEMP t48,
 TEMP t49)
JUMP(
 NAME L37)
LABEL L37
MOVE(
 TEMP r2,
 TEMP t48)
MOVE(
 TEMP fp,
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST -40)))
MOVE(
 TEMP r23,
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST -36)))
MOVE(
 TEMP r22,
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST -32)))
MOVE(
 TEMP r21,
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST -28)))
MOVE(
 TEMP r20,
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST -24)))
MOVE(
 TEMP r19,
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST -20)))
MOVE(
 TEMP r18,
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST -16)))
MOVE(
 TEMP r17,
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST -12)))
MOVE(
 TEMP r16,
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST -8)))
MOVE(
 TEMP ra,
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST -4)))
# Basic Blocks: 
#
LABEL L62
MOVE(
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST -4)),
 TEMP ra)
MOVE(
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST -8)),
 TEMP r16)
MOVE(
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST -12)),
 TEMP r17)
MOVE(
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST -16)),
 TEMP r18)
MOVE(
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST -20)),
 TEMP r19)
MOVE(
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST -24)),
 TEMP r20)
MOVE(
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST -28)),
 TEMP r21)
MOVE(
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST -32)),
 TEMP r22)
MOVE(
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST -36)),
 TEMP r23)
MOVE(
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST -40)),
 TEMP fp)
MOVE(
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST 0)),
 TEMP r4)
MOVE(
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST 4)),
 TEMP r5)
MOVE(
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST 8)),
 TEMP r6)
CJUMP(EQ,
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST 4)),
 CONST 0,
 L35,L36)
#
LABEL L35
MOVE(
 TEMP t48,
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST 8)))
JUMP(
 NAME L37)
#
LABEL L36
CJUMP(EQ,
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST 8)),
 CONST 0,
 L32,L33)
#
LABEL L32
MOVE(
 TEMP t49,
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST 4)))
JUMP(
 NAME L34)
#
LABEL L33
MOVE(
 TEMP t40,
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST 4)))
CJUMP(EQ,
 TEMP t40,
 CONST 0,
 _BADPTR,L23)
#
LABEL L23
MOVE(
 TEMP t105,
 MEM(
  BINOP(PLUS,
   TEMP t40,
   CONST 0)))
MOVE(
 TEMP t41,
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST 8)))
CJUMP(EQ,
 TEMP t41,
 CONST 0,
 _BADPTR,L24)
#
LABEL L24
CJUMP(LT,
 TEMP t105,
 MEM(
  BINOP(PLUS,
   TEMP t41,
   CONST 0)),
 L29,L30)
#
LABEL L29
MOVE(
 TEMP t44,
 CALL(
  NAME _allocRecord,
   CONST 2))
MOVE(
 TEMP t106,
 BINOP(PLUS,
  TEMP t44,
  CONST 0))
MOVE(
 TEMP t42,
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST 4)))
CJUMP(EQ,
 TEMP t42,
 CONST 0,
 _BADPTR,L25)
#
LABEL L25
MOVE(
 MEM(
  TEMP t106),
 MEM(
  BINOP(PLUS,
   TEMP t42,
   CONST 0)))
MOVE(
 TEMP t109,
 BINOP(PLUS,
  TEMP t44,
  CONST 4))
MOVE(
 TEMP t108,
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST 0)))
MOVE(
 TEMP t43,
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST 4)))
CJUMP(EQ,
 TEMP t43,
 CONST 0,
 _BADPTR,L26)
#
LABEL L26
MOVE(
 TEMP t107,
 CALL(
  NAME tigermain.merge.2,
   TEMP t108,
   MEM(
    BINOP(PLUS,
     TEMP t43,
     CONST 4)),
   MEM(
    BINOP(PLUS,
     TEMP fp,
     CONST 8))))
MOVE(
 MEM(
  TEMP t109),
 TEMP t107)
MOVE(
 TEMP t50,
 TEMP t44)
JUMP(
 NAME L31)
#
LABEL L30
MOVE(
 TEMP t47,
 CALL(
  NAME _allocRecord,
   CONST 2))
MOVE(
 TEMP t110,
 BINOP(PLUS,
  TEMP t47,
  CONST 0))
MOVE(
 TEMP t45,
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST 8)))
CJUMP(EQ,
 TEMP t45,
 CONST 0,
 _BADPTR,L27)
#
LABEL L27
MOVE(
 MEM(
  TEMP t110),
 MEM(
  BINOP(PLUS,
   TEMP t45,
   CONST 0)))
MOVE(
 TEMP t114,
 BINOP(PLUS,
  TEMP t47,
  CONST 4))
MOVE(
 TEMP t113,
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST 0)))
MOVE(
 TEMP t112,
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST 4)))
MOVE(
 TEMP t46,
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST 8)))
CJUMP(EQ,
 TEMP t46,
 CONST 0,
 _BADPTR,L28)
#
LABEL L28
MOVE(
 TEMP t111,
 CALL(
  NAME tigermain.merge.2,
   TEMP t113,
   TEMP t112,
   MEM(
    BINOP(PLUS,
     TEMP t46,
     CONST 4))))
MOVE(
 MEM(
  TEMP t114),
 TEMP t111)
MOVE(
 TEMP t50,
 TEMP t47)
JUMP(
 NAME L31)
#
LABEL L31
MOVE(
 TEMP t49,
 TEMP t50)
JUMP(
 NAME L34)
#
LABEL L34
MOVE(
 TEMP t48,
 TEMP t49)
JUMP(
 NAME L37)
#
LABEL L37
MOVE(
 TEMP r2,
 TEMP t48)
MOVE(
 TEMP fp,
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST -40)))
MOVE(
 TEMP r23,
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST -36)))
MOVE(
 TEMP r22,
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST -32)))
MOVE(
 TEMP r21,
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST -28)))
MOVE(
 TEMP r20,
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST -24)))
MOVE(
 TEMP r19,
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST -20)))
MOVE(
 TEMP r18,
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST -16)))
MOVE(
 TEMP r17,
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST -12)))
MOVE(
 TEMP r16,
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST -8)))
MOVE(
 TEMP ra,
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST -4)))
JUMP(
 NAME L61)
LABEL L61
# Trace Scheduled: 
LABEL L62
MOVE(
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST -4)),
 TEMP ra)
MOVE(
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST -8)),
 TEMP r16)
MOVE(
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST -12)),
 TEMP r17)
MOVE(
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST -16)),
 TEMP r18)
MOVE(
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST -20)),
 TEMP r19)
MOVE(
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST -24)),
 TEMP r20)
MOVE(
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST -28)),
 TEMP r21)
MOVE(
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST -32)),
 TEMP r22)
MOVE(
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST -36)),
 TEMP r23)
MOVE(
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST -40)),
 TEMP fp)
MOVE(
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST 0)),
 TEMP r4)
MOVE(
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST 4)),
 TEMP r5)
MOVE(
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST 8)),
 TEMP r6)
CJUMP(EQ,
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST 4)),
 CONST 0,
 L35,L36)
LABEL L36
CJUMP(EQ,
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST 8)),
 CONST 0,
 L32,L33)
LABEL L33
MOVE(
 TEMP t40,
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST 4)))
CJUMP(EQ,
 TEMP t40,
 CONST 0,
 _BADPTR,L23)
LABEL L23
MOVE(
 TEMP t105,
 MEM(
  BINOP(PLUS,
   TEMP t40,
   CONST 0)))
MOVE(
 TEMP t41,
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST 8)))
CJUMP(EQ,
 TEMP t41,
 CONST 0,
 _BADPTR,L24)
LABEL L24
CJUMP(LT,
 TEMP t105,
 MEM(
  BINOP(PLUS,
   TEMP t41,
   CONST 0)),
 L29,L30)
LABEL L30
MOVE(
 TEMP t47,
 CALL(
  NAME _allocRecord,
   CONST 2))
MOVE(
 TEMP t110,
 BINOP(PLUS,
  TEMP t47,
  CONST 0))
MOVE(
 TEMP t45,
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST 8)))
CJUMP(EQ,
 TEMP t45,
 CONST 0,
 _BADPTR,L27)
LABEL L27
MOVE(
 MEM(
  TEMP t110),
 MEM(
  BINOP(PLUS,
   TEMP t45,
   CONST 0)))
MOVE(
 TEMP t114,
 BINOP(PLUS,
  TEMP t47,
  CONST 4))
MOVE(
 TEMP t113,
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST 0)))
MOVE(
 TEMP t112,
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST 4)))
MOVE(
 TEMP t46,
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST 8)))
CJUMP(EQ,
 TEMP t46,
 CONST 0,
 _BADPTR,L28)
LABEL L28
MOVE(
 TEMP t111,
 CALL(
  NAME tigermain.merge.2,
   TEMP t113,
   TEMP t112,
   MEM(
    BINOP(PLUS,
     TEMP t46,
     CONST 4))))
MOVE(
 MEM(
  TEMP t114),
 TEMP t111)
MOVE(
 TEMP t50,
 TEMP t47)
LABEL L31
MOVE(
 TEMP t49,
 TEMP t50)
LABEL L34
MOVE(
 TEMP t48,
 TEMP t49)
LABEL L37
MOVE(
 TEMP r2,
 TEMP t48)
MOVE(
 TEMP fp,
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST -40)))
MOVE(
 TEMP r23,
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST -36)))
MOVE(
 TEMP r22,
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST -32)))
MOVE(
 TEMP r21,
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST -28)))
MOVE(
 TEMP r20,
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST -24)))
MOVE(
 TEMP r19,
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST -20)))
MOVE(
 TEMP r18,
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST -16)))
MOVE(
 TEMP r17,
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST -12)))
MOVE(
 TEMP r16,
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST -8)))
MOVE(
 TEMP ra,
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST -4)))
JUMP(
 NAME L61)
LABEL L35
MOVE(
 TEMP t48,
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST 8)))
JUMP(
 NAME L37)
LABEL L32
MOVE(
 TEMP t49,
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST 4)))
JUMP(
 NAME L34)
LABEL L29
MOVE(
 TEMP t44,
 CALL(
  NAME _allocRecord,
   CONST 2))
MOVE(
 TEMP t106,
 BINOP(PLUS,
  TEMP t44,
  CONST 0))
MOVE(
 TEMP t42,
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST 4)))
CJUMP(EQ,
 TEMP t42,
 CONST 0,
 _BADPTR,L25)
LABEL L25
MOVE(
 MEM(
  TEMP t106),
 MEM(
  BINOP(PLUS,
   TEMP t42,
   CONST 0)))
MOVE(
 TEMP t109,
 BINOP(PLUS,
  TEMP t44,
  CONST 4))
MOVE(
 TEMP t108,
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST 0)))
MOVE(
 TEMP t43,
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST 4)))
CJUMP(EQ,
 TEMP t43,
 CONST 0,
 _BADPTR,L26)
LABEL L26
MOVE(
 TEMP t107,
 CALL(
  NAME tigermain.merge.2,
   TEMP t108,
   MEM(
    BINOP(PLUS,
     TEMP t43,
     CONST 4)),
   MEM(
    BINOP(PLUS,
     TEMP fp,
     CONST 8))))
MOVE(
 MEM(
  TEMP t109),
 TEMP t107)
MOVE(
 TEMP t50,
 TEMP t44)
JUMP(
 NAME L31)
LABEL L61
# Instructions: 
L62: 
	stw ra, -4+tigermain.merge.2_framesize(sp)
	stw r16, -8+tigermain.merge.2_framesize(sp)
	stw r17, -12+tigermain.merge.2_framesize(sp)
	stw r18, -16+tigermain.merge.2_framesize(sp)
	stw r19, -20+tigermain.merge.2_framesize(sp)
	stw r20, -24+tigermain.merge.2_framesize(sp)
	stw r21, -28+tigermain.merge.2_framesize(sp)
	stw r22, -32+tigermain.merge.2_framesize(sp)
	stw r23, -36+tigermain.merge.2_framesize(sp)
	stw fp, -40+tigermain.merge.2_framesize(sp)
	stw r4, 0+tigermain.merge.2_framesize(sp)
	stw r5, 4+tigermain.merge.2_framesize(sp)
	stw r6, 8+tigermain.merge.2_framesize(sp)
	ldw t115, 4+tigermain.merge.2_framesize(sp)
	beq t115, zero, L35
L36: 
	ldw t116, 8+tigermain.merge.2_framesize(sp)
	beq t116, zero, L32
L33: 
	ldw t40, 4+tigermain.merge.2_framesize(sp)
	beq t40, zero, _BADPTR
L23: 
	ldw t105, 0(t40)
	ldw t41, 8+tigermain.merge.2_framesize(sp)
	beq t41, zero, _BADPTR
L24: 
	ldw t117, 0(t41)
	blt t105, t117, L29
L30: 
	movi t118, 2
	mov r4, t118
	call _allocRecord
	mov t47, r2
	addi t119, t47, 0
	mov t110, t119
	ldw t45, 8+tigermain.merge.2_framesize(sp)
	beq t45, zero, _BADPTR
L27: 
	ldw t120, 0(t45)
	stw t120, (t110)
	addi t121, t47, 4
	mov t114, t121
	ldw t113, 0+tigermain.merge.2_framesize(sp)
	ldw t112, 4+tigermain.merge.2_framesize(sp)
	ldw t46, 8+tigermain.merge.2_framesize(sp)
	beq t46, zero, _BADPTR
L28: 
	mov r4, t113
	mov r5, t112
	ldw t122, 4(t46)
	mov r6, t122
	call tigermain.merge.2
	mov t111, r2
	stw t111, (t114)
	mov t50, t47
L31: 
	mov t49, t50
L34: 
	mov t48, t49
L37: 
	mov r2, t48
	ldw fp, -40+tigermain.merge.2_framesize(sp)
	ldw r23, -36+tigermain.merge.2_framesize(sp)
	ldw r22, -32+tigermain.merge.2_framesize(sp)
	ldw r21, -28+tigermain.merge.2_framesize(sp)
	ldw r20, -24+tigermain.merge.2_framesize(sp)
	ldw r19, -20+tigermain.merge.2_framesize(sp)
	ldw r18, -16+tigermain.merge.2_framesize(sp)
	ldw r17, -12+tigermain.merge.2_framesize(sp)
	ldw r16, -8+tigermain.merge.2_framesize(sp)
	ldw ra, -4+tigermain.merge.2_framesize(sp)
	br L61
L35: 
	ldw t48, 8+tigermain.merge.2_framesize(sp)
	br L37
L32: 
	ldw t49, 4+tigermain.merge.2_framesize(sp)
	br L34
L29: 
	movi t123, 2
	mov r4, t123
	call _allocRecord
	mov t44, r2
	addi t124, t44, 0
	mov t106, t124
	ldw t42, 4+tigermain.merge.2_framesize(sp)
	beq t42, zero, _BADPTR
L25: 
	ldw t125, 0(t42)
	stw t125, (t106)
	addi t126, t44, 4
	mov t109, t126
	ldw t108, 0+tigermain.merge.2_framesize(sp)
	ldw t43, 4+tigermain.merge.2_framesize(sp)
	beq t43, zero, _BADPTR
L26: 
	mov r4, t108
	ldw t127, 4(t43)
	mov r5, t127
	ldw t128, 8+tigermain.merge.2_framesize(sp)
	mov r6, t128
	call tigermain.merge.2
	mov t107, r2
	stw t107, (t109)
	mov t50, t44
	br L31
L61: 
END tigermain.merge.2
PROCEDURE tigermain.readlist.1
# Before canonicalization: 
SEQ(
 SEQ(
  SEQ(
   SEQ(
    SEQ(
     SEQ(
      SEQ(
       SEQ(
        SEQ(
         SEQ(
          SEQ(
           MOVE(
            MEM(
             BINOP(PLUS,
              TEMP fp,
              CONST -12)),
            TEMP ra),
           SEQ(
            MOVE(
             MEM(
              BINOP(PLUS,
               TEMP fp,
               CONST -16)),
             TEMP r16),
            SEQ(
             MOVE(
              MEM(
               BINOP(PLUS,
                TEMP fp,
                CONST -20)),
              TEMP r17),
             SEQ(
              MOVE(
               MEM(
                BINOP(PLUS,
                 TEMP fp,
                 CONST -24)),
               TEMP r18),
              SEQ(
               MOVE(
                MEM(
                 BINOP(PLUS,
                  TEMP fp,
                  CONST -28)),
                TEMP r19),
               SEQ(
                MOVE(
                 MEM(
                  BINOP(PLUS,
                   TEMP fp,
                   CONST -32)),
                 TEMP r20),
                SEQ(
                 MOVE(
                  MEM(
                   BINOP(PLUS,
                    TEMP fp,
                    CONST -36)),
                  TEMP r21),
                 SEQ(
                  MOVE(
                   MEM(
                    BINOP(PLUS,
                     TEMP fp,
                     CONST -40)),
                   TEMP r22),
                  SEQ(
                   MOVE(
                    MEM(
                     BINOP(PLUS,
                      TEMP fp,
                      CONST -44)),
                    TEMP r23),
                   SEQ(
                    MOVE(
                     MEM(
                      BINOP(PLUS,
                       TEMP fp,
                       CONST -48)),
                     TEMP fp),
                    SEQ(
                     MOVE(
                      MEM(
                       BINOP(PLUS,
                        TEMP fp,
                        CONST 0)),
                      TEMP r4),
                     MOVE(
                      TEMP r2,
                      ESEQ(
                       SEQ(
                        MOVE(
                         MEM(
                          BINOP(PLUS,
                           TEMP fp,
                           CONST -4)),
                         ESEQ(
                          SEQ(
                           MOVE(
                            TEMP t36,
                            CALL(
                             NAME _allocRecord,
                              CONST 1)),
                           MOVE(
                            MEM(
                             BINOP(PLUS,
                              TEMP t36,
                              CONST 0)),
                            CONST 0)),
                          TEMP t36)),
                        MOVE(
                         MEM(
                          BINOP(PLUS,
                           TEMP fp,
                           CONST -8)),
                         CALL(
                          NAME tigermain.readint.0,
                           MEM(
                            BINOP(PLUS,
                             TEMP fp,
                             CONST 0)),
                           MEM(
                            BINOP(PLUS,
                             TEMP fp,
                             CONST -4))))),
                       ESEQ(
                        SEQ(
                         SEQ(
                          CJUMP(NE,
                           ESEQ(
                            SEQ(
                             MOVE(
                              TEMP t37,
                              MEM(
                               BINOP(PLUS,
                                TEMP fp,
                                CONST -4))),
                             SEQ(
                              CJUMP(EQ,
                               TEMP t37,
                               CONST 0,
                               _BADPTR,L19),
                              LABEL L19)),
                            MEM(
                             BINOP(PLUS,
                              TEMP t37,
                              CONST 0))),
                           CONST 0,
                           L20,L21),
                          SEQ(
                           SEQ(
                            LABEL L20,
                            SEQ(
                             MOVE(
                              TEMP t39,
                              ESEQ(
                               SEQ(
                                MOVE(
                                 TEMP t38,
                                 CALL(
                                  NAME _allocRecord,
                                   CONST 2)),
                                SEQ(
                                 MOVE(
                                  MEM(
                                   BINOP(PLUS,
                                    TEMP t38,
                                    CONST 0)),
                                  MEM(
                                   BINOP(PLUS,
                                    TEMP fp,
                                    CONST -8))),
                                 MOVE(
                                  MEM(
                                   BINOP(PLUS,
                                    TEMP t38,
                                    CONST 4)),
                                  CALL(
                                   NAME tigermain.readlist.1,
                                    MEM(
                                     BINOP(PLUS,
                                      TEMP fp,
                                      CONST 0)))))),
                               TEMP t38)),
                             JUMP(
                              NAME L22))),
                           SEQ(
                            LABEL L21,
                            SEQ(
                             MOVE(
                              TEMP t39,
                              CONST 0),
                             JUMP(
                              NAME L22))))),
                         LABEL L22),
                        TEMP t39)))))))))))))),
          MOVE(
           TEMP fp,
           MEM(
            BINOP(PLUS,
             TEMP fp,
             CONST -48)))),
         MOVE(
          TEMP r23,
          MEM(
           BINOP(PLUS,
            TEMP fp,
            CONST -44)))),
        MOVE(
         TEMP r22,
         MEM(
          BINOP(PLUS,
           TEMP fp,
           CONST -40)))),
       MOVE(
        TEMP r21,
        MEM(
         BINOP(PLUS,
          TEMP fp,
          CONST -36)))),
      MOVE(
       TEMP r20,
       MEM(
        BINOP(PLUS,
         TEMP fp,
         CONST -32)))),
     MOVE(
      TEMP r19,
      MEM(
       BINOP(PLUS,
        TEMP fp,
        CONST -28)))),
    MOVE(
     TEMP r18,
     MEM(
      BINOP(PLUS,
       TEMP fp,
       CONST -24)))),
   MOVE(
    TEMP r17,
    MEM(
     BINOP(PLUS,
      TEMP fp,
      CONST -20)))),
  MOVE(
   TEMP r16,
   MEM(
    BINOP(PLUS,
     TEMP fp,
     CONST -16)))),
 MOVE(
  TEMP ra,
  MEM(
   BINOP(PLUS,
    TEMP fp,
    CONST -12))))
# After canonicalization: 
MOVE(
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST -12)),
 TEMP ra)
MOVE(
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST -16)),
 TEMP r16)
MOVE(
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST -20)),
 TEMP r17)
MOVE(
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST -24)),
 TEMP r18)
MOVE(
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST -28)),
 TEMP r19)
MOVE(
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST -32)),
 TEMP r20)
MOVE(
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST -36)),
 TEMP r21)
MOVE(
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST -40)),
 TEMP r22)
MOVE(
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST -44)),
 TEMP r23)
MOVE(
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST -48)),
 TEMP fp)
MOVE(
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST 0)),
 TEMP r4)
MOVE(
 TEMP t129,
 BINOP(PLUS,
  TEMP fp,
  CONST -4))
MOVE(
 TEMP t36,
 CALL(
  NAME _allocRecord,
   CONST 1))
MOVE(
 MEM(
  BINOP(PLUS,
   TEMP t36,
   CONST 0)),
 CONST 0)
MOVE(
 MEM(
  TEMP t129),
 TEMP t36)
MOVE(
 TEMP t131,
 BINOP(PLUS,
  TEMP fp,
  CONST -8))
MOVE(
 TEMP t130,
 CALL(
  NAME tigermain.readint.0,
   MEM(
    BINOP(PLUS,
     TEMP fp,
     CONST 0)),
   MEM(
    BINOP(PLUS,
     TEMP fp,
     CONST -4))))
MOVE(
 MEM(
  TEMP t131),
 TEMP t130)
MOVE(
 TEMP t37,
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST -4)))
CJUMP(EQ,
 TEMP t37,
 CONST 0,
 _BADPTR,L19)
LABEL L19
CJUMP(NE,
 MEM(
  BINOP(PLUS,
   TEMP t37,
   CONST 0)),
 CONST 0,
 L20,L21)
LABEL L20
MOVE(
 TEMP t38,
 CALL(
  NAME _allocRecord,
   CONST 2))
MOVE(
 MEM(
  BINOP(PLUS,
   TEMP t38,
   CONST 0)),
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST -8)))
MOVE(
 TEMP t133,
 BINOP(PLUS,
  TEMP t38,
  CONST 4))
MOVE(
 TEMP t132,
 CALL(
  NAME tigermain.readlist.1,
   MEM(
    BINOP(PLUS,
     TEMP fp,
     CONST 0))))
MOVE(
 MEM(
  TEMP t133),
 TEMP t132)
MOVE(
 TEMP t39,
 TEMP t38)
JUMP(
 NAME L22)
LABEL L21
MOVE(
 TEMP t39,
 CONST 0)
JUMP(
 NAME L22)
LABEL L22
MOVE(
 TEMP r2,
 TEMP t39)
MOVE(
 TEMP fp,
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST -48)))
MOVE(
 TEMP r23,
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST -44)))
MOVE(
 TEMP r22,
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST -40)))
MOVE(
 TEMP r21,
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST -36)))
MOVE(
 TEMP r20,
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST -32)))
MOVE(
 TEMP r19,
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST -28)))
MOVE(
 TEMP r18,
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST -24)))
MOVE(
 TEMP r17,
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST -20)))
MOVE(
 TEMP r16,
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST -16)))
MOVE(
 TEMP ra,
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST -12)))
# Basic Blocks: 
#
LABEL L64
MOVE(
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST -12)),
 TEMP ra)
MOVE(
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST -16)),
 TEMP r16)
MOVE(
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST -20)),
 TEMP r17)
MOVE(
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST -24)),
 TEMP r18)
MOVE(
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST -28)),
 TEMP r19)
MOVE(
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST -32)),
 TEMP r20)
MOVE(
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST -36)),
 TEMP r21)
MOVE(
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST -40)),
 TEMP r22)
MOVE(
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST -44)),
 TEMP r23)
MOVE(
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST -48)),
 TEMP fp)
MOVE(
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST 0)),
 TEMP r4)
MOVE(
 TEMP t129,
 BINOP(PLUS,
  TEMP fp,
  CONST -4))
MOVE(
 TEMP t36,
 CALL(
  NAME _allocRecord,
   CONST 1))
MOVE(
 MEM(
  BINOP(PLUS,
   TEMP t36,
   CONST 0)),
 CONST 0)
MOVE(
 MEM(
  TEMP t129),
 TEMP t36)
MOVE(
 TEMP t131,
 BINOP(PLUS,
  TEMP fp,
  CONST -8))
MOVE(
 TEMP t130,
 CALL(
  NAME tigermain.readint.0,
   MEM(
    BINOP(PLUS,
     TEMP fp,
     CONST 0)),
   MEM(
    BINOP(PLUS,
     TEMP fp,
     CONST -4))))
MOVE(
 MEM(
  TEMP t131),
 TEMP t130)
MOVE(
 TEMP t37,
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST -4)))
CJUMP(EQ,
 TEMP t37,
 CONST 0,
 _BADPTR,L19)
#
LABEL L19
CJUMP(NE,
 MEM(
  BINOP(PLUS,
   TEMP t37,
   CONST 0)),
 CONST 0,
 L20,L21)
#
LABEL L20
MOVE(
 TEMP t38,
 CALL(
  NAME _allocRecord,
   CONST 2))
MOVE(
 MEM(
  BINOP(PLUS,
   TEMP t38,
   CONST 0)),
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST -8)))
MOVE(
 TEMP t133,
 BINOP(PLUS,
  TEMP t38,
  CONST 4))
MOVE(
 TEMP t132,
 CALL(
  NAME tigermain.readlist.1,
   MEM(
    BINOP(PLUS,
     TEMP fp,
     CONST 0))))
MOVE(
 MEM(
  TEMP t133),
 TEMP t132)
MOVE(
 TEMP t39,
 TEMP t38)
JUMP(
 NAME L22)
#
LABEL L21
MOVE(
 TEMP t39,
 CONST 0)
JUMP(
 NAME L22)
#
LABEL L22
MOVE(
 TEMP r2,
 TEMP t39)
MOVE(
 TEMP fp,
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST -48)))
MOVE(
 TEMP r23,
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST -44)))
MOVE(
 TEMP r22,
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST -40)))
MOVE(
 TEMP r21,
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST -36)))
MOVE(
 TEMP r20,
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST -32)))
MOVE(
 TEMP r19,
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST -28)))
MOVE(
 TEMP r18,
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST -24)))
MOVE(
 TEMP r17,
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST -20)))
MOVE(
 TEMP r16,
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST -16)))
MOVE(
 TEMP ra,
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST -12)))
JUMP(
 NAME L63)
LABEL L63
# Trace Scheduled: 
LABEL L64
MOVE(
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST -12)),
 TEMP ra)
MOVE(
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST -16)),
 TEMP r16)
MOVE(
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST -20)),
 TEMP r17)
MOVE(
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST -24)),
 TEMP r18)
MOVE(
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST -28)),
 TEMP r19)
MOVE(
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST -32)),
 TEMP r20)
MOVE(
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST -36)),
 TEMP r21)
MOVE(
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST -40)),
 TEMP r22)
MOVE(
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST -44)),
 TEMP r23)
MOVE(
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST -48)),
 TEMP fp)
MOVE(
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST 0)),
 TEMP r4)
MOVE(
 TEMP t129,
 BINOP(PLUS,
  TEMP fp,
  CONST -4))
MOVE(
 TEMP t36,
 CALL(
  NAME _allocRecord,
   CONST 1))
MOVE(
 MEM(
  BINOP(PLUS,
   TEMP t36,
   CONST 0)),
 CONST 0)
MOVE(
 MEM(
  TEMP t129),
 TEMP t36)
MOVE(
 TEMP t131,
 BINOP(PLUS,
  TEMP fp,
  CONST -8))
MOVE(
 TEMP t130,
 CALL(
  NAME tigermain.readint.0,
   MEM(
    BINOP(PLUS,
     TEMP fp,
     CONST 0)),
   MEM(
    BINOP(PLUS,
     TEMP fp,
     CONST -4))))
MOVE(
 MEM(
  TEMP t131),
 TEMP t130)
MOVE(
 TEMP t37,
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST -4)))
CJUMP(EQ,
 TEMP t37,
 CONST 0,
 _BADPTR,L19)
LABEL L19
CJUMP(NE,
 MEM(
  BINOP(PLUS,
   TEMP t37,
   CONST 0)),
 CONST 0,
 L20,L21)
LABEL L21
MOVE(
 TEMP t39,
 CONST 0)
LABEL L22
MOVE(
 TEMP r2,
 TEMP t39)
MOVE(
 TEMP fp,
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST -48)))
MOVE(
 TEMP r23,
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST -44)))
MOVE(
 TEMP r22,
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST -40)))
MOVE(
 TEMP r21,
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST -36)))
MOVE(
 TEMP r20,
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST -32)))
MOVE(
 TEMP r19,
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST -28)))
MOVE(
 TEMP r18,
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST -24)))
MOVE(
 TEMP r17,
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST -20)))
MOVE(
 TEMP r16,
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST -16)))
MOVE(
 TEMP ra,
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST -12)))
JUMP(
 NAME L63)
LABEL L20
MOVE(
 TEMP t38,
 CALL(
  NAME _allocRecord,
   CONST 2))
MOVE(
 MEM(
  BINOP(PLUS,
   TEMP t38,
   CONST 0)),
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST -8)))
MOVE(
 TEMP t133,
 BINOP(PLUS,
  TEMP t38,
  CONST 4))
MOVE(
 TEMP t132,
 CALL(
  NAME tigermain.readlist.1,
   MEM(
    BINOP(PLUS,
     TEMP fp,
     CONST 0))))
MOVE(
 MEM(
  TEMP t133),
 TEMP t132)
MOVE(
 TEMP t39,
 TEMP t38)
JUMP(
 NAME L22)
LABEL L63
# Instructions: 
L64: 
	stw ra, -12+tigermain.readlist.1_framesize(sp)
	stw r16, -16+tigermain.readlist.1_framesize(sp)
	stw r17, -20+tigermain.readlist.1_framesize(sp)
	stw r18, -24+tigermain.readlist.1_framesize(sp)
	stw r19, -28+tigermain.readlist.1_framesize(sp)
	stw r20, -32+tigermain.readlist.1_framesize(sp)
	stw r21, -36+tigermain.readlist.1_framesize(sp)
	stw r22, -40+tigermain.readlist.1_framesize(sp)
	stw r23, -44+tigermain.readlist.1_framesize(sp)
	stw fp, -48+tigermain.readlist.1_framesize(sp)
	stw r4, 0+tigermain.readlist.1_framesize(sp)
	addi t134, sp, -4+tigermain.readlist.1_framesize
	mov t129, t134
	movi t135, 1
	mov r4, t135
	call _allocRecord
	mov t36, r2
	stw zero, 0(t36)
	stw t36, (t129)
	addi t136, sp, -8+tigermain.readlist.1_framesize
	mov t131, t136
	ldw t137, 0+tigermain.readlist.1_framesize(sp)
	mov r4, t137
	ldw t138, -4+tigermain.readlist.1_framesize(sp)
	mov r5, t138
	call tigermain.readint.0
	mov t130, r2
	stw t130, (t131)
	ldw t37, -4+tigermain.readlist.1_framesize(sp)
	beq t37, zero, _BADPTR
L19: 
	ldw t139, 0(t37)
	bne t139, zero, L20
L21: 
	mov t39, zero
L22: 
	mov r2, t39
	ldw fp, -48+tigermain.readlist.1_framesize(sp)
	ldw r23, -44+tigermain.readlist.1_framesize(sp)
	ldw r22, -40+tigermain.readlist.1_framesize(sp)
	ldw r21, -36+tigermain.readlist.1_framesize(sp)
	ldw r20, -32+tigermain.readlist.1_framesize(sp)
	ldw r19, -28+tigermain.readlist.1_framesize(sp)
	ldw r18, -24+tigermain.readlist.1_framesize(sp)
	ldw r17, -20+tigermain.readlist.1_framesize(sp)
	ldw r16, -16+tigermain.readlist.1_framesize(sp)
	ldw ra, -12+tigermain.readlist.1_framesize(sp)
	br L63
L20: 
	movi t140, 2
	mov r4, t140
	call _allocRecord
	mov t38, r2
	ldw t141, -8+tigermain.readlist.1_framesize(sp)
	stw t141, 0(t38)
	addi t142, t38, 4
	mov t133, t142
	ldw t143, 0+tigermain.readlist.1_framesize(sp)
	mov r4, t143
	call tigermain.readlist.1
	mov t132, r2
	stw t132, (t133)
	mov t39, t38
	br L22
L63: 
END tigermain.readlist.1
PROCEDURE tigermain.readint.0
# Before canonicalization: 
SEQ(
 SEQ(
  SEQ(
   SEQ(
    SEQ(
     SEQ(
      SEQ(
       SEQ(
        SEQ(
         SEQ(
          SEQ(
           MOVE(
            MEM(
             BINOP(PLUS,
              TEMP fp,
              CONST -8)),
            TEMP ra),
           SEQ(
            MOVE(
             MEM(
              BINOP(PLUS,
               TEMP fp,
               CONST -12)),
             TEMP r16),
            SEQ(
             MOVE(
              MEM(
               BINOP(PLUS,
                TEMP fp,
                CONST -16)),
              TEMP r17),
             SEQ(
              MOVE(
               MEM(
                BINOP(PLUS,
                 TEMP fp,
                 CONST -20)),
               TEMP r18),
              SEQ(
               MOVE(
                MEM(
                 BINOP(PLUS,
                  TEMP fp,
                  CONST -24)),
                TEMP r19),
               SEQ(
                MOVE(
                 MEM(
                  BINOP(PLUS,
                   TEMP fp,
                   CONST -28)),
                 TEMP r20),
                SEQ(
                 MOVE(
                  MEM(
                   BINOP(PLUS,
                    TEMP fp,
                    CONST -32)),
                  TEMP r21),
                 SEQ(
                  MOVE(
                   MEM(
                    BINOP(PLUS,
                     TEMP fp,
                     CONST -36)),
                   TEMP r22),
                  SEQ(
                   MOVE(
                    MEM(
                     BINOP(PLUS,
                      TEMP fp,
                      CONST -40)),
                    TEMP r23),
                   SEQ(
                    MOVE(
                     MEM(
                      BINOP(PLUS,
                       TEMP fp,
                       CONST -44)),
                     TEMP fp),
                    SEQ(
                     MOVE(
                      MEM(
                       BINOP(PLUS,
                        TEMP fp,
                        CONST 0)),
                      TEMP r4),
                     SEQ(
                      MOVE(
                       MEM(
                        BINOP(PLUS,
                         TEMP fp,
                         CONST 4)),
                       TEMP r5),
                      MOVE(
                       TEMP r2,
                       ESEQ(
                        MOVE(
                         MEM(
                          BINOP(PLUS,
                           TEMP fp,
                           CONST -4)),
                         CONST 0),
                        ESEQ(
                         SEQ(
                          SEQ(
                           UEXP(
                            CALL(
                             NAME tigermain.readint.0.skipto.1,
                              TEMP fp)),
                           MOVE(
                            ESEQ(
                             SEQ(
                              MOVE(
                               TEMP t35,
                               MEM(
                                BINOP(PLUS,
                                 TEMP fp,
                                 CONST 4))),
                              SEQ(
                               CJUMP(EQ,
                                TEMP t35,
                                CONST 0,
                                _BADPTR,L15),
                               LABEL L15)),
                             MEM(
                              BINOP(PLUS,
                               TEMP t35,
                               CONST 0))),
                            CALL(
                             NAME tigermain.readint.0.isdigit.0,
                              TEMP fp,
                              MEM(
                               BINOP(PLUS,
                                MEM(
                                 BINOP(PLUS,
                                  TEMP fp,
                                  CONST 0)),
                                CONST -4))))),
                          SEQ(
                           SEQ(
                            SEQ(
                             LABEL L17,
                             CJUMP(NE,
                              CALL(
                               NAME tigermain.readint.0.isdigit.0,
                                TEMP fp,
                                MEM(
                                 BINOP(PLUS,
                                  MEM(
                                   BINOP(PLUS,
                                    TEMP fp,
                                    CONST 0)),
                                  CONST -4))),
                              CONST 0,
                              L18,L16)),
                            SEQ(
                             SEQ(
                              LABEL L18,
                              SEQ(
                               MOVE(
                                MEM(
                                 BINOP(PLUS,
                                  TEMP fp,
                                  CONST -4)),
                                BINOP(MINUS,
                                 BINOP(PLUS,
                                  BINOP(MUL,
                                   MEM(
                                    BINOP(PLUS,
                                     TEMP fp,
                                     CONST -4)),
                                   CONST 10),
                                  CALL(
                                   NAME _ord,
                                    MEM(
                                     BINOP(PLUS,
                                      MEM(
                                       BINOP(PLUS,
                                        TEMP fp,
                                        CONST 0)),
                                      CONST -4)))),
                                 CALL(
                                  NAME _ord,
                                   NAME L0))),
                               MOVE(
                                MEM(
                                 BINOP(PLUS,
                                  MEM(
                                   BINOP(PLUS,
                                    TEMP fp,
                                    CONST 0)),
                                  CONST -4)),
                                CALL(
                                 NAME _getchar)))),
                             JUMP(
                              NAME L17))),
                           LABEL L16)),
                         MEM(
                          BINOP(PLUS,
                           TEMP fp,
                           CONST -4))))))))))))))))),
          MOVE(
           TEMP fp,
           MEM(
            BINOP(PLUS,
             TEMP fp,
             CONST -44)))),
         MOVE(
          TEMP r23,
          MEM(
           BINOP(PLUS,
            TEMP fp,
            CONST -40)))),
        MOVE(
         TEMP r22,
         MEM(
          BINOP(PLUS,
           TEMP fp,
           CONST -36)))),
       MOVE(
        TEMP r21,
        MEM(
         BINOP(PLUS,
          TEMP fp,
          CONST -32)))),
      MOVE(
       TEMP r20,
       MEM(
        BINOP(PLUS,
         TEMP fp,
         CONST -28)))),
     MOVE(
      TEMP r19,
      MEM(
       BINOP(PLUS,
        TEMP fp,
        CONST -24)))),
    MOVE(
     TEMP r18,
     MEM(
      BINOP(PLUS,
       TEMP fp,
       CONST -20)))),
   MOVE(
    TEMP r17,
    MEM(
     BINOP(PLUS,
      TEMP fp,
      CONST -16)))),
  MOVE(
   TEMP r16,
   MEM(
    BINOP(PLUS,
     TEMP fp,
     CONST -12)))),
 MOVE(
  TEMP ra,
  MEM(
   BINOP(PLUS,
    TEMP fp,
    CONST -8))))
# After canonicalization: 
MOVE(
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST -8)),
 TEMP ra)
MOVE(
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST -12)),
 TEMP r16)
MOVE(
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST -16)),
 TEMP r17)
MOVE(
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST -20)),
 TEMP r18)
MOVE(
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST -24)),
 TEMP r19)
MOVE(
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST -28)),
 TEMP r20)
MOVE(
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST -32)),
 TEMP r21)
MOVE(
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST -36)),
 TEMP r22)
MOVE(
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST -40)),
 TEMP r23)
MOVE(
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST -44)),
 TEMP fp)
MOVE(
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST 0)),
 TEMP r4)
MOVE(
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST 4)),
 TEMP r5)
MOVE(
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST -4)),
 CONST 0)
UEXP(
 CALL(
  NAME tigermain.readint.0.skipto.1,
   TEMP fp))
MOVE(
 TEMP t35,
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST 4)))
CJUMP(EQ,
 TEMP t35,
 CONST 0,
 _BADPTR,L15)
LABEL L15
MOVE(
 TEMP t145,
 BINOP(PLUS,
  TEMP t35,
  CONST 0))
MOVE(
 TEMP t144,
 CALL(
  NAME tigermain.readint.0.isdigit.0,
   TEMP fp,
   MEM(
    BINOP(PLUS,
     MEM(
      BINOP(PLUS,
       TEMP fp,
       CONST 0)),
     CONST -4))))
MOVE(
 MEM(
  TEMP t145),
 TEMP t144)
LABEL L17
MOVE(
 TEMP t146,
 CALL(
  NAME tigermain.readint.0.isdigit.0,
   TEMP fp,
   MEM(
    BINOP(PLUS,
     MEM(
      BINOP(PLUS,
       TEMP fp,
       CONST 0)),
     CONST -4))))
CJUMP(NE,
 TEMP t146,
 CONST 0,
 L18,L16)
LABEL L18
MOVE(
 TEMP t151,
 BINOP(PLUS,
  TEMP fp,
  CONST -4))
MOVE(
 TEMP t148,
 BINOP(MUL,
  MEM(
   BINOP(PLUS,
    TEMP fp,
    CONST -4)),
  CONST 10))
MOVE(
 TEMP t147,
 CALL(
  NAME _ord,
   MEM(
    BINOP(PLUS,
     MEM(
      BINOP(PLUS,
       TEMP fp,
       CONST 0)),
     CONST -4))))
MOVE(
 TEMP t150,
 BINOP(PLUS,
  TEMP t148,
  TEMP t147))
MOVE(
 TEMP t149,
 CALL(
  NAME _ord,
   NAME L0))
MOVE(
 MEM(
  TEMP t151),
 BINOP(MINUS,
  TEMP t150,
  TEMP t149))
MOVE(
 TEMP t153,
 BINOP(PLUS,
  MEM(
   BINOP(PLUS,
    TEMP fp,
    CONST 0)),
  CONST -4))
MOVE(
 TEMP t152,
 CALL(
  NAME _getchar))
MOVE(
 MEM(
  TEMP t153),
 TEMP t152)
JUMP(
 NAME L17)
LABEL L16
MOVE(
 TEMP r2,
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST -4)))
MOVE(
 TEMP fp,
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST -44)))
MOVE(
 TEMP r23,
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST -40)))
MOVE(
 TEMP r22,
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST -36)))
MOVE(
 TEMP r21,
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST -32)))
MOVE(
 TEMP r20,
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST -28)))
MOVE(
 TEMP r19,
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST -24)))
MOVE(
 TEMP r18,
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST -20)))
MOVE(
 TEMP r17,
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST -16)))
MOVE(
 TEMP r16,
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST -12)))
MOVE(
 TEMP ra,
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST -8)))
# Basic Blocks: 
#
LABEL L66
MOVE(
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST -8)),
 TEMP ra)
MOVE(
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST -12)),
 TEMP r16)
MOVE(
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST -16)),
 TEMP r17)
MOVE(
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST -20)),
 TEMP r18)
MOVE(
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST -24)),
 TEMP r19)
MOVE(
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST -28)),
 TEMP r20)
MOVE(
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST -32)),
 TEMP r21)
MOVE(
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST -36)),
 TEMP r22)
MOVE(
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST -40)),
 TEMP r23)
MOVE(
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST -44)),
 TEMP fp)
MOVE(
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST 0)),
 TEMP r4)
MOVE(
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST 4)),
 TEMP r5)
MOVE(
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST -4)),
 CONST 0)
UEXP(
 CALL(
  NAME tigermain.readint.0.skipto.1,
   TEMP fp))
MOVE(
 TEMP t35,
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST 4)))
CJUMP(EQ,
 TEMP t35,
 CONST 0,
 _BADPTR,L15)
#
LABEL L15
MOVE(
 TEMP t145,
 BINOP(PLUS,
  TEMP t35,
  CONST 0))
MOVE(
 TEMP t144,
 CALL(
  NAME tigermain.readint.0.isdigit.0,
   TEMP fp,
   MEM(
    BINOP(PLUS,
     MEM(
      BINOP(PLUS,
       TEMP fp,
       CONST 0)),
     CONST -4))))
MOVE(
 MEM(
  TEMP t145),
 TEMP t144)
JUMP(
 NAME L17)
#
LABEL L17
MOVE(
 TEMP t146,
 CALL(
  NAME tigermain.readint.0.isdigit.0,
   TEMP fp,
   MEM(
    BINOP(PLUS,
     MEM(
      BINOP(PLUS,
       TEMP fp,
       CONST 0)),
     CONST -4))))
CJUMP(NE,
 TEMP t146,
 CONST 0,
 L18,L16)
#
LABEL L18
MOVE(
 TEMP t151,
 BINOP(PLUS,
  TEMP fp,
  CONST -4))
MOVE(
 TEMP t148,
 BINOP(MUL,
  MEM(
   BINOP(PLUS,
    TEMP fp,
    CONST -4)),
  CONST 10))
MOVE(
 TEMP t147,
 CALL(
  NAME _ord,
   MEM(
    BINOP(PLUS,
     MEM(
      BINOP(PLUS,
       TEMP fp,
       CONST 0)),
     CONST -4))))
MOVE(
 TEMP t150,
 BINOP(PLUS,
  TEMP t148,
  TEMP t147))
MOVE(
 TEMP t149,
 CALL(
  NAME _ord,
   NAME L0))
MOVE(
 MEM(
  TEMP t151),
 BINOP(MINUS,
  TEMP t150,
  TEMP t149))
MOVE(
 TEMP t153,
 BINOP(PLUS,
  MEM(
   BINOP(PLUS,
    TEMP fp,
    CONST 0)),
  CONST -4))
MOVE(
 TEMP t152,
 CALL(
  NAME _getchar))
MOVE(
 MEM(
  TEMP t153),
 TEMP t152)
JUMP(
 NAME L17)
#
LABEL L16
MOVE(
 TEMP r2,
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST -4)))
MOVE(
 TEMP fp,
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST -44)))
MOVE(
 TEMP r23,
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST -40)))
MOVE(
 TEMP r22,
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST -36)))
MOVE(
 TEMP r21,
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST -32)))
MOVE(
 TEMP r20,
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST -28)))
MOVE(
 TEMP r19,
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST -24)))
MOVE(
 TEMP r18,
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST -20)))
MOVE(
 TEMP r17,
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST -16)))
MOVE(
 TEMP r16,
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST -12)))
MOVE(
 TEMP ra,
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST -8)))
JUMP(
 NAME L65)
LABEL L65
# Trace Scheduled: 
LABEL L66
MOVE(
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST -8)),
 TEMP ra)
MOVE(
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST -12)),
 TEMP r16)
MOVE(
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST -16)),
 TEMP r17)
MOVE(
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST -20)),
 TEMP r18)
MOVE(
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST -24)),
 TEMP r19)
MOVE(
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST -28)),
 TEMP r20)
MOVE(
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST -32)),
 TEMP r21)
MOVE(
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST -36)),
 TEMP r22)
MOVE(
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST -40)),
 TEMP r23)
MOVE(
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST -44)),
 TEMP fp)
MOVE(
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST 0)),
 TEMP r4)
MOVE(
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST 4)),
 TEMP r5)
MOVE(
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST -4)),
 CONST 0)
UEXP(
 CALL(
  NAME tigermain.readint.0.skipto.1,
   TEMP fp))
MOVE(
 TEMP t35,
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST 4)))
CJUMP(EQ,
 TEMP t35,
 CONST 0,
 _BADPTR,L15)
LABEL L15
MOVE(
 TEMP t145,
 BINOP(PLUS,
  TEMP t35,
  CONST 0))
MOVE(
 TEMP t144,
 CALL(
  NAME tigermain.readint.0.isdigit.0,
   TEMP fp,
   MEM(
    BINOP(PLUS,
     MEM(
      BINOP(PLUS,
       TEMP fp,
       CONST 0)),
     CONST -4))))
MOVE(
 MEM(
  TEMP t145),
 TEMP t144)
LABEL L17
MOVE(
 TEMP t146,
 CALL(
  NAME tigermain.readint.0.isdigit.0,
   TEMP fp,
   MEM(
    BINOP(PLUS,
     MEM(
      BINOP(PLUS,
       TEMP fp,
       CONST 0)),
     CONST -4))))
CJUMP(NE,
 TEMP t146,
 CONST 0,
 L18,L16)
LABEL L16
MOVE(
 TEMP r2,
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST -4)))
MOVE(
 TEMP fp,
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST -44)))
MOVE(
 TEMP r23,
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST -40)))
MOVE(
 TEMP r22,
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST -36)))
MOVE(
 TEMP r21,
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST -32)))
MOVE(
 TEMP r20,
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST -28)))
MOVE(
 TEMP r19,
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST -24)))
MOVE(
 TEMP r18,
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST -20)))
MOVE(
 TEMP r17,
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST -16)))
MOVE(
 TEMP r16,
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST -12)))
MOVE(
 TEMP ra,
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST -8)))
JUMP(
 NAME L65)
LABEL L18
MOVE(
 TEMP t151,
 BINOP(PLUS,
  TEMP fp,
  CONST -4))
MOVE(
 TEMP t148,
 BINOP(MUL,
  MEM(
   BINOP(PLUS,
    TEMP fp,
    CONST -4)),
  CONST 10))
MOVE(
 TEMP t147,
 CALL(
  NAME _ord,
   MEM(
    BINOP(PLUS,
     MEM(
      BINOP(PLUS,
       TEMP fp,
       CONST 0)),
     CONST -4))))
MOVE(
 TEMP t150,
 BINOP(PLUS,
  TEMP t148,
  TEMP t147))
MOVE(
 TEMP t149,
 CALL(
  NAME _ord,
   NAME L0))
MOVE(
 MEM(
  TEMP t151),
 BINOP(MINUS,
  TEMP t150,
  TEMP t149))
MOVE(
 TEMP t153,
 BINOP(PLUS,
  MEM(
   BINOP(PLUS,
    TEMP fp,
    CONST 0)),
  CONST -4))
MOVE(
 TEMP t152,
 CALL(
  NAME _getchar))
MOVE(
 MEM(
  TEMP t153),
 TEMP t152)
JUMP(
 NAME L17)
LABEL L65
# Instructions: 
L66: 
	stw ra, -8+tigermain.readint.0_framesize(sp)
	stw r16, -12+tigermain.readint.0_framesize(sp)
	stw r17, -16+tigermain.readint.0_framesize(sp)
	stw r18, -20+tigermain.readint.0_framesize(sp)
	stw r19, -24+tigermain.readint.0_framesize(sp)
	stw r20, -28+tigermain.readint.0_framesize(sp)
	stw r21, -32+tigermain.readint.0_framesize(sp)
	stw r22, -36+tigermain.readint.0_framesize(sp)
	stw r23, -40+tigermain.readint.0_framesize(sp)
	stw fp, -44+tigermain.readint.0_framesize(sp)
	stw r4, 0+tigermain.readint.0_framesize(sp)
	stw r5, 4+tigermain.readint.0_framesize(sp)
	stw zero, -4+tigermain.readint.0_framesize(sp)
	addi t154, sp, tigermain.readint.0_framesize
	mov r4, t154
	call tigermain.readint.0.skipto.1
	ldw t35, 4+tigermain.readint.0_framesize(sp)
	beq t35, zero, _BADPTR
L15: 
	addi t155, t35, 0
	mov t145, t155
	addi t156, sp, tigermain.readint.0_framesize
	mov r4, t156
	ldw t158, 0+tigermain.readint.0_framesize(sp)
	ldw t157, -4(t158)
	mov r5, t157
	call tigermain.readint.0.isdigit.0
	mov t144, r2
	stw t144, (t145)
L17: 
	addi t159, sp, tigermain.readint.0_framesize
	mov r4, t159
	ldw t161, 0+tigermain.readint.0_framesize(sp)
	ldw t160, -4(t161)
	mov r5, t160
	call tigermain.readint.0.isdigit.0
	mov t146, r2
	bne t146, zero, L18
L16: 
	ldw r2, -4+tigermain.readint.0_framesize(sp)
	ldw fp, -44+tigermain.readint.0_framesize(sp)
	ldw r23, -40+tigermain.readint.0_framesize(sp)
	ldw r22, -36+tigermain.readint.0_framesize(sp)
	ldw r21, -32+tigermain.readint.0_framesize(sp)
	ldw r20, -28+tigermain.readint.0_framesize(sp)
	ldw r19, -24+tigermain.readint.0_framesize(sp)
	ldw r18, -20+tigermain.readint.0_framesize(sp)
	ldw r17, -16+tigermain.readint.0_framesize(sp)
	ldw r16, -12+tigermain.readint.0_framesize(sp)
	ldw ra, -8+tigermain.readint.0_framesize(sp)
	br L65
L18: 
	addi t162, sp, -4+tigermain.readint.0_framesize
	mov t151, t162
	ldw t164, -4+tigermain.readint.0_framesize(sp)
	muli t163, t164, 10
	mov t148, t163
	ldw t166, 0+tigermain.readint.0_framesize(sp)
	ldw t165, -4(t166)
	mov r4, t165
	call _ord
	mov t147, r2
	add t167, t148, t147
	mov t150, t167
	movia t168, L0
	mov r4, t168
	call _ord
	mov t149, r2
	sub t169, t150, t149
	stw t169, (t151)
	ldw t171, 0+tigermain.readint.0_framesize(sp)
	addi t170, t171, -4
	mov t153, t170
	call _getchar
	mov t152, r2
	stw t152, (t153)
	br L17
L65: 
END tigermain.readint.0
PROCEDURE tigermain.readint.0.skipto.1
# Before canonicalization: 
SEQ(
 SEQ(
  SEQ(
   SEQ(
    SEQ(
     SEQ(
      SEQ(
       SEQ(
        SEQ(
         SEQ(
          SEQ(
           MOVE(
            MEM(
             BINOP(PLUS,
              TEMP fp,
              CONST -4)),
            TEMP ra),
           SEQ(
            MOVE(
             MEM(
              BINOP(PLUS,
               TEMP fp,
               CONST -8)),
             TEMP r16),
            SEQ(
             MOVE(
              MEM(
               BINOP(PLUS,
                TEMP fp,
                CONST -12)),
              TEMP r17),
             SEQ(
              MOVE(
               MEM(
                BINOP(PLUS,
                 TEMP fp,
                 CONST -16)),
               TEMP r18),
              SEQ(
               MOVE(
                MEM(
                 BINOP(PLUS,
                  TEMP fp,
                  CONST -20)),
                TEMP r19),
               SEQ(
                MOVE(
                 MEM(
                  BINOP(PLUS,
                   TEMP fp,
                   CONST -24)),
                 TEMP r20),
                SEQ(
                 MOVE(
                  MEM(
                   BINOP(PLUS,
                    TEMP fp,
                    CONST -28)),
                  TEMP r21),
                 SEQ(
                  MOVE(
                   MEM(
                    BINOP(PLUS,
                     TEMP fp,
                     CONST -32)),
                   TEMP r22),
                  SEQ(
                   MOVE(
                    MEM(
                     BINOP(PLUS,
                      TEMP fp,
                      CONST -36)),
                    TEMP r23),
                   SEQ(
                    MOVE(
                     MEM(
                      BINOP(PLUS,
                       TEMP fp,
                       CONST -40)),
                     TEMP fp),
                    SEQ(
                     MOVE(
                      MEM(
                       BINOP(PLUS,
                        TEMP fp,
                        CONST 0)),
                      TEMP r4),
                     SEQ(
                      SEQ(
                       SEQ(
                        LABEL L13,
                        SEQ(
                         CJUMP(EQ,
                          CALL(
                           NAME _strcmp,
                            MEM(
                             BINOP(PLUS,
                              MEM(
                               BINOP(PLUS,
                                MEM(
                                 BINOP(PLUS,
                                  TEMP fp,
                                  CONST 0)),
                                CONST 0)),
                              CONST -4)),
                            NAME L7),
                          CONST 0,
                          L14,L10),
                         SEQ(
                          LABEL L10,
                          CJUMP(EQ,
                           CALL(
                            NAME _strcmp,
                             MEM(
                              BINOP(PLUS,
                               MEM(
                                BINOP(PLUS,
                                 MEM(
                                  BINOP(PLUS,
                                   TEMP fp,
                                   CONST 0)),
                                 CONST 0)),
                               CONST -4)),
                             NAME L8),
                           CONST 0,
                           L14,L12)))),
                       SEQ(
                        SEQ(
                         LABEL L14,
                         MOVE(
                          MEM(
                           BINOP(PLUS,
                            MEM(
                             BINOP(PLUS,
                              MEM(
                               BINOP(PLUS,
                                TEMP fp,
                                CONST 0)),
                              CONST 0)),
                            CONST -4)),
                          CALL(
                           NAME _getchar))),
                        JUMP(
                         NAME L13))),
                      LABEL L12)))))))))))),
          MOVE(
           TEMP fp,
           MEM(
            BINOP(PLUS,
             TEMP fp,
             CONST -40)))),
         MOVE(
          TEMP r23,
          MEM(
           BINOP(PLUS,
            TEMP fp,
            CONST -36)))),
        MOVE(
         TEMP r22,
         MEM(
          BINOP(PLUS,
           TEMP fp,
           CONST -32)))),
       MOVE(
        TEMP r21,
        MEM(
         BINOP(PLUS,
          TEMP fp,
          CONST -28)))),
      MOVE(
       TEMP r20,
       MEM(
        BINOP(PLUS,
         TEMP fp,
         CONST -24)))),
     MOVE(
      TEMP r19,
      MEM(
       BINOP(PLUS,
        TEMP fp,
        CONST -20)))),
    MOVE(
     TEMP r18,
     MEM(
      BINOP(PLUS,
       TEMP fp,
       CONST -16)))),
   MOVE(
    TEMP r17,
    MEM(
     BINOP(PLUS,
      TEMP fp,
      CONST -12)))),
  MOVE(
   TEMP r16,
   MEM(
    BINOP(PLUS,
     TEMP fp,
     CONST -8)))),
 MOVE(
  TEMP ra,
  MEM(
   BINOP(PLUS,
    TEMP fp,
    CONST -4))))
# After canonicalization: 
MOVE(
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST -4)),
 TEMP ra)
MOVE(
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST -8)),
 TEMP r16)
MOVE(
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST -12)),
 TEMP r17)
MOVE(
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST -16)),
 TEMP r18)
MOVE(
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST -20)),
 TEMP r19)
MOVE(
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST -24)),
 TEMP r20)
MOVE(
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST -28)),
 TEMP r21)
MOVE(
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST -32)),
 TEMP r22)
MOVE(
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST -36)),
 TEMP r23)
MOVE(
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST -40)),
 TEMP fp)
MOVE(
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST 0)),
 TEMP r4)
LABEL L13
MOVE(
 TEMP t172,
 CALL(
  NAME _strcmp,
   MEM(
    BINOP(PLUS,
     MEM(
      BINOP(PLUS,
       MEM(
        BINOP(PLUS,
         TEMP fp,
         CONST 0)),
       CONST 0)),
     CONST -4)),
   NAME L7))
CJUMP(EQ,
 TEMP t172,
 CONST 0,
 L14,L10)
LABEL L10
MOVE(
 TEMP t173,
 CALL(
  NAME _strcmp,
   MEM(
    BINOP(PLUS,
     MEM(
      BINOP(PLUS,
       MEM(
        BINOP(PLUS,
         TEMP fp,
         CONST 0)),
       CONST 0)),
     CONST -4)),
   NAME L8))
CJUMP(EQ,
 TEMP t173,
 CONST 0,
 L14,L12)
LABEL L14
MOVE(
 TEMP t175,
 BINOP(PLUS,
  MEM(
   BINOP(PLUS,
    MEM(
     BINOP(PLUS,
      TEMP fp,
      CONST 0)),
    CONST 0)),
  CONST -4))
MOVE(
 TEMP t174,
 CALL(
  NAME _getchar))
MOVE(
 MEM(
  TEMP t175),
 TEMP t174)
JUMP(
 NAME L13)
LABEL L12
MOVE(
 TEMP fp,
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST -40)))
MOVE(
 TEMP r23,
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST -36)))
MOVE(
 TEMP r22,
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST -32)))
MOVE(
 TEMP r21,
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST -28)))
MOVE(
 TEMP r20,
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST -24)))
MOVE(
 TEMP r19,
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST -20)))
MOVE(
 TEMP r18,
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST -16)))
MOVE(
 TEMP r17,
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST -12)))
MOVE(
 TEMP r16,
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST -8)))
MOVE(
 TEMP ra,
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST -4)))
# Basic Blocks: 
#
LABEL L68
MOVE(
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST -4)),
 TEMP ra)
MOVE(
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST -8)),
 TEMP r16)
MOVE(
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST -12)),
 TEMP r17)
MOVE(
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST -16)),
 TEMP r18)
MOVE(
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST -20)),
 TEMP r19)
MOVE(
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST -24)),
 TEMP r20)
MOVE(
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST -28)),
 TEMP r21)
MOVE(
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST -32)),
 TEMP r22)
MOVE(
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST -36)),
 TEMP r23)
MOVE(
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST -40)),
 TEMP fp)
MOVE(
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST 0)),
 TEMP r4)
JUMP(
 NAME L13)
#
LABEL L13
MOVE(
 TEMP t172,
 CALL(
  NAME _strcmp,
   MEM(
    BINOP(PLUS,
     MEM(
      BINOP(PLUS,
       MEM(
        BINOP(PLUS,
         TEMP fp,
         CONST 0)),
       CONST 0)),
     CONST -4)),
   NAME L7))
CJUMP(EQ,
 TEMP t172,
 CONST 0,
 L14,L10)
#
LABEL L10
MOVE(
 TEMP t173,
 CALL(
  NAME _strcmp,
   MEM(
    BINOP(PLUS,
     MEM(
      BINOP(PLUS,
       MEM(
        BINOP(PLUS,
         TEMP fp,
         CONST 0)),
       CONST 0)),
     CONST -4)),
   NAME L8))
CJUMP(EQ,
 TEMP t173,
 CONST 0,
 L14,L12)
#
LABEL L14
MOVE(
 TEMP t175,
 BINOP(PLUS,
  MEM(
   BINOP(PLUS,
    MEM(
     BINOP(PLUS,
      TEMP fp,
      CONST 0)),
    CONST 0)),
  CONST -4))
MOVE(
 TEMP t174,
 CALL(
  NAME _getchar))
MOVE(
 MEM(
  TEMP t175),
 TEMP t174)
JUMP(
 NAME L13)
#
LABEL L12
MOVE(
 TEMP fp,
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST -40)))
MOVE(
 TEMP r23,
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST -36)))
MOVE(
 TEMP r22,
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST -32)))
MOVE(
 TEMP r21,
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST -28)))
MOVE(
 TEMP r20,
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST -24)))
MOVE(
 TEMP r19,
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST -20)))
MOVE(
 TEMP r18,
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST -16)))
MOVE(
 TEMP r17,
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST -12)))
MOVE(
 TEMP r16,
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST -8)))
MOVE(
 TEMP ra,
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST -4)))
JUMP(
 NAME L67)
LABEL L67
# Trace Scheduled: 
LABEL L68
MOVE(
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST -4)),
 TEMP ra)
MOVE(
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST -8)),
 TEMP r16)
MOVE(
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST -12)),
 TEMP r17)
MOVE(
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST -16)),
 TEMP r18)
MOVE(
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST -20)),
 TEMP r19)
MOVE(
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST -24)),
 TEMP r20)
MOVE(
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST -28)),
 TEMP r21)
MOVE(
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST -32)),
 TEMP r22)
MOVE(
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST -36)),
 TEMP r23)
MOVE(
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST -40)),
 TEMP fp)
MOVE(
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST 0)),
 TEMP r4)
LABEL L13
MOVE(
 TEMP t172,
 CALL(
  NAME _strcmp,
   MEM(
    BINOP(PLUS,
     MEM(
      BINOP(PLUS,
       MEM(
        BINOP(PLUS,
         TEMP fp,
         CONST 0)),
       CONST 0)),
     CONST -4)),
   NAME L7))
CJUMP(EQ,
 TEMP t172,
 CONST 0,
 L14,L10)
LABEL L10
MOVE(
 TEMP t173,
 CALL(
  NAME _strcmp,
   MEM(
    BINOP(PLUS,
     MEM(
      BINOP(PLUS,
       MEM(
        BINOP(PLUS,
         TEMP fp,
         CONST 0)),
       CONST 0)),
     CONST -4)),
   NAME L8))
CJUMP(EQ,
 TEMP t173,
 CONST 0,
 L14,L12)
LABEL L12
MOVE(
 TEMP fp,
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST -40)))
MOVE(
 TEMP r23,
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST -36)))
MOVE(
 TEMP r22,
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST -32)))
MOVE(
 TEMP r21,
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST -28)))
MOVE(
 TEMP r20,
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST -24)))
MOVE(
 TEMP r19,
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST -20)))
MOVE(
 TEMP r18,
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST -16)))
MOVE(
 TEMP r17,
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST -12)))
MOVE(
 TEMP r16,
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST -8)))
MOVE(
 TEMP ra,
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST -4)))
JUMP(
 NAME L67)
LABEL L14
MOVE(
 TEMP t175,
 BINOP(PLUS,
  MEM(
   BINOP(PLUS,
    MEM(
     BINOP(PLUS,
      TEMP fp,
      CONST 0)),
    CONST 0)),
  CONST -4))
MOVE(
 TEMP t174,
 CALL(
  NAME _getchar))
MOVE(
 MEM(
  TEMP t175),
 TEMP t174)
JUMP(
 NAME L13)
LABEL L67
# Instructions: 
L68: 
	stw ra, -4+tigermain.readint.0.skipto.1_framesize(sp)
	stw r16, -8+tigermain.readint.0.skipto.1_framesize(sp)
	stw r17, -12+tigermain.readint.0.skipto.1_framesize(sp)
	stw r18, -16+tigermain.readint.0.skipto.1_framesize(sp)
	stw r19, -20+tigermain.readint.0.skipto.1_framesize(sp)
	stw r20, -24+tigermain.readint.0.skipto.1_framesize(sp)
	stw r21, -28+tigermain.readint.0.skipto.1_framesize(sp)
	stw r22, -32+tigermain.readint.0.skipto.1_framesize(sp)
	stw r23, -36+tigermain.readint.0.skipto.1_framesize(sp)
	stw fp, -40+tigermain.readint.0.skipto.1_framesize(sp)
	stw r4, 0+tigermain.readint.0.skipto.1_framesize(sp)
L13: 
	ldw t178, 0+tigermain.readint.0.skipto.1_framesize(sp)
	ldw t177, 0(t178)
	ldw t176, -4(t177)
	mov r4, t176
	movia t179, L7
	mov r5, t179
	call _strcmp
	mov t172, r2
	beq t172, zero, L14
L10: 
	ldw t182, 0+tigermain.readint.0.skipto.1_framesize(sp)
	ldw t181, 0(t182)
	ldw t180, -4(t181)
	mov r4, t180
	movia t183, L8
	mov r5, t183
	call _strcmp
	mov t173, r2
	beq t173, zero, L14
L12: 
	ldw fp, -40+tigermain.readint.0.skipto.1_framesize(sp)
	ldw r23, -36+tigermain.readint.0.skipto.1_framesize(sp)
	ldw r22, -32+tigermain.readint.0.skipto.1_framesize(sp)
	ldw r21, -28+tigermain.readint.0.skipto.1_framesize(sp)
	ldw r20, -24+tigermain.readint.0.skipto.1_framesize(sp)
	ldw r19, -20+tigermain.readint.0.skipto.1_framesize(sp)
	ldw r18, -16+tigermain.readint.0.skipto.1_framesize(sp)
	ldw r17, -12+tigermain.readint.0.skipto.1_framesize(sp)
	ldw r16, -8+tigermain.readint.0.skipto.1_framesize(sp)
	ldw ra, -4+tigermain.readint.0.skipto.1_framesize(sp)
	br L67
L14: 
	ldw t186, 0+tigermain.readint.0.skipto.1_framesize(sp)
	ldw t185, 0(t186)
	addi t184, t185, -4
	mov t175, t184
	call _getchar
	mov t174, r2
	stw t174, (t175)
	br L13
L67: 
END tigermain.readint.0.skipto.1
	.data
	.word 1
L8:	.asciz	"\n"
	.data
	.word 1
L7:	.asciz	" "
PROCEDURE tigermain.readint.0.isdigit.0
# Before canonicalization: 
SEQ(
 SEQ(
  SEQ(
   SEQ(
    SEQ(
     SEQ(
      SEQ(
       SEQ(
        SEQ(
         SEQ(
          SEQ(
           MOVE(
            MEM(
             BINOP(PLUS,
              TEMP fp,
              CONST -4)),
            TEMP ra),
           SEQ(
            MOVE(
             MEM(
              BINOP(PLUS,
               TEMP fp,
               CONST -8)),
             TEMP r16),
            SEQ(
             MOVE(
              MEM(
               BINOP(PLUS,
                TEMP fp,
                CONST -12)),
              TEMP r17),
             SEQ(
              MOVE(
               MEM(
                BINOP(PLUS,
                 TEMP fp,
                 CONST -16)),
               TEMP r18),
              SEQ(
               MOVE(
                MEM(
                 BINOP(PLUS,
                  TEMP fp,
                  CONST -20)),
                TEMP r19),
               SEQ(
                MOVE(
                 MEM(
                  BINOP(PLUS,
                   TEMP fp,
                   CONST -24)),
                 TEMP r20),
                SEQ(
                 MOVE(
                  MEM(
                   BINOP(PLUS,
                    TEMP fp,
                    CONST -28)),
                  TEMP r21),
                 SEQ(
                  MOVE(
                   MEM(
                    BINOP(PLUS,
                     TEMP fp,
                     CONST -32)),
                   TEMP r22),
                  SEQ(
                   MOVE(
                    MEM(
                     BINOP(PLUS,
                      TEMP fp,
                      CONST -36)),
                    TEMP r23),
                   SEQ(
                    MOVE(
                     MEM(
                      BINOP(PLUS,
                       TEMP fp,
                       CONST -40)),
                     TEMP fp),
                    SEQ(
                     MOVE(
                      MEM(
                       BINOP(PLUS,
                        TEMP fp,
                        CONST 0)),
                      TEMP r4),
                     SEQ(
                      MOVE(
                       MEM(
                        BINOP(PLUS,
                         TEMP fp,
                         CONST 4)),
                       TEMP r5),
                      MOVE(
                       TEMP r2,
                       ESEQ(
                        SEQ(
                         SEQ(
                          CJUMP(GE,
                           CALL(
                            NAME _ord,
                             MEM(
                              BINOP(PLUS,
                               MEM(
                                BINOP(PLUS,
                                 MEM(
                                  BINOP(PLUS,
                                   TEMP fp,
                                   CONST 0)),
                                 CONST 0)),
                               CONST -4))),
                           CALL(
                            NAME _ord,
                             NAME L0),
                           L2,L3),
                          SEQ(
                           SEQ(
                            LABEL L2,
                            SEQ(
                             MOVE(
                              TEMP t33,
                              ESEQ(
                               SEQ(
                                MOVE(
                                 TEMP t34,
                                 CONST 1),
                                SEQ(
                                 CJUMP(LE,
                                  CALL(
                                   NAME _ord,
                                    MEM(
                                     BINOP(PLUS,
                                      MEM(
                                       BINOP(PLUS,
                                        MEM(
                                         BINOP(PLUS,
                                          TEMP fp,
                                          CONST 0)),
                                        CONST 0)),
                                      CONST -4))),
                                  CALL(
                                   NAME _ord,
                                    NAME L1),
                                  L5,L6),
                                 SEQ(
                                  LABEL L6,
                                  SEQ(
                                   MOVE(
                                    TEMP t34,
                                    CONST 0),
                                   LABEL L5)))),
                               TEMP t34)),
                             JUMP(
                              NAME L4))),
                           SEQ(
                            LABEL L3,
                            SEQ(
                             MOVE(
                              TEMP t33,
                              CONST 0),
                             JUMP(
                              NAME L4))))),
                         LABEL L4),
                        TEMP t33)))))))))))))),
          MOVE(
           TEMP fp,
           MEM(
            BINOP(PLUS,
             TEMP fp,
             CONST -40)))),
         MOVE(
          TEMP r23,
          MEM(
           BINOP(PLUS,
            TEMP fp,
            CONST -36)))),
        MOVE(
         TEMP r22,
         MEM(
          BINOP(PLUS,
           TEMP fp,
           CONST -32)))),
       MOVE(
        TEMP r21,
        MEM(
         BINOP(PLUS,
          TEMP fp,
          CONST -28)))),
      MOVE(
       TEMP r20,
       MEM(
        BINOP(PLUS,
         TEMP fp,
         CONST -24)))),
     MOVE(
      TEMP r19,
      MEM(
       BINOP(PLUS,
        TEMP fp,
        CONST -20)))),
    MOVE(
     TEMP r18,
     MEM(
      BINOP(PLUS,
       TEMP fp,
       CONST -16)))),
   MOVE(
    TEMP r17,
    MEM(
     BINOP(PLUS,
      TEMP fp,
      CONST -12)))),
  MOVE(
   TEMP r16,
   MEM(
    BINOP(PLUS,
     TEMP fp,
     CONST -8)))),
 MOVE(
  TEMP ra,
  MEM(
   BINOP(PLUS,
    TEMP fp,
    CONST -4))))
# After canonicalization: 
MOVE(
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST -4)),
 TEMP ra)
MOVE(
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST -8)),
 TEMP r16)
MOVE(
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST -12)),
 TEMP r17)
MOVE(
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST -16)),
 TEMP r18)
MOVE(
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST -20)),
 TEMP r19)
MOVE(
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST -24)),
 TEMP r20)
MOVE(
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST -28)),
 TEMP r21)
MOVE(
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST -32)),
 TEMP r22)
MOVE(
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST -36)),
 TEMP r23)
MOVE(
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST -40)),
 TEMP fp)
MOVE(
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST 0)),
 TEMP r4)
MOVE(
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST 4)),
 TEMP r5)
MOVE(
 TEMP t187,
 CALL(
  NAME _ord,
   MEM(
    BINOP(PLUS,
     MEM(
      BINOP(PLUS,
       MEM(
        BINOP(PLUS,
         TEMP fp,
         CONST 0)),
       CONST 0)),
     CONST -4))))
MOVE(
 TEMP t189,
 TEMP t187)
MOVE(
 TEMP t188,
 CALL(
  NAME _ord,
   NAME L0))
CJUMP(GE,
 TEMP t189,
 TEMP t188,
 L2,L3)
LABEL L2
MOVE(
 TEMP t34,
 CONST 1)
MOVE(
 TEMP t190,
 CALL(
  NAME _ord,
   MEM(
    BINOP(PLUS,
     MEM(
      BINOP(PLUS,
       MEM(
        BINOP(PLUS,
         TEMP fp,
         CONST 0)),
       CONST 0)),
     CONST -4))))
MOVE(
 TEMP t192,
 TEMP t190)
MOVE(
 TEMP t191,
 CALL(
  NAME _ord,
   NAME L1))
CJUMP(LE,
 TEMP t192,
 TEMP t191,
 L5,L6)
LABEL L6
MOVE(
 TEMP t34,
 CONST 0)
LABEL L5
MOVE(
 TEMP t33,
 TEMP t34)
JUMP(
 NAME L4)
LABEL L3
MOVE(
 TEMP t33,
 CONST 0)
JUMP(
 NAME L4)
LABEL L4
MOVE(
 TEMP r2,
 TEMP t33)
MOVE(
 TEMP fp,
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST -40)))
MOVE(
 TEMP r23,
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST -36)))
MOVE(
 TEMP r22,
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST -32)))
MOVE(
 TEMP r21,
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST -28)))
MOVE(
 TEMP r20,
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST -24)))
MOVE(
 TEMP r19,
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST -20)))
MOVE(
 TEMP r18,
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST -16)))
MOVE(
 TEMP r17,
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST -12)))
MOVE(
 TEMP r16,
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST -8)))
MOVE(
 TEMP ra,
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST -4)))
# Basic Blocks: 
#
LABEL L70
MOVE(
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST -4)),
 TEMP ra)
MOVE(
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST -8)),
 TEMP r16)
MOVE(
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST -12)),
 TEMP r17)
MOVE(
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST -16)),
 TEMP r18)
MOVE(
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST -20)),
 TEMP r19)
MOVE(
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST -24)),
 TEMP r20)
MOVE(
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST -28)),
 TEMP r21)
MOVE(
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST -32)),
 TEMP r22)
MOVE(
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST -36)),
 TEMP r23)
MOVE(
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST -40)),
 TEMP fp)
MOVE(
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST 0)),
 TEMP r4)
MOVE(
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST 4)),
 TEMP r5)
MOVE(
 TEMP t187,
 CALL(
  NAME _ord,
   MEM(
    BINOP(PLUS,
     MEM(
      BINOP(PLUS,
       MEM(
        BINOP(PLUS,
         TEMP fp,
         CONST 0)),
       CONST 0)),
     CONST -4))))
MOVE(
 TEMP t189,
 TEMP t187)
MOVE(
 TEMP t188,
 CALL(
  NAME _ord,
   NAME L0))
CJUMP(GE,
 TEMP t189,
 TEMP t188,
 L2,L3)
#
LABEL L2
MOVE(
 TEMP t34,
 CONST 1)
MOVE(
 TEMP t190,
 CALL(
  NAME _ord,
   MEM(
    BINOP(PLUS,
     MEM(
      BINOP(PLUS,
       MEM(
        BINOP(PLUS,
         TEMP fp,
         CONST 0)),
       CONST 0)),
     CONST -4))))
MOVE(
 TEMP t192,
 TEMP t190)
MOVE(
 TEMP t191,
 CALL(
  NAME _ord,
   NAME L1))
CJUMP(LE,
 TEMP t192,
 TEMP t191,
 L5,L6)
#
LABEL L6
MOVE(
 TEMP t34,
 CONST 0)
JUMP(
 NAME L5)
#
LABEL L5
MOVE(
 TEMP t33,
 TEMP t34)
JUMP(
 NAME L4)
#
LABEL L3
MOVE(
 TEMP t33,
 CONST 0)
JUMP(
 NAME L4)
#
LABEL L4
MOVE(
 TEMP r2,
 TEMP t33)
MOVE(
 TEMP fp,
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST -40)))
MOVE(
 TEMP r23,
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST -36)))
MOVE(
 TEMP r22,
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST -32)))
MOVE(
 TEMP r21,
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST -28)))
MOVE(
 TEMP r20,
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST -24)))
MOVE(
 TEMP r19,
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST -20)))
MOVE(
 TEMP r18,
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST -16)))
MOVE(
 TEMP r17,
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST -12)))
MOVE(
 TEMP r16,
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST -8)))
MOVE(
 TEMP ra,
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST -4)))
JUMP(
 NAME L69)
LABEL L69
# Trace Scheduled: 
LABEL L70
MOVE(
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST -4)),
 TEMP ra)
MOVE(
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST -8)),
 TEMP r16)
MOVE(
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST -12)),
 TEMP r17)
MOVE(
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST -16)),
 TEMP r18)
MOVE(
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST -20)),
 TEMP r19)
MOVE(
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST -24)),
 TEMP r20)
MOVE(
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST -28)),
 TEMP r21)
MOVE(
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST -32)),
 TEMP r22)
MOVE(
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST -36)),
 TEMP r23)
MOVE(
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST -40)),
 TEMP fp)
MOVE(
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST 0)),
 TEMP r4)
MOVE(
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST 4)),
 TEMP r5)
MOVE(
 TEMP t187,
 CALL(
  NAME _ord,
   MEM(
    BINOP(PLUS,
     MEM(
      BINOP(PLUS,
       MEM(
        BINOP(PLUS,
         TEMP fp,
         CONST 0)),
       CONST 0)),
     CONST -4))))
MOVE(
 TEMP t189,
 TEMP t187)
MOVE(
 TEMP t188,
 CALL(
  NAME _ord,
   NAME L0))
CJUMP(GE,
 TEMP t189,
 TEMP t188,
 L2,L3)
LABEL L3
MOVE(
 TEMP t33,
 CONST 0)
LABEL L4
MOVE(
 TEMP r2,
 TEMP t33)
MOVE(
 TEMP fp,
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST -40)))
MOVE(
 TEMP r23,
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST -36)))
MOVE(
 TEMP r22,
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST -32)))
MOVE(
 TEMP r21,
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST -28)))
MOVE(
 TEMP r20,
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST -24)))
MOVE(
 TEMP r19,
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST -20)))
MOVE(
 TEMP r18,
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST -16)))
MOVE(
 TEMP r17,
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST -12)))
MOVE(
 TEMP r16,
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST -8)))
MOVE(
 TEMP ra,
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST -4)))
JUMP(
 NAME L69)
LABEL L2
MOVE(
 TEMP t34,
 CONST 1)
MOVE(
 TEMP t190,
 CALL(
  NAME _ord,
   MEM(
    BINOP(PLUS,
     MEM(
      BINOP(PLUS,
       MEM(
        BINOP(PLUS,
         TEMP fp,
         CONST 0)),
       CONST 0)),
     CONST -4))))
MOVE(
 TEMP t192,
 TEMP t190)
MOVE(
 TEMP t191,
 CALL(
  NAME _ord,
   NAME L1))
CJUMP(LE,
 TEMP t192,
 TEMP t191,
 L5,L6)
LABEL L6
MOVE(
 TEMP t34,
 CONST 0)
LABEL L5
MOVE(
 TEMP t33,
 TEMP t34)
JUMP(
 NAME L4)
LABEL L69
# Instructions: 
L70: 
	stw ra, -4+tigermain.readint.0.isdigit.0_framesize(sp)
	stw r16, -8+tigermain.readint.0.isdigit.0_framesize(sp)
	stw r17, -12+tigermain.readint.0.isdigit.0_framesize(sp)
	stw r18, -16+tigermain.readint.0.isdigit.0_framesize(sp)
	stw r19, -20+tigermain.readint.0.isdigit.0_framesize(sp)
	stw r20, -24+tigermain.readint.0.isdigit.0_framesize(sp)
	stw r21, -28+tigermain.readint.0.isdigit.0_framesize(sp)
	stw r22, -32+tigermain.readint.0.isdigit.0_framesize(sp)
	stw r23, -36+tigermain.readint.0.isdigit.0_framesize(sp)
	stw fp, -40+tigermain.readint.0.isdigit.0_framesize(sp)
	stw r4, 0+tigermain.readint.0.isdigit.0_framesize(sp)
	stw r5, 4+tigermain.readint.0.isdigit.0_framesize(sp)
	ldw t195, 0+tigermain.readint.0.isdigit.0_framesize(sp)
	ldw t194, 0(t195)
	ldw t193, -4(t194)
	mov r4, t193
	call _ord
	mov t187, r2
	mov t189, t187
	movia t196, L0
	mov r4, t196
	call _ord
	mov t188, r2
	bge t189, t188, L2
L3: 
	mov t33, zero
L4: 
	mov r2, t33
	ldw fp, -40+tigermain.readint.0.isdigit.0_framesize(sp)
	ldw r23, -36+tigermain.readint.0.isdigit.0_framesize(sp)
	ldw r22, -32+tigermain.readint.0.isdigit.0_framesize(sp)
	ldw r21, -28+tigermain.readint.0.isdigit.0_framesize(sp)
	ldw r20, -24+tigermain.readint.0.isdigit.0_framesize(sp)
	ldw r19, -20+tigermain.readint.0.isdigit.0_framesize(sp)
	ldw r18, -16+tigermain.readint.0.isdigit.0_framesize(sp)
	ldw r17, -12+tigermain.readint.0.isdigit.0_framesize(sp)
	ldw r16, -8+tigermain.readint.0.isdigit.0_framesize(sp)
	ldw ra, -4+tigermain.readint.0.isdigit.0_framesize(sp)
	br L69
L2: 
	movi t197, 1
	mov t34, t197
	ldw t200, 0+tigermain.readint.0.isdigit.0_framesize(sp)
	ldw t199, 0(t200)
	ldw t198, -4(t199)
	mov r4, t198
	call _ord
	mov t190, r2
	mov t192, t190
	movia t201, L1
	mov r4, t201
	call _ord
	mov t191, r2
	ble t192, t191, L5
L6: 
	mov t34, zero
L5: 
	mov t33, t34
	br L4
L69: 
END tigermain.readint.0.isdigit.0
	.data
	.word 1
L1:	.asciz	"9"
	.data
	.word 1
L0:	.asciz	"0"
