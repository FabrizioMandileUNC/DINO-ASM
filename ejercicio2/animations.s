.ifndef animations_s
.equ animations_s, 0
.equ SCREEN_WIDTH, 640
.equ SCREEN_HEIGHT, 480
.equ PIXEL_LOOP, 30
.include "colors.s"
.include "graphics.s"
.include "draws.s"

erase_clouds:
    SUB SP, SP, #40
    STR X1, [SP]
    STR X2, [SP, #8]
    STR X3, [SP, #16]
    STR X4, [SP, #24]
    STR X30, [SP, #32]
    
    mov x1, 1
    mov x2, 1
    mov x3, 639
    mov x4, 110
    ldr x10, cielo
    bl draw_rectangle

    LDR X30, [SP, #32]
    LDR X4, [SP, #24]
    LDR X3, [SP, #16]
    LDR X2, [SP, #8]
    LDR X1, [SP]
    ADD SP, SP, #40
    ret

nubes2:
    SUB SP, SP, #40
    STR X1, [SP]
    STR X2, [SP, #8]
    STR X3, [SP, #16]
    STR X4, [SP, #24]
    STR X30, [SP, #32]

    //----------NUBE1-----------------
    // Base de la nube 
    // Llamada a draw_line_straight para dibujar base de la nube
    mov x1, 91        // Coordenada x inicial
    mov x2, 61         // Coordenada y inicial
    mov x3, 134         // Coordenada x final
    mov x4, 61        // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight
    
    // Parte de arriba de la nube
    mov x1, 86
    mov x2, 59
    ldr x10, gris
    bl draw_pixel

    mov x1, 87
    mov x2, 58
    ldr x10, gris
    bl draw_pixel
    
    mov x1, 87
    mov x2, 57
    ldr x10, gris
    bl draw_pixel
    
    mov x1, 90
    mov x2, 56
    ldr x10, gris
    bl draw_pixel
    
    mov x1, 90
    mov x2, 55
    ldr x10, gris
    bl draw_pixel
    
    mov x1, 91
    mov x2, 55
    ldr x10, gris
    bl draw_pixel

    mov x1, 91
    mov x2, 54
    ldr x10, gris
    bl draw_pixel

    mov x1, 92       // Coordenada x inicial
    mov x2, 53         // Coordenada y inicial
    mov x3, 100         // Coordenada x final
    mov x4, 56        // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 100       // Coordenada x inicial
    mov x2, 52         // Coordenada y inicial
    mov x3, 102        // Coordenada x final
    mov x4, 52        // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 102
    mov x2, 51
    ldr x10, gris
    bl draw_pixel

    mov x1, 103        // Coordenada x inicial
    mov x2, 51         // Coordenada y inicial
    mov x3, 103     // Coordenada x final
    mov x4, 49        // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 104        // Coordenada x inicial
    mov x2, 49         // Coordenada y inicial
    mov x3, 104         // Coordenada x final
    mov x4, 48        // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 105        // Coordenada x inicial
    mov x2, 48         // Coordenada y inicial
    mov x3, 105         // Coordenada x final
    mov x4, 47        // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 106
    mov x2, 47
    ldr x10, gris
    bl draw_pixel

    mov x1, 106        // Coordenada x inicial
    mov x2, 46         // Coordenada y inicial
    mov x3, 108         // Coordenada x final
    mov x4, 46        // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 108        // Coordenada x inicial
    mov x2, 45         // Coordenada y inicial
    mov x3, 110         // Coordenada x final
    mov x4, 45        // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight
    
    mov x1, 110
    mov x2, 44
    ldr x10, gris
    bl draw_pixel

    mov x1, 111        // Coordenada x inicial
    mov x2, 44         // Coordenada y inicial
    mov x3, 111         // Coordenada x final
    mov x4, 42        // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 112        // Coordenada x inicial
    mov x2, 43         // Coordenada y inicial
    mov x3, 114         // Coordenada x final
    mov x4, 43        // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 114        // Coordenada x inicial
    mov x2, 44         // Coordenada y inicial
    mov x3, 116         // Coordenada x final
    mov x4, 44        // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 116        // Coordenada x inicial
    mov x2, 45         // Coordenada y inicial
    mov x3, 120         // Coordenada x final
    mov x4, 45        // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 118
    mov x2, 46
    ldr x10, gris
    bl draw_pixel

    mov x1, 118
    mov x2, 47
    ldr x10, gris
    bl draw_pixel

    mov x1, 119
    mov x2, 47
    ldr x10, gris
    bl draw_pixel

    mov x1, 119
    mov x2, 48
    ldr x10, gris
    bl draw_pixel

    mov x1, 120
    mov x2, 48
    ldr x10, gris
    bl draw_pixel

    mov x1, 120
    mov x2, 49
    ldr x10, gris
    bl draw_pixel

    mov x1, 121
    mov x2, 49
    ldr x10, gris
    bl draw_pixel
    
    mov x1, 121
    mov x2, 50
    ldr x10, gris
    bl draw_pixel

    mov x1, 122
    mov x2, 50
    ldr x10, gris
    bl draw_pixel

    mov x1, 123        // Coordenada x inicial
    mov x2, 51         // Coordenada y inicial
    mov x3, 126         // Coordenada x final
    mov x4, 51        // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 127        // Coordenada x inicial
    mov x2, 52         // Coordenada y inicial
    mov x3, 129         // Coordenada x final
    mov x4, 52        // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight
    
    mov x1, 129
    mov x2, 53
    ldr x10, gris
    bl draw_pixel

    mov x1, 130        // Coordenada x inicial
    mov x2, 53         // Coordenada y inicial
    mov x3, 130         // Coordenada x final
    mov x4, 55        // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 131
    mov x2, 55
    ldr x10, gris
    bl draw_pixel

    mov x1, 131
    mov x2, 56
    ldr x10, gris
    bl draw_pixel

    mov x1, 132
    mov x2, 56
    ldr x10, gris
    bl draw_pixel
    
    mov x1, 132
    mov x2, 57
    ldr x10, gris
    bl draw_pixel

    mov x1, 133
    mov x2, 57
    ldr x10, gris
    bl draw_pixel
    
    mov x1, 134
    mov x2, 58
    ldr x10, gris
    bl draw_pixel

    mov x1, 135
    mov x2, 59
    ldr x10, gris
    bl draw_pixel
    
    mov x1, 135
    mov x2, 60
    ldr x10, gris
    bl draw_pixel

    // ------------NUBE2-----------------
    // Base de la nube 
    // Llamada a draw_line_straight para dibujar base de la nube

    mov x1, 325        // Coordenada x inicial
    mov x2, 30         // Coordenada y inicial
    mov x3, 368         // Coordenada x final
    mov x4, 30        // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight
    
    // Parte de arriba de la nube
    
    mov x1, 320     // 89 + 234
    mov x2, 28      // 59 - 31
    ldr x10, gris
    bl draw_pixel
    
    mov x1, 321     // 90 + 234
    mov x2, 27      // 58 - 31
    ldr x10, gris
    bl draw_pixel
    
    mov x1, 321    // 90 + 234
    mov x2, 26      // 57 - 31
    ldr x10, gris
    bl draw_pixel
    
    mov x1, 324     // 93 + 234
    mov x2, 25      // 56 - 31
    ldr x10, gris
    bl draw_pixel

    mov x1, 324     // 93 + 234
    mov x2, 24      // 55 - 31
    ldr x10, gris
    bl draw_pixel

    mov x1, 325     // 94 + 234
    mov x2, 24      // 55 - 31
    ldr x10, gris
    bl draw_pixel
    
    mov x1, 325     // 94 + 234
    mov x2, 23      // 54 - 31
    ldr x10, gris
    bl draw_pixel

    mov x1, 326        // Coordenada x inicial
    mov x2, 22         // Coordenada y inicial
    mov x3, 326       // Coordenada x final
    mov x4, 25         // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 334        // Coordenada x inicial
    mov x2, 21         // Coordenada y inicial
    mov x3, 336      // Coordenada x final
    mov x4, 21         // Coordenada y final    
    ldr x10, gris             
    bl draw_line_straight
    
    mov x1, 336        // 105 + 234
    mov x2, 20         // 51 - 31
    ldr x10, gris
    bl draw_pixel

    mov x1, 337        // Coordenada x inicial
    mov x2, 20         // Coordenada y inicial
    mov x3, 337       // Coordenada x final
    mov x4, 18         // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight
   
    mov x1, 338        // 107 + 234
    mov x2, 18         // 49 - 31
    mov x3, 338      // 107 + 234
    mov x4, 17         // 48 - 31
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 339        // 108 + 234
    mov x2, 17         // 48 - 31
    mov x3, 342        // 108 + 234
    mov x4, 16         // 47 - 31
    ldr x10, gris             
    bl draw_line_straight
    
    mov x1, 340        // 109 + 234
    mov x2, 16         // 47 - 31
    ldr x10, gris
    bl draw_pixel

    mov x1, 339      // 109 + 234
    mov x2, 15         // 46 - 31
    mov x3, 339        // 111 + 234
    mov x4, 15         // 46 - 31
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 342       // 111 + 234
    mov x2, 14         // 45 - 31
    mov x3, 344      // 113 + 234
    mov x4, 14         // 45 - 31
    ldr x10, gris             
    bl draw_line_straight
    
    mov x1, 344       // 113 + 234
    mov x2, 13         // 44 - 31
    ldr x10, gris
    bl draw_pixel

    mov x1, 345       // 114 + 234
    mov x2, 13         // 44 - 31
    mov x3, 345       // 114 + 234 
    mov x4, 11         // 42 - 31
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 346       // 115 + 234
    mov x2, 12         // 43 - 31
    mov x3, 348       // 117 + 234
    mov x4, 12         // 43 - 31
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 348       // 117 + 234
    mov x2, 13         // 44 - 31   
    mov x3, 351      // 119 + 234 
    mov x4, 13         // 44 - 31   
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 350      // 119 + 234
    mov x2, 14         // 45 - 31
    mov x3, 352        // 121 + 234
    mov x4, 14         // 45 - 31
    ldr x10, gris             
    bl draw_line_straight
    
    mov x1, 352   // 121 + 234
    mov x2, 15     // 46 - 31
    ldr x10, gris
    bl draw_pixel
    
    mov x1, 352    // 121 + 234
    mov x2, 16     // 47 - 31
    ldr x10, gris
    bl draw_pixel
    
    mov x1, 353   // 122 + 234
    mov x2, 16     // 47 - 31
    ldr x10, gris
    bl draw_pixel
    
    mov x1, 353    // 122 + 234
    mov x2, 17     // 48 - 31
    ldr x10, gris
    bl draw_pixel
    
    mov x1, 354    // 123 + 234
    mov x2, 17     // 48 - 31
    ldr x10, gris
    bl draw_pixel
    
    mov x1, 354   // 123 + 234
    mov x2, 18     // 49 - 31
    ldr x10, gris
    bl draw_pixel
    
    mov x1, 355    // 124 + 234
    mov x2, 18     // 49 - 31
    ldr x10, gris
    bl draw_pixel
    
    mov x1, 355   // 124 + 234
    mov x2, 19     // 50 - 31
    ldr x10, gris
    bl draw_pixel
    
    mov x1, 356    // 125 + 234
    mov x2, 19     // 50 - 31
    ldr x10, gris
    bl draw_pixel

    mov x1, 357        // 126 + 234 // Coordenada x inicial
    mov x2, 20         // 51 - 31   // Coordenada y inicial
    mov x3, 360       // 129 + 234 // Coordenada x final
    mov x4, 20         // 51 - 31   // Coordenada y final
    ldr x10, gris
    bl draw_line_straight

    mov x1, 361       // 130 + 234 // Coordenada x inicial
    mov x2, 21         // 52 - 31   // Coordenada y inicial
    mov x3, 363       // 132 + 234 // Coordenada x final
    mov x4, 21         // 52 - 31   // Coordenada y final
    ldr x10, gris
    bl draw_line_straight

    mov x1, 363        // 132 + 234
    mov x2, 22         // 53 - 31
    ldr x10, gris
    bl draw_pixel

    mov x1, 364        // 133 + 234 // Coordenada x inicial
    mov x2, 22         // 53 - 31   // Coordenada y inicial
    mov x3, 364        // 133 + 234 // Coordenada x final
    mov x4, 24         // 55 - 31   // Coordenada y final
    ldr x10, gris
    bl draw_line_straight
    
    mov x1, 365      // 134 + 234
    mov x2, 24         // 55 - 31
    ldr x10, gris
    bl draw_pixel
    
    mov x1, 365       // 134 + 234
    mov x2, 25         // 56 - 31
    ldr x10, gris
    bl draw_pixel
    
    mov x1, 366       // 135 + 234
    mov x2, 25         // 56 - 31
    ldr x10, gris
    bl draw_pixel
    
    mov x1, 366        // 135 + 234
    mov x2, 26         // 57 - 31
    ldr x10, gris
    bl draw_pixel

    mov x1, 367        // 136 + 234
    mov x2, 26         // 57 - 31
    ldr x10, gris
    bl draw_pixel

    mov x1, 368       // 137 + 234
    mov x2, 27         // 58 - 31
    ldr x10, gris
    bl draw_pixel

    mov x1, 369       // 138 + 234
    mov x2, 28         // 59 - 31
    ldr x10, gris
    bl draw_pixel

    mov x1, 369        // 138 + 234
    mov x2, 29         // 60 - 31
    ldr x10, gris
    bl draw_pixel

    //----------NUBE3-----------------
    // Base de la nube 
    // Llamada a draw_line_straight para dibujar base de la nube

    mov x1, 547       // Coordenada x inicial
    mov x2, 91         // Coordenada y inicial
    mov x3, 590        // Coordenada x final
    mov x4, 91        // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    // Parte de arriba de la nube
    
    mov x1, 542
    mov x2, 89
    ldr x10, gris
    bl draw_pixel

    mov x1, 543
    mov x2, 88
    ldr x10, gris
    bl draw_pixel

    mov x1, 543
    mov x2, 87
    ldr x10, gris
    bl draw_pixel
    
    mov x1, 546
    mov x2, 86
    ldr x10, gris
    bl draw_pixel

    mov x1, 546
    mov x2, 85
    ldr x10, gris
    bl draw_pixel
    
    mov x1, 547
    mov x2, 85
    ldr x10, gris
    bl draw_pixel
    
    mov x1, 547
    mov x2, 84
    ldr x10, gris
    bl draw_pixel

    mov x1, 548       // Coordenada x inicial
    mov x2, 83         // Coordenada y inicial
    mov x3, 556        // Coordenada x final
    mov x4, 86        // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 556       // Coordenada x inicial
    mov x2, 82         // Coordenada y inicial
    mov x3, 558       // Coordenada x final
    mov x4, 82        // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight
    
    mov x1, 558
    mov x2, 81
    ldr x10, gris
    bl draw_pixel

    mov x1, 559      // Coordenada x inicial
    mov x2, 81         // Coordenada y inicial
    mov x3, 559        // Coordenada x final
    mov x4, 79        // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 560        // Coordenada x inicial
    mov x2, 79         // Coordenada y inicial
    mov x3, 560       // Coordenada x final
    mov x4, 78        // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 561       // Coordenada x inicial
    mov x2, 78         // Coordenada y inicial
    mov x3, 561        // Coordenada x final
    mov x4, 77        // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight
    
    mov x1, 562
    mov x2, 77
    ldr x10, gris
    bl draw_pixel

    mov x1, 562      // Coordenada x inicial
    mov x2, 76         // Coordenada y inicial
    mov x3, 564        // Coordenada x final
    mov x4, 76        // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 564        // Coordenada x inicial
    mov x2, 75         // Coordenada y inicial
    mov x3, 566         // Coordenada x final
    mov x4, 75        // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight
    
    mov x1, 566
    mov x2, 74
    ldr x10, gris
    bl draw_pixel

    mov x1, 567        // Coordenada x inicial
    mov x2, 74         // Coordenada y inicial
    mov x3, 567         // Coordenada x final
    mov x4, 72        // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 568       // Coordenada x inicial
    mov x2, 73         // Coordenada y inicial
    mov x3, 570        // Coordenada x final
    mov x4, 73        // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 570       // Coordenada x inicial
    mov x2, 74         // Coordenada y inicial
    mov x3, 572         // Coordenada x final
    mov x4, 74        // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 572       // Coordenada x inicial
    mov x2, 75         // Coordenada y inicial
    mov x3, 574       // Coordenada x final
    mov x4, 75        // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight
    
    mov x1, 574
    mov x2, 76
    ldr x10, gris
    bl draw_pixel

    mov x1, 574
    mov x2, 77
    ldr x10, gris
    bl draw_pixel
    
    mov x1, 575
    mov x2, 77
    ldr x10, gris
    bl draw_pixel

    mov x1, 575
    mov x2, 78
    ldr x10, gris
    bl draw_pixel
    
    mov x1, 576
    mov x2, 78
    ldr x10, gris
    bl draw_pixel
    
    mov x1, 576
    mov x2, 79
    ldr x10, gris
    bl draw_pixel
    
    mov x1, 577
    mov x2, 79
    ldr x10, gris
    bl draw_pixel
    
    mov x1, 577
    mov x2, 80
    ldr x10, gris
    bl draw_pixel
    
    mov x1, 578
    mov x2, 80
    ldr x10, gris
    bl draw_pixel

    mov x1, 579       // Coordenada x inicial
    mov x2, 81         // Coordenada y inicial
    mov x3, 582         // Coordenada x final
    mov x4, 81        // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 583       // Coordenada x inicial
    mov x2, 82         // Coordenada y inicial
    mov x3, 585        // Coordenada x final
    mov x4, 82        // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight
    
    mov x1, 585
    mov x2, 83
    ldr x10, gris
    bl draw_pixel

    mov x1, 586       // Coordenada x inicial
    mov x2, 83         // Coordenada y inicial
    mov x3, 586        // Coordenada x final
    mov x4, 85        // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight
    
    mov x1, 587
    mov x2, 85
    ldr x10, gris
    bl draw_pixel
    
    mov x1, 587
    mov x2, 86
    ldr x10, gris
    bl draw_pixel
    
    mov x1, 588
    mov x2, 86
    ldr x10, gris
    bl draw_pixel
    
    mov x1, 588
    mov x2, 87
    ldr x10, gris
    bl draw_pixel
    
    mov x1, 589
    mov x2, 87
    ldr x10, gris
    bl draw_pixel

    mov x1, 590
    mov x2, 88
    ldr x10, gris
    bl draw_pixel
    
    mov x1, 590
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

nubes3:

    SUB SP, SP, #40
    STR X1, [SP]
    STR X2, [SP, #8]
    STR X3, [SP, #16]
    STR X4, [SP, #24]
    STR X30, [SP, #32]

    //----------NUBE1-----------------
    // Base de la nube 
    // Llamada a draw_line_straight para dibujar base de la nube

    mov x1, 84        // Coordenada x inicial (91 - 7)
    mov x2, 61        // Coordenada y inicial
    mov x3, 127       // Coordenada x final (134 - 7)
    mov x4, 61        // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    // Parte de arriba de la nube
    mov x1, 79        // (86 - 7)
    mov x2, 59
    ldr x10, gris
    bl draw_pixel

    mov x1, 80        // (87 - 7)
    mov x2, 58
    ldr x10, gris
    bl draw_pixel

    mov x1, 80        // (87 - 7)
    mov x2, 57
    ldr x10, gris
    bl draw_pixel

    mov x1, 83        // (90 - 7)
    mov x2, 56
    ldr x10, gris
    bl draw_pixel

    mov x1, 83        // (90 - 7)
    mov x2, 55
    ldr x10, gris
    bl draw_pixel

    mov x1, 84        // (91 - 7)
    mov x2, 55
    ldr x10, gris
    bl draw_pixel

    mov x1, 84        // (91 - 7)
    mov x2, 54
    ldr x10, gris
    bl draw_pixel

    mov x1, 85        // Coordenada x inicial (92 - 7)
    mov x2, 53        // Coordenada y inicial
    mov x3, 93        // Coordenada x final (100 - 7)
    mov x4, 56        // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 93        // Coordenada x inicial (100 - 7)
    mov x2, 52        // Coordenada y inicial
    mov x3, 95        // Coordenada x final (102 - 7)
    mov x4, 52        // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 95        // (102 - 7)
    mov x2, 51
    ldr x10, gris
    bl draw_pixel

    mov x1, 96        // Coordenada x inicial (103 - 7)
    mov x2, 51        // Coordenada y inicial
    mov x3, 96        // Coordenada x final (103 - 7)
    mov x4, 49        // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 97        // Coordenada x inicial (104 - 7)
    mov x2, 49        // Coordenada y inicial
    mov x3, 97        // Coordenada x final (104 - 7)
    mov x4, 48        // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 98        // Coordenada x inicial (105 - 7)
    mov x2, 48        // Coordenada y inicial
    mov x3, 98        // Coordenada x final (105 - 7)
    mov x4, 47        // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 99        // (106 - 7)
    mov x2, 47
    ldr x10, gris
    bl draw_pixel

    mov x1, 99        // Coordenada x inicial (106 - 7)
    mov x2, 46        // Coordenada y inicial
    mov x3, 101       // Coordenada x final (108 - 7)
    mov x4, 46        // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 101       // Coordenada x inicial (108 - 7)
    mov x2, 45        // Coordenada y inicial
    mov x3, 103       // Coordenada x final (110 - 7)
    mov x4, 45        // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 103       // (110 - 7)
    mov x2, 44
    ldr x10, gris
    bl draw_pixel

    mov x1, 104       // Coordenada x inicial (111 - 7)
    mov x2, 44        // Coordenada y inicial
    mov x3, 104       // Coordenada x final (111 - 7)
    mov x4, 42        // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 105       // Coordenada x inicial (112 - 7)
    mov x2, 43        // Coordenada y inicial
    mov x3, 107       // Coordenada x final (114 - 7)
    mov x4, 43        // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 107       // Coordenada x inicial (114 - 7)
    mov x2, 44        // Coordenada y inicial
    mov x3, 109       // Coordenada x final (116 - 7)
    mov x4, 44        // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 109       // Coordenada x inicial (116 - 7)
    mov x2, 45        // Coordenada y inicial
    mov x3, 113       // Coordenada x final (120 - 7)
    mov x4, 45        // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 111       // (118 - 7)
    mov x2, 46
    ldr x10, gris
    bl draw_pixel

    mov x1, 111       // (118 - 7)
    mov x2, 47
    ldr x10, gris
    bl draw_pixel

    mov x1, 112       // (119 - 7)
    mov x2, 47
    ldr x10, gris
    bl draw_pixel

    mov x1, 112       // (119 - 7)
    mov x2, 48
    ldr x10, gris
    bl draw_pixel

    mov x1, 113       // (120 - 7)
    mov x2, 48
    ldr x10, gris
    bl draw_pixel

    mov x1, 113       // (120 - 7)
    mov x2, 49
    ldr x10, gris
    bl draw_pixel

    mov x1, 114       // (121 - 7)
    mov x2, 49
    ldr x10, gris
    bl draw_pixel

    mov x1, 114       // (121 - 7)
    mov x2, 50
    ldr x10, gris
    bl draw_pixel

    mov x1, 115       // (122 - 7)
    mov x2, 50
    ldr x10, gris
    bl draw_pixel

    mov x1, 116       // Coordenada x inicial (123 - 7)
    mov x2, 51        // Coordenada y inicial
    mov x3, 119       // Coordenada x final (126 - 7)
    mov x4, 51        // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 120       // Coordenada x inicial (127 - 7)
    mov x2, 52        // Coordenada y inicial
    mov x3, 122       // Coordenada x final (129 - 7)
    mov x4, 52        // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 122       // (129 - 7)
    mov x2, 53
    ldr x10, gris
    bl draw_pixel

    mov x1, 123       // Coordenada x inicial (130 - 7)
    mov x2, 53        // Coordenada y inicial
    mov x3, 123       // Coordenada x final (130 - 7)
    mov x4, 55        // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 124       // (131 - 7)
    mov x2, 55
    ldr x10, gris
    bl draw_pixel

    mov x1, 124       // (131 - 7)
    mov x2, 56
    ldr x10, gris
    bl draw_pixel

    mov x1, 125       // (132 - 7)
    mov x2, 56
    ldr x10, gris
    bl draw_pixel

    mov x1, 125       // (132 - 7)
    mov x2, 57
    ldr x10, gris
    bl draw_pixel

    mov x1, 126       // (133 - 7)
    mov x2, 57
    ldr x10, gris
    bl draw_pixel

    mov x1, 127       // (134 - 7)
    mov x2, 58
    ldr x10, gris
    bl draw_pixel

    mov x1, 128       // (135 - 7)
    mov x2, 59
    ldr x10, gris
    bl draw_pixel

    mov x1, 128       // (135 - 7)
    mov x2, 60
    ldr x10, gris
    bl draw_pixel

    // ------------NUBE2-----------------
    // Base de la nube 
    // Llamada a draw_line_straight para dibujar base de la nube

    mov x1, 318        // Coordenada x inicial (325 - 7)
    mov x2, 30         // Coordenada y inicial
    mov x3, 361         // Coordenada x final (368 - 7)
    mov x4, 30        // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    // Parte de arriba de la nube

    mov x1, 313       // (320 - 7)
    mov x2, 28        // Coordenada y inicial (30 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 314       // (321 - 7)
    mov x2, 27        // Coordenada y inicial (27 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 314       // (321 - 7)
    mov x2, 26        // Coordenada y inicial (26 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 317       // (324 - 7)
    mov x2, 25        // Coordenada y inicial (25 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 317       // (324 - 7)
    mov x2, 24        // Coordenada y inicial (24 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 318       // (325 - 7)
    mov x2, 24        // Coordenada y inicial (24 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 318       // (325 - 7)
    mov x2, 23        // Coordenada y inicial (23 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 319        // Coordenada x inicial (326 - 7)
    mov x2, 22         // Coordenada y inicial
    mov x3, 319       // Coordenada x final (326 - 7)
    mov x4, 25         // Coordenada y final
    ldr x10, gris
    bl draw_line_straight

    mov x1, 327        // Coordenada x inicial (334 - 7)
    mov x2, 21         // Coordenada y inicial
    mov x3, 329      // Coordenada x final (336 - 7)
    mov x4, 21         // Coordenada y final    
    ldr x10, gris
    bl draw_line_straight

    mov x1, 329        // (336 - 7)
    mov x2, 20         // Coordenada y inicial (20 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 330        // Coordenada x inicial (337 - 7)
    mov x2, 20         // Coordenada y inicial
    mov x3, 330       // Coordenada x final (337 - 7)
    mov x4, 18         // Coordenada y final
    ldr x10, gris
    bl draw_line_straight

    mov x1, 331        // (338 - 7)
    mov x2, 18         // Coordenada y inicial (18 - 31)
    mov x3, 331       // (338 - 7)
    mov x4, 17         // Coordenada y final (17 - 31)
    ldr x10, gris
    bl draw_line_straight

    mov x1, 332        // (339 - 7)
    mov x2, 17         // Coordenada y inicial (17 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 331      // (339 - 7)
    mov x2, 15         // Coordenada y inicial (15 - 31)
    mov x3, 331       // (339 - 7)
    mov x4, 15         // Coordenada y final (15 - 31)
    ldr x10, gris
    bl draw_line_straight

    mov x1, 334       // (342 - 7)
    mov x2, 14         // Coordenada y inicial (14 - 31)
    mov x3, 336      // (344 - 7)
    mov x4, 14         // Coordenada y final (14 - 31)
    ldr x10, gris
    bl draw_line_straight

    mov x1, 336       // (344 - 7)
    mov x2, 13         // Coordenada y inicial (13 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 337       // (345 - 7)
    mov x2, 13         // Coordenada y inicial (13 - 31)
    mov x3, 337       // (345 - 7)
    mov x4, 11         // Coordenada y final (11 - 31)
    ldr x10, gris
    bl draw_line_straight

    mov x1, 338       // (346 - 7)
    mov x2, 12         // Coordenada y inicial (12 - 31)
    mov x3, 340       // (348 - 7)
    mov x4, 12         // Coordenada y final (12 - 31)
    ldr x10, gris
    bl draw_line_straight

    mov x1, 340       // (348 - 7)
    mov x2, 13         // Coordenada y inicial (13 - 31)
    mov x3, 343       // (351 - 7)
    mov x4, 13         // Coordenada y final (13 - 31)
    ldr x10, gris
    bl draw_line_straight

    mov x1, 342      // (350 - 7)
    mov x2, 14         // Coordenada y inicial (14 - 31)
    mov x3, 345        // (352 - 7)
    mov x4, 14         // Coordenada y final (14 - 31)
    ldr x10, gris
    bl draw_line_straight

    mov x1, 345       // (352 - 7)
    mov x2, 15         // Coordenada y inicial (15 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 345       // (352 - 7)
    mov x2, 16         // Coordenada y inicial (16 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 346       // (353 - 7)
    mov x2, 16         // Coordenada y inicial (16 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 346 // (353 - 7)
    mov x2, 17 // Coordenada y inicial (17 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 347 // (354 - 7)
    mov x2, 17 // Coordenada y inicial (17 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 347 // (354 - 7)
    mov x2, 18 // Coordenada y inicial (18 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 348 // (355 - 7)
    mov x2, 18 // Coordenada y inicial (18 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 348 // (355 - 7)
    mov x2, 19 // Coordenada y inicial (19 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 349 // (356 - 7)
    mov x2, 19 // Coordenada y inicial (19 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 350 // (357 - 7)
    mov x2, 20 // Coordenada y inicial (20 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 350 // (357 - 7)
    mov x2, 21 // Coordenada y inicial (21 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 351 // (358 - 7)
    mov x2, 21 // Coordenada y inicial (21 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 352 // (359 - 7)
    mov x2, 22 // Coordenada y inicial (22 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 352 // (359 - 7)
    mov x2, 23 // Coordenada y inicial (23 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 353 // (360 - 7)
    mov x2, 23 // Coordenada y inicial (23 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 354 // (361 - 7)
    mov x2, 24 // Coordenada y inicial (24 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 355 // (362 - 7)
    mov x2, 25 // Coordenada y inicial (25 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 356 // (363 - 7)
    mov x2, 25 // Coordenada y inicial (25 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 356 // (363 - 7)
    mov x2, 26 // Coordenada y inicial (26 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 357 // (364 - 7)
    mov x2, 26 // Coordenada y inicial (26 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 357 // (364 - 7)
    mov x2, 27 // Coordenada y inicial (27 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 358 // (365 - 7)
    mov x2, 27 // Coordenada y inicial (27 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 359 // (366 - 7)
    mov x2, 28 // Coordenada y inicial (28 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 359 // (366 - 7)
    mov x2, 29 // Coordenada y inicial (29 - 31)
    ldr x10, gris
    bl draw_pixel

    //----------NUBE3-----------------
    // Base de la nube 
    // Llamada a draw_line_straight para dibujar base de la nube

    mov x1, 540       // Coordenada x inicial (547 - 7)
    mov x2, 91        // Coordenada y inicial
    mov x3, 583       // Coordenada x final (590 - 7)
    mov x4, 91        // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    // Parte de arriba de la nube

    mov x1, 535       // (542 - 7)
    mov x2, 89
    ldr x10, gris
    bl draw_pixel

    mov x1, 536       // (543 - 7)
    mov x2, 88
    ldr x10, gris
    bl draw_pixel

    mov x1, 536       // (543 - 7)
    mov x2, 87
    ldr x10, gris
    bl draw_pixel

    mov x1, 539       // (546 - 7)
    mov x2, 86
    ldr x10, gris
    bl draw_pixel

    mov x1, 539       // (546 - 7)
    mov x2, 85
    ldr x10, gris
    bl draw_pixel

    mov x1, 540       // (547 - 7)
    mov x2, 85
    ldr x10, gris
    bl draw_pixel

    mov x1, 540       // (547 - 7)
    mov x2, 84
    ldr x10, gris
    bl draw_pixel

    mov x1, 541       // Coordenada x inicial (548 - 7)
    mov x2, 83        // Coordenada y inicial
    mov x3, 549       // Coordenada x final (556 - 7)
    mov x4, 86        // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 549       // Coordenada x inicial (556 - 7)
    mov x2, 82        // Coordenada y inicial
    mov x3, 551       // Coordenada x final (558 - 7)
    mov x4, 82        // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 551       // (558 - 7)
    mov x2, 81
    ldr x10, gris
    bl draw_pixel

    mov x1, 552      // Coordenada x inicial (559 - 7)
    mov x2, 81        // Coordenada y inicial
    mov x3, 552       // Coordenada x final (559 - 7)
    mov x4, 79        // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 553       // Coordenada x inicial (560 - 7)
    mov x2, 79        // Coordenada y inicial
    mov x3, 553       // Coordenada x final (560 - 7)
    mov x4, 78        // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 554       // Coordenada x inicial (561 - 7)
    mov x2, 78        // Coordenada y inicial
    mov x3, 554       // Coordenada x final (561 - 7)
    mov x4, 77        // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 555       // (562 - 7)
    mov x2, 77
    ldr x10, gris
    bl draw_pixel

    mov x1, 555      // Coordenada x inicial (562 - 7)
    mov x2, 76        // Coordenada y inicial
    mov x3, 557       // Coordenada x final (564 - 7)
    mov x4, 76        // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 557       // Coordenada x inicial (564 - 7)
    mov x2, 75        // Coordenada y inicial
    mov x3, 559       // Coordenada x final (566 - 7)
    mov x4, 75        // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 559       // (566 - 7)
    mov x2, 74
    ldr x10, gris
    bl draw_pixel

    mov x1, 560       // Coordenada x inicial (567 - 7)
    mov x2, 74        // Coordenada y inicial
    mov x3, 560       // Coordenada x final (567 - 7)
    mov x4, 72        // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 561       // Coordenada x inicial (568 - 7)
    mov x2, 73        // Coordenada y inicial
    mov x3, 563       // Coordenada x final (570 - 7)
    mov x4, 73        // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 563       // Coordenada x inicial (570 - 7)
    mov x2, 74        // Coordenada y inicial
    mov x3, 565       // Coordenada x final (572 - 7)
    mov x4, 74        // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 565       // Coordenada x inicial (572 - 7)
    mov x2, 75        // Coordenada y inicial
    mov x3, 567       // Coordenada x final (574 - 7)
    mov x4, 75        // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 567       // (574 - 7)
    mov x2, 76
    ldr x10, gris
    bl draw_pixel

    mov x1, 567       // (574 - 7)
    mov x2, 77
    ldr x10, gris
    bl draw_pixel

    mov x1, 568       // (575 - 7)
    mov x2, 77
    ldr x10, gris
    bl draw_pixel

    mov x1, 568       // (575 - 7)
    mov x2, 78
    ldr x10, gris
    bl draw_pixel

    mov x1, 569       // (576 - 7)
    mov x2, 78
    ldr x10, gris
    bl draw_pixel

    mov x1, 569       // (576 - 7)
    mov x2, 79
    ldr x10, gris
    bl draw_pixel

    mov x1, 570       // (577 - 7)
    mov x2, 79
    ldr x10, gris
    bl draw_pixel

    mov x1, 570       // (577 - 7)
    mov x2, 80
    ldr x10, gris
    bl draw_pixel

    mov x1, 571       // (578 - 7)
    mov x2, 80
    ldr x10, gris
    bl draw_pixel

    mov x1, 572       // Coordenada x inicial (579 - 7)
    mov x2, 81        // Coordenada y inicial
    mov x3, 575       // Coordenada x final (582 - 7)
    mov x4, 81        // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 576       // Coordenada x inicial (583 - 7)
    mov x2, 82        // Coordenada y inicial
    mov x3, 578       // Coordenada x final (585 - 7)
    mov x4, 82        // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 578       // (585 - 7)
    mov x2, 83
    ldr x10, gris
    bl draw_pixel

    mov x1, 579       // Coordenada x inicial (586 - 7)
    mov x2, 83        // Coordenada y inicial
    mov x3, 579       // Coordenada x final (586 - 7)
    mov x4, 85        // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 580       // (587 - 7)
    mov x2, 85
    ldr x10, gris
    bl draw_pixel

    mov x1, 580       // (587 - 7)
    mov x2, 86
    ldr x10, gris
    bl draw_pixel

    mov x1, 581       // (588 - 7)
    mov x2, 86
    ldr x10, gris
    bl draw_pixel

    mov x1, 581       // (588 - 7)
    mov x2, 87
    ldr x10, gris
    bl draw_pixel

    mov x1, 582       // (589 - 7)
    mov x2, 87
    ldr x10, gris
    bl draw_pixel

    mov x1, 583       // (590 - 7)
    mov x2, 88
    ldr x10, gris
    bl draw_pixel

    mov x1, 583       // (590 - 7)
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



nubes4:

    SUB SP, SP, #40
    STR X1, [SP]
    STR X2, [SP, #8]
    STR X3, [SP, #16]
    STR X4, [SP, #24]
    STR X30, [SP, #32]

    //----------NUBE1-----------------
    // Base de la nube 
    // Llamada a draw_line_straight para dibujar base de la nube

    mov x1, 69        // Coordenada x inicial (84 - 15)
    mov x2, 61        // Coordenada y inicial
    mov x3, 112       // Coordenada x final (127 - 15)
    mov x4, 61        // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    // Parte de arriba de la nube
    mov x1, 64        // (79 - 15)
    mov x2, 59
    ldr x10, gris
    bl draw_pixel

    mov x1, 65        // (80 - 15)
    mov x2, 58
    ldr x10, gris
    bl draw_pixel

    mov x1, 65        // (80 - 15)
    mov x2, 57
    ldr x10, gris
    bl draw_pixel

    mov x1, 68        // (83 - 15)
    mov x2, 56
    ldr x10, gris
    bl draw_pixel

    mov x1, 68        // (83 - 15)
    mov x2, 55
    ldr x10, gris
    bl draw_pixel

    mov x1, 69        // (84 - 15)
    mov x2, 55
    ldr x10, gris
    bl draw_pixel

    mov x1, 69        // (84 - 15)
    mov x2, 54
    ldr x10, gris
    bl draw_pixel

    mov x1, 70        // Coordenada x inicial (85 - 15)
    mov x2, 53        // Coordenada y inicial
    mov x3, 78        // Coordenada x final (93 - 15)
    mov x4, 56        // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 78        // Coordenada x inicial (93 - 15)
    mov x2, 52        // Coordenada y inicial
    mov x3, 80        // Coordenada x final (95 - 15)
    mov x4, 52        // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 80        // (95 - 15)
    mov x2, 51
    ldr x10, gris
    bl draw_pixel

    mov x1, 81        // Coordenada x inicial (96 - 15)
    mov x2, 51        // Coordenada y inicial
    mov x3, 81        // Coordenada x final (96 - 15)
    mov x4, 49        // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 82        // Coordenada x inicial (97 - 15)
    mov x2, 49        // Coordenada y inicial
    mov x3, 82        // Coordenada x final (97 - 15)
    mov x4, 48        // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 83        // Coordenada x inicial (98 - 15)
    mov x2, 48        // Coordenada y inicial
    mov x3, 83        // Coordenada x final (98 - 15)
    mov x4, 47        // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 84        // (99 - 15)
    mov x2, 47
    ldr x10, gris
    bl draw_pixel

    mov x1, 84        // Coordenada x inicial (99 - 15)
    mov x2, 46        // Coordenada y inicial
    mov x3, 86        // Coordenada x final (101 - 15)
    mov x4, 46        // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 86        // Coordenada x inicial (101 - 15)
    mov x2, 45        // Coordenada y inicial
    mov x3, 88        // Coordenada x final (103 - 15)
    mov x4, 45        // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 88        // (103 - 15)
    mov x2, 44
    ldr x10, gris
    bl draw_pixel

    mov x1, 89        // Coordenada x inicial (104 - 15)
    mov x2, 44        // Coordenada y inicial
    mov x3, 89        // Coordenada x final (104 - 15)
    mov x4, 42        // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 90        // Coordenada x inicial (105 - 15)
    mov x2, 43        // Coordenada y inicial
    mov x3, 92        // Coordenada x final (107 - 15)
    mov x4, 43        // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 92        // Coordenada x inicial (107 - 15)
    mov x2, 44        // Coordenada y inicial
    mov x3, 94        // Coordenada x final (109 - 15)
    mov x4, 44        // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 94        // Coordenada x inicial (109 - 15)
    mov x2, 45        // Coordenada y inicial
    mov x3, 98        // Coordenada x final (113 - 15)
    mov x4, 45        // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 96        // (111 - 15)
    mov x2, 46
    ldr x10, gris
    bl draw_pixel

    mov x1, 96        // (111 - 15)
    mov x2, 47
    ldr x10, gris
    bl draw_pixel

    mov x1, 97        // (112 - 15)
    mov x2, 47
    ldr x10, gris
    bl draw_pixel

    mov x1, 97        // (112 - 15)
    mov x2, 48
    ldr x10, gris
    bl draw_pixel

    mov x1, 98        // (113 - 15)
    mov x2, 48
    ldr x10, gris
    bl draw_pixel

    mov x1, 98        // (113 - 15)
    mov x2, 49
    ldr x10, gris
    bl draw_pixel

    mov x1, 99        // (114 - 15)
    mov x2, 49
    ldr x10, gris
    bl draw_pixel

    mov x1, 99        // (114 - 15)
    mov x2, 50
    ldr x10, gris
    bl draw_pixel

    mov x1, 100       // (115 - 15)
    mov x2, 50
    ldr x10, gris
    bl draw_pixel

    mov x1, 101       // Coordenada x inicial (116 - 15)
    mov x2, 51        // Coordenada y inicial
    mov x3, 104       // Coordenada x final (119 - 15)
    mov x4, 51        // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 105       // Coordenada x inicial (120 - 15)
    mov x2, 52        // Coordenada y inicial
    mov x3, 107       // Coordenada x final (122 - 15)
    mov x4, 52        // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 107       // (122 - 15)
    mov x2, 53
    ldr x10, gris
    bl draw_pixel

    mov x1, 108       // Coordenada x inicial (123 - 15)
    mov x2, 53        // Coordenada y inicial
    mov x3, 108       // Coordenada x final (123 - 15)
    mov x4, 55        // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 109       // (124 - 15)
    mov x2, 55
    ldr x10, gris
    bl draw_pixel

    mov x1, 109       // (124 - 15)
    mov x2, 56
    ldr x10, gris
    bl draw_pixel

    mov x1, 110       // (125 - 15)
    mov x2, 56
    ldr x10, gris
    bl draw_pixel

    mov x1, 110       // (125 - 15)
    mov x2, 57
    ldr x10, gris
    bl draw_pixel

    mov x1, 111       // (126 - 15)
    mov x2, 57
    ldr x10, gris
    bl draw_pixel

    mov x1, 112       // (127 - 15)
    mov x2, 58
    ldr x10, gris
    bl draw_pixel

    mov x1, 113       // (128 - 15)
    mov x2, 59
    ldr x10, gris
    bl draw_pixel

    mov x1, 113       // (128 - 15)
    mov x2, 60
    ldr x10, gris
    bl draw_pixel

    // ------------NUBE2-----------------
    // Base de la nube 
    // Llamada a draw_line_straight para dibujar base de la nube

    mov x1, 303        // Coordenada x inicial (318 - 15)
    mov x2, 30         // Coordenada y inicial
    mov x3, 346        // Coordenada x final (361 - 15)
    mov x4, 30         // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    // Parte de arriba de la nube

    mov x1, 298        // (313 - 15)
    mov x2, 28         // Coordenada y inicial (30 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 299        // (314 - 15)
    mov x2, 27         // Coordenada y inicial (27 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 299        // (314 - 15)
    mov x2, 26         // Coordenada y inicial (26 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 302        // (317 - 15)
    mov x2, 25         // Coordenada y inicial (25 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 302        // (317 - 15)
    mov x2, 24         // Coordenada y inicial (24 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 303        // (318 - 15)
    mov x2, 24         // Coordenada y inicial (24 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 303        // (318 - 15)
    mov x2, 23         // Coordenada y inicial (23 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 304        // Coordenada x inicial (319 - 15)
    mov x2, 22         // Coordenada y inicial
    mov x3, 304        // Coordenada x final (319 - 15)
    mov x4, 25         // Coordenada y final
    ldr x10, gris
    bl draw_line_straight

    mov x1, 312        // Coordenada x inicial (327 - 15)
    mov x2, 21         // Coordenada y inicial
    mov x3, 314        // Coordenada x final (329 - 15)
    mov x4, 21         // Coordenada y final    
    ldr x10, gris
    bl draw_line_straight

    mov x1, 314        // (329 - 15)
    mov x2, 20         // Coordenada y inicial (20 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 315        // Coordenada x inicial (330 - 15)
    mov x2, 20         // Coordenada y inicial
    mov x3, 315        // Coordenada x final (330 - 15)
    mov x4, 18         // Coordenada y final
    ldr x10, gris
    bl draw_line_straight

    mov x1, 316        // (331 - 15)
    mov x2, 18         // Coordenada y inicial (18 - 31)
    mov x3, 316        // (331 - 15)
    mov x4, 17         // Coordenada y final (17 - 31)
    ldr x10, gris
    bl draw_line_straight

    mov x1, 317        // (332 - 15)
    mov x2, 17         // Coordenada y inicial (17 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 316        // (331 - 15)
    mov x2, 15         // Coordenada y inicial (15 - 31)
    mov x3, 316        // (331 - 15)
    mov x4, 15         // Coordenada y final (15 - 31)
    ldr x10, gris
    bl draw_line_straight

    mov x1, 319        // (334 - 15)
    mov x2, 14         // Coordenada y inicial (14 - 31)
    mov x3, 321        // (336 - 15)
    mov x4, 14         // Coordenada y final (14 - 31)
    ldr x10, gris
    bl draw_line_straight

    mov x1, 321        // (336 - 15)
    mov x2, 13         // Coordenada y inicial (13 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 322        // (337 - 15)
    mov x2, 13         // Coordenada y inicial (13 - 31)
    mov x3, 322        // (337 - 15)
    mov x4, 11         // Coordenada y final (11 - 31)
    ldr x10, gris
    bl draw_line_straight

    mov x1, 323        // (338 - 15)
    mov x2, 12         // Coordenada y inicial (12 - 31)
    mov x3, 325        // (340 - 15)
    mov x4, 12         // Coordenada y final (12 - 31)
    ldr x10, gris
    bl draw_line_straight

    mov x1, 325        // (340 - 15)
    mov x2, 13         // Coordenada y inicial (13 - 31)
    mov x3, 328        // (343 - 15)
    mov x4, 13         // Coordenada y final (13 - 31)
    ldr x10, gris
    bl draw_line_straight

    mov x1, 327        // (342 - 15)
    mov x2, 14         // Coordenada y inicial (14 - 31)
    mov x3, 330        // (345 - 15)
    mov x4, 14         // Coordenada y final (14 - 31)
    ldr x10, gris
    bl draw_line_straight

    mov x1, 330        // (345 - 15)
    mov x2, 15         // Coordenada y inicial (15 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 330        // (345 - 15)
    mov x2, 16         // Coordenada y inicial (16 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 331        // (346 - 15)
    mov x2, 16         // Coordenada y inicial (16 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 331        // (346 - 15)
    mov x2, 17         // Coordenada y inicial (17 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 332        // (347 - 15)
    mov x2, 17         // Coordenada y inicial (17 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 332        // (347 - 15)
    mov x2, 18         // Coordenada y inicial (18 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 333        // (348 - 15)
    mov x2, 18         // Coordenada y inicial (18 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 333        // (348 - 15)
    mov x2, 19         // Coordenada y inicial (19 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 334        // (349 - 15)
    mov x2, 19         // Coordenada y inicial (19 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 335        // (350 - 15)
    mov x2, 20         // Coordenada y inicial (20 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 335        // (350 - 15)
    mov x2, 21         // Coordenada y inicial (21 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 336        // (351 - 15)
    mov x2, 21         // Coordenada y inicial (21 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 337        // (352 - 15)
    mov x2, 22         // Coordenada y inicial (22 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 337        // (352 - 15)
    mov x2, 23         // Coordenada y inicial (23 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 338        // (353 - 15)
    mov x2, 23         // Coordenada y inicial (23 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 339        // (354 - 15)
    mov x2, 24         // Coordenada y inicial (24 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 340        // (355 - 15)
    mov x2, 25         // Coordenada y inicial (25 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 341        // (356 - 15)
    mov x2, 25         // Coordenada y inicial (25 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 341        // (356 - 15)
    mov x2, 26         // Coordenada y inicial (26 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 342        // (357 - 15)
    mov x2, 26         // Coordenada y inicial (26 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 342        // (357 - 15)
    mov x2, 27         // Coordenada y inicial (27 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 343        // (358 - 15)
    mov x2, 27         // Coordenada y inicial (27 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 344        // (359 - 15)
    mov x2, 28         // Coordenada y inicial (28 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 344        // (359 - 15)
    mov x2, 29         // Coordenada y inicial (29 - 31)
    ldr x10, gris
    bl draw_pixel

    //----------NUBE3-----------------
    // Base de la nube 
    // Llamada a draw_line_straight para dibujar base de la nube

    mov x1, 525        // Coordenada x inicial (540 - 15)
    mov x2, 91         // Coordenada y inicial
    mov x3, 568        // Coordenada x final (583 - 15)
    mov x4, 91         // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    // Parte de arriba de la nube

    mov x1, 520        // Coordenada x inicial (535 - 15)
    mov x2, 89         // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 521        // Coordenada x inicial (536 - 15)
    mov x2, 88         // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 521        // Coordenada x inicial (536 - 15)
    mov x2, 87         // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 524        // Coordenada x inicial (539 - 15)
    mov x2, 86         // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 524        // Coordenada x inicial (539 - 15)
    mov x2, 85         // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 525        // Coordenada x inicial (540 - 15)
    mov x2, 85         // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 525        // Coordenada x inicial (540 - 15)
    mov x2, 84         // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 526        // Coordenada x inicial (541 - 15)
    mov x2, 83         // Coordenada y inicial
    mov x3, 534        // Coordenada x final (549 - 15)
    mov x4, 86         // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 534        // Coordenada x inicial (549 - 15)
    mov x2, 82         // Coordenada y inicial
    mov x3, 536        // Coordenada x final (551 - 15)
    mov x4, 82         // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 536        // Coordenada x inicial (551 - 15)
    mov x2, 81         // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 537        // Coordenada x inicial (552 - 15)
    mov x2, 81         // Coordenada y inicial
    mov x3, 537        // Coordenada x final (552 - 15)
    mov x4, 79         // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 538        // Coordenada x inicial (553 - 15)
    mov x2, 79         // Coordenada y inicial
    mov x3, 538        // Coordenada x final (553 - 15)
    mov x4, 78         // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 539        // Coordenada x inicial (554 - 15)
    mov x2, 78         // Coordenada y inicial
    mov x3, 539        // Coordenada x final (554 - 15)
    mov x4, 77         // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 540        // Coordenada x inicial (555 - 15)
    mov x2, 77         // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 540        // Coordenada x inicial (555 - 15)
    mov x2, 76         // Coordenada y inicial
    mov x3, 542        // Coordenada x final (557 - 15)
    mov x4, 76         // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 542        // Coordenada x inicial (557 - 15)
    mov x2, 75         // Coordenada y inicial
    mov x3, 544        // Coordenada x final (559 - 15)
    mov x4, 75         // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 544        // Coordenada x inicial (559 - 15)
    mov x2, 74         // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 545        // Coordenada x inicial (560 - 15)
    mov x2, 74         // Coordenada y inicial
    mov x3, 545        // Coordenada x final (560 - 15)
    mov x4, 72         // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 546        // Coordenada x inicial (561 - 15)
    mov x2, 73         // Coordenada y inicial
    mov x3, 548        // Coordenada x final (563 - 15)
    mov x4, 73         // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 548        // Coordenada x inicial (563 - 15)
    mov x2, 74         // Coordenada y inicial
    mov x3, 550        // Coordenada x final (565 - 15)
    mov x4, 74         // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 550        // Coordenada x inicial (565 - 15)
    mov x2, 75         // Coordenada y inicial
    mov x3, 552        // Coordenada x final (567 - 15)
    mov x4, 75         // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 552        // Coordenada x inicial (567 - 15)
    mov x2, 76         // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 552        // Coordenada x inicial (567 - 15)
    mov x2, 77         // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 553        // Coordenada x inicial (568 - 15)
    mov x2, 77         // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 553        // Coordenada x inicial (568 - 15)
    mov x2, 78         // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 554        // Coordenada x inicial (569 - 15)
    mov x2, 78         // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 554        // Coordenada x inicial (569 - 15)
    mov x2, 79         // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 555        // Coordenada x inicial (570 - 15)
    mov x2, 79         // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 555        // Coordenada x inicial (570 - 15)
    mov x2, 80         // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 556        // Coordenada x inicial (571 - 15)
    mov x2, 80         // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 557        // Coordenada x inicial (572 - 15)
    mov x2, 81         // Coordenada y inicial
    mov x3, 560        // Coordenada x final (575 - 15)
    mov x4, 81         // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 561        // Coordenada x inicial (576 - 15)
    mov x2, 82         // Coordenada y inicial
    mov x3, 563        // Coordenada x final (578 - 15)
    mov x4, 82         // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 563        // Coordenada x inicial (578 - 15)
    mov x2, 83         // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 564        // Coordenada x inicial (579 - 15)
    mov x2, 83         // Coordenada y inicial
    mov x3, 564        // Coordenada x final (579 - 15)
    mov x4, 85         // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 565        // Coordenada x inicial (580 - 15)
    mov x2, 85         // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 565        // Coordenada x inicial (580 - 15)
    mov x2, 86         // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 566        // Coordenada x inicial (581 - 15)
    mov x2, 86         // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 566        // Coordenada x inicial (581 - 15)
    mov x2, 87         // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 567        // Coordenada x inicial (582 - 15)
    mov x2, 87         // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 568        // Coordenada x inicial (583 - 15)
    mov x2, 88         // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 568        // Coordenada x inicial (583 - 15)
    mov x2, 89         // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    LDR X30, [SP, #32]
    LDR X4, [SP, #24]
    LDR X3, [SP, #16]
    LDR X2, [SP, #8]
    LDR X1, [SP]
    ADD SP, SP, #40

    ret


nubes5:

    SUB SP, SP, #40
    STR X1, [SP]
    STR X2, [SP, #8]
    STR X3, [SP, #16]
    STR X4, [SP, #24]
    STR X30, [SP, #32]

    //----------NUBE1-----------------
    // Base de la nube 
    // Llamada a draw_line_straight para dibujar base de la nube

    mov x1, 54        // Coordenada x inicial (69 - 15)
    mov x2, 61        // Coordenada y inicial
    mov x3, 97        // Coordenada x final (112 - 15)
    mov x4, 61        // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    // Parte de arriba de la nube
    mov x1, 49        // (64 - 15)
    mov x2, 59
    ldr x10, gris
    bl draw_pixel

    mov x1, 50        // (65 - 15)
    mov x2, 58
    ldr x10, gris
    bl draw_pixel

    mov x1, 50        // (65 - 15)
    mov x2, 57
    ldr x10, gris
    bl draw_pixel

    mov x1, 53        // (68 - 15)
    mov x2, 56
    ldr x10, gris
    bl draw_pixel

    mov x1, 53        // (68 - 15)
    mov x2, 55
    ldr x10, gris
    bl draw_pixel

    mov x1, 54        // (69 - 15)
    mov x2, 55
    ldr x10, gris
    bl draw_pixel

    mov x1, 54        // (69 - 15)
    mov x2, 54
    ldr x10, gris
    bl draw_pixel

    mov x1, 55        // Coordenada x inicial (70 - 15)
    mov x2, 53        // Coordenada y inicial
    mov x3, 63        // Coordenada x final (78 - 15)
    mov x4, 56        // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 63        // Coordenada x inicial (78 - 15)
    mov x2, 52        // Coordenada y inicial
    mov x3, 65        // Coordenada x final (80 - 15)
    mov x4, 52        // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 65        // (80 - 15)
    mov x2, 51
    ldr x10, gris
    bl draw_pixel

    mov x1, 66        // Coordenada x inicial (81 - 15)
    mov x2, 51        // Coordenada y inicial
    mov x3, 66        // Coordenada x final (81 - 15)
    mov x4, 49        // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 67        // Coordenada x inicial (82 - 15)
    mov x2, 49        // Coordenada y inicial
    mov x3, 67        // Coordenada x final (82 - 15)
    mov x4, 48        // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 68        // Coordenada x inicial (83 - 15)
    mov x2, 48        // Coordenada y inicial
    mov x3, 68        // Coordenada x final (83 - 15)
    mov x4, 47        // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 69        // (84 - 15)
    mov x2, 47
    ldr x10, gris
    bl draw_pixel

    mov x1, 69        // Coordenada x inicial (84 - 15)
    mov x2, 46        // Coordenada y inicial
    mov x3, 71        // Coordenada x final (86 - 15)
    mov x4, 46        // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 71        // Coordenada x inicial (86 - 15)
    mov x2, 45        // Coordenada y inicial
    mov x3, 73        // Coordenada x final (88 - 15)
    mov x4, 45        // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 73        // (88 - 15)
    mov x2, 44
    ldr x10, gris
    bl draw_pixel

    mov x1, 74        // Coordenada x inicial (89 - 15)
    mov x2, 44        // Coordenada y inicial
    mov x3, 74        // Coordenada x final (89 - 15)
    mov x4, 42        // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 75        // Coordenada x inicial (90 - 15)
    mov x2, 43        // Coordenada y inicial
    mov x3, 77        // Coordenada x final (92 - 15)
    mov x4, 43        // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 77        // Coordenada x inicial (92 - 15)
    mov x2, 44        // Coordenada y inicial
    mov x3, 79        // Coordenada x final (94 - 15)
    mov x4, 44        // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 79        // Coordenada x inicial (94 - 15)
    mov x2, 45        // Coordenada y inicial
    mov x3, 83        // Coordenada x final (98 - 15)
    mov x4, 45        // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 81        // (96 - 15)
    mov x2, 46
    ldr x10, gris
    bl draw_pixel

    mov x1, 81        // (96 - 15)
    mov x2, 47
    ldr x10, gris
    bl draw_pixel

    mov x1, 82        // (97 - 15)
    mov x2, 47
    ldr x10, gris
    bl draw_pixel

    mov x1, 82        // (97 - 15)
    mov x2, 48
    ldr x10, gris
    bl draw_pixel

    mov x1, 83        // (98 - 15)
    mov x2, 48
    ldr x10, gris
    bl draw_pixel

    mov x1, 83        // (98 - 15)
    mov x2, 49
    ldr x10, gris
    bl draw_pixel

    mov x1, 84        // (99 - 15)
    mov x2, 49
    ldr x10, gris
    bl draw_pixel

    mov x1, 84        // (99 - 15)
    mov x2, 50
    ldr x10, gris
    bl draw_pixel

    mov x1, 85        // (100 - 15)
    mov x2, 50
    ldr x10, gris
    bl draw_pixel

    mov x1, 86       // Coordenada x inicial (101 - 15)
    mov x2, 51        // Coordenada y inicial
    mov x3, 89       // Coordenada x final (104 - 15)
    mov x4, 51        // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 90       // Coordenada x inicial (105 - 15)
    mov x2, 52        // Coordenada y inicial
    mov x3, 92       // Coordenada x final (107 - 15)
    mov x4, 52        // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 92       // (107 - 15)
    mov x2, 53
    ldr x10, gris
    bl draw_pixel

    mov x1, 93       // Coordenada x inicial (108 - 15)
    mov x2, 53        // Coordenada y inicial
    mov x3, 93       // Coordenada x final (108 - 15)
    mov x4, 55        // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 94       // (109 - 15)
    mov x2, 55
    ldr x10, gris
    bl draw_pixel

    mov x1, 94       // (109 - 15)
    mov x2, 56
    ldr x10, gris
    bl draw_pixel

    mov x1, 95       // (110 - 15)
    mov x2, 56
    ldr x10, gris
    bl draw_pixel

    mov x1, 95       // (110 - 15)
    mov x2, 57
    ldr x10, gris
    bl draw_pixel

    mov x1, 96       // (111 - 15)
    mov x2, 57
    ldr x10, gris
    bl draw_pixel

    mov x1, 97       // (112 - 15)
    mov x2, 58
    ldr x10, gris
    bl draw_pixel

    mov x1, 98       // (113 - 15)
    mov x2, 59
    ldr x10, gris
    bl draw_pixel

    mov x1, 98       // (113 - 15)
    mov X2, 60 
    ldr x10, gris
    bl draw_pixel

    // ------------NUBE2-----------------
    // Base de la nube 
    // Llamada a draw_line_straight para dibujar base de la nube

    mov x1, 288        // Coordenada x inicial (303 - 15)
    mov x2, 30         // Coordenada y inicial
    mov x3, 331        // Coordenada x final (346 - 15)
    mov x4, 30         // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 283        // (298 - 15)
    mov x2, 28         // Coordenada y inicial (30 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 284        // (299 - 15)
    mov x2, 27         // Coordenada y inicial (27 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 284        // (299 - 15)
    mov x2, 26         // Coordenada y inicial (26 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 287        // (302 - 15)
    mov x2, 25         // Coordenada y inicial (25 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 287        // (302 - 15)
    mov x2, 24         // Coordenada y inicial (24 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 288        // (303 - 15)
    mov x2, 24         // Coordenada y inicial (24 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 288        // (303 - 15)
    mov x2, 23         // Coordenada y inicial (23 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 289        // Coordenada x inicial (304 - 15)
    mov x2, 22         // Coordenada y inicial
    mov x3, 289        // Coordenada x final (304 - 15)
    mov x4, 25         // Coordenada y final
    ldr x10, gris
    bl draw_line_straight

    mov x1, 297        // Coordenada x inicial (312 - 15)
    mov x2, 21         // Coordenada y inicial
    mov x3, 299        // Coordenada x final (314 - 15)
    mov x4, 21         // Coordenada y final    
    ldr x10, gris
    bl draw_line_straight

    mov x1, 299        // (314 - 15)
    mov x2, 20         // Coordenada y inicial (20 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 300        // Coordenada x inicial (315 - 15)
    mov x2, 20         // Coordenada y inicial
    mov x3, 300        // Coordenada x final (315 - 15)
    mov x4, 18         // Coordenada y final
    ldr x10, gris
    bl draw_line_straight

    mov x1, 301        // (316 - 15)
    mov x2, 18         // Coordenada y inicial (18 - 31)
    mov x3, 301        // (316 - 15)
    mov x4, 17         // Coordenada y final (17 - 31)
    ldr x10, gris
    bl draw_line_straight

    mov x1, 302        // (317 - 15)
    mov x2, 17         // Coordenada y inicial (17 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 301        // (316 - 15)
    mov x2, 15         // Coordenada y inicial (15 - 31)
    mov x3, 301        // (316 - 15)
    mov x4, 15         // Coordenada y final (15 - 31)
    ldr x10, gris
    bl draw_line_straight

    mov x1, 304        // (319 - 15)
    mov x2, 14         // Coordenada y inicial (14 - 31)
    mov x3, 306        // (321 - 15)
    mov x4, 14         // Coordenada y final (14 - 31)
    ldr x10, gris
    bl draw_line_straight

    mov x1, 306        // (321 - 15)
    mov x2, 13         // Coordenada y inicial (13 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 307        // (322 - 15)
    mov x2, 13         // Coordenada y inicial (13 - 31)
    mov x3, 307        // (322 - 15)
    mov x4, 11         // Coordenada y final (11 - 31)
    ldr x10, gris
    bl draw_line_straight

    mov x1, 308        // (323 - 15)
    mov x2, 12         // Coordenada y inicial (12 - 31)
    mov x3, 310        // (325 - 15)
    mov x4, 12         // Coordenada y final (12 - 31)
    ldr x10, gris
    bl draw_line_straight

    mov x1, 310        // (325 - 15)
    mov x2, 13         // Coordenada y inicial (13 - 31)
    mov x3, 313        // (328 - 15)
    mov x4, 13         // Coordenada y final (13 - 31)
    ldr x10, gris
    bl draw_line_straight

    mov x1, 312        // (327 - 15)
    mov x2, 14         // Coordenada y inicial (14 - 31)
    mov x3, 315        // (330 - 15)
    mov x4, 14         // Coordenada y final (14 - 31)
    ldr x10, gris
    bl draw_line_straight

    mov x1, 315        // (330 - 15)
    mov x2, 15         // Coordenada y inicial (15 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 315        // (330 - 15)
    mov x2, 16         // Coordenada y inicial (16 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 316        // (331 - 15)
    mov x2, 16         // Coordenada y inicial (16 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 316        // (331 - 15)
    mov x2, 17         // Coordenada y inicial (17 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 317        // (332 - 15)
    mov x2, 17         // Coordenada y inicial (17 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 317        // (332 - 15)
    mov x2, 18         // Coordenada y inicial (18 -
    ldr x10, gris
    bl draw_pixel

    mov x1, 318        // (333 - 15)
    mov x2, 18         // Coordenada y inicial (18 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 318        // (333 - 15)
    mov x2, 19         // Coordenada y inicial (19 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 319        // (334 - 15)
    mov x2, 19         // Coordenada y inicial (19 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 320        // (335 - 15)
    mov x2, 20         // Coordenada y inicial (20 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 321        // (336 - 15)
    mov x2, 21         // Coordenada y inicial (21 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 322        // (337 - 15)
    mov x2, 21         // Coordenada y inicial (21 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 322        // (337 - 15)
    mov x2, 22         // Coordenada y inicial (22 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 323        // (338 - 15)
    mov x2, 22         // Coordenada y inicial (22 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 324        // (339 - 15)
    mov x2, 23         // Coordenada y inicial (23 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 325        // (340 - 15)
    mov x2, 24         // Coordenada y inicial (24 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 326        // (341 - 15)
    mov x2, 25         // Coordenada y inicial (25 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 327        // (342 - 15)
    mov x2, 25         // Coordenada y inicial (25 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 327        // (342 - 15)
    mov x2, 26         // Coordenada y inicial (26 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 328        // (343 - 15)
    mov x2, 26         // Coordenada y inicial (26 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 328        // (343 - 15)
    mov x2, 27         // Coordenada y inicial (27 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 329        // (344 - 15)
    mov x2, 27         // Coordenada y inicial (27 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 330        // (345 - 15)
    mov x2, 28         // Coordenada y inicial (28 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 330        // (345 - 15)
    mov x2, 29         // Coordenada y inicial (29 - 31)
    ldr x10, gris
    bl draw_pixel

    //----------NUBE3-----------------
    // Base de la nube 
    // Llamada a draw_line_straight para dibujar base de la nube

    mov x1, 510        // Coordenada x inicial (525 - 15)
    mov x2, 91         // Coordenada y inicial
    mov x3, 553        // Coordenada x final (568 - 15)
    mov x4, 91         // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    // Parte de arriba de la nube

    mov x1, 505        // Coordenada x inicial (520 - 15)
    mov x2, 89         // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 506        // Coordenada x inicial (521 - 15)
    mov x2, 88         // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 506        // Coordenada x inicial (521 - 15)
    mov x2, 87         // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 509        // Coordenada x inicial (524 - 15)
    mov x2, 86         // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 509        // Coordenada x inicial (524 - 15)
    mov x2, 85         // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 510        // Coordenada x inicial (525 - 15)
    mov x2, 85         // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 510        // Coordenada x inicial (525 - 15)
    mov x2, 84         // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 511        // Coordenada x inicial (526 - 15)
    mov x2, 83         // Coordenada y inicial
    mov x3, 519        // Coordenada x final (534 - 15)
    mov x4, 86         // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 519        // Coordenada x inicial (534 - 15)
    mov x2, 82         // Coordenada y inicial
    mov x3, 521        // Coordenada x final (536 - 15)
    mov x4, 82         // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 521        // Coordenada x inicial (536 - 15)
    mov x2, 81         // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 522        // Coordenada x inicial (537 - 15)
    mov x2, 81         // Coordenada y inicial
    mov x3, 522        // Coordenada x final (537 - 15)
    mov x4, 79         // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 523        // Coordenada x inicial (538 - 15)
    mov x2, 79         // Coordenada y inicial
    mov x3, 523        // Coordenada x final (538 - 15)
    mov x4, 78         // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 524        // Coordenada x inicial (539 - 15)
    mov x2, 78         // Coordenada y inicial
    mov x3, 524        // Coordenada x final (539 - 15)
    mov x4, 77         // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 525        // Coordenada x inicial (540 - 15)
    mov x2, 77         // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 525        // Coordenada x inicial (540 - 15)
    mov x2, 76         // Coordenada y inicial
    mov x3, 527        // Coordenada x final (542 - 15)
    mov x4, 76         // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 527        // Coordenada x inicial (542 - 15)
    mov x2, 75         // Coordenada y inicial
    mov x3, 529        // Coordenada x final (544 - 15)
    mov x4, 75         // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 529        // Coordenada x inicial (544 - 15)
    mov x2, 74         // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 530        // Coordenada x inicial (545 - 15)
    mov x2, 74         // Coordenada y inicial
    mov x3, 530        // Coordenada x final (545 - 15)
    mov x4, 72         // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 531        // Coordenada x inicial (546 - 15)
    mov x2, 73         // Coordenada y inicial
    mov x3, 533        // Coordenada x final (548 - 15)
    mov x4, 73         // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 533        // Coordenada x inicial (548 - 15)
    mov x2, 74         // Coordenada y inicial
    mov x3, 535        // Coordenada x final (550 - 15)
    mov x4, 74         // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 535        // Coordenada x inicial (550 - 15)
    mov x2, 75         // Coordenada y inicial
    mov x3, 537        // Coordenada x final (552 - 15)
    mov x4, 75         // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 537        // Coordenada x inicial (552 - 15)
    mov x2, 76         // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 537        // Coordenada x inicial (552 - 15)
    mov x2, 77         // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 538       
    mov x2, 77      
    ldr x10, gris
    bl draw_pixel

    mov x1, 538        // Coordenada x inicial (553 - 15)
    mov x2, 78         // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 539        // Coordenada x inicial (554 - 15)
    mov x2, 78         // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 539        // Coordenada x inicial (554 - 15)
    mov x2, 79         // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 540        // Coordenada x inicial (555 - 15)
    mov x2, 79         // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 540        // Coordenada x inicial (555 - 15)
    mov x2, 80         // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 541        // Coordenada x inicial (556 - 15)
    mov x2, 80         // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 542        // Coordenada x inicial (557 - 15)
    mov x2, 81         // Coordenada y inicial
    mov x3, 545        // Coordenada x final (560 - 15)
    mov x4, 81         // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 546        // Coordenada x inicial (561 - 15)
    mov x2, 82         // Coordenada y inicial
    mov x3, 548        // Coordenada x final (563 - 15)
    mov x4, 82         // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 548        // Coordenada x inicial (563 - 15)
    mov x2, 83         // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 549        // Coordenada x inicial (564 - 15)
    mov x2, 83         // Coordenada y inicial
    mov x3, 549        // Coordenada x final (564 - 15)
    mov x4, 85         // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 550        // Coordenada x inicial (565 - 15)
    mov x2, 85         // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 550        // Coordenada x inicial (565 - 15)
    mov x2, 86         // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 551        // Coordenada x inicial (566 - 15)
    mov x2, 86         // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 551        // Coordenada x inicial (566 - 15)
    mov x2, 87         // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 552        // Coordenada x inicial (567 - 15)
    mov x2, 87         // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 553        // Coordenada x inicial (568 - 15)
    mov x2, 88         // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 553        // Coordenada x inicial (568 - 15)
    mov x2, 89         // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    LDR X30, [SP, #32]
    LDR X4, [SP, #24]
    LDR X3, [SP, #16]
    LDR X2, [SP, #8]
    LDR X1, [SP]
    ADD SP, SP, #40

    ret


nubes6:
    SUB SP, SP, #40
    STR X1, [SP]
    STR X2, [SP, #8]
    STR X3, [SP, #16]
    STR X4, [SP, #24]
    STR X30, [SP, #32]

    //----------NUBE1-----------------
    // Base de la nube 
    // Llamada a draw_line_straight para dibujar base de la nube
    mov x1, 39        // Coordenada x inicial (54 - 15)
    mov x2, 61        // Coordenada y inicial
    mov x3, 82        // Coordenada x final (97 - 15)
    mov x4, 61        // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    // Parte de arriba de la nube
    mov x1, 34        // (49 - 15)
    mov x2, 59
    ldr x10, gris
    bl draw_pixel

    mov x1, 35        // (50 - 15)
    mov x2, 58
    ldr x10, gris
    bl draw_pixel

    mov x1, 35        // (50 - 15)
    mov x2, 57
    ldr x10, gris
    bl draw_pixel

    mov x1, 38        // (53 - 15)
    mov x2, 56
    ldr x10, gris
    bl draw_pixel

    mov x1, 38        // (53 - 15)
    mov x2, 55
    ldr x10, gris
    bl draw_pixel

    mov x1, 39        // (54 - 15)
    mov x2, 55
    ldr x10, gris
    bl draw_pixel

    mov x1, 39        // (54 - 15)
    mov x2, 54
    ldr x10, gris
    bl draw_pixel

    mov x1, 40        // Coordenada x inicial (55 - 15)
    mov x2, 53        // Coordenada y inicial
    mov x3, 48        // Coordenada x final (63 - 15)
    mov x4, 56        // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 48        // Coordenada x inicial (63 - 15)
    mov x2, 52        // Coordenada y inicial
    mov x3, 50        // Coordenada x final (65 - 15)
    mov x4, 52        // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 50        // (65 - 15)
    mov x2, 51
    ldr x10, gris
    bl draw_pixel

    mov x1, 51        // Coordenada x inicial (66 - 15)
    mov x2, 51        // Coordenada y inicial
    mov x3, 51        // Coordenada x final (66 - 15)
    mov x4, 49        // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 52        // Coordenada x inicial (67 - 15)
    mov x2, 49        // Coordenada y inicial
    mov x3, 52        // Coordenada x final (67 - 15)
    mov x4, 48        // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 53        // Coordenada x inicial (68 - 15)
    mov x2, 48        // Coordenada y inicial
    mov x3, 53        // Coordenada x final (68 - 15)
    mov x4, 47        // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 54        // (69 - 15)
    mov x2, 47
    ldr x10, gris
    bl draw_pixel

    mov x1, 54        // Coordenada x inicial (69 - 15)
    mov x2, 46        // Coordenada y inicial
    mov x3, 56        // Coordenada x final (71 - 15)
    mov x4, 46        // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 56        // Coordenada x inicial (71 - 15)
    mov x2, 45        // Coordenada y inicial
    mov x3, 58        // Coordenada x final (73 - 15)
    mov x4, 45        // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 58        // (73 - 15)
    mov x2, 44
    ldr x10, gris
    bl draw_pixel

    mov x1, 59        // Coordenada x inicial (74 - 15)
    mov x2, 44        // Coordenada y inicial
    mov x3, 59        // Coordenada x final (74 - 15)
    mov x4, 42        // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 60        // Coordenada x inicial (75 - 15)
    mov x2, 43        // Coordenada y inicial
    mov x3, 62        // Coordenada x final (77 - 15)
    mov x4, 43        // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 62        // Coordenada x inicial (77 - 15)
    mov x2, 44        // Coordenada y inicial
    mov x3, 64        // Coordenada x final (79 - 15)
    mov x4, 44        // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 64        // Coordenada x inicial (79 - 15)
    mov x2, 45        // Coordenada y inicial
    mov x3, 68        // Coordenada x final (83 - 15)
    mov x4, 45        // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 66        // (81 - 15)
    mov x2, 46
    ldr x10, gris
    bl draw_pixel

    mov x1, 66        // (81 - 15)
    mov x2, 47
    ldr x10, gris
    bl draw_pixel

    mov x1, 67        // (82 - 15)
    mov x2, 47
    ldr x10, gris
    bl draw_pixel

    mov x1, 67        // (82 - 15)
    mov x2, 48
    ldr x10, gris
    bl draw_pixel

    mov x1, 68        // (83 - 15)
    mov x2, 48
    ldr x10, gris
    bl draw_pixel

    mov x1, 68        // (83 - 15)
    mov x2, 49
    ldr x10, gris
    bl draw_pixel

    mov x1, 69        // (84 - 15)
    mov x2, 49
    ldr x10, gris
    bl draw_pixel

    mov x1, 69        // (84 - 15)
    mov x2, 50
    ldr x10, gris
    bl draw_pixel

    mov x1, 70        // (85 - 15)
    mov x2, 50
    ldr x10, gris
    bl draw_pixel

    mov x1, 71       // Coordenada x inicial (86 - 15)
    mov x2, 51        // Coordenada y inicial
    mov x3, 74       // Coordenada x final (89 - 15)
    mov x4, 51        // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 75       // Coordenada x inicial (90 - 15)
    mov x2, 52        // Coordenada y inicial
    mov x3, 77       // Coordenada x final (92 - 15)
    mov x4, 52        // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 77       // (92 - 15)
    mov x2, 53
    ldr x10, gris
    bl draw_pixel

    mov x1, 78       // Coordenada x inicial (93 - 15)
    mov x2, 53        // Coordenada y inicial
    mov x3, 78       // Coordenada x final (93 - 15)
    mov x4, 55        // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 79       // (94 - 15)
    mov x2, 55
    ldr x10, gris
    bl draw_pixel

    mov x1, 79       // (94 - 15)
    mov x2, 56
    ldr x10, gris
    bl draw_pixel

    mov x1, 80       // (95 - 15)
    mov x2, 56
    ldr x10, gris
    bl draw_pixel

    mov x1, 80       // (95 - 15)
    mov x2, 57
    ldr x10, gris
    bl draw_pixel

    mov x1, 81       // (96 - 15)
    mov x2, 57
    ldr x10, gris
    bl draw_pixel

    mov x1, 82       // (97 - 15)
    mov x2, 58
    ldr x10, gris
    bl draw_pixel

    mov x1, 83       // (98 - 15)
    mov x2, 59
    ldr x10, gris
    bl draw_pixel

    mov x1, 83       // (98 - 15)
    mov X2, 60 
    ldr x10, gris
    bl draw_pixel

    // ------------NUBE2-----------------
    // Base de la nube 
    // Llamada a draw_line_straight para dibujar base de la nube

    mov x1, 273        // Coordenada x inicial (288 - 15)
    mov x2, 30         // Coordenada y inicial
    mov x3, 316        // Coordenada x final (331 - 15)
    mov x4, 30         // Coordenada y final
    ldr x10, gris
    bl draw_line_straight

    mov x1, 268        // (283 - 15)
    mov x2, 28         // Coordenada y inicial (30 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 269        // (284 - 15)
    mov x2, 27         // Coordenada y inicial (27 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 269        // (284 - 15)
    mov x2, 26         // Coordenada y inicial (26 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 272        // (287 - 15)
    mov x2, 25         // Coordenada y inicial (25 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 272        // (287 - 15)
    mov x2, 24         // Coordenada y inicial (24 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 273        // (288 - 15)
    mov x2, 24         // Coordenada y inicial (24 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 273        // (288 - 15)
    mov x2, 23         // Coordenada y inicial (23 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 274        // Coordenada x inicial (289 - 15)
    mov x2, 22         // Coordenada y inicial
    mov x3, 274        // Coordenada x final (289 - 15)
    mov x4, 25         // Coordenada y final
    ldr x10, gris
    bl draw_line_straight

    mov x1, 282        // Coordenada x inicial (297 - 15)
    mov x2, 21         // Coordenada y inicial
    mov x3, 284        // Coordenada x final (299 - 15)
    mov x4, 21         // Coordenada y final
    ldr x10, gris
    bl draw_line_straight

    mov x1, 284        // (299 - 15)
    mov x2, 20         // Coordenada y inicial (20 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 285        // Coordenada x inicial (300 - 15)
    mov x2, 20         // Coordenada y inicial
    mov x3, 285        // Coordenada x final (300 - 15)
    mov x4, 18         // Coordenada y final
    ldr x10, gris
    bl draw_line_straight

    mov x1, 286        // (301 - 15)
    mov x2, 18         // Coordenada y inicial (18 - 31)
    mov x3, 286        // (301 - 15)
    mov x4, 17         // Coordenada y final (17 - 31)
    ldr x10, gris
    bl draw_line_straight

    mov x1, 287        // (302 - 15)
    mov x2, 17         // Coordenada y inicial (17 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 286        // (301 - 15)
    mov x2, 15         // Coordenada y inicial (15 - 31)
    mov x3, 286        // (301 - 15)
    mov x4, 15         // Coordenada y final (15 - 31)
    ldr x10, gris
    bl draw_line_straight

    mov x1, 289        // (304 - 15)
    mov x2, 14         // Coordenada y inicial (14 - 31)
    mov x3, 291        // (306 - 15)
    mov x4, 14         // Coordenada y final (14 - 31)
    ldr x10, gris
    bl draw_line_straight

    mov x1, 291        // (306 - 15)
    mov x2, 13         // Coordenada y inicial (13 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 292        // (307 - 15)
    mov x2, 13         // Coordenada y inicial (13 - 31)
    mov x3, 292        // (307 - 15)
    mov x4, 11         // Coordenada y final (11 - 31)
    ldr x10, gris
    bl draw_line_straight

    mov x1, 293        // (308 - 15)
    mov x2, 12         // Coordenada y inicial (12 - 31)
    mov x3, 295        // (310 - 15)
    mov x4, 12         // Coordenada y final (12 - 31)
    ldr x10, gris
    bl draw_line_straight

    mov x1, 295        // (310 - 15)
    mov x2, 13         // Coordenada y inicial (13 - 31)
    mov x3, 298        // (313 - 15)
    mov x4, 13         // Coordenada y final (13 - 31)
    ldr x10, gris
    bl draw_line_straight

    mov x1, 297        // (312 - 15)
    mov x2, 14         // Coordenada y inicial (14 - 31)
    mov x3, 300        // (315 - 15)
    mov x4, 14         // Coordenada y final (14 - 31)
    ldr x10, gris
    bl draw_line_straight

    mov x1, 300        // (315 - 15)
    mov x2, 15         // Coordenada y inicial (15 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 300        // (315 - 15)
    mov x2, 16         // Coordenada y inicial (16 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 301        // (316 - 15)
    mov x2, 16         // Coordenada y inicial (16 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 301        // (316 - 15)
    mov x2, 17         // Coordenada y inicial (17 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 302        // (317 - 15)
    mov x2, 17         // Coordenada y inicial (17 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 302        // (317 - 15)
    mov x2, 18         // Coordenada y inicial (18 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 303        // (318 - 15)
    mov x2, 18         // Coordenada y inicial (18 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 303        // (318 - 15)
    mov x2, 19         // Coordenada y inicial (19 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 304        // (319 - 15)
    mov x2, 19         // Coordenada y inicial (19 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 305        // (320 - 15)
    mov x2, 20         // Coordenada y inicial (20 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 306        // (321 - 15)
    mov x2, 21         // Coordenada y inicial (21 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 307        // (322 - 15)
    mov x2, 21         // Coordenada y inicial (21 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 307        // (322 - 15)
    mov x2, 22         // Coordenada y inicial (22 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 308        // (323 - 15)
    mov x2, 22         // Coordenada y inicial (22 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 309        // (324 - 15)
    mov x2, 23         // Coordenada y inicial (23 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 310        // (325 - 15)
    mov x2, 24         // Coordenada y inicial (24 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 311        // (326 - 15)
    mov x2, 25         // Coordenada y inicial (25 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 312        // (327 - 15)
    mov x2, 25         // Coordenada y inicial (25 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 312        // (327 - 15)
    mov x2, 26         // Coordenada y inicial (26 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 313        // (328 - 15)
    mov x2, 26         // Coordenada y inicial (26 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 313        // (328 - 15)
    mov x2, 27         // Coordenada y inicial (27 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 314        // (329 - 15)
    mov x2, 27         // Coordenada y inicial (27 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 315        // (330 - 15)
    mov x2, 28         // Coordenada y inicial (28 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 315        // (330 - 15)
    mov x2, 29         // Coordenada y inicial (29 - 31)
    ldr x10, gris
    bl draw_pixel

    //----------NUBE3-----------------
    // Base de la nube 
    // Llamada a draw_line_straight para dibujar base de la nube

    mov x1, 495        // Coordenada x inicial (525 )
    mov x2, 91             // Coordenada y inicial
    mov x3, 538        // Coordenada x final (568 )
    mov x4, 91             // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    // Parte de arriba de la nube

    mov x1, 490        // Coordenada x inicial (520 )
    mov x2, 89             // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 491        // Coordenada x inicial (521 )
    mov x2, 88             // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 491        // Coordenada x inicial (521 )
    mov x2, 87             // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 494        // Coordenada x inicial (524 )
    mov x2, 86             // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 494        // Coordenada x inicial (524 )
    mov x2, 85             // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 495        // Coordenada x inicial (525 )
    mov x2, 85             // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 495        // Coordenada x inicial (525 )
    mov x2, 84             // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 496        // Coordenada x inicial (526 )
    mov x2, 83             // Coordenada y inicial
    mov x3, 504        // Coordenada x final (534 )
    mov x4, 86             // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 504        // Coordenada x inicial (534 )
    mov x2, 82             // Coordenada y inicial
    mov x3, 506        // Coordenada x final (536 )
    mov x4, 82             // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 506        // Coordenada x inicial (536 )
    mov x2, 81             // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 507        // Coordenada x inicial (537 )
    mov x2, 81             // Coordenada y inicial
    mov x3, 507        // Coordenada x final (537 )
    mov x4, 79             // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 508        // Coordenada x inicial (538 )
    mov x2, 79             // Coordenada y inicial
    mov x3, 508        // Coordenada x final (538 )
    mov x4, 78             // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 509        // Coordenada x inicial (539 )
    mov x2, 78             // Coordenada y inicial
    mov x3, 509        // Coordenada x final (539 )
    mov x4, 77             // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 510        // Coordenada x inicial (540 )
    mov x2, 77             // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 510        // Coordenada x inicial (540 )
    mov x2, 76             // Coordenada y inicial
    mov x3, 512        // Coordenada x final (542 )
    mov x4, 76             // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 512        // Coordenada x inicial (542 )
    mov x2, 75             // Coordenada y inicial
    mov x3, 514        // Coordenada x final (544 )
    mov x4, 75             // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 514        // Coordenada x inicial (544 )
    mov x2, 74             // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 515        // Coordenada x inicial (545 )
    mov x2, 74             // Coordenada y inicial
    mov x3, 515        // Coordenada x final (545 )
    mov x4, 72             // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 516        // Coordenada x inicial (546 )
    mov x2, 73             // Coordenada y inicial
    mov x3, 518        // Coordenada x final (548 )
    mov x4, 73             // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 518        // Coordenada x inicial (548 )
    mov x2, 74             // Coordenada y inicial
    mov x3, 520        // Coordenada x final (550 )
    mov x4, 74             // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 520        // Coordenada x inicial (550 )
    mov x2, 75             // Coordenada y inicial
    mov x3, 522        // Coordenada x final (552 )
    mov x4, 75             // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 522        // Coordenada x inicial 
    mov x2, 76             // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 522        // Coordenada x inicial (552 )
    mov x2, 77             // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 523        // Coordenada x inicial (553 )
    mov x2, 77             // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 523        // Coordenada x inicial (553 )
    mov x2, 78             // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 524        // Coordenada x inicial (554 )
    mov x2, 78             // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 524        // Coordenada x inicial (554 )
    mov x2, 79             // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 525        // Coordenada x inicial (555 )
    mov x2, 79             // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 525        // Coordenada x inicial (555 )
    mov x2, 80             // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 526        // Coordenada x inicial (556 )
    mov x2, 80             // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 527        // Coordenada x inicial (557 )
    mov x2, 81             // Coordenada y inicial
    mov x3, 530        // Coordenada x final (560 )
    mov x4, 81             // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 531        // Coordenada x inicial (561 )
    mov x2, 82             // Coordenada y inicial
    mov x3, 533        // Coordenada x final (563 )
    mov x4, 82             // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 533        // Coordenada x inicial (563 )
    mov x2, 83             // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 534        // Coordenada x inicial (564 )
    mov x2, 83             // Coordenada y inicial
    mov x3, 534        // Coordenada x final (564 )
    mov x4, 85             // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 535        // Coordenada x inicial (565 )
    mov x2, 85             // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 535        // Coordenada x inicial (565 )
    mov x2, 86             // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 536        // Coordenada x inicial (566 )
    mov x2, 86             // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 536        // Coordenada x inicial (566 )
    mov x2, 87             // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 537        // Coordenada x inicial (567 )
    mov x2, 87             // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 538        // Coordenada x inicial (568 )
    mov x2, 88             // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 538        // Coordenada x inicial (568 )
    mov x2, 89             // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

 
    LDR X30, [SP, #32]
    LDR X4, [SP, #24]
    LDR X3, [SP, #16]
    LDR X2, [SP, #8]
    LDR X1, [SP]
    ADD SP, SP, #40

    ret

nubes7:
    SUB SP, SP, #40
    STR X1, [SP]
    STR X2, [SP, #8]
    STR X3, [SP, #16]
    STR X4, [SP, #24]
    STR X30, [SP, #32]

    //----------NUBE1-----------------
    // Base de la nube 
    // Llamada a draw_line_straight para dibujar base de la nube
    mov x1, 39-15        // Coordenada x inicial (54 - 15)
    mov x2, 61        // Coordenada y inicial
    mov x3, 82-15        // Coordenada x final (97 - 15)
    mov x4, 61        // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    // Parte de arriba de la nube
    mov x1, 34-15        // (49 - 15)
    mov x2, 59
    ldr x10, gris
    bl draw_pixel

    mov x1, 35-15        // (50 - 15)
    mov x2, 58
    ldr x10, gris
    bl draw_pixel

    mov x1, 35-15        // (50 - 15)
    mov x2, 57
    ldr x10, gris
    bl draw_pixel

    mov x1, 38-15        // (53 - 15)
    mov x2, 56
    ldr x10, gris
    bl draw_pixel

    mov x1, 38-15        // (53 - 15)
    mov x2, 55
    ldr x10, gris
    bl draw_pixel

    mov x1, 39-15        // (54 - 15)
    mov x2, 55
    ldr x10, gris
    bl draw_pixel

    mov x1, 39-15        // (54 - 15)
    mov x2, 54
    ldr x10, gris
    bl draw_pixel

    mov x1, 40-15        // Coordenada x inicial (55 - 15)
    mov x2, 53        // Coordenada y inicial
    mov x3, 48-15        // Coordenada x final (63 - 15)
    mov x4, 56        // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 48-15        // Coordenada x inicial (63 - 15)
    mov x2, 52        // Coordenada y inicial
    mov x3, 50-15        // Coordenada x final (65 - 15)
    mov x4, 52        // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 50-15        // (65 - 15)
    mov x2, 51
    ldr x10, gris
    bl draw_pixel

    mov x1, 51-15        // Coordenada x inicial (66 - 15)
    mov x2, 51        // Coordenada y inicial
    mov x3, 51-15        // Coordenada x final (66 - 15)
    mov x4, 49        // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 52-15        // Coordenada x inicial (67 - 15)
    mov x2, 49        // Coordenada y inicial
    mov x3, 52-15        // Coordenada x final (67 - 15)
    mov x4, 48        // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 53-15        // Coordenada x inicial (68 - 15)
    mov x2, 48        // Coordenada y inicial
    mov x3, 53-15        // Coordenada x final (68 - 15)
    mov x4, 47        // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 54-15        // (69 - 15)
    mov x2, 47
    ldr x10, gris
    bl draw_pixel

    mov x1, 54-15        // Coordenada x inicial (69 - 15)
    mov x2, 46        // Coordenada y inicial
    mov x3, 56-15        // Coordenada x final (71 - 15)
    mov x4, 46        // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 56-15        // Coordenada x inicial (71 - 15)
    mov x2, 45        // Coordenada y inicial
    mov x3, 58-15        // Coordenada x final (73 - 15)
    mov x4, 45        // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 58-15        // (73 - 15)
    mov x2, 44
    ldr x10, gris
    bl draw_pixel

    mov x1, 59-15        // Coordenada x inicial (74 - 15)
    mov x2, 44        // Coordenada y inicial
    mov x3, 59-15        // Coordenada x final (74 - 15)
    mov x4, 42        // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 60-15        // Coordenada x inicial (75 - 15)
    mov x2, 43        // Coordenada y inicial
    mov x3, 62-15        // Coordenada x final (77 - 15)
    mov x4, 43        // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 62-15        // Coordenada x inicial (77 - 15)
    mov x2, 44        // Coordenada y inicial
    mov x3, 64-15        // Coordenada x final (79 - 15)
    mov x4, 44        // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 64-15        // Coordenada x inicial (79 - 15)
    mov x2, 45        // Coordenada y inicial
    mov x3, 68-15        // Coordenada x final (83 - 15)
    mov x4, 45        // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 66-15        // (81 - 15)
    mov x2, 46
    ldr x10, gris
    bl draw_pixel

    mov x1, 66-15        // (81 - 15)
    mov x2, 47
    ldr x10, gris
    bl draw_pixel

    mov x1, 67-15        // (82 - 15)
    mov x2, 47
    ldr x10, gris
    bl draw_pixel

    mov x1, 67-15        // (82 - 15)
    mov x2, 48
    ldr x10, gris
    bl draw_pixel

    mov x1, 68-15        // (83 - 15)
    mov x2, 48
    ldr x10, gris
    bl draw_pixel

    mov x1, 68-15        // (83 - 15)
    mov x2, 49
    ldr x10, gris
    bl draw_pixel

    mov x1, 69-15        // (84 - 15)
    mov x2, 49
    ldr x10, gris
    bl draw_pixel

    mov x1, 69-15        // (84 - 15)
    mov x2, 50
    ldr x10, gris
    bl draw_pixel

    mov x1, 70-15        // (85 - 15)
    mov x2, 50
    ldr x10, gris
    bl draw_pixel

    mov x1, 71-15       // Coordenada x inicial (86 - 15)
    mov x2, 51        // Coordenada y inicial
    mov x3, 74-15       // Coordenada x final (89 - 15)
    mov x4, 51        // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 75-15       // Coordenada x inicial (90 - 15)
    mov x2, 52        // Coordenada y inicial
    mov x3, 77-15       // Coordenada x final (92 - 15)
    mov x4, 52        // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 77-15       // (92 - 15)
    mov x2, 53
    ldr x10, gris
    bl draw_pixel

    mov x1, 78-15       // Coordenada x inicial (93 - 15)
    mov x2, 53        // Coordenada y inicial
    mov x3, 78-15       // Coordenada x final (93 - 15)
    mov x4, 55        // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 79-15       // (94 - 15)
    mov x2, 55
    ldr x10, gris
    bl draw_pixel

    mov x1, 79-15       // (94 - 15)
    mov x2, 56
    ldr x10, gris
    bl draw_pixel

    mov x1, 80-15       // (95 - 15)
    mov x2, 56
    ldr x10, gris
    bl draw_pixel

    mov x1, 80-15       // (95 - 15)
    mov x2, 57
    ldr x10, gris
    bl draw_pixel

    mov x1, 81-15       // (96 - 15)
    mov x2, 57
    ldr x10, gris
    bl draw_pixel

    mov x1, 82-15       // (97 - 15)
    mov x2, 58
    ldr x10, gris
    bl draw_pixel

    mov x1, 83-15       // (98 - 15)
    mov x2, 59
    ldr x10, gris
    bl draw_pixel

    mov x1, 83-15       // (98 - 15)
    mov X2, 60 
    ldr x10, gris
    bl draw_pixel

    // ------------NUBE2-----------------
    // Base de la nube 
    // Llamada a draw_line_straight para dibujar base de la nube

    mov x1, 273-15        // Coordenada x inicial (288 - 15)
    mov x2, 30         // Coordenada y inicial
    mov x3, 316-15        // Coordenada x final (331 - 15)
    mov x4, 30         // Coordenada y final
    ldr x10, gris
    bl draw_line_straight

    mov x1, 268-15        // (283 - 15)
    mov x2, 28         // Coordenada y inicial (30 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 269-15        // (284 - 15)
    mov x2, 27         // Coordenada y inicial (27 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 269-15        // (284 - 15)
    mov x2, 26         // Coordenada y inicial (26 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 272-15        // (287 - 15)
    mov x2, 25         // Coordenada y inicial (25 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 272-15        // (287 - 15)
    mov x2, 24         // Coordenada y inicial (24 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 273-15        // (288 - 15)
    mov x2, 24         // Coordenada y inicial (24 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 273-15        // (288 - 15)
    mov x2, 23         // Coordenada y inicial (23 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 274-15        // Coordenada x inicial (289 - 15)
    mov x2, 22         // Coordenada y inicial
    mov x3, 274-15        // Coordenada x final (289 - 15)
    mov x4, 25         // Coordenada y final
    ldr x10, gris
    bl draw_line_straight

    mov x1, 282-15        // Coordenada x inicial (297 - 15)
    mov x2, 21         // Coordenada y inicial
    mov x3, 284-15        // Coordenada x final (299 - 15)
    mov x4, 21         // Coordenada y final
    ldr x10, gris
    bl draw_line_straight

    mov x1, 284-15        // (299 - 15)
    mov x2, 20         // Coordenada y inicial (20 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 285-15        // Coordenada x inicial (300 - 15)
    mov x2, 20         // Coordenada y inicial
    mov x3, 285-15        // Coordenada x final (300 - 15)
    mov x4, 18         // Coordenada y final
    ldr x10, gris
    bl draw_line_straight

    mov x1, 286-15        // (301 - 15)
    mov x2, 18         // Coordenada y inicial (18 - 31)
    mov x3, 286-15        // (301 - 15)
    mov x4, 17         // Coordenada y final (17 - 31)
    ldr x10, gris
    bl draw_line_straight

    mov x1, 287-15        // (302 - 15)
    mov x2, 17         // Coordenada y inicial (17 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 286-15        // (301 - 15)
    mov x2, 15         // Coordenada y inicial (15 - 31)
    mov x3, 286-15        // (301 - 15)
    mov x4, 15         // Coordenada y final (15 - 31)
    ldr x10, gris
    bl draw_line_straight

    mov x1, 289-15        // (304 - 15)
    mov x2, 14         // Coordenada y inicial (14 - 31)
    mov x3, 291-15        // (306 - 15)
    mov x4, 14         // Coordenada y final (14 - 31)
    ldr x10, gris
    bl draw_line_straight

    mov x1, 291-15        // (306 - 15)
    mov x2, 13         // Coordenada y inicial (13 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 292-15        // (307 - 15)
    mov x2, 13         // Coordenada y inicial (13 - 31)
    mov x3, 292-15        // (307 - 15)
    mov x4, 11         // Coordenada y final (11 - 31)
    ldr x10, gris
    bl draw_line_straight

    mov x1, 293-15        // (308 - 15)
    mov x2, 12         // Coordenada y inicial (12 - 31)
    mov x3, 295-15        // (310 - 15)
    mov x4, 12         // Coordenada y final (12 - 31)
    ldr x10, gris
    bl draw_line_straight

    mov x1, 295-15        // (310 - 15)
    mov x2, 13         // Coordenada y inicial (13 - 31)
    mov x3, 298-15        // (313 - 15)
    mov x4, 13         // Coordenada y final (13 - 31)
    ldr x10, gris
    bl draw_line_straight

    mov x1, 297-15        // (312 - 15)
    mov x2, 14         // Coordenada y inicial (14 - 31)
    mov x3, 300-15        // (315 - 15)
    mov x4, 14         // Coordenada y final (14 - 31)
    ldr x10, gris
    bl draw_line_straight

    mov x1, 300-15        // (315 - 15)
    mov x2, 15         // Coordenada y inicial (15 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 300-15        // (315 - 15)
    mov x2, 16         // Coordenada y inicial (16 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 301-15        // (316 - 15)
    mov x2, 16         // Coordenada y inicial (16 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 301-15        // (316 - 15)
    mov x2, 17         // Coordenada y inicial (17 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 302-15        // (317 - 15)
    mov x2, 17         // Coordenada y inicial (17 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 302-15        // (317 - 15)
    mov x2, 18         // Coordenada y inicial (18 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 303-15        // (318 - 15)
    mov x2, 18         // Coordenada y inicial (18 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 303-15        // (318 - 15)
    mov x2, 19         // Coordenada y inicial (19 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 304-15        // (319 - 15)
    mov x2, 19         // Coordenada y inicial (19 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 305-15        // (320 - 15)
    mov x2, 20         // Coordenada y inicial (20 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 306-15        // (321 - 15)
    mov x2, 21         // Coordenada y inicial (21 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 307-15        // (322 - 15)
    mov x2, 21         // Coordenada y inicial (21 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 307-15        // (322 - 15)
    mov x2, 22         // Coordenada y inicial (22 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 308-15        // (323 - 15)
    mov x2, 22         // Coordenada y inicial (22 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 309-15        // (324 - 15)
    mov x2, 23         // Coordenada y inicial (23 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 310-15        // (325 - 15)
    mov x2, 24         // Coordenada y inicial (24 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 311-15        // (326 - 15)
    mov x2, 25         // Coordenada y inicial (25 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 312-15        // (327 - 15)
    mov x2, 25         // Coordenada y inicial (25 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 312-15        // (327 - 15)
    mov x2, 26         // Coordenada y inicial (26 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 313-15        // (328 - 15)
    mov x2, 26         // Coordenada y inicial (26 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 313-15        // (328 - 15)
    mov x2, 27         // Coordenada y inicial (27 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 314-15        // (329 - 15)
    mov x2, 27         // Coordenada y inicial (27 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 315-15        // (330 - 15)
    mov x2, 28         // Coordenada y inicial (28 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 315-15        // (330 - 15)
    mov x2, 29         // Coordenada y inicial (29 - 31)
    ldr x10, gris
    bl draw_pixel

    //----------NUBE3-----------------
    // Base de la nube 
    // Llamada a draw_line_straight para dibujar base de la nube

    mov x1, 495-15        // Coordenada x inicial (525 )
    mov x2, 91             // Coordenada y inicial
    mov x3, 538-15        // Coordenada x final (568 )
    mov x4, 91             // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    // Parte de arriba de la nube

    mov x1, 490-15        // Coordenada x inicial (520 )
    mov x2, 89             // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 491-15        // Coordenada x inicial (521 )
    mov x2, 88             // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 491-15        // Coordenada x inicial (521 )
    mov x2, 87             // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 494-15        // Coordenada x inicial (524 )
    mov x2, 86             // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 494-15        // Coordenada x inicial (524 )
    mov x2, 85             // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 495-15        // Coordenada x inicial (525 )
    mov x2, 85             // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 495-15        // Coordenada x inicial (525 )
    mov x2, 84             // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 496-15        // Coordenada x inicial (526 )
    mov x2, 83             // Coordenada y inicial
    mov x3, 504-15        // Coordenada x final (534 )
    mov x4, 86             // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 504-15        // Coordenada x inicial (534 )
    mov x2, 82             // Coordenada y inicial
    mov x3, 506-15        // Coordenada x final (536 )
    mov x4, 82             // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 506-15        // Coordenada x inicial (536 )
    mov x2, 81             // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 507-15        // Coordenada x inicial (537 )
    mov x2, 81             // Coordenada y inicial
    mov x3, 507-15        // Coordenada x final (537 )
    mov x4, 79             // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 508-15        // Coordenada x inicial (538 )
    mov x2, 79             // Coordenada y inicial
    mov x3, 508-15        // Coordenada x final (538 )
    mov x4, 78             // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 509-15        // Coordenada x inicial (539 )
    mov x2, 78             // Coordenada y inicial
    mov x3, 509-15        // Coordenada x final (539 )
    mov x4, 77             // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 510-15        // Coordenada x inicial (540 )
    mov x2, 77             // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 510-15        // Coordenada x inicial (540 )
    mov x2, 76             // Coordenada y inicial
    mov x3, 512-15        // Coordenada x final (542 )
    mov x4, 76             // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 512-15        // Coordenada x inicial (542 )
    mov x2, 75             // Coordenada y inicial
    mov x3, 514-15        // Coordenada x final (544 )
    mov x4, 75             // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 514-15        // Coordenada x inicial (544 )
    mov x2, 74             // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 515-15        // Coordenada x inicial (545 )
    mov x2, 74             // Coordenada y inicial
    mov x3, 515-15        // Coordenada x final (545 )
    mov x4, 72             // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 516-15        // Coordenada x inicial (546 )
    mov x2, 73             // Coordenada y inicial
    mov x3, 518-15        // Coordenada x final (548 )
    mov x4, 73             // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 518-15        // Coordenada x inicial (548 )
    mov x2, 74             // Coordenada y inicial
    mov x3, 520-15        // Coordenada x final (550 )
    mov x4, 74             // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 520-15        // Coordenada x inicial (550 )
    mov x2, 75             // Coordenada y inicial
    mov x3, 522-15        // Coordenada x final (552 )
    mov x4, 75             // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 522-15        // Coordenada x inicial 
    mov x2, 76             // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 522-15        // Coordenada x inicial (552 )
    mov x2, 77             // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 523-15        // Coordenada x inicial (553 )
    mov x2, 77             // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 523-15        // Coordenada x inicial (553 )
    mov x2, 78             // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 524-15        // Coordenada x inicial (554 )
    mov x2, 78             // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 524-15        // Coordenada x inicial (554 )
    mov x2, 79             // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 525-15        // Coordenada x inicial (555 )
    mov x2, 79             // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 525-15        // Coordenada x inicial (555 )
    mov x2, 80             // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 526-15        // Coordenada x inicial (556 )
    mov x2, 80             // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 527-15        // Coordenada x inicial (557 )
    mov x2, 81             // Coordenada y inicial
    mov x3, 530-15        // Coordenada x final (560 )
    mov x4, 81             // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 531-15        // Coordenada x inicial (561 )
    mov x2, 82             // Coordenada y inicial
    mov x3, 533-15        // Coordenada x final (563 )
    mov x4, 82             // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 533-15        // Coordenada x inicial (563 )
    mov x2, 83             // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 534-15        // Coordenada x inicial (564 )
    mov x2, 83             // Coordenada y inicial
    mov x3, 534-15        // Coordenada x final (564 )
    mov x4, 85             // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 535-15        // Coordenada x inicial (565 )
    mov x2, 85             // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 535-15        // Coordenada x inicial (565 )
    mov x2, 86             // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 536-15        // Coordenada x inicial (566 )
    mov x2, 86             // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 536-15        // Coordenada x inicial (566 )
    mov x2, 87             // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 537-15        // Coordenada x inicial (567 )
    mov x2, 87             // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 538-15        // Coordenada x inicial (568 )
    mov x2, 88             // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 538-15        // Coordenada x inicial (568 )
    mov x2, 89             // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

 
    LDR X30, [SP, #32]
    LDR X4, [SP, #24]
    LDR X3, [SP, #16]
    LDR X2, [SP, #8]
    LDR X1, [SP]
    ADD SP, SP, #40

    ret

nubes8:
     SUB SP, SP, #40
    STR X1, [SP]
    STR X2, [SP, #8]
    STR X3, [SP, #16]
    STR X4, [SP, #24]
    STR X30, [SP, #32]

    //----------NUBE1-----------------
    // Base de la nube 
    // Llamada a draw_line_straight para dibujar base de la nube
    mov x1, 39-30        // Coordenada x inicial (54 - 15)
    mov x2, 61        // Coordenada y inicial
    mov x3, 82-30        // Coordenada x final (97 - 15)
    mov x4, 61        // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    // Parte de arriba de la nube
    mov x1, 34-30        // (49 - 15)
    mov x2, 59
    ldr x10, gris
    bl draw_pixel

    mov x1, 35-30        // (50 - 15)
    mov x2, 58
    ldr x10, gris
    bl draw_pixel

    mov x1, 35-30        // (50 - 15)
    mov x2, 57
    ldr x10, gris
    bl draw_pixel

    mov x1, 38-30        // (53 - 15)
    mov x2, 56
    ldr x10, gris
    bl draw_pixel

    mov x1, 38-30        // (53 - 15)
    mov x2, 55
    ldr x10, gris
    bl draw_pixel

    mov x1, 39-30        // (54 - 15)
    mov x2, 55
    ldr x10, gris
    bl draw_pixel

    mov x1, 39-30        // (54 - 15)
    mov x2, 54
    ldr x10, gris
    bl draw_pixel

    mov x1, 40-30        // Coordenada x inicial (55 - 15)
    mov x2, 53        // Coordenada y inicial
    mov x3, 48-30        // Coordenada x final (63 - 15)
    mov x4, 56        // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 48-30        // Coordenada x inicial (63 - 15)
    mov x2, 52        // Coordenada y inicial
    mov x3, 50-30        // Coordenada x final (65 - 15)
    mov x4, 52        // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 50-30        // (65 - 15)
    mov x2, 51
    ldr x10, gris
    bl draw_pixel

    mov x1, 51-30        // Coordenada x inicial (66 - 15)
    mov x2, 51        // Coordenada y inicial
    mov x3, 51-30        // Coordenada x final (66 - 15)
    mov x4, 49        // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 52-30        // Coordenada x inicial (67 - 15)
    mov x2, 49        // Coordenada y inicial
    mov x3, 52-30        // Coordenada x final (67 - 15)
    mov x4, 48        // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 53-30        // Coordenada x inicial (68 - 15)
    mov x2, 48        // Coordenada y inicial
    mov x3, 53-30        // Coordenada x final (68 - 15)
    mov x4, 47        // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 54-30        // (69 - 15)
    mov x2, 47
    ldr x10, gris
    bl draw_pixel

    mov x1, 54-30        // Coordenada x inicial (69 - 15)
    mov x2, 46        // Coordenada y inicial
    mov x3, 56-30        // Coordenada x final (71 - 15)
    mov x4, 46        // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 56-30        // Coordenada x inicial (71 - 15)
    mov x2, 45        // Coordenada y inicial
    mov x3, 58-30        // Coordenada x final (73 - 15)
    mov x4, 45        // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 58-30        // (73 - 15)
    mov x2, 44
    ldr x10, gris
    bl draw_pixel

    mov x1, 59-30        // Coordenada x inicial (74 - 15)
    mov x2, 44        // Coordenada y inicial
    mov x3, 59-30        // Coordenada x final (74 - 15)
    mov x4, 42        // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 60-30        // Coordenada x inicial (75 - 15)
    mov x2, 43        // Coordenada y inicial
    mov x3, 62-30        // Coordenada x final (77 - 15)
    mov x4, 43        // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 62-30        // Coordenada x inicial (77 - 15)
    mov x2, 44        // Coordenada y inicial
    mov x3, 64-30        // Coordenada x final (79 - 15)
    mov x4, 44        // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 64-30        // Coordenada x inicial (79 - 15)
    mov x2, 45        // Coordenada y inicial
    mov x3, 68-30        // Coordenada x final (83 - 15)
    mov x4, 45        // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 66-30        // (81 - 15)
    mov x2, 46
    ldr x10, gris
    bl draw_pixel

    mov x1, 66-30        // (81 - 15)
    mov x2, 47
    ldr x10, gris
    bl draw_pixel

    mov x1, 67-30        // (82 - 15)
    mov x2, 47
    ldr x10, gris
    bl draw_pixel

    mov x1, 67-30        // (82 - 15)
    mov x2, 48
    ldr x10, gris
    bl draw_pixel

    mov x1, 68-30        // (83 - 15)
    mov x2, 48
    ldr x10, gris
    bl draw_pixel

    mov x1, 68-30        // (83 - 15)
    mov x2, 49
    ldr x10, gris
    bl draw_pixel

    mov x1, 69-30        // (84 - 15)
    mov x2, 49
    ldr x10, gris
    bl draw_pixel

    mov x1, 69-30        // (84 - 15)
    mov x2, 50
    ldr x10, gris
    bl draw_pixel

    mov x1, 70-30        // (85 - 15)
    mov x2, 50
    ldr x10, gris
    bl draw_pixel

    mov x1, 71-30       // Coordenada x inicial (86 - 15)
    mov x2, 51        // Coordenada y inicial
    mov x3, 74-30       // Coordenada x final (89 - 15)
    mov x4, 51        // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 75-30       // Coordenada x inicial (90 - 15)
    mov x2, 52        // Coordenada y inicial
    mov x3, 77-30       // Coordenada x final (92 - 15)
    mov x4, 52        // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 77-30       // (92 - 15)
    mov x2, 53
    ldr x10, gris
    bl draw_pixel

    mov x1, 78-30       // Coordenada x inicial (93 - 15)
    mov x2, 53        // Coordenada y inicial
    mov x3, 78-30       // Coordenada x final (93 - 15)
    mov x4, 55        // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 79-30       // (94 - 15)
    mov x2, 55
    ldr x10, gris
    bl draw_pixel

    mov x1, 79-30       // (94 - 15)
    mov x2, 56
    ldr x10, gris
    bl draw_pixel

    mov x1, 80-30       // (95 - 15)
    mov x2, 56
    ldr x10, gris
    bl draw_pixel

    mov x1, 80-30       // (95 - 15)
    mov x2, 57
    ldr x10, gris
    bl draw_pixel

    mov x1, 81-30       // (96 - 15)
    mov x2, 57
    ldr x10, gris
    bl draw_pixel

    mov x1, 82-30       // (97 - 15)
    mov x2, 58
    ldr x10, gris
    bl draw_pixel

    mov x1, 83-30       // (98 - 15)
    mov x2, 59
    ldr x10, gris
    bl draw_pixel

    mov x1, 83-30       // (98 - 15)
    mov X2, 60 
    ldr x10, gris
    bl draw_pixel

    // ------------NUBE2-----------------
    // Base de la nube 
    // Llamada a draw_line_straight para dibujar base de la nube

    mov x1, 273-30        // Coordenada x inicial (288 - 15)
    mov x2, 30         // Coordenada y inicial
    mov x3, 316-30        // Coordenada x final (331 - 15)
    mov x4, 30         // Coordenada y final
    ldr x10, gris
    bl draw_line_straight

    mov x1, 268-30        // (283 - 15)
    mov x2, 28         // Coordenada y inicial (30 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 269-30        // (284 - 15)
    mov x2, 27         // Coordenada y inicial (27 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 269-30        // (284 - 15)
    mov x2, 26         // Coordenada y inicial (26 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 272-30        // (287 - 15)
    mov x2, 25         // Coordenada y inicial (25 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 272-30        // (287 - 15)
    mov x2, 24         // Coordenada y inicial (24 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 273-30        // (288 - 15)
    mov x2, 24         // Coordenada y inicial (24 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 273-30        // (288 - 15)
    mov x2, 23         // Coordenada y inicial (23 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 274-30        // Coordenada x inicial (289 - 15)
    mov x2, 22         // Coordenada y inicial
    mov x3, 274-30        // Coordenada x final (289 - 15)
    mov x4, 25         // Coordenada y final
    ldr x10, gris
    bl draw_line_straight

    mov x1, 282-30        // Coordenada x inicial (297 - 15)
    mov x2, 21         // Coordenada y inicial
    mov x3, 284-30        // Coordenada x final (299 - 15)
    mov x4, 21         // Coordenada y final
    ldr x10, gris
    bl draw_line_straight

    mov x1, 284-30        // (299 - 15)
    mov x2, 20         // Coordenada y inicial (20 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 285-30        // Coordenada x inicial (300 - 15)
    mov x2, 20         // Coordenada y inicial
    mov x3, 285-30        // Coordenada x final (300 - 15)
    mov x4, 18         // Coordenada y final
    ldr x10, gris
    bl draw_line_straight

    mov x1, 286-30        // (301 - 15)
    mov x2, 18         // Coordenada y inicial (18 - 31)
    mov x3, 286-30        // (301 - 15)
    mov x4, 17         // Coordenada y final (17 - 31)
    ldr x10, gris
    bl draw_line_straight

    mov x1, 287-30        // (302 - 15)
    mov x2, 17         // Coordenada y inicial (17 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 286-30        // (301 - 15)
    mov x2, 15         // Coordenada y inicial (15 - 31)
    mov x3, 286-30        // (301 - 15)
    mov x4, 15         // Coordenada y final (15 - 31)
    ldr x10, gris
    bl draw_line_straight

    mov x1, 289-30        // (304 - 15)
    mov x2, 14         // Coordenada y inicial (14 - 31)
    mov x3, 291-30        // (306 - 15)
    mov x4, 14         // Coordenada y final (14 - 31)
    ldr x10, gris
    bl draw_line_straight

    mov x1, 291-30        // (306 - 15)
    mov x2, 13         // Coordenada y inicial (13 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 292-30        // (307 - 15)
    mov x2, 13         // Coordenada y inicial (13 - 31)
    mov x3, 292-30        // (307 - 15)
    mov x4, 11         // Coordenada y final (11 - 31)
    ldr x10, gris
    bl draw_line_straight

    mov x1, 293-30        // (308 - 15)
    mov x2, 12         // Coordenada y inicial (12 - 31)
    mov x3, 295-30        // (310 - 15)
    mov x4, 12         // Coordenada y final (12 - 31)
    ldr x10, gris
    bl draw_line_straight

    mov x1, 295-30        // (310 - 15)
    mov x2, 13         // Coordenada y inicial (13 - 31)
    mov x3, 298-30        // (313 - 15)
    mov x4, 13         // Coordenada y final (13 - 31)
    ldr x10, gris
    bl draw_line_straight

    mov x1, 297-30        // (312 - 15)
    mov x2, 14         // Coordenada y inicial (14 - 31)
    mov x3, 300-30        // (315 - 15)
    mov x4, 14         // Coordenada y final (14 - 31)
    ldr x10, gris
    bl draw_line_straight

    mov x1, 300-30        // (315 - 15)
    mov x2, 15         // Coordenada y inicial (15 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 300-30        // (315 - 15)
    mov x2, 16         // Coordenada y inicial (16 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 301-30        // (316 - 15)
    mov x2, 16         // Coordenada y inicial (16 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 301-30        // (316 - 15)
    mov x2, 17         // Coordenada y inicial (17 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 302-30        // (317 - 15)
    mov x2, 17         // Coordenada y inicial (17 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 302-30        // (317 - 15)
    mov x2, 18         // Coordenada y inicial (18 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 303-30        // (318 - 15)
    mov x2, 18         // Coordenada y inicial (18 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 303-30        // (318 - 15)
    mov x2, 19         // Coordenada y inicial (19 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 304-30        // (319 - 15)
    mov x2, 19         // Coordenada y inicial (19 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 305-30        // (320 - 15)
    mov x2, 20         // Coordenada y inicial (20 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 306-30        // (321 - 15)
    mov x2, 21         // Coordenada y inicial (21 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 307-30        // (322 - 15)
    mov x2, 21         // Coordenada y inicial (21 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 307-30        // (322 - 15)
    mov x2, 22         // Coordenada y inicial (22 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 308-30        // (323 - 15)
    mov x2, 22         // Coordenada y inicial (22 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 309-30        // (324 - 15)
    mov x2, 23         // Coordenada y inicial (23 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 310-30        // (325 - 15)
    mov x2, 24         // Coordenada y inicial (24 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 311-30        // (326 - 15)
    mov x2, 25         // Coordenada y inicial (25 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 312-30        // (327 - 15)
    mov x2, 25         // Coordenada y inicial (25 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 312-30        // (327 - 15)
    mov x2, 26         // Coordenada y inicial (26 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 313-30        // (328 - 15)
    mov x2, 26         // Coordenada y inicial (26 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 313-30        // (328 - 15)
    mov x2, 27         // Coordenada y inicial (27 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 314-30        // (329 - 15)
    mov x2, 27         // Coordenada y inicial (27 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 315-30        // (330 - 15)
    mov x2, 28         // Coordenada y inicial (28 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 315-30        // (330 - 15)
    mov x2, 29         // Coordenada y inicial (29 - 31)
    ldr x10, gris
    bl draw_pixel

    //----------NUBE3-----------------
    // Base de la nube 
    // Llamada a draw_line_straight para dibujar base de la nube

    mov x1, 495-30        // Coordenada x inicial (525 )
    mov x2, 91             // Coordenada y inicial
    mov x3, 538-30        // Coordenada x final (568 )
    mov x4, 91             // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    // Parte de arriba de la nube

    mov x1, 490-30        // Coordenada x inicial (520 )
    mov x2, 89             // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 491-30        // Coordenada x inicial (521 )
    mov x2, 88             // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 491-30        // Coordenada x inicial (521 )
    mov x2, 87             // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 494-30        // Coordenada x inicial (524 )
    mov x2, 86             // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 494-30        // Coordenada x inicial (524 )
    mov x2, 85             // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 495-30        // Coordenada x inicial (525 )
    mov x2, 85             // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 495-30        // Coordenada x inicial (525 )
    mov x2, 84             // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 496-30        // Coordenada x inicial (526 )
    mov x2, 83             // Coordenada y inicial
    mov x3, 504-30        // Coordenada x final (534 )
    mov x4, 86             // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 504-30        // Coordenada x inicial (534 )
    mov x2, 82             // Coordenada y inicial
    mov x3, 506-30        // Coordenada x final (536 )
    mov x4, 82             // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 506-30        // Coordenada x inicial (536 )
    mov x2, 81             // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 507-30        // Coordenada x inicial (537 )
    mov x2, 81             // Coordenada y inicial
    mov x3, 507-30        // Coordenada x final (537 )
    mov x4, 79             // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 508-30        // Coordenada x inicial (538 )
    mov x2, 79             // Coordenada y inicial
    mov x3, 508-30        // Coordenada x final (538 )
    mov x4, 78             // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 509-30        // Coordenada x inicial (539 )
    mov x2, 78             // Coordenada y inicial
    mov x3, 509-30        // Coordenada x final (539 )
    mov x4, 77             // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 510-30        // Coordenada x inicial (540 )
    mov x2, 77             // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 510-30        // Coordenada x inicial (540 )
    mov x2, 76             // Coordenada y inicial
    mov x3, 512-30        // Coordenada x final (542 )
    mov x4, 76             // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 512-30        // Coordenada x inicial (542 )
    mov x2, 75             // Coordenada y inicial
    mov x3, 514-30        // Coordenada x final (544 )
    mov x4, 75             // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 514-30        // Coordenada x inicial (544 )
    mov x2, 74             // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 515-30        // Coordenada x inicial (545 )
    mov x2, 74             // Coordenada y inicial
    mov x3, 515-30        // Coordenada x final (545 )
    mov x4, 72             // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 516-30        // Coordenada x inicial (546 )
    mov x2, 73             // Coordenada y inicial
    mov x3, 518-30        // Coordenada x final (548 )
    mov x4, 73             // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 518-30        // Coordenada x inicial (548 )
    mov x2, 74             // Coordenada y inicial
    mov x3, 520-30        // Coordenada x final (550 )
    mov x4, 74             // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 520-30        // Coordenada x inicial (550 )
    mov x2, 75             // Coordenada y inicial
    mov x3, 522-30        // Coordenada x final (552 )
    mov x4, 75             // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 522-30        // Coordenada x inicial 
    mov x2, 76             // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 522-30        // Coordenada x inicial (552 )
    mov x2, 77             // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 523-30        // Coordenada x inicial (553 )
    mov x2, 77             // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 523-30        // Coordenada x inicial (553 )
    mov x2, 78             // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 524-30        // Coordenada x inicial (554 )
    mov x2, 78             // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 524-30        // Coordenada x inicial (554 )
    mov x2, 79             // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 525-30        // Coordenada x inicial (555 )
    mov x2, 79             // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 525-30        // Coordenada x inicial (555 )
    mov x2, 80             // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 526-30        // Coordenada x inicial (556 )
    mov x2, 80             // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 527-30        // Coordenada x inicial (557 )
    mov x2, 81             // Coordenada y inicial
    mov x3, 530-30        // Coordenada x final (560 )
    mov x4, 81             // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 531-30        // Coordenada x inicial (561 )
    mov x2, 82             // Coordenada y inicial
    mov x3, 533-30        // Coordenada x final (563 )
    mov x4, 82             // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 533-30        // Coordenada x inicial (563 )
    mov x2, 83             // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 534-30        // Coordenada x inicial (564 )
    mov x2, 83             // Coordenada y inicial
    mov x3, 534-30        // Coordenada x final (564 )
    mov x4, 85             // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 535-30        // Coordenada x inicial (565 )
    mov x2, 85             // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 535-30        // Coordenada x inicial (565 )
    mov x2, 86             // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 536-30        // Coordenada x inicial (566 )
    mov x2, 86             // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 536-30        // Coordenada x inicial (566 )
    mov x2, 87             // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 537-30        // Coordenada x inicial (567 )
    mov x2, 87             // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 538-30        // Coordenada x inicial (568 )
    mov x2, 88             // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 538-30        // Coordenada x inicial (568 )
    mov x2, 89             // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

 
    LDR X30, [SP, #32]
    LDR X4, [SP, #24]
    LDR X3, [SP, #16]
    LDR X2, [SP, #8]
    LDR X1, [SP]
    ADD SP, SP, #40

    ret

nubes9: 
    SUB SP, SP, #40
    STR X1, [SP]
    STR X2, [SP, #8]
    STR X3, [SP, #16]
    STR X4, [SP, #24]
    STR X30, [SP, #32]

    //----------NUBE1-----------------
    // Base de la nube 
    // Llamada a draw_line_straight para dibujar base de la nube
    mov x1, 39-45        // Coordenada x inicial (54 - 15)
    mov x2, 61        // Coordenada y inicial
    mov x3, 82-45        // Coordenada x final (97 - 15)
    mov x4, 61        // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    // Parte de arriba de la nube
    mov x1, 34-45        // (49 - 15)
    mov x2, 59
    ldr x10, gris
    bl draw_pixel

    mov x1, 35-45        // (50 - 15)
    mov x2, 58
    ldr x10, gris
    bl draw_pixel

    mov x1, 35-45        // (50 - 15)
    mov x2, 57
    ldr x10, gris
    bl draw_pixel

    mov x1, 38-45        // (53 - 15)
    mov x2, 56
    ldr x10, gris
    bl draw_pixel

    mov x1, 38-45        // (53 - 15)
    mov x2, 55
    ldr x10, gris
    bl draw_pixel

    mov x1, 39-45        // (54 - 15)
    mov x2, 55
    ldr x10, gris
    bl draw_pixel

    mov x1, 39-45        // (54 - 15)
    mov x2, 54
    ldr x10, gris
    bl draw_pixel

    mov x1, 40-45        // Coordenada x inicial (55 - 15)
    mov x2, 53        // Coordenada y inicial
    mov x3, 48-45        // Coordenada x final (63 - 15)
    mov x4, 56        // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 48-45        // Coordenada x inicial (63 - 15)
    mov x2, 52        // Coordenada y inicial
    mov x3, 50-45        // Coordenada x final (65 - 15)
    mov x4, 52        // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 50-45        // (65 - 15)
    mov x2, 51
    ldr x10, gris
    bl draw_pixel

    mov x1, 51-45        // Coordenada x inicial (66 - 15)
    mov x2, 51        // Coordenada y inicial
    mov x3, 51-45        // Coordenada x final (66 - 15)
    mov x4, 49        // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 52-45        // Coordenada x inicial (67 - 15)
    mov x2, 49        // Coordenada y inicial
    mov x3, 52-45        // Coordenada x final (67 - 15)
    mov x4, 48        // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 53-45        // Coordenada x inicial (68 - 15)
    mov x2, 48        // Coordenada y inicial
    mov x3, 53-45        // Coordenada x final (68 - 15)
    mov x4, 47        // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 54-45        // (69 - 15)
    mov x2, 47
    ldr x10, gris
    bl draw_pixel

    mov x1, 54-45        // Coordenada x inicial (69 - 15)
    mov x2, 46        // Coordenada y inicial
    mov x3, 56-45        // Coordenada x final (71 - 15)
    mov x4, 46        // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 56-45        // Coordenada x inicial (71 - 15)
    mov x2, 45        // Coordenada y inicial
    mov x3, 58-45        // Coordenada x final (73 - 15)
    mov x4, 45        // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 58-45        // (73 - 15)
    mov x2, 44
    ldr x10, gris
    bl draw_pixel

    mov x1, 59-45        // Coordenada x inicial (74 - 15)
    mov x2, 44        // Coordenada y inicial
    mov x3, 59-45        // Coordenada x final (74 - 15)
    mov x4, 42        // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 60-45        // Coordenada x inicial (75 - 15)
    mov x2, 43        // Coordenada y inicial
    mov x3, 62-45        // Coordenada x final (77 - 15)
    mov x4, 43        // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 62-45        // Coordenada x inicial (77 - 15)
    mov x2, 44        // Coordenada y inicial
    mov x3, 64-45        // Coordenada x final (79 - 15)
    mov x4, 44        // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 64-45        // Coordenada x inicial (79 - 15)
    mov x2, 45        // Coordenada y inicial
    mov x3, 68-45        // Coordenada x final (83 - 15)
    mov x4, 45        // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 66-45        // (81 - 15)
    mov x2, 46
    ldr x10, gris
    bl draw_pixel

    mov x1, 66-45        // (81 - 15)
    mov x2, 47
    ldr x10, gris
    bl draw_pixel

    mov x1, 67-45        // (82 - 15)
    mov x2, 47
    ldr x10, gris
    bl draw_pixel

    mov x1, 67-45        // (82 - 15)
    mov x2, 48
    ldr x10, gris
    bl draw_pixel

    mov x1, 68-45        // (83 - 15)
    mov x2, 48
    ldr x10, gris
    bl draw_pixel

    mov x1, 68-45        // (83 - 15)
    mov x2, 49
    ldr x10, gris
    bl draw_pixel

    mov x1, 69-45        // (84 - 15)
    mov x2, 49
    ldr x10, gris
    bl draw_pixel

    mov x1, 69-45        // (84 - 15)
    mov x2, 50
    ldr x10, gris
    bl draw_pixel

    mov x1, 70-45        // (85 - 15)
    mov x2, 50
    ldr x10, gris
    bl draw_pixel

    mov x1, 71-45       // Coordenada x inicial (86 - 15)
    mov x2, 51        // Coordenada y inicial
    mov x3, 74-45       // Coordenada x final (89 - 15)
    mov x4, 51        // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 75-45       // Coordenada x inicial (90 - 15)
    mov x2, 52        // Coordenada y inicial
    mov x3, 77-45       // Coordenada x final (92 - 15)
    mov x4, 52        // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 77-45       // (92 - 15)
    mov x2, 53
    ldr x10, gris
    bl draw_pixel

    mov x1, 78-45       // Coordenada x inicial (93 - 15)
    mov x2, 53        // Coordenada y inicial
    mov x3, 78-45       // Coordenada x final (93 - 15)
    mov x4, 55        // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 79-45       // (94 - 15)
    mov x2, 55
    ldr x10, gris
    bl draw_pixel

    mov x1, 79-45       // (94 - 15)
    mov x2, 56
    ldr x10, gris
    bl draw_pixel

    mov x1, 80-45       // (95 - 15)
    mov x2, 56
    ldr x10, gris
    bl draw_pixel

    mov x1, 80-45       // (95 - 15)
    mov x2, 57
    ldr x10, gris
    bl draw_pixel

    mov x1, 81-45       // (96 - 15)
    mov x2, 57
    ldr x10, gris
    bl draw_pixel

    mov x1, 82-45       // (97 - 15)
    mov x2, 58
    ldr x10, gris
    bl draw_pixel

    mov x1, 83-45       // (98 - 15)
    mov x2, 59
    ldr x10, gris
    bl draw_pixel

    mov x1, 83-45       // (98 - 15)
    mov X2, 60 
    ldr x10, gris
    bl draw_pixel

    // ------------NUBE2-----------------
    // Base de la nube 
    // Llamada a draw_line_straight para dibujar base de la nube

    mov x1, 273-45        // Coordenada x inicial (288 - 15)
    mov x2, 30         // Coordenada y inicial
    mov x3, 316-45        // Coordenada x final (331 - 15)
    mov x4, 30         // Coordenada y final
    ldr x10, gris
    bl draw_line_straight

    mov x1, 268-45        // (283 - 15)
    mov x2, 28         // Coordenada y inicial (30 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 269-45        // (284 - 15)
    mov x2, 27         // Coordenada y inicial (27 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 269-45        // (284 - 15)
    mov x2, 26         // Coordenada y inicial (26 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 272-45        // (287 - 15)
    mov x2, 25         // Coordenada y inicial (25 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 272-45        // (287 - 15)
    mov x2, 24         // Coordenada y inicial (24 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 273-45        // (288 - 15)
    mov x2, 24         // Coordenada y inicial (24 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 273-45        // (288 - 15)
    mov x2, 23         // Coordenada y inicial (23 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 274-45        // Coordenada x inicial (289 - 15)
    mov x2, 22         // Coordenada y inicial
    mov x3, 274-45        // Coordenada x final (289 - 15)
    mov x4, 25         // Coordenada y final
    ldr x10, gris
    bl draw_line_straight

    mov x1, 282-45        // Coordenada x inicial (297 - 15)
    mov x2, 21         // Coordenada y inicial
    mov x3, 284-45        // Coordenada x final (299 - 15)
    mov x4, 21         // Coordenada y final
    ldr x10, gris
    bl draw_line_straight

    mov x1, 284-45        // (299 - 15)
    mov x2, 20         // Coordenada y inicial (20 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 285-45        // Coordenada x inicial (300 - 15)
    mov x2, 20         // Coordenada y inicial
    mov x3, 285-45        // Coordenada x final (300 - 15)
    mov x4, 18         // Coordenada y final
    ldr x10, gris
    bl draw_line_straight

    mov x1, 286-45        // (301 - 15)
    mov x2, 18         // Coordenada y inicial (18 - 31)
    mov x3, 286-45        // (301 - 15)
    mov x4, 17         // Coordenada y final (17 - 31)
    ldr x10, gris
    bl draw_line_straight

    mov x1, 287-45        // (302 - 15)
    mov x2, 17         // Coordenada y inicial (17 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 286-45        // (301 - 15)
    mov x2, 15         // Coordenada y inicial (15 - 31)
    mov x3, 286-45        // (301 - 15)
    mov x4, 15         // Coordenada y final (15 - 31)
    ldr x10, gris
    bl draw_line_straight

    mov x1, 289-45        // (304 - 15)
    mov x2, 14         // Coordenada y inicial (14 - 31)
    mov x3, 291-45        // (306 - 15)
    mov x4, 14         // Coordenada y final (14 - 31)
    ldr x10, gris
    bl draw_line_straight

    mov x1, 291-45        // (306 - 15)
    mov x2, 13         // Coordenada y inicial (13 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 292-45        // (307 - 15)
    mov x2, 13         // Coordenada y inicial (13 - 31)
    mov x3, 292-45        // (307 - 15)
    mov x4, 11         // Coordenada y final (11 - 31)
    ldr x10, gris
    bl draw_line_straight

    mov x1, 293-45        // (308 - 15)
    mov x2, 12         // Coordenada y inicial (12 - 31)
    mov x3, 295-45        // (310 - 15)
    mov x4, 12         // Coordenada y final (12 - 31)
    ldr x10, gris
    bl draw_line_straight

    mov x1, 295-45        // (310 - 15)
    mov x2, 13         // Coordenada y inicial (13 - 31)
    mov x3, 298-45        // (313 - 15)
    mov x4, 13         // Coordenada y final (13 - 31)
    ldr x10, gris
    bl draw_line_straight

    mov x1, 297-45        // (312 - 15)
    mov x2, 14         // Coordenada y inicial (14 - 31)
    mov x3, 300-45        // (315 - 15)
    mov x4, 14         // Coordenada y final (14 - 31)
    ldr x10, gris
    bl draw_line_straight

    mov x1, 300-45        // (315 - 15)
    mov x2, 15         // Coordenada y inicial (15 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 300-45        // (315 - 15)
    mov x2, 16         // Coordenada y inicial (16 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 301-45        // (316 - 15)
    mov x2, 16         // Coordenada y inicial (16 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 301-45        // (316 - 15)
    mov x2, 17         // Coordenada y inicial (17 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 302-45        // (317 - 15)
    mov x2, 17         // Coordenada y inicial (17 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 302-45        // (317 - 15)
    mov x2, 18         // Coordenada y inicial (18 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 303-45        // (318 - 15)
    mov x2, 18         // Coordenada y inicial (18 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 303-45        // (318 - 15)
    mov x2, 19         // Coordenada y inicial (19 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 304-45        // (319 - 15)
    mov x2, 19         // Coordenada y inicial (19 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 305-45        // (320 - 15)
    mov x2, 20         // Coordenada y inicial (20 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 306-45        // (321 - 15)
    mov x2, 21         // Coordenada y inicial (21 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 307-45        // (322 - 15)
    mov x2, 21         // Coordenada y inicial (21 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 307-45        // (322 - 15)
    mov x2, 22         // Coordenada y inicial (22 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 308-45        // (323 - 15)
    mov x2, 22         // Coordenada y inicial (22 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 309-45        // (324 - 15)
    mov x2, 23         // Coordenada y inicial (23 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 310-45        // (325 - 15)
    mov x2, 24         // Coordenada y inicial (24 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 311-45        // (326 - 15)
    mov x2, 25         // Coordenada y inicial (25 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 312-45        // (327 - 15)
    mov x2, 25         // Coordenada y inicial (25 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 312-45        // (327 - 15)
    mov x2, 26         // Coordenada y inicial (26 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 313-45        // (328 - 15)
    mov x2, 26         // Coordenada y inicial (26 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 313-45        // (328 - 15)
    mov x2, 27         // Coordenada y inicial (27 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 314-45        // (329 - 15)
    mov x2, 27         // Coordenada y inicial (27 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 315-45        // (330 - 15)
    mov x2, 28         // Coordenada y inicial (28 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 315-45        // (330 - 15)
    mov x2, 29         // Coordenada y inicial (29 - 31)
    ldr x10, gris
    bl draw_pixel

    //----------NUBE3-----------------
    // Base de la nube 
    // Llamada a draw_line_straight para dibujar base de la nube

    mov x1, 495-45        // Coordenada x inicial (525 )
    mov x2, 91             // Coordenada y inicial
    mov x3, 538-45        // Coordenada x final (568 )
    mov x4, 91             // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    // Parte de arriba de la nube

    mov x1, 490-45        // Coordenada x inicial (520 )
    mov x2, 89             // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 491-45        // Coordenada x inicial (521 )
    mov x2, 88             // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 491-45        // Coordenada x inicial (521 )
    mov x2, 87             // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 494-45        // Coordenada x inicial (524 )
    mov x2, 86             // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 494-45        // Coordenada x inicial (524 )
    mov x2, 85             // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 495-45        // Coordenada x inicial (525 )
    mov x2, 85             // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 495-45        // Coordenada x inicial (525 )
    mov x2, 84             // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 496-45        // Coordenada x inicial (526 )
    mov x2, 83             // Coordenada y inicial
    mov x3, 504-45        // Coordenada x final (534 )
    mov x4, 86             // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 504-45        // Coordenada x inicial (534 )
    mov x2, 82             // Coordenada y inicial
    mov x3, 506-45        // Coordenada x final (536 )
    mov x4, 82             // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 506-45        // Coordenada x inicial (536 )
    mov x2, 81             // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 507-45        // Coordenada x inicial (537 )
    mov x2, 81             // Coordenada y inicial
    mov x3, 507-45        // Coordenada x final (537 )
    mov x4, 79             // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 508-45        // Coordenada x inicial (538 )
    mov x2, 79             // Coordenada y inicial
    mov x3, 508-45        // Coordenada x final (538 )
    mov x4, 78             // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 509-45        // Coordenada x inicial (539 )
    mov x2, 78             // Coordenada y inicial
    mov x3, 509-45        // Coordenada x final (539 )
    mov x4, 77             // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 510-45        // Coordenada x inicial (540 )
    mov x2, 77             // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 510-45        // Coordenada x inicial (540 )
    mov x2, 76             // Coordenada y inicial
    mov x3, 512-45        // Coordenada x final (542 )
    mov x4, 76             // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 512-45        // Coordenada x inicial (542 )
    mov x2, 75             // Coordenada y inicial
    mov x3, 514-45        // Coordenada x final (544 )
    mov x4, 75             // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 514-45        // Coordenada x inicial (544 )
    mov x2, 74             // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 515-45        // Coordenada x inicial (545 )
    mov x2, 74             // Coordenada y inicial
    mov x3, 515-45        // Coordenada x final (545 )
    mov x4, 72             // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 516-45        // Coordenada x inicial (546 )
    mov x2, 73             // Coordenada y inicial
    mov x3, 518-45        // Coordenada x final (548 )
    mov x4, 73             // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 518-45        // Coordenada x inicial (548 )
    mov x2, 74             // Coordenada y inicial
    mov x3, 520-45        // Coordenada x final (550 )
    mov x4, 74             // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 520-45        // Coordenada x inicial (550 )
    mov x2, 75             // Coordenada y inicial
    mov x3, 522-45        // Coordenada x final (552 )
    mov x4, 75             // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 522-45        // Coordenada x inicial 
    mov x2, 76             // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 522-45        // Coordenada x inicial (552 )
    mov x2, 77             // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 523-45        // Coordenada x inicial (553 )
    mov x2, 77             // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 523-45        // Coordenada x inicial (553 )
    mov x2, 78             // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 524-45        // Coordenada x inicial (554 )
    mov x2, 78             // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 524-45        // Coordenada x inicial (554 )
    mov x2, 79             // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 525-45        // Coordenada x inicial (555 )
    mov x2, 79             // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 525-45        // Coordenada x inicial (555 )
    mov x2, 80             // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 526-45        // Coordenada x inicial (556 )
    mov x2, 80             // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 527-45        // Coordenada x inicial (557 )
    mov x2, 81             // Coordenada y inicial
    mov x3, 530-45        // Coordenada x final (560 )
    mov x4, 81             // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 531-45        // Coordenada x inicial (561 )
    mov x2, 82             // Coordenada y inicial
    mov x3, 533-45        // Coordenada x final (563 )
    mov x4, 82             // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 533-45        // Coordenada x inicial (563 )
    mov x2, 83             // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 534-45        // Coordenada x inicial (564 )
    mov x2, 83             // Coordenada y inicial
    mov x3, 534-45        // Coordenada x final (564 )
    mov x4, 85             // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 535-45        // Coordenada x inicial (565 )
    mov x2, 85             // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 535-45        // Coordenada x inicial (565 )
    mov x2, 86             // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 536-45        // Coordenada x inicial (566 )
    mov x2, 86             // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 536-45        // Coordenada x inicial (566 )
    mov x2, 87             // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 537-45        // Coordenada x inicial (567 )
    mov x2, 87             // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 538-45        // Coordenada x inicial (568 )
    mov x2, 88             // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 538-45        // Coordenada x inicial (568 )
    mov x2, 89             // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

 
    LDR X30, [SP, #32]
    LDR X4, [SP, #24]
    LDR X3, [SP, #16]
    LDR X2, [SP, #8]
    LDR X1, [SP]
    ADD SP, SP, #40

    ret

nubes10:
    SUB SP, SP, #40
    STR X1, [SP]
    STR X2, [SP, #8]
    STR X3, [SP, #16]
    STR X4, [SP, #24]
    STR X30, [SP, #32]

    //----------NUBE1-----------------
    // Base de la nube 
    // Llamada a draw_line_straight para dibujar base de la nube
    mov x1, 39-75        // Coordenada x inicial (54 - 15)
    mov x2, 61        // Coordenada y inicial
    mov x3, 82-75        // Coordenada x final (97 - 15)
    mov x4, 61        // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    // Parte de arriba de la nube
    mov x1, 34-75        // (49 - 15)
    mov x2, 59
    ldr x10, gris
    bl draw_pixel

    mov x1, 35-75        // (50 - 15)
    mov x2, 58
    ldr x10, gris
    bl draw_pixel

    mov x1, 35-75        // (50 - 15)
    mov x2, 57
    ldr x10, gris
    bl draw_pixel

    mov x1, 38-75        // (53 - 15)
    mov x2, 56
    ldr x10, gris
    bl draw_pixel

    mov x1, 38-75        // (53 - 15)
    mov x2, 55
    ldr x10, gris
    bl draw_pixel

    mov x1, 39-75        // (54 - 15)
    mov x2, 55
    ldr x10, gris
    bl draw_pixel

    mov x1, 39-75        // (54 - 15)
    mov x2, 54
    ldr x10, gris
    bl draw_pixel

    mov x1, 40-75        // Coordenada x inicial (55 - 15)
    mov x2, 53        // Coordenada y inicial
    mov x3, 48-75        // Coordenada x final (63 - 15)
    mov x4, 56        // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 48-75        // Coordenada x inicial (63 - 15)
    mov x2, 52        // Coordenada y inicial
    mov x3, 50-75        // Coordenada x final (65 - 15)
    mov x4, 52        // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 50-75        // (65 - 15)
    mov x2, 51
    ldr x10, gris
    bl draw_pixel

    mov x1, 51-75        // Coordenada x inicial (66 - 15)
    mov x2, 51        // Coordenada y inicial
    mov x3, 51-75        // Coordenada x final (66 - 15)
    mov x4, 49        // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 52-75        // Coordenada x inicial (67 - 15)
    mov x2, 49        // Coordenada y inicial
    mov x3, 52-75        // Coordenada x final (67 - 15)
    mov x4, 48        // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 53-75        // Coordenada x inicial (68 - 15)
    mov x2, 48        // Coordenada y inicial
    mov x3, 53-75        // Coordenada x final (68 - 15)
    mov x4, 47        // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 54-75        // (69 - 15)
    mov x2, 47
    ldr x10, gris
    bl draw_pixel

    mov x1, 54-75        // Coordenada x inicial (69 - 15)
    mov x2, 46        // Coordenada y inicial
    mov x3, 56-75        // Coordenada x final (71 - 15)
    mov x4, 46        // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 56-75        // Coordenada x inicial (71 - 15)
    mov x2, 45        // Coordenada y inicial
    mov x3, 58-75        // Coordenada x final (73 - 15)
    mov x4, 45        // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 58-75        // (73 - 15)
    mov x2, 44
    ldr x10, gris
    bl draw_pixel

    mov x1, 59-75        // Coordenada x inicial (74 - 15)
    mov x2, 44        // Coordenada y inicial
    mov x3, 59-75        // Coordenada x final (74 - 15)
    mov x4, 42        // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 60-75        // Coordenada x inicial (75 - 15)
    mov x2, 43        // Coordenada y inicial
    mov x3, 62-75        // Coordenada x final (77 - 15)
    mov x4, 43        // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 62-75        // Coordenada x inicial (77 - 15)
    mov x2, 44        // Coordenada y inicial
    mov x3, 64-75        // Coordenada x final (79 - 15)
    mov x4, 44        // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 64-75        // Coordenada x inicial (79 - 15)
    mov x2, 45        // Coordenada y inicial
    mov x3, 68-75        // Coordenada x final (83 - 15)
    mov x4, 45        // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 66-75        // (81 - 15)
    mov x2, 46
    ldr x10, gris
    bl draw_pixel

    mov x1, 66-75        // (81 - 15)
    mov x2, 47
    ldr x10, gris
    bl draw_pixel

    mov x1, 67-75        // (82 - 15)
    mov x2, 47
    ldr x10, gris
    bl draw_pixel

    mov x1, 67-75        // (82 - 15)
    mov x2, 48
    ldr x10, gris
    bl draw_pixel

    mov x1, 68-75        // (83 - 15)
    mov x2, 48
    ldr x10, gris
    bl draw_pixel

    mov x1, 68-75        // (83 - 15)
    mov x2, 49
    ldr x10, gris
    bl draw_pixel

    mov x1, 69-75        // (84 - 15)
    mov x2, 49
    ldr x10, gris
    bl draw_pixel

    mov x1, 69-75        // (84 - 15)
    mov x2, 50
    ldr x10, gris
    bl draw_pixel

    mov x1, 70-75        // (85 - 15)
    mov x2, 50
    ldr x10, gris
    bl draw_pixel

    mov x1, 71-75       // Coordenada x inicial (86 - 15)
    mov x2, 51        // Coordenada y inicial
    mov x3, 74-75       // Coordenada x final (89 - 15)
    mov x4, 51        // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 75-75       // Coordenada x inicial (90 - 15)
    mov x2, 52        // Coordenada y inicial
    mov x3, 77-75       // Coordenada x final (92 - 15)
    mov x4, 52        // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 77-75       // (92 - 15)
    mov x2, 53
    ldr x10, gris
    bl draw_pixel

    mov x1, 78-75       // Coordenada x inicial (93 - 15)
    mov x2, 53        // Coordenada y inicial
    mov x3, 78-75       // Coordenada x final (93 - 15)
    mov x4, 55        // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 79-75       // (94 - 15)
    mov x2, 55
    ldr x10, gris
    bl draw_pixel

    mov x1, 79-75       // (94 - 15)
    mov x2, 56
    ldr x10, gris
    bl draw_pixel

    mov x1, 80-75       // (95 - 15)
    mov x2, 56
    ldr x10, gris
    bl draw_pixel

    mov x1, 80-75       // (95 - 15)
    mov x2, 57
    ldr x10, gris
    bl draw_pixel

    mov x1, 81-75       // (96 - 15)
    mov x2, 57
    ldr x10, gris
    bl draw_pixel

    mov x1, 82-75       // (97 - 15)
    mov x2, 58
    ldr x10, gris
    bl draw_pixel

    mov x1, 83-75       // (98 - 15)
    mov x2, 59
    ldr x10, gris
    bl draw_pixel

    mov x1, 83-75       // (98 - 15)
    mov X2, 60 
    ldr x10, gris
    bl draw_pixel

    // ------------NUBE2-----------------
    // Base de la nube 
    // Llamada a draw_line_straight para dibujar base de la nube

    mov x1, 273-75        // Coordenada x inicial (288 - 15)
    mov x2, 30         // Coordenada y inicial
    mov x3, 316-75        // Coordenada x final (331 - 15)
    mov x4, 30         // Coordenada y final
    ldr x10, gris
    bl draw_line_straight

    mov x1, 268-75        // (283 - 15)
    mov x2, 28         // Coordenada y inicial (30 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 269-75        // (284 - 15)
    mov x2, 27         // Coordenada y inicial (27 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 269-75        // (284 - 15)
    mov x2, 26         // Coordenada y inicial (26 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 272-75        // (287 - 15)
    mov x2, 25         // Coordenada y inicial (25 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 272-75        // (287 - 15)
    mov x2, 24         // Coordenada y inicial (24 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 273-75        // (288 - 15)
    mov x2, 24         // Coordenada y inicial (24 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 273-75        // (288 - 15)
    mov x2, 23         // Coordenada y inicial (23 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 274-75        // Coordenada x inicial (289 - 15)
    mov x2, 22         // Coordenada y inicial
    mov x3, 274-75        // Coordenada x final (289 - 15)
    mov x4, 25         // Coordenada y final
    ldr x10, gris
    bl draw_line_straight

    mov x1, 282-75        // Coordenada x inicial (297 - 15)
    mov x2, 21         // Coordenada y inicial
    mov x3, 284-75        // Coordenada x final (299 - 15)
    mov x4, 21         // Coordenada y final
    ldr x10, gris
    bl draw_line_straight

    mov x1, 284-75        // (299 - 15)
    mov x2, 20         // Coordenada y inicial (20 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 285-75        // Coordenada x inicial (300 - 15)
    mov x2, 20         // Coordenada y inicial
    mov x3, 285-75        // Coordenada x final (300 - 15)
    mov x4, 18         // Coordenada y final
    ldr x10, gris
    bl draw_line_straight

    mov x1, 286-75        // (301 - 15)
    mov x2, 18         // Coordenada y inicial (18 - 31)
    mov x3, 286-75        // (301 - 15)
    mov x4, 17         // Coordenada y final (17 - 31)
    ldr x10, gris
    bl draw_line_straight

    mov x1, 287-75        // (302 - 15)
    mov x2, 17         // Coordenada y inicial (17 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 286-75        // (301 - 15)
    mov x2, 15         // Coordenada y inicial (15 - 31)
    mov x3, 286-75        // (301 - 15)
    mov x4, 15         // Coordenada y final (15 - 31)
    ldr x10, gris
    bl draw_line_straight

    mov x1, 289-75        // (304 - 15)
    mov x2, 14         // Coordenada y inicial (14 - 31)
    mov x3, 291-75        // (306 - 15)
    mov x4, 14         // Coordenada y final (14 - 31)
    ldr x10, gris
    bl draw_line_straight

    mov x1, 291-75        // (306 - 15)
    mov x2, 13         // Coordenada y inicial (13 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 292-75        // (307 - 15)
    mov x2, 13         // Coordenada y inicial (13 - 31)
    mov x3, 292-75        // (307 - 15)
    mov x4, 11         // Coordenada y final (11 - 31)
    ldr x10, gris
    bl draw_line_straight

    mov x1, 293-75        // (308 - 15)
    mov x2, 12         // Coordenada y inicial (12 - 31)
    mov x3, 295-75        // (310 - 15)
    mov x4, 12         // Coordenada y final (12 - 31)
    ldr x10, gris
    bl draw_line_straight

    mov x1, 295-75        // (310 - 15)
    mov x2, 13         // Coordenada y inicial (13 - 31)
    mov x3, 298-75        // (313 - 15)
    mov x4, 13         // Coordenada y final (13 - 31)
    ldr x10, gris
    bl draw_line_straight

    mov x1, 297-75        // (312 - 15)
    mov x2, 14         // Coordenada y inicial (14 - 31)
    mov x3, 300-75        // (315 - 15)
    mov x4, 14         // Coordenada y final (14 - 31)
    ldr x10, gris
    bl draw_line_straight

    mov x1, 300-75        // (315 - 15)
    mov x2, 15         // Coordenada y inicial (15 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 300-75        // (315 - 15)
    mov x2, 16         // Coordenada y inicial (16 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 301-75        // (316 - 15)
    mov x2, 16         // Coordenada y inicial (16 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 301-75        // (316 - 15)
    mov x2, 17         // Coordenada y inicial (17 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 302-75        // (317 - 15)
    mov x2, 17         // Coordenada y inicial (17 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 302-75        // (317 - 15)
    mov x2, 18         // Coordenada y inicial (18 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 303-75        // (318 - 15)
    mov x2, 18         // Coordenada y inicial (18 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 303-75        // (318 - 15)
    mov x2, 19         // Coordenada y inicial (19 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 304-75        // (319 - 15)
    mov x2, 19         // Coordenada y inicial (19 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 305-75        // (320 - 15)
    mov x2, 20         // Coordenada y inicial (20 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 306-75        // (321 - 15)
    mov x2, 21         // Coordenada y inicial (21 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 307-75        // (322 - 15)
    mov x2, 21         // Coordenada y inicial (21 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 307-75        // (322 - 15)
    mov x2, 22         // Coordenada y inicial (22 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 308-75        // (323 - 15)
    mov x2, 22         // Coordenada y inicial (22 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 309-75        // (324 - 15)
    mov x2, 23         // Coordenada y inicial (23 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 310-75        // (325 - 15)
    mov x2, 24         // Coordenada y inicial (24 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 311-75        // (326 - 15)
    mov x2, 25         // Coordenada y inicial (25 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 312-75        // (327 - 15)
    mov x2, 25         // Coordenada y inicial (25 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 312-75        // (327 - 15)
    mov x2, 26         // Coordenada y inicial (26 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 313-75        // (328 - 15)
    mov x2, 26         // Coordenada y inicial (26 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 313-75        // (328 - 15)
    mov x2, 27         // Coordenada y inicial (27 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 314-75        // (329 - 15)
    mov x2, 27         // Coordenada y inicial (27 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 315-75        // (330 - 15)
    mov x2, 28         // Coordenada y inicial (28 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 315-75        // (330 - 15)
    mov x2, 29         // Coordenada y inicial (29 - 31)
    ldr x10, gris
    bl draw_pixel

    //----------NUBE3-----------------
    // Base de la nube 
    // Llamada a draw_line_straight para dibujar base de la nube

    mov x1, 495-75        // Coordenada x inicial (525 )
    mov x2, 91             // Coordenada y inicial
    mov x3, 538-75        // Coordenada x final (568 )
    mov x4, 91             // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    // Parte de arriba de la nube

    mov x1, 490-75        // Coordenada x inicial (520 )
    mov x2, 89             // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 491-75        // Coordenada x inicial (521 )
    mov x2, 88             // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 491-75        // Coordenada x inicial (521 )
    mov x2, 87             // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 494-75        // Coordenada x inicial (524 )
    mov x2, 86             // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 494-75        // Coordenada x inicial (524 )
    mov x2, 85             // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 495-75        // Coordenada x inicial (525 )
    mov x2, 85             // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 495-75        // Coordenada x inicial (525 )
    mov x2, 84             // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 496-75        // Coordenada x inicial (526 )
    mov x2, 83             // Coordenada y inicial
    mov x3, 504-75        // Coordenada x final (534 )
    mov x4, 86             // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 504-75        // Coordenada x inicial (534 )
    mov x2, 82             // Coordenada y inicial
    mov x3, 506-75        // Coordenada x final (536 )
    mov x4, 82             // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 506-75        // Coordenada x inicial (536 )
    mov x2, 81             // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 507-75        // Coordenada x inicial (537 )
    mov x2, 81             // Coordenada y inicial
    mov x3, 507-75        // Coordenada x final (537 )
    mov x4, 79             // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 508-75        // Coordenada x inicial (538 )
    mov x2, 79             // Coordenada y inicial
    mov x3, 508-75        // Coordenada x final (538 )
    mov x4, 78             // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 509-75        // Coordenada x inicial (539 )
    mov x2, 78             // Coordenada y inicial
    mov x3, 509-75        // Coordenada x final (539 )
    mov x4, 77             // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 510-75        // Coordenada x inicial (540 )
    mov x2, 77             // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 510-75        // Coordenada x inicial (540 )
    mov x2, 76             // Coordenada y inicial
    mov x3, 512-75        // Coordenada x final (542 )
    mov x4, 76             // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 512-75        // Coordenada x inicial (542 )
    mov x2, 75             // Coordenada y inicial
    mov x3, 514-75        // Coordenada x final (544 )
    mov x4, 75             // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 514-75        // Coordenada x inicial (544 )
    mov x2, 74             // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 515-75        // Coordenada x inicial (545 )
    mov x2, 74             // Coordenada y inicial
    mov x3, 515-75        // Coordenada x final (545 )
    mov x4, 72             // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 516-75        // Coordenada x inicial (546 )
    mov x2, 73             // Coordenada y inicial
    mov x3, 518-75        // Coordenada x final (548 )
    mov x4, 73             // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 518-75        // Coordenada x inicial (548 )
    mov x2, 74             // Coordenada y inicial
    mov x3, 520-75        // Coordenada x final (550 )
    mov x4, 74             // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 520-75        // Coordenada x inicial (550 )
    mov x2, 75             // Coordenada y inicial
    mov x3, 522-75        // Coordenada x final (552 )
    mov x4, 75             // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 522-75        // Coordenada x inicial 
    mov x2, 76             // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 522-75        // Coordenada x inicial (552 )
    mov x2, 77             // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 523-75        // Coordenada x inicial (553 )
    mov x2, 77             // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 523-75        // Coordenada x inicial (553 )
    mov x2, 78             // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 524-75        // Coordenada x inicial (554 )
    mov x2, 78             // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 524-75        // Coordenada x inicial (554 )
    mov x2, 79             // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 525-75        // Coordenada x inicial (555 )
    mov x2, 79             // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 525-75        // Coordenada x inicial (555 )
    mov x2, 80             // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 526-75        // Coordenada x inicial (556 )
    mov x2, 80             // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 527-75        // Coordenada x inicial (557 )
    mov x2, 81             // Coordenada y inicial
    mov x3, 530-75        // Coordenada x final (560 )
    mov x4, 81             // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 531-75        // Coordenada x inicial (561 )
    mov x2, 82             // Coordenada y inicial
    mov x3, 533-75        // Coordenada x final (563 )
    mov x4, 82             // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 533-75        // Coordenada x inicial (563 )
    mov x2, 83             // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 534-75        // Coordenada x inicial (564 )
    mov x2, 83             // Coordenada y inicial
    mov x3, 534-75        // Coordenada x final (564 )
    mov x4, 85             // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 535-75        // Coordenada x inicial (565 )
    mov x2, 85             // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 535-75        // Coordenada x inicial (565 )
    mov x2, 86             // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 536-75        // Coordenada x inicial (566 )
    mov x2, 86             // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 536-75        // Coordenada x inicial (566 )
    mov x2, 87             // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 537-75        // Coordenada x inicial (567 )
    mov x2, 87             // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 538-75        // Coordenada x inicial (568 )
    mov x2, 88             // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 538-75        // Coordenada x inicial (568 )
    mov x2, 89             // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

 
    LDR X30, [SP, #32]
    LDR X4, [SP, #24]
    LDR X3, [SP, #16]
    LDR X2, [SP, #8]
    LDR X1, [SP]
    ADD SP, SP, #40

    ret

nubes11:
    SUB SP, SP, #40
    STR X1, [SP]
    STR X2, [SP, #8]
    STR X3, [SP, #16]
    STR X4, [SP, #24]
    STR X30, [SP, #32]

    //----------NUBE1-----------------
    // Base de la nube 
    // Llamada a draw_line_straight para dibujar base de la nube
    mov x1, 39-105        // Coordenada x inicial (54 - 15)
    mov x2, 61        // Coordenada y inicial
    mov x3, 82-105        // Coordenada x final (97 - 15)
    mov x4, 61        // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    // Parte de arriba de la nube
    mov x1, 34-105        // (49 - 15)
    mov x2, 59
    ldr x10, gris
    bl draw_pixel

    mov x1, 35-105        // (50 - 15)
    mov x2, 58
    ldr x10, gris
    bl draw_pixel

    mov x1, 35-105        // (50 - 15)
    mov x2, 57
    ldr x10, gris
    bl draw_pixel

    mov x1, 38-105        // (53 - 15)
    mov x2, 56
    ldr x10, gris
    bl draw_pixel

    mov x1, 38-105        // (53 - 15)
    mov x2, 55
    ldr x10, gris
    bl draw_pixel

    mov x1, 39-105        // (54 - 15)
    mov x2, 55
    ldr x10, gris
    bl draw_pixel

    mov x1, 39-105        // (54 - 15)
    mov x2, 54
    ldr x10, gris
    bl draw_pixel

    mov x1, 40-105        // Coordenada x inicial (55 - 15)
    mov x2, 53        // Coordenada y inicial
    mov x3, 48-105        // Coordenada x final (63 - 15)
    mov x4, 56        // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 48-105        // Coordenada x inicial (63 - 15)
    mov x2, 52        // Coordenada y inicial
    mov x3, 50-105        // Coordenada x final (65 - 15)
    mov x4, 52        // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 50-105        // (65 - 15)
    mov x2, 51
    ldr x10, gris
    bl draw_pixel

    mov x1, 51-105        // Coordenada x inicial (66 - 15)
    mov x2, 51        // Coordenada y inicial
    mov x3, 51-105        // Coordenada x final (66 - 15)
    mov x4, 49        // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 52-105        // Coordenada x inicial (67 - 15)
    mov x2, 49        // Coordenada y inicial
    mov x3, 52-105        // Coordenada x final (67 - 15)
    mov x4, 48        // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 53-105        // Coordenada x inicial (68 - 15)
    mov x2, 48        // Coordenada y inicial
    mov x3, 53-105        // Coordenada x final (68 - 15)
    mov x4, 47        // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 54-105        // (69 - 15)
    mov x2, 47
    ldr x10, gris
    bl draw_pixel

    mov x1, 54-105        // Coordenada x inicial (69 - 15)
    mov x2, 46        // Coordenada y inicial
    mov x3, 56-105        // Coordenada x final (71 - 15)
    mov x4, 46        // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 56-105        // Coordenada x inicial (71 - 15)
    mov x2, 45        // Coordenada y inicial
    mov x3, 58-105        // Coordenada x final (73 - 15)
    mov x4, 45        // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 58-105        // (73 - 15)
    mov x2, 44
    ldr x10, gris
    bl draw_pixel

    mov x1, 59-105        // Coordenada x inicial (74 - 15)
    mov x2, 44        // Coordenada y inicial
    mov x3, 59-105        // Coordenada x final (74 - 15)
    mov x4, 42        // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 60-105        // Coordenada x inicial (75 - 15)
    mov x2, 43        // Coordenada y inicial
    mov x3, 62-105        // Coordenada x final (77 - 15)
    mov x4, 43        // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 62-105        // Coordenada x inicial (77 - 15)
    mov x2, 44        // Coordenada y inicial
    mov x3, 64-105        // Coordenada x final (79 - 15)
    mov x4, 44        // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 64-105        // Coordenada x inicial (79 - 15)
    mov x2, 45        // Coordenada y inicial
    mov x3, 68-105        // Coordenada x final (83 - 15)
    mov x4, 45        // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 66-105        // (81 - 15)
    mov x2, 46
    ldr x10, gris
    bl draw_pixel

    mov x1, 66-105        // (81 - 15)
    mov x2, 47
    ldr x10, gris
    bl draw_pixel

    mov x1, 67-105        // (82 - 15)
    mov x2, 47
    ldr x10, gris
    bl draw_pixel

    mov x1, 67-105        // (82 - 15)
    mov x2, 48
    ldr x10, gris
    bl draw_pixel

    mov x1, 68-105        // (83 - 15)
    mov x2, 48
    ldr x10, gris
    bl draw_pixel

    mov x1, 68-105        // (83 - 15)
    mov x2, 49
    ldr x10, gris
    bl draw_pixel

    mov x1, 69-105        // (84 - 15)
    mov x2, 49
    ldr x10, gris
    bl draw_pixel

    mov x1, 69-105        // (84 - 15)
    mov x2, 50
    ldr x10, gris
    bl draw_pixel

    mov x1, 70-105        // (85 - 15)
    mov x2, 50
    ldr x10, gris
    bl draw_pixel

    mov x1, 71-105       // Coordenada x inicial (86 - 15)
    mov x2, 51        // Coordenada y inicial
    mov x3, 74-105       // Coordenada x final (89 - 15)
    mov x4, 51        // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 75-105       // Coordenada x inicial (90 - 15)
    mov x2, 52        // Coordenada y inicial
    mov x3, 77-105       // Coordenada x final (92 - 15)
    mov x4, 52        // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 77-105       // (92 - 15)
    mov x2, 53
    ldr x10, gris
    bl draw_pixel

    mov x1, 78-105       // Coordenada x inicial (93 - 15)
    mov x2, 53        // Coordenada y inicial
    mov x3, 78-105       // Coordenada x final (93 - 15)
    mov x4, 55        // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 79-105       // (94 - 15)
    mov x2, 55
    ldr x10, gris
    bl draw_pixel

    mov x1, 79-105       // (94 - 15)
    mov x2, 56
    ldr x10, gris
    bl draw_pixel

    mov x1, 80-105       // (95 - 15)
    mov x2, 56
    ldr x10, gris
    bl draw_pixel

    mov x1, 80-105       // (95 - 15)
    mov x2, 57
    ldr x10, gris
    bl draw_pixel

    mov x1, 81-105       // (96 - 15)
    mov x2, 57
    ldr x10, gris
    bl draw_pixel

    mov x1, 82-105       // (97 - 15)
    mov x2, 58
    ldr x10, gris
    bl draw_pixel

    mov x1, 83-105       // (98 - 15)
    mov x2, 59
    ldr x10, gris
    bl draw_pixel

    mov x1, 83-105       // (98 - 15)
    mov X2, 60 
    ldr x10, gris
    bl draw_pixel

    // ------------NUBE2-----------------
    // Base de la nube 
    // Llamada a draw_line_straight para dibujar base de la nube

    mov x1, 273-105        // Coordenada x inicial (288 - 15)
    mov x2, 30         // Coordenada y inicial
    mov x3, 316-105        // Coordenada x final (331 - 15)
    mov x4, 30         // Coordenada y final
    ldr x10, gris
    bl draw_line_straight

    mov x1, 268-105        // (283 - 15)
    mov x2, 28         // Coordenada y inicial (30 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 269-105        // (284 - 15)
    mov x2, 27         // Coordenada y inicial (27 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 269-105        // (284 - 15)
    mov x2, 26         // Coordenada y inicial (26 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 272-105        // (287 - 15)
    mov x2, 25         // Coordenada y inicial (25 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 272-105        // (287 - 15)
    mov x2, 24         // Coordenada y inicial (24 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 273-105        // (288 - 15)
    mov x2, 24         // Coordenada y inicial (24 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 273-105        // (288 - 15)
    mov x2, 23         // Coordenada y inicial (23 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 274-105        // Coordenada x inicial (289 - 15)
    mov x2, 22         // Coordenada y inicial
    mov x3, 274-105        // Coordenada x final (289 - 15)
    mov x4, 25         // Coordenada y final
    ldr x10, gris
    bl draw_line_straight

    mov x1, 282-105        // Coordenada x inicial (297 - 15)
    mov x2, 21         // Coordenada y inicial
    mov x3, 284-105        // Coordenada x final (299 - 15)
    mov x4, 21         // Coordenada y final
    ldr x10, gris
    bl draw_line_straight

    mov x1, 284-105        // (299 - 15)
    mov x2, 20         // Coordenada y inicial (20 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 285-105        // Coordenada x inicial (300 - 15)
    mov x2, 20         // Coordenada y inicial
    mov x3, 285-105        // Coordenada x final (300 - 15)
    mov x4, 18         // Coordenada y final
    ldr x10, gris
    bl draw_line_straight

    mov x1, 286-105        // (301 - 15)
    mov x2, 18         // Coordenada y inicial (18 - 31)
    mov x3, 286-105        // (301 - 15)
    mov x4, 17         // Coordenada y final (17 - 31)
    ldr x10, gris
    bl draw_line_straight

    mov x1, 287-105        // (302 - 15)
    mov x2, 17         // Coordenada y inicial (17 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 286-105        // (301 - 15)
    mov x2, 15         // Coordenada y inicial (15 - 31)
    mov x3, 286-105        // (301 - 15)
    mov x4, 15         // Coordenada y final (15 - 31)
    ldr x10, gris
    bl draw_line_straight

    mov x1, 289-105        // (304 - 15)
    mov x2, 14         // Coordenada y inicial (14 - 31)
    mov x3, 291-105        // (306 - 15)
    mov x4, 14         // Coordenada y final (14 - 31)
    ldr x10, gris
    bl draw_line_straight

    mov x1, 291-105        // (306 - 15)
    mov x2, 13         // Coordenada y inicial (13 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 292-105        // (307 - 15)
    mov x2, 13         // Coordenada y inicial (13 - 31)
    mov x3, 292-105        // (307 - 15)
    mov x4, 11         // Coordenada y final (11 - 31)
    ldr x10, gris
    bl draw_line_straight

    mov x1, 293-105        // (308 - 15)
    mov x2, 12         // Coordenada y inicial (12 - 31)
    mov x3, 295-105        // (310 - 15)
    mov x4, 12         // Coordenada y final (12 - 31)
    ldr x10, gris
    bl draw_line_straight

    mov x1, 295-105        // (310 - 15)
    mov x2, 13         // Coordenada y inicial (13 - 31)
    mov x3, 298-105        // (313 - 15)
    mov x4, 13         // Coordenada y final (13 - 31)
    ldr x10, gris
    bl draw_line_straight

    mov x1, 297-105        // (312 - 15)
    mov x2, 14         // Coordenada y inicial (14 - 31)
    mov x3, 300-105        // (315 - 15)
    mov x4, 14         // Coordenada y final (14 - 31)
    ldr x10, gris
    bl draw_line_straight

    mov x1, 300-105        // (315 - 15)
    mov x2, 15         // Coordenada y inicial (15 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 300-105        // (315 - 15)
    mov x2, 16         // Coordenada y inicial (16 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 301-105        // (316 - 15)
    mov x2, 16         // Coordenada y inicial (16 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 301-105        // (316 - 15)
    mov x2, 17         // Coordenada y inicial (17 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 302-105        // (317 - 15)
    mov x2, 17         // Coordenada y inicial (17 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 302-105        // (317 - 15)
    mov x2, 18         // Coordenada y inicial (18 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 303-105        // (318 - 15)
    mov x2, 18         // Coordenada y inicial (18 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 303-105        // (318 - 15)
    mov x2, 19         // Coordenada y inicial (19 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 304-105        // (319 - 15)
    mov x2, 19         // Coordenada y inicial (19 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 305-105        // (320 - 15)
    mov x2, 20         // Coordenada y inicial (20 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 306-105        // (321 - 15)
    mov x2, 21         // Coordenada y inicial (21 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 307-105        // (322 - 15)
    mov x2, 21         // Coordenada y inicial (21 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 307-105        // (322 - 15)
    mov x2, 22         // Coordenada y inicial (22 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 308-105        // (323 - 15)
    mov x2, 22         // Coordenada y inicial (22 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 309-105        // (324 - 15)
    mov x2, 23         // Coordenada y inicial (23 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 310-105        // (325 - 15)
    mov x2, 24         // Coordenada y inicial (24 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 311-105        // (326 - 15)
    mov x2, 25         // Coordenada y inicial (25 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 312-105        // (327 - 15)
    mov x2, 25         // Coordenada y inicial (25 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 312-105        // (327 - 15)
    mov x2, 26         // Coordenada y inicial (26 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 313-105        // (328 - 15)
    mov x2, 26         // Coordenada y inicial (26 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 313-105        // (328 - 15)
    mov x2, 27         // Coordenada y inicial (27 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 314-105        // (329 - 15)
    mov x2, 27         // Coordenada y inicial (27 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 315-105        // (330 - 15)
    mov x2, 28         // Coordenada y inicial (28 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 315-105        // (330 - 15)
    mov x2, 29         // Coordenada y inicial (29 - 31)
    ldr x10, gris
    bl draw_pixel

    //----------NUBE3-----------------
    // Base de la nube 
    // Llamada a draw_line_straight para dibujar base de la nube

    mov x1, 495-105        // Coordenada x inicial (525 )
    mov x2, 91             // Coordenada y inicial
    mov x3, 538-105        // Coordenada x final (568 )
    mov x4, 91             // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    // Parte de arriba de la nube

    mov x1, 490-105        // Coordenada x inicial (520 )
    mov x2, 89             // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 491-105        // Coordenada x inicial (521 )
    mov x2, 88             // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 491-105        // Coordenada x inicial (521 )
    mov x2, 87             // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 494-105        // Coordenada x inicial (524 )
    mov x2, 86             // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 494-105        // Coordenada x inicial (524 )
    mov x2, 85             // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 495-105        // Coordenada x inicial (525 )
    mov x2, 85             // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 495-105        // Coordenada x inicial (525 )
    mov x2, 84             // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 496-105        // Coordenada x inicial (526 )
    mov x2, 83             // Coordenada y inicial
    mov x3, 504-105        // Coordenada x final (534 )
    mov x4, 86             // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 504-105        // Coordenada x inicial (534 )
    mov x2, 82             // Coordenada y inicial
    mov x3, 506-105        // Coordenada x final (536 )
    mov x4, 82             // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 506-105        // Coordenada x inicial (536 )
    mov x2, 81             // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 507-105        // Coordenada x inicial (537 )
    mov x2, 81             // Coordenada y inicial
    mov x3, 507-105        // Coordenada x final (537 )
    mov x4, 79             // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 508-105        // Coordenada x inicial (538 )
    mov x2, 79             // Coordenada y inicial
    mov x3, 508-105        // Coordenada x final (538 )
    mov x4, 78             // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 509-105        // Coordenada x inicial (539 )
    mov x2, 78             // Coordenada y inicial
    mov x3, 509-105        // Coordenada x final (539 )
    mov x4, 77             // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 510-105        // Coordenada x inicial (540 )
    mov x2, 77             // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 510-105        // Coordenada x inicial (540 )
    mov x2, 76             // Coordenada y inicial
    mov x3, 512-105        // Coordenada x final (542 )
    mov x4, 76             // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 512-105        // Coordenada x inicial (542 )
    mov x2, 75             // Coordenada y inicial
    mov x3, 514-105        // Coordenada x final (544 )
    mov x4, 75             // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 514-105        // Coordenada x inicial (544 )
    mov x2, 74             // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 515-105        // Coordenada x inicial (545 )
    mov x2, 74             // Coordenada y inicial
    mov x3, 515-105        // Coordenada x final (545 )
    mov x4, 72             // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 516-105        // Coordenada x inicial (546 )
    mov x2, 73             // Coordenada y inicial
    mov x3, 518-105        // Coordenada x final (548 )
    mov x4, 73             // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 518-105        // Coordenada x inicial (548 )
    mov x2, 74             // Coordenada y inicial
    mov x3, 520-105        // Coordenada x final (550 )
    mov x4, 74             // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 520-105        // Coordenada x inicial (550 )
    mov x2, 75             // Coordenada y inicial
    mov x3, 522-105        // Coordenada x final (552 )
    mov x4, 75             // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 522-105        // Coordenada x inicial 
    mov x2, 76             // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 522-105        // Coordenada x inicial (552 )
    mov x2, 77             // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 523-105        // Coordenada x inicial (553 )
    mov x2, 77             // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 523-105        // Coordenada x inicial (553 )
    mov x2, 78             // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 524-105        // Coordenada x inicial (554 )
    mov x2, 78             // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 524-105        // Coordenada x inicial (554 )
    mov x2, 79             // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 525-105        // Coordenada x inicial (555 )
    mov x2, 79             // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 525-105        // Coordenada x inicial (555 )
    mov x2, 80             // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 526-105        // Coordenada x inicial (556 )
    mov x2, 80             // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 527-105        // Coordenada x inicial (557 )
    mov x2, 81             // Coordenada y inicial
    mov x3, 530-105        // Coordenada x final (560 )
    mov x4, 81             // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 531-105        // Coordenada x inicial (561 )
    mov x2, 82             // Coordenada y inicial
    mov x3, 533-105        // Coordenada x final (563 )
    mov x4, 82             // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 533-105        // Coordenada x inicial (563 )
    mov x2, 83             // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 534-105        // Coordenada x inicial (564 )
    mov x2, 83             // Coordenada y inicial
    mov x3, 534-105        // Coordenada x final (564 )
    mov x4, 85             // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 535-105        // Coordenada x inicial (565 )
    mov x2, 85             // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 535-105        // Coordenada x inicial (565 )
    mov x2, 86             // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 536-105        // Coordenada x inicial (566 )
    mov x2, 86             // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 536-105        // Coordenada x inicial (566 )
    mov x2, 87             // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 537-105        // Coordenada x inicial (567 )
    mov x2, 87             // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 538-105        // Coordenada x inicial (568 )
    mov x2, 88             // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 538-105        // Coordenada x inicial (568 )
    mov x2, 89             // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

 
    LDR X30, [SP, #32]
    LDR X4, [SP, #24]
    LDR X3, [SP, #16]
    LDR X2, [SP, #8]
    LDR X1, [SP]
    ADD SP, SP, #40

    ret
nubes12:
    SUB SP, SP, #40
    STR X1, [SP]
    STR X2, [SP, #8]
    STR X3, [SP, #16]
    STR X4, [SP, #24]
    STR X30, [SP, #32]

    //----------NUBE1-----------------
    // Base de la nube 
    // Llamada a draw_line_straight para dibujar base de la nube
    mov x1, 39-135       // Coordenada x inicial (54 - 15)
    mov x2, 61        // Coordenada y inicial
    mov x3, 82-135       // Coordenada x final (97 - 15)
    mov x4, 61        // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    // Parte de arriba de la nube
    mov x1, 34-135       // (49 - 15)
    mov x2, 59
    ldr x10, gris
    bl draw_pixel

    mov x1, 35-135       // (50 - 15)
    mov x2, 58
    ldr x10, gris
    bl draw_pixel

    mov x1, 35-135       // (50 - 15)
    mov x2, 57
    ldr x10, gris
    bl draw_pixel

    mov x1, 38-135       // (53 - 15)
    mov x2, 56
    ldr x10, gris
    bl draw_pixel

    mov x1, 38-135       // (53 - 15)
    mov x2, 55
    ldr x10, gris
    bl draw_pixel

    mov x1, 39-135       // (54 - 15)
    mov x2, 55
    ldr x10, gris
    bl draw_pixel

    mov x1, 39-135       // (54 - 15)
    mov x2, 54
    ldr x10, gris
    bl draw_pixel

    mov x1, 40-135       // Coordenada x inicial (55 - 15)
    mov x2, 53        // Coordenada y inicial
    mov x3, 48-135       // Coordenada x final (63 - 15)
    mov x4, 56        // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 48-135       // Coordenada x inicial (63 - 15)
    mov x2, 52        // Coordenada y inicial
    mov x3, 50-135       // Coordenada x final (65 - 15)
    mov x4, 52        // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 50-135       // (65 - 15)
    mov x2, 51
    ldr x10, gris
    bl draw_pixel

    mov x1, 51-135       // Coordenada x inicial (66 - 15)
    mov x2, 51        // Coordenada y inicial
    mov x3, 51-135       // Coordenada x final (66 - 15)
    mov x4, 49        // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 52-135       // Coordenada x inicial (67 - 15)
    mov x2, 49        // Coordenada y inicial
    mov x3, 52-135       // Coordenada x final (67 - 15)
    mov x4, 48        // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 53-135       // Coordenada x inicial (68 - 15)
    mov x2, 48        // Coordenada y inicial
    mov x3, 53-135       // Coordenada x final (68 - 15)
    mov x4, 47        // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 54-135       // (69 - 15)
    mov x2, 47
    ldr x10, gris
    bl draw_pixel

    mov x1, 54-135       // Coordenada x inicial (69 - 15)
    mov x2, 46        // Coordenada y inicial
    mov x3, 56-135       // Coordenada x final (71 - 15)
    mov x4, 46        // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 56-135       // Coordenada x inicial (71 - 15)
    mov x2, 45        // Coordenada y inicial
    mov x3, 58-135       // Coordenada x final (73 - 15)
    mov x4, 45        // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 58-135       // (73 - 15)
    mov x2, 44
    ldr x10, gris
    bl draw_pixel

    mov x1, 59-135       // Coordenada x inicial (74 - 15)
    mov x2, 44        // Coordenada y inicial
    mov x3, 59-135       // Coordenada x final (74 - 15)
    mov x4, 42        // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 60-135       // Coordenada x inicial (75 - 15)
    mov x2, 43        // Coordenada y inicial
    mov x3, 62-135       // Coordenada x final (77 - 15)
    mov x4, 43        // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 62-135       // Coordenada x inicial (77 - 15)
    mov x2, 44        // Coordenada y inicial
    mov x3, 64-135       // Coordenada x final (79 - 15)
    mov x4, 44        // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 64-135       // Coordenada x inicial (79 - 15)
    mov x2, 45        // Coordenada y inicial
    mov x3, 68-135       // Coordenada x final (83 - 15)
    mov x4, 45        // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 66-135       // (81 - 15)
    mov x2, 46
    ldr x10, gris
    bl draw_pixel

    mov x1, 66-135       // (81 - 15)
    mov x2, 47
    ldr x10, gris
    bl draw_pixel

    mov x1, 67-135       // (82 - 15)
    mov x2, 47
    ldr x10, gris
    bl draw_pixel

    mov x1, 67-135       // (82 - 15)
    mov x2, 48
    ldr x10, gris
    bl draw_pixel

    mov x1, 68-135       // (83 - 15)
    mov x2, 48
    ldr x10, gris
    bl draw_pixel

    mov x1, 68-135       // (83 - 15)
    mov x2, 49
    ldr x10, gris
    bl draw_pixel

    mov x1, 69-135       // (84 - 15)
    mov x2, 49
    ldr x10, gris
    bl draw_pixel

    mov x1, 69-135       // (84 - 15)
    mov x2, 50
    ldr x10, gris
    bl draw_pixel

    mov x1, 70-135       // (85 - 15)
    mov x2, 50
    ldr x10, gris
    bl draw_pixel

    mov x1, 71-135      // Coordenada x inicial (86 - 15)
    mov x2, 51        // Coordenada y inicial
    mov x3, 74-135      // Coordenada x final (89 - 15)
    mov x4, 51        // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 75-135      // Coordenada x inicial (90 - 15)
    mov x2, 52        // Coordenada y inicial
    mov x3, 77-135      // Coordenada x final (92 - 15)
    mov x4, 52        // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 77-135      // (92 - 15)
    mov x2, 53
    ldr x10, gris
    bl draw_pixel

    mov x1, 78-135      // Coordenada x inicial (93 - 15)
    mov x2, 53        // Coordenada y inicial
    mov x3, 78-135      // Coordenada x final (93 - 15)
    mov x4, 55        // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 79-135      // (94 - 15)
    mov x2, 55
    ldr x10, gris
    bl draw_pixel

    mov x1, 79-135      // (94 - 15)
    mov x2, 56
    ldr x10, gris
    bl draw_pixel

    mov x1, 80-135      // (95 - 15)
    mov x2, 56
    ldr x10, gris
    bl draw_pixel

    mov x1, 80-135      // (95 - 15)
    mov x2, 57
    ldr x10, gris
    bl draw_pixel

    mov x1, 81-135      // (96 - 15)
    mov x2, 57
    ldr x10, gris
    bl draw_pixel

    mov x1, 82-135      // (97 - 15)
    mov x2, 58
    ldr x10, gris
    bl draw_pixel

    mov x1, 83-135      // (98 - 15)
    mov x2, 59
    ldr x10, gris
    bl draw_pixel

    mov x1, 83-135      // (98 - 15)
    mov X2, 60 
    ldr x10, gris
    bl draw_pixel

    // ------------NUBE2-----------------
    // Base de la nube 
    // Llamada a draw_line_straight para dibujar base de la nube

    mov x1, 273-135       // Coordenada x inicial (288 - 15)
    mov x2, 30         // Coordenada y inicial
    mov x3, 316-135       // Coordenada x final (331 - 15)
    mov x4, 30         // Coordenada y final
    ldr x10, gris
    bl draw_line_straight

    mov x1, 268-135       // (283 - 15)
    mov x2, 28         // Coordenada y inicial (30 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 269-135       // (284 - 15)
    mov x2, 27         // Coordenada y inicial (27 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 269-135       // (284 - 15)
    mov x2, 26         // Coordenada y inicial (26 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 272-135       // (287 - 15)
    mov x2, 25         // Coordenada y inicial (25 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 272-135       // (287 - 15)
    mov x2, 24         // Coordenada y inicial (24 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 273-135       // (288 - 15)
    mov x2, 24         // Coordenada y inicial (24 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 273-135       // (288 - 15)
    mov x2, 23         // Coordenada y inicial (23 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 274-135       // Coordenada x inicial (289 - 15)
    mov x2, 22         // Coordenada y inicial
    mov x3, 274-135       // Coordenada x final (289 - 15)
    mov x4, 25         // Coordenada y final
    ldr x10, gris
    bl draw_line_straight

    mov x1, 282-135       // Coordenada x inicial (297 - 15)
    mov x2, 21         // Coordenada y inicial
    mov x3, 284-135       // Coordenada x final (299 - 15)
    mov x4, 21         // Coordenada y final
    ldr x10, gris
    bl draw_line_straight

    mov x1, 284-135       // (299 - 15)
    mov x2, 20         // Coordenada y inicial (20 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 285-135       // Coordenada x inicial (300 - 15)
    mov x2, 20         // Coordenada y inicial
    mov x3, 285-135       // Coordenada x final (300 - 15)
    mov x4, 18         // Coordenada y final
    ldr x10, gris
    bl draw_line_straight

    mov x1, 286-135       // (301 - 15)
    mov x2, 18         // Coordenada y inicial (18 - 31)
    mov x3, 286-135       // (301 - 15)
    mov x4, 17         // Coordenada y final (17 - 31)
    ldr x10, gris
    bl draw_line_straight

    mov x1, 287-135       // (302 - 15)
    mov x2, 17         // Coordenada y inicial (17 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 286-135       // (301 - 15)
    mov x2, 15         // Coordenada y inicial (15 - 31)
    mov x3, 286-135       // (301 - 15)
    mov x4, 15         // Coordenada y final (15 - 31)
    ldr x10, gris
    bl draw_line_straight

    mov x1, 289-135       // (304 - 15)
    mov x2, 14         // Coordenada y inicial (14 - 31)
    mov x3, 291-135       // (306 - 15)
    mov x4, 14         // Coordenada y final (14 - 31)
    ldr x10, gris
    bl draw_line_straight

    mov x1, 291-135       // (306 - 15)
    mov x2, 13         // Coordenada y inicial (13 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 292-135       // (307 - 15)
    mov x2, 13         // Coordenada y inicial (13 - 31)
    mov x3, 292-135       // (307 - 15)
    mov x4, 11         // Coordenada y final (11 - 31)
    ldr x10, gris
    bl draw_line_straight

    mov x1, 293-135       // (308 - 15)
    mov x2, 12         // Coordenada y inicial (12 - 31)
    mov x3, 295-135       // (310 - 15)
    mov x4, 12         // Coordenada y final (12 - 31)
    ldr x10, gris
    bl draw_line_straight

    mov x1, 295-135       // (310 - 15)
    mov x2, 13         // Coordenada y inicial (13 - 31)
    mov x3, 298-135       // (313 - 15)
    mov x4, 13         // Coordenada y final (13 - 31)
    ldr x10, gris
    bl draw_line_straight

    mov x1, 297-135       // (312 - 15)
    mov x2, 14         // Coordenada y inicial (14 - 31)
    mov x3, 300-135       // (315 - 15)
    mov x4, 14         // Coordenada y final (14 - 31)
    ldr x10, gris
    bl draw_line_straight

    mov x1, 300-135       // (315 - 15)
    mov x2, 15         // Coordenada y inicial (15 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 300-135       // (315 - 15)
    mov x2, 16         // Coordenada y inicial (16 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 301-135       // (316 - 15)
    mov x2, 16         // Coordenada y inicial (16 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 301-135       // (316 - 15)
    mov x2, 17         // Coordenada y inicial (17 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 302-135       // (317 - 15)
    mov x2, 17         // Coordenada y inicial (17 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 302-135       // (317 - 15)
    mov x2, 18         // Coordenada y inicial (18 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 303-135       // (318 - 15)
    mov x2, 18         // Coordenada y inicial (18 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 303-135       // (318 - 15)
    mov x2, 19         // Coordenada y inicial (19 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 304-135       // (319 - 15)
    mov x2, 19         // Coordenada y inicial (19 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 305-135       // (320 - 15)
    mov x2, 20         // Coordenada y inicial (20 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 306-135       // (321 - 15)
    mov x2, 21         // Coordenada y inicial (21 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 307-135       // (322 - 15)
    mov x2, 21         // Coordenada y inicial (21 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 307-135       // (322 - 15)
    mov x2, 22         // Coordenada y inicial (22 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 308-135       // (323 - 15)
    mov x2, 22         // Coordenada y inicial (22 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 309-135       // (324 - 15)
    mov x2, 23         // Coordenada y inicial (23 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 310-135       // (325 - 15)
    mov x2, 24         // Coordenada y inicial (24 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 311-135       // (326 - 15)
    mov x2, 25         // Coordenada y inicial (25 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 312-135       // (327 - 15)
    mov x2, 25         // Coordenada y inicial (25 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 312-135       // (327 - 15)
    mov x2, 26         // Coordenada y inicial (26 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 313-135       // (328 - 15)
    mov x2, 26         // Coordenada y inicial (26 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 313-135       // (328 - 15)
    mov x2, 27         // Coordenada y inicial (27 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 314-135       // (329 - 15)
    mov x2, 27         // Coordenada y inicial (27 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 315-135       // (330 - 15)
    mov x2, 28         // Coordenada y inicial (28 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 315-135       // (330 - 15)
    mov x2, 29         // Coordenada y inicial (29 - 31)
    ldr x10, gris
    bl draw_pixel

    //----------NUBE3-----------------
    // Base de la nube 
    // Llamada a draw_line_straight para dibujar base de la nube

    mov x1, 495-135       // Coordenada x inicial (525 )
    mov x2, 91             // Coordenada y inicial
    mov x3, 538-135       // Coordenada x final (568 )
    mov x4, 91             // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    // Parte de arriba de la nube

    mov x1, 490-135       // Coordenada x inicial (520 )
    mov x2, 89             // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 491-135       // Coordenada x inicial (521 )
    mov x2, 88             // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 491-135       // Coordenada x inicial (521 )
    mov x2, 87             // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 494-135       // Coordenada x inicial (524 )
    mov x2, 86             // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 494-135       // Coordenada x inicial (524 )
    mov x2, 85             // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 495-135       // Coordenada x inicial (525 )
    mov x2, 85             // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 495-135       // Coordenada x inicial (525 )
    mov x2, 84             // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 496-135       // Coordenada x inicial (526 )
    mov x2, 83             // Coordenada y inicial
    mov x3, 504-135       // Coordenada x final (534 )
    mov x4, 86             // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 504-135       // Coordenada x inicial (534 )
    mov x2, 82             // Coordenada y inicial
    mov x3, 506-135       // Coordenada x final (536 )
    mov x4, 82             // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 506-135       // Coordenada x inicial (536 )
    mov x2, 81             // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 507-135       // Coordenada x inicial (537 )
    mov x2, 81             // Coordenada y inicial
    mov x3, 507-135       // Coordenada x final (537 )
    mov x4, 79             // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 508-135       // Coordenada x inicial (538 )
    mov x2, 79             // Coordenada y inicial
    mov x3, 508-135       // Coordenada x final (538 )
    mov x4, 78             // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 509-135       // Coordenada x inicial (539 )
    mov x2, 78             // Coordenada y inicial
    mov x3, 509-135       // Coordenada x final (539 )
    mov x4, 77             // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 510-135       // Coordenada x inicial (540 )
    mov x2, 77             // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 510-135       // Coordenada x inicial (540 )
    mov x2, 76             // Coordenada y inicial
    mov x3, 512-135       // Coordenada x final (542 )
    mov x4, 76             // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 512-135       // Coordenada x inicial (542 )
    mov x2, 75             // Coordenada y inicial
    mov x3, 514-135       // Coordenada x final (544 )
    mov x4, 75             // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 514-135       // Coordenada x inicial (544 )
    mov x2, 74             // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 515-135       // Coordenada x inicial (545 )
    mov x2, 74             // Coordenada y inicial
    mov x3, 515-135       // Coordenada x final (545 )
    mov x4, 72             // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 516-135       // Coordenada x inicial (546 )
    mov x2, 73             // Coordenada y inicial
    mov x3, 518-135       // Coordenada x final (548 )
    mov x4, 73             // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 518-135       // Coordenada x inicial (548 )
    mov x2, 74             // Coordenada y inicial
    mov x3, 520-135       // Coordenada x final (550 )
    mov x4, 74             // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 520-135       // Coordenada x inicial (550 )
    mov x2, 75             // Coordenada y inicial
    mov x3, 522-135       // Coordenada x final (552 )
    mov x4, 75             // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 522-135       // Coordenada x inicial 
    mov x2, 76             // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 522-135       // Coordenada x inicial (552 )
    mov x2, 77             // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 523-135       // Coordenada x inicial (553 )
    mov x2, 77             // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 523-135       // Coordenada x inicial (553 )
    mov x2, 78             // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 524-135       // Coordenada x inicial (554 )
    mov x2, 78             // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 524-135       // Coordenada x inicial (554 )
    mov x2, 79             // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 525-135       // Coordenada x inicial (555 )
    mov x2, 79             // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 525-135       // Coordenada x inicial (555 )
    mov x2, 80             // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 526-135       // Coordenada x inicial (556 )
    mov x2, 80             // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 527-135       // Coordenada x inicial (557 )
    mov x2, 81             // Coordenada y inicial
    mov x3, 530-135       // Coordenada x final (560 )
    mov x4, 81             // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 531-135       // Coordenada x inicial (561 )
    mov x2, 82             // Coordenada y inicial
    mov x3, 533-135       // Coordenada x final (563 )
    mov x4, 82             // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 533-135       // Coordenada x inicial (563 )
    mov x2, 83             // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 534-135       // Coordenada x inicial (564 )
    mov x2, 83             // Coordenada y inicial
    mov x3, 534-135       // Coordenada x final (564 )
    mov x4, 85             // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 535-135       // Coordenada x inicial (565 )
    mov x2, 85             // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 535-135       // Coordenada x inicial (565 )
    mov x2, 86             // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 536-135       // Coordenada x inicial (566 )
    mov x2, 86             // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 536-135       // Coordenada x inicial (566 )
    mov x2, 87             // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 537-135       // Coordenada x inicial (567 )
    mov x2, 87             // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 538-135       // Coordenada x inicial (568 )
    mov x2, 88             // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 538-135       // Coordenada x inicial (568 )
    mov x2, 89             // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

 
    LDR X30, [SP, #32]
    LDR X4, [SP, #24]
    LDR X3, [SP, #16]
    LDR X2, [SP, #8]
    LDR X1, [SP]
    ADD SP, SP, #40

    ret

nubes13:
    SUB SP, SP, #40
    STR X1, [SP]
    STR X2, [SP, #8]
    STR X3, [SP, #16]
    STR X4, [SP, #24]
    STR X30, [SP, #32]

    //----------NUBE1-----------------
    // Base de la nube 
    // Llamada a draw_line_straight para dibujar base de la nube
    mov x1, 39-165       // Coordenada x inicial (54 - 15)
    mov x2, 61        // Coordenada y inicial
    mov x3, 82-165       // Coordenada x final (97 - 15)
    mov x4, 61        // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    // Parte de arriba de la nube
    mov x1, 34-165       // (49 - 15)
    mov x2, 59
    ldr x10, gris
    bl draw_pixel

    mov x1, 35-165       // (50 - 15)
    mov x2, 58
    ldr x10, gris
    bl draw_pixel

    mov x1, 35-165       // (50 - 15)
    mov x2, 57
    ldr x10, gris
    bl draw_pixel

    mov x1, 38-165       // (53 - 15)
    mov x2, 56
    ldr x10, gris
    bl draw_pixel

    mov x1, 38-165       // (53 - 15)
    mov x2, 55
    ldr x10, gris
    bl draw_pixel

    mov x1, 39-165       // (54 - 15)
    mov x2, 55
    ldr x10, gris
    bl draw_pixel

    mov x1, 39-165       // (54 - 15)
    mov x2, 54
    ldr x10, gris
    bl draw_pixel

    mov x1, 40-165       // Coordenada x inicial (55 - 15)
    mov x2, 53        // Coordenada y inicial
    mov x3, 48-165       // Coordenada x final (63 - 15)
    mov x4, 56        // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 48-165       // Coordenada x inicial (63 - 15)
    mov x2, 52        // Coordenada y inicial
    mov x3, 50-165       // Coordenada x final (65 - 15)
    mov x4, 52        // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 50-165       // (65 - 15)
    mov x2, 51
    ldr x10, gris
    bl draw_pixel

    mov x1, 51-165       // Coordenada x inicial (66 - 15)
    mov x2, 51        // Coordenada y inicial
    mov x3, 51-165       // Coordenada x final (66 - 15)
    mov x4, 49        // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 52-165       // Coordenada x inicial (67 - 15)
    mov x2, 49        // Coordenada y inicial
    mov x3, 52-165       // Coordenada x final (67 - 15)
    mov x4, 48        // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 53-165       // Coordenada x inicial (68 - 15)
    mov x2, 48        // Coordenada y inicial
    mov x3, 53-165       // Coordenada x final (68 - 15)
    mov x4, 47        // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 54-165       // (69 - 15)
    mov x2, 47
    ldr x10, gris
    bl draw_pixel

    mov x1, 54-165       // Coordenada x inicial (69 - 15)
    mov x2, 46        // Coordenada y inicial
    mov x3, 56-165       // Coordenada x final (71 - 15)
    mov x4, 46        // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 56-165       // Coordenada x inicial (71 - 15)
    mov x2, 45        // Coordenada y inicial
    mov x3, 58-165       // Coordenada x final (73 - 15)
    mov x4, 45        // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 58-165       // (73 - 15)
    mov x2, 44
    ldr x10, gris
    bl draw_pixel

    mov x1, 59-165       // Coordenada x inicial (74 - 15)
    mov x2, 44        // Coordenada y inicial
    mov x3, 59-165       // Coordenada x final (74 - 15)
    mov x4, 42        // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 60-165       // Coordenada x inicial (75 - 15)
    mov x2, 43        // Coordenada y inicial
    mov x3, 62-165       // Coordenada x final (77 - 15)
    mov x4, 43        // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 62-165       // Coordenada x inicial (77 - 15)
    mov x2, 44        // Coordenada y inicial
    mov x3, 64-165       // Coordenada x final (79 - 15)
    mov x4, 44        // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 64-165       // Coordenada x inicial (79 - 15)
    mov x2, 45        // Coordenada y inicial
    mov x3, 68-165       // Coordenada x final (83 - 15)
    mov x4, 45        // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 66-165       // (81 - 15)
    mov x2, 46
    ldr x10, gris
    bl draw_pixel

    mov x1, 66-165       // (81 - 15)
    mov x2, 47
    ldr x10, gris
    bl draw_pixel

    mov x1, 67-165       // (82 - 15)
    mov x2, 47
    ldr x10, gris
    bl draw_pixel

    mov x1, 67-165       // (82 - 15)
    mov x2, 48
    ldr x10, gris
    bl draw_pixel

    mov x1, 68-165       // (83 - 15)
    mov x2, 48
    ldr x10, gris
    bl draw_pixel

    mov x1, 68-165       // (83 - 15)
    mov x2, 49
    ldr x10, gris
    bl draw_pixel

    mov x1, 69-165       // (84 - 15)
    mov x2, 49
    ldr x10, gris
    bl draw_pixel

    mov x1, 69-165       // (84 - 15)
    mov x2, 50
    ldr x10, gris
    bl draw_pixel

    mov x1, 70-165       // (85 - 15)
    mov x2, 50
    ldr x10, gris
    bl draw_pixel

    mov x1, 71-165      // Coordenada x inicial (86 - 15)
    mov x2, 51        // Coordenada y inicial
    mov x3, 74-165      // Coordenada x final (89 - 15)
    mov x4, 51        // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 75-165      // Coordenada x inicial (90 - 15)
    mov x2, 52        // Coordenada y inicial
    mov x3, 77-165      // Coordenada x final (92 - 15)
    mov x4, 52        // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 77-165      // (92 - 15)
    mov x2, 53
    ldr x10, gris
    bl draw_pixel

    mov x1, 78-165      // Coordenada x inicial (93 - 15)
    mov x2, 53        // Coordenada y inicial
    mov x3, 78-165      // Coordenada x final (93 - 15)
    mov x4, 55        // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 79-165      // (94 - 15)
    mov x2, 55
    ldr x10, gris
    bl draw_pixel

    mov x1, 79-165      // (94 - 15)
    mov x2, 56
    ldr x10, gris
    bl draw_pixel

    mov x1, 80-165      // (95 - 15)
    mov x2, 56
    ldr x10, gris
    bl draw_pixel

    mov x1, 80-165      // (95 - 15)
    mov x2, 57
    ldr x10, gris
    bl draw_pixel

    mov x1, 81-165      // (96 - 15)
    mov x2, 57
    ldr x10, gris
    bl draw_pixel

    mov x1, 82-165      // (97 - 15)
    mov x2, 58
    ldr x10, gris
    bl draw_pixel

    mov x1, 83-165      // (98 - 15)
    mov x2, 59
    ldr x10, gris
    bl draw_pixel

    mov x1, 83-165      // (98 - 15)
    mov X2, 60 
    ldr x10, gris
    bl draw_pixel

    // ------------NUBE2-----------------
    // Base de la nube 
    // Llamada a draw_line_straight para dibujar base de la nube

    mov x1, 273-165       // Coordenada x inicial (288 - 15)
    mov x2, 30         // Coordenada y inicial
    mov x3, 316-165       // Coordenada x final (331 - 15)
    mov x4, 30         // Coordenada y final
    ldr x10, gris
    bl draw_line_straight

    mov x1, 268-165       // (283 - 15)
    mov x2, 28         // Coordenada y inicial (30 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 269-165       // (284 - 15)
    mov x2, 27         // Coordenada y inicial (27 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 269-165       // (284 - 15)
    mov x2, 26         // Coordenada y inicial (26 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 272-165       // (287 - 15)
    mov x2, 25         // Coordenada y inicial (25 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 272-165       // (287 - 15)
    mov x2, 24         // Coordenada y inicial (24 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 273-165       // (288 - 15)
    mov x2, 24         // Coordenada y inicial (24 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 273-165       // (288 - 15)
    mov x2, 23         // Coordenada y inicial (23 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 274-165       // Coordenada x inicial (289 - 15)
    mov x2, 22         // Coordenada y inicial
    mov x3, 274-165       // Coordenada x final (289 - 15)
    mov x4, 25         // Coordenada y final
    ldr x10, gris
    bl draw_line_straight

    mov x1, 282-165       // Coordenada x inicial (297 - 15)
    mov x2, 21         // Coordenada y inicial
    mov x3, 284-165       // Coordenada x final (299 - 15)
    mov x4, 21         // Coordenada y final
    ldr x10, gris
    bl draw_line_straight

    mov x1, 284-165       // (299 - 15)
    mov x2, 20         // Coordenada y inicial (20 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 285-165       // Coordenada x inicial (300 - 15)
    mov x2, 20         // Coordenada y inicial
    mov x3, 285-165       // Coordenada x final (300 - 15)
    mov x4, 18         // Coordenada y final
    ldr x10, gris
    bl draw_line_straight

    mov x1, 286-165       // (301 - 15)
    mov x2, 18         // Coordenada y inicial (18 - 31)
    mov x3, 286-165       // (301 - 15)
    mov x4, 17         // Coordenada y final (17 - 31)
    ldr x10, gris
    bl draw_line_straight

    mov x1, 287-165       // (302 - 15)
    mov x2, 17         // Coordenada y inicial (17 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 286-165       // (301 - 15)
    mov x2, 15         // Coordenada y inicial (15 - 31)
    mov x3, 286-165       // (301 - 15)
    mov x4, 15         // Coordenada y final (15 - 31)
    ldr x10, gris
    bl draw_line_straight

    mov x1, 289-165       // (304 - 15)
    mov x2, 14         // Coordenada y inicial (14 - 31)
    mov x3, 291-165       // (306 - 15)
    mov x4, 14         // Coordenada y final (14 - 31)
    ldr x10, gris
    bl draw_line_straight

    mov x1, 291-165       // (306 - 15)
    mov x2, 13         // Coordenada y inicial (13 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 292-165       // (307 - 15)
    mov x2, 13         // Coordenada y inicial (13 - 31)
    mov x3, 292-165       // (307 - 15)
    mov x4, 11         // Coordenada y final (11 - 31)
    ldr x10, gris
    bl draw_line_straight

    mov x1, 293-165       // (308 - 15)
    mov x2, 12         // Coordenada y inicial (12 - 31)
    mov x3, 295-165       // (310 - 15)
    mov x4, 12         // Coordenada y final (12 - 31)
    ldr x10, gris
    bl draw_line_straight

    mov x1, 295-165       // (310 - 15)
    mov x2, 13         // Coordenada y inicial (13 - 31)
    mov x3, 298-165       // (313 - 15)
    mov x4, 13         // Coordenada y final (13 - 31)
    ldr x10, gris
    bl draw_line_straight

    mov x1, 297-165       // (312 - 15)
    mov x2, 14         // Coordenada y inicial (14 - 31)
    mov x3, 300-165       // (315 - 15)
    mov x4, 14         // Coordenada y final (14 - 31)
    ldr x10, gris
    bl draw_line_straight

    mov x1, 300-165       // (315 - 15)
    mov x2, 15         // Coordenada y inicial (15 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 300-165       // (315 - 15)
    mov x2, 16         // Coordenada y inicial (16 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 301-165       // (316 - 15)
    mov x2, 16         // Coordenada y inicial (16 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 301-165       // (316 - 15)
    mov x2, 17         // Coordenada y inicial (17 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 302-165       // (317 - 15)
    mov x2, 17         // Coordenada y inicial (17 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 302-165       // (317 - 15)
    mov x2, 18         // Coordenada y inicial (18 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 303-165       // (318 - 15)
    mov x2, 18         // Coordenada y inicial (18 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 303-165       // (318 - 15)
    mov x2, 19         // Coordenada y inicial (19 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 304-165       // (319 - 15)
    mov x2, 19         // Coordenada y inicial (19 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 305-165       // (320 - 15)
    mov x2, 20         // Coordenada y inicial (20 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 306-165       // (321 - 15)
    mov x2, 21         // Coordenada y inicial (21 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 307-165       // (322 - 15)
    mov x2, 21         // Coordenada y inicial (21 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 307-165       // (322 - 15)
    mov x2, 22         // Coordenada y inicial (22 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 308-165       // (323 - 15)
    mov x2, 22         // Coordenada y inicial (22 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 309-165       // (324 - 15)
    mov x2, 23         // Coordenada y inicial (23 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 310-165       // (325 - 15)
    mov x2, 24         // Coordenada y inicial (24 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 311-165       // (326 - 15)
    mov x2, 25         // Coordenada y inicial (25 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 312-165       // (327 - 15)
    mov x2, 25         // Coordenada y inicial (25 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 312-165       // (327 - 15)
    mov x2, 26         // Coordenada y inicial (26 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 313-165       // (328 - 15)
    mov x2, 26         // Coordenada y inicial (26 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 313-165       // (328 - 15)
    mov x2, 27         // Coordenada y inicial (27 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 314-165       // (329 - 15)
    mov x2, 27         // Coordenada y inicial (27 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 315-165       // (330 - 15)
    mov x2, 28         // Coordenada y inicial (28 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 315-165       // (330 - 15)
    mov x2, 29         // Coordenada y inicial (29 - 31)
    ldr x10, gris
    bl draw_pixel

    //----------NUBE3-----------------
    // Base de la nube 
    // Llamada a draw_line_straight para dibujar base de la nube

    mov x1, 495-165       // Coordenada x inicial (525 )
    mov x2, 91             // Coordenada y inicial
    mov x3, 538-165       // Coordenada x final (568 )
    mov x4, 91             // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    // Parte de arriba de la nube

    mov x1, 490-165       // Coordenada x inicial (520 )
    mov x2, 89             // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 491-165       // Coordenada x inicial (521 )
    mov x2, 88             // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 491-165       // Coordenada x inicial (521 )
    mov x2, 87             // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 494-165       // Coordenada x inicial (524 )
    mov x2, 86             // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 494-165       // Coordenada x inicial (524 )
    mov x2, 85             // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 495-165       // Coordenada x inicial (525 )
    mov x2, 85             // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 495-165       // Coordenada x inicial (525 )
    mov x2, 84             // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 496-165       // Coordenada x inicial (526 )
    mov x2, 83             // Coordenada y inicial
    mov x3, 504-165       // Coordenada x final (534 )
    mov x4, 86             // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 504-165       // Coordenada x inicial (534 )
    mov x2, 82             // Coordenada y inicial
    mov x3, 506-165       // Coordenada x final (536 )
    mov x4, 82             // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 506-165       // Coordenada x inicial (536 )
    mov x2, 81             // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 507-165       // Coordenada x inicial (537 )
    mov x2, 81             // Coordenada y inicial
    mov x3, 507-165       // Coordenada x final (537 )
    mov x4, 79             // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 508-165       // Coordenada x inicial (538 )
    mov x2, 79             // Coordenada y inicial
    mov x3, 508-165       // Coordenada x final (538 )
    mov x4, 78             // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 509-165       // Coordenada x inicial (539 )
    mov x2, 78             // Coordenada y inicial
    mov x3, 509-165       // Coordenada x final (539 )
    mov x4, 77             // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 510-165       // Coordenada x inicial (540 )
    mov x2, 77             // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 510-165       // Coordenada x inicial (540 )
    mov x2, 76             // Coordenada y inicial
    mov x3, 512-165       // Coordenada x final (542 )
    mov x4, 76             // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 512-165       // Coordenada x inicial (542 )
    mov x2, 75             // Coordenada y inicial
    mov x3, 514-165       // Coordenada x final (544 )
    mov x4, 75             // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 514-165       // Coordenada x inicial (544 )
    mov x2, 74             // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 515-165       // Coordenada x inicial (545 )
    mov x2, 74             // Coordenada y inicial
    mov x3, 515-165       // Coordenada x final (545 )
    mov x4, 72             // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 516-165       // Coordenada x inicial (546 )
    mov x2, 73             // Coordenada y inicial
    mov x3, 518-165       // Coordenada x final (548 )
    mov x4, 73             // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 518-165       // Coordenada x inicial (548 )
    mov x2, 74             // Coordenada y inicial
    mov x3, 520-165       // Coordenada x final (550 )
    mov x4, 74             // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 520-165       // Coordenada x inicial (550 )
    mov x2, 75             // Coordenada y inicial
    mov x3, 522-165       // Coordenada x final (552 )
    mov x4, 75             // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 522-165       // Coordenada x inicial 
    mov x2, 76             // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 522-165       // Coordenada x inicial (552 )
    mov x2, 77             // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 523-165       // Coordenada x inicial (553 )
    mov x2, 77             // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 523-165       // Coordenada x inicial (553 )
    mov x2, 78             // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 524-165       // Coordenada x inicial (554 )
    mov x2, 78             // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 524-165       // Coordenada x inicial (554 )
    mov x2, 79             // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 525-165       // Coordenada x inicial (555 )
    mov x2, 79             // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 525-165       // Coordenada x inicial (555 )
    mov x2, 80             // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 526-165       // Coordenada x inicial (556 )
    mov x2, 80             // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 527-165       // Coordenada x inicial (557 )
    mov x2, 81             // Coordenada y inicial
    mov x3, 530-165       // Coordenada x final (560 )
    mov x4, 81             // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 531-165       // Coordenada x inicial (561 )
    mov x2, 82             // Coordenada y inicial
    mov x3, 533-165       // Coordenada x final (563 )
    mov x4, 82             // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 533-165       // Coordenada x inicial (563 )
    mov x2, 83             // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 534-165       // Coordenada x inicial (564 )
    mov x2, 83             // Coordenada y inicial
    mov x3, 534-165       // Coordenada x final (564 )
    mov x4, 85             // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 535-165       // Coordenada x inicial (565 )
    mov x2, 85             // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 535-165       // Coordenada x inicial (565 )
    mov x2, 86             // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 536-165       // Coordenada x inicial (566 )
    mov x2, 86             // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 536-165       // Coordenada x inicial (566 )
    mov x2, 87             // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 537-165       // Coordenada x inicial (567 )
    mov x2, 87             // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 538-165       // Coordenada x inicial (568 )
    mov x2, 88             // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 538-165       // Coordenada x inicial (568 )
    mov x2, 89             // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

 
    LDR X30, [SP, #32]
    LDR X4, [SP, #24]
    LDR X3, [SP, #16]
    LDR X2, [SP, #8]
    LDR X1, [SP]
    ADD SP, SP, #40

    ret
nubes14:
    SUB SP, SP, #40
    STR X1, [SP]
    STR X2, [SP, #8]
    STR X3, [SP, #16]
    STR X4, [SP, #24]
    STR X30, [SP, #32]

    //----------NUBE1-----------------
    // Base de la nube 
    // Llamada a draw_line_straight para dibujar base de la nube
    mov x1, 39-195      // Coordenada x inicial (54 - 15)
    mov x2, 61        // Coordenada y inicial
    mov x3, 82-195      // Coordenada x final (97 - 15)
    mov x4, 61        // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    // Parte de arriba de la nube
    mov x1, 34-195      // (49 - 15)
    mov x2, 59
    ldr x10, gris
    bl draw_pixel

    mov x1, 35-195      // (50 - 15)
    mov x2, 58
    ldr x10, gris
    bl draw_pixel

    mov x1, 35-195      // (50 - 15)
    mov x2, 57
    ldr x10, gris
    bl draw_pixel

    mov x1, 38-195      // (53 - 15)
    mov x2, 56
    ldr x10, gris
    bl draw_pixel

    mov x1, 38-195      // (53 - 15)
    mov x2, 55
    ldr x10, gris
    bl draw_pixel

    mov x1, 39-195      // (54 - 15)
    mov x2, 55
    ldr x10, gris
    bl draw_pixel

    mov x1, 39-195      // (54 - 15)
    mov x2, 54
    ldr x10, gris
    bl draw_pixel

    mov x1, 40-195      // Coordenada x inicial (55 - 15)
    mov x2, 53        // Coordenada y inicial
    mov x3, 48-195      // Coordenada x final (63 - 15)
    mov x4, 56        // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 48-195      // Coordenada x inicial (63 - 15)
    mov x2, 52        // Coordenada y inicial
    mov x3, 50-195      // Coordenada x final (65 - 15)
    mov x4, 52        // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 50-195      // (65 - 15)
    mov x2, 51
    ldr x10, gris
    bl draw_pixel

    mov x1, 51-195      // Coordenada x inicial (66 - 15)
    mov x2, 51        // Coordenada y inicial
    mov x3, 51-195      // Coordenada x final (66 - 15)
    mov x4, 49        // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 52-195      // Coordenada x inicial (67 - 15)
    mov x2, 49        // Coordenada y inicial
    mov x3, 52-195      // Coordenada x final (67 - 15)
    mov x4, 48        // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 53-195      // Coordenada x inicial (68 - 15)
    mov x2, 48        // Coordenada y inicial
    mov x3, 53-195      // Coordenada x final (68 - 15)
    mov x4, 47        // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 54-195      // (69 - 15)
    mov x2, 47
    ldr x10, gris
    bl draw_pixel

    mov x1, 54-195      // Coordenada x inicial (69 - 15)
    mov x2, 46        // Coordenada y inicial
    mov x3, 56-195      // Coordenada x final (71 - 15)
    mov x4, 46        // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 56-195      // Coordenada x inicial (71 - 15)
    mov x2, 45        // Coordenada y inicial
    mov x3, 58-195      // Coordenada x final (73 - 15)
    mov x4, 45        // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 58-195      // (73 - 15)
    mov x2, 44
    ldr x10, gris
    bl draw_pixel

    mov x1, 59-195      // Coordenada x inicial (74 - 15)
    mov x2, 44        // Coordenada y inicial
    mov x3, 59-195      // Coordenada x final (74 - 15)
    mov x4, 42        // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 60-195      // Coordenada x inicial (75 - 15)
    mov x2, 43        // Coordenada y inicial
    mov x3, 62-195      // Coordenada x final (77 - 15)
    mov x4, 43        // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 62-195      // Coordenada x inicial (77 - 15)
    mov x2, 44        // Coordenada y inicial
    mov x3, 64-195      // Coordenada x final (79 - 15)
    mov x4, 44        // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 64-195      // Coordenada x inicial (79 - 15)
    mov x2, 45        // Coordenada y inicial
    mov x3, 68-195      // Coordenada x final (83 - 15)
    mov x4, 45        // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 66-195      // (81 - 15)
    mov x2, 46
    ldr x10, gris
    bl draw_pixel

    mov x1, 66-195      // (81 - 15)
    mov x2, 47
    ldr x10, gris
    bl draw_pixel

    mov x1, 67-195      // (82 - 15)
    mov x2, 47
    ldr x10, gris
    bl draw_pixel

    mov x1, 67-195      // (82 - 15)
    mov x2, 48
    ldr x10, gris
    bl draw_pixel

    mov x1, 68-195      // (83 - 15)
    mov x2, 48
    ldr x10, gris
    bl draw_pixel

    mov x1, 68-195      // (83 - 15)
    mov x2, 49
    ldr x10, gris
    bl draw_pixel

    mov x1, 69-195      // (84 - 15)
    mov x2, 49
    ldr x10, gris
    bl draw_pixel

    mov x1, 69-195      // (84 - 15)
    mov x2, 50
    ldr x10, gris
    bl draw_pixel

    mov x1, 70-195      // (85 - 15)
    mov x2, 50
    ldr x10, gris
    bl draw_pixel

    mov x1, 71-195     // Coordenada x inicial (86 - 15)
    mov x2, 51        // Coordenada y inicial
    mov x3, 74-195     // Coordenada x final (89 - 15)
    mov x4, 51        // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 75-195     // Coordenada x inicial (90 - 15)
    mov x2, 52        // Coordenada y inicial
    mov x3, 77-195     // Coordenada x final (92 - 15)
    mov x4, 52        // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 77-195     // (92 - 15)
    mov x2, 53
    ldr x10, gris
    bl draw_pixel

    mov x1, 78-195     // Coordenada x inicial (93 - 15)
    mov x2, 53        // Coordenada y inicial
    mov x3, 78-195     // Coordenada x final (93 - 15)
    mov x4, 55        // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 79-195     // (94 - 15)
    mov x2, 55
    ldr x10, gris
    bl draw_pixel

    mov x1, 79-195     // (94 - 15)
    mov x2, 56
    ldr x10, gris
    bl draw_pixel

    mov x1, 80-195     // (95 - 15)
    mov x2, 56
    ldr x10, gris
    bl draw_pixel

    mov x1, 80-195     // (95 - 15)
    mov x2, 57
    ldr x10, gris
    bl draw_pixel

    mov x1, 81-195     // (96 - 15)
    mov x2, 57
    ldr x10, gris
    bl draw_pixel

    mov x1, 82-195     // (97 - 15)
    mov x2, 58
    ldr x10, gris
    bl draw_pixel

    mov x1, 83-195     // (98 - 15)
    mov x2, 59
    ldr x10, gris
    bl draw_pixel

    mov x1, 83-195     // (98 - 15)
    mov X2, 60 
    ldr x10, gris
    bl draw_pixel

    // ------------NUBE2-----------------
    // Base de la nube 
    // Llamada a draw_line_straight para dibujar base de la nube

    mov x1, 273-195      // Coordenada x inicial (288 - 15)
    mov x2, 30         // Coordenada y inicial
    mov x3, 316-195      // Coordenada x final (331 - 15)
    mov x4, 30         // Coordenada y final
    ldr x10, gris
    bl draw_line_straight

    mov x1, 268-195      // (283 - 15)
    mov x2, 28         // Coordenada y inicial (30 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 269-195      // (284 - 15)
    mov x2, 27         // Coordenada y inicial (27 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 269-195      // (284 - 15)
    mov x2, 26         // Coordenada y inicial (26 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 272-195      // (287 - 15)
    mov x2, 25         // Coordenada y inicial (25 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 272-195      // (287 - 15)
    mov x2, 24         // Coordenada y inicial (24 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 273-195      // (288 - 15)
    mov x2, 24         // Coordenada y inicial (24 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 273-195      // (288 - 15)
    mov x2, 23         // Coordenada y inicial (23 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 274-195      // Coordenada x inicial (289 - 15)
    mov x2, 22         // Coordenada y inicial
    mov x3, 274-195      // Coordenada x final (289 - 15)
    mov x4, 25         // Coordenada y final
    ldr x10, gris
    bl draw_line_straight

    mov x1, 282-195      // Coordenada x inicial (297 - 15)
    mov x2, 21         // Coordenada y inicial
    mov x3, 284-195      // Coordenada x final (299 - 15)
    mov x4, 21         // Coordenada y final
    ldr x10, gris
    bl draw_line_straight

    mov x1, 284-195      // (299 - 15)
    mov x2, 20         // Coordenada y inicial (20 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 285-195      // Coordenada x inicial (300 - 15)
    mov x2, 20         // Coordenada y inicial
    mov x3, 285-195      // Coordenada x final (300 - 15)
    mov x4, 18         // Coordenada y final
    ldr x10, gris
    bl draw_line_straight

    mov x1, 286-195      // (301 - 15)
    mov x2, 18         // Coordenada y inicial (18 - 31)
    mov x3, 286-195      // (301 - 15)
    mov x4, 17         // Coordenada y final (17 - 31)
    ldr x10, gris
    bl draw_line_straight

    mov x1, 287-195      // (302 - 15)
    mov x2, 17         // Coordenada y inicial (17 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 286-195      // (301 - 15)
    mov x2, 15         // Coordenada y inicial (15 - 31)
    mov x3, 286-195      // (301 - 15)
    mov x4, 15         // Coordenada y final (15 - 31)
    ldr x10, gris
    bl draw_line_straight

    mov x1, 289-195      // (304 - 15)
    mov x2, 14         // Coordenada y inicial (14 - 31)
    mov x3, 291-195      // (306 - 15)
    mov x4, 14         // Coordenada y final (14 - 31)
    ldr x10, gris
    bl draw_line_straight

    mov x1, 291-195      // (306 - 15)
    mov x2, 13         // Coordenada y inicial (13 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 292-195      // (307 - 15)
    mov x2, 13         // Coordenada y inicial (13 - 31)
    mov x3, 292-195      // (307 - 15)
    mov x4, 11         // Coordenada y final (11 - 31)
    ldr x10, gris
    bl draw_line_straight

    mov x1, 293-195      // (308 - 15)
    mov x2, 12         // Coordenada y inicial (12 - 31)
    mov x3, 295-195      // (310 - 15)
    mov x4, 12         // Coordenada y final (12 - 31)
    ldr x10, gris
    bl draw_line_straight

    mov x1, 295-195      // (310 - 15)
    mov x2, 13         // Coordenada y inicial (13 - 31)
    mov x3, 298-195      // (313 - 15)
    mov x4, 13         // Coordenada y final (13 - 31)
    ldr x10, gris
    bl draw_line_straight

    mov x1, 297-195      // (312 - 15)
    mov x2, 14         // Coordenada y inicial (14 - 31)
    mov x3, 300-195      // (315 - 15)
    mov x4, 14         // Coordenada y final (14 - 31)
    ldr x10, gris
    bl draw_line_straight

    mov x1, 300-195      // (315 - 15)
    mov x2, 15         // Coordenada y inicial (15 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 300-195      // (315 - 15)
    mov x2, 16         // Coordenada y inicial (16 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 301-195      // (316 - 15)
    mov x2, 16         // Coordenada y inicial (16 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 301-195      // (316 - 15)
    mov x2, 17         // Coordenada y inicial (17 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 302-195      // (317 - 15)
    mov x2, 17         // Coordenada y inicial (17 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 302-195      // (317 - 15)
    mov x2, 18         // Coordenada y inicial (18 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 303-195      // (318 - 15)
    mov x2, 18         // Coordenada y inicial (18 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 303-195      // (318 - 15)
    mov x2, 19         // Coordenada y inicial (19 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 304-195      // (319 - 15)
    mov x2, 19         // Coordenada y inicial (19 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 305-195      // (320 - 15)
    mov x2, 20         // Coordenada y inicial (20 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 306-195      // (321 - 15)
    mov x2, 21         // Coordenada y inicial (21 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 307-195      // (322 - 15)
    mov x2, 21         // Coordenada y inicial (21 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 307-195      // (322 - 15)
    mov x2, 22         // Coordenada y inicial (22 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 308-195      // (323 - 15)
    mov x2, 22         // Coordenada y inicial (22 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 309-195      // (324 - 15)
    mov x2, 23         // Coordenada y inicial (23 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 310-195      // (325 - 15)
    mov x2, 24         // Coordenada y inicial (24 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 311-195      // (326 - 15)
    mov x2, 25         // Coordenada y inicial (25 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 312-195      // (327 - 15)
    mov x2, 25         // Coordenada y inicial (25 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 312-195      // (327 - 15)
    mov x2, 26         // Coordenada y inicial (26 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 313-195      // (328 - 15)
    mov x2, 26         // Coordenada y inicial (26 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 313-195      // (328 - 15)
    mov x2, 27         // Coordenada y inicial (27 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 314-195      // (329 - 15)
    mov x2, 27         // Coordenada y inicial (27 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 315-195      // (330 - 15)
    mov x2, 28         // Coordenada y inicial (28 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 315-195      // (330 - 15)
    mov x2, 29         // Coordenada y inicial (29 - 31)
    ldr x10, gris
    bl draw_pixel

    //----------NUBE3-----------------
    // Base de la nube 
    // Llamada a draw_line_straight para dibujar base de la nube

    mov x1, 495-195      // Coordenada x inicial (525 )
    mov x2, 91             // Coordenada y inicial
    mov x3, 538-195      // Coordenada x final (568 )
    mov x4, 91             // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    // Parte de arriba de la nube

    mov x1, 490-195      // Coordenada x inicial (520 )
    mov x2, 89             // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 491-195      // Coordenada x inicial (521 )
    mov x2, 88             // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 491-195      // Coordenada x inicial (521 )
    mov x2, 87             // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 494-195      // Coordenada x inicial (524 )
    mov x2, 86             // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 494-195      // Coordenada x inicial (524 )
    mov x2, 85             // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 495-195      // Coordenada x inicial (525 )
    mov x2, 85             // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 495-195      // Coordenada x inicial (525 )
    mov x2, 84             // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 496-195      // Coordenada x inicial (526 )
    mov x2, 83             // Coordenada y inicial
    mov x3, 504-195      // Coordenada x final (534 )
    mov x4, 86             // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 504-195      // Coordenada x inicial (534 )
    mov x2, 82             // Coordenada y inicial
    mov x3, 506-195      // Coordenada x final (536 )
    mov x4, 82             // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 506-195      // Coordenada x inicial (536 )
    mov x2, 81             // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 507-195      // Coordenada x inicial (537 )
    mov x2, 81             // Coordenada y inicial
    mov x3, 507-195      // Coordenada x final (537 )
    mov x4, 79             // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 508-195      // Coordenada x inicial (538 )
    mov x2, 79             // Coordenada y inicial
    mov x3, 508-195      // Coordenada x final (538 )
    mov x4, 78             // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 509-195      // Coordenada x inicial (539 )
    mov x2, 78             // Coordenada y inicial
    mov x3, 509-195      // Coordenada x final (539 )
    mov x4, 77             // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 510-195      // Coordenada x inicial (540 )
    mov x2, 77             // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 510-195      // Coordenada x inicial (540 )
    mov x2, 76             // Coordenada y inicial
    mov x3, 512-195      // Coordenada x final (542 )
    mov x4, 76             // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 512-195      // Coordenada x inicial (542 )
    mov x2, 75             // Coordenada y inicial
    mov x3, 514-195      // Coordenada x final (544 )
    mov x4, 75             // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 514-195      // Coordenada x inicial (544 )
    mov x2, 74             // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 515-195      // Coordenada x inicial (545 )
    mov x2, 74             // Coordenada y inicial
    mov x3, 515-195      // Coordenada x final (545 )
    mov x4, 72             // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 516-195      // Coordenada x inicial (546 )
    mov x2, 73             // Coordenada y inicial
    mov x3, 518-195      // Coordenada x final (548 )
    mov x4, 73             // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 518-195      // Coordenada x inicial (548 )
    mov x2, 74             // Coordenada y inicial
    mov x3, 520-195      // Coordenada x final (550 )
    mov x4, 74             // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 520-195      // Coordenada x inicial (550 )
    mov x2, 75             // Coordenada y inicial
    mov x3, 522-195      // Coordenada x final (552 )
    mov x4, 75             // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 522-195      // Coordenada x inicial 
    mov x2, 76             // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 522-195      // Coordenada x inicial (552 )
    mov x2, 77             // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 523-195      // Coordenada x inicial (553 )
    mov x2, 77             // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 523-195      // Coordenada x inicial (553 )
    mov x2, 78             // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 524-195      // Coordenada x inicial (554 )
    mov x2, 78             // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 524-195      // Coordenada x inicial (554 )
    mov x2, 79             // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 525-195      // Coordenada x inicial (555 )
    mov x2, 79             // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 525-195      // Coordenada x inicial (555 )
    mov x2, 80             // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 526-195      // Coordenada x inicial (556 )
    mov x2, 80             // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 527-195      // Coordenada x inicial (557 )
    mov x2, 81             // Coordenada y inicial
    mov x3, 530-195      // Coordenada x final (560 )
    mov x4, 81             // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 531-195      // Coordenada x inicial (561 )
    mov x2, 82             // Coordenada y inicial
    mov x3, 533-195      // Coordenada x final (563 )
    mov x4, 82             // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 533-195      // Coordenada x inicial (563 )
    mov x2, 83             // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 534-195      // Coordenada x inicial (564 )
    mov x2, 83             // Coordenada y inicial
    mov x3, 534-195      // Coordenada x final (564 )
    mov x4, 85             // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 535-195      // Coordenada x inicial (565 )
    mov x2, 85             // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 535-195      // Coordenada x inicial (565 )
    mov x2, 86             // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 536-195      // Coordenada x inicial (566 )
    mov x2, 86             // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 536-195      // Coordenada x inicial (566 )
    mov x2, 87             // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 537-195      // Coordenada x inicial (567 )
    mov x2, 87             // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 538-195      // Coordenada x inicial (568 )
    mov x2, 88             // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 538-195      // Coordenada x inicial (568 )
    mov x2, 89             // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

 
    LDR X30, [SP, #32]
    LDR X4, [SP, #24]
    LDR X3, [SP, #16]
    LDR X2, [SP, #8]
    LDR X1, [SP]
    ADD SP, SP, #40

    ret

nubes15: 
    SUB SP, SP, #40
    STR X1, [SP]
    STR X2, [SP, #8]
    STR X3, [SP, #16]
    STR X4, [SP, #24]
    STR X30, [SP, #32]

    //----------NUBE1-----------------
    // Base de la nube 
    // Llamada a draw_line_straight para dibujar base de la nube
    mov x1, 39-225      // Coordenada x inicial (54 - 15)
    mov x2, 61        // Coordenada y inicial
    mov x3, 82-225      // Coordenada x final (97 - 15)
    mov x4, 61        // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    // Parte de arriba de la nube
    mov x1, 34-225      // (49 - 15)
    mov x2, 59
    ldr x10, gris
    bl draw_pixel

    mov x1, 35-225      // (50 - 15)
    mov x2, 58
    ldr x10, gris
    bl draw_pixel

    mov x1, 35-225      // (50 - 15)
    mov x2, 57
    ldr x10, gris
    bl draw_pixel

    mov x1, 38-225      // (53 - 15)
    mov x2, 56
    ldr x10, gris
    bl draw_pixel

    mov x1, 38-225      // (53 - 15)
    mov x2, 55
    ldr x10, gris
    bl draw_pixel

    mov x1, 39-225      // (54 - 15)
    mov x2, 55
    ldr x10, gris
    bl draw_pixel

    mov x1, 39-225      // (54 - 15)
    mov x2, 54
    ldr x10, gris
    bl draw_pixel

    mov x1, 40-225      // Coordenada x inicial (55 - 15)
    mov x2, 53        // Coordenada y inicial
    mov x3, 48-225      // Coordenada x final (63 - 15)
    mov x4, 56        // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 48-225      // Coordenada x inicial (63 - 15)
    mov x2, 52        // Coordenada y inicial
    mov x3, 50-225      // Coordenada x final (65 - 15)
    mov x4, 52        // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 50-225      // (65 - 15)
    mov x2, 51
    ldr x10, gris
    bl draw_pixel

    mov x1, 51-225      // Coordenada x inicial (66 - 15)
    mov x2, 51        // Coordenada y inicial
    mov x3, 51-225      // Coordenada x final (66 - 15)
    mov x4, 49        // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 52-225      // Coordenada x inicial (67 - 15)
    mov x2, 49        // Coordenada y inicial
    mov x3, 52-225      // Coordenada x final (67 - 15)
    mov x4, 48        // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 53-225      // Coordenada x inicial (68 - 15)
    mov x2, 48        // Coordenada y inicial
    mov x3, 53-225      // Coordenada x final (68 - 15)
    mov x4, 47        // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 54-225      // (69 - 15)
    mov x2, 47
    ldr x10, gris
    bl draw_pixel

    mov x1, 54-225      // Coordenada x inicial (69 - 15)
    mov x2, 46        // Coordenada y inicial
    mov x3, 56-225      // Coordenada x final (71 - 15)
    mov x4, 46        // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 56-225      // Coordenada x inicial (71 - 15)
    mov x2, 45        // Coordenada y inicial
    mov x3, 58-225      // Coordenada x final (73 - 15)
    mov x4, 45        // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 58-225      // (73 - 15)
    mov x2, 44
    ldr x10, gris
    bl draw_pixel

    mov x1, 59-225      // Coordenada x inicial (74 - 15)
    mov x2, 44        // Coordenada y inicial
    mov x3, 59-225      // Coordenada x final (74 - 15)
    mov x4, 42        // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 60-225      // Coordenada x inicial (75 - 15)
    mov x2, 43        // Coordenada y inicial
    mov x3, 62-225      // Coordenada x final (77 - 15)
    mov x4, 43        // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 62-225      // Coordenada x inicial (77 - 15)
    mov x2, 44        // Coordenada y inicial
    mov x3, 64-225      // Coordenada x final (79 - 15)
    mov x4, 44        // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 64-225      // Coordenada x inicial (79 - 15)
    mov x2, 45        // Coordenada y inicial
    mov x3, 68-225      // Coordenada x final (83 - 15)
    mov x4, 45        // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 66-225      // (81 - 15)
    mov x2, 46
    ldr x10, gris
    bl draw_pixel

    mov x1, 66-225      // (81 - 15)
    mov x2, 47
    ldr x10, gris
    bl draw_pixel

    mov x1, 67-225      // (82 - 15)
    mov x2, 47
    ldr x10, gris
    bl draw_pixel

    mov x1, 67-225      // (82 - 15)
    mov x2, 48
    ldr x10, gris
    bl draw_pixel

    mov x1, 68-225      // (83 - 15)
    mov x2, 48
    ldr x10, gris
    bl draw_pixel

    mov x1, 68-225      // (83 - 15)
    mov x2, 49
    ldr x10, gris
    bl draw_pixel

    mov x1, 69-225      // (84 - 15)
    mov x2, 49
    ldr x10, gris
    bl draw_pixel

    mov x1, 69-225      // (84 - 15)
    mov x2, 50
    ldr x10, gris
    bl draw_pixel

    mov x1, 70-225      // (85 - 15)
    mov x2, 50
    ldr x10, gris
    bl draw_pixel

    mov x1, 71-225     // Coordenada x inicial (86 - 15)
    mov x2, 51        // Coordenada y inicial
    mov x3, 74-225     // Coordenada x final (89 - 15)
    mov x4, 51        // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 75-225     // Coordenada x inicial (90 - 15)
    mov x2, 52        // Coordenada y inicial
    mov x3, 77-225     // Coordenada x final (92 - 15)
    mov x4, 52        // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 77-225     // (92 - 15)
    mov x2, 53
    ldr x10, gris
    bl draw_pixel

    mov x1, 78-225     // Coordenada x inicial (93 - 15)
    mov x2, 53        // Coordenada y inicial
    mov x3, 78-225     // Coordenada x final (93 - 15)
    mov x4, 55        // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 79-225     // (94 - 15)
    mov x2, 55
    ldr x10, gris
    bl draw_pixel

    mov x1, 79-225     // (94 - 15)
    mov x2, 56
    ldr x10, gris
    bl draw_pixel

    mov x1, 80-225     // (95 - 15)
    mov x2, 56
    ldr x10, gris
    bl draw_pixel

    mov x1, 80-225     // (95 - 15)
    mov x2, 57
    ldr x10, gris
    bl draw_pixel

    mov x1, 81-225     // (96 - 15)
    mov x2, 57
    ldr x10, gris
    bl draw_pixel

    mov x1, 82-225     // (97 - 15)
    mov x2, 58
    ldr x10, gris
    bl draw_pixel

    mov x1, 83-225     // (98 - 15)
    mov x2, 59
    ldr x10, gris
    bl draw_pixel

    mov x1, 83-225     // (98 - 15)
    mov X2, 60 
    ldr x10, gris
    bl draw_pixel

    // ------------NUBE2-----------------
    // Base de la nube 
    // Llamada a draw_line_straight para dibujar base de la nube

    mov x1, 273-225      // Coordenada x inicial (288 - 15)
    mov x2, 30         // Coordenada y inicial
    mov x3, 316-225      // Coordenada x final (331 - 15)
    mov x4, 30         // Coordenada y final
    ldr x10, gris
    bl draw_line_straight

    mov x1, 268-225      // (283 - 15)
    mov x2, 28         // Coordenada y inicial (30 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 269-225      // (284 - 15)
    mov x2, 27         // Coordenada y inicial (27 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 269-225      // (284 - 15)
    mov x2, 26         // Coordenada y inicial (26 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 272-225      // (287 - 15)
    mov x2, 25         // Coordenada y inicial (25 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 272-225      // (287 - 15)
    mov x2, 24         // Coordenada y inicial (24 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 273-225      // (288 - 15)
    mov x2, 24         // Coordenada y inicial (24 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 273-225      // (288 - 15)
    mov x2, 23         // Coordenada y inicial (23 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 274-225      // Coordenada x inicial (289 - 15)
    mov x2, 22         // Coordenada y inicial
    mov x3, 274-225      // Coordenada x final (289 - 15)
    mov x4, 25         // Coordenada y final
    ldr x10, gris
    bl draw_line_straight

    mov x1, 282-225      // Coordenada x inicial (297 - 15)
    mov x2, 21         // Coordenada y inicial
    mov x3, 284-225      // Coordenada x final (299 - 15)
    mov x4, 21         // Coordenada y final
    ldr x10, gris
    bl draw_line_straight

    mov x1, 284-225      // (299 - 15)
    mov x2, 20         // Coordenada y inicial (20 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 285-225      // Coordenada x inicial (300 - 15)
    mov x2, 20         // Coordenada y inicial
    mov x3, 285-225      // Coordenada x final (300 - 15)
    mov x4, 18         // Coordenada y final
    ldr x10, gris
    bl draw_line_straight

    mov x1, 286-225      // (301 - 15)
    mov x2, 18         // Coordenada y inicial (18 - 31)
    mov x3, 286-225      // (301 - 15)
    mov x4, 17         // Coordenada y final (17 - 31)
    ldr x10, gris
    bl draw_line_straight

    mov x1, 287-225      // (302 - 15)
    mov x2, 17         // Coordenada y inicial (17 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 286-225      // (301 - 15)
    mov x2, 15         // Coordenada y inicial (15 - 31)
    mov x3, 286-225      // (301 - 15)
    mov x4, 15         // Coordenada y final (15 - 31)
    ldr x10, gris
    bl draw_line_straight

    mov x1, 289-225      // (304 - 15)
    mov x2, 14         // Coordenada y inicial (14 - 31)
    mov x3, 291-225      // (306 - 15)
    mov x4, 14         // Coordenada y final (14 - 31)
    ldr x10, gris
    bl draw_line_straight

    mov x1, 291-225      // (306 - 15)
    mov x2, 13         // Coordenada y inicial (13 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 292-225      // (307 - 15)
    mov x2, 13         // Coordenada y inicial (13 - 31)
    mov x3, 292-225      // (307 - 15)
    mov x4, 11         // Coordenada y final (11 - 31)
    ldr x10, gris
    bl draw_line_straight

    mov x1, 293-225      // (308 - 15)
    mov x2, 12         // Coordenada y inicial (12 - 31)
    mov x3, 295-225      // (310 - 15)
    mov x4, 12         // Coordenada y final (12 - 31)
    ldr x10, gris
    bl draw_line_straight

    mov x1, 295-225      // (310 - 15)
    mov x2, 13         // Coordenada y inicial (13 - 31)
    mov x3, 298-225      // (313 - 15)
    mov x4, 13         // Coordenada y final (13 - 31)
    ldr x10, gris
    bl draw_line_straight

    mov x1, 297-225      // (312 - 15)
    mov x2, 14         // Coordenada y inicial (14 - 31)
    mov x3, 300-225      // (315 - 15)
    mov x4, 14         // Coordenada y final (14 - 31)
    ldr x10, gris
    bl draw_line_straight

    mov x1, 300-225      // (315 - 15)
    mov x2, 15         // Coordenada y inicial (15 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 300-225      // (315 - 15)
    mov x2, 16         // Coordenada y inicial (16 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 301-225      // (316 - 15)
    mov x2, 16         // Coordenada y inicial (16 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 301-225      // (316 - 15)
    mov x2, 17         // Coordenada y inicial (17 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 302-225      // (317 - 15)
    mov x2, 17         // Coordenada y inicial (17 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 302-225      // (317 - 15)
    mov x2, 18         // Coordenada y inicial (18 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 303-225      // (318 - 15)
    mov x2, 18         // Coordenada y inicial (18 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 303-225      // (318 - 15)
    mov x2, 19         // Coordenada y inicial (19 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 304-225      // (319 - 15)
    mov x2, 19         // Coordenada y inicial (19 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 305-225      // (320 - 15)
    mov x2, 20         // Coordenada y inicial (20 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 306-225      // (321 - 15)
    mov x2, 21         // Coordenada y inicial (21 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 307-225      // (322 - 15)
    mov x2, 21         // Coordenada y inicial (21 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 307-225      // (322 - 15)
    mov x2, 22         // Coordenada y inicial (22 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 308-225      // (323 - 15)
    mov x2, 22         // Coordenada y inicial (22 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 309-225      // (324 - 15)
    mov x2, 23         // Coordenada y inicial (23 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 310-225      // (325 - 15)
    mov x2, 24         // Coordenada y inicial (24 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 311-225      // (326 - 15)
    mov x2, 25         // Coordenada y inicial (25 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 312-225      // (327 - 15)
    mov x2, 25         // Coordenada y inicial (25 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 312-225      // (327 - 15)
    mov x2, 26         // Coordenada y inicial (26 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 313-225      // (328 - 15)
    mov x2, 26         // Coordenada y inicial (26 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 313-225      // (328 - 15)
    mov x2, 27         // Coordenada y inicial (27 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 314-225      // (329 - 15)
    mov x2, 27         // Coordenada y inicial (27 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 315-225      // (330 - 15)
    mov x2, 28         // Coordenada y inicial (28 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 315-225      // (330 - 15)
    mov x2, 29         // Coordenada y inicial (29 - 31)
    ldr x10, gris
    bl draw_pixel

    //----------NUBE3-----------------
    // Base de la nube 
    // Llamada a draw_line_straight para dibujar base de la nube

    mov x1, 495-225      // Coordenada x inicial (525 )
    mov x2, 91             // Coordenada y inicial
    mov x3, 538-225      // Coordenada x final (568 )
    mov x4, 91             // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    // Parte de arriba de la nube

    mov x1, 490-225      // Coordenada x inicial (520 )
    mov x2, 89             // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 491-225      // Coordenada x inicial (521 )
    mov x2, 88             // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 491-225      // Coordenada x inicial (521 )
    mov x2, 87             // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 494-225      // Coordenada x inicial (524 )
    mov x2, 86             // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 494-225      // Coordenada x inicial (524 )
    mov x2, 85             // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 495-225      // Coordenada x inicial (525 )
    mov x2, 85             // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 495-225      // Coordenada x inicial (525 )
    mov x2, 84             // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 496-225      // Coordenada x inicial (526 )
    mov x2, 83             // Coordenada y inicial
    mov x3, 504-225      // Coordenada x final (534 )
    mov x4, 86             // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 504-225      // Coordenada x inicial (534 )
    mov x2, 82             // Coordenada y inicial
    mov x3, 506-225      // Coordenada x final (536 )
    mov x4, 82             // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 506-225      // Coordenada x inicial (536 )
    mov x2, 81             // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 507-225      // Coordenada x inicial (537 )
    mov x2, 81             // Coordenada y inicial
    mov x3, 507-225      // Coordenada x final (537 )
    mov x4, 79             // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 508-225      // Coordenada x inicial (538 )
    mov x2, 79             // Coordenada y inicial
    mov x3, 508-225      // Coordenada x final (538 )
    mov x4, 78             // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 509-225      // Coordenada x inicial (539 )
    mov x2, 78             // Coordenada y inicial
    mov x3, 509-225      // Coordenada x final (539 )
    mov x4, 77             // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 510-225      // Coordenada x inicial (540 )
    mov x2, 77             // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 510-225      // Coordenada x inicial (540 )
    mov x2, 76             // Coordenada y inicial
    mov x3, 512-225      // Coordenada x final (542 )
    mov x4, 76             // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 512-225      // Coordenada x inicial (542 )
    mov x2, 75             // Coordenada y inicial
    mov x3, 514-225      // Coordenada x final (544 )
    mov x4, 75             // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 514-225      // Coordenada x inicial (544 )
    mov x2, 74             // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 515-225      // Coordenada x inicial (545 )
    mov x2, 74             // Coordenada y inicial
    mov x3, 515-225      // Coordenada x final (545 )
    mov x4, 72             // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 516-225      // Coordenada x inicial (546 )
    mov x2, 73             // Coordenada y inicial
    mov x3, 518-225      // Coordenada x final (548 )
    mov x4, 73             // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 518-225      // Coordenada x inicial (548 )
    mov x2, 74             // Coordenada y inicial
    mov x3, 520-225      // Coordenada x final (550 )
    mov x4, 74             // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 520-225      // Coordenada x inicial (550 )
    mov x2, 75             // Coordenada y inicial
    mov x3, 522-225      // Coordenada x final (552 )
    mov x4, 75             // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 522-225      // Coordenada x inicial 
    mov x2, 76             // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 522-225      // Coordenada x inicial (552 )
    mov x2, 77             // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 523-225      // Coordenada x inicial (553 )
    mov x2, 77             // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 523-225      // Coordenada x inicial (553 )
    mov x2, 78             // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 524-225      // Coordenada x inicial (554 )
    mov x2, 78             // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 524-225      // Coordenada x inicial (554 )
    mov x2, 79             // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 525-225      // Coordenada x inicial (555 )
    mov x2, 79             // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 525-225      // Coordenada x inicial (555 )
    mov x2, 80             // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 526-225      // Coordenada x inicial (556 )
    mov x2, 80             // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 527-225      // Coordenada x inicial (557 )
    mov x2, 81             // Coordenada y inicial
    mov x3, 530-225      // Coordenada x final (560 )
    mov x4, 81             // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 531-225      // Coordenada x inicial (561 )
    mov x2, 82             // Coordenada y inicial
    mov x3, 533-225      // Coordenada x final (563 )
    mov x4, 82             // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 533-225      // Coordenada x inicial (563 )
    mov x2, 83             // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 534-225      // Coordenada x inicial (564 )
    mov x2, 83             // Coordenada y inicial
    mov x3, 534-225      // Coordenada x final (564 )
    mov x4, 85             // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 535-225      // Coordenada x inicial (565 )
    mov x2, 85             // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 535-225      // Coordenada x inicial (565 )
    mov x2, 86             // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 536-225      // Coordenada x inicial (566 )
    mov x2, 86             // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 536-225      // Coordenada x inicial (566 )
    mov x2, 87             // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 537-225      // Coordenada x inicial (567 )
    mov x2, 87             // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 538-225      // Coordenada x inicial (568 )
    mov x2, 88             // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 538-225      // Coordenada x inicial (568 )
    mov x2, 89             // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

 
    LDR X30, [SP, #32]
    LDR X4, [SP, #24]
    LDR X3, [SP, #16]
    LDR X2, [SP, #8]
    LDR X1, [SP]
    ADD SP, SP, #40

    ret
nubes16:
    SUB SP, SP, #40
    STR X1, [SP]
    STR X2, [SP, #8]
    STR X3, [SP, #16]
    STR X4, [SP, #24]
    STR X30, [SP, #32]

    //----------NUBE1-----------------
    // Base de la nube 
    // Llamada a draw_line_straight para dibujar base de la nube
    mov x1, 39-255     // Coordenada x inicial (54 - 15)
    mov x2, 61        // Coordenada y inicial
    mov x3, 82-255     // Coordenada x final (97 - 15)
    mov x4, 61        // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    // Parte de arriba de la nube
    mov x1, 34-255     // (49 - 15)
    mov x2, 59
    ldr x10, gris
    bl draw_pixel

    mov x1, 35-255     // (50 - 15)
    mov x2, 58
    ldr x10, gris
    bl draw_pixel

    mov x1, 35-255     // (50 - 15)
    mov x2, 57
    ldr x10, gris
    bl draw_pixel

    mov x1, 38-255     // (53 - 15)
    mov x2, 56
    ldr x10, gris
    bl draw_pixel

    mov x1, 38-255     // (53 - 15)
    mov x2, 55
    ldr x10, gris
    bl draw_pixel

    mov x1, 39-255     // (54 - 15)
    mov x2, 55
    ldr x10, gris
    bl draw_pixel

    mov x1, 39-255     // (54 - 15)
    mov x2, 54
    ldr x10, gris
    bl draw_pixel

    mov x1, 40-255     // Coordenada x inicial (55 - 15)
    mov x2, 53        // Coordenada y inicial
    mov x3, 48-255     // Coordenada x final (63 - 15)
    mov x4, 56        // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 48-255     // Coordenada x inicial (63 - 15)
    mov x2, 52        // Coordenada y inicial
    mov x3, 50-255     // Coordenada x final (65 - 15)
    mov x4, 52        // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 50-255     // (65 - 15)
    mov x2, 51
    ldr x10, gris
    bl draw_pixel

    mov x1, 51-255     // Coordenada x inicial (66 - 15)
    mov x2, 51        // Coordenada y inicial
    mov x3, 51-255     // Coordenada x final (66 - 15)
    mov x4, 49        // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 52-255     // Coordenada x inicial (67 - 15)
    mov x2, 49        // Coordenada y inicial
    mov x3, 52-255     // Coordenada x final (67 - 15)
    mov x4, 48        // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 53-255     // Coordenada x inicial (68 - 15)
    mov x2, 48        // Coordenada y inicial
    mov x3, 53-255     // Coordenada x final (68 - 15)
    mov x4, 47        // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 54-255     // (69 - 15)
    mov x2, 47
    ldr x10, gris
    bl draw_pixel

    mov x1, 54-255     // Coordenada x inicial (69 - 15)
    mov x2, 46        // Coordenada y inicial
    mov x3, 56-255     // Coordenada x final (71 - 15)
    mov x4, 46        // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 56-255     // Coordenada x inicial (71 - 15)
    mov x2, 45        // Coordenada y inicial
    mov x3, 58-255     // Coordenada x final (73 - 15)
    mov x4, 45        // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 58-255     // (73 - 15)
    mov x2, 44
    ldr x10, gris
    bl draw_pixel

    mov x1, 59-255     // Coordenada x inicial (74 - 15)
    mov x2, 44        // Coordenada y inicial
    mov x3, 59-255     // Coordenada x final (74 - 15)
    mov x4, 42        // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 60-255     // Coordenada x inicial (75 - 15)
    mov x2, 43        // Coordenada y inicial
    mov x3, 62-255     // Coordenada x final (77 - 15)
    mov x4, 43        // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 62-255     // Coordenada x inicial (77 - 15)
    mov x2, 44        // Coordenada y inicial
    mov x3, 64-255     // Coordenada x final (79 - 15)
    mov x4, 44        // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 64-255     // Coordenada x inicial (79 - 15)
    mov x2, 45        // Coordenada y inicial
    mov x3, 68-255     // Coordenada x final (83 - 15)
    mov x4, 45        // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 66-255     // (81 - 15)
    mov x2, 46
    ldr x10, gris
    bl draw_pixel

    mov x1, 66-255     // (81 - 15)
    mov x2, 47
    ldr x10, gris
    bl draw_pixel

    mov x1, 67-255     // (82 - 15)
    mov x2, 47
    ldr x10, gris
    bl draw_pixel

    mov x1, 67-255     // (82 - 15)
    mov x2, 48
    ldr x10, gris
    bl draw_pixel

    mov x1, 68-255     // (83 - 15)
    mov x2, 48
    ldr x10, gris
    bl draw_pixel

    mov x1, 68-255     // (83 - 15)
    mov x2, 49
    ldr x10, gris
    bl draw_pixel

    mov x1, 69-255     // (84 - 15)
    mov x2, 49
    ldr x10, gris
    bl draw_pixel

    mov x1, 69-255     // (84 - 15)
    mov x2, 50
    ldr x10, gris
    bl draw_pixel

    mov x1, 70-255     // (85 - 15)
    mov x2, 50
    ldr x10, gris
    bl draw_pixel

    mov x1, 71-255    // Coordenada x inicial (86 - 15)
    mov x2, 51        // Coordenada y inicial
    mov x3, 74-255    // Coordenada x final (89 - 15)
    mov x4, 51        // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 75-255    // Coordenada x inicial (90 - 15)
    mov x2, 52        // Coordenada y inicial
    mov x3, 77-255    // Coordenada x final (92 - 15)
    mov x4, 52        // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 77-255    // (92 - 15)
    mov x2, 53
    ldr x10, gris
    bl draw_pixel

    mov x1, 78-255    // Coordenada x inicial (93 - 15)
    mov x2, 53        // Coordenada y inicial
    mov x3, 78-255    // Coordenada x final (93 - 15)
    mov x4, 55        // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 79-255    // (94 - 15)
    mov x2, 55
    ldr x10, gris
    bl draw_pixel

    mov x1, 79-255    // (94 - 15)
    mov x2, 56
    ldr x10, gris
    bl draw_pixel

    mov x1, 80-255    // (95 - 15)
    mov x2, 56
    ldr x10, gris
    bl draw_pixel

    mov x1, 80-255    // (95 - 15)
    mov x2, 57
    ldr x10, gris
    bl draw_pixel

    mov x1, 81-255    // (96 - 15)
    mov x2, 57
    ldr x10, gris
    bl draw_pixel

    mov x1, 82-255    // (97 - 15)
    mov x2, 58
    ldr x10, gris
    bl draw_pixel

    mov x1, 83-255    // (98 - 15)
    mov x2, 59
    ldr x10, gris
    bl draw_pixel

    mov x1, 83-255    // (98 - 15)
    mov X2, 60 
    ldr x10, gris
    bl draw_pixel

    // ------------NUBE2-----------------
    // Base de la nube 
    // Llamada a draw_line_straight para dibujar base de la nube

    mov x1, 273-255     // Coordenada x inicial (288 - 15)
    mov x2, 30         // Coordenada y inicial
    mov x3, 316-255     // Coordenada x final (331 - 15)
    mov x4, 30         // Coordenada y final
    ldr x10, gris
    bl draw_line_straight

    mov x1, 268-255     // (283 - 15)
    mov x2, 28         // Coordenada y inicial (30 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 269-255     // (284 - 15)
    mov x2, 27         // Coordenada y inicial (27 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 269-255     // (284 - 15)
    mov x2, 26         // Coordenada y inicial (26 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 272-255     // (287 - 15)
    mov x2, 25         // Coordenada y inicial (25 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 272-255     // (287 - 15)
    mov x2, 24         // Coordenada y inicial (24 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 273-255     // (288 - 15)
    mov x2, 24         // Coordenada y inicial (24 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 273-255     // (288 - 15)
    mov x2, 23         // Coordenada y inicial (23 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 274-255     // Coordenada x inicial (289 - 15)
    mov x2, 22         // Coordenada y inicial
    mov x3, 274-255     // Coordenada x final (289 - 15)
    mov x4, 25         // Coordenada y final
    ldr x10, gris
    bl draw_line_straight

    mov x1, 282-255     // Coordenada x inicial (297 - 15)
    mov x2, 21         // Coordenada y inicial
    mov x3, 284-255     // Coordenada x final (299 - 15)
    mov x4, 21         // Coordenada y final
    ldr x10, gris
    bl draw_line_straight

    mov x1, 284-255     // (299 - 15)
    mov x2, 20         // Coordenada y inicial (20 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 285-255     // Coordenada x inicial (300 - 15)
    mov x2, 20         // Coordenada y inicial
    mov x3, 285-255     // Coordenada x final (300 - 15)
    mov x4, 18         // Coordenada y final
    ldr x10, gris
    bl draw_line_straight

    mov x1, 286-255     // (301 - 15)
    mov x2, 18         // Coordenada y inicial (18 - 31)
    mov x3, 286-255     // (301 - 15)
    mov x4, 17         // Coordenada y final (17 - 31)
    ldr x10, gris
    bl draw_line_straight

    mov x1, 287-255     // (302 - 15)
    mov x2, 17         // Coordenada y inicial (17 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 286-255     // (301 - 15)
    mov x2, 15         // Coordenada y inicial (15 - 31)
    mov x3, 286-255     // (301 - 15)
    mov x4, 15         // Coordenada y final (15 - 31)
    ldr x10, gris
    bl draw_line_straight

    mov x1, 289-255     // (304 - 15)
    mov x2, 14         // Coordenada y inicial (14 - 31)
    mov x3, 291-255     // (306 - 15)
    mov x4, 14         // Coordenada y final (14 - 31)
    ldr x10, gris
    bl draw_line_straight

    mov x1, 291-255     // (306 - 15)
    mov x2, 13         // Coordenada y inicial (13 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 292-255     // (307 - 15)
    mov x2, 13         // Coordenada y inicial (13 - 31)
    mov x3, 292-255     // (307 - 15)
    mov x4, 11         // Coordenada y final (11 - 31)
    ldr x10, gris
    bl draw_line_straight

    mov x1, 293-255     // (308 - 15)
    mov x2, 12         // Coordenada y inicial (12 - 31)
    mov x3, 295-255     // (310 - 15)
    mov x4, 12         // Coordenada y final (12 - 31)
    ldr x10, gris
    bl draw_line_straight

    mov x1, 295-255     // (310 - 15)
    mov x2, 13         // Coordenada y inicial (13 - 31)
    mov x3, 298-255     // (313 - 15)
    mov x4, 13         // Coordenada y final (13 - 31)
    ldr x10, gris
    bl draw_line_straight

    mov x1, 297-255     // (312 - 15)
    mov x2, 14         // Coordenada y inicial (14 - 31)
    mov x3, 300-255     // (315 - 15)
    mov x4, 14         // Coordenada y final (14 - 31)
    ldr x10, gris
    bl draw_line_straight

    mov x1, 300-255     // (315 - 15)
    mov x2, 15         // Coordenada y inicial (15 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 300-255     // (315 - 15)
    mov x2, 16         // Coordenada y inicial (16 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 301-255     // (316 - 15)
    mov x2, 16         // Coordenada y inicial (16 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 301-255     // (316 - 15)
    mov x2, 17         // Coordenada y inicial (17 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 302-255     // (317 - 15)
    mov x2, 17         // Coordenada y inicial (17 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 302-255     // (317 - 15)
    mov x2, 18         // Coordenada y inicial (18 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 303-255     // (318 - 15)
    mov x2, 18         // Coordenada y inicial (18 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 303-255     // (318 - 15)
    mov x2, 19         // Coordenada y inicial (19 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 304-255     // (319 - 15)
    mov x2, 19         // Coordenada y inicial (19 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 305-255     // (320 - 15)
    mov x2, 20         // Coordenada y inicial (20 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 306-255     // (321 - 15)
    mov x2, 21         // Coordenada y inicial (21 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 307-255     // (322 - 15)
    mov x2, 21         // Coordenada y inicial (21 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 307-255     // (322 - 15)
    mov x2, 22         // Coordenada y inicial (22 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 308-255     // (323 - 15)
    mov x2, 22         // Coordenada y inicial (22 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 309-255     // (324 - 15)
    mov x2, 23         // Coordenada y inicial (23 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 310-255     // (325 - 15)
    mov x2, 24         // Coordenada y inicial (24 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 311-255     // (326 - 15)
    mov x2, 25         // Coordenada y inicial (25 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 312-255     // (327 - 15)
    mov x2, 25         // Coordenada y inicial (25 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 312-255     // (327 - 15)
    mov x2, 26         // Coordenada y inicial (26 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 313-255     // (328 - 15)
    mov x2, 26         // Coordenada y inicial (26 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 313-255     // (328 - 15)
    mov x2, 27         // Coordenada y inicial (27 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 314-255     // (329 - 15)
    mov x2, 27         // Coordenada y inicial (27 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 315-255     // (330 - 15)
    mov x2, 28         // Coordenada y inicial (28 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 315-255     // (330 - 15)
    mov x2, 29         // Coordenada y inicial (29 - 31)
    ldr x10, gris
    bl draw_pixel

    //----------NUBE3-----------------
    // Base de la nube 
    // Llamada a draw_line_straight para dibujar base de la nube

    mov x1, 495-255     // Coordenada x inicial (525 )
    mov x2, 91             // Coordenada y inicial
    mov x3, 538-255     // Coordenada x final (568 )
    mov x4, 91             // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    // Parte de arriba de la nube

    mov x1, 490-255     // Coordenada x inicial (520 )
    mov x2, 89             // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 491-255     // Coordenada x inicial (521 )
    mov x2, 88             // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 491-255     // Coordenada x inicial (521 )
    mov x2, 87             // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 494-255     // Coordenada x inicial (524 )
    mov x2, 86             // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 494-255     // Coordenada x inicial (524 )
    mov x2, 85             // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 495-255     // Coordenada x inicial (525 )
    mov x2, 85             // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 495-255     // Coordenada x inicial (525 )
    mov x2, 84             // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 496-255     // Coordenada x inicial (526 )
    mov x2, 83             // Coordenada y inicial
    mov x3, 504-255     // Coordenada x final (534 )
    mov x4, 86             // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 504-255     // Coordenada x inicial (534 )
    mov x2, 82             // Coordenada y inicial
    mov x3, 506-255     // Coordenada x final (536 )
    mov x4, 82             // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 506-255     // Coordenada x inicial (536 )
    mov x2, 81             // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 507-255     // Coordenada x inicial (537 )
    mov x2, 81             // Coordenada y inicial
    mov x3, 507-255     // Coordenada x final (537 )
    mov x4, 79             // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 508-255     // Coordenada x inicial (538 )
    mov x2, 79             // Coordenada y inicial
    mov x3, 508-255     // Coordenada x final (538 )
    mov x4, 78             // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 509-255     // Coordenada x inicial (539 )
    mov x2, 78             // Coordenada y inicial
    mov x3, 509-255     // Coordenada x final (539 )
    mov x4, 77             // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 510-255     // Coordenada x inicial (540 )
    mov x2, 77             // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 510-255     // Coordenada x inicial (540 )
    mov x2, 76             // Coordenada y inicial
    mov x3, 512-255     // Coordenada x final (542 )
    mov x4, 76             // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 512-255     // Coordenada x inicial (542 )
    mov x2, 75             // Coordenada y inicial
    mov x3, 514-255     // Coordenada x final (544 )
    mov x4, 75             // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 514-255     // Coordenada x inicial (544 )
    mov x2, 74             // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 515-255     // Coordenada x inicial (545 )
    mov x2, 74             // Coordenada y inicial
    mov x3, 515-255     // Coordenada x final (545 )
    mov x4, 72             // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 516-255     // Coordenada x inicial (546 )
    mov x2, 73             // Coordenada y inicial
    mov x3, 518-255     // Coordenada x final (548 )
    mov x4, 73             // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 518-255     // Coordenada x inicial (548 )
    mov x2, 74             // Coordenada y inicial
    mov x3, 520-255     // Coordenada x final (550 )
    mov x4, 74             // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 520-255     // Coordenada x inicial (550 )
    mov x2, 75             // Coordenada y inicial
    mov x3, 522-255     // Coordenada x final (552 )
    mov x4, 75             // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 522-255     // Coordenada x inicial 
    mov x2, 76             // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 522-255     // Coordenada x inicial (552 )
    mov x2, 77             // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 523-255     // Coordenada x inicial (553 )
    mov x2, 77             // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 523-255     // Coordenada x inicial (553 )
    mov x2, 78             // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 524-255     // Coordenada x inicial (554 )
    mov x2, 78             // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 524-255     // Coordenada x inicial (554 )
    mov x2, 79             // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 525-255     // Coordenada x inicial (555 )
    mov x2, 79             // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 525-255     // Coordenada x inicial (555 )
    mov x2, 80             // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 526-255     // Coordenada x inicial (556 )
    mov x2, 80             // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 527-255     // Coordenada x inicial (557 )
    mov x2, 81             // Coordenada y inicial
    mov x3, 530-255     // Coordenada x final (560 )
    mov x4, 81             // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 531-255     // Coordenada x inicial (561 )
    mov x2, 82             // Coordenada y inicial
    mov x3, 533-255     // Coordenada x final (563 )
    mov x4, 82             // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 533-255     // Coordenada x inicial (563 )
    mov x2, 83             // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 534-255     // Coordenada x inicial (564 )
    mov x2, 83             // Coordenada y inicial
    mov x3, 534-255     // Coordenada x final (564 )
    mov x4, 85             // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 535-255     // Coordenada x inicial (565 )
    mov x2, 85             // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 535-255     // Coordenada x inicial (565 )
    mov x2, 86             // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 536-255     // Coordenada x inicial (566 )
    mov x2, 86             // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 536-255     // Coordenada x inicial (566 )
    mov x2, 87             // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 537-255     // Coordenada x inicial (567 )
    mov x2, 87             // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 538-255     // Coordenada x inicial (568 )
    mov x2, 88             // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 538-255     // Coordenada x inicial (568 )
    mov x2, 89             // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

 
    LDR X30, [SP, #32]
    LDR X4, [SP, #24]
    LDR X3, [SP, #16]
    LDR X2, [SP, #8]
    LDR X1, [SP]
    ADD SP, SP, #40

    ret

nubes17:
    SUB SP, SP, #40
    STR X1, [SP]
    STR X2, [SP, #8]
    STR X3, [SP, #16]
    STR X4, [SP, #24]
    STR X30, [SP, #32]

    //----------NUBE1-----------------
    // Base de la nube 
    // Llamada a draw_line_straight para dibujar base de la nube
    mov x1, 39-285    // Coordenada x inicial (54 - 15)
    mov x2, 61        // Coordenada y inicial
    mov x3, 82-285    // Coordenada x final (97 - 15)
    mov x4, 61        // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    // Parte de arriba de la nube
    mov x1, 34-285    // (49 - 15)
    mov x2, 59
    ldr x10, gris
    bl draw_pixel

    mov x1, 35-285    // (50 - 15)
    mov x2, 58
    ldr x10, gris
    bl draw_pixel

    mov x1, 35-285    // (50 - 15)
    mov x2, 57
    ldr x10, gris
    bl draw_pixel

    mov x1, 38-285    // (53 - 15)
    mov x2, 56
    ldr x10, gris
    bl draw_pixel

    mov x1, 38-285    // (53 - 15)
    mov x2, 55
    ldr x10, gris
    bl draw_pixel

    mov x1, 39-285    // (54 - 15)
    mov x2, 55
    ldr x10, gris
    bl draw_pixel

    mov x1, 39-285    // (54 - 15)
    mov x2, 54
    ldr x10, gris
    bl draw_pixel

    mov x1, 40-285    // Coordenada x inicial (55 - 15)
    mov x2, 53        // Coordenada y inicial
    mov x3, 48-285    // Coordenada x final (63 - 15)
    mov x4, 56        // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 48-285    // Coordenada x inicial (63 - 15)
    mov x2, 52        // Coordenada y inicial
    mov x3, 50-285    // Coordenada x final (65 - 15)
    mov x4, 52        // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 50-285    // (65 - 15)
    mov x2, 51
    ldr x10, gris
    bl draw_pixel

    mov x1, 51-285    // Coordenada x inicial (66 - 15)
    mov x2, 51        // Coordenada y inicial
    mov x3, 51-285    // Coordenada x final (66 - 15)
    mov x4, 49        // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 52-285    // Coordenada x inicial (67 - 15)
    mov x2, 49        // Coordenada y inicial
    mov x3, 52-285    // Coordenada x final (67 - 15)
    mov x4, 48        // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 53-285    // Coordenada x inicial (68 - 15)
    mov x2, 48        // Coordenada y inicial
    mov x3, 53-285    // Coordenada x final (68 - 15)
    mov x4, 47        // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 54-285    // (69 - 15)
    mov x2, 47
    ldr x10, gris
    bl draw_pixel

    mov x1, 54-285    // Coordenada x inicial (69 - 15)
    mov x2, 46        // Coordenada y inicial
    mov x3, 56-285    // Coordenada x final (71 - 15)
    mov x4, 46        // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 56-285    // Coordenada x inicial (71 - 15)
    mov x2, 45        // Coordenada y inicial
    mov x3, 58-285    // Coordenada x final (73 - 15)
    mov x4, 45        // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 58-285    // (73 - 15)
    mov x2, 44
    ldr x10, gris
    bl draw_pixel

    mov x1, 59-285    // Coordenada x inicial (74 - 15)
    mov x2, 44        // Coordenada y inicial
    mov x3, 59-285    // Coordenada x final (74 - 15)
    mov x4, 42        // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 60-285    // Coordenada x inicial (75 - 15)
    mov x2, 43        // Coordenada y inicial
    mov x3, 62-285    // Coordenada x final (77 - 15)
    mov x4, 43        // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 62-285    // Coordenada x inicial (77 - 15)
    mov x2, 44        // Coordenada y inicial
    mov x3, 64-285    // Coordenada x final (79 - 15)
    mov x4, 44        // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 64-285    // Coordenada x inicial (79 - 15)
    mov x2, 45        // Coordenada y inicial
    mov x3, 68-285    // Coordenada x final (83 - 15)
    mov x4, 45        // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 66-285    // (81 - 15)
    mov x2, 46
    ldr x10, gris
    bl draw_pixel

    mov x1, 66-285    // (81 - 15)
    mov x2, 47
    ldr x10, gris
    bl draw_pixel

    mov x1, 67-285    // (82 - 15)
    mov x2, 47
    ldr x10, gris
    bl draw_pixel

    mov x1, 67-285    // (82 - 15)
    mov x2, 48
    ldr x10, gris
    bl draw_pixel

    mov x1, 68-285    // (83 - 15)
    mov x2, 48
    ldr x10, gris
    bl draw_pixel

    mov x1, 68-285    // (83 - 15)
    mov x2, 49
    ldr x10, gris
    bl draw_pixel

    mov x1, 69-285    // (84 - 15)
    mov x2, 49
    ldr x10, gris
    bl draw_pixel

    mov x1, 69-285    // (84 - 15)
    mov x2, 50
    ldr x10, gris
    bl draw_pixel

    mov x1, 70-285    // (85 - 15)
    mov x2, 50
    ldr x10, gris
    bl draw_pixel

    mov x1, 71-285   // Coordenada x inicial (86 - 15)
    mov x2, 51        // Coordenada y inicial
    mov x3, 74-285   // Coordenada x final (89 - 15)
    mov x4, 51        // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 75-285   // Coordenada x inicial (90 - 15)
    mov x2, 52        // Coordenada y inicial
    mov x3, 77-285   // Coordenada x final (92 - 15)
    mov x4, 52        // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 77-285   // (92 - 15)
    mov x2, 53
    ldr x10, gris
    bl draw_pixel

    mov x1, 78-285   // Coordenada x inicial (93 - 15)
    mov x2, 53        // Coordenada y inicial
    mov x3, 78-285   // Coordenada x final (93 - 15)
    mov x4, 55        // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 79-285   // (94 - 15)
    mov x2, 55
    ldr x10, gris
    bl draw_pixel

    mov x1, 79-285   // (94 - 15)
    mov x2, 56
    ldr x10, gris
    bl draw_pixel

    mov x1, 80-285   // (95 - 15)
    mov x2, 56
    ldr x10, gris
    bl draw_pixel

    mov x1, 80-285   // (95 - 15)
    mov x2, 57
    ldr x10, gris
    bl draw_pixel

    mov x1, 81-285   // (96 - 15)
    mov x2, 57
    ldr x10, gris
    bl draw_pixel

    mov x1, 82-285   // (97 - 15)
    mov x2, 58
    ldr x10, gris
    bl draw_pixel

    mov x1, 83-285   // (98 - 15)
    mov x2, 59
    ldr x10, gris
    bl draw_pixel

    mov x1, 83-285   // (98 - 15)
    mov X2, 60 
    ldr x10, gris
    bl draw_pixel

    // ------------NUBE2-----------------
    // Base de la nube 
    // Llamada a draw_line_straight para dibujar base de la nube

    mov x1, 273-285    // Coordenada x inicial (288 - 15)
    mov x2, 30         // Coordenada y inicial
    mov x3, 316-285    // Coordenada x final (331 - 15)
    mov x4, 30         // Coordenada y final
    ldr x10, gris
    bl draw_line_straight

    mov x1, 268-285    // (283 - 15)
    mov x2, 28         // Coordenada y inicial (30 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 269-285    // (284 - 15)
    mov x2, 27         // Coordenada y inicial (27 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 269-285    // (284 - 15)
    mov x2, 26         // Coordenada y inicial (26 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 272-285    // (287 - 15)
    mov x2, 25         // Coordenada y inicial (25 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 272-285    // (287 - 15)
    mov x2, 24         // Coordenada y inicial (24 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 273-285    // (288 - 15)
    mov x2, 24         // Coordenada y inicial (24 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 273-285    // (288 - 15)
    mov x2, 23         // Coordenada y inicial (23 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 274-285    // Coordenada x inicial (289 - 15)
    mov x2, 22         // Coordenada y inicial
    mov x3, 274-285    // Coordenada x final (289 - 15)
    mov x4, 25         // Coordenada y final
    ldr x10, gris
    bl draw_line_straight

    mov x1, 282-285    // Coordenada x inicial (297 - 15)
    mov x2, 21         // Coordenada y inicial
    mov x3, 284-285    // Coordenada x final (299 - 15)
    mov x4, 21         // Coordenada y final
    ldr x10, gris
    bl draw_line_straight

    mov x1, 284-285    // (299 - 15)
    mov x2, 20         // Coordenada y inicial (20 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 285-285    // Coordenada x inicial (300 - 15)
    mov x2, 20         // Coordenada y inicial
    mov x3, 285-285    // Coordenada x final (300 - 15)
    mov x4, 18         // Coordenada y final
    ldr x10, gris
    bl draw_line_straight

    mov x1, 286-285    // (301 - 15)
    mov x2, 18         // Coordenada y inicial (18 - 31)
    mov x3, 286-285    // (301 - 15)
    mov x4, 17         // Coordenada y final (17 - 31)
    ldr x10, gris
    bl draw_line_straight

    mov x1, 287-285    // (302 - 15)
    mov x2, 17         // Coordenada y inicial (17 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 286-285    // (301 - 15)
    mov x2, 15         // Coordenada y inicial (15 - 31)
    mov x3, 286-285    // (301 - 15)
    mov x4, 15         // Coordenada y final (15 - 31)
    ldr x10, gris
    bl draw_line_straight

    mov x1, 289-285    // (304 - 15)
    mov x2, 14         // Coordenada y inicial (14 - 31)
    mov x3, 291-285    // (306 - 15)
    mov x4, 14         // Coordenada y final (14 - 31)
    ldr x10, gris
    bl draw_line_straight

    mov x1, 291-285    // (306 - 15)
    mov x2, 13         // Coordenada y inicial (13 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 292-285    // (307 - 15)
    mov x2, 13         // Coordenada y inicial (13 - 31)
    mov x3, 292-285    // (307 - 15)
    mov x4, 11         // Coordenada y final (11 - 31)
    ldr x10, gris
    bl draw_line_straight

    mov x1, 293-285    // (308 - 15)
    mov x2, 12         // Coordenada y inicial (12 - 31)
    mov x3, 295-285    // (310 - 15)
    mov x4, 12         // Coordenada y final (12 - 31)
    ldr x10, gris
    bl draw_line_straight

    mov x1, 295-285    // (310 - 15)
    mov x2, 13         // Coordenada y inicial (13 - 31)
    mov x3, 298-285    // (313 - 15)
    mov x4, 13         // Coordenada y final (13 - 31)
    ldr x10, gris
    bl draw_line_straight

    mov x1, 297-285    // (312 - 15)
    mov x2, 14         // Coordenada y inicial (14 - 31)
    mov x3, 300-285    // (315 - 15)
    mov x4, 14         // Coordenada y final (14 - 31)
    ldr x10, gris
    bl draw_line_straight

    mov x1, 300-285    // (315 - 15)
    mov x2, 15         // Coordenada y inicial (15 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 300-285    // (315 - 15)
    mov x2, 16         // Coordenada y inicial (16 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 301-285    // (316 - 15)
    mov x2, 16         // Coordenada y inicial (16 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 301-285    // (316 - 15)
    mov x2, 17         // Coordenada y inicial (17 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 302-285    // (317 - 15)
    mov x2, 17         // Coordenada y inicial (17 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 302-285    // (317 - 15)
    mov x2, 18         // Coordenada y inicial (18 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 303-285    // (318 - 15)
    mov x2, 18         // Coordenada y inicial (18 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 303-285    // (318 - 15)
    mov x2, 19         // Coordenada y inicial (19 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 304-285    // (319 - 15)
    mov x2, 19         // Coordenada y inicial (19 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 305-285    // (320 - 15)
    mov x2, 20         // Coordenada y inicial (20 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 306-285    // (321 - 15)
    mov x2, 21         // Coordenada y inicial (21 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 307-285    // (322 - 15)
    mov x2, 21         // Coordenada y inicial (21 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 307-285    // (322 - 15)
    mov x2, 22         // Coordenada y inicial (22 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 308-285    // (323 - 15)
    mov x2, 22         // Coordenada y inicial (22 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 309-285    // (324 - 15)
    mov x2, 23         // Coordenada y inicial (23 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 310-285    // (325 - 15)
    mov x2, 24         // Coordenada y inicial (24 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 311-285    // (326 - 15)
    mov x2, 25         // Coordenada y inicial (25 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 312-285    // (327 - 15)
    mov x2, 25         // Coordenada y inicial (25 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 312-285    // (327 - 15)
    mov x2, 26         // Coordenada y inicial (26 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 313-285    // (328 - 15)
    mov x2, 26         // Coordenada y inicial (26 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 313-285    // (328 - 15)
    mov x2, 27         // Coordenada y inicial (27 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 314-285    // (329 - 15)
    mov x2, 27         // Coordenada y inicial (27 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 315-285    // (330 - 15)
    mov x2, 28         // Coordenada y inicial (28 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 315-285    // (330 - 15)
    mov x2, 29         // Coordenada y inicial (29 - 31)
    ldr x10, gris
    bl draw_pixel

    //----------NUBE3-----------------
    // Base de la nube 
    // Llamada a draw_line_straight para dibujar base de la nube

    mov x1, 495-285    // Coordenada x inicial (525 )
    mov x2, 91             // Coordenada y inicial
    mov x3, 538-285    // Coordenada x final (568 )
    mov x4, 91             // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    // Parte de arriba de la nube

    mov x1, 490-285    // Coordenada x inicial (520 )
    mov x2, 89             // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 491-285    // Coordenada x inicial (521 )
    mov x2, 88             // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 491-285    // Coordenada x inicial (521 )
    mov x2, 87             // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 494-285    // Coordenada x inicial (524 )
    mov x2, 86             // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 494-285    // Coordenada x inicial (524 )
    mov x2, 85             // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 495-285    // Coordenada x inicial (525 )
    mov x2, 85             // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 495-285    // Coordenada x inicial (525 )
    mov x2, 84             // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 496-285    // Coordenada x inicial (526 )
    mov x2, 83             // Coordenada y inicial
    mov x3, 504-285    // Coordenada x final (534 )
    mov x4, 86             // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 504-285    // Coordenada x inicial (534 )
    mov x2, 82             // Coordenada y inicial
    mov x3, 506-285    // Coordenada x final (536 )
    mov x4, 82             // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 506-285    // Coordenada x inicial (536 )
    mov x2, 81             // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 507-285    // Coordenada x inicial (537 )
    mov x2, 81             // Coordenada y inicial
    mov x3, 507-285    // Coordenada x final (537 )
    mov x4, 79             // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 508-285    // Coordenada x inicial (538 )
    mov x2, 79             // Coordenada y inicial
    mov x3, 508-285    // Coordenada x final (538 )
    mov x4, 78             // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 509-285    // Coordenada x inicial (539 )
    mov x2, 78             // Coordenada y inicial
    mov x3, 509-285    // Coordenada x final (539 )
    mov x4, 77             // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 510-285    // Coordenada x inicial (540 )
    mov x2, 77             // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 510-285    // Coordenada x inicial (540 )
    mov x2, 76             // Coordenada y inicial
    mov x3, 512-285    // Coordenada x final (542 )
    mov x4, 76             // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 512-285    // Coordenada x inicial (542 )
    mov x2, 75             // Coordenada y inicial
    mov x3, 514-285    // Coordenada x final (544 )
    mov x4, 75             // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 514-285    // Coordenada x inicial (544 )
    mov x2, 74             // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 515-285    // Coordenada x inicial (545 )
    mov x2, 74             // Coordenada y inicial
    mov x3, 515-285    // Coordenada x final (545 )
    mov x4, 72             // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 516-285    // Coordenada x inicial (546 )
    mov x2, 73             // Coordenada y inicial
    mov x3, 518-285    // Coordenada x final (548 )
    mov x4, 73             // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 518-285    // Coordenada x inicial (548 )
    mov x2, 74             // Coordenada y inicial
    mov x3, 520-285    // Coordenada x final (550 )
    mov x4, 74             // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 520-285    // Coordenada x inicial (550 )
    mov x2, 75             // Coordenada y inicial
    mov x3, 522-285    // Coordenada x final (552 )
    mov x4, 75             // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 522-285    // Coordenada x inicial 
    mov x2, 76             // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 522-285    // Coordenada x inicial (552 )
    mov x2, 77             // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 523-285    // Coordenada x inicial (553 )
    mov x2, 77             // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 523-285    // Coordenada x inicial (553 )
    mov x2, 78             // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 524-285    // Coordenada x inicial (554 )
    mov x2, 78             // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 524-285    // Coordenada x inicial (554 )
    mov x2, 79             // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 525-285    // Coordenada x inicial (555 )
    mov x2, 79             // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 525-285    // Coordenada x inicial (555 )
    mov x2, 80             // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 526-285    // Coordenada x inicial (556 )
    mov x2, 80             // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 527-285    // Coordenada x inicial (557 )
    mov x2, 81             // Coordenada y inicial
    mov x3, 530-285    // Coordenada x final (560 )
    mov x4, 81             // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 531-285    // Coordenada x inicial (561 )
    mov x2, 82             // Coordenada y inicial
    mov x3, 533-285    // Coordenada x final (563 )
    mov x4, 82             // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 533-285    // Coordenada x inicial (563 )
    mov x2, 83             // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 534-285    // Coordenada x inicial (564 )
    mov x2, 83             // Coordenada y inicial
    mov x3, 534-285    // Coordenada x final (564 )
    mov x4, 85             // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 535-285    // Coordenada x inicial (565 )
    mov x2, 85             // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 535-285    // Coordenada x inicial (565 )
    mov x2, 86             // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 536-285    // Coordenada x inicial (566 )
    mov x2, 86             // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 536-285    // Coordenada x inicial (566 )
    mov x2, 87             // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 537-285    // Coordenada x inicial (567 )
    mov x2, 87             // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 538-285    // Coordenada x inicial (568 )
    mov x2, 88             // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 538-285    // Coordenada x inicial (568 )
    mov x2, 89             // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

 
    LDR X30, [SP, #32]
    LDR X4, [SP, #24]
    LDR X3, [SP, #16]
    LDR X2, [SP, #8]
    LDR X1, [SP]
    ADD SP, SP, #40

    ret

nubes18:
    SUB SP, SP, #40
    STR X1, [SP]
    STR X2, [SP, #8]
    STR X3, [SP, #16]
    STR X4, [SP, #24]
    STR X30, [SP, #32]

    //----------NUBE1-----------------
    // Base de la nube 
    // Llamada a draw_line_straight para dibujar base de la nube
    mov x1, 39-315    // Coordenada x inicial (54 - 15)
    mov x2, 61        // Coordenada y inicial
    mov x3, 82-315    // Coordenada x final (97 - 15)
    mov x4, 61        // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    // Parte de arriba de la nube
    mov x1, 34-315    // (49 - 15)
    mov x2, 59
    ldr x10, gris
    bl draw_pixel

    mov x1, 35-315    // (50 - 15)
    mov x2, 58
    ldr x10, gris
    bl draw_pixel

    mov x1, 35-315    // (50 - 15)
    mov x2, 57
    ldr x10, gris
    bl draw_pixel

    mov x1, 38-315    // (53 - 15)
    mov x2, 56
    ldr x10, gris
    bl draw_pixel

    mov x1, 38-315    // (53 - 15)
    mov x2, 55
    ldr x10, gris
    bl draw_pixel

    mov x1, 39-315    // (54 - 15)
    mov x2, 55
    ldr x10, gris
    bl draw_pixel

    mov x1, 39-315    // (54 - 15)
    mov x2, 54
    ldr x10, gris
    bl draw_pixel

    mov x1, 40-315    // Coordenada x inicial (55 - 15)
    mov x2, 53        // Coordenada y inicial
    mov x3, 48-315    // Coordenada x final (63 - 15)
    mov x4, 56        // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 48-315    // Coordenada x inicial (63 - 15)
    mov x2, 52        // Coordenada y inicial
    mov x3, 50-315    // Coordenada x final (65 - 15)
    mov x4, 52        // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 50-315    // (65 - 15)
    mov x2, 51
    ldr x10, gris
    bl draw_pixel

    mov x1, 51-315    // Coordenada x inicial (66 - 15)
    mov x2, 51        // Coordenada y inicial
    mov x3, 51-315    // Coordenada x final (66 - 15)
    mov x4, 49        // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 52-315    // Coordenada x inicial (67 - 15)
    mov x2, 49        // Coordenada y inicial
    mov x3, 52-315    // Coordenada x final (67 - 15)
    mov x4, 48        // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 53-315    // Coordenada x inicial (68 - 15)
    mov x2, 48        // Coordenada y inicial
    mov x3, 53-315    // Coordenada x final (68 - 15)
    mov x4, 47        // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 54-315    // (69 - 15)
    mov x2, 47
    ldr x10, gris
    bl draw_pixel

    mov x1, 54-315    // Coordenada x inicial (69 - 15)
    mov x2, 46        // Coordenada y inicial
    mov x3, 56-315    // Coordenada x final (71 - 15)
    mov x4, 46        // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 56-315    // Coordenada x inicial (71 - 15)
    mov x2, 45        // Coordenada y inicial
    mov x3, 58-315    // Coordenada x final (73 - 15)
    mov x4, 45        // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 58-315    // (73 - 15)
    mov x2, 44
    ldr x10, gris
    bl draw_pixel

    mov x1, 59-315    // Coordenada x inicial (74 - 15)
    mov x2, 44        // Coordenada y inicial
    mov x3, 59-315    // Coordenada x final (74 - 15)
    mov x4, 42        // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 60-315    // Coordenada x inicial (75 - 15)
    mov x2, 43        // Coordenada y inicial
    mov x3, 62-315    // Coordenada x final (77 - 15)
    mov x4, 43        // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 62-315    // Coordenada x inicial (77 - 15)
    mov x2, 44        // Coordenada y inicial
    mov x3, 64-315    // Coordenada x final (79 - 15)
    mov x4, 44        // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 64-315    // Coordenada x inicial (79 - 15)
    mov x2, 45        // Coordenada y inicial
    mov x3, 68-315    // Coordenada x final (83 - 15)
    mov x4, 45        // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 66-315    // (81 - 15)
    mov x2, 46
    ldr x10, gris
    bl draw_pixel

    mov x1, 66-315    // (81 - 15)
    mov x2, 47
    ldr x10, gris
    bl draw_pixel

    mov x1, 67-315    // (82 - 15)
    mov x2, 47
    ldr x10, gris
    bl draw_pixel

    mov x1, 67-315    // (82 - 15)
    mov x2, 48
    ldr x10, gris
    bl draw_pixel

    mov x1, 68-315    // (83 - 15)
    mov x2, 48
    ldr x10, gris
    bl draw_pixel

    mov x1, 68-315    // (83 - 15)
    mov x2, 49
    ldr x10, gris
    bl draw_pixel

    mov x1, 69-315    // (84 - 15)
    mov x2, 49
    ldr x10, gris
    bl draw_pixel

    mov x1, 69-315    // (84 - 15)
    mov x2, 50
    ldr x10, gris
    bl draw_pixel

    mov x1, 70-315    // (85 - 15)
    mov x2, 50
    ldr x10, gris
    bl draw_pixel

    mov x1, 71-315   // Coordenada x inicial (86 - 15)
    mov x2, 51        // Coordenada y inicial
    mov x3, 74-315   // Coordenada x final (89 - 15)
    mov x4, 51        // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 75-315   // Coordenada x inicial (90 - 15)
    mov x2, 52        // Coordenada y inicial
    mov x3, 77-315   // Coordenada x final (92 - 15)
    mov x4, 52        // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 77-315   // (92 - 15)
    mov x2, 53
    ldr x10, gris
    bl draw_pixel

    mov x1, 78-315   // Coordenada x inicial (93 - 15)
    mov x2, 53        // Coordenada y inicial
    mov x3, 78-315   // Coordenada x final (93 - 15)
    mov x4, 55        // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 79-315   // (94 - 15)
    mov x2, 55
    ldr x10, gris
    bl draw_pixel

    mov x1, 79-315   // (94 - 15)
    mov x2, 56
    ldr x10, gris
    bl draw_pixel

    mov x1, 80-315   // (95 - 15)
    mov x2, 56
    ldr x10, gris
    bl draw_pixel

    mov x1, 80-315   // (95 - 15)
    mov x2, 57
    ldr x10, gris
    bl draw_pixel

    mov x1, 81-315   // (96 - 15)
    mov x2, 57
    ldr x10, gris
    bl draw_pixel

    mov x1, 82-315   // (97 - 15)
    mov x2, 58
    ldr x10, gris
    bl draw_pixel

    mov x1, 83-315   // (98 - 15)
    mov x2, 59
    ldr x10, gris
    bl draw_pixel

    mov x1, 83-315   // (98 - 15)
    mov X2, 60 
    ldr x10, gris
    bl draw_pixel

    // ------------NUBE2-----------------
    // Base de la nube 
    // Llamada a draw_line_straight para dibujar base de la nube

    mov x1, 273-315    // Coordenada x inicial (288 - 15)
    mov x2, 30         // Coordenada y inicial
    mov x3, 316-315    // Coordenada x final (331 - 15)
    mov x4, 30         // Coordenada y final
    ldr x10, gris
    bl draw_line_straight

    mov x1, 268-315    // (283 - 15)
    mov x2, 28         // Coordenada y inicial (30 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 269-315    // (284 - 15)
    mov x2, 27         // Coordenada y inicial (27 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 269-315    // (284 - 15)
    mov x2, 26         // Coordenada y inicial (26 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 272-315    // (287 - 15)
    mov x2, 25         // Coordenada y inicial (25 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 272-315    // (287 - 15)
    mov x2, 24         // Coordenada y inicial (24 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 273-315    // (288 - 15)
    mov x2, 24         // Coordenada y inicial (24 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 273-315    // (288 - 15)
    mov x2, 23         // Coordenada y inicial (23 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 274-315    // Coordenada x inicial (289 - 15)
    mov x2, 22         // Coordenada y inicial
    mov x3, 274-315    // Coordenada x final (289 - 15)
    mov x4, 25         // Coordenada y final
    ldr x10, gris
    bl draw_line_straight

    mov x1, 282-315    // Coordenada x inicial (297 - 15)
    mov x2, 21         // Coordenada y inicial
    mov x3, 284-315    // Coordenada x final (299 - 15)
    mov x4, 21         // Coordenada y final
    ldr x10, gris
    bl draw_line_straight

    mov x1, 284-315    // (299 - 15)
    mov x2, 20         // Coordenada y inicial (20 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 285-315    // Coordenada x inicial (300 - 15)
    mov x2, 20         // Coordenada y inicial
    mov x3, 285-315    // Coordenada x final (300 - 15)
    mov x4, 18         // Coordenada y final
    ldr x10, gris
    bl draw_line_straight

    mov x1, 286-315    // (301 - 15)
    mov x2, 18         // Coordenada y inicial (18 - 31)
    mov x3, 286-315    // (301 - 15)
    mov x4, 17         // Coordenada y final (17 - 31)
    ldr x10, gris
    bl draw_line_straight

    mov x1, 287-315    // (302 - 15)
    mov x2, 17         // Coordenada y inicial (17 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 286-315    // (301 - 15)
    mov x2, 15         // Coordenada y inicial (15 - 31)
    mov x3, 286-315    // (301 - 15)
    mov x4, 15         // Coordenada y final (15 - 31)
    ldr x10, gris
    bl draw_line_straight

    mov x1, 289-315    // (304 - 15)
    mov x2, 14         // Coordenada y inicial (14 - 31)
    mov x3, 291-315    // (306 - 15)
    mov x4, 14         // Coordenada y final (14 - 31)
    ldr x10, gris
    bl draw_line_straight

    mov x1, 291-315    // (306 - 15)
    mov x2, 13         // Coordenada y inicial (13 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 292-315    // (307 - 15)
    mov x2, 13         // Coordenada y inicial (13 - 31)
    mov x3, 292-315    // (307 - 15)
    mov x4, 11         // Coordenada y final (11 - 31)
    ldr x10, gris
    bl draw_line_straight

    mov x1, 293-315    // (308 - 15)
    mov x2, 12         // Coordenada y inicial (12 - 31)
    mov x3, 295-315    // (310 - 15)
    mov x4, 12         // Coordenada y final (12 - 31)
    ldr x10, gris
    bl draw_line_straight

    mov x1, 295-315    // (310 - 15)
    mov x2, 13         // Coordenada y inicial (13 - 31)
    mov x3, 298-315    // (313 - 15)
    mov x4, 13         // Coordenada y final (13 - 31)
    ldr x10, gris
    bl draw_line_straight

    mov x1, 297-315    // (312 - 15)
    mov x2, 14         // Coordenada y inicial (14 - 31)
    mov x3, 300-315    // (315 - 15)
    mov x4, 14         // Coordenada y final (14 - 31)
    ldr x10, gris
    bl draw_line_straight

    mov x1, 300-315    // (315 - 15)
    mov x2, 15         // Coordenada y inicial (15 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 300-315    // (315 - 15)
    mov x2, 16         // Coordenada y inicial (16 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 301-315    // (316 - 15)
    mov x2, 16         // Coordenada y inicial (16 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 301-315    // (316 - 15)
    mov x2, 17         // Coordenada y inicial (17 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 302-315    // (317 - 15)
    mov x2, 17         // Coordenada y inicial (17 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 302-315    // (317 - 15)
    mov x2, 18         // Coordenada y inicial (18 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 303-315    // (318 - 15)
    mov x2, 18         // Coordenada y inicial (18 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 303-315    // (318 - 15)
    mov x2, 19         // Coordenada y inicial (19 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 304-315    // (319 - 15)
    mov x2, 19         // Coordenada y inicial (19 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 305-315    // (320 - 15)
    mov x2, 20         // Coordenada y inicial (20 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 306-315    // (321 - 15)
    mov x2, 21         // Coordenada y inicial (21 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 307-315    // (322 - 15)
    mov x2, 21         // Coordenada y inicial (21 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 307-315    // (322 - 15)
    mov x2, 22         // Coordenada y inicial (22 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 308-315    // (323 - 15)
    mov x2, 22         // Coordenada y inicial (22 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 309-315    // (324 - 15)
    mov x2, 23         // Coordenada y inicial (23 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 310-315    // (325 - 15)
    mov x2, 24         // Coordenada y inicial (24 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 311-315    // (326 - 15)
    mov x2, 25         // Coordenada y inicial (25 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 312-315    // (327 - 15)
    mov x2, 25         // Coordenada y inicial (25 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 312-315    // (327 - 15)
    mov x2, 26         // Coordenada y inicial (26 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 313-315    // (328 - 15)
    mov x2, 26         // Coordenada y inicial (26 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 313-315    // (328 - 15)
    mov x2, 27         // Coordenada y inicial (27 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 314-315    // (329 - 15)
    mov x2, 27         // Coordenada y inicial (27 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 315-315    // (330 - 15)
    mov x2, 28         // Coordenada y inicial (28 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 315-315    // (330 - 15)
    mov x2, 29         // Coordenada y inicial (29 - 31)
    ldr x10, gris
    bl draw_pixel

    //----------NUBE3-----------------
    // Base de la nube 
    // Llamada a draw_line_straight para dibujar base de la nube

    mov x1, 495-315    // Coordenada x inicial (525 )
    mov x2, 91             // Coordenada y inicial
    mov x3, 538-315    // Coordenada x final (568 )
    mov x4, 91             // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    // Parte de arriba de la nube

    mov x1, 490-315    // Coordenada x inicial (520 )
    mov x2, 89             // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 491-315    // Coordenada x inicial (521 )
    mov x2, 88             // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 491-315    // Coordenada x inicial (521 )
    mov x2, 87             // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 494-315    // Coordenada x inicial (524 )
    mov x2, 86             // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 494-315    // Coordenada x inicial (524 )
    mov x2, 85             // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 495-315    // Coordenada x inicial (525 )
    mov x2, 85             // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 495-315    // Coordenada x inicial (525 )
    mov x2, 84             // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 496-315    // Coordenada x inicial (526 )
    mov x2, 83             // Coordenada y inicial
    mov x3, 504-315    // Coordenada x final (534 )
    mov x4, 86             // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 504-315    // Coordenada x inicial (534 )
    mov x2, 82             // Coordenada y inicial
    mov x3, 506-315    // Coordenada x final (536 )
    mov x4, 82             // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 506-315    // Coordenada x inicial (536 )
    mov x2, 81             // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 507-315    // Coordenada x inicial (537 )
    mov x2, 81             // Coordenada y inicial
    mov x3, 507-315    // Coordenada x final (537 )
    mov x4, 79             // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 508-315    // Coordenada x inicial (538 )
    mov x2, 79             // Coordenada y inicial
    mov x3, 508-315    // Coordenada x final (538 )
    mov x4, 78             // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 509-315    // Coordenada x inicial (539 )
    mov x2, 78             // Coordenada y inicial
    mov x3, 509-315    // Coordenada x final (539 )
    mov x4, 77             // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 510-315    // Coordenada x inicial (540 )
    mov x2, 77             // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 510-315    // Coordenada x inicial (540 )
    mov x2, 76             // Coordenada y inicial
    mov x3, 512-315    // Coordenada x final (542 )
    mov x4, 76             // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 512-315    // Coordenada x inicial (542 )
    mov x2, 75             // Coordenada y inicial
    mov x3, 514-315    // Coordenada x final (544 )
    mov x4, 75             // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 514-315    // Coordenada x inicial (544 )
    mov x2, 74             // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 515-315    // Coordenada x inicial (545 )
    mov x2, 74             // Coordenada y inicial
    mov x3, 515-315    // Coordenada x final (545 )
    mov x4, 72             // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 516-315    // Coordenada x inicial (546 )
    mov x2, 73             // Coordenada y inicial
    mov x3, 518-315    // Coordenada x final (548 )
    mov x4, 73             // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 518-315    // Coordenada x inicial (548 )
    mov x2, 74             // Coordenada y inicial
    mov x3, 520-315    // Coordenada x final (550 )
    mov x4, 74             // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 520-315    // Coordenada x inicial (550 )
    mov x2, 75             // Coordenada y inicial
    mov x3, 522-315    // Coordenada x final (552 )
    mov x4, 75             // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 522-315    // Coordenada x inicial 
    mov x2, 76             // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 522-315    // Coordenada x inicial (552 )
    mov x2, 77             // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 523-315    // Coordenada x inicial (553 )
    mov x2, 77             // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 523-315    // Coordenada x inicial (553 )
    mov x2, 78             // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 524-315    // Coordenada x inicial (554 )
    mov x2, 78             // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 524-315    // Coordenada x inicial (554 )
    mov x2, 79             // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 525-315    // Coordenada x inicial (555 )
    mov x2, 79             // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 525-315    // Coordenada x inicial (555 )
    mov x2, 80             // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 526-315    // Coordenada x inicial (556 )
    mov x2, 80             // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 527-315    // Coordenada x inicial (557 )
    mov x2, 81             // Coordenada y inicial
    mov x3, 530-315    // Coordenada x final (560 )
    mov x4, 81             // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 531-315    // Coordenada x inicial (561 )
    mov x2, 82             // Coordenada y inicial
    mov x3, 533-315    // Coordenada x final (563 )
    mov x4, 82             // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 533-315    // Coordenada x inicial (563 )
    mov x2, 83             // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 534-315    // Coordenada x inicial (564 )
    mov x2, 83             // Coordenada y inicial
    mov x3, 534-315    // Coordenada x final (564 )
    mov x4, 85             // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 535-315    // Coordenada x inicial (565 )
    mov x2, 85             // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 535-315    // Coordenada x inicial (565 )
    mov x2, 86             // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 536-315    // Coordenada x inicial (566 )
    mov x2, 86             // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 536-315    // Coordenada x inicial (566 )
    mov x2, 87             // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 537-315    // Coordenada x inicial (567 )
    mov x2, 87             // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 538-315    // Coordenada x inicial (568 )
    mov x2, 88             // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 538-315    // Coordenada x inicial (568 )
    mov x2, 89             // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

 
    LDR X30, [SP, #32]
    LDR X4, [SP, #24]
    LDR X3, [SP, #16]
    LDR X2, [SP, #8]
    LDR X1, [SP]
    ADD SP, SP, #40

    ret
nubes19:
    SUB SP, SP, #40
    STR X1, [SP]
    STR X2, [SP, #8]
    STR X3, [SP, #16]
    STR X4, [SP, #24]
    STR X30, [SP, #32]

    //----------NUBE1-----------------
    // Base de la nube 
    // Llamada a draw_line_straight para dibujar base de la nube
    mov x1, 39-345    // Coordenada x inicial (54 - 15)
    mov x2, 61        // Coordenada y inicial
    mov x3, 82-345    // Coordenada x final (97 - 15)
    mov x4, 61        // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    // Parte de arriba de la nube
    mov x1, 34-345    // (49 - 15)
    mov x2, 59
    ldr x10, gris
    bl draw_pixel

    mov x1, 35-345    // (50 - 15)
    mov x2, 58
    ldr x10, gris
    bl draw_pixel

    mov x1, 35-345    // (50 - 15)
    mov x2, 57
    ldr x10, gris
    bl draw_pixel

    mov x1, 38-345    // (53 - 15)
    mov x2, 56
    ldr x10, gris
    bl draw_pixel

    mov x1, 38-345    // (53 - 15)
    mov x2, 55
    ldr x10, gris
    bl draw_pixel

    mov x1, 39-345    // (54 - 15)
    mov x2, 55
    ldr x10, gris
    bl draw_pixel

    mov x1, 39-345    // (54 - 15)
    mov x2, 54
    ldr x10, gris
    bl draw_pixel

    mov x1, 40-345    // Coordenada x inicial (55 - 15)
    mov x2, 53        // Coordenada y inicial
    mov x3, 48-345    // Coordenada x final (63 - 15)
    mov x4, 56        // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 48-345    // Coordenada x inicial (63 - 15)
    mov x2, 52        // Coordenada y inicial
    mov x3, 50-345    // Coordenada x final (65 - 15)
    mov x4, 52        // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 50-345    // (65 - 15)
    mov x2, 51
    ldr x10, gris
    bl draw_pixel

    mov x1, 51-345    // Coordenada x inicial (66 - 15)
    mov x2, 51        // Coordenada y inicial
    mov x3, 51-345    // Coordenada x final (66 - 15)
    mov x4, 49        // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 52-345    // Coordenada x inicial (67 - 15)
    mov x2, 49        // Coordenada y inicial
    mov x3, 52-345    // Coordenada x final (67 - 15)
    mov x4, 48        // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 53-345    // Coordenada x inicial (68 - 15)
    mov x2, 48        // Coordenada y inicial
    mov x3, 53-345    // Coordenada x final (68 - 15)
    mov x4, 47        // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 54-345    // (69 - 15)
    mov x2, 47
    ldr x10, gris
    bl draw_pixel

    mov x1, 54-345    // Coordenada x inicial (69 - 15)
    mov x2, 46        // Coordenada y inicial
    mov x3, 56-345    // Coordenada x final (71 - 15)
    mov x4, 46        // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 56-345    // Coordenada x inicial (71 - 15)
    mov x2, 45        // Coordenada y inicial
    mov x3, 58-345    // Coordenada x final (73 - 15)
    mov x4, 45        // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 58-345    // (73 - 15)
    mov x2, 44
    ldr x10, gris
    bl draw_pixel

    mov x1, 59-345    // Coordenada x inicial (74 - 15)
    mov x2, 44        // Coordenada y inicial
    mov x3, 59-345    // Coordenada x final (74 - 15)
    mov x4, 42        // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 60-345    // Coordenada x inicial (75 - 15)
    mov x2, 43        // Coordenada y inicial
    mov x3, 62-345    // Coordenada x final (77 - 15)
    mov x4, 43        // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 62-345    // Coordenada x inicial (77 - 15)
    mov x2, 44        // Coordenada y inicial
    mov x3, 64-345    // Coordenada x final (79 - 15)
    mov x4, 44        // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 64-345    // Coordenada x inicial (79 - 15)
    mov x2, 45        // Coordenada y inicial
    mov x3, 68-345    // Coordenada x final (83 - 15)
    mov x4, 45        // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 66-345    // (81 - 15)
    mov x2, 46
    ldr x10, gris
    bl draw_pixel

    mov x1, 66-345    // (81 - 15)
    mov x2, 47
    ldr x10, gris
    bl draw_pixel

    mov x1, 67-345    // (82 - 15)
    mov x2, 47
    ldr x10, gris
    bl draw_pixel

    mov x1, 67-345    // (82 - 15)
    mov x2, 48
    ldr x10, gris
    bl draw_pixel

    mov x1, 68-345    // (83 - 15)
    mov x2, 48
    ldr x10, gris
    bl draw_pixel

    mov x1, 68-345    // (83 - 15)
    mov x2, 49
    ldr x10, gris
    bl draw_pixel

    mov x1, 69-345    // (84 - 15)
    mov x2, 49
    ldr x10, gris
    bl draw_pixel

    mov x1, 69-345    // (84 - 15)
    mov x2, 50
    ldr x10, gris
    bl draw_pixel

    mov x1, 70-345    // (85 - 15)
    mov x2, 50
    ldr x10, gris
    bl draw_pixel

    mov x1, 71-345   // Coordenada x inicial (86 - 15)
    mov x2, 51        // Coordenada y inicial
    mov x3, 74-345   // Coordenada x final (89 - 15)
    mov x4, 51        // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 75-345   // Coordenada x inicial (90 - 15)
    mov x2, 52        // Coordenada y inicial
    mov x3, 77-345   // Coordenada x final (92 - 15)
    mov x4, 52        // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 77-345   // (92 - 15)
    mov x2, 53
    ldr x10, gris
    bl draw_pixel

    mov x1, 78-345   // Coordenada x inicial (93 - 15)
    mov x2, 53        // Coordenada y inicial
    mov x3, 78-345   // Coordenada x final (93 - 15)
    mov x4, 55        // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 79-345   // (94 - 15)
    mov x2, 55
    ldr x10, gris
    bl draw_pixel

    mov x1, 79-345   // (94 - 15)
    mov x2, 56
    ldr x10, gris
    bl draw_pixel

    mov x1, 80-345   // (95 - 15)
    mov x2, 56
    ldr x10, gris
    bl draw_pixel

    mov x1, 80-345   // (95 - 15)
    mov x2, 57
    ldr x10, gris
    bl draw_pixel

    mov x1, 81-345   // (96 - 15)
    mov x2, 57
    ldr x10, gris
    bl draw_pixel

    mov x1, 82-345   // (97 - 15)
    mov x2, 58
    ldr x10, gris
    bl draw_pixel

    mov x1, 83-345   // (98 - 15)
    mov x2, 59
    ldr x10, gris
    bl draw_pixel

    mov x1, 83-345   // (98 - 15)
    mov X2, 60 
    ldr x10, gris
    bl draw_pixel

    // ------------NUBE2-----------------
    // Base de la nube 
    // Llamada a draw_line_straight para dibujar base de la nube

    mov x1, 273-345    // Coordenada x inicial (288 - 15)
    mov x2, 30         // Coordenada y inicial
    mov x3, 316-345    // Coordenada x final (331 - 15)
    mov x4, 30         // Coordenada y final
    ldr x10, gris
    bl draw_line_straight

    mov x1, 268-345    // (283 - 15)
    mov x2, 28         // Coordenada y inicial (30 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 269-345    // (284 - 15)
    mov x2, 27         // Coordenada y inicial (27 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 269-345    // (284 - 15)
    mov x2, 26         // Coordenada y inicial (26 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 272-345    // (287 - 15)
    mov x2, 25         // Coordenada y inicial (25 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 272-345    // (287 - 15)
    mov x2, 24         // Coordenada y inicial (24 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 273-345    // (288 - 15)
    mov x2, 24         // Coordenada y inicial (24 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 273-345    // (288 - 15)
    mov x2, 23         // Coordenada y inicial (23 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 274-345    // Coordenada x inicial (289 - 15)
    mov x2, 22         // Coordenada y inicial
    mov x3, 274-345    // Coordenada x final (289 - 15)
    mov x4, 25         // Coordenada y final
    ldr x10, gris
    bl draw_line_straight

    mov x1, 282-345    // Coordenada x inicial (297 - 15)
    mov x2, 21         // Coordenada y inicial
    mov x3, 284-345    // Coordenada x final (299 - 15)
    mov x4, 21         // Coordenada y final
    ldr x10, gris
    bl draw_line_straight

    mov x1, 284-345    // (299 - 15)
    mov x2, 20         // Coordenada y inicial (20 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 285-345    // Coordenada x inicial (300 - 15)
    mov x2, 20         // Coordenada y inicial
    mov x3, 285-345    // Coordenada x final (300 - 15)
    mov x4, 18         // Coordenada y final
    ldr x10, gris
    bl draw_line_straight

    mov x1, 286-345    // (301 - 15)
    mov x2, 18         // Coordenada y inicial (18 - 31)
    mov x3, 286-345    // (301 - 15)
    mov x4, 17         // Coordenada y final (17 - 31)
    ldr x10, gris
    bl draw_line_straight

    mov x1, 287-345    // (302 - 15)
    mov x2, 17         // Coordenada y inicial (17 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 286-345    // (301 - 15)
    mov x2, 15         // Coordenada y inicial (15 - 31)
    mov x3, 286-345    // (301 - 15)
    mov x4, 15         // Coordenada y final (15 - 31)
    ldr x10, gris
    bl draw_line_straight

    mov x1, 289-345    // (304 - 15)
    mov x2, 14         // Coordenada y inicial (14 - 31)
    mov x3, 291-345    // (306 - 15)
    mov x4, 14         // Coordenada y final (14 - 31)
    ldr x10, gris
    bl draw_line_straight

    mov x1, 291-345    // (306 - 15)
    mov x2, 13         // Coordenada y inicial (13 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 292-345    // (307 - 15)
    mov x2, 13         // Coordenada y inicial (13 - 31)
    mov x3, 292-345    // (307 - 15)
    mov x4, 11         // Coordenada y final (11 - 31)
    ldr x10, gris
    bl draw_line_straight

    mov x1, 293-345    // (308 - 15)
    mov x2, 12         // Coordenada y inicial (12 - 31)
    mov x3, 295-345    // (310 - 15)
    mov x4, 12         // Coordenada y final (12 - 31)
    ldr x10, gris
    bl draw_line_straight

    mov x1, 295-345    // (310 - 15)
    mov x2, 13         // Coordenada y inicial (13 - 31)
    mov x3, 298-345    // (313 - 15)
    mov x4, 13         // Coordenada y final (13 - 31)
    ldr x10, gris
    bl draw_line_straight

    mov x1, 297-345    // (312 - 15)
    mov x2, 14         // Coordenada y inicial (14 - 31)
    mov x3, 300-345    // (315 - 15)
    mov x4, 14         // Coordenada y final (14 - 31)
    ldr x10, gris
    bl draw_line_straight

    mov x1, 300-345    // (315 - 15)
    mov x2, 15         // Coordenada y inicial (15 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 300-345    // (315 - 15)
    mov x2, 16         // Coordenada y inicial (16 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 301-345    // (316 - 15)
    mov x2, 16         // Coordenada y inicial (16 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 301-345    // (316 - 15)
    mov x2, 17         // Coordenada y inicial (17 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 302-345    // (317 - 15)
    mov x2, 17         // Coordenada y inicial (17 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 302-345    // (317 - 15)
    mov x2, 18         // Coordenada y inicial (18 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 303-345    // (318 - 15)
    mov x2, 18         // Coordenada y inicial (18 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 303-345    // (318 - 15)
    mov x2, 19         // Coordenada y inicial (19 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 304-345    // (319 - 15)
    mov x2, 19         // Coordenada y inicial (19 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 305-345    // (320 - 15)
    mov x2, 20         // Coordenada y inicial (20 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 306-345    // (321 - 15)
    mov x2, 21         // Coordenada y inicial (21 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 307-345    // (322 - 15)
    mov x2, 21         // Coordenada y inicial (21 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 307-345    // (322 - 15)
    mov x2, 22         // Coordenada y inicial (22 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 308-345    // (323 - 15)
    mov x2, 22         // Coordenada y inicial (22 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 309-345    // (324 - 15)
    mov x2, 23         // Coordenada y inicial (23 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 310-345    // (325 - 15)
    mov x2, 24         // Coordenada y inicial (24 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 311-345    // (326 - 15)
    mov x2, 25         // Coordenada y inicial (25 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 312-345    // (327 - 15)
    mov x2, 25         // Coordenada y inicial (25 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 312-345    // (327 - 15)
    mov x2, 26         // Coordenada y inicial (26 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 313-345    // (328 - 15)
    mov x2, 26         // Coordenada y inicial (26 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 313-345    // (328 - 15)
    mov x2, 27         // Coordenada y inicial (27 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 314-345    // (329 - 15)
    mov x2, 27         // Coordenada y inicial (27 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 315-345    // (330 - 15)
    mov x2, 28         // Coordenada y inicial (28 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 315-345    // (330 - 15)
    mov x2, 29         // Coordenada y inicial (29 - 31)
    ldr x10, gris
    bl draw_pixel

    //----------NUBE3-----------------
    // Base de la nube 
    // Llamada a draw_line_straight para dibujar base de la nube

    mov x1, 495-345    // Coordenada x inicial (525 )
    mov x2, 91             // Coordenada y inicial
    mov x3, 538-345    // Coordenada x final (568 )
    mov x4, 91             // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    // Parte de arriba de la nube

    mov x1, 490-345    // Coordenada x inicial (520 )
    mov x2, 89             // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 491-345    // Coordenada x inicial (521 )
    mov x2, 88             // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 491-345    // Coordenada x inicial (521 )
    mov x2, 87             // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 494-345    // Coordenada x inicial (524 )
    mov x2, 86             // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 494-345    // Coordenada x inicial (524 )
    mov x2, 85             // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 495-345    // Coordenada x inicial (525 )
    mov x2, 85             // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 495-345    // Coordenada x inicial (525 )
    mov x2, 84             // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 496-345    // Coordenada x inicial (526 )
    mov x2, 83             // Coordenada y inicial
    mov x3, 504-345    // Coordenada x final (534 )
    mov x4, 86             // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 504-345    // Coordenada x inicial (534 )
    mov x2, 82             // Coordenada y inicial
    mov x3, 506-345    // Coordenada x final (536 )
    mov x4, 82             // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 506-345    // Coordenada x inicial (536 )
    mov x2, 81             // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 507-345    // Coordenada x inicial (537 )
    mov x2, 81             // Coordenada y inicial
    mov x3, 507-345    // Coordenada x final (537 )
    mov x4, 79             // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 508-345    // Coordenada x inicial (538 )
    mov x2, 79             // Coordenada y inicial
    mov x3, 508-345    // Coordenada x final (538 )
    mov x4, 78             // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 509-345    // Coordenada x inicial (539 )
    mov x2, 78             // Coordenada y inicial
    mov x3, 509-345    // Coordenada x final (539 )
    mov x4, 77             // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 510-345    // Coordenada x inicial (540 )
    mov x2, 77             // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 510-345    // Coordenada x inicial (540 )
    mov x2, 76             // Coordenada y inicial
    mov x3, 512-345    // Coordenada x final (542 )
    mov x4, 76             // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 512-345    // Coordenada x inicial (542 )
    mov x2, 75             // Coordenada y inicial
    mov x3, 514-345    // Coordenada x final (544 )
    mov x4, 75             // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 514-345    // Coordenada x inicial (544 )
    mov x2, 74             // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 515-345    // Coordenada x inicial (545 )
    mov x2, 74             // Coordenada y inicial
    mov x3, 515-345    // Coordenada x final (545 )
    mov x4, 72             // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 516-345    // Coordenada x inicial (546 )
    mov x2, 73             // Coordenada y inicial
    mov x3, 518-345    // Coordenada x final (548 )
    mov x4, 73             // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 518-345    // Coordenada x inicial (548 )
    mov x2, 74             // Coordenada y inicial
    mov x3, 520-345    // Coordenada x final (550 )
    mov x4, 74             // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 520-345    // Coordenada x inicial (550 )
    mov x2, 75             // Coordenada y inicial
    mov x3, 522-345    // Coordenada x final (552 )
    mov x4, 75             // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 522-345    // Coordenada x inicial 
    mov x2, 76             // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 522-345    // Coordenada x inicial (552 )
    mov x2, 77             // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 523-345    // Coordenada x inicial (553 )
    mov x2, 77             // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 523-345    // Coordenada x inicial (553 )
    mov x2, 78             // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 524-345    // Coordenada x inicial (554 )
    mov x2, 78             // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 524-345    // Coordenada x inicial (554 )
    mov x2, 79             // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 525-345    // Coordenada x inicial (555 )
    mov x2, 79             // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 525-345    // Coordenada x inicial (555 )
    mov x2, 80             // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 526-345    // Coordenada x inicial (556 )
    mov x2, 80             // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 527-345    // Coordenada x inicial (557 )
    mov x2, 81             // Coordenada y inicial
    mov x3, 530-345    // Coordenada x final (560 )
    mov x4, 81             // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 531-345    // Coordenada x inicial (561 )
    mov x2, 82             // Coordenada y inicial
    mov x3, 533-345    // Coordenada x final (563 )
    mov x4, 82             // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 533-345    // Coordenada x inicial (563 )
    mov x2, 83             // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 534-345    // Coordenada x inicial (564 )
    mov x2, 83             // Coordenada y inicial
    mov x3, 534-345    // Coordenada x final (564 )
    mov x4, 85             // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 535-345    // Coordenada x inicial (565 )
    mov x2, 85             // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 535-345    // Coordenada x inicial (565 )
    mov x2, 86             // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 536-345    // Coordenada x inicial (566 )
    mov x2, 86             // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 536-345    // Coordenada x inicial (566 )
    mov x2, 87             // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 537-345    // Coordenada x inicial (567 )
    mov x2, 87             // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 538-345    // Coordenada x inicial (568 )
    mov x2, 88             // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 538-345    // Coordenada x inicial (568 )
    mov x2, 89             // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

 
    LDR X30, [SP, #32]
    LDR X4, [SP, #24]
    LDR X3, [SP, #16]
    LDR X2, [SP, #8]
    LDR X1, [SP]
    ADD SP, SP, #40
    ret

nubes20: 
    SUB SP, SP, #40
    STR X1, [SP]
    STR X2, [SP, #8]
    STR X3, [SP, #16]
    STR X4, [SP, #24]
    STR X30, [SP, #32]

    //----------NUBE1-----------------
    // Base de la nube 
    // Llamada a draw_line_straight para dibujar base de la nube
    mov x1, 39-375    // Coordenada x inicial (54 - 15)
    mov x2, 61        // Coordenada y inicial
    mov x3, 82-375    // Coordenada x final (97 - 15)
    mov x4, 61        // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    // Parte de arriba de la nube
    mov x1, 34-375    // (49 - 15)
    mov x2, 59
    ldr x10, gris
    bl draw_pixel

    mov x1, 35-375    // (50 - 15)
    mov x2, 58
    ldr x10, gris
    bl draw_pixel

    mov x1, 35-375    // (50 - 15)
    mov x2, 57
    ldr x10, gris
    bl draw_pixel

    mov x1, 38-375    // (53 - 15)
    mov x2, 56
    ldr x10, gris
    bl draw_pixel

    mov x1, 38-375    // (53 - 15)
    mov x2, 55
    ldr x10, gris
    bl draw_pixel

    mov x1, 39-375    // (54 - 15)
    mov x2, 55
    ldr x10, gris
    bl draw_pixel

    mov x1, 39-375    // (54 - 15)
    mov x2, 54
    ldr x10, gris
    bl draw_pixel

    mov x1, 40-375    // Coordenada x inicial (55 - 15)
    mov x2, 53        // Coordenada y inicial
    mov x3, 48-375    // Coordenada x final (63 - 15)
    mov x4, 56        // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 48-375    // Coordenada x inicial (63 - 15)
    mov x2, 52        // Coordenada y inicial
    mov x3, 50-375    // Coordenada x final (65 - 15)
    mov x4, 52        // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 50-375    // (65 - 15)
    mov x2, 51
    ldr x10, gris
    bl draw_pixel

    mov x1, 51-375    // Coordenada x inicial (66 - 15)
    mov x2, 51        // Coordenada y inicial
    mov x3, 51-375    // Coordenada x final (66 - 15)
    mov x4, 49        // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 52-375    // Coordenada x inicial (67 - 15)
    mov x2, 49        // Coordenada y inicial
    mov x3, 52-375    // Coordenada x final (67 - 15)
    mov x4, 48        // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 53-375    // Coordenada x inicial (68 - 15)
    mov x2, 48        // Coordenada y inicial
    mov x3, 53-375    // Coordenada x final (68 - 15)
    mov x4, 47        // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 54-375    // (69 - 15)
    mov x2, 47
    ldr x10, gris
    bl draw_pixel

    mov x1, 54-375    // Coordenada x inicial (69 - 15)
    mov x2, 46        // Coordenada y inicial
    mov x3, 56-375    // Coordenada x final (71 - 15)
    mov x4, 46        // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 56-375    // Coordenada x inicial (71 - 15)
    mov x2, 45        // Coordenada y inicial
    mov x3, 58-375    // Coordenada x final (73 - 15)
    mov x4, 45        // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 58-375    // (73 - 15)
    mov x2, 44
    ldr x10, gris
    bl draw_pixel

    mov x1, 59-375    // Coordenada x inicial (74 - 15)
    mov x2, 44        // Coordenada y inicial
    mov x3, 59-375    // Coordenada x final (74 - 15)
    mov x4, 42        // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 60-375    // Coordenada x inicial (75 - 15)
    mov x2, 43        // Coordenada y inicial
    mov x3, 62-375    // Coordenada x final (77 - 15)
    mov x4, 43        // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 62-375    // Coordenada x inicial (77 - 15)
    mov x2, 44        // Coordenada y inicial
    mov x3, 64-375    // Coordenada x final (79 - 15)
    mov x4, 44        // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 64-375    // Coordenada x inicial (79 - 15)
    mov x2, 45        // Coordenada y inicial
    mov x3, 68-375    // Coordenada x final (83 - 15)
    mov x4, 45        // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 66-375    // (81 - 15)
    mov x2, 46
    ldr x10, gris
    bl draw_pixel

    mov x1, 66-375    // (81 - 15)
    mov x2, 47
    ldr x10, gris
    bl draw_pixel

    mov x1, 67-375    // (82 - 15)
    mov x2, 47
    ldr x10, gris
    bl draw_pixel

    mov x1, 67-375    // (82 - 15)
    mov x2, 48
    ldr x10, gris
    bl draw_pixel

    mov x1, 68-375    // (83 - 15)
    mov x2, 48
    ldr x10, gris
    bl draw_pixel

    mov x1, 68-375    // (83 - 15)
    mov x2, 49
    ldr x10, gris
    bl draw_pixel

    mov x1, 69-375    // (84 - 15)
    mov x2, 49
    ldr x10, gris
    bl draw_pixel

    mov x1, 69-375    // (84 - 15)
    mov x2, 50
    ldr x10, gris
    bl draw_pixel

    mov x1, 70-375    // (85 - 15)
    mov x2, 50
    ldr x10, gris
    bl draw_pixel

    mov x1, 71-375   // Coordenada x inicial (86 - 15)
    mov x2, 51        // Coordenada y inicial
    mov x3, 74-375   // Coordenada x final (89 - 15)
    mov x4, 51        // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 75-375   // Coordenada x inicial (90 - 15)
    mov x2, 52        // Coordenada y inicial
    mov x3, 77-375   // Coordenada x final (92 - 15)
    mov x4, 52        // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 77-375   // (92 - 15)
    mov x2, 53
    ldr x10, gris
    bl draw_pixel

    mov x1, 78-375   // Coordenada x inicial (93 - 15)
    mov x2, 53        // Coordenada y inicial
    mov x3, 78-375   // Coordenada x final (93 - 15)
    mov x4, 55        // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 79-375   // (94 - 15)
    mov x2, 55
    ldr x10, gris
    bl draw_pixel

    mov x1, 79-375   // (94 - 15)
    mov x2, 56
    ldr x10, gris
    bl draw_pixel

    mov x1, 80-375   // (95 - 15)
    mov x2, 56
    ldr x10, gris
    bl draw_pixel

    mov x1, 80-375   // (95 - 15)
    mov x2, 57
    ldr x10, gris
    bl draw_pixel

    mov x1, 81-375   // (96 - 15)
    mov x2, 57
    ldr x10, gris
    bl draw_pixel

    mov x1, 82-375   // (97 - 15)
    mov x2, 58
    ldr x10, gris
    bl draw_pixel

    mov x1, 83-375   // (98 - 15)
    mov x2, 59
    ldr x10, gris
    bl draw_pixel

    mov x1, 83-375   // (98 - 15)
    mov X2, 60 
    ldr x10, gris
    bl draw_pixel

    // ------------NUBE2-----------------
    // Base de la nube 
    // Llamada a draw_line_straight para dibujar base de la nube

    mov x1, 273-375    // Coordenada x inicial (288 - 15)
    mov x2, 30         // Coordenada y inicial
    mov x3, 316-375    // Coordenada x final (331 - 15)
    mov x4, 30         // Coordenada y final
    ldr x10, gris
    bl draw_line_straight

    mov x1, 268-375    // (283 - 15)
    mov x2, 28         // Coordenada y inicial (30 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 269-375    // (284 - 15)
    mov x2, 27         // Coordenada y inicial (27 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 269-375    // (284 - 15)
    mov x2, 26         // Coordenada y inicial (26 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 272-375    // (287 - 15)
    mov x2, 25         // Coordenada y inicial (25 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 272-375    // (287 - 15)
    mov x2, 24         // Coordenada y inicial (24 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 273-375    // (288 - 15)
    mov x2, 24         // Coordenada y inicial (24 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 273-375    // (288 - 15)
    mov x2, 23         // Coordenada y inicial (23 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 274-375    // Coordenada x inicial (289 - 15)
    mov x2, 22         // Coordenada y inicial
    mov x3, 274-375    // Coordenada x final (289 - 15)
    mov x4, 25         // Coordenada y final
    ldr x10, gris
    bl draw_line_straight

    mov x1, 282-375    // Coordenada x inicial (297 - 15)
    mov x2, 21         // Coordenada y inicial
    mov x3, 284-375    // Coordenada x final (299 - 15)
    mov x4, 21         // Coordenada y final
    ldr x10, gris
    bl draw_line_straight

    mov x1, 284-375    // (299 - 15)
    mov x2, 20         // Coordenada y inicial (20 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 285-375    // Coordenada x inicial (300 - 15)
    mov x2, 20         // Coordenada y inicial
    mov x3, 285-375    // Coordenada x final (300 - 15)
    mov x4, 18         // Coordenada y final
    ldr x10, gris
    bl draw_line_straight

    mov x1, 286-375    // (301 - 15)
    mov x2, 18         // Coordenada y inicial (18 - 31)
    mov x3, 286-375    // (301 - 15)
    mov x4, 17         // Coordenada y final (17 - 31)
    ldr x10, gris
    bl draw_line_straight

    mov x1, 287-375    // (302 - 15)
    mov x2, 17         // Coordenada y inicial (17 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 286-375    // (301 - 15)
    mov x2, 15         // Coordenada y inicial (15 - 31)
    mov x3, 286-375    // (301 - 15)
    mov x4, 15         // Coordenada y final (15 - 31)
    ldr x10, gris
    bl draw_line_straight

    mov x1, 289-375    // (304 - 15)
    mov x2, 14         // Coordenada y inicial (14 - 31)
    mov x3, 291-375    // (306 - 15)
    mov x4, 14         // Coordenada y final (14 - 31)
    ldr x10, gris
    bl draw_line_straight

    mov x1, 291-375    // (306 - 15)
    mov x2, 13         // Coordenada y inicial (13 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 292-375    // (307 - 15)
    mov x2, 13         // Coordenada y inicial (13 - 31)
    mov x3, 292-375    // (307 - 15)
    mov x4, 11         // Coordenada y final (11 - 31)
    ldr x10, gris
    bl draw_line_straight

    mov x1, 293-375    // (308 - 15)
    mov x2, 12         // Coordenada y inicial (12 - 31)
    mov x3, 295-375    // (310 - 15)
    mov x4, 12         // Coordenada y final (12 - 31)
    ldr x10, gris
    bl draw_line_straight

    mov x1, 295-375    // (310 - 15)
    mov x2, 13         // Coordenada y inicial (13 - 31)
    mov x3, 298-375    // (313 - 15)
    mov x4, 13         // Coordenada y final (13 - 31)
    ldr x10, gris
    bl draw_line_straight

    mov x1, 297-375    // (312 - 15)
    mov x2, 14         // Coordenada y inicial (14 - 31)
    mov x3, 300-375    // (315 - 15)
    mov x4, 14         // Coordenada y final (14 - 31)
    ldr x10, gris
    bl draw_line_straight

    mov x1, 300-375    // (315 - 15)
    mov x2, 15         // Coordenada y inicial (15 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 300-375    // (315 - 15)
    mov x2, 16         // Coordenada y inicial (16 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 301-375    // (316 - 15)
    mov x2, 16         // Coordenada y inicial (16 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 301-375    // (316 - 15)
    mov x2, 17         // Coordenada y inicial (17 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 302-375    // (317 - 15)
    mov x2, 17         // Coordenada y inicial (17 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 302-375    // (317 - 15)
    mov x2, 18         // Coordenada y inicial (18 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 303-375    // (318 - 15)
    mov x2, 18         // Coordenada y inicial (18 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 303-375    // (318 - 15)
    mov x2, 19         // Coordenada y inicial (19 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 304-375    // (319 - 15)
    mov x2, 19         // Coordenada y inicial (19 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 305-375    // (320 - 15)
    mov x2, 20         // Coordenada y inicial (20 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 306-375    // (321 - 15)
    mov x2, 21         // Coordenada y inicial (21 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 307-375    // (322 - 15)
    mov x2, 21         // Coordenada y inicial (21 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 307-375    // (322 - 15)
    mov x2, 22         // Coordenada y inicial (22 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 308-375    // (323 - 15)
    mov x2, 22         // Coordenada y inicial (22 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 309-375    // (324 - 15)
    mov x2, 23         // Coordenada y inicial (23 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 310-375    // (325 - 15)
    mov x2, 24         // Coordenada y inicial (24 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 311-375    // (326 - 15)
    mov x2, 25         // Coordenada y inicial (25 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 312-375    // (327 - 15)
    mov x2, 25         // Coordenada y inicial (25 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 312-375    // (327 - 15)
    mov x2, 26         // Coordenada y inicial (26 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 313-375    // (328 - 15)
    mov x2, 26         // Coordenada y inicial (26 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 313-375    // (328 - 15)
    mov x2, 27         // Coordenada y inicial (27 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 314-375    // (329 - 15)
    mov x2, 27         // Coordenada y inicial (27 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 315-375    // (330 - 15)
    mov x2, 28         // Coordenada y inicial (28 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 315-375    // (330 - 15)
    mov x2, 29         // Coordenada y inicial (29 - 31)
    ldr x10, gris
    bl draw_pixel

    //----------NUBE3-----------------
    // Base de la nube 
    // Llamada a draw_line_straight para dibujar base de la nube

    mov x1, 495-375    // Coordenada x inicial (525 )
    mov x2, 91             // Coordenada y inicial
    mov x3, 538-375    // Coordenada x final (568 )
    mov x4, 91             // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    // Parte de arriba de la nube

    mov x1, 490-375    // Coordenada x inicial (520 )
    mov x2, 89             // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 491-375    // Coordenada x inicial (521 )
    mov x2, 88             // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 491-375    // Coordenada x inicial (521 )
    mov x2, 87             // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 494-375    // Coordenada x inicial (524 )
    mov x2, 86             // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 494-375    // Coordenada x inicial (524 )
    mov x2, 85             // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 495-375    // Coordenada x inicial (525 )
    mov x2, 85             // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 495-375    // Coordenada x inicial (525 )
    mov x2, 84             // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 496-375    // Coordenada x inicial (526 )
    mov x2, 83             // Coordenada y inicial
    mov x3, 504-375    // Coordenada x final (534 )
    mov x4, 86             // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 504-375    // Coordenada x inicial (534 )
    mov x2, 82             // Coordenada y inicial
    mov x3, 506-375    // Coordenada x final (536 )
    mov x4, 82             // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 506-375    // Coordenada x inicial (536 )
    mov x2, 81             // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 507-375    // Coordenada x inicial (537 )
    mov x2, 81             // Coordenada y inicial
    mov x3, 507-375    // Coordenada x final (537 )
    mov x4, 79             // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 508-375    // Coordenada x inicial (538 )
    mov x2, 79             // Coordenada y inicial
    mov x3, 508-375    // Coordenada x final (538 )
    mov x4, 78             // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 509-375    // Coordenada x inicial (539 )
    mov x2, 78             // Coordenada y inicial
    mov x3, 509-375    // Coordenada x final (539 )
    mov x4, 77             // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 510-375    // Coordenada x inicial (540 )
    mov x2, 77             // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 510-375    // Coordenada x inicial (540 )
    mov x2, 76             // Coordenada y inicial
    mov x3, 512-375    // Coordenada x final (542 )
    mov x4, 76             // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 512-375    // Coordenada x inicial (542 )
    mov x2, 75             // Coordenada y inicial
    mov x3, 514-375    // Coordenada x final (544 )
    mov x4, 75             // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 514-375    // Coordenada x inicial (544 )
    mov x2, 74             // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 515-375    // Coordenada x inicial (545 )
    mov x2, 74             // Coordenada y inicial
    mov x3, 515-375    // Coordenada x final (545 )
    mov x4, 72             // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 516-375    // Coordenada x inicial (546 )
    mov x2, 73             // Coordenada y inicial
    mov x3, 518-375    // Coordenada x final (548 )
    mov x4, 73             // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 518-375    // Coordenada x inicial (548 )
    mov x2, 74             // Coordenada y inicial
    mov x3, 520-375    // Coordenada x final (550 )
    mov x4, 74             // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 520-375    // Coordenada x inicial (550 )
    mov x2, 75             // Coordenada y inicial
    mov x3, 522-375    // Coordenada x final (552 )
    mov x4, 75             // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 522-375    // Coordenada x inicial 
    mov x2, 76             // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 522-375    // Coordenada x inicial (552 )
    mov x2, 77             // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 523-375    // Coordenada x inicial (553 )
    mov x2, 77             // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 523-375    // Coordenada x inicial (553 )
    mov x2, 78             // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 524-375    // Coordenada x inicial (554 )
    mov x2, 78             // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 524-375    // Coordenada x inicial (554 )
    mov x2, 79             // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 525-375    // Coordenada x inicial (555 )
    mov x2, 79             // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 525-375    // Coordenada x inicial (555 )
    mov x2, 80             // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 526-375    // Coordenada x inicial (556 )
    mov x2, 80             // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 527-375    // Coordenada x inicial (557 )
    mov x2, 81             // Coordenada y inicial
    mov x3, 530-375    // Coordenada x final (560 )
    mov x4, 81             // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 531-375    // Coordenada x inicial (561 )
    mov x2, 82             // Coordenada y inicial
    mov x3, 533-375    // Coordenada x final (563 )
    mov x4, 82             // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 533-375    // Coordenada x inicial (563 )
    mov x2, 83             // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 534-375    // Coordenada x inicial (564 )
    mov x2, 83             // Coordenada y inicial
    mov x3, 534-375    // Coordenada x final (564 )
    mov x4, 85             // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 535-375    // Coordenada x inicial (565 )
    mov x2, 85             // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 535-375    // Coordenada x inicial (565 )
    mov x2, 86             // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 536-375    // Coordenada x inicial (566 )
    mov x2, 86             // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 536-375    // Coordenada x inicial (566 )
    mov x2, 87             // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 537-375    // Coordenada x inicial (567 )
    mov x2, 87             // Coordenada y
    ldr x10, gris
    bl draw_pixel

    mov x1, 538-375    // Coordenada x inicial (568 )
    mov x2, 88             // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 538-375    // Coordenada x inicial (568 )
    mov x2, 89             // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

 
    LDR X30, [SP, #32]
    LDR X4, [SP, #24]
    LDR X3, [SP, #16]
    LDR X2, [SP, #8]
    LDR X1, [SP]
    ADD SP, SP, #40
    ret 

nubes21:
    SUB SP, SP, #40
    STR X1, [SP]
    STR X2, [SP, #8]
    STR X3, [SP, #16]
    STR X4, [SP, #24]
    STR X30, [SP, #32]

    //----------NUBE1-----------------
    // Base de la nube 
    // Llamada a draw_line_straight para dibujar base de la nube
    mov x1, 39-405    // Coordenada x inicial (54 - 15)
    mov x2, 61        // Coordenada y inicial
    mov x3, 82-405    // Coordenada x final (97 - 15)
    mov x4, 61        // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    // Parte de arriba de la nube
    mov x1, 34-405    // (49 - 15)
    mov x2, 59
    ldr x10, gris
    bl draw_pixel

    mov x1, 35-405    // (50 - 15)
    mov x2, 58
    ldr x10, gris
    bl draw_pixel

    mov x1, 35-405    // (50 - 15)
    mov x2, 57
    ldr x10, gris
    bl draw_pixel

    mov x1, 38-405    // (53 - 15)
    mov x2, 56
    ldr x10, gris
    bl draw_pixel

    mov x1, 38-405    // (53 - 15)
    mov x2, 55
    ldr x10, gris
    bl draw_pixel

    mov x1, 39-405    // (54 - 15)
    mov x2, 55
    ldr x10, gris
    bl draw_pixel

    mov x1, 39-405    // (54 - 15)
    mov x2, 54
    ldr x10, gris
    bl draw_pixel

    mov x1, 40-405    // Coordenada x inicial (55 - 15)
    mov x2, 53        // Coordenada y inicial
    mov x3, 48-405    // Coordenada x final (63 - 15)
    mov x4, 56        // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 48-405    // Coordenada x inicial (63 - 15)
    mov x2, 52        // Coordenada y inicial
    mov x3, 50-405    // Coordenada x final (65 - 15)
    mov x4, 52        // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 50-405    // (65 - 15)
    mov x2, 51
    ldr x10, gris
    bl draw_pixel

    mov x1, 51-405    // Coordenada x inicial (66 - 15)
    mov x2, 51        // Coordenada y inicial
    mov x3, 51-405    // Coordenada x final (66 - 15)
    mov x4, 49        // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 52-405    // Coordenada x inicial (67 - 15)
    mov x2, 49        // Coordenada y inicial
    mov x3, 52-405    // Coordenada x final (67 - 15)
    mov x4, 48        // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 53-405    // Coordenada x inicial (68 - 15)
    mov x2, 48        // Coordenada y inicial
    mov x3, 53-405    // Coordenada x final (68 - 15)
    mov x4, 47        // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 54-405    // (69 - 15)
    mov x2, 47
    ldr x10, gris
    bl draw_pixel

    mov x1, 54-405    // Coordenada x inicial (69 - 15)
    mov x2, 46        // Coordenada y inicial
    mov x3, 56-405    // Coordenada x final (71 - 15)
    mov x4, 46        // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 56-405    // Coordenada x inicial (71 - 15)
    mov x2, 45        // Coordenada y inicial
    mov x3, 58-405    // Coordenada x final (73 - 15)
    mov x4, 45        // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 58-405    // (73 - 15)
    mov x2, 44
    ldr x10, gris
    bl draw_pixel

    mov x1, 59-405    // Coordenada x inicial (74 - 15)
    mov x2, 44        // Coordenada y inicial
    mov x3, 59-405    // Coordenada x final (74 - 15)
    mov x4, 42        // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 60-405    // Coordenada x inicial (75 - 15)
    mov x2, 43        // Coordenada y inicial
    mov x3, 62-405    // Coordenada x final (77 - 15)
    mov x4, 43        // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 62-405    // Coordenada x inicial (77 - 15)
    mov x2, 44        // Coordenada y inicial
    mov x3, 64-405    // Coordenada x final (79 - 15)
    mov x4, 44        // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 64-405    // Coordenada x inicial (79 - 15)
    mov x2, 45        // Coordenada y inicial
    mov x3, 68-405    // Coordenada x final (83 - 15)
    mov x4, 45        // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 66-405    // (81 - 15)
    mov x2, 46
    ldr x10, gris
    bl draw_pixel

    mov x1, 66-405    // (81 - 15)
    mov x2, 47
    ldr x10, gris
    bl draw_pixel

    mov x1, 67-405    // (82 - 15)
    mov x2, 47
    ldr x10, gris
    bl draw_pixel

    mov x1, 67-405    // (82 - 15)
    mov x2, 48
    ldr x10, gris
    bl draw_pixel

    mov x1, 68-405    // (83 - 15)
    mov x2, 48
    ldr x10, gris
    bl draw_pixel

    mov x1, 68-405    // (83 - 15)
    mov x2, 49
    ldr x10, gris
    bl draw_pixel

    mov x1, 69-405    // (84 - 15)
    mov x2, 49
    ldr x10, gris
    bl draw_pixel

    mov x1, 69-405    // (84 - 15)
    mov x2, 50
    ldr x10, gris
    bl draw_pixel

    mov x1, 70-405    // (85 - 15)
    mov x2, 50
    ldr x10, gris
    bl draw_pixel

    mov x1, 71-405   // Coordenada x inicial (86 - 15)
    mov x2, 51        // Coordenada y inicial
    mov x3, 74-405   // Coordenada x final (89 - 15)
    mov x4, 51        // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 75-405   // Coordenada x inicial (90 - 15)
    mov x2, 52        // Coordenada y inicial
    mov x3, 77-405   // Coordenada x final (92 - 15)
    mov x4, 52        // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 77-405   // (92 - 15)
    mov x2, 53
    ldr x10, gris
    bl draw_pixel

    mov x1, 78-405   // Coordenada x inicial (93 - 15)
    mov x2, 53        // Coordenada y inicial
    mov x3, 78-405   // Coordenada x final (93 - 15)
    mov x4, 55        // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 79-405   // (94 - 15)
    mov x2, 55
    ldr x10, gris
    bl draw_pixel

    mov x1, 79-405   // (94 - 15)
    mov x2, 56
    ldr x10, gris
    bl draw_pixel

    mov x1, 80-405   // (95 - 15)
    mov x2, 56
    ldr x10, gris
    bl draw_pixel

    mov x1, 80-405   // (95 - 15)
    mov x2, 57
    ldr x10, gris
    bl draw_pixel

    mov x1, 81-405   // (96 - 15)
    mov x2, 57
    ldr x10, gris
    bl draw_pixel

    mov x1, 82-405   // (97 - 15)
    mov x2, 58
    ldr x10, gris
    bl draw_pixel

    mov x1, 83-405   // (98 - 15)
    mov x2, 59
    ldr x10, gris
    bl draw_pixel

    mov x1, 83-405   // (98 - 15)
    mov X2, 60 
    ldr x10, gris
    bl draw_pixel

    // ------------NUBE2-----------------
    // Base de la nube 
    // Llamada a draw_line_straight para dibujar base de la nube

    mov x1, 273-405    // Coordenada x inicial (288 - 15)
    mov x2, 30         // Coordenada y inicial
    mov x3, 316-405    // Coordenada x final (331 - 15)
    mov x4, 30         // Coordenada y final
    ldr x10, gris
    bl draw_line_straight

    mov x1, 268-405    // (283 - 15)
    mov x2, 28         // Coordenada y inicial (30 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 269-405    // (284 - 15)
    mov x2, 27         // Coordenada y inicial (27 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 269-405    // (284 - 15)
    mov x2, 26         // Coordenada y inicial (26 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 272-405    // (287 - 15)
    mov x2, 25         // Coordenada y inicial (25 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 272-405    // (287 - 15)
    mov x2, 24         // Coordenada y inicial (24 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 273-405    // (288 - 15)
    mov x2, 24         // Coordenada y inicial (24 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 273-405    // (288 - 15)
    mov x2, 23         // Coordenada y inicial (23 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 274-405    // Coordenada x inicial (289 - 15)
    mov x2, 22         // Coordenada y inicial
    mov x3, 274-405    // Coordenada x final (289 - 15)
    mov x4, 25         // Coordenada y final
    ldr x10, gris
    bl draw_line_straight

    mov x1, 282-405    // Coordenada x inicial (297 - 15)
    mov x2, 21         // Coordenada y inicial
    mov x3, 284-405    // Coordenada x final (299 - 15)
    mov x4, 21         // Coordenada y final
    ldr x10, gris
    bl draw_line_straight

    mov x1, 284-405    // (299 - 15)
    mov x2, 20         // Coordenada y inicial (20 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 285-405    // Coordenada x inicial (300 - 15)
    mov x2, 20         // Coordenada y inicial
    mov x3, 285-405    // Coordenada x final (300 - 15)
    mov x4, 18         // Coordenada y final
    ldr x10, gris
    bl draw_line_straight

    mov x1, 286-405    // (301 - 15)
    mov x2, 18         // Coordenada y inicial (18 - 31)
    mov x3, 286-405    // (301 - 15)
    mov x4, 17         // Coordenada y final (17 - 31)
    ldr x10, gris
    bl draw_line_straight

    mov x1, 287-405    // (302 - 15)
    mov x2, 17         // Coordenada y inicial (17 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 286-405    // (301 - 15)
    mov x2, 15         // Coordenada y inicial (15 - 31)
    mov x3, 286-405    // (301 - 15)
    mov x4, 15         // Coordenada y final (15 - 31)
    ldr x10, gris
    bl draw_line_straight

    mov x1, 289-405    // (304 - 15)
    mov x2, 14         // Coordenada y inicial (14 - 31)
    mov x3, 291-405    // (306 - 15)
    mov x4, 14         // Coordenada y final (14 - 31)
    ldr x10, gris
    bl draw_line_straight

    mov x1, 291-405    // (306 - 15)
    mov x2, 13         // Coordenada y inicial (13 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 292-405    // (307 - 15)
    mov x2, 13         // Coordenada y inicial (13 - 31)
    mov x3, 292-405    // (307 - 15)
    mov x4, 11         // Coordenada y final (11 - 31)
    ldr x10, gris
    bl draw_line_straight

    mov x1, 293-405    // (308 - 15)
    mov x2, 12         // Coordenada y inicial (12 - 31)
    mov x3, 295-405    // (310 - 15)
    mov x4, 12         // Coordenada y final (12 - 31)
    ldr x10, gris
    bl draw_line_straight

    mov x1, 295-405    // (310 - 15)
    mov x2, 13         // Coordenada y inicial (13 - 31)
    mov x3, 298-405    // (313 - 15)
    mov x4, 13         // Coordenada y final (13 - 31)
    ldr x10, gris
    bl draw_line_straight

    mov x1, 297-405    // (312 - 15)
    mov x2, 14         // Coordenada y inicial (14 - 31)
    mov x3, 300-405    // (315 - 15)
    mov x4, 14         // Coordenada y final (14 - 31)
    ldr x10, gris
    bl draw_line_straight

    mov x1, 300-405    // (315 - 15)
    mov x2, 15         // Coordenada y inicial (15 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 300-405    // (315 - 15)
    mov x2, 16         // Coordenada y inicial (16 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 301-405    // (316 - 15)
    mov x2, 16         // Coordenada y inicial (16 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 301-405    // (316 - 15)
    mov x2, 17         // Coordenada y inicial (17 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 302-405    // (317 - 15)
    mov x2, 17         // Coordenada y inicial (17 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 302-405    // (317 - 15)
    mov x2, 18         // Coordenada y inicial (18 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 303-405    // (318 - 15)
    mov x2, 18         // Coordenada y inicial (18 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 303-405    // (318 - 15)
    mov x2, 19         // Coordenada y inicial (19 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 304-405    // (319 - 15)
    mov x2, 19         // Coordenada y inicial (19 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 305-405    // (320 - 15)
    mov x2, 20         // Coordenada y inicial (20 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 306-405    // (321 - 15)
    mov x2, 21         // Coordenada y inicial (21 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 307-405    // (322 - 15)
    mov x2, 21         // Coordenada y inicial (21 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 307-405    // (322 - 15)
    mov x2, 22         // Coordenada y inicial (22 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 308-405    // (323 - 15)
    mov x2, 22         // Coordenada y inicial (22 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 309-405    // (324 - 15)
    mov x2, 23         // Coordenada y inicial (23 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 310-405    // (325 - 15)
    mov x2, 24         // Coordenada y inicial (24 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 311-405    // (326 - 15)
    mov x2, 25         // Coordenada y inicial (25 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 312-405    // (327 - 15)
    mov x2, 25         // Coordenada y inicial (25 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 312-405    // (327 - 15)
    mov x2, 26         // Coordenada y inicial (26 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 313-405    // (328 - 15)
    mov x2, 26         // Coordenada y inicial (26 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 313-405    // (328 - 15)
    mov x2, 27         // Coordenada y inicial (27 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 314-405    // (329 - 15)
    mov x2, 27         // Coordenada y inicial (27 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 315-405    // (330 - 15)
    mov x2, 28         // Coordenada y inicial (28 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 315-405    // (330 - 15)
    mov x2, 29         // Coordenada y inicial (29 - 31)
    ldr x10, gris
    bl draw_pixel

    //----------NUBE3-----------------
    // Base de la nube 
    // Llamada a draw_line_straight para dibujar base de la nube

    mov x1, 495-405    // Coordenada x inicial (525 )
    mov x2, 91             // Coordenada y inicial
    mov x3, 538-405    // Coordenada x final (568 )
    mov x4, 91             // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    // Parte de arriba de la nube

    mov x1, 490-405    // Coordenada x inicial (520 )
    mov x2, 89             // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 491-405    // Coordenada x inicial (521 )
    mov x2, 88             // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 491-405    // Coordenada x inicial (521 )
    mov x2, 87             // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 494-405    // Coordenada x inicial (524 )
    mov x2, 86             // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 494-405    // Coordenada x inicial (524 )
    mov x2, 85             // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 495-405    // Coordenada x inicial (525 )
    mov x2, 85             // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 495-405    // Coordenada x inicial (525 )
    mov x2, 84             // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 496-405    // Coordenada x inicial (526 )
    mov x2, 83             // Coordenada y inicial
    mov x3, 504-405    // Coordenada x final (534 )
    mov x4, 86             // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 504-405    // Coordenada x inicial (534 )
    mov x2, 82             // Coordenada y inicial
    mov x3, 506-405    // Coordenada x final (536 )
    mov x4, 82             // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 506-405    // Coordenada x inicial (536 )
    mov x2, 81             // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 507-405    // Coordenada x inicial (537 )
    mov x2, 81             // Coordenada y inicial
    mov x3, 507-405    // Coordenada x final (537 )
    mov x4, 79             // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 508-405    // Coordenada x inicial (538 )
    mov x2, 79             // Coordenada y inicial
    mov x3, 508-405    // Coordenada x final (538 )
    mov x4, 78             // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 509-405    // Coordenada x inicial (539 )
    mov x2, 78             // Coordenada y inicial
    mov x3, 509-405    // Coordenada x final (539 )
    mov x4, 77             // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 510-405    // Coordenada x inicial (540 )
    mov x2, 77             // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 510-405    // Coordenada x inicial (540 )
    mov x2, 76             // Coordenada y inicial
    mov x3, 512-405    // Coordenada x final (542 )
    mov x4, 76             // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 512-405    // Coordenada x inicial (542 )
    mov x2, 75             // Coordenada y inicial
    mov x3, 514-405    // Coordenada x final (544 )
    mov x4, 75             // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 514-405    // Coordenada x inicial (544 )
    mov x2, 74             // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 515-405    // Coordenada x inicial (545 )
    mov x2, 74             // Coordenada y inicial
    mov x3, 515-405    // Coordenada x final (545 )
    mov x4, 72             // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 516-405    // Coordenada x inicial (546 )
    mov x2, 73             // Coordenada y inicial
    mov x3, 518-405    // Coordenada x final (548 )
    mov x4, 73             // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 518-405    // Coordenada x inicial (548 )
    mov x2, 74             // Coordenada y inicial
    mov x3, 520-405    // Coordenada x final (550 )
    mov x4, 74             // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 520-405    // Coordenada x inicial (550 )
    mov x2, 75             // Coordenada y inicial
    mov x3, 522-405    // Coordenada x final (552 )
    mov x4, 75             // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 522-405    // Coordenada x inicial 
    mov x2, 76             // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 522-405    // Coordenada x inicial (552 )
    mov x2, 77             // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 523-405    // Coordenada x inicial (553 )
    mov x2, 77             // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 523-405    // Coordenada x inicial (553 )
    mov x2, 78             // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 524-405    // Coordenada x inicial (554 )
    mov x2, 78             // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 524-405    // Coordenada x inicial (554 )
    mov x2, 79             // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 525-405    // Coordenada x inicial (555 )
    mov x2, 79             // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 525-405    // Coordenada x inicial (555 )
    mov x2, 80             // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 526-405    // Coordenada x inicial (556 )
    mov x2, 80             // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 527-405    // Coordenada x inicial (557 )
    mov x2, 81             // Coordenada y inicial
    mov x3, 530-405    // Coordenada x final (560 )
    mov x4, 81             // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 531-405    // Coordenada x inicial (561 )
    mov x2, 82             // Coordenada y inicial
    mov x3, 533-405    // Coordenada x final (563 )
    mov x4, 82             // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 533-405    // Coordenada x inicial (563 )
    mov x2, 83             // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 534-405    // Coordenada x inicial (564 )
    mov x2, 83             // Coordenada y inicial
    mov x3, 534-405    // Coordenada x final (564 )
    mov x4, 85             // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 535-405    // Coordenada x inicial (565 )
    mov x2, 85             // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 535-405    // Coordenada x inicial (565 )
    mov x2, 86             // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 536-405    // Coordenada x inicial (566 )
    mov x2, 86             // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 536-405    // Coordenada x inicial (566 )
    mov x2, 87             // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 537-405    // Coordenada x inicial (567 )
    mov x2, 87             // Coordenada y
    ldr x10, gris
    bl draw_pixel

    mov x1, 538-405    // Coordenada x inicial (568 )
    mov x2, 88             // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 538-405    // Coordenada x inicial (568 )
    mov x2, 89             // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

 
    LDR X30, [SP, #32]
    LDR X4, [SP, #24]
    LDR X3, [SP, #16]
    LDR X2, [SP, #8]
    LDR X1, [SP]
    ADD SP, SP, #40
    ret 

nubes22:
    SUB SP, SP, #40
    STR X1, [SP]
    STR X2, [SP, #8]
    STR X3, [SP, #16]
    STR X4, [SP, #24]
    STR X30, [SP, #32]

    //----------NUBE1-----------------
    // Base de la nube 
    // Llamada a draw_line_straight para dibujar base de la nube
    mov x1, 39-435   // Coordenada x inicial (54 - 15)
    mov x2, 61        // Coordenada y inicial
    mov x3, 82-435   // Coordenada x final (97 - 15)
    mov x4, 61        // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    // Parte de arriba de la nube
    mov x1, 34-435   // (49 - 15)
    mov x2, 59
    ldr x10, gris
    bl draw_pixel

    mov x1, 35-435   // (50 - 15)
    mov x2, 58
    ldr x10, gris
    bl draw_pixel

    mov x1, 35-435   // (50 - 15)
    mov x2, 57
    ldr x10, gris
    bl draw_pixel

    mov x1, 38-435   // (53 - 15)
    mov x2, 56
    ldr x10, gris
    bl draw_pixel

    mov x1, 38-435   // (53 - 15)
    mov x2, 55
    ldr x10, gris
    bl draw_pixel

    mov x1, 39-435   // (54 - 15)
    mov x2, 55
    ldr x10, gris
    bl draw_pixel

    mov x1, 39-435   // (54 - 15)
    mov x2, 54
    ldr x10, gris
    bl draw_pixel

    mov x1, 40-435   // Coordenada x inicial (55 - 15)
    mov x2, 53        // Coordenada y inicial
    mov x3, 48-435   // Coordenada x final (63 - 15)
    mov x4, 56        // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 48-435   // Coordenada x inicial (63 - 15)
    mov x2, 52        // Coordenada y inicial
    mov x3, 50-435   // Coordenada x final (65 - 15)
    mov x4, 52        // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 50-435   // (65 - 15)
    mov x2, 51
    ldr x10, gris
    bl draw_pixel

    mov x1, 51-435   // Coordenada x inicial (66 - 15)
    mov x2, 51        // Coordenada y inicial
    mov x3, 51-435   // Coordenada x final (66 - 15)
    mov x4, 49        // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 52-435   // Coordenada x inicial (67 - 15)
    mov x2, 49        // Coordenada y inicial
    mov x3, 52-435   // Coordenada x final (67 - 15)
    mov x4, 48        // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 53-435   // Coordenada x inicial (68 - 15)
    mov x2, 48        // Coordenada y inicial
    mov x3, 53-435   // Coordenada x final (68 - 15)
    mov x4, 47        // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 54-435   // (69 - 15)
    mov x2, 47
    ldr x10, gris
    bl draw_pixel

    mov x1, 54-435   // Coordenada x inicial (69 - 15)
    mov x2, 46        // Coordenada y inicial
    mov x3, 56-435   // Coordenada x final (71 - 15)
    mov x4, 46        // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 56-435   // Coordenada x inicial (71 - 15)
    mov x2, 45        // Coordenada y inicial
    mov x3, 58-435   // Coordenada x final (73 - 15)
    mov x4, 45        // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 58-435   // (73 - 15)
    mov x2, 44
    ldr x10, gris
    bl draw_pixel

    mov x1, 59-435   // Coordenada x inicial (74 - 15)
    mov x2, 44        // Coordenada y inicial
    mov x3, 59-435   // Coordenada x final (74 - 15)
    mov x4, 42        // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 60-435   // Coordenada x inicial (75 - 15)
    mov x2, 43        // Coordenada y inicial
    mov x3, 62-435   // Coordenada x final (77 - 15)
    mov x4, 43        // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 62-435   // Coordenada x inicial (77 - 15)
    mov x2, 44        // Coordenada y inicial
    mov x3, 64-435   // Coordenada x final (79 - 15)
    mov x4, 44        // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 64-435   // Coordenada x inicial (79 - 15)
    mov x2, 45        // Coordenada y inicial
    mov x3, 68-435   // Coordenada x final (83 - 15)
    mov x4, 45        // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 66-435   // (81 - 15)
    mov x2, 46
    ldr x10, gris
    bl draw_pixel

    mov x1, 66-435   // (81 - 15)
    mov x2, 47
    ldr x10, gris
    bl draw_pixel

    mov x1, 67-435   // (82 - 15)
    mov x2, 47
    ldr x10, gris
    bl draw_pixel

    mov x1, 67-435   // (82 - 15)
    mov x2, 48
    ldr x10, gris
    bl draw_pixel

    mov x1, 68-435   // (83 - 15)
    mov x2, 48
    ldr x10, gris
    bl draw_pixel

    mov x1, 68-435   // (83 - 15)
    mov x2, 49
    ldr x10, gris
    bl draw_pixel

    mov x1, 69-435   // (84 - 15)
    mov x2, 49
    ldr x10, gris
    bl draw_pixel

    mov x1, 69-435   // (84 - 15)
    mov x2, 50
    ldr x10, gris
    bl draw_pixel

    mov x1, 70-435   // (85 - 15)
    mov x2, 50
    ldr x10, gris
    bl draw_pixel

    mov x1, 71-435  // Coordenada x inicial (86 - 15)
    mov x2, 51        // Coordenada y inicial
    mov x3, 74-435  // Coordenada x final (89 - 15)
    mov x4, 51        // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 75-435  // Coordenada x inicial (90 - 15)
    mov x2, 52        // Coordenada y inicial
    mov x3, 77-435  // Coordenada x final (92 - 15)
    mov x4, 52        // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 77-435  // (92 - 15)
    mov x2, 53
    ldr x10, gris
    bl draw_pixel

    mov x1, 78-435  // Coordenada x inicial (93 - 15)
    mov x2, 53        // Coordenada y inicial
    mov x3, 78-435  // Coordenada x final (93 - 15)
    mov x4, 55        // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 79-435  // (94 - 15)
    mov x2, 55
    ldr x10, gris
    bl draw_pixel

    mov x1, 79-435  // (94 - 15)
    mov x2, 56
    ldr x10, gris
    bl draw_pixel

    mov x1, 80-435  // (95 - 15)
    mov x2, 56
    ldr x10, gris
    bl draw_pixel

    mov x1, 80-435  // (95 - 15)
    mov x2, 57
    ldr x10, gris
    bl draw_pixel

    mov x1, 81-435  // (96 - 15)
    mov x2, 57
    ldr x10, gris
    bl draw_pixel

    mov x1, 82-435  // (97 - 15)
    mov x2, 58
    ldr x10, gris
    bl draw_pixel

    mov x1, 83-435  // (98 - 15)
    mov x2, 59
    ldr x10, gris
    bl draw_pixel

    mov x1, 83-435  // (98 - 15)
    mov X2, 60 
    ldr x10, gris
    bl draw_pixel

    // ------------NUBE2-----------------
    // Base de la nube 
    // Llamada a draw_line_straight para dibujar base de la nube

    mov x1, 273-435   // Coordenada x inicial (288 - 15)
    mov x2, 30         // Coordenada y inicial
    mov x3, 316-435   // Coordenada x final (331 - 15)
    mov x4, 30         // Coordenada y final
    ldr x10, gris
    bl draw_line_straight

    mov x1, 268-435   // (283 - 15)
    mov x2, 28         // Coordenada y inicial (30 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 269-435   // (284 - 15)
    mov x2, 27         // Coordenada y inicial (27 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 269-435   // (284 - 15)
    mov x2, 26         // Coordenada y inicial (26 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 272-435   // (287 - 15)
    mov x2, 25         // Coordenada y inicial (25 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 272-435   // (287 - 15)
    mov x2, 24         // Coordenada y inicial (24 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 273-435   // (288 - 15)
    mov x2, 24         // Coordenada y inicial (24 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 273-435   // (288 - 15)
    mov x2, 23         // Coordenada y inicial (23 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 274-435   // Coordenada x inicial (289 - 15)
    mov x2, 22         // Coordenada y inicial
    mov x3, 274-435   // Coordenada x final (289 - 15)
    mov x4, 25         // Coordenada y final
    ldr x10, gris
    bl draw_line_straight

    mov x1, 282-435   // Coordenada x inicial (297 - 15)
    mov x2, 21         // Coordenada y inicial
    mov x3, 284-435   // Coordenada x final (299 - 15)
    mov x4, 21         // Coordenada y final
    ldr x10, gris
    bl draw_line_straight

    mov x1, 284-435   // (299 - 15)
    mov x2, 20         // Coordenada y inicial (20 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 285-435   // Coordenada x inicial (300 - 15)
    mov x2, 20         // Coordenada y inicial
    mov x3, 285-435   // Coordenada x final (300 - 15)
    mov x4, 18         // Coordenada y final
    ldr x10, gris
    bl draw_line_straight

    mov x1, 286-435   // (301 - 15)
    mov x2, 18         // Coordenada y inicial (18 - 31)
    mov x3, 286-435   // (301 - 15)
    mov x4, 17         // Coordenada y final (17 - 31)
    ldr x10, gris
    bl draw_line_straight

    mov x1, 287-435   // (302 - 15)
    mov x2, 17         // Coordenada y inicial (17 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 286-435   // (301 - 15)
    mov x2, 15         // Coordenada y inicial (15 - 31)
    mov x3, 286-435   // (301 - 15)
    mov x4, 15         // Coordenada y final (15 - 31)
    ldr x10, gris
    bl draw_line_straight

    mov x1, 289-435   // (304 - 15)
    mov x2, 14         // Coordenada y inicial (14 - 31)
    mov x3, 291-435   // (306 - 15)
    mov x4, 14         // Coordenada y final (14 - 31)
    ldr x10, gris
    bl draw_line_straight

    mov x1, 291-435   // (306 - 15)
    mov x2, 13         // Coordenada y inicial (13 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 292-435   // (307 - 15)
    mov x2, 13         // Coordenada y inicial (13 - 31)
    mov x3, 292-435   // (307 - 15)
    mov x4, 11         // Coordenada y final (11 - 31)
    ldr x10, gris
    bl draw_line_straight

    mov x1, 293-435   // (308 - 15)
    mov x2, 12         // Coordenada y inicial (12 - 31)
    mov x3, 295-435   // (310 - 15)
    mov x4, 12         // Coordenada y final (12 - 31)
    ldr x10, gris
    bl draw_line_straight

    mov x1, 295-435   // (310 - 15)
    mov x2, 13         // Coordenada y inicial (13 - 31)
    mov x3, 298-435   // (313 - 15)
    mov x4, 13         // Coordenada y final (13 - 31)
    ldr x10, gris
    bl draw_line_straight

    mov x1, 297-435   // (312 - 15)
    mov x2, 14         // Coordenada y inicial (14 - 31)
    mov x3, 300-435   // (315 - 15)
    mov x4, 14         // Coordenada y final (14 - 31)
    ldr x10, gris
    bl draw_line_straight

    mov x1, 300-435   // (315 - 15)
    mov x2, 15         // Coordenada y inicial (15 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 300-435   // (315 - 15)
    mov x2, 16         // Coordenada y inicial (16 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 301-435   // (316 - 15)
    mov x2, 16         // Coordenada y inicial (16 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 301-435   // (316 - 15)
    mov x2, 17         // Coordenada y inicial (17 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 302-435   // (317 - 15)
    mov x2, 17         // Coordenada y inicial (17 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 302-435   // (317 - 15)
    mov x2, 18         // Coordenada y inicial (18 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 303-435   // (318 - 15)
    mov x2, 18         // Coordenada y inicial (18 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 303-435   // (318 - 15)
    mov x2, 19         // Coordenada y inicial (19 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 304-435   // (319 - 15)
    mov x2, 19         // Coordenada y inicial (19 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 305-435   // (320 - 15)
    mov x2, 20         // Coordenada y inicial (20 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 306-435   // (321 - 15)
    mov x2, 21         // Coordenada y inicial (21 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 307-435   // (322 - 15)
    mov x2, 21         // Coordenada y inicial (21 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 307-435   // (322 - 15)
    mov x2, 22         // Coordenada y inicial (22 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 308-435   // (323 - 15)
    mov x2, 22         // Coordenada y inicial (22 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 309-435   // (324 - 15)
    mov x2, 23         // Coordenada y inicial (23 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 310-435   // (325 - 15)
    mov x2, 24         // Coordenada y inicial (24 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 311-435   // (326 - 15)
    mov x2, 25         // Coordenada y inicial (25 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 312-435   // (327 - 15)
    mov x2, 25         // Coordenada y inicial (25 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 312-435   // (327 - 15)
    mov x2, 26         // Coordenada y inicial (26 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 313-435   // (328 - 15)
    mov x2, 26         // Coordenada y inicial (26 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 313-435   // (328 - 15)
    mov x2, 27         // Coordenada y inicial (27 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 314-435   // (329 - 15)
    mov x2, 27         // Coordenada y inicial (27 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 315-435   // (330 - 15)
    mov x2, 28         // Coordenada y inicial (28 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 315-435   // (330 - 15)
    mov x2, 29         // Coordenada y inicial (29 - 31)
    ldr x10, gris
    bl draw_pixel

    //----------NUBE3-----------------
    // Base de la nube 
    // Llamada a draw_line_straight para dibujar base de la nube

    mov x1, 495-435   // Coordenada x inicial (525 )
    mov x2, 91             // Coordenada y inicial
    mov x3, 538-435   // Coordenada x final (568 )
    mov x4, 91             // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    // Parte de arriba de la nube

    mov x1, 490-435   // Coordenada x inicial (520 )
    mov x2, 89             // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 491-435   // Coordenada x inicial (521 )
    mov x2, 88             // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 491-435   // Coordenada x inicial (521 )
    mov x2, 87             // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 494-435   // Coordenada x inicial (524 )
    mov x2, 86             // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 494-435   // Coordenada x inicial (524 )
    mov x2, 85             // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 495-435   // Coordenada x inicial (525 )
    mov x2, 85             // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 495-435   // Coordenada x inicial (525 )
    mov x2, 84             // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 496-435   // Coordenada x inicial (526 )
    mov x2, 83             // Coordenada y inicial
    mov x3, 504-435   // Coordenada x final (534 )
    mov x4, 86             // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 504-435   // Coordenada x inicial (534 )
    mov x2, 82             // Coordenada y inicial
    mov x3, 506-435   // Coordenada x final (536 )
    mov x4, 82             // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 506-435   // Coordenada x inicial (536 )
    mov x2, 81             // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 507-435   // Coordenada x inicial (537 )
    mov x2, 81             // Coordenada y inicial
    mov x3, 507-435   // Coordenada x final (537 )
    mov x4, 79             // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 508-435   // Coordenada x inicial (538 )
    mov x2, 79             // Coordenada y inicial
    mov x3, 508-435   // Coordenada x final (538 )
    mov x4, 78             // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 509-435   // Coordenada x inicial (539 )
    mov x2, 78             // Coordenada y inicial
    mov x3, 509-435   // Coordenada x final (539 )
    mov x4, 77             // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 510-435   // Coordenada x inicial (540 )
    mov x2, 77             // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 510-435   // Coordenada x inicial (540 )
    mov x2, 76             // Coordenada y inicial
    mov x3, 512-435   // Coordenada x final (542 )
    mov x4, 76             // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 512-435   // Coordenada x inicial (542 )
    mov x2, 75             // Coordenada y inicial
    mov x3, 514-435   // Coordenada x final (544 )
    mov x4, 75             // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 514-435   // Coordenada x inicial (544 )
    mov x2, 74             // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 515-435   // Coordenada x inicial (545 )
    mov x2, 74             // Coordenada y inicial
    mov x3, 515-435   // Coordenada x final (545 )
    mov x4, 72             // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 516-435   // Coordenada x inicial (546 )
    mov x2, 73             // Coordenada y inicial
    mov x3, 518-435   // Coordenada x final (548 )
    mov x4, 73             // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 518-435   // Coordenada x inicial (548 )
    mov x2, 74             // Coordenada y inicial
    mov x3, 520-435   // Coordenada x final (550 )
    mov x4, 74             // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 520-435   // Coordenada x inicial (550 )
    mov x2, 75             // Coordenada y inicial
    mov x3, 522-435   // Coordenada x final (552 )
    mov x4, 75             // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 522-435   // Coordenada x inicial 
    mov x2, 76             // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 522-435   // Coordenada x inicial (552 )
    mov x2, 77             // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 523-435   // Coordenada x inicial (553 )
    mov x2, 77             // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 523-435   // Coordenada x inicial (553 )
    mov x2, 78             // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 524-435   // Coordenada x inicial (554 )
    mov x2, 78             // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 524-435   // Coordenada x inicial (554 )
    mov x2, 79             // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 525-435   // Coordenada x inicial (555 )
    mov x2, 79             // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 525-435   // Coordenada x inicial (555 )
    mov x2, 80             // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 526-435   // Coordenada x inicial (556 )
    mov x2, 80             // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 527-435   // Coordenada x inicial (557 )
    mov x2, 81             // Coordenada y inicial
    mov x3, 530-435   // Coordenada x final (560 )
    mov x4, 81             // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 531-435   // Coordenada x inicial (561 )
    mov x2, 82             // Coordenada y inicial
    mov x3, 533-435   // Coordenada x final (563 )
    mov x4, 82             // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 533-435   // Coordenada x inicial (563 )
    mov x2, 83             // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 534-435   // Coordenada x inicial (564 )
    mov x2, 83             // Coordenada y inicial
    mov x3, 534-435   // Coordenada x final (564 )
    mov x4, 85             // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 535-435   // Coordenada x inicial (565 )
    mov x2, 85             // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 535-435   // Coordenada x inicial (565 )
    mov x2, 86             // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 536-435   // Coordenada x inicial (566 )
    mov x2, 86             // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 536-435   // Coordenada x inicial (566 )
    mov x2, 87             // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 537-435   // Coordenada x inicial (567 )
    mov x2, 87             // Coordenada y
    ldr x10, gris
    bl draw_pixel

    mov x1, 538-435   // Coordenada x inicial (568 )
    mov x2, 88             // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 538-435   // Coordenada x inicial (568 )
    mov x2, 89             // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel
    LDR X30, [SP, #32]
    LDR X4, [SP, #24]
    LDR X3, [SP, #16]
    LDR X2, [SP, #8]
    LDR X1, [SP]
    ADD SP, SP, #40
    ret
 nubes23:

    SUB SP, SP, #40
    STR X1, [SP]
    STR X2, [SP, #8]
    STR X3, [SP, #16]
    STR X4, [SP, #24]
    STR X30, [SP, #32]

    //----------NUBE1-----------------
    // Base de la nube 
    // Llamada a draw_line_straight para dibujar base de la nube
    mov x1, 39-465  // Coordenada x inicial (54 - 15)
    mov x2, 61        // Coordenada y inicial
    mov x3, 82-465  // Coordenada x final (97 - 15)
    mov x4, 61        // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    // Parte de arriba de la nube
    mov x1, 34-465  // (49 - 15)
    mov x2, 59
    ldr x10, gris
    bl draw_pixel

    mov x1, 35-465  // (50 - 15)
    mov x2, 58
    ldr x10, gris
    bl draw_pixel

    mov x1, 35-465  // (50 - 15)
    mov x2, 57
    ldr x10, gris
    bl draw_pixel

    mov x1, 38-465  // (53 - 15)
    mov x2, 56
    ldr x10, gris
    bl draw_pixel

    mov x1, 38-465  // (53 - 15)
    mov x2, 55
    ldr x10, gris
    bl draw_pixel

    mov x1, 39-465  // (54 - 15)
    mov x2, 55
    ldr x10, gris
    bl draw_pixel

    mov x1, 39-465  // (54 - 15)
    mov x2, 54
    ldr x10, gris
    bl draw_pixel

    mov x1, 40-465  // Coordenada x inicial (55 - 15)
    mov x2, 53        // Coordenada y inicial
    mov x3, 48-465  // Coordenada x final (63 - 15)
    mov x4, 56        // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 48-465  // Coordenada x inicial (63 - 15)
    mov x2, 52        // Coordenada y inicial
    mov x3, 50-465  // Coordenada x final (65 - 15)
    mov x4, 52        // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 50-465  // (65 - 15)
    mov x2, 51
    ldr x10, gris
    bl draw_pixel

    mov x1, 51-465  // Coordenada x inicial (66 - 15)
    mov x2, 51        // Coordenada y inicial
    mov x3, 51-465  // Coordenada x final (66 - 15)
    mov x4, 49        // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 52-465  // Coordenada x inicial (67 - 15)
    mov x2, 49        // Coordenada y inicial
    mov x3, 52-465  // Coordenada x final (67 - 15)
    mov x4, 48        // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 53-465  // Coordenada x inicial (68 - 15)
    mov x2, 48        // Coordenada y inicial
    mov x3, 53-465  // Coordenada x final (68 - 15)
    mov x4, 47        // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 54-465  // (69 - 15)
    mov x2, 47
    ldr x10, gris
    bl draw_pixel

    mov x1, 54-465  // Coordenada x inicial (69 - 15)
    mov x2, 46        // Coordenada y inicial
    mov x3, 56-465  // Coordenada x final (71 - 15)
    mov x4, 46        // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 56-465  // Coordenada x inicial (71 - 15)
    mov x2, 45        // Coordenada y inicial
    mov x3, 58-465  // Coordenada x final (73 - 15)
    mov x4, 45        // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 58-465  // (73 - 15)
    mov x2, 44
    ldr x10, gris
    bl draw_pixel

    mov x1, 59-465  // Coordenada x inicial (74 - 15)
    mov x2, 44        // Coordenada y inicial
    mov x3, 59-465  // Coordenada x final (74 - 15)
    mov x4, 42        // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 60-465  // Coordenada x inicial (75 - 15)
    mov x2, 43        // Coordenada y inicial
    mov x3, 62-465  // Coordenada x final (77 - 15)
    mov x4, 43        // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 62-465  // Coordenada x inicial (77 - 15)
    mov x2, 44        // Coordenada y inicial
    mov x3, 64-465  // Coordenada x final (79 - 15)
    mov x4, 44        // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 64-465  // Coordenada x inicial (79 - 15)
    mov x2, 45        // Coordenada y inicial
    mov x3, 68-465  // Coordenada x final (83 - 15)
    mov x4, 45        // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 66-465  // (81 - 15)
    mov x2, 46
    ldr x10, gris
    bl draw_pixel

    mov x1, 66-465  // (81 - 15)
    mov x2, 47
    ldr x10, gris
    bl draw_pixel

    mov x1, 67-465  // (82 - 15)
    mov x2, 47
    ldr x10, gris
    bl draw_pixel

    mov x1, 67-465  // (82 - 15)
    mov x2, 48
    ldr x10, gris
    bl draw_pixel

    mov x1, 68-465  // (83 - 15)
    mov x2, 48
    ldr x10, gris
    bl draw_pixel

    mov x1, 68-465  // (83 - 15)
    mov x2, 49
    ldr x10, gris
    bl draw_pixel

    mov x1, 69-465  // (84 - 15)
    mov x2, 49
    ldr x10, gris
    bl draw_pixel

    mov x1, 69-465  // (84 - 15)
    mov x2, 50
    ldr x10, gris
    bl draw_pixel

    mov x1, 70-465  // (85 - 15)
    mov x2, 50
    ldr x10, gris
    bl draw_pixel

    mov x1, 71-465 // Coordenada x inicial (86 - 15)
    mov x2, 51        // Coordenada y inicial
    mov x3, 74-465 // Coordenada x final (89 - 15)
    mov x4, 51        // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 75-465 // Coordenada x inicial (90 - 15)
    mov x2, 52        // Coordenada y inicial
    mov x3, 77-465 // Coordenada x final (92 - 15)
    mov x4, 52        // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 77-465 // (92 - 15)
    mov x2, 53
    ldr x10, gris
    bl draw_pixel

    mov x1, 78-465 // Coordenada x inicial (93 - 15)
    mov x2, 53        // Coordenada y inicial
    mov x3, 78-465 // Coordenada x final (93 - 15)
    mov x4, 55        // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 79-465 // (94 - 15)
    mov x2, 55
    ldr x10, gris
    bl draw_pixel

    mov x1, 79-465 // (94 - 15)
    mov x2, 56
    ldr x10, gris
    bl draw_pixel

    mov x1, 80-465 // (95 - 15)
    mov x2, 56
    ldr x10, gris
    bl draw_pixel

    mov x1, 80-465 // (95 - 15)
    mov x2, 57
    ldr x10, gris
    bl draw_pixel

    mov x1, 81-465 // (96 - 15)
    mov x2, 57
    ldr x10, gris
    bl draw_pixel

    mov x1, 82-465 // (97 - 15)
    mov x2, 58
    ldr x10, gris
    bl draw_pixel

    mov x1, 83-465 // (98 - 15)
    mov x2, 59
    ldr x10, gris
    bl draw_pixel

    mov x1, 83-465 // (98 - 15)
    mov X2, 60 
    ldr x10, gris
    bl draw_pixel

    // ------------NUBE2-----------------
    // Base de la nube 
    // Llamada a draw_line_straight para dibujar base de la nube

    mov x1, 273-465  // Coordenada x inicial (288 - 15)
    mov x2, 30         // Coordenada y inicial
    mov x3, 316-465  // Coordenada x final (331 - 15)
    mov x4, 30         // Coordenada y final
    ldr x10, gris
    bl draw_line_straight

    mov x1, 268-465  // (283 - 15)
    mov x2, 28         // Coordenada y inicial (30 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 269-465  // (284 - 15)
    mov x2, 27         // Coordenada y inicial (27 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 269-465  // (284 - 15)
    mov x2, 26         // Coordenada y inicial (26 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 272-465  // (287 - 15)
    mov x2, 25         // Coordenada y inicial (25 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 272-465  // (287 - 15)
    mov x2, 24         // Coordenada y inicial (24 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 273-465  // (288 - 15)
    mov x2, 24         // Coordenada y inicial (24 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 273-465  // (288 - 15)
    mov x2, 23         // Coordenada y inicial (23 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 274-465  // Coordenada x inicial (289 - 15)
    mov x2, 22         // Coordenada y inicial
    mov x3, 274-465  // Coordenada x final (289 - 15)
    mov x4, 25         // Coordenada y final
    ldr x10, gris
    bl draw_line_straight

    mov x1, 282-465  // Coordenada x inicial (297 - 15)
    mov x2, 21         // Coordenada y inicial
    mov x3, 284-465  // Coordenada x final (299 - 15)
    mov x4, 21         // Coordenada y final
    ldr x10, gris
    bl draw_line_straight

    mov x1, 284-465  // (299 - 15)
    mov x2, 20         // Coordenada y inicial (20 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 285-465  // Coordenada x inicial (300 - 15)
    mov x2, 20         // Coordenada y inicial
    mov x3, 285-465  // Coordenada x final (300 - 15)
    mov x4, 18         // Coordenada y final
    ldr x10, gris
    bl draw_line_straight

    mov x1, 286-465  // (301 - 15)
    mov x2, 18         // Coordenada y inicial (18 - 31)
    mov x3, 286-465  // (301 - 15)
    mov x4, 17         // Coordenada y final (17 - 31)
    ldr x10, gris
    bl draw_line_straight

    mov x1, 287-465  // (302 - 15)
    mov x2, 17         // Coordenada y inicial (17 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 286-465  // (301 - 15)
    mov x2, 15         // Coordenada y inicial (15 - 31)
    mov x3, 286-465  // (301 - 15)
    mov x4, 15         // Coordenada y final (15 - 31)
    ldr x10, gris
    bl draw_line_straight

    mov x1, 289-465  // (304 - 15)
    mov x2, 14         // Coordenada y inicial (14 - 31)
    mov x3, 291-465  // (306 - 15)
    mov x4, 14         // Coordenada y final (14 - 31)
    ldr x10, gris
    bl draw_line_straight

    mov x1, 291-465  // (306 - 15)
    mov x2, 13         // Coordenada y inicial (13 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 292-465  // (307 - 15)
    mov x2, 13         // Coordenada y inicial (13 - 31)
    mov x3, 292-465  // (307 - 15)
    mov x4, 11         // Coordenada y final (11 - 31)
    ldr x10, gris
    bl draw_line_straight

    mov x1, 293-465  // (308 - 15)
    mov x2, 12         // Coordenada y inicial (12 - 31)
    mov x3, 295-465  // (310 - 15)
    mov x4, 12         // Coordenada y final (12 - 31)
    ldr x10, gris
    bl draw_line_straight

    mov x1, 295-465  // (310 - 15)
    mov x2, 13         // Coordenada y inicial (13 - 31)
    mov x3, 298-465  // (313 - 15)
    mov x4, 13         // Coordenada y final (13 - 31)
    ldr x10, gris
    bl draw_line_straight

    mov x1, 297-465  // (312 - 15)
    mov x2, 14         // Coordenada y inicial (14 - 31)
    mov x3, 300-465  // (315 - 15)
    mov x4, 14         // Coordenada y final (14 - 31)
    ldr x10, gris
    bl draw_line_straight

    mov x1, 300-465  // (315 - 15)
    mov x2, 15         // Coordenada y inicial (15 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 300-465  // (315 - 15)
    mov x2, 16         // Coordenada y inicial (16 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 301-465  // (316 - 15)
    mov x2, 16         // Coordenada y inicial (16 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 301-465  // (316 - 15)
    mov x2, 17         // Coordenada y inicial (17 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 302-465  // (317 - 15)
    mov x2, 17         // Coordenada y inicial (17 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 302-465  // (317 - 15)
    mov x2, 18         // Coordenada y inicial (18 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 303-465  // (318 - 15)
    mov x2, 18         // Coordenada y inicial (18 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 303-465  // (318 - 15)
    mov x2, 19         // Coordenada y inicial (19 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 304-465  // (319 - 15)
    mov x2, 19         // Coordenada y inicial (19 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 305-465  // (320 - 15)
    mov x2, 20         // Coordenada y inicial (20 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 306-465  // (321 - 15)
    mov x2, 21         // Coordenada y inicial (21 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 307-465  // (322 - 15)
    mov x2, 21         // Coordenada y inicial (21 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 307-465  // (322 - 15)
    mov x2, 22         // Coordenada y inicial (22 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 308-465  // (323 - 15)
    mov x2, 22         // Coordenada y inicial (22 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 309-465  // (324 - 15)
    mov x2, 23         // Coordenada y inicial (23 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 310-465  // (325 - 15)
    mov x2, 24         // Coordenada y inicial (24 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 311-465  // (326 - 15)
    mov x2, 25         // Coordenada y inicial (25 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 312-465  // (327 - 15)
    mov x2, 25         // Coordenada y inicial (25 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 312-465  // (327 - 15)
    mov x2, 26         // Coordenada y inicial (26 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 313-465  // (328 - 15)
    mov x2, 26         // Coordenada y inicial (26 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 313-465  // (328 - 15)
    mov x2, 27         // Coordenada y inicial (27 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 314-465  // (329 - 15)
    mov x2, 27         // Coordenada y inicial (27 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 315-465  // (330 - 15)
    mov x2, 28         // Coordenada y inicial (28 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 315-465  // (330 - 15)
    mov x2, 29         // Coordenada y inicial (29 - 31)
    ldr x10, gris
    bl draw_pixel

    //----------NUBE3-----------------
    // Base de la nube 
    // Llamada a draw_line_straight para dibujar base de la nube

    mov x1, 495-465  // Coordenada x inicial (525 )
    mov x2, 91             // Coordenada y inicial
    mov x3, 538-465  // Coordenada x final (568 )
    mov x4, 91             // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    // Parte de arriba de la nube

    mov x1, 490-465  // Coordenada x inicial (520 )
    mov x2, 89             // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 491-465  // Coordenada x inicial (521 )
    mov x2, 88             // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 491-465  // Coordenada x inicial (521 )
    mov x2, 87             // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 494-465  // Coordenada x inicial (524 )
    mov x2, 86             // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 494-465  // Coordenada x inicial (524 )
    mov x2, 85             // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 495-465  // Coordenada x inicial (525 )
    mov x2, 85             // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 495-465  // Coordenada x inicial (525 )
    mov x2, 84             // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 496-465  // Coordenada x inicial (526 )
    mov x2, 83             // Coordenada y inicial
    mov x3, 504-465  // Coordenada x final (534 )
    mov x4, 86             // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 504-465  // Coordenada x inicial (534 )
    mov x2, 82             // Coordenada y inicial
    mov x3, 506-465  // Coordenada x final (536 )
    mov x4, 82             // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 506-465  // Coordenada x inicial (536 )
    mov x2, 81             // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 507-465  // Coordenada x inicial (537 )
    mov x2, 81             // Coordenada y inicial
    mov x3, 507-465  // Coordenada x final (537 )
    mov x4, 79             // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 508-465  // Coordenada x inicial (538 )
    mov x2, 79             // Coordenada y inicial
    mov x3, 508-465  // Coordenada x final (538 )
    mov x4, 78             // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 509-465  // Coordenada x inicial (539 )
    mov x2, 78             // Coordenada y inicial
    mov x3, 509-465  // Coordenada x final (539 )
    mov x4, 77             // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 510-465  // Coordenada x inicial (540 )
    mov x2, 77             // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 510-465  // Coordenada x inicial (540 )
    mov x2, 76             // Coordenada y inicial
    mov x3, 512-465  // Coordenada x final (542 )
    mov x4, 76             // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 512-465  // Coordenada x inicial (542 )
    mov x2, 75             // Coordenada y inicial
    mov x3, 514-465  // Coordenada x final (544 )
    mov x4, 75             // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 514-465  // Coordenada x inicial (544 )
    mov x2, 74             // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 515-465  // Coordenada x inicial (545 )
    mov x2, 74             // Coordenada y inicial
    mov x3, 515-465  // Coordenada x final (545 )
    mov x4, 72             // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 516-465  // Coordenada x inicial (546 )
    mov x2, 73             // Coordenada y inicial
    mov x3, 518-465  // Coordenada x final (548 )
    mov x4, 73             // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 518-465  // Coordenada x inicial (548 )
    mov x2, 74             // Coordenada y inicial
    mov x3, 520-465  // Coordenada x final (550 )
    mov x4, 74             // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 520-465  // Coordenada x inicial (550 )
    mov x2, 75             // Coordenada y inicial
    mov x3, 522-465  // Coordenada x final (552 )
    mov x4, 75             // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 522-465  // Coordenada x inicial 
    mov x2, 76             // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 522-465  // Coordenada x inicial (552 )
    mov x2, 77             // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 523-465  // Coordenada x inicial (553 )
    mov x2, 77             // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 523-465  // Coordenada x inicial (553 )
    mov x2, 78             // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 524-465  // Coordenada x inicial (554 )
    mov x2, 78             // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 524-465  // Coordenada x inicial (554 )
    mov x2, 79             // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 525-465  // Coordenada x inicial (555 )
    mov x2, 79             // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 525-465  // Coordenada x inicial (555 )
    mov x2, 80             // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 526-465  // Coordenada x inicial (556 )
    mov x2, 80             // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 527-465  // Coordenada x inicial (557 )
    mov x2, 81             // Coordenada y inicial
    mov x3, 530-465  // Coordenada x final (560 )
    mov x4, 81             // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 531-465  // Coordenada x inicial (561 )
    mov x2, 82             // Coordenada y inicial
    mov x3, 533-465  // Coordenada x final (563 )
    mov x4, 82             // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 533-465  // Coordenada x inicial (563 )
    mov x2, 83             // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 534-465  // Coordenada x inicial (564 )
    mov x2, 83             // Coordenada y inicial
    mov x3, 534-465  // Coordenada x final (564 )
    mov x4, 85             // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 535-465  // Coordenada x inicial (565 )
    mov x2, 85             // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 535-465  // Coordenada x inicial (565 )
    mov x2, 86             // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 536-465  // Coordenada x inicial (566 )
    mov x2, 86             // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 536-465  // Coordenada x inicial (566 )
    mov x2, 87             // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 537-465  // Coordenada x inicial (567 )
    mov x2, 87             // Coordenada y
    ldr x10, gris
    bl draw_pixel

    mov x1, 538-465  // Coordenada x inicial (568 )
    mov x2, 88             // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 538-465  // Coordenada x inicial (568 )
    mov x2, 89             // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

 
    LDR X30, [SP, #32]
    LDR X4, [SP, #24]
    LDR X3, [SP, #16]
    LDR X2, [SP, #8]
    LDR X1, [SP]
    ADD SP, SP, #40
    ret

nubes24:
    SUB SP, SP, #40
    STR X1, [SP]
    STR X2, [SP, #8]
    STR X3, [SP, #16]
    STR X4, [SP, #24]
    STR X30, [SP, #32]

    //----------NUBE1-----------------
    // Base de la nube 
    // Llamada a draw_line_straight para dibujar base de la nube
    mov x1, 39-495  // Coordenada x inicial (54 - 15)
    mov x2, 61        // Coordenada y inicial
    mov x3, 82-495  // Coordenada x final (97 - 15)
    mov x4, 61        // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    // Parte de arriba de la nube
    mov x1, 34-495  // (49 - 15)
    mov x2, 59
    ldr x10, gris
    bl draw_pixel

    mov x1, 35-495  // (50 - 15)
    mov x2, 58
    ldr x10, gris
    bl draw_pixel

    mov x1, 35-495  // (50 - 15)
    mov x2, 57
    ldr x10, gris
    bl draw_pixel

    mov x1, 38-495  // (53 - 15)
    mov x2, 56
    ldr x10, gris
    bl draw_pixel

    mov x1, 38-495  // (53 - 15)
    mov x2, 55
    ldr x10, gris
    bl draw_pixel

    mov x1, 39-495  // (54 - 15)
    mov x2, 55
    ldr x10, gris
    bl draw_pixel

    mov x1, 39-495  // (54 - 15)
    mov x2, 54
    ldr x10, gris
    bl draw_pixel

    mov x1, 40-495  // Coordenada x inicial (55 - 15)
    mov x2, 53        // Coordenada y inicial
    mov x3, 48-495  // Coordenada x final (63 - 15)
    mov x4, 56        // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 48-495  // Coordenada x inicial (63 - 15)
    mov x2, 52        // Coordenada y inicial
    mov x3, 50-495  // Coordenada x final (65 - 15)
    mov x4, 52        // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 50-495  // (65 - 15)
    mov x2, 51
    ldr x10, gris
    bl draw_pixel

    mov x1, 51-495  // Coordenada x inicial (66 - 15)
    mov x2, 51        // Coordenada y inicial
    mov x3, 51-495  // Coordenada x final (66 - 15)
    mov x4, 49        // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 52-495  // Coordenada x inicial (67 - 15)
    mov x2, 49        // Coordenada y inicial
    mov x3, 52-495  // Coordenada x final (67 - 15)
    mov x4, 48        // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 53-495  // Coordenada x inicial (68 - 15)
    mov x2, 48        // Coordenada y inicial
    mov x3, 53-495  // Coordenada x final (68 - 15)
    mov x4, 47        // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 54-495  // (69 - 15)
    mov x2, 47
    ldr x10, gris
    bl draw_pixel

    mov x1, 54-495  // Coordenada x inicial (69 - 15)
    mov x2, 46        // Coordenada y inicial
    mov x3, 56-495  // Coordenada x final (71 - 15)
    mov x4, 46        // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 56-495  // Coordenada x inicial (71 - 15)
    mov x2, 45        // Coordenada y inicial
    mov x3, 58-495  // Coordenada x final (73 - 15)
    mov x4, 45        // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 58-495  // (73 - 15)
    mov x2, 44
    ldr x10, gris
    bl draw_pixel

    mov x1, 59-495  // Coordenada x inicial (74 - 15)
    mov x2, 44        // Coordenada y inicial
    mov x3, 59-495  // Coordenada x final (74 - 15)
    mov x4, 42        // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 60-495  // Coordenada x inicial (75 - 15)
    mov x2, 43        // Coordenada y inicial
    mov x3, 62-495  // Coordenada x final (77 - 15)
    mov x4, 43        // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 62-495  // Coordenada x inicial (77 - 15)
    mov x2, 44        // Coordenada y inicial
    mov x3, 64-495  // Coordenada x final (79 - 15)
    mov x4, 44        // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 64-495  // Coordenada x inicial (79 - 15)
    mov x2, 45        // Coordenada y inicial
    mov x3, 68-495  // Coordenada x final (83 - 15)
    mov x4, 45        // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 66-495  // (81 - 15)
    mov x2, 46
    ldr x10, gris
    bl draw_pixel

    mov x1, 66-495  // (81 - 15)
    mov x2, 47
    ldr x10, gris
    bl draw_pixel

    mov x1, 67-495  // (82 - 15)
    mov x2, 47
    ldr x10, gris
    bl draw_pixel

    mov x1, 67-495  // (82 - 15)
    mov x2, 48
    ldr x10, gris
    bl draw_pixel

    mov x1, 68-495  // (83 - 15)
    mov x2, 48
    ldr x10, gris
    bl draw_pixel

    mov x1, 68-495  // (83 - 15)
    mov x2, 49
    ldr x10, gris
    bl draw_pixel

    mov x1, 69-495  // (84 - 15)
    mov x2, 49
    ldr x10, gris
    bl draw_pixel

    mov x1, 69-495  // (84 - 15)
    mov x2, 50
    ldr x10, gris
    bl draw_pixel

    mov x1, 70-495  // (85 - 15)
    mov x2, 50
    ldr x10, gris
    bl draw_pixel

    mov x1, 71-495 // Coordenada x inicial (86 - 15)
    mov x2, 51        // Coordenada y inicial
    mov x3, 74-495 // Coordenada x final (89 - 15)
    mov x4, 51        // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 75-495 // Coordenada x inicial (90 - 15)
    mov x2, 52        // Coordenada y inicial
    mov x3, 77-495 // Coordenada x final (92 - 15)
    mov x4, 52        // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 77-495 // (92 - 15)
    mov x2, 53
    ldr x10, gris
    bl draw_pixel

    mov x1, 78-495 // Coordenada x inicial (93 - 15)
    mov x2, 53        // Coordenada y inicial
    mov x3, 78-495 // Coordenada x final (93 - 15)
    mov x4, 55        // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 79-495 // (94 - 15)
    mov x2, 55
    ldr x10, gris
    bl draw_pixel

    mov x1, 79-495 // (94 - 15)
    mov x2, 56
    ldr x10, gris
    bl draw_pixel

    mov x1, 80-495 // (95 - 15)
    mov x2, 56
    ldr x10, gris
    bl draw_pixel

    mov x1, 80-495 // (95 - 15)
    mov x2, 57
    ldr x10, gris
    bl draw_pixel

    mov x1, 81-495 // (96 - 15)
    mov x2, 57
    ldr x10, gris
    bl draw_pixel

    mov x1, 82-495 // (97 - 15)
    mov x2, 58
    ldr x10, gris
    bl draw_pixel

    mov x1, 83-495 // (98 - 15)
    mov x2, 59
    ldr x10, gris
    bl draw_pixel

    mov x1, 83-495 // (98 - 15)
    mov X2, 60 
    ldr x10, gris
    bl draw_pixel

    // ------------NUBE2-----------------
    // Base de la nube 
    // Llamada a draw_line_straight para dibujar base de la nube

    mov x1, 273-495  // Coordenada x inicial (288 - 15)
    mov x2, 30         // Coordenada y inicial
    mov x3, 316-495  // Coordenada x final (331 - 15)
    mov x4, 30         // Coordenada y final
    ldr x10, gris
    bl draw_line_straight

    mov x1, 268-495  // (283 - 15)
    mov x2, 28         // Coordenada y inicial (30 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 269-495  // (284 - 15)
    mov x2, 27         // Coordenada y inicial (27 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 269-495  // (284 - 15)
    mov x2, 26         // Coordenada y inicial (26 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 272-495  // (287 - 15)
    mov x2, 25         // Coordenada y inicial (25 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 272-495  // (287 - 15)
    mov x2, 24         // Coordenada y inicial (24 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 273-495  // (288 - 15)
    mov x2, 24         // Coordenada y inicial (24 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 273-495  // (288 - 15)
    mov x2, 23         // Coordenada y inicial (23 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 274-495  // Coordenada x inicial (289 - 15)
    mov x2, 22         // Coordenada y inicial
    mov x3, 274-495  // Coordenada x final (289 - 15)
    mov x4, 25         // Coordenada y final
    ldr x10, gris
    bl draw_line_straight

    mov x1, 282-495  // Coordenada x inicial (297 - 15)
    mov x2, 21         // Coordenada y inicial
    mov x3, 284-495  // Coordenada x final (299 - 15)
    mov x4, 21         // Coordenada y final
    ldr x10, gris
    bl draw_line_straight

    mov x1, 284-495  // (299 - 15)
    mov x2, 20         // Coordenada y inicial (20 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 285-495  // Coordenada x inicial (300 - 15)
    mov x2, 20         // Coordenada y inicial
    mov x3, 285-495  // Coordenada x final (300 - 15)
    mov x4, 18         // Coordenada y final
    ldr x10, gris
    bl draw_line_straight

    mov x1, 286-495  // (301 - 15)
    mov x2, 18         // Coordenada y inicial (18 - 31)
    mov x3, 286-495  // (301 - 15)
    mov x4, 17         // Coordenada y final (17 - 31)
    ldr x10, gris
    bl draw_line_straight

    mov x1, 287-495  // (302 - 15)
    mov x2, 17         // Coordenada y inicial (17 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 286-495  // (301 - 15)
    mov x2, 15         // Coordenada y inicial (15 - 31)
    mov x3, 286-495  // (301 - 15)
    mov x4, 15         // Coordenada y final (15 - 31)
    ldr x10, gris
    bl draw_line_straight

    mov x1, 289-495  // (304 - 15)
    mov x2, 14         // Coordenada y inicial (14 - 31)
    mov x3, 291-495  // (306 - 15)
    mov x4, 14         // Coordenada y final (14 - 31)
    ldr x10, gris
    bl draw_line_straight

    mov x1, 291-495  // (306 - 15)
    mov x2, 13         // Coordenada y inicial (13 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 292-495  // (307 - 15)
    mov x2, 13         // Coordenada y inicial (13 - 31)
    mov x3, 292-495  // (307 - 15)
    mov x4, 11         // Coordenada y final (11 - 31)
    ldr x10, gris
    bl draw_line_straight

    mov x1, 293-495  // (308 - 15)
    mov x2, 12         // Coordenada y inicial (12 - 31)
    mov x3, 295-495  // (310 - 15)
    mov x4, 12         // Coordenada y final (12 - 31)
    ldr x10, gris
    bl draw_line_straight

    mov x1, 295-495  // (310 - 15)
    mov x2, 13         // Coordenada y inicial (13 - 31)
    mov x3, 298-495  // (313 - 15)
    mov x4, 13         // Coordenada y final (13 - 31)
    ldr x10, gris
    bl draw_line_straight

    mov x1, 297-495  // (312 - 15)
    mov x2, 14         // Coordenada y inicial (14 - 31)
    mov x3, 300-495  // (315 - 15)
    mov x4, 14         // Coordenada y final (14 - 31)
    ldr x10, gris
    bl draw_line_straight

    mov x1, 300-495  // (315 - 15)
    mov x2, 15         // Coordenada y inicial (15 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 300-495  // (315 - 15)
    mov x2, 16         // Coordenada y inicial (16 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 301-495  // (316 - 15)
    mov x2, 16         // Coordenada y inicial (16 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 301-495  // (316 - 15)
    mov x2, 17         // Coordenada y inicial (17 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 302-495  // (317 - 15)
    mov x2, 17         // Coordenada y inicial (17 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 302-495  // (317 - 15)
    mov x2, 18         // Coordenada y inicial (18 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 303-495  // (318 - 15)
    mov x2, 18         // Coordenada y inicial (18 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 303-495  // (318 - 15)
    mov x2, 19         // Coordenada y inicial (19 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 304-495  // (319 - 15)
    mov x2, 19         // Coordenada y inicial (19 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 305-495  // (320 - 15)
    mov x2, 20         // Coordenada y inicial (20 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 306-495  // (321 - 15)
    mov x2, 21         // Coordenada y inicial (21 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 307-495  // (322 - 15)
    mov x2, 21         // Coordenada y inicial (21 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 307-495  // (322 - 15)
    mov x2, 22         // Coordenada y inicial (22 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 308-495  // (323 - 15)
    mov x2, 22         // Coordenada y inicial (22 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 309-495  // (324 - 15)
    mov x2, 23         // Coordenada y inicial (23 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 310-495  // (325 - 15)
    mov x2, 24         // Coordenada y inicial (24 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 311-495  // (326 - 15)
    mov x2, 25         // Coordenada y inicial (25 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 312-495  // (327 - 15)
    mov x2, 25         // Coordenada y inicial (25 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 312-495  // (327 - 15)
    mov x2, 26         // Coordenada y inicial (26 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 313-495  // (328 - 15)
    mov x2, 26         // Coordenada y inicial (26 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 313-495  // (328 - 15)
    mov x2, 27         // Coordenada y inicial (27 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 314-495  // (329 - 15)
    mov x2, 27         // Coordenada y inicial (27 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 315-495  // (330 - 15)
    mov x2, 28         // Coordenada y inicial (28 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 315-495  // (330 - 15)
    mov x2, 29         // Coordenada y inicial (29 - 31)
    ldr x10, gris
    bl draw_pixel

    //----------NUBE3-----------------
    // Base de la nube 
    // Llamada a draw_line_straight para dibujar base de la nube

    mov x1, 495-495  // Coordenada x inicial (525 )
    mov x2, 91             // Coordenada y inicial
    mov x3, 538-495  // Coordenada x final (568 )
    mov x4, 91             // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    // Parte de arriba de la nube

    mov x1, 490-495  // Coordenada x inicial (520 )
    mov x2, 89             // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 491-495  // Coordenada x inicial (521 )
    mov x2, 88             // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 491-495  // Coordenada x inicial (521 )
    mov x2, 87             // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 494-495  // Coordenada x inicial (524 )
    mov x2, 86             // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 494-495  // Coordenada x inicial (524 )
    mov x2, 85             // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 495-495  // Coordenada x inicial (525 )
    mov x2, 85             // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 495-495  // Coordenada x inicial (525 )
    mov x2, 84             // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 496-495  // Coordenada x inicial (526 )
    mov x2, 83             // Coordenada y inicial
    mov x3, 504-495  // Coordenada x final (534 )
    mov x4, 86             // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 504-495  // Coordenada x inicial (534 )
    mov x2, 82             // Coordenada y inicial
    mov x3, 506-495  // Coordenada x final (536 )
    mov x4, 82             // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 506-495  // Coordenada x inicial (536 )
    mov x2, 81             // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 507-495  // Coordenada x inicial (537 )
    mov x2, 81             // Coordenada y inicial
    mov x3, 507-495  // Coordenada x final (537 )
    mov x4, 79             // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 508-495  // Coordenada x inicial (538 )
    mov x2, 79             // Coordenada y inicial
    mov x3, 508-495  // Coordenada x final (538 )
    mov x4, 78             // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 509-495  // Coordenada x inicial (539 )
    mov x2, 78             // Coordenada y inicial
    mov x3, 509-495  // Coordenada x final (539 )
    mov x4, 77             // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 510-495  // Coordenada x inicial (540 )
    mov x2, 77             // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 510-495  // Coordenada x inicial (540 )
    mov x2, 76             // Coordenada y inicial
    mov x3, 512-495  // Coordenada x final (542 )
    mov x4, 76             // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 512-495  // Coordenada x inicial (542 )
    mov x2, 75             // Coordenada y inicial
    mov x3, 514-495  // Coordenada x final (544 )
    mov x4, 75             // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 514-495  // Coordenada x inicial (544 )
    mov x2, 74             // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 515-495  // Coordenada x inicial (545 )
    mov x2, 74             // Coordenada y inicial
    mov x3, 515-495  // Coordenada x final (545 )
    mov x4, 72             // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 516-495  // Coordenada x inicial (546 )
    mov x2, 73             // Coordenada y inicial
    mov x3, 518-495  // Coordenada x final (548 )
    mov x4, 73             // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 518-495  // Coordenada x inicial (548 )
    mov x2, 74             // Coordenada y inicial
    mov x3, 520-495  // Coordenada x final (550 )
    mov x4, 74             // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 520-495  // Coordenada x inicial (550 )
    mov x2, 75             // Coordenada y inicial
    mov x3, 522-495  // Coordenada x final (552 )
    mov x4, 75             // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 522-495  // Coordenada x inicial 
    mov x2, 76             // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 522-495  // Coordenada x inicial (552 )
    mov x2, 77             // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 523-495  // Coordenada x inicial (553 )
    mov x2, 77             // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 523-495  // Coordenada x inicial (553 )
    mov x2, 78             // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 524-495  // Coordenada x inicial (554 )
    mov x2, 78             // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 524-495  // Coordenada x inicial (554 )
    mov x2, 79             // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 525-495  // Coordenada x inicial (555 )
    mov x2, 79             // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 525-495  // Coordenada x inicial (555 )
    mov x2, 80             // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 526-495  // Coordenada x inicial (556 )
    mov x2, 80             // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 527-495  // Coordenada x inicial (557 )
    mov x2, 81             // Coordenada y inicial
    mov x3, 530-495  // Coordenada x final (560 )
    mov x4, 81             // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 531-495  // Coordenada x inicial (561 )
    mov x2, 82             // Coordenada y inicial
    mov x3, 533-495  // Coordenada x final (563 )
    mov x4, 82             // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 533-495  // Coordenada x inicial (563 )
    mov x2, 83             // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 534-495  // Coordenada x inicial (564 )
    mov x2, 83             // Coordenada y inicial
    mov x3, 534-495  // Coordenada x final (564 )
    mov x4, 85             // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 535-495  // Coordenada x inicial (565 )
    mov x2, 85             // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 535-495  // Coordenada x inicial (565 )
    mov x2, 86             // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 536-495  // Coordenada x inicial (566 )
    mov x2, 86             // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 536-495  // Coordenada x inicial (566 )
    mov x2, 87             // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 537-495  // Coordenada x inicial (567 )
    mov x2, 87             // Coordenada y
    ldr x10, gris
    bl draw_pixel

    mov x1, 538-495  // Coordenada x inicial (568 )
    mov x2, 88             // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 538-495  // Coordenada x inicial (568 )
    mov x2, 89             // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

 
    LDR X30, [SP, #32]
    LDR X4, [SP, #24]
    LDR X3, [SP, #16]
    LDR X2, [SP, #8]
    LDR X1, [SP]
    ADD SP, SP, #40
    ret 

nubes25:

    SUB SP, SP, #40
    STR X1, [SP]
    STR X2, [SP, #8]
    STR X3, [SP, #16]
    STR X4, [SP, #24]
    STR X30, [SP, #32]

    //----------NUBE1-----------------
    // Base de la nube 
    // Llamada a draw_line_straight para dibujar base de la nube
    mov x1, 39-525  // Coordenada x inicial (54 - 15)
    mov x2, 61        // Coordenada y inicial
    mov x3, 82-525  // Coordenada x final (97 - 15)
    mov x4, 61        // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    // Parte de arriba de la nube
    mov x1, 34-525  // (49 - 15)
    mov x2, 59
    ldr x10, gris
    bl draw_pixel

    mov x1, 35-525  // (50 - 15)
    mov x2, 58
    ldr x10, gris
    bl draw_pixel

    mov x1, 35-525  // (50 - 15)
    mov x2, 57
    ldr x10, gris
    bl draw_pixel

    mov x1, 38-525  // (53 - 15)
    mov x2, 56
    ldr x10, gris
    bl draw_pixel

    mov x1, 38-525  // (53 - 15)
    mov x2, 55
    ldr x10, gris
    bl draw_pixel

    mov x1, 39-525  // (54 - 15)
    mov x2, 55
    ldr x10, gris
    bl draw_pixel

    mov x1, 39-525  // (54 - 15)
    mov x2, 54
    ldr x10, gris
    bl draw_pixel

    mov x1, 40-525  // Coordenada x inicial (55 - 15)
    mov x2, 53        // Coordenada y inicial
    mov x3, 48-525  // Coordenada x final (63 - 15)
    mov x4, 56        // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 48-525  // Coordenada x inicial (63 - 15)
    mov x2, 52        // Coordenada y inicial
    mov x3, 50-525  // Coordenada x final (65 - 15)
    mov x4, 52        // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 50-525  // (65 - 15)
    mov x2, 51
    ldr x10, gris
    bl draw_pixel

    mov x1, 51-525  // Coordenada x inicial (66 - 15)
    mov x2, 51        // Coordenada y inicial
    mov x3, 51-525  // Coordenada x final (66 - 15)
    mov x4, 49        // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 52-525  // Coordenada x inicial (67 - 15)
    mov x2, 49        // Coordenada y inicial
    mov x3, 52-525  // Coordenada x final (67 - 15)
    mov x4, 48        // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 53-525  // Coordenada x inicial (68 - 15)
    mov x2, 48        // Coordenada y inicial
    mov x3, 53-525  // Coordenada x final (68 - 15)
    mov x4, 47        // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 54-525  // (69 - 15)
    mov x2, 47
    ldr x10, gris
    bl draw_pixel

    mov x1, 54-525  // Coordenada x inicial (69 - 15)
    mov x2, 46        // Coordenada y inicial
    mov x3, 56-525  // Coordenada x final (71 - 15)
    mov x4, 46        // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 56-525  // Coordenada x inicial (71 - 15)
    mov x2, 45        // Coordenada y inicial
    mov x3, 58-525  // Coordenada x final (73 - 15)
    mov x4, 45        // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 58-525  // (73 - 15)
    mov x2, 44
    ldr x10, gris
    bl draw_pixel

    mov x1, 59-525  // Coordenada x inicial (74 - 15)
    mov x2, 44        // Coordenada y inicial
    mov x3, 59-525  // Coordenada x final (74 - 15)
    mov x4, 42        // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 60-525  // Coordenada x inicial (75 - 15)
    mov x2, 43        // Coordenada y inicial
    mov x3, 62-525  // Coordenada x final (77 - 15)
    mov x4, 43        // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 62-525  // Coordenada x inicial (77 - 15)
    mov x2, 44        // Coordenada y inicial
    mov x3, 64-525  // Coordenada x final (79 - 15)
    mov x4, 44        // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 64-525  // Coordenada x inicial (79 - 15)
    mov x2, 45        // Coordenada y inicial
    mov x3, 68-525  // Coordenada x final (83 - 15)
    mov x4, 45        // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 66-525  // (81 - 15)
    mov x2, 46
    ldr x10, gris
    bl draw_pixel

    mov x1, 66-525  // (81 - 15)
    mov x2, 47
    ldr x10, gris
    bl draw_pixel

    mov x1, 67-525  // (82 - 15)
    mov x2, 47
    ldr x10, gris
    bl draw_pixel

    mov x1, 67-525  // (82 - 15)
    mov x2, 48
    ldr x10, gris
    bl draw_pixel

    mov x1, 68-525  // (83 - 15)
    mov x2, 48
    ldr x10, gris
    bl draw_pixel

    mov x1, 68-525  // (83 - 15)
    mov x2, 49
    ldr x10, gris
    bl draw_pixel

    mov x1, 69-525  // (84 - 15)
    mov x2, 49
    ldr x10, gris
    bl draw_pixel

    mov x1, 69-525  // (84 - 15)
    mov x2, 50
    ldr x10, gris
    bl draw_pixel

    mov x1, 70-525  // (85 - 15)
    mov x2, 50
    ldr x10, gris
    bl draw_pixel

    mov x1, 71-525 // Coordenada x inicial (86 - 15)
    mov x2, 51        // Coordenada y inicial
    mov x3, 74-525 // Coordenada x final (89 - 15)
    mov x4, 51        // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 75-525 // Coordenada x inicial (90 - 15)
    mov x2, 52        // Coordenada y inicial
    mov x3, 77-525 // Coordenada x final (92 - 15)
    mov x4, 52        // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 77-525 // (92 - 15)
    mov x2, 53
    ldr x10, gris
    bl draw_pixel

    mov x1, 78-525 // Coordenada x inicial (93 - 15)
    mov x2, 53        // Coordenada y inicial
    mov x3, 78-525 // Coordenada x final (93 - 15)
    mov x4, 55        // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 79-525 // (94 - 15)
    mov x2, 55
    ldr x10, gris
    bl draw_pixel

    mov x1, 79-525 // (94 - 15)
    mov x2, 56
    ldr x10, gris
    bl draw_pixel

    mov x1, 80-525 // (95 - 15)
    mov x2, 56
    ldr x10, gris
    bl draw_pixel

    mov x1, 80-525 // (95 - 15)
    mov x2, 57
    ldr x10, gris
    bl draw_pixel

    mov x1, 81-525 // (96 - 15)
    mov x2, 57
    ldr x10, gris
    bl draw_pixel

    mov x1, 82-525 // (97 - 15)
    mov x2, 58
    ldr x10, gris
    bl draw_pixel

    mov x1, 83-525 // (98 - 15)
    mov x2, 59
    ldr x10, gris
    bl draw_pixel

    mov x1, 83-525 // (98 - 15)
    mov X2, 60 
    ldr x10, gris
    bl draw_pixel

    // ------------NUBE2-----------------
    // Base de la nube 
    // Llamada a draw_line_straight para dibujar base de la nube

    mov x1, 273-525  // Coordenada x inicial (288 - 15)
    mov x2, 30         // Coordenada y inicial
    mov x3, 316-525  // Coordenada x final (331 - 15)
    mov x4, 30         // Coordenada y final
    ldr x10, gris
    bl draw_line_straight

    mov x1, 268-525  // (283 - 15)
    mov x2, 28         // Coordenada y inicial (30 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 269-525  // (284 - 15)
    mov x2, 27         // Coordenada y inicial (27 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 269-525  // (284 - 15)
    mov x2, 26         // Coordenada y inicial (26 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 272-525  // (287 - 15)
    mov x2, 25         // Coordenada y inicial (25 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 272-525  // (287 - 15)
    mov x2, 24         // Coordenada y inicial (24 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 273-525  // (288 - 15)
    mov x2, 24         // Coordenada y inicial (24 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 273-525  // (288 - 15)
    mov x2, 23         // Coordenada y inicial (23 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 274-525  // Coordenada x inicial (289 - 15)
    mov x2, 22         // Coordenada y inicial
    mov x3, 274-525  // Coordenada x final (289 - 15)
    mov x4, 25         // Coordenada y final
    ldr x10, gris
    bl draw_line_straight

    mov x1, 282-525  // Coordenada x inicial (297 - 15)
    mov x2, 21         // Coordenada y inicial
    mov x3, 284-525  // Coordenada x final (299 - 15)
    mov x4, 21         // Coordenada y final
    ldr x10, gris
    bl draw_line_straight

    mov x1, 284-525  // (299 - 15)
    mov x2, 20         // Coordenada y inicial (20 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 285-525  // Coordenada x inicial (300 - 15)
    mov x2, 20         // Coordenada y inicial
    mov x3, 285-525  // Coordenada x final (300 - 15)
    mov x4, 18         // Coordenada y final
    ldr x10, gris
    bl draw_line_straight

    mov x1, 286-525  // (301 - 15)
    mov x2, 18         // Coordenada y inicial (18 - 31)
    mov x3, 286-525  // (301 - 15)
    mov x4, 17         // Coordenada y final (17 - 31)
    ldr x10, gris
    bl draw_line_straight

    mov x1, 287-525  // (302 - 15)
    mov x2, 17         // Coordenada y inicial (17 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 286-525  // (301 - 15)
    mov x2, 15         // Coordenada y inicial (15 - 31)
    mov x3, 286-525  // (301 - 15)
    mov x4, 15         // Coordenada y final (15 - 31)
    ldr x10, gris
    bl draw_line_straight

    mov x1, 289-525  // (304 - 15)
    mov x2, 14         // Coordenada y inicial (14 - 31)
    mov x3, 291-525  // (306 - 15)
    mov x4, 14         // Coordenada y final (14 - 31)
    ldr x10, gris
    bl draw_line_straight

    mov x1, 291-525  // (306 - 15)
    mov x2, 13         // Coordenada y inicial (13 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 292-525  // (307 - 15)
    mov x2, 13         // Coordenada y inicial (13 - 31)
    mov x3, 292-525  // (307 - 15)
    mov x4, 11         // Coordenada y final (11 - 31)
    ldr x10, gris
    bl draw_line_straight

    mov x1, 293-525  // (308 - 15)
    mov x2, 12         // Coordenada y inicial (12 - 31)
    mov x3, 295-525  // (310 - 15)
    mov x4, 12         // Coordenada y final (12 - 31)
    ldr x10, gris
    bl draw_line_straight

    mov x1, 295-525  // (310 - 15)
    mov x2, 13         // Coordenada y inicial (13 - 31)
    mov x3, 298-525  // (313 - 15)
    mov x4, 13         // Coordenada y final (13 - 31)
    ldr x10, gris
    bl draw_line_straight

    mov x1, 297-525  // (312 - 15)
    mov x2, 14         // Coordenada y inicial (14 - 31)
    mov x3, 300-525  // (315 - 15)
    mov x4, 14         // Coordenada y final (14 - 31)
    ldr x10, gris
    bl draw_line_straight

    mov x1, 300-525  // (315 - 15)
    mov x2, 15         // Coordenada y inicial (15 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 300-525  // (315 - 15)
    mov x2, 16         // Coordenada y inicial (16 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 301-525  // (316 - 15)
    mov x2, 16         // Coordenada y inicial (16 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 301-525  // (316 - 15)
    mov x2, 17         // Coordenada y inicial (17 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 302-525  // (317 - 15)
    mov x2, 17         // Coordenada y inicial (17 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 302-525  // (317 - 15)
    mov x2, 18         // Coordenada y inicial (18 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 303-525  // (318 - 15)
    mov x2, 18         // Coordenada y inicial (18 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 303-525  // (318 - 15)
    mov x2, 19         // Coordenada y inicial (19 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 304-525  // (319 - 15)
    mov x2, 19         // Coordenada y inicial (19 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 305-525  // (320 - 15)
    mov x2, 20         // Coordenada y inicial (20 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 306-525  // (321 - 15)
    mov x2, 21         // Coordenada y inicial (21 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 307-525  // (322 - 15)
    mov x2, 21         // Coordenada y inicial (21 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 307-525  // (322 - 15)
    mov x2, 22         // Coordenada y inicial (22 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 308-525  // (323 - 15)
    mov x2, 22         // Coordenada y inicial (22 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 309-525  // (324 - 15)
    mov x2, 23         // Coordenada y inicial (23 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 310-525  // (325 - 15)
    mov x2, 24         // Coordenada y inicial (24 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 311-525  // (326 - 15)
    mov x2, 25         // Coordenada y inicial (25 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 312-525  // (327 - 15)
    mov x2, 25         // Coordenada y inicial (25 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 312-525  // (327 - 15)
    mov x2, 26         // Coordenada y inicial (26 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 313-525  // (328 - 15)
    mov x2, 26         // Coordenada y inicial (26 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 313-525  // (328 - 15)
    mov x2, 27         // Coordenada y inicial (27 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 314-525  // (329 - 15)
    mov x2, 27         // Coordenada y inicial (27 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 315-525  // (330 - 15)
    mov x2, 28         // Coordenada y inicial (28 - 31)
    ldr x10, gris
    bl draw_pixel

    mov x1, 315-525  // (330 - 15)
    mov x2, 29         // Coordenada y inicial (29 - 31)
    ldr x10, gris
    bl draw_pixel

    //----------NUBE3-----------------
    // Base de la nube 
    // Llamada a draw_line_straight para dibujar base de la nube

    mov x1, 495-525  // Coordenada x inicial (525 )
    mov x2, 91             // Coordenada y inicial
    mov x3, 538-525  // Coordenada x final (568 )
    mov x4, 91             // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    // Parte de arriba de la nube

    mov x1, 490-525  // Coordenada x inicial (520 )
    mov x2, 89             // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 491-525  // Coordenada x inicial (521 )
    mov x2, 88             // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 491-525  // Coordenada x inicial (521 )
    mov x2, 87             // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 494-525  // Coordenada x inicial (524 )
    mov x2, 86             // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 494-525  // Coordenada x inicial (524 )
    mov x2, 85             // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 495-525  // Coordenada x inicial (525 )
    mov x2, 85             // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 495-525  // Coordenada x inicial (525 )
    mov x2, 84             // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 496-525  // Coordenada x inicial (526 )
    mov x2, 83             // Coordenada y inicial
    mov x3, 504-525  // Coordenada x final (534 )
    mov x4, 86             // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 504-525  // Coordenada x inicial (534 )
    mov x2, 82             // Coordenada y inicial
    mov x3, 506-525  // Coordenada x final (536 )
    mov x4, 82             // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 506-525  // Coordenada x inicial (536 )
    mov x2, 81             // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 507-525  // Coordenada x inicial (537 )
    mov x2, 81             // Coordenada y inicial
    mov x3, 507-525  // Coordenada x final (537 )
    mov x4, 79             // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 508-525  // Coordenada x inicial (538 )
    mov x2, 79             // Coordenada y inicial
    mov x3, 508-525  // Coordenada x final (538 )
    mov x4, 78             // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 509-525  // Coordenada x inicial (539 )
    mov x2, 78             // Coordenada y inicial
    mov x3, 509-525  // Coordenada x final (539 )
    mov x4, 77             // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 510-525  // Coordenada x inicial (540 )
    mov x2, 77             // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 510-525  // Coordenada x inicial (540 )
    mov x2, 76             // Coordenada y inicial
    mov x3, 512-525  // Coordenada x final (542 )
    mov x4, 76             // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 512-525  // Coordenada x inicial (542 )
    mov x2, 75             // Coordenada y inicial
    mov x3, 514-525  // Coordenada x final (544 )
    mov x4, 75             // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 514-525  // Coordenada x inicial (544 )
    mov x2, 74             // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 515-525  // Coordenada x inicial (545 )
    mov x2, 74             // Coordenada y inicial
    mov x3, 515-525  // Coordenada x final (545 )
    mov x4, 72             // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 516-525  // Coordenada x inicial (546 )
    mov x2, 73             // Coordenada y inicial
    mov x3, 518-525  // Coordenada x final (548 )
    mov x4, 73             // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 518-525  // Coordenada x inicial (548 )
    mov x2, 74             // Coordenada y inicial
    mov x3, 520-525  // Coordenada x final (550 )
    mov x4, 74             // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 520-525  // Coordenada x inicial (550 )
    mov x2, 75             // Coordenada y inicial
    mov x3, 522-525  // Coordenada x final (552 )
    mov x4, 75             // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 522-525  // Coordenada x inicial 
    mov x2, 76             // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 522-525  // Coordenada x inicial (552 )
    mov x2, 77             // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 523-525  // Coordenada x inicial (553 )
    mov x2, 77             // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 523-525  // Coordenada x inicial (553 )
    mov x2, 78             // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 524-525  // Coordenada x inicial (554 )
    mov x2, 78             // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 524-525  // Coordenada x inicial (554 )
    mov x2, 79             // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 525-525  // Coordenada x inicial (555 )
    mov x2, 79             // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 525-525  // Coordenada x inicial (555 )
    mov x2, 80             // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 526-525  // Coordenada x inicial (556 )
    mov x2, 80             // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 527-525  // Coordenada x inicial (557 )
    mov x2, 81             // Coordenada y inicial
    mov x3, 530-525  // Coordenada x final (560 )
    mov x4, 81             // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 531-525  // Coordenada x inicial (561 )
    mov x2, 82             // Coordenada y inicial
    mov x3, 533-525  // Coordenada x final (563 )
    mov x4, 82             // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 533-525  // Coordenada x inicial (563 )
    mov x2, 83             // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 534-525  // Coordenada x inicial (564 )
    mov x2, 83             // Coordenada y inicial
    mov x3, 534-525  // Coordenada x final (564 )
    mov x4, 85             // Coordenada y final
    ldr x10, gris             
    bl draw_line_straight

    mov x1, 535-525  // Coordenada x inicial (565 )
    mov x2, 85             // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 535-525  // Coordenada x inicial (565 )
    mov x2, 86             // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 536-525  // Coordenada x inicial (566 )
    mov x2, 86             // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 536-525  // Coordenada x inicial (566 )
    mov x2, 87             // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 537-525  // Coordenada x inicial (567 )
    mov x2, 87             // Coordenada y
    ldr x10, gris
    bl draw_pixel

    mov x1, 538-525  // Coordenada x inicial (568 )
    mov x2, 88             // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

    mov x1, 538-525  // Coordenada x inicial (568 )
    mov x2, 89             // Coordenada y inicial
    ldr x10, gris
    bl draw_pixel

 
    LDR X30, [SP, #32]
    LDR X4, [SP, #24]
    LDR X3, [SP, #16]
    LDR X2, [SP, #8]
    LDR X1, [SP]
    ADD SP, SP, #40
    ret 



.endif
