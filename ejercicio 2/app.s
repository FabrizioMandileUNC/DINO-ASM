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
   
    mov x29, x30
    add x25, xzr, xzr
    add x25, x25, #0x0FF
    lsl x25, x25, #10
    
loop_sleep:
    cbz x25, loop_end
    ldur x26, [sp,#0]
    stur x26, [sp,#0]
    sub x25, x25, #1
    b loop_sleep
loop_end:
    mov x30, x29

    ret
