ori $t1, $zero, 4  # VALOR MULTIPLICAR COM $T4
ori $t2, $zero, 2 # valor multiplicar com $T5
ori $t3, $zero, 3 # VALOR MUILTIPLICAR COM $T6

ori $t4, $zero, 2 # x
ori $t5, $zero, 3 # y
ori $t6, $zero, 3 # z


mult $t1, $t4
mflo $t7,     # 4(x)

mult $t2, $t5
mflo $t8      # 2(y)

mult $t3, $t6
mflo $t9      # 3(z)

sub $t7, $t7, $t8
add $t7, $t7, $t9


