.import ../../src/relu.s
.import ../../src/utils.s

# Set vector values for testing
.data
m0: .word  # MAKE CHANGES HERE


.text
# main function for testing
main:
    # Load address of m0
    la s0 m0

    # Set dimensions of m0
    li s1 0 # MAKE CHANGES HERE
    li s2 0 # MAKE CHANGES HERE

    # Print m0 before running relu
    mv a0 s0
    mv a1 s1
    mv a2 s2
    jal print_int_array

    # Print newline
    li a1 '\n'
    jal print_char

    # Call relu function
    mv a0 s0
    mul a1 s1 s2 # Convert dimensions to total number of elements
    jal ra relu

    # Print m0 after running relu
    mv a0 s0
    mv a1 s1
    mv a2 s2
    jal print_int_array

    # Exit
    jal exit