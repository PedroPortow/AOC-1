addi $t1, $zero, 1
ori $t2, $zero, 9 #

mult $t1, $t2
mflo $t2 #t2 => t2 => (9 * 5)
addi $t2, $t2, 7 # t2=> 9.5 +7

ori $t3, $zero, 2
mult $t1, $t3
mflo $t3

addi $t3, $t3, 8 #t3 => 2.5 + 8

div $t2, $t3
mflo $t2















