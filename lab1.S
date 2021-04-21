.global lab1
.syntax unified
#define A #4
#define B #4
#define C #4
lab1:
    push { lr }
    mov r0, A
    mov r1, B
    bl sumdiv
    mov r2, C
    bl factorial
    add r0, r2
    pop { pc }
sumdiv:
    push { r2, lr }
    add r0, r1
    mov r2, 2
    udiv r0, r2
    pop { r2, pc }
factorial:
    push { r3, lr }
    mov r3, 1
    .fact:
    mul r3, r2
    subs r2, #1
    bne .fact
    mov r2, r3
    pop { r3, pc }