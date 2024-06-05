.equ SCREEN_WIDTH,   640
.equ SCREEN_HEIGHT,  480
.equ BITS_PER_PIXEL, 32

.equ GPIO_BASE,    0x3f200000
.equ GPIO_GPFSEL0, 0x00
.equ GPIO_GPLEV0,  0x34

.include "graphics.s"
.include "colors.s"
.include "draws.s"
.include "animations.s"

.globl main

main:
    mov x20, x0

    bl draw_background
    bl details_floor
    bl cactus1
    bl dino
    bl montañitas



InfLoop:
    bl nubes
    bl sleep
    bl erase_nubes
    bl sleep
    bl nubes2
    bl sleep
    b InfLoop

sleep:
   
    SUB SP, SP, #16
    STR X0, [SP]
    STR X30, [SP, #8]
    mov x0, 0x0f0F0000
loop_sleep:
    sub x0,x0,1
    cbnz x13, loop_sleep
    
    LDR X30, [SP, #8]
    LDR X0, [SP]
    ADD SP, SP, #16

    ret
