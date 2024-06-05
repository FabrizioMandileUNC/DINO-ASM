.ifndef animations_s
.equ animations_s, 0
.equ SCREEN_WIDTH, 640
.equ SCREEN_HEIGHT, 480
.include "colors.s"
.include "graphics.s"
.include "draws.s"



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
erase_nubes:
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
    ldr x10, cielo             
    bl draw_line_straight
    
    // Parte de arriba de la nube
    mov x1, 89
    mov x2, 59
    ldr x10, cielo
    bl draw_pixel

    mov x1, 90
    mov x2, 58
    ldr x10, cielo
    bl draw_pixel
    
    mov x1, 90
    mov x2, 57
    ldr x10, cielo
    bl draw_pixel
    
    mov x1, 93
    mov x2, 56
    ldr x10, cielo
    bl draw_pixel
    
    mov x1, 93
    mov x2, 55
    ldr x10, cielo
    bl draw_pixel
    
    mov x1, 94
    mov x2, 55
    ldr x10, cielo
    bl draw_pixel

    mov x1, 94
    mov x2, 54
    ldr x10, cielo
    bl draw_pixel

    mov x1, 95        // Coordenada x inicial
    mov x2, 53         // Coordenada y inicial
    mov x3, 103         // Coordenada x final
    mov x4, 56        // Coordenada y final
    ldr x10, cielo             
    bl draw_line_straight

    mov x1, 103        // Coordenada x inicial
    mov x2, 52         // Coordenada y inicial
    mov x3, 105         // Coordenada x final
    mov x4, 52        // Coordenada y final
    ldr x10, cielo             
    bl draw_line_straight

    mov x1, 105
    mov x2, 51
    ldr x10, cielo
    bl draw_pixel

    mov x1, 106        // Coordenada x inicial
    mov x2, 51         // Coordenada y inicial
    mov x3, 106         // Coordenada x final
    mov x4, 49        // Coordenada y final
    ldr x10, cielo             
    bl draw_line_straight

    mov x1, 107        // Coordenada x inicial
    mov x2, 49         // Coordenada y inicial
    mov x3, 107         // Coordenada x final
    mov x4, 48        // Coordenada y final
    ldr x10, cielo             
    bl draw_line_straight

    mov x1, 108        // Coordenada x inicial
    mov x2, 48         // Coordenada y inicial
    mov x3, 108         // Coordenada x final
    mov x4, 47        // Coordenada y final
    ldr x10, cielo             
    bl draw_line_straight

    mov x1, 109
    mov x2, 47
    ldr x10, cielo
    bl draw_pixel

    mov x1, 109        // Coordenada x inicial
    mov x2, 46         // Coordenada y inicial
    mov x3, 111         // Coordenada x final
    mov x4, 46        // Coordenada y final
    ldr x10, cielo             
    bl draw_line_straight

    mov x1, 111        // Coordenada x inicial
    mov x2, 45         // Coordenada y inicial
    mov x3, 113         // Coordenada x final
    mov x4, 45        // Coordenada y final
    ldr x10, cielo             
    bl draw_line_straight
    
    mov x1, 113
    mov x2, 44
    ldr x10, cielo
    bl draw_pixel

    mov x1, 114        // Coordenada x inicial
    mov x2, 44         // Coordenada y inicial
    mov x3, 114         // Coordenada x final
    mov x4, 42        // Coordenada y final
    ldr x10, cielo             
    bl draw_line_straight

    mov x1, 115        // Coordenada x inicial
    mov x2, 43         // Coordenada y inicial
    mov x3, 117         // Coordenada x final
    mov x4, 43        // Coordenada y final
    ldr x10, cielo             
    bl draw_line_straight

    mov x1, 117        // Coordenada x inicial
    mov x2, 44         // Coordenada y inicial
    mov x3, 119         // Coordenada x final
    mov x4, 44        // Coordenada y final
    ldr x10, cielo             
    bl draw_line_straight

    mov x1, 119        // Coordenada x inicial
    mov x2, 45         // Coordenada y inicial
    mov x3, 121         // Coordenada x final
    mov x4, 45        // Coordenada y final
    ldr x10, cielo             
    bl draw_line_straight

    mov x1, 121
    mov x2, 46
    ldr x10, cielo
    bl draw_pixel

    mov x1, 121
    mov x2, 47
    ldr x10, cielo
    bl draw_pixel

    mov x1, 122
    mov x2, 47
    ldr x10, cielo
    bl draw_pixel

    mov x1, 122
    mov x2, 48
    ldr x10, cielo
    bl draw_pixel

    mov x1, 123
    mov x2, 48
    ldr x10, cielo
    bl draw_pixel

    mov x1, 123
    mov x2, 49
    ldr x10, cielo
    bl draw_pixel

    mov x1, 124
    mov x2, 49
    ldr x10, cielo
    bl draw_pixel
    
    mov x1, 124
    mov x2, 50
    ldr x10, cielo
    bl draw_pixel

    mov x1, 125
    mov x2, 50
    ldr x10, cielo
    bl draw_pixel

    mov x1, 126        // Coordenada x inicial
    mov x2, 51         // Coordenada y inicial
    mov x3, 129         // Coordenada x final
    mov x4, 51        // Coordenada y final
    ldr x10, cielo             
    bl draw_line_straight

    mov x1, 130        // Coordenada x inicial
    mov x2, 52         // Coordenada y inicial
    mov x3, 132         // Coordenada x final
    mov x4, 52        // Coordenada y final
    ldr x10, cielo             
    bl draw_line_straight
    
    mov x1, 132
    mov x2, 53
    ldr x10, cielo
    bl draw_pixel

    mov x1, 133        // Coordenada x inicial
    mov x2, 53         // Coordenada y inicial
    mov x3, 133         // Coordenada x final
    mov x4, 55        // Coordenada y final
    ldr x10, cielo             
    bl draw_line_straight

    mov x1, 134
    mov x2, 55
    ldr x10, cielo
    bl draw_pixel

    mov x1, 134
    mov x2, 56
    ldr x10, cielo
    bl draw_pixel

    mov x1, 135
    mov x2, 56
    ldr x10, cielo
    bl draw_pixel
    
    mov x1, 135
    mov x2, 57
    ldr x10, cielo
    bl draw_pixel

    mov x1, 136
    mov x2, 57
    ldr x10, cielo
    bl draw_pixel
    
    mov x1, 137
    mov x2, 58
    ldr x10, cielo
    bl draw_pixel

    mov x1, 138
    mov x2, 59
    ldr x10, cielo
    bl draw_pixel
    
    mov x1, 138
    mov x2, 60
    ldr x10, cielo
    bl draw_pixel

    // ------------NUBE2-----------------
    // Base de la nube 
    // Llamada a draw_line_straight para dibujar base de la nube

    mov x1, 328        // Coordenada x inicial
    mov x2, 30         // Coordenada y inicial
    mov x3, 371         // Coordenada x final
    mov x4, 30        // Coordenada y final
    ldr x10, cielo             
    bl draw_line_straight
    
    // Parte de arriba de la nube
    
    mov x1, 323     // 89 + 234
    mov x2, 28      // 59 - 31
    ldr x10, cielo
    bl draw_pixel
    
    mov x1, 324     // 90 + 234
    mov x2, 27      // 58 - 31
    ldr x10, cielo
    bl draw_pixel
    
    mov x1, 324     // 90 + 234
    mov x2, 26      // 57 - 31
    ldr x10, cielo
    bl draw_pixel
    
    mov x1, 327     // 93 + 234
    mov x2, 25      // 56 - 31
    ldr x10, cielo
    bl draw_pixel

    mov x1, 327     // 93 + 234
    mov x2, 24      // 55 - 31
    ldr x10, cielo
    bl draw_pixel

    mov x1, 328     // 94 + 234
    mov x2, 24      // 55 - 31
    ldr x10, cielo
    bl draw_pixel
    
    mov x1, 328     // 94 + 234
    mov x2, 23      // 54 - 31
    ldr x10, cielo
    bl draw_pixel

    mov x1, 329        // Coordenada x inicial
    mov x2, 22         // Coordenada y inicial
    mov x3, 337        // Coordenada x final
    mov x4, 25         // Coordenada y final
    ldr x10, cielo             
    bl draw_line_straight

    mov x1, 337        // Coordenada x inicial
    mov x2, 21         // Coordenada y inicial
    mov x3, 339        // Coordenada x final
    mov x4, 21         // Coordenada y final    
    ldr x10, cielo             
    bl draw_line_straight
    
    mov x1, 339        // 105 + 234
    mov x2, 20         // 51 - 31
    ldr x10, cielo
    bl draw_pixel

    mov x1, 340        // Coordenada x inicial
    mov x2, 20         // Coordenada y inicial
    mov x3, 340        // Coordenada x final
    mov x4, 18         // Coordenada y final
    ldr x10, cielo             
    bl draw_line_straight
   
    mov x1, 341        // 107 + 234
    mov x2, 18         // 49 - 31
    mov x3, 341        // 107 + 234
    mov x4, 17         // 48 - 31
    ldr x10, cielo             
    bl draw_line_straight

    mov x1, 342        // 108 + 234
    mov x2, 17         // 48 - 31
    mov x3, 342        // 108 + 234
    mov x4, 16         // 47 - 31
    ldr x10, cielo             
    bl draw_line_straight
    
    mov x1, 343        // 109 + 234
    mov x2, 16         // 47 - 31
    ldr x10, cielo
    bl draw_pixel

    mov x1, 343        // 109 + 234
    mov x2, 15         // 46 - 31
    mov x3, 345        // 111 + 234
    mov x4, 15         // 46 - 31
    ldr x10, cielo             
    bl draw_line_straight

    mov x1, 345        // 111 + 234
    mov x2, 14         // 45 - 31
    mov x3, 347        // 113 + 234
    mov x4, 14         // 45 - 31
    ldr x10, cielo             
    bl draw_line_straight
    
    mov x1, 347        // 113 + 234
    mov x2, 13         // 44 - 31
    ldr x10, cielo
    bl draw_pixel

    mov x1, 348        // 114 + 234
    mov x2, 13         // 44 - 31
    mov x3, 348        // 114 + 234 
    mov x4, 11         // 42 - 31
    ldr x10, cielo             
    bl draw_line_straight

    mov x1, 349        // 115 + 234
    mov x2, 12         // 43 - 31
    mov x3, 351        // 117 + 234
    mov x4, 12         // 43 - 31
    ldr x10, cielo             
    bl draw_line_straight

    mov x1, 351        // 117 + 234
    mov x2, 13         // 44 - 31   
    mov x3, 353        // 119 + 234 
    mov x4, 13         // 44 - 31   
    ldr x10, cielo             
    bl draw_line_straight

    mov x1, 353        // 119 + 234
    mov x2, 14         // 45 - 31
    mov x3, 355        // 121 + 234
    mov x4, 14         // 45 - 31
    ldr x10, cielo             
    bl draw_line_straight
    
    mov x1, 355    // 121 + 234
    mov x2, 15     // 46 - 31
    ldr x10, cielo
    bl draw_pixel
    
    mov x1, 355    // 121 + 234
    mov x2, 16     // 47 - 31
    ldr x10, cielo
    bl draw_pixel
    
    mov x1, 356    // 122 + 234
    mov x2, 16     // 47 - 31
    ldr x10, cielo
    bl draw_pixel
    
    mov x1, 356    // 122 + 234
    mov x2, 17     // 48 - 31
    ldr x10, cielo
    bl draw_pixel
    
    mov x1, 357    // 123 + 234
    mov x2, 17     // 48 - 31
    ldr x10, cielo
    bl draw_pixel
    
    mov x1, 357    // 123 + 234
    mov x2, 18     // 49 - 31
    ldr x10, cielo
    bl draw_pixel
    
    mov x1, 358    // 124 + 234
    mov x2, 18     // 49 - 31
    ldr x10, cielo
    bl draw_pixel
    
    mov x1, 358    // 124 + 234
    mov x2, 19     // 50 - 31
    ldr x10, cielo
    bl draw_pixel
    
    mov x1, 359    // 125 + 234
    mov x2, 19     // 50 - 31
    ldr x10, cielo
    bl draw_pixel

    mov x1, 360        // 126 + 234 // Coordenada x inicial
    mov x2, 20         // 51 - 31   // Coordenada y inicial
    mov x3, 363        // 129 + 234 // Coordenada x final
    mov x4, 20         // 51 - 31   // Coordenada y final
    ldr x10, cielo
    bl draw_line_straight

    mov x1, 364        // 130 + 234 // Coordenada x inicial
    mov x2, 21         // 52 - 31   // Coordenada y inicial
    mov x3, 366        // 132 + 234 // Coordenada x final
    mov x4, 21         // 52 - 31   // Coordenada y final
    ldr x10, cielo
    bl draw_line_straight

    mov x1, 366        // 132 + 234
    mov x2, 22         // 53 - 31
    ldr x10, cielo
    bl draw_pixel

    mov x1, 367        // 133 + 234 // Coordenada x inicial
    mov x2, 22         // 53 - 31   // Coordenada y inicial
    mov x3, 367        // 133 + 234 // Coordenada x final
    mov x4, 24         // 55 - 31   // Coordenada y final
    ldr x10, cielo
    bl draw_line_straight
    
    mov x1, 368        // 134 + 234
    mov x2, 24         // 55 - 31
    ldr x10, cielo
    bl draw_pixel
    
    mov x1, 368        // 134 + 234
    mov x2, 25         // 56 - 31
    ldr x10, cielo
    bl draw_pixel
    
    mov x1, 369        // 135 + 234
    mov x2, 25         // 56 - 31
    ldr x10, cielo
    bl draw_pixel
    
    mov x1, 369        // 135 + 234
    mov x2, 26         // 57 - 31
    ldr x10, cielo
    bl draw_pixel

    mov x1, 370        // 136 + 234
    mov x2, 26         // 57 - 31
    ldr x10, cielo
    bl draw_pixel

    mov x1, 371        // 137 + 234
    mov x2, 27         // 58 - 31
    ldr x10, cielo
    bl draw_pixel

    mov x1, 372        // 138 + 234
    mov x2, 28         // 59 - 31
    ldr x10, cielo
    bl draw_pixel

    mov x1, 372        // 138 + 234
    mov x2, 29         // 60 - 31
    ldr x10, cielo
    bl draw_pixel

    //----------NUBE3-----------------
    // Base de la nube 
    // Llamada a draw_line_straight para dibujar base de la nube

    mov x1, 550        // Coordenada x inicial
    mov x2, 91         // Coordenada y inicial
    mov x3, 593         // Coordenada x final
    mov x4, 91        // Coordenada y final
    ldr x10, cielo             
    bl draw_line_straight

    // Parte de arriba de la nube
    
    mov x1, 545
    mov x2, 89
    ldr x10, cielo
    bl draw_pixel

    mov x1, 546
    mov x2, 88
    ldr x10, cielo
    bl draw_pixel

    mov x1, 546
    mov x2, 87
    ldr x10, cielo
    bl draw_pixel
    
    mov x1, 549
    mov x2, 86
    ldr x10, cielo
    bl draw_pixel

    mov x1, 549
    mov x2, 85
    ldr x10, cielo
    bl draw_pixel
    
    mov x1, 550
    mov x2, 85
    ldr x10, cielo
    bl draw_pixel
    
    mov x1, 550
    mov x2, 84
    ldr x10, cielo
    bl draw_pixel

    mov x1, 551        // Coordenada x inicial
    mov x2, 83         // Coordenada y inicial
    mov x3, 559         // Coordenada x final
    mov x4, 86        // Coordenada y final
    ldr x10, cielo             
    bl draw_line_straight

    mov x1, 559        // Coordenada x inicial
    mov x2, 82         // Coordenada y inicial
    mov x3, 561         // Coordenada x final
    mov x4, 82        // Coordenada y final
    ldr x10, cielo             
    bl draw_line_straight
    
    mov x1, 561
    mov x2, 81
    ldr x10, cielo
    bl draw_pixel

    mov x1, 562        // Coordenada x inicial
    mov x2, 81         // Coordenada y inicial
    mov x3, 562         // Coordenada x final
    mov x4, 79        // Coordenada y final
    ldr x10, cielo             
    bl draw_line_straight

    mov x1, 563        // Coordenada x inicial
    mov x2, 79         // Coordenada y inicial
    mov x3, 563         // Coordenada x final
    mov x4, 78        // Coordenada y final
    ldr x10, cielo             
    bl draw_line_straight

    mov x1, 564        // Coordenada x inicial
    mov x2, 78         // Coordenada y inicial
    mov x3, 564         // Coordenada x final
    mov x4, 77        // Coordenada y final
    ldr x10, cielo             
    bl draw_line_straight
    
    mov x1, 565
    mov x2, 77
    ldr x10, cielo
    bl draw_pixel

    mov x1, 565        // Coordenada x inicial
    mov x2, 76         // Coordenada y inicial
    mov x3, 567         // Coordenada x final
    mov x4, 76        // Coordenada y final
    ldr x10, cielo             
    bl draw_line_straight

    mov x1, 567        // Coordenada x inicial
    mov x2, 75         // Coordenada y inicial
    mov x3, 569         // Coordenada x final
    mov x4, 75        // Coordenada y final
    ldr x10, cielo             
    bl draw_line_straight
    
    mov x1, 569
    mov x2, 74
    ldr x10, cielo
    bl draw_pixel

    mov x1, 570        // Coordenada x inicial
    mov x2, 74         // Coordenada y inicial
    mov x3, 570         // Coordenada x final
    mov x4, 72        // Coordenada y final
    ldr x10, cielo             
    bl draw_line_straight

    mov x1, 571        // Coordenada x inicial
    mov x2, 73         // Coordenada y inicial
    mov x3, 573         // Coordenada x final
    mov x4, 73        // Coordenada y final
    ldr x10, cielo             
    bl draw_line_straight

    mov x1, 573        // Coordenada x inicial
    mov x2, 74         // Coordenada y inicial
    mov x3, 575         // Coordenada x final
    mov x4, 74        // Coordenada y final
    ldr x10, cielo             
    bl draw_line_straight

    mov x1, 575        // Coordenada x inicial
    mov x2, 75         // Coordenada y inicial
    mov x3, 577         // Coordenada x final
    mov x4, 75        // Coordenada y final
    ldr x10, cielo             
    bl draw_line_straight
    
    mov x1, 577
    mov x2, 76
    ldr x10, cielo
    bl draw_pixel

    mov x1, 577
    mov x2, 77
    ldr x10, cielo
    bl draw_pixel
    
    mov x1, 578
    mov x2, 77
    ldr x10, cielo
    bl draw_pixel

    mov x1, 578
    mov x2, 78
    ldr x10, cielo
    bl draw_pixel
    
    mov x1, 579
    mov x2, 78
    ldr x10, cielo
    bl draw_pixel
    
    mov x1, 579
    mov x2, 79
    ldr x10, cielo
    bl draw_pixel
    
    mov x1, 580
    mov x2, 79
    ldr x10, cielo
    bl draw_pixel
    
    mov x1, 580
    mov x2, 80
    ldr x10, cielo
    bl draw_pixel
    
    mov x1, 581
    mov x2, 80
    ldr x10, cielo
    bl draw_pixel

    mov x1, 582        // Coordenada x inicial
    mov x2, 81         // Coordenada y inicial
    mov x3, 585         // Coordenada x final
    mov x4, 81        // Coordenada y final
    ldr x10, cielo             
    bl draw_line_straight

    mov x1, 586        // Coordenada x inicial
    mov x2, 82         // Coordenada y inicial
    mov x3, 588         // Coordenada x final
    mov x4, 82        // Coordenada y final
    ldr x10, cielo             
    bl draw_line_straight
    
    mov x1, 588
    mov x2, 83
    ldr x10, cielo
    bl draw_pixel

    mov x1, 589        // Coordenada x inicial
    mov x2, 83         // Coordenada y inicial
    mov x3, 589         // Coordenada x final
    mov x4, 85        // Coordenada y final
    ldr x10, cielo             
    bl draw_line_straight
    
    mov x1, 590
    mov x2, 85
    ldr x10, cielo
    bl draw_pixel
    
    mov x1, 590
    mov x2, 86
    ldr x10, cielo
    bl draw_pixel
    
    mov x1, 591
    mov x2, 86
    ldr x10, cielo
    bl draw_pixel
    
    mov x1, 591
    mov x2, 87
    ldr x10, cielo
    bl draw_pixel
    
    mov x1, 592
    mov x2, 87
    ldr x10, cielo
    bl draw_pixel

    mov x1, 593
    mov x2, 88
    ldr x10, cielo
    bl draw_pixel
    
    mov x1, 593
    mov x2, 89
    ldr x10, cielo
    bl draw_pixel
    
    LDR X30, [SP, #32]
    LDR X4, [SP, #24]
    LDR X3, [SP, #16]
    LDR X2, [SP, #8]
    LDR X1, [SP]
    ADD SP, SP, #40

    ret

.endif
