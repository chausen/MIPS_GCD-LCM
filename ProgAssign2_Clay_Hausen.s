# Second SPIM Assignment
	# Program 2
	# Name:  Clay Hausen
	# Class: CDA3101
	# Date:  2/4/2015
# Start with data declarations
#

.align 2

.globl main
.text



gcd:
    addi $sp, $sp, -12     # adjust stack for 3 items
    sw $ra, 8($sp)         # save the return address
sw $a0, 4($sp)         # save the argument1 in $a0
sw $a1, 0($sp)         # save the argument2 in $a1
div $a0, $a1           # divide arg1 by arg2; remainder in $HI
mfhi $t0               # $t0 = arg 1 % arg2
bne $t0, $zero, L1


L1:
    addi $a0, $a0, -$a0   # set arg1 to 0
addi $a0, $a0, $a1        # set arg1 to arg2


