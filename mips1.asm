  addi $t7, $zero, 0x0  # Inicializa o registrador $t7 com o valor zero

    # Insere o dígito 'D' no registrador $t7
    ori $t1, $zero, 0xD
    sll $t1, $t1, 28
    or $t7, $t7, $t1

    # Insere o dígito 'E' no registrador $t7
    ori $t1, $zero, 0xE
    sll $t1, $t1, 24
    or $t7, $t7, $t1

    # Insere o dígito 'C' no registrador $t7
    ori $t1, $zero, 0xC
    sll $t1, $t1, 20
    or $t7, $t7, $t1

    # Insere o dígito 'A' no registrador $t7
    ori $t1, $zero, 0xA
    sll $t1, $t1, 16
    or $t7, $t7, $t1

    # Insere o dígito 'D' no registrador $t7
    ori $t1, $zero, 0xD
    sll $t1, $t1, 12
    or $t7, $t7, $t1

    # Insere o dígito 'A' no registrador $t7
    ori $t1, $zero, 0xA
    sll $t1, $t1, 8
    or $t7, $t7, $t1

    # Insere o dígito '7' no registrador $t7
    ori $t1, $zero, 0x7
    sll $t1, $t1, 4
    or $t7, $t7, $t1

    # Insere o dígito '0' no registrador $t7
    ori $t1, $zero, 0x0
    or $t7, $t7, $t1

    # Fim do programa
    jr $ra