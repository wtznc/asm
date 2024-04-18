/*

fails on mac:
    cmd: as max.s -o max.o && clang -o max max.o -e _start && echo ./max
    output:
        max.s:21:9: error: 32-bit absolute addressing is not supported in 64-bit mode
            movl data_items(, %edi, 4), %eax # offset(base register, index register, scale factor)
        
        max.s:27:9: error: 32-bit absolute addressing is not supported in 64-bit mode
            movl data_items(, %edi, 4), %eax # get next data item
*/


#PURPOSE: This program finds the maximum number of a set of data items.

#VARIABLES: The registers have the following uses:
# %edi - index of the data item being processed
# %ebx - largest data item found so far
# %eax - current data item being processed

# memory locations that are used:
# data_items - the array of data items. A 0 is used as a sentinel value to indicate the end of the data

.data
    data_items:
        .long 3, 67, 34, 222, 45, 75, 54, 34, 44, 33, 22, 11, 66, 0

.text
    .globl _start
    _start:
        movl $0, %edi # initialize index to 0
        movl data_items(, %edi, 4), %eax # offset(base register, index register, scale factor)
        movl %eax, %ebx # initialize largest to first data item
    start_loop:
        cmpl $0, %eax # check for sentinel value
        je loop_exit # jump if equal
        incl %edi # increment index
        movl data_items(, %edi, 4), %eax # get next data item
        cmpl %ebx, %eax # compare current data item with largest
        jle start_loop # jump to start_loop if the current data item is less than or equal to the largest
        movl %eax, %ebx # update largest
    loop_exit:
        movl $1, %eax # system call number (sys_exit)
        movl $0, %ebx # exit status
        int $0x80 # call kernel