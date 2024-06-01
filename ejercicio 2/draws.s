.ifndef draws_s
.equ draws_s, 0
.equ SCREEN_WIDTH, 640
.equ SCREEN_HEIGHT, 480
.include "colors.s"
.include "graphics.s"
    
draw_background:
    // ------------------- PAINTING THE BACKGROUND -------------------
    SUB SP, SP, #40
    STR X1, [SP]
    STR X2, [SP, #8]
    STR X3, [SP, #16]
    STR X4, [SP, #24]
    STR X30, [SP, #32]

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

  

    //-------------------------- Outline of floor -------------------
    // Llamada a draw_line_straight para dibujar una línea horizontal
    mov x0, x20     
    mov x1, 1           // Coordenada x inicial
    mov x2, 289         // Coordenada y inicial
    mov x3, 639         // Coordenada x final
    mov x4, 289         // Coordenada y final
    movz w10, 0x08             
    movk w10, 0xFC4B, lsl 16     
    bl draw_line_straight // Llama a la función draw_line_straight
    
    LDR X30, [SP, #32]
    LDR X4, [SP, #24]
    LDR X3, [SP, #16]
    LDR X2, [SP, #8]
    LDR X1, [SP]
    ADD SP, SP, #40
    ret
    
details_floor: 
    
    SUB SP, SP, #40
    STR X1, [SP]
    STR X2, [SP, #8]
    STR X3, [SP, #16]
    STR X4, [SP, #24]
    STR X30, [SP, #32]
    
    mov x1, 56
    mov x2, 300
    mov x3, 60
    mov x4, 300
    movz w10, 0x08
    movk w10, 0xFC4B, lsl 16

    bl draw_line_straight

    mov x1, 106
    mov x2, 297
    mov x3, 110
    mov x4, 297
    movz w10, 0x08
    movk w10, 0xFC4B, lsl 16
    bl draw_line_straight

    mov x1, 156
    mov x2, 293
    mov x3, 159
    mov x4, 293
    movz w10, 0x08
    movk w10, 0xFC4B, lsl 16
    bl draw_line_straight

    mov x1, 206
    mov x2, 291
    mov x3, 209
    mov x4, 291
    movz w10, 0x08
    movk w10, 0xFC4B, lsl 16
    bl draw_line_straight

    mov x1, 256
    mov x2, 294
    mov x3, 259
    mov x4, 294
    movz w10, 0x08
    movk w10, 0xFC4B, lsl 16
    bl draw_line_straight

    mov x1, 306
    mov x2, 292
    mov x3, 312
    mov x4, 292
    movz w10, 0x08
    movk w10, 0xFC4B, lsl 16
    bl draw_line_straight

    mov x1, 82
    mov x2, 294
    mov x3, 88
    mov x4, 294
    movz w10, 0x08
    movk w10, 0xFC4B, lsl 16
    bl draw_line_straight 

    mov x1, 400
    mov x2, 295
    mov x3, 404
    mov x4, 295
    movz w10, 0x08
    movk w10, 0xFC4B, lsl 16
    bl draw_line_straight   

    mov x1, 355
    mov x2, 299
    mov x3, 360
    mov x4, 303
    movz w10, 0x08
    movk w10, 0xFC4B, lsl 16
    bl draw_line_straight

    mov x1, 367
    mov x2, 300
    mov x3, 373
    mov x4, 300
    movz w10, 0x08
    movk w10, 0xFC4B, lsl 16
    bl draw_line_straight

    mov x1, 378
    mov x2, 296
    mov x3, 381
    mov x4, 296
    movz w10, 0x08
    movk w10, 0xFC4B, lsl 16
    bl draw_line_straight

    mov x1, 433
    mov x2, 299
    mov x3, 438
    mov x4, 299
    movz w10, 0x08
    movk w10, 0xFC4B, lsl 16
    bl draw_line_straight

    mov x1, 500
    mov x2, 295
    mov x3, 509
    mov x4, 295
    movz w10, 0x08
    movk w10, 0xFC4B, lsl 16
    bl draw_line_straight

    mov x1, 542
    mov x2, 297
    mov x3, 547
    mov x4, 297
    movz w10, 0x08
    movk w10, 0xFC4B, lsl 16
    bl draw_line_straight
    
    LDR X30, [SP, #32]
    LDR X4, [SP, #24]
    LDR X3, [SP, #16]
    LDR X2, [SP, #8]
    LDR X1, [SP]
    ADD SP, SP, #40
    
    ret

cactus1: 
    SUB SP, SP, #40
    STR X1, [SP]
    STR X2, [SP, #8]
    STR X3, [SP, #16]
    STR X4, [SP, #24]
    STR X30, [SP, #32]
     //----------CACTUS1-----------------
    //BASE DEL CACTUS
    
    mov x1, 240
    mov x2, 238
    mov x3, 254
    mov x4, 288
    ldr x10, verde
    bl draw_rectangle
    //Brazo izquierdo del cactus
    
    mov x1, 224
    mov x2, 254
    mov x3, 240
    mov x4, 262
    ldr x10, verde
    bl draw_rectangle
    
    mov x1, 224
    mov x2, 246
    mov x3, 232
    mov x4, 254
    ldr x10, verde
    bl draw_rectangle
   //Brazo derecho del cactus
    
    mov x1, 254
    mov x2, 250
    mov x3, 270
    mov x4, 258
    ldr x10, verde
    bl draw_rectangle
    
    mov x1, 260
    mov x2, 242
    mov x3, 270
    mov x4, 258
    ldr x10, verde
    bl draw_rectangle

    //Pintamos pixeles para darle un "redondeo al cactus"

    mov x1, 240
    mov x2, 238
    ldr x10, cielo
    bl draw_pixel
    
    mov x1, 240
    mov x2, 239
    ldr x10, cielo
    bl draw_pixel
    
    mov x1, 241
    mov x2, 238
    ldr x10, cielo
    bl draw_pixel
    
    mov x1, 254
    mov x2, 238
    ldr x10, cielo
    bl draw_pixel
    
    mov x1, 253
    mov x2, 238
    ldr x10, cielo
    bl draw_pixel
    
    mov x1, 254
    mov x2, 239
    ldr x10, cielo
    bl draw_pixel
    
    mov x1, 260
    mov x2, 242
    ldr x10, cielo
    bl draw_pixel
    
    mov x1, 261
    mov x2, 242
    ldr x10, cielo
    bl draw_pixel
    
    mov x1, 260
    mov x2, 243
    ldr x10, cielo
    bl draw_pixel
    
    mov x1, 224
    mov x2, 246
    ldr x10, cielo
    bl draw_pixel
    
    mov x1, 225
    mov x2, 246
    ldr x10, cielo
    bl draw_pixel
    
    mov x1, 224
    mov x2, 247
    ldr x10, cielo
    bl draw_pixel
    
    mov x1, 225
    mov x2, 263
    ldr x10, cielo
    bl draw_pixel
    
    mov x1, 224
    mov x2, 263
    ldr x10, cielo
    bl draw_pixel
    
    mov x1, 224
    mov x2, 262
    ldr x10, cielo
    bl draw_pixel
    
    mov x1, 270
    mov x2, 258
    ldr x10, cielo
    bl draw_pixel
    
    mov x1, 270
    mov x2, 257
    ldr x10, cielo
    bl draw_pixel
    
    mov x1, 269
    mov x2, 258
    ldr x10, cielo
    bl draw_pixel

//cactus2
    
    mov x1, 421
    mov x2, 252
    mov x3, 431
    mov x4, 288
    ldr x10, verde
    bl draw_rectangle

   //brazo izquierdo
    mov x1, 408
    mov x2, 260
    mov x3, 421
    mov x4, 267
    ldr x10, verde
    bl draw_rectangle
    
    mov x1, 408
    mov x2, 253
    mov x3, 414
    mov x4, 260
    ldr x10, verde
    bl draw_rectangle

    //brazo derecho    
    mov x1, 431
    mov x2, 264
    mov x3, 442
    mov x4, 271
    ldr x10, verde
    bl draw_rectangle

    mov x1, 436
    mov x2, 258
    mov x3, 442
    mov x4, 271
    ldr x10, verde
    bl draw_rectangle

    //"redondeo de cactus2"
    mov x1, 421
    mov x2, 252
    ldr x10, cielo
    bl draw_pixel
    
    mov x1, 421
    mov x2, 253
    ldr x10, cielo
    bl draw_pixel
    
    mov x1, 422
    mov x2, 252
    ldr x10, cielo
    bl draw_pixel
    
    mov x1, 431
    mov x2, 252
    ldr x10, cielo
    bl draw_pixel
    
    mov x1, 431
    mov x2, 253
    ldr x10, cielo
    bl draw_pixel
    
    mov x1, 430
    mov x2, 252
    ldr x10, cielo
    bl draw_pixel
    
    mov x1, 408
    mov x2, 253
    ldr x10, cielo
    bl draw_pixel
    
    mov x1, 408
    mov x2, 254
    ldr x10, cielo
    bl draw_pixel
    
    mov x1, 409
    mov x2, 253
    ldr x10, cielo
    bl draw_pixel
    
    mov x1, 414
    mov x2, 253
    ldr x10, cielo
    bl draw_pixel
    
    mov x1, 414
    mov x2, 254
    ldr x10, cielo
    bl draw_pixel
    
    mov x1, 436
    mov x2, 258
    ldr x10, cielo
    bl draw_pixel
    
    mov x1, 437
    mov x2, 258
    ldr x10, cielo
    bl draw_pixel
    
    mov x1, 442
    mov x2, 258
    ldr x10, cielo
    bl draw_pixel

    mov x1, 442
    mov x2, 259
    ldr x10, cielo
    bl draw_pixel
    
    mov x1, 410
    mov x2, 268
    ldr x10, cielo
    bl draw_pixel
    
    mov x1, 409
    mov x2, 268
    ldr x10, cielo
    bl draw_pixel
    
    mov x1, 409
    mov x2, 268
    ldr x10, cielo
    bl draw_pixel
    
    mov x1, 408
    mov x2, 268
    ldr x10, cielo
    bl draw_pixel
    
    mov x1, 408
    mov x2, 267
    ldr x10, cielo
    bl draw_pixel
    
    mov x1, 441
    mov x2, 271
    ldr x10, cielo
    bl draw_pixel
    
    mov x1, 442
    mov x2, 271
    ldr x10, cielo
    bl draw_pixel
    
    mov x1, 442
    mov x2, 270
    ldr x10, cielo
    bl draw_pixel

//cactus3
    
    mov x1, 464
    mov x2, 252
    mov x3, 475
    mov x4, 288
    ldr x10, verde
    bl draw_rectangle

   //brazo izquierdo
    mov x1, 451
    mov x2, 260
    mov x3, 464
    mov x4, 267
    ldr x10, verde
    bl draw_rectangle
    
    mov x1, 451
    mov x2, 253
    mov x3, 457
    mov x4, 260
    ldr x10, verde
    bl draw_rectangle
    //brazo derecho
    
    mov x1, 475
    mov x2, 264
    mov x3, 486
    mov x4, 271
    ldr x10, verde
    bl draw_rectangle

    mov x1, 480
    mov x2, 258
    mov x3, 486
    mov x4, 271
    ldr x10, verde
    bl draw_rectangle

    //"redondeo de cactus3"    
    mov x1, 464
    mov x2, 252
    ldr x10, cielo
    bl draw_pixel
    
    mov x1, 464
    mov x2, 253
    ldr x10, cielo
    bl draw_pixel
    
    mov x1, 465
    mov x2, 252
    ldr x10, cielo
    bl draw_pixel
    
    mov x1, 475
    mov x2, 252
    ldr x10, cielo
    bl draw_pixel
    
    mov x1, 475
    mov x2, 253
    ldr x10, cielo
    bl draw_pixel
    
    mov x1, 474
    mov x2, 252
    ldr x10, cielo
    bl draw_pixel
    
    mov x1, 451
    mov x2, 253
    ldr x10, cielo
    bl draw_pixel
    
    mov x1, 451
    mov x2, 254
    ldr x10, cielo
    bl draw_pixel
    
    mov x1, 452
    mov x2, 253
    ldr x10, cielo
    bl draw_pixel
    
    mov x1, 457
    mov x2, 253
    ldr x10, cielo
    bl draw_pixel
    
    mov x1, 456
    mov x2, 253
    ldr x10, cielo
    bl draw_pixel
    
    mov x1, 480
    mov x2, 258
    ldr x10, cielo
    bl draw_pixel

    mov x1, 481
    mov x2, 258
    ldr x10, cielo
    bl draw_pixel

    mov x1, 480
    mov x2, 259
    ldr x10, cielo
    bl draw_pixel

    mov x1, 486
    mov x2, 258
    ldr x10, cielo
    bl draw_pixel

    mov x1, 485
    mov x2, 258
    ldr x10, cielo
    bl draw_pixel
    
    mov x1, 452
    mov x2, 268
    ldr x10, cielo
    bl draw_pixel
    
    mov x1, 451
    mov x2, 268
    ldr x10, cielo
    bl draw_pixel
    
    mov x1, 451
    mov x2, 267
    ldr x10, cielo
    bl draw_pixel
    
    mov x1, 486
    mov x2, 271
    ldr x10, cielo
    bl draw_pixel

    mov x1, 486
    mov x2, 272
    ldr x10, cielo
    bl draw_pixel
    
    mov x1, 485
    mov x2, 272
    ldr x10, cielo
    bl draw_pixel
    LDR X30, [SP, #32]
    LDR X4, [SP, #24]
    LDR X3, [SP, #16]
    LDR X2, [SP, #8]
    LDR X1, [SP]
    ADD SP, SP, #40

    ret
nubes:
    SUB SP, SP, #40
    STR X1, [SP]
    STR X2, [SP, #8]
    STR X3, [SP, #16]
    STR X4, [SP, #24]
    STR X30, [SP, #32]
    //----------NUBE1-----------------
    // Base de la nube 
    // Llamada a draw_line_straight para dibujar base de la nube
    mov x1, 94        // Coordenada x inicial
    mov x2, 61         // Coordenada y inicial
    mov x3, 137         // Coordenada x final
    mov x4, 61        // Coordenada y final
    ldr w10, gris             
    bl draw_line_straight
    
    // Parte de arriba de la nube
    mov x1, 89
    mov x2, 59
    ldr x10, gris
    bl draw_pixel

    mov x1, 90
    mov x2, 58
    ldr x10, gris
    bl draw_pixel
    
    mov x1, 90
    mov x2, 57
    ldr x10, gris
    bl draw_pixel
    
    mov x1, 93
    mov x2, 56
    ldr x10, gris
    bl draw_pixel
    
    mov x1, 93
    mov x2, 55
    ldr x10, gris
    bl draw_pixel
    
    mov x1, 94
    mov x2, 55
    ldr x10, gris
    bl draw_pixel

    mov x1, 94
    mov x2, 54
    ldr x10, gris
    bl draw_pixel

    mov x1, 95        // Coordenada x inicial
    mov x2, 53         // Coordenada y inicial
    mov x3, 103         // Coordenada x final
    mov x4, 56        // Coordenada y final
    ldr w10, gris             
    bl draw_horizontal_line

    mov x1, 103        // Coordenada x inicial
    mov x2, 52         // Coordenada y inicial
    mov x3, 105         // Coordenada x final
    mov x4, 52        // Coordenada y final
    ldr w10, gris             
    bl draw_horizontal_line

    mov x1, 105
    mov x2, 51
    ldr x10, gris
    bl draw_pixel

    mov x1, 106        // Coordenada x inicial
    mov x2, 51         // Coordenada y inicial
    mov x3, 106         // Coordenada x final
    mov x4, 49        // Coordenada y final
    ldr w10, gris             
    bl draw_vertical_line

    mov x1, 107        // Coordenada x inicial
    mov x2, 49         // Coordenada y inicial
    mov x3, 107         // Coordenada x final
    mov x4, 48        // Coordenada y final
    ldr w10, gris             
    bl draw_vertical_line

    mov x1, 108        // Coordenada x inicial
    mov x2, 48         // Coordenada y inicial
    mov x3, 108         // Coordenada x final
    mov x4, 47        // Coordenada y final
    ldr w10, gris             
    bl draw_vertical_line

    mov x1, 109
    mov x2, 47
    ldr x10, gris
    bl draw_pixel

    mov x1, 109        // Coordenada x inicial
    mov x2, 46         // Coordenada y inicial
    mov x3, 111         // Coordenada x final
    mov x4, 46        // Coordenada y final
    ldr w10, gris             
    bl draw_horizontal_line

    mov x1, 111        // Coordenada x inicial
    mov x2, 45         // Coordenada y inicial
    mov x3, 113         // Coordenada x final
    mov x4, 45        // Coordenada y final
    ldr w10, gris             
    bl draw_horizontal_line
    
    mov x1, 113
    mov x2, 44
    ldr x10, gris
    bl draw_pixel

    mov x1, 114        // Coordenada x inicial
    mov x2, 44         // Coordenada y inicial
    mov x3, 114         // Coordenada x final
    mov x4, 42        // Coordenada y final
    ldr w10, gris             
    bl draw_vertical_line

    mov x1, 115        // Coordenada x inicial
    mov x2, 43         // Coordenada y inicial
    mov x3, 117         // Coordenada x final
    mov x4, 43        // Coordenada y final
    ldr w10, gris             
    bl draw_horizontal_line

    mov x1, 117        // Coordenada x inicial
    mov x2, 44         // Coordenada y inicial
    mov x3, 119         // Coordenada x final
    mov x4, 44        // Coordenada y final
    ldr w10, gris             
    bl draw_horizontal_line

    mov x1, 119        // Coordenada x inicial
    mov x2, 45         // Coordenada y inicial
    mov x3, 121         // Coordenada x final
    mov x4, 45        // Coordenada y final
    ldr w10, gris             
    bl draw_horizontal_line

    mov x1, 121
    mov x2, 46
    ldr x10, gris
    bl draw_pixel

    mov x1, 121
    mov x2, 47
    ldr x10, gris
    bl draw_pixel

    mov x1, 122
    mov x2, 47
    ldr x10, gris
    bl draw_pixel

    mov x1, 122
    mov x2, 48
    ldr x10, gris
    bl draw_pixel

    mov x1, 123
    mov x2, 48
    ldr x10, gris
    bl draw_pixel

    mov x1, 123
    mov x2, 49
    ldr x10, gris
    bl draw_pixel

    mov x1, 124
    mov x2, 49
    ldr x10, gris
    bl draw_pixel
    
    mov x1, 124
    mov x2, 50
    ldr x10, gris
    bl draw_pixel

    mov x1, 125
    mov x2, 50
    ldr x10, gris
    bl draw_pixel

    mov x1, 126        // Coordenada x inicial
    mov x2, 51         // Coordenada y inicial
    mov x3, 129         // Coordenada x final
    mov x4, 51        // Coordenada y final
    ldr w10, gris             
    bl draw_horizontal_line

    mov x1, 130        // Coordenada x inicial
    mov x2, 52         // Coordenada y inicial
    mov x3, 132         // Coordenada x final
    mov x4, 52        // Coordenada y final
    ldr w10, gris             
    bl draw_horizontal_line
    
    mov x1, 132
    mov x2, 53
    ldr x10, gris
    bl draw_pixel

    mov x1, 133        // Coordenada x inicial
    mov x2, 53         // Coordenada y inicial
    mov x3, 133         // Coordenada x final
    mov x4, 55        // Coordenada y final
    ldr w10, gris             
    bl draw_vertical_line

    mov x1, 134
    mov x2, 55
    ldr x10, gris
    bl draw_pixel

    mov x1, 134
    mov x2, 56
    ldr x10, gris
    bl draw_pixel

    mov x1, 135
    mov x2, 56
    ldr x10, gris
    bl draw_pixel
    
    mov x1, 135
    mov x2, 57
    ldr x10, gris
    bl draw_pixel

    mov x1, 136
    mov x2, 57
    ldr x10, gris
    bl draw_pixel
    
    mov x1, 137
    mov x2, 58
    ldr x10, gris
    bl draw_pixel

    mov x1, 138
    mov x2, 59
    ldr x10, gris
    bl draw_pixel
    
    mov x1, 138
    mov x2, 60
    ldr x10, gris
    bl draw_pixel

    // ------------NUBE2-----------------
    // Base de la nube 
    // Llamada a draw_line_straight para dibujar base de la nube

    mov x1, 328        // Coordenada x inicial
    mov x2, 30         // Coordenada y inicial
    mov x3, 371         // Coordenada x final
    mov x4, 30        // Coordenada y final
    ldr w10, gris             
    bl draw_horizontal_line
    
    // Parte de arriba de la nube
    
    mov x1, 323     // 89 + 234
    mov x2, 28      // 59 - 31
    ldr x10, gris
    bl draw_pixel
    
    mov x1, 324     // 90 + 234
    mov x2, 27      // 58 - 31
    ldr x10, gris
    bl draw_pixel
    
    mov x1, 324     // 90 + 234
    mov x2, 26      // 57 - 31
    ldr x10, gris
    bl draw_pixel
    
    mov x1, 327     // 93 + 234
    mov x2, 25      // 56 - 31
    ldr x10, gris
    bl draw_pixel

    mov x1, 327     // 93 + 234
    mov x2, 24      // 55 - 31
    ldr x10, gris
    bl draw_pixel

    mov x1, 328     // 94 + 234
    mov x2, 24      // 55 - 31
    ldr x10, gris
    bl draw_pixel
    
    mov x1, 328     // 94 + 234
    mov x2, 23      // 54 - 31
    ldr x10, gris
    bl draw_pixel

    mov x1, 329        // Coordenada x inicial
    mov x2, 22         // Coordenada y inicial
    mov x3, 337        // Coordenada x final
    mov x4, 25         // Coordenada y final
    ldr w10, gris             
    bl draw_horizontal_line

    mov x1, 337        // Coordenada x inicial
    mov x2, 21         // Coordenada y inicial
    mov x3, 339        // Coordenada x final
    mov x4, 21         // Coordenada y final    
    ldr w10, gris             
    bl draw_horizontal_line
    
    mov x1, 339        // 105 + 234
    mov x2, 20         // 51 - 31
    ldr x10, gris
    bl draw_pixel

    mov x1, 340        // Coordenada x inicial
    mov x2, 20         // Coordenada y inicial
    mov x3, 340        // Coordenada x final
    mov x4, 18         // Coordenada y final
    ldr w10, gris             
    bl draw_vertical_line
   
    mov x1, 341        // 107 + 234
    mov x2, 18         // 49 - 31
    mov x3, 341        // 107 + 234
    mov x4, 17         // 48 - 31
    ldr w10, gris             
    bl draw_vertical_line

    mov x1, 342        // 108 + 234
    mov x2, 17         // 48 - 31
    mov x3, 342        // 108 + 234
    mov x4, 16         // 47 - 31
    ldr w10, gris             
    bl draw_vertical_line
    
    mov x1, 343        // 109 + 234
    mov x2, 16         // 47 - 31
    ldr x10, gris
    bl draw_pixel

    mov x1, 343        // 109 + 234
    mov x2, 15         // 46 - 31
    mov x3, 345        // 111 + 234
    mov x4, 15         // 46 - 31
    ldr w10, gris             
    bl draw_horizontal_line

    mov x1, 345        // 111 + 234
    mov x2, 14         // 45 - 31
    mov x3, 347        // 113 + 234
    mov x4, 14         // 45 - 31
    ldr w10, gris             
    bl draw_horizontal_line
    
    mov x1, 347        // 113 + 234
    mov x2, 13         // 44 - 31
    ldr x10, gris
    bl draw_pixel

    mov x1, 348        // 114 + 234
    mov x2, 13         // 44 - 31
    mov x3, 348        // 114 + 234 
    mov x4, 11         // 42 - 31
    ldr w10, gris             
    bl draw_vertical_line

    mov x1, 349        // 115 + 234
    mov x2, 12         // 43 - 31
    mov x3, 351        // 117 + 234
    mov x4, 12         // 43 - 31
    ldr w10, gris             
    bl draw_horizontal_line

    mov x1, 351        // 117 + 234
    mov x2, 13         // 44 - 31   
    mov x3, 353        // 119 + 234 
    mov x4, 13         // 44 - 31   
    ldr w10, gris             
    bl draw_horizontal_line

    mov x1, 353        // 119 + 234
    mov x2, 14         // 45 - 31
    mov x3, 355        // 121 + 234
    mov x4, 14         // 45 - 31
    ldr w10, gris             
    bl draw_horizontal_line
    
    mov x1, 355    // 121 + 234
    mov x2, 15     // 46 - 31
    ldr x10, gris
    bl draw_pixel
    
    mov x1, 355    // 121 + 234
    mov x2, 16     // 47 - 31
    ldr x10, gris
    bl draw_pixel
    
    mov x1, 356    // 122 + 234
    mov x2, 16     // 47 - 31
    ldr x10, gris
    bl draw_pixel
    
    mov x1, 356    // 122 + 234
    mov x2, 17     // 48 - 31
    ldr x10, gris
    bl draw_pixel
    
    mov x1, 357    // 123 + 234
    mov x2, 17     // 48 - 31
    ldr x10, gris
    bl draw_pixel
    
    mov x1, 357    // 123 + 234
    mov x2, 18     // 49 - 31
    ldr x10, gris
    bl draw_pixel
    
    mov x1, 358    // 124 + 234
    mov x2, 18     // 49 - 31
    ldr x10, gris
    bl draw_pixel
    
    mov x1, 358    // 124 + 234
    mov x2, 19     // 50 - 31
    ldr x10, gris
    bl draw_pixel
    
    mov x1, 359    // 125 + 234
    mov x2, 19     // 50 - 31
    ldr x10, gris
    bl draw_pixel

    mov x1, 360        // 126 + 234 // Coordenada x inicial
    mov x2, 20         // 51 - 31   // Coordenada y inicial
    mov x3, 363        // 129 + 234 // Coordenada x final
    mov x4, 20         // 51 - 31   // Coordenada y final
    ldr w10, gris
    bl draw_horizontal_line

    mov x1, 364        // 130 + 234 // Coordenada x inicial
    mov x2, 21         // 52 - 31   // Coordenada y inicial
    mov x3, 366        // 132 + 234 // Coordenada x final
    mov x4, 21         // 52 - 31   // Coordenada y final
    ldr w10, gris
    bl draw_horizontal_line

    mov x1, 366        // 132 + 234
    mov x2, 22         // 53 - 31
    ldr x10, gris
    bl draw_pixel

    mov x1, 367        // 133 + 234 // Coordenada x inicial
    mov x2, 22         // 53 - 31   // Coordenada y inicial
    mov x3, 367        // 133 + 234 // Coordenada x final
    mov x4, 24         // 55 - 31   // Coordenada y final
    ldr w10, gris
    bl draw_vertical_line
    
    mov x1, 368        // 134 + 234
    mov x2, 24         // 55 - 31
    ldr x10, gris
    bl draw_pixel
    
    mov x1, 368        // 134 + 234
    mov x2, 25         // 56 - 31
    ldr x10, gris
    bl draw_pixel
    
    mov x1, 369        // 135 + 234
    mov x2, 25         // 56 - 31
    ldr x10, gris
    bl draw_pixel
    
    mov x1, 369        // 135 + 234
    mov x2, 26         // 57 - 31
    ldr x10, gris
    bl draw_pixel

    mov x1, 370        // 136 + 234
    mov x2, 26         // 57 - 31
    ldr x10, gris
    bl draw_pixel

    mov x1, 371        // 137 + 234
    mov x2, 27         // 58 - 31
    ldr x10, gris
    bl draw_pixel

    mov x1, 372        // 138 + 234
    mov x2, 28         // 59 - 31
    ldr x10, gris
    bl draw_pixel

    mov x1, 372        // 138 + 234
    mov x2, 29         // 60 - 31
    ldr x10, gris
    bl draw_pixel

    //----------NUBE3-----------------
    // Base de la nube 
    // Llamada a draw_line_straight para dibujar base de la nube

    mov x1, 550        // Coordenada x inicial
    mov x2, 91         // Coordenada y inicial
    mov x3, 593         // Coordenada x final
    mov x4, 91        // Coordenada y final
    ldr w10, gris             
    bl draw_line_straight

    // Parte de arriba de la nube
    
    mov x1, 545
    mov x2, 89
    ldr x10, gris
    bl draw_pixel

    mov x1, 546
    mov x2, 88
    ldr x10, gris
    bl draw_pixel

    mov x1, 546
    mov x2, 87
    ldr x10, gris
    bl draw_pixel
    
    mov x1, 549
    mov x2, 86
    ldr x10, gris
    bl draw_pixel

    mov x1, 549
    mov x2, 85
    ldr x10, gris
    bl draw_pixel
    
    mov x1, 550
    mov x2, 85
    ldr x10, gris
    bl draw_pixel
    
    mov x1, 550
    mov x2, 84
    ldr x10, gris
    bl draw_pixel

    mov x1, 551        // Coordenada x inicial
    mov x2, 83         // Coordenada y inicial
    mov x3, 559         // Coordenada x final
    mov x4, 86        // Coordenada y final
    ldr w10, gris             
    bl draw_horizontal_line

    mov x1, 559        // Coordenada x inicial
    mov x2, 82         // Coordenada y inicial
    mov x3, 561         // Coordenada x final
    mov x4, 82        // Coordenada y final
    ldr w10, gris             
    bl draw_horizontal_line
    
    mov x1, 561
    mov x2, 81
    ldr x10, gris
    bl draw_pixel

    mov x1, 562        // Coordenada x inicial
    mov x2, 81         // Coordenada y inicial
    mov x3, 562         // Coordenada x final
    mov x4, 79        // Coordenada y final
    ldr w10, gris             
    bl draw_vertical_line

    mov x1, 563        // Coordenada x inicial
    mov x2, 79         // Coordenada y inicial
    mov x3, 563         // Coordenada x final
    mov x4, 78        // Coordenada y final
    ldr w10, gris             
    bl draw_vertical_line

    mov x1, 564        // Coordenada x inicial
    mov x2, 78         // Coordenada y inicial
    mov x3, 564         // Coordenada x final
    mov x4, 77        // Coordenada y final
    ldr w10, gris             
    bl draw_vertical_line
    
    mov x1, 565
    mov x2, 77
    ldr x10, gris
    bl draw_pixel

    mov x1, 565        // Coordenada x inicial
    mov x2, 76         // Coordenada y inicial
    mov x3, 567         // Coordenada x final
    mov x4, 76        // Coordenada y final
    ldr w10, gris             
    bl draw_horizontal_line

    mov x1, 567        // Coordenada x inicial
    mov x2, 75         // Coordenada y inicial
    mov x3, 569         // Coordenada x final
    mov x4, 75        // Coordenada y final
    ldr w10, gris             
    bl draw_horizontal_line
    
    mov x1, 569
    mov x2, 74
    ldr x10, gris
    bl draw_pixel

    mov x1, 570        // Coordenada x inicial
    mov x2, 74         // Coordenada y inicial
    mov x3, 570         // Coordenada x final
    mov x4, 72        // Coordenada y final
    ldr w10, gris             
    bl draw_vertical_line

    mov x1, 571        // Coordenada x inicial
    mov x2, 73         // Coordenada y inicial
    mov x3, 573         // Coordenada x final
    mov x4, 73        // Coordenada y final
    ldr w10, gris             
    bl draw_horizontal_line

    mov x1, 573        // Coordenada x inicial
    mov x2, 74         // Coordenada y inicial
    mov x3, 575         // Coordenada x final
    mov x4, 74        // Coordenada y final
    ldr w10, gris             
    bl draw_horizontal_line

    mov x1, 575        // Coordenada x inicial
    mov x2, 75         // Coordenada y inicial
    mov x3, 577         // Coordenada x final
    mov x4, 75        // Coordenada y final
    ldr w10, gris             
    bl draw_horizontal_line
    
    mov x1, 577
    mov x2, 76
    ldr x10, gris
    bl draw_pixel

    mov x1, 577
    mov x2, 77
    ldr x10, gris
    bl draw_pixel
    
    mov x1, 578
    mov x2, 77
    ldr x10, gris
    bl draw_pixel

    mov x1, 578
    mov x2, 78
    ldr x10, gris
    bl draw_pixel
    
    mov x1, 579
    mov x2, 78
    ldr x10, gris
    bl draw_pixel
    
    mov x1, 579
    mov x2, 79
    ldr x10, gris
    bl draw_pixel
    
    mov x1, 580
    mov x2, 79
    ldr x10, gris
    bl draw_pixel
    
    mov x1, 580
    mov x2, 80
    ldr x10, gris
    bl draw_pixel
    
    mov x1, 581
    mov x2, 80
    ldr x10, gris
    bl draw_pixel

    mov x1, 582        // Coordenada x inicial
    mov x2, 81         // Coordenada y inicial
    mov x3, 585         // Coordenada x final
    mov x4, 81        // Coordenada y final
    ldr w10, gris             
    bl draw_horizontal_line

    mov x1, 586        // Coordenada x inicial
    mov x2, 82         // Coordenada y inicial
    mov x3, 588         // Coordenada x final
    mov x4, 82        // Coordenada y final
    ldr w10, gris             
    bl draw_horizontal_line
    
    mov x1, 588
    mov x2, 83
    ldr x10, gris
    bl draw_pixel

    mov x1, 589        // Coordenada x inicial
    mov x2, 83         // Coordenada y inicial
    mov x3, 589         // Coordenada x final
    mov x4, 85        // Coordenada y final
    ldr w10, gris             
    bl draw_vertical_line
    
    mov x1, 590
    mov x2, 85
    ldr x10, gris
    bl draw_pixel
    
    mov x1, 590
    mov x2, 86
    ldr x10, gris
    bl draw_pixel
    
    mov x1, 591
    mov x2, 86
    ldr x10, gris
    bl draw_pixel
    
    mov x1, 591
    mov x2, 87
    ldr x10, gris
    bl draw_pixel
    
    mov x1, 592
    mov x2, 87
    ldr x10, gris
    bl draw_pixel

    mov x1, 593
    mov x2, 88
    ldr x10, gris
    bl draw_pixel
    
    mov x1, 593
    mov x2, 89
    ldr x10, gris
    bl draw_pixel
    
    LDR X30, [SP, #32]
    LDR X4, [SP, #24]
    LDR X3, [SP, #16]
    LDR X2, [SP, #8]
    LDR X1, [SP]
    ADD SP, SP, #40

    ret
montañitas:
    //----------PRIMERA MONTAÑITA DE ARENA-----------------|
    // y = 289 altura piso 
    // Outline de la montaña
    SUB SP, SP, #40
    STR X1, [SP]
    STR X2, [SP, #8]
    STR X3, [SP, #16]
    STR X4, [SP, #24]
    STR X30, [SP, #32]

    mov x1, 4        // Coordenada x inicial
    mov x2, 288         // Coordenada y inicial
    mov x3, 6         // Coordenada x final
    mov x4, 288        // Coordenada y final
    movz w10, 0x08             
    movk w10, 0xFC4B, lsl 16
    bl draw_horizontal_line


    mov x1, 6        // Coordenada x inicial
    mov x2, 287         // Coordenada y inicial
    mov x3, 9         // Coordenada x final
    mov x4, 287        // Coordenada y final
    movz w10, 0x08             
    movk w10, 0xFC4B, lsl 16
    bl draw_horizontal_line

    mov x1, 9        // Coordenada x inicial
    mov x2, 286         // Coordenada y inicial
    mov x3, 11         // Coordenada x final
    mov x4, 286        // Coordenada y final
    movz w10, 0x08             
    movk w10, 0xFC4B, lsl 16
    bl draw_horizontal_line

    mov x1, 11        // Coordenada x inicial
    mov x2, 285         // Coordenada y inicial
    mov x3, 16         // Coordenada x final
    mov x4, 285        // Coordenada y final
    movz w10, 0x08             
    movk w10, 0xFC4B, lsl 16
    bl draw_horizontal_line

    mov x1, 17        // Coordenada x inicial
    mov x2, 286         // Coordenada y inicial
    mov x3, 19         // Coordenada x final
    mov x4, 286        // Coordenada y final
    movz w10, 0x08             
    movk w10, 0xFC4B, lsl 16
    bl draw_horizontal_line

    mov x1, 19        // Coordenada x inicial
    mov x2, 287         // Coordenada y inicial
    mov x3, 21         // Coordenada x final
    mov x4, 287        // Coordenada y final
    movz w10, 0x08             
    movk w10, 0xFC4B, lsl 16
    bl draw_horizontal_line

    mov x1, 21        // Coordenada x inicial
    mov x2, 288         // Coordenada y inicial
    mov x3, 23         // Coordenada x final
    mov x4, 288        // Coordenada y final
    movz w10, 0x08             
    movk w10, 0xFC4B, lsl 16
    bl draw_horizontal_line

    // Relleno del interior de la montaña

    mov x1, 4        // Coordenada x inicial
    mov x2, 289         // Coordenada y inicial
    mov x3, 23         // Coordenada x final
    mov x4, 289        // Coordenada y final
    ldr w10, arena             
    bl draw_horizontal_line

    mov x1, 6        // Coordenada x inicial
    mov x2, 288         // Coordenada y inicial
    mov x3, 21         // Coordenada x final
    mov x4, 288        // Coordenada y final
    ldr w10, arena             
    bl draw_horizontal_line

    mov x1, 9        // Coordenada x inicial
    mov x2, 287         // Coordenada y inicial
    mov x3, 19         // Coordenada x final
    mov x4, 287        // Coordenada y final
    ldr w10, arena             
    bl draw_horizontal_line

    mov x1, 11        // Coordenada x inicial
    mov x2, 286         // Coordenada y inicial
    mov x3, 16         // Coordenada x final
    mov x4, 286        // Coordenada y final
    ldr w10, arena             
    bl draw_horizontal_line

    //----------SEGUNDA MONTAÑITA DE ARENA-----------------|
    // y = 289 altura piso

    mov x1, 104         // 4 + 100   // Coordenada x inicial
    mov x2, 288         // Coordenada y inicial
    mov x3, 106         // 6 + 100   // Coordenada x final
    mov x4, 288         // Coordenada y final
    movz w10, 0x08             
    movk w10, 0xFC4B, lsl 16
    bl draw_horizontal_line

    mov x1, 106         // 6 + 100   // Coordenada x inicial
    mov x2, 287         // Coordenada y inicial
    mov x3, 109         // 9 + 100   // Coordenada x final
    mov x4, 287         // Coordenada y final
    movz w10, 0x08             
    movk w10, 0xFC4B, lsl 16
    bl draw_horizontal_line

    mov x1, 109         // 9 + 100   // Coordenada x inicial
    mov x2, 286         // Coordenada y inicial
    mov x3, 111         // 11 + 100  // Coordenada x final
    mov x4, 286         // Coordenada y final
    movz w10, 0x08             
    movk w10, 0xFC4B, lsl 16
    bl draw_horizontal_line

    mov x1, 111         // 11 + 100  // Coordenada x inicial
    mov x2, 285         // Coordenada y inicial
    mov x3, 116         // 16 + 100  // Coordenada x final
    mov x4, 285         // Coordenada y final
    movz w10, 0x08             
    movk w10, 0xFC4B, lsl 16
    bl draw_horizontal_line

    mov x1, 117         // 17 + 100  // Coordenada x inicial
    mov x2, 286         // Coordenada y inicial
    mov x3, 119         // 19 + 100  // Coordenada x final
    mov x4, 286         // Coordenada y final
    movz w10, 0x08             
    movk w10, 0xFC4B, lsl 16
    bl draw_horizontal_line

    mov x1, 119         // 19 + 100  // Coordenada x inicial
    mov x2, 287         // Coordenada y inicial
    mov x3, 121         // 21 + 100  // Coordenada x final
    mov x4, 287         // Coordenada y final
    movz w10, 0x08             
    movk w10, 0xFC4B, lsl 16
    bl draw_horizontal_line

    mov x1, 121         // 21 + 100  // Coordenada x inicial
    mov x2, 288         // Coordenada y inicial
    mov x3, 123         // 23 + 100  // Coordenada x final
    mov x4, 288         // Coordenada y final
    movz w10, 0x08             
    movk w10, 0xFC4B, lsl 16
    bl draw_horizontal_line

    // Relleno del interior de la montaña
    mov x1, 104         // 4 + 100   // Coordenada x inicial
    mov x2, 289         // Coordenada y inicial
    mov x3, 123         // 23 + 100  // Coordenada x final
    mov x4, 289         // Coordenada y final
    ldr w10, arena             
    bl draw_horizontal_line

    mov x1, 106         // 6 + 100   // Coordenada x inicial
    mov x2, 288         // Coordenada y inicial
    mov x3, 121         // 21 + 100  // Coordenada x final
    mov x4, 288         // Coordenada y final
    ldr w10, arena             
    bl draw_horizontal_line

    mov x1, 109         // 9 + 100   // Coordenada x inicial
    mov x2, 287         // Coordenada y inicial
    mov x3, 119         // 19 + 100  // Coordenada x final
    mov x4, 287         // Coordenada y final
    ldr w10, arena             
    bl draw_horizontal_line

    mov x1, 111         // 11 + 100  // Coordenada x inicial
    mov x2, 286         // Coordenada y inicial
    mov x3, 116         // 16 + 100  // Coordenada x final
    mov x4, 286         // Coordenada y final
    ldr w10, arena             
    bl draw_horizontal_line

    //----------TERCERA MONTAÑITA DE ARENA-----------------|
    // y = 289 altura piso

    mov x1, 404         // 4 + 400   // Coordenada x inicial
    mov x2, 288         // Coordenada y inicial
    mov x3, 406         // 6 + 400   // Coordenada x final
    mov x4, 288         // Coordenada y final
    movz w10, 0x08             
    movk w10, 0xFC4B, lsl 16
    bl draw_horizontal_line

    mov x1, 406         // 6 + 400   // Coordenada x inicial
    mov x2, 287         // Coordenada y inicial
    mov x3, 409         // 9 + 400   // Coordenada x final
    mov x4, 287         // Coordenada y final
    movz w10, 0x08             
    movk w10, 0xFC4B, lsl 16
    bl draw_horizontal_line

    mov x1, 409         // 9 + 400   // Coordenada x inicial
    mov x2, 286         // Coordenada y inicial
    mov x3, 411         // 11 + 400  // Coordenada x final
    mov x4, 286         // Coordenada y final
    movz w10, 0x08             
    movk w10, 0xFC4B, lsl 16
    bl draw_horizontal_line

    mov x1, 411         // 11 + 400  // Coordenada x inicial
    mov x2, 285         // Coordenada y inicial
    mov x3, 416         // 16 + 400  // Coordenada x final
    mov x4, 285         // Coordenada y final
    movz w10, 0x08             
    movk w10, 0xFC4B, lsl 16
    bl draw_horizontal_line

    mov x1, 417         // 17 + 400  // Coordenada x inicial
    mov x2, 286         // Coordenada y inicial
    mov x3, 419         // 19 + 400  // Coordenada x final
    mov x4, 286         // Coordenada y final
    movz w10, 0x08             
    movk w10, 0xFC4B, lsl 16
    bl draw_horizontal_line

    mov x1, 419         // 19 + 400  // Coordenada x inicial
    mov x2, 287         // Coordenada y inicial
    mov x3, 421         // 21 + 400  // Coordenada x final
    mov x4, 287         // Coordenada y final
    movz w10, 0x08             
    movk w10, 0xFC4B, lsl 16
    bl draw_horizontal_line

    mov x1, 421         // 21 + 400  // Coordenada x inicial
    mov x2, 288         // Coordenada y inicial
    mov x3, 423         // 23 + 400  // Coordenada x final
    mov x4, 288         // Coordenada y final
    movz w10, 0x08             
    movk w10, 0xFC4B, lsl 16
    bl draw_horizontal_line
    // Relleno del interior de la montaña
    mov x1, 404         // 4 + 400   // Coordenada x inicial
    mov x2, 289         // Coordenada y inicial
    mov x3, 423         // 23 + 400  // Coordenada x final
    mov x4, 289         // Coordenada y final
    ldr w10, arena             
    bl draw_horizontal_line

    mov x1, 406         // 6 + 400   // Coordenada x inicial
    mov x2, 288         // Coordenada y inicial
    mov x3, 421         // 21 + 400  // Coordenada x final
    mov x4, 288         // Coordenada y final
    ldr w10, arena             
    bl draw_horizontal_line

    mov x1, 409         // 9 + 400   // Coordenada x inicial
    mov x2, 287         // Coordenada y inicial
    mov x3, 419         // 19 + 400  // Coordenada x final
    mov x4, 287         // Coordenada y final
    ldr w10, arena             
    bl draw_horizontal_line

    mov x1, 411         // 11 + 400  // Coordenada x inicial
    mov x2, 286         // Coordenada y inicial
    mov x3, 416         // 16 + 400  // Coordenada x final
    mov x4, 286         // Coordenada y final
    ldr w10, arena             
    bl draw_horizontal_line
    
    LDR X30, [SP, #32]
    LDR X4, [SP, #24]
    LDR X3, [SP, #16]
    LDR X2, [SP, #8]
    LDR X1, [SP]
    ADD SP, SP, #40
    ret

dino:
    //----------DINO-----------------
    // Patas del dino
    // Pata derecha
    SUB SP, SP, #48
    STR X1, [SP]
    STR X2, [SP, #8]
    STR X3, [SP, #16]
    STR X4, [SP, #24]
    STR X30, [SP, #40]

    mov x1, 87        // Coordenada x inicial
    mov x2, 288         // Coordenada y inicial
    mov x3, 96         // Coordenada x final
    mov x4, 288        // Coordenada y final
    ldr w10, verde_oscuro             
    bl draw_line_straight

    mov x1, 87        // Coordenada x inicial
    mov x2, 287         // Coordenada y inicial
    mov x3, 89         // Coordenada x final
    mov x4, 275        // Coordenada y final
    ldr w10, verde_oscuro             
    bl draw_rectangle

    mov x1, 86        // Coordenada x inicial
    mov x2, 280         // Coordenada y inicial
    mov x3, 86         // Coordenada x final
    mov x4, 275        // Coordenada y final
    ldr w10, verde_oscuro             
    bl draw_line_straight

    mov x1, 85        // Coordenada x inicial
    mov x2, 277         // Coordenada y inicial
    mov x3, 85         // Coordenada x final
    mov x4, 275        // Coordenada y final
    ldr w10, verde_oscuro             
    bl draw_line_straight

    mov x1, 89        // Coordenada x inicial
    mov x2, 280         // Coordenada y inicial
    mov x3, 89         // Coordenada x final
    mov x4, 275        // Coordenada y final
    ldr w10, verde_oscuro             
    bl draw_line_straight

    mov x1, 90        // Coordenada x inicial
    mov x2, 278         // Coordenada y inicial
    mov x3, 90         // Coordenada x final
    mov x4, 275        // Coordenada y final
    ldr w10, verde_oscuro             
    bl draw_line_straight

    mov x1, 91        // Coordenada x inicial
    mov x2, 276         // Coordenada y inicial
    mov x3, 91         // Coordenada x final
    mov x4, 275        // Coordenada y final
    ldr w10, verde_oscuro             
    bl draw_line_straight

    // Pata izquierda--------------------------------------------------------------

    mov x1, 82        // Coordenada x inicial
    mov x2, 288         // Coordenada y inicial
    mov x3, 72         // Coordenada x final
    mov x4, 288        // Coordenada y final
    ldr w10, verde_oscuro             
    bl draw_line_straight

    mov x1, 72        // Coordenada x inicial
    mov x2, 287         // Coordenada y inicial
    mov x3, 74         // Coordenada x final
    mov x4, 275        // Coordenada y final
    ldr w10, verde_oscuro             
    bl draw_rectangle

    mov x1, 74        // Coordenada x inicial
    mov x2, 281         // Coordenada y inicial
    mov x3, 74         // Coordenada x final
    mov x4, 275        // Coordenada y final
    ldr w10, verde_oscuro             
    bl draw_line_straight

    mov x1, 75        // Coordenada x inicial
    mov x2, 280         // Coordenada y inicial
    mov x3, 75         // Coordenada x final
    mov x4, 275        // Coordenada y final
    ldr w10, verde_oscuro             
    bl draw_line_straight

    mov x1, 76        // Coordenada x inicial
    mov x2, 279         // Coordenada y inicial
    mov x3, 76         // Coordenada x final
    mov x4, 275        // Coordenada y final
    ldr w10, verde_oscuro             
    bl draw_line_straight

    mov x1, 77        // Coordenada x inicial
    mov x2, 276         // Coordenada y inicial
    mov x3, 78         // Coordenada x final
    mov x4, 276        // Coordenada y final
    ldr w10, verde_oscuro             
    bl draw_line_straight

    // Cuerpo del dino-------------------------------------------------

    mov x1, 72        // Coordenada x inicial
    mov x2, 275         // Coordenada y inicial
    mov x3, 91         // Coordenada x final
    mov x4, 255        // Coordenada y final
    ldr w10, verde_oscuro             
    bl draw_rectangle

    // Cola del dino--------------------------------------------------

    mov x1, 56        // Coordenada x inicial
    mov x2, 243         // Coordenada y inicial
    mov x3, 56         // Coordenada x final
    mov x4, 258        // Coordenada y final
    ldr w10, verde_oscuro             
    bl draw_line_straight

    mov x1, 57        // Coordenada x inicial
    mov x2, 246         // Coordenada y inicial
    mov x3, 57         // Coordenada x final
    mov x4, 259        // Coordenada y final
    ldr w10, verde_oscuro             
    bl draw_line_straight

    mov x1, 58        // Coordenada x inicial
    mov x2, 247         // Coordenada y inicial
    mov x3, 58         // Coordenada x final
    mov x4, 260        // Coordenada y final
    ldr w10, verde_oscuro             
    bl draw_line_straight

    mov x1, 59        // Coordenada x inicial
    mov x2, 248         // Coordenada y inicial
    mov x3, 59         // Coordenada x final
    mov x4, 261        // Coordenada y final
    ldr w10, verde_oscuro             
    bl draw_line_straight

    mov x1, 60        // Coordenada x inicial
    mov x2, 249         // Coordenada y inicial
    mov x3, 60         // Coordenada x final
    mov x4, 262        // Coordenada y final
    ldr w10, verde_oscuro             
    bl draw_line_straight

    mov x1, 61        // Coordenada x inicial
    mov x2, 250         // Coordenada y inicial
    mov x3, 61         // Coordenada x final
    mov x4, 262        // Coordenada y final
    ldr w10, verde_oscuro             
    bl draw_line_straight

    mov x1, 62        // Coordenada x inicial
    mov x2, 251         // Coordenada y inicial
    mov x3, 62         // Coordenada x final
    mov x4, 263        // Coordenada y final
    ldr w10, verde_oscuro             
    bl draw_line_straight

    mov x1, 63        // Coordenada x inicial
    mov x2, 252         // Coordenada y inicial
    mov x3, 63         // Coordenada x final
    mov x4, 264        // Coordenada y final
    ldr w10, verde_oscuro             
    bl draw_line_straight

    mov x1, 64        // Coordenada x inicial
    mov x2, 253         // Coordenada y inicial
    mov x3, 64         // Coordenada x final
    mov x4, 265        // Coordenada y final
    ldr w10, verde_oscuro             
    bl draw_line_straight

    mov x1, 65        // Coordenada x inicial
    mov x2, 254         // Coordenada y inicial
    mov x3, 65         // Coordenada x final
    mov x4, 267        // Coordenada y final
    ldr w10, verde_oscuro             
    bl draw_line_straight

    mov x1, 66        // Coordenada x inicial
    mov x2, 255         // Coordenada y inicial
    mov x3, 66         // Coordenada x final
    mov x4, 268        // Coordenada y final
    ldr w10, verde_oscuro             
    bl draw_line_straight

    mov x1, 67        // Coordenada x inicial
    mov x2, 255         // Coordenada y inicial
    mov x3, 67         // Coordenada x final
    mov x4, 269        // Coordenada y final
    ldr w10, verde_oscuro             
    bl draw_line_straight

    mov x1, 68        // Coordenada x inicial
    mov x2, 255         // Coordenada y inicial
    mov x3, 68         // Coordenada x final
    mov x4, 270        // Coordenada y final
    ldr w10, verde_oscuro             
    bl draw_line_straight

    mov x1, 69        // Coordenada x inicial
    mov x2, 255         // Coordenada y inicial
    mov x3, 69         // Coordenada x final
    mov x4, 272        // Coordenada y final
    ldr w10, verde_oscuro             
    bl draw_line_straight

    mov x1, 70        // Coordenada x inicial
    mov x2, 255         // Coordenada y inicial
    mov x3, 70         // Coordenada x final
    mov x4, 273        // Coordenada y final
    ldr w10, verde_oscuro             
    bl draw_line_straight

    mov x1, 71        // Coordenada x inicial
    mov x2, 255         // Coordenada y inicial
    mov x3, 71         // Coordenada x final
    mov x4, 274        // Coordenada y final
    ldr w10, verde_oscuro             
    bl draw_line_straight

    // Cuello, cabeza y brazo del dino ------------------------------------------

    mov x1, 91        // Coordenada x inicial
    mov x2, 276         // Coordenada y inicial
    mov x3, 91         // Coordenada x final
    mov x4, 249        // Coordenada y final
    ldr w10, verde_oscuro             
    bl draw_line_straight

    mov x1, 92        // Coordenada x inicial
    mov x2, 274         // Coordenada y inicial
    mov x3, 94         // Coordenada x final
    mov x4, 249        // Coordenada y final
    ldr w10, verde_oscuro             
    bl draw_rectangle

    mov x1, 95        // Coordenada x inicial
    mov x2, 273         // Coordenada y inicial
    mov x3, 95         // Coordenada x final
    mov x4, 247        // Coordenada y final
    ldr w10, verde_oscuro             
    bl draw_line_straight

    mov x1, 96        // Coordenada x inicial
    mov x2, 271         // Coordenada y inicial
    mov x3, 96         // Coordenada x final
    mov x4, 248        // Coordenada y final
    ldr w10, verde_oscuro             
    bl draw_line_straight

    mov x1, 97        // Coordenada x inicial
    mov x2, 269         // Coordenada y inicial
    mov x3, 97         // Coordenada x final
    mov x4, 232        // Coordenada y final
    ldr w10, verde_oscuro             
    bl draw_line_straight

    mov x1, 98        // Coordenada x inicial
    mov x2, 268         // Coordenada y inicial
    mov x3, 98         // Coordenada x final
    mov x4, 231        // Coordenada y final
    ldr w10, verde_oscuro             
    bl draw_line_straight

    mov x1, 99        // Coordenada x inicial
    mov x2, 267         // Coordenada y inicial
    mov x3, 99         // Coordenada x final
    mov x4, 231        // Coordenada y final
    ldr w10, verde_oscuro             
    bl draw_line_straight

    mov x1, 100        // Coordenada x inicial
    mov x2, 265         // Coordenada y inicial
    mov x3, 100         // Coordenada x final
    mov x4, 231        // Coordenada y final
    ldr w10, verde_oscuro             
    bl draw_line_straight

    mov x1, 101        // Coordenada x inicial
    mov x2, 264         // Coordenada y inicial
    mov x3, 101         // Coordenada x final
    mov x4, 231        // Coordenada y final
    ldr w10, verde_oscuro             
    bl draw_line_straight

    mov x1, 101        // Coordenada x inicial
    mov x2, 264         // Coordenada y inicial
    mov x3, 101         // Coordenada x final
    mov x4, 231        // Coordenada y final
    ldr w10, verde_oscuro             
    bl draw_line_straight

    mov x1, 102        // Coordenada x inicial
    mov x2, 262         // Coordenada y inicial
    mov x3, 104         // Coordenada x final
    mov x4, 231        // Coordenada y final
    ldr w10, verde_oscuro             
    bl draw_rectangle

    mov x1, 104
    mov x2, 262
    ldr x10, cielo
    bl draw_pixel
    
    mov x1, 95
    mov x2, 247
    ldr x10, cielo
    bl draw_pixel

    mov x1, 76        // Coordenada x inicial
    mov x2, 254         // Coordenada y inicial
    mov x3, 104         // Coordenada x final
    mov x4, 254        // Coordenada y final
    ldr w10, verde_oscuro             
    bl draw_line_straight

    mov x1, 81        // Coordenada x inicial
    mov x2, 253         // Coordenada y inicial
    mov x3, 104         // Coordenada x final
    mov x4, 253        // Coordenada y final
    ldr w10, verde_oscuro             
    bl draw_line_straight

    mov x1, 87        // Coordenada x inicial
    mov x2, 252         // Coordenada y inicial
    mov x3, 104         // Coordenada x final
    mov x4, 252        // Coordenada y final
    ldr w10, verde_oscuro             
    bl draw_line_straight

    mov x1, 88        // Coordenada x inicial
    mov x2, 251         // Coordenada y inicial
    mov x3, 104         // Coordenada x final
    mov x4, 251        // Coordenada y final
    ldr w10, verde_oscuro             
    bl draw_line_straight

    mov x1, 89        // Coordenada x inicial
    mov x2, 250         // Coordenada y inicial
    mov x3, 104         // Coordenada x final
    mov x4, 250        // Coordenada y final
    ldr w10, verde_oscuro             
    bl draw_line_straight

    mov x1, 90        // Coordenada x inicial
    mov x2, 249         // Coordenada y inicial
    mov x3, 104         // Coordenada x final
    mov x4, 249        // Coordenada y final
    ldr w10, verde_oscuro             
    bl draw_line_straight
    
    mov x1, 96        
    mov x2, 248 
    ldr w10, verde_oscuro             
    bl draw_pixel

    mov x1, 105        // Coordenada x inicial
    mov x2, 256         // Coordenada y inicial
    mov x3, 112         // Coordenada x final
    mov x4, 256        // Coordenada y final
    ldr w10, verde_oscuro             
    bl draw_line_straight

    mov x1, 112        // Coordenada x inicial
    mov x2, 257         // Coordenada y inicial
    mov x3, 112         // Coordenada x final
    mov x4, 260        // Coordenada y final
    ldr w10, verde_oscuro             
    bl draw_line_straight

    mov x1, 105        // Coordenada x inicial
    mov x2, 248         // Coordenada y inicial
    mov x3, 115         // Coordenada x final
    mov x4, 248        // Coordenada y final
    ldr w10, verde_oscuro             
    bl draw_line_straight

    mov x1, 105        // Coordenada x inicial
    mov x2, 247         // Coordenada y inicial
    mov x3, 105         // Coordenada x final
    mov x4, 231        // Coordenada y final
    ldr w10, verde_oscuro             
    bl draw_line_straight

    mov x1, 106        // Coordenada x inicial
    mov x2, 244         // Coordenada y inicial
    mov x3, 117         // Coordenada x final
    mov x4, 231        // Coordenada y final
    ldr w10, verde_oscuro             
    bl draw_rectangle

    mov x1, 117        
    mov x2, 231 
    ldr w10, cielo             
    bl draw_pixel

    // OJO -----------------------------------------------------

    mov x1, 102        // Coordenada x inicial
    mov x2, 236         // Coordenada y inicial
    mov x3, 103         // Coordenada x final
    mov x4, 235        // Coordenada y final
    ldr w10, negro             
    bl draw_rectangle
    
    LDR X30, [SP, #40]
    LDR X4, [SP, #24]
    LDR X3, [SP, #16]
    LDR X2, [SP, #8]
    LDR X1, [SP]
    ADD SP, SP, #48

ret

.endif
