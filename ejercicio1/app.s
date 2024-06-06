.equ SCREEN_WIDTH,   640
.equ SCREEN_HEIGHT,  480
.equ BITS_PER_PIXEL, 32

.equ GPIO_BASE,    0x3f200000
.equ GPIO_GPFSEL0, 0x00
.equ GPIO_GPLEV0,  0x34

.include "graphics.s"
.include "colors.s"
.include "draws.s"
.globl main

main:
    mov x20, x0
    bl draw_background
    bl montañitas
    bl details_floor
    bl cactus1
    bl nubes
    bl dino
InfLoop:
    b InfLoop
