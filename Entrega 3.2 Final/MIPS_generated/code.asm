.text
main:
jal executable_Main_main_1
executable_Main_main_1:
addi $sp, $sp, -12
sw   $ra, 0($sp)
sw   $s0, 4($sp)
sw   $s1, 8($sp)
la $a0, string_T3
jal executable_out_string
move $t2, $a0
j end
end:
li $v0, 10
syscall

executable_in_int:
addi $sp, $sp, -12
sw   $ra, 0($sp)
sw   $s0, 4($sp)
sw   $s1, 8($sp)
li $v0, 5
syscall
move $t3, $v0
move $a0, $t3
lw   $ra, 0($sp)
lw   $s0, 4($sp)
lw   $s1, 8($sp)
addi $sp, $sp, 12
jr $ra
 
executable_out_int:
addi $sp, $sp, -12
sw   $ra, 0($sp)
sw   $s0, 4($sp)
sw   $s1, 8($sp)
li $v0, 1
syscall
li $v0, 4
la $a0, newline
syscall
lw   $ra, 0($sp)
lw   $s0, 4($sp)
lw   $s1, 8($sp)
addi $sp, $sp, 12
jr $ra
 
executable_in_bool:
addi $sp, $sp, -12
sw   $ra, 0($sp)
sw   $s0, 4($sp)
sw   $s1, 8($sp)
li $v0, 5
syscall
move $t3, $v0
seq $a0, $t3, 1
lw   $ra, 0($sp)
lw   $s0, 4($sp)
lw   $s1, 8($sp)
addi $sp, $sp, 12
jr $ra
 
executable_out_bool:
addi $sp, $sp, -12
sw   $ra, 0($sp)
sw   $s0, 4($sp)
sw   $s1, 8($sp)
li $v0, 1
syscall
li $v0, 4
la $a0, newline
syscall
lw   $ra, 0($sp)
lw   $s0, 4($sp)
lw   $s1, 8($sp)
addi $sp, $sp, 12
jr $ra
 
executable_out_string:
addi $sp, $sp, -12
sw   $ra, 0($sp)
sw   $s0, 4($sp)
sw   $s1, 8($sp)
li $v0, 4
syscall
lw   $ra, 0($sp)
lw   $s0, 4($sp)
lw   $s1, 8($sp)
addi $sp, $sp, 12
jr $ra

.data
newline: .asciiz "
"
string_T3: .asciiz "Hello world!\n"
