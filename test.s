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
                     MOVE(
                      TEMP r2,
                      BINOP(MUL,
                       CONST 2,
                       CONST 4))))))))))))),
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
 TEMP r2,
 BINOP(MUL,
  CONST 2,
  CONST 4))
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
LABEL L1
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
 TEMP r2,
 BINOP(MUL,
  CONST 2,
  CONST 4))
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
 NAME L0)
LABEL L0
# Trace Scheduled: 
LABEL L1
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
 TEMP r2,
 BINOP(MUL,
  CONST 2,
  CONST 4))
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
 NAME L0)
LABEL L0
# Instructions: 
L1:
	stw ra, -4+tigermain_framesize(sp)
	stw r16, -8+tigermain_framesize(sp)
	stw r17, -12+tigermain_framesize(sp)
	stw r18, -16+tigermain_framesize(sp)
	stw r19, -20+tigermain_framesize(sp)
	stw r20, -24+tigermain_framesize(sp)
	stw r21, -28+tigermain_framesize(sp)
	stw r22, -32+tigermain_framesize(sp)
	stw r23, -36+tigermain_framesize(sp)
	stw fp, -40+tigermain_framesize(sp)
	stw r4, 0+tigermain_framesize(sp)
	movi t34, 2
	muli t33, t34, 2
	mov r2, t33
	ldw fp, -40+tigermain_framesize(sp)
	ldw r23, -36+tigermain_framesize(sp)
	ldw r22, -32+tigermain_framesize(sp)
	ldw r21, -28+tigermain_framesize(sp)
	ldw r20, -24+tigermain_framesize(sp)
	ldw r19, -20+tigermain_framesize(sp)
	ldw r18, -16+tigermain_framesize(sp)
	ldw r17, -12+tigermain_framesize(sp)
	ldw r16, -8+tigermain_framesize(sp)
	ldw ra, -4+tigermain_framesize(sp)
	br L0
L0:
END tigermain
