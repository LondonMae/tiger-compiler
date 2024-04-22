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
                     MOVE(
                      TEMP r2,
                      ESEQ(
                       MOVE(
                        MEM(
                         BINOP(PLUS,
                          TEMP fp,
                          CONST -4)),
                        CALL(
                         NAME _initArray,
                          CONST 10,
                          CONST 0)),
                       ESEQ(
                        SEQ(
                         MOVE(
                          TEMP t33,
                          MEM(
                           BINOP(PLUS,
                            TEMP fp,
                            CONST -4))),
                         SEQ(
                          MOVE(
                           TEMP t34,
                           CONST 2),
                          SEQ(
                           CJUMP(LT,
                            TEMP t34,
                            CONST 0,
                            _BADSUB,L0),
                           SEQ(
                            LABEL L0,
                            SEQ(
                             CJUMP(GT,
                              TEMP t34,
                              MEM(
                               BINOP(PLUS,
                                TEMP t33,
                                CONST -4)),
                              _BADSUB,L1),
                             LABEL L1))))),
                        MEM(
                         BINOP(PLUS,
                          TEMP t33,
                          BINOP(MUL,
                           TEMP t34,
                           CONST 4))))))))))))))))),
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
 TEMP t36,
 BINOP(PLUS,
  TEMP fp,
  CONST -4))
MOVE(
 TEMP t35,
 CALL(
  NAME _initArray,
   CONST 10,
   CONST 0))
MOVE(
 MEM(
  TEMP t36),
 TEMP t35)
MOVE(
 TEMP t33,
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST -4)))
MOVE(
 TEMP t34,
 CONST 2)
CJUMP(LT,
 TEMP t34,
 CONST 0,
 _BADSUB,L0)
LABEL L0
CJUMP(GT,
 TEMP t34,
 MEM(
  BINOP(PLUS,
   TEMP t33,
   CONST -4)),
 _BADSUB,L1)
LABEL L1
MOVE(
 TEMP r2,
 MEM(
  BINOP(PLUS,
   TEMP t33,
   BINOP(MUL,
    TEMP t34,
    CONST 4))))
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
LABEL L3
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
 TEMP t36,
 BINOP(PLUS,
  TEMP fp,
  CONST -4))
MOVE(
 TEMP t35,
 CALL(
  NAME _initArray,
   CONST 10,
   CONST 0))
MOVE(
 MEM(
  TEMP t36),
 TEMP t35)
MOVE(
 TEMP t33,
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST -4)))
MOVE(
 TEMP t34,
 CONST 2)
CJUMP(LT,
 TEMP t34,
 CONST 0,
 _BADSUB,L0)
#
LABEL L0
CJUMP(GT,
 TEMP t34,
 MEM(
  BINOP(PLUS,
   TEMP t33,
   CONST -4)),
 _BADSUB,L1)
#
LABEL L1
MOVE(
 TEMP r2,
 MEM(
  BINOP(PLUS,
   TEMP t33,
   BINOP(MUL,
    TEMP t34,
    CONST 4))))
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
 NAME L2)
LABEL L2
# Trace Scheduled: 
LABEL L3
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
 TEMP t36,
 BINOP(PLUS,
  TEMP fp,
  CONST -4))
MOVE(
 TEMP t35,
 CALL(
  NAME _initArray,
   CONST 10,
   CONST 0))
MOVE(
 MEM(
  TEMP t36),
 TEMP t35)
MOVE(
 TEMP t33,
 MEM(
  BINOP(PLUS,
   TEMP fp,
   CONST -4)))
MOVE(
 TEMP t34,
 CONST 2)
CJUMP(LT,
 TEMP t34,
 CONST 0,
 _BADSUB,L0)
LABEL L0
CJUMP(GT,
 TEMP t34,
 MEM(
  BINOP(PLUS,
   TEMP t33,
   CONST -4)),
 _BADSUB,L1)
LABEL L1
MOVE(
 TEMP r2,
 MEM(
  BINOP(PLUS,
   TEMP t33,
   BINOP(MUL,
    TEMP t34,
    CONST 4))))
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
 NAME L2)
LABEL L2
# Instructions: 
L3:
	stw ra, -8+tigermain_framesize(sp)
	stw r16, -12+tigermain_framesize(sp)
	stw r17, -16+tigermain_framesize(sp)
	stw r18, -20+tigermain_framesize(sp)
	stw r19, -24+tigermain_framesize(sp)
	stw r20, -28+tigermain_framesize(sp)
	stw r21, -32+tigermain_framesize(sp)
	stw r22, -36+tigermain_framesize(sp)
	stw r23, -40+tigermain_framesize(sp)
	stw fp, -44+tigermain_framesize(sp)
	stw r4, 0+tigermain_framesize(sp)
	addi t37, sp, -4+tigermain_framesize
	mov t36, t37
	movi t38, 10
	mov r4, t38
	mov r5, zero
	call _initArray
	mov t35, r2
	stw t35, (t36)
	ldw t33, -4+tigermain_framesize(sp)
	movi t39, 2
	mov t34, t39
	blt t34, zero, _BADSUB
L0:
	ldw t40, -4(t33)
	bgt t34, t40, _BADSUB
L1:
	slli t42, t34, 2
	add t41, t33, t42
	ldw r2, (t41)
	ldw fp, -44+tigermain_framesize(sp)
	ldw r23, -40+tigermain_framesize(sp)
	ldw r22, -36+tigermain_framesize(sp)
	ldw r21, -32+tigermain_framesize(sp)
	ldw r20, -28+tigermain_framesize(sp)
	ldw r19, -24+tigermain_framesize(sp)
	ldw r18, -20+tigermain_framesize(sp)
	ldw r17, -16+tigermain_framesize(sp)
	ldw r16, -12+tigermain_framesize(sp)
	ldw ra, -8+tigermain_framesize(sp)
	br L2
L2:
END tigermain
