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
    bl erase_clouds

    bl nubes2
    bl sleep
    bl erase_clouds

    bl nubes3
    bl sleep
    bl erase_clouds

    bl nubes4
    bl sleep
    bl erase_clouds

    bl nubes5
    bl sleep
    bl erase_clouds

    bl nubes6
    bl sleep
    bl erase_clouds
    
    bl nubes7
    bl sleep
    bl erase_clouds

    bl nubes8
    bl sleep
    bl erase_clouds

    bl nubes9
    bl sleep
    bl erase_clouds
    
    
    bl nubes10
    bl sleep
    bl erase_clouds
    
    bl nubes11
    bl sleep
    bl erase_clouds
    
    bl nubes12
    bl sleep
    bl erase_clouds

    bl nubes13
    bl sleep
    bl erase_clouds
    
    bl nubes14
    bl sleep
    bl erase_clouds

    bl nubes15
    bl sleep
    bl erase_clouds

    bl nubes16
    bl sleep
    bl erase_clouds

    bl nubes17
    bl sleep
    bl erase_clouds

    bl nubes18
    bl sleep
    bl erase_clouds

    bl nubes19
    bl sleep
    bl erase_clouds

    bl nubes20
    bl sleep
    bl erase_clouds

    bl nubes21
    bl sleep
    bl erase_clouds

    bl nubes22
    bl sleep
    bl erase_clouds

    bl nubes23
    bl sleep
    bl erase_clouds

    bl nubes24
    bl sleep
    bl erase_clouds

    bl nubes25
    bl sleep
    bl erase_clouds


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
