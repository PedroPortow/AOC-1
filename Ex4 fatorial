#	REGS BASE	REGS TEMP
#	t0		t4
#	t1		t6
#	t2
#	t3
#	t5



.data
	n: .word 4

.text
	lui $t0, 0x1001		# t0 = REG BASE
	ori $t1, $zero, 0 	# t1 = INDEX
	lw $t2, 0($t0)		# t2 = valor INICIAL DE N
	or $t3, $t2, $zero	# t3 = ARMAZENAR VALORES N!
	ori $t5, $zero, 1	# t5 = 1 (PARA SUBTRACAO)
	
Loop:	slt $t4, $t2, $zero	# t4 = RESPOSTA TESTE ( 1 = t2 < zero '' 0 = t2 > zero
	bne $t4, $zero, Exit 	# SE FOR 0 CABO
	sub $t2, $t2, $t5	# T6 = VALOR - 1 VAI TER QUE MULTIPLICAR COM O T3
	mult $t3, $t2
	mflo $t3
	
	j Loop
	
Exit:	lw $t3, 4($t0)
	