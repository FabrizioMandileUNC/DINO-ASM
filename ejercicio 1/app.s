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
    // x0 contiene la dirección base del framebuffer
    mov x20, x0 // Guarda la dirección base del framebuffer en x20

    //---------------- CODE HERE ------------------------------------
    // ------------------- PAINTING THE BACKGROUND -------------------
    
    // SKY:
    ldr x10, cielo

    mov x2, 290         // Y Size
loop1:
    mov x1, 640         // X Size
loop0:
    str w10, [x0]  // Colorear el pixel N
    add x0, x0, 4   // Siguiente pixel
    sub x1, x1, 1   // Decrementar contador X
    cbnz x1, loop0  // Si no terminó la fila, salto
    sub x2, x2, 1   // Decrementar contador Y
    cbnz x2, loop1  // Si no es la última fila, salto
    
    // FLOOR
    ldr x10, arena 

    mov x2, SCREEN_HEIGHT - 290  
loop2:
    mov x1, SCREEN_WIDTH        
loop3:
    str w10, [x0]  // Colorear el pixel N
    add x0, x0, 4  // Siguiente pixel
    sub x1, x1, 1  // Decrementar contador X
    cbnz x1, loop3 // Si no terminó la fila, salto
    sub x2, x2, 1  // Decrementar contador Y
    cbnz x2, loop2 // Si no es la última fila, salto

    //-------------------------- Details of floor -------------------
    mov x0, x20
    mov x1, 56
    mov x2, 300
    mov x3, 60
    mov x4, 300
    movz w10, 0x08
    movk w10, 0xFC4B, lsl 16

    bl draw_line_straight

    mov x0, x20
    mov x1, 106
    mov x2, 297
    mov x3, 110
    mov x4, 297
    movz w10, 0x08
    movk w10, 0xFC4B, lsl 16
    bl draw_line_straight

    mov x0, x20
    mov x1, 156
    mov x2, 293
    mov x3, 159
    mov x4, 293
    movz w10, 0x08
    movk w10, 0xFC4B, lsl 16
    bl draw_line_straight

    mov x0, x20
    mov x1, 206
    mov x2, 291
    mov x3, 209
    mov x4, 291
    movz w10, 0x08
    movk w10, 0xFC4B, lsl 16
    bl draw_line_straight

    mov x0, x20
    mov x1, 256
    mov x2, 294
    mov x3, 259
    mov x4, 294
    movz w10, 0x08
    movk w10, 0xFC4B, lsl 16
    bl draw_line_straight

    mov x0, x20
    mov x1, 306
    mov x2, 292
    mov x3, 312
    mov x4, 292
    movz w10, 0x08
    movk w10, 0xFC4B, lsl 16
    bl draw_line_straight

    mov x0, x20
    mov x1, 82
    mov x2, 294
    mov x3, 88
    mov x4, 294
    movz w10, 0x08
    movk w10, 0xFC4B, lsl 16
    bl draw_line_straight 

    mov x0, x20
    mov x1, 400
    mov x2, 295
    mov x3, 404
    mov x4, 295
    movz w10, 0x08
    movk w10, 0xFC4B, lsl 16
    bl draw_line_straight   

    mov x0, x20
    mov x1, 355
    mov x2, 299
    mov x3, 360
    mov x4, 303
    movz w10, 0x08
    movk w10, 0xFC4B, lsl 16
    bl draw_line_straight

    mov x0, x20
    mov x1, 367
    mov x2, 300
    mov x3, 373
    mov x4, 300
    movz w10, 0x08
    movk w10, 0xFC4B, lsl 16
    bl draw_line_straight

    mov x0, x20
    mov x1, 378
    mov x2, 296
    mov x3, 381
    mov x4, 296
    movz w10, 0x08
    movk w10, 0xFC4B, lsl 16
    bl draw_line_straight

    mov x0, x20
    mov x1, 433
    mov x2, 299
    mov x3, 438
    mov x4, 299
    movz w10, 0x08
    movk w10, 0xFC4B, lsl 16
    bl draw_line_straight

    mov x0, x20
    mov x1, 500
    mov x2, 295
    mov x3, 509
    mov x4, 295
    movz w10, 0x08
    movk w10, 0xFC4B, lsl 16
    bl draw_line_straight

    mov x0, x20
    mov x1, 542
    mov x2, 297
    mov x3, 547
    mov x4, 297
    movz w10, 0x08
    movk w10, 0xFC4B, lsl 16
    bl draw_line_straight

    //-------------------------- Outline of floor -------------------
    // Llamada a draw_line_straight para dibujar una línea horizontal
    mov x0, x20         // Dirección base del framebuffer
    mov x1, 1        // Coordenada x inicial
    mov x2, 289         // Coordenada y inicial
    mov x3, 639         // Coordenada x final
    mov x4, 289        // Coordenada y final
    movz w10, 0x08             
    movk w10, 0xFC4B, lsl 16     
    bl draw_line_straight // Llama a la función draw_line_straight
    
// -------------------DRAWS-----------------------
    bl cactus1
    bl nubes
    bl montañitas
    bl dino

   
InfLoop:
    b InfLoop
