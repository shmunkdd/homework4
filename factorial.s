.text
.global _start
_start:

MOV X0, #5
MOV X1, #1
base:
  CMP X0, #1
  BGE else
  MOV X0, X1
  b.al exit
  
else: 
  MUL X1, X1, X0
  SUB X0, X0, #1
  b.al base
  
exit:
  MOV X8, #93
  SVC #0
