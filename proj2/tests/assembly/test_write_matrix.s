.import ../../src/write_matrix.s
.import ../../src/utils.s

.data
m0: .word 1, 2, 3, 4, 5, 6, 7, 8, 9 # MAKE CHANGES HERE TO TEST DIFFERENT MATRICES
file_path: .asciiz "outputs/test_write_matrix/student_write_outputs.bin"

.text
main:
    # Prologue
    addi sp sp -8
    sw s0 0(sp)
    sw s1 4(sp)
    la s0 file_path
    la s1 m0

    # Write the matrix to a file
    mv a0 s0
    mv a1 s1
    li a2 3
    li a3 3
    jal write_matrix


    # Epilogue
    lw s0 0(sp)
    lw s1 4(sp)
    addi sp sp 8



    # Exit the program
    jal exit