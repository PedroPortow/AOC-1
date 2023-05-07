ori $t6, $zero, 2
sll $t6, $t6, 2


ori $t1, $zero, 2
ori $t2, $zero, 4
ori $t3, $zero, 2

mult $t1, $t2
mflo $t1

div $t1, $t3
mflo $t4