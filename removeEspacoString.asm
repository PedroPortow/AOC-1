.data
	string: .asciiz "Gosto muito do meu professor de AOC-I"

.text
	la $t0, string			# t0 => endereco inicial da string
	li $t7, 32 			# t7 => CODIGO ASCII DO ESPACO
loop:
	lbu $t1, ($t0)			# t1 => char na posicao da string 	( LOAD BYTE UNSIGNED => PRA CARREGAR O BYTE, O LW E PRA CARREGAR WORD )
	beq $t1, $zero, fim		# se for null chegou no fim
	beq $t1, $t7, removerEspaco	# char == espaco ? remover_espaco : continua aqui
	jal incrementaEndereco
	j loop
	
incrementaEndereco:
	addi $t0, $t0, 1
	jr $ra
	
removerEspaco:
	la $t4, ($t0)			# $t4 => ENDERECO DO ESPACO 
	
percorreString:
	lbu $t5, ($t4)			# $t5 => CHAR ATUAL DA STRING (NO INICIO VAI SER O ESPACO)
	beq $t5, $zero, loop		# SE FOR NULL CHEGOU NO FIM DA STRING
	
	lbu $t6, 1($t4)			# $t6 => VAI PEGAR O CHAR POSTERIOR ( $T5 + 1)
	sb $t6, 0($t4)			# VAI PEGAR O BYTE DA T6 ( N + 1 ) E GUARDAR DENTRO DO ENDERECO DO ANTERIOR, VAI FAZER ISSO ATE CHEGAR O FINAL DA STRING
	addi $t4, $t4, 1		# INCREMENTA O $T4 PRA APONTAR PRO PROXIMO CHAR DA STRING
	j percorreString
	
fim:
	li $v0, 4
	la $a0, string
	syscall
	
	li $v0, 10		# SAIR DO PROGRAMA
	syscall
	

