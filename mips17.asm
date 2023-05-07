# Pega valores do array que está no 0x1001 e soma todos

#	REGS BASE || REGS TEMPS
#	$t0		$t2
#	$t1		$t3
#			$t5
#	$t4


.data
	a: .word 42, 45, 255, 592
	
.text
	lui $t0, 0x1001 	# REG BASE
	ori $t1, $zero, 0	# INDEX
	ori $t4, $zero, 0	# N DO ARRAY
	
Loop: 	slti $t2, $t1, 5	# t2 => TESTE ( i < 4 ? 1 : 0)
	beq $t2, $zero, Exit
	beq $t1, $zero, Primeiro
	addi $t0, $t0, 4
	lw $t5, 0($t0)		# T5 => VALOR DO ARRAY
	add $t4, $t4, $t5	# T4 => VALOR DO ARRAY + VALOR PREVIO
	addi $t1, $t1, 1
	j Loop
Primeiro:	lw $t3, 0($t0)
		or $t4, $t3, $zero 	# t4 => primeiro numero do array
		addi $t1, $t1, 1
		j Loop
		
	
	
Exit:
	
	