#SimuProc 1.4.2.0
MSG Menu
MSG  ---------
MSG  |1|2|3|4|
MSG  ---------
MSG  |5|6|7|8|
MSG  ---------
MSG  |9|10|11|12|
MSG  --------
MSG  |13|14|15|16|
MSG  --------
MSG 1. Ingresar posicion inicial para el caballo (ver matriz de arriba)
MSG 2. Llenado de la matriz mediante saltos de caballo
MSG 3. Mostrar Contenido de la matriz
LDT Ingrese la opcion(1, 2 o 3)
CMP A02
JME 170
JMA 18C

HLT
#170 ;Meter en pila e incrementar contador
PUSH AX
INC 18A
MOV 18B,AX
#173 ;Analizar desde POSACTUAL siguiente paso
;TODO

#100 ; Movimiento 8
ADD A04
SUB A02
JMP; TODO

#030 ;Movimiento 7
ADD A04
ADD A02
JMP; TODO
#040 ;Movimiento 6
ADD A08
SUB A01
JMP ;TODO
#050 ;Movimiento 5
ADD A08
ADD A01
JMP ;TODO
#060 ;Movimiento 4
SUB A04
SUB A02
JMP; TODO
#070 ;Movimiento 3
SUB A04
ADD A02
JMP; TODO
#080 ;Movimiento 2
LDA 18B
SUB A08
ADD A01
JMP ;TODO
#090 ;Movimiento 1
LDA 18B
SUB A08
SUB A01
JMP ; TODO

#18A
0000000000000000;CONTADOR
#18B
0000000000000000;POSACTUAL
#A00
0000000000000000;NUMERO 0
0000000000000001;NUMERO 1
0000000000000010;NUMERO 2
0000000000000011;NUMERO 3
0000000000000100;NUMERO 4
0000000000000000;NUMERO 0
0000000000000101;NUMERO 5 **
0000000000000110;NUMERO 6
0000000000000111;NUMERO 7
0000000000001000;NUMERO 8
0000000000001001;NUMERO 9

