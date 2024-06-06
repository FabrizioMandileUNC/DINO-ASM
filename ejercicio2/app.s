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
    bl dino
    bl nubes
    bl sleep
    bl sleep
    bl sleep
    bl sleep
    bl erase_clouds

    bl erase_dino1

    bl nubes2
    bl sleep
    bl sleep
    bl erase_clouds

    bl dino_walk1

    bl nubes3
    bl sleep
    bl sleep
    bl erase_clouds

    bl dino_erase_walk1
    bl montañitas

    bl dino2

    bl nubes4
    bl sleep
    bl sleep
    bl erase_clouds

    bl erase_dino2

    bl dino_jump1

    bl nubes5
    bl sleep
    bl sleep
    bl erase_clouds

    bl dino_erase_jump1

    bl dino_jump2

    bl nubes6
    bl sleep
    bl sleep
    bl erase_clouds

    bl dino_erase_jump2

    bl dino_jump3
    
    bl nubes7
    bl sleep
    bl sleep
    bl erase_clouds

    bl dino_erase_jump3

    bl dino_down1

    bl nubes8
    bl sleep
    bl sleep
    bl erase_clouds

    bl dino_erase_down1

    bl dino_down2

    bl nubes9
    bl sleep
    bl sleep
    bl erase_clouds
    
    bl nubes10
    bl sleep
    bl sleep
    bl erase_clouds

    bl dino_erase_down2

    bl dino_landing1
    
    bl nubes11
    bl sleep
    bl sleep
    bl erase_clouds

    bl dino_erase_landing1

    bl dino_walk3
    
    bl nubes12
    bl sleep
    bl sleep
    bl erase_clouds

    bl dino_erase_walk3

    bl dino_jump4

    bl nubes13
    bl sleep
    bl sleep
    bl erase_clouds

    bl dino_erase_jump4

    bl dino_jump5
    
    bl nubes14
    bl sleep
    bl sleep
    bl erase_clouds

    bl dino_erase_jump5

    bl dino_jump6

    bl nubes15
    bl sleep
    bl sleep
    bl erase_clouds

    bl dino_erase_jump6

    bl dino_jump7

    bl nubes16
    bl sleep
    bl sleep
    bl erase_clouds

    bl dino_erase_jump7

    bl dino_jump8

    bl nubes17
    bl sleep
    bl sleep
    bl erase_clouds

    bl dino_erase_jump8

    bl dino_jump9

    bl nubes18
    bl sleep
    bl sleep
    bl erase_clouds

    bl dino_erase_jump9

    bl dino_jump10

    bl nubes19
    bl sleep
    bl sleep
    bl sleep
    bl sleep
    bl sleep
    bl sleep
    bl erase_clouds

    bl dino_erase_jump10

    bl nubes20
    bl sleep
    bl sleep
    bl erase_clouds

    bl nubes21
    bl sleep
    bl erase_clouds

    bl nubes22
    bl sleep
    bl sleep
    bl erase_clouds

    bl nubes23
    bl sleep
    bl sleep
    bl erase_clouds

    bl nubes24
    bl sleep
    bl sleep
    bl erase_clouds

    bl nubes25
    bl sleep
    bl sleep
    

    bl you
    bl win
    bl sleep
    bl sleep
    bl sleep
    bl sleep
    bl sleep
    bl sleep
    bl sleep
    bl sleep
    bl sleep
    bl sleep
    bl sleep
    bl sleep
    bl erase_you_win
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
