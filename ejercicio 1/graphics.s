.ifndef graphics_s
.equ graphics_s, 0
.equ SCREEN_WIDTH, 640
.equ SCREEN_HEIGHT, 480

.global draw

// Función para dibujar un pixel en la pantalla
// Uso x1 para la coordenada x, x2 para la coordenada y y w10 para el color 
draw_pixel:
    SUB SP, SP, #16
    STR X1, [SP]
    STR X2, [SP, #8]

    mov x19, SCREEN_WIDTH
    mul x19, x2, x19       // x19 = y * SCREEN_WIDTH
    add x19, x1, x19       // x19 = x + y * SCREEN_WIDTH
    lsl x19, x19, #2       // x19 = 4 * (x + y * SCREEN_WIDTH)
    add x19, x0, x19       // x19 = Dirección de inicio + 4 * (x + y * SCREEN_WIDTH)
    str w10, [x19]         // Dibujar el pixel y pintarlo del color de w10
    
    LDR X2, [SP, #8]     
    LDR X1, [SP]      
    ADD SP, SP, #16    
    ret                    // Fin de la función



//Definimos esta funcion usando el algoritmo de Bresenham, donde necesitamos x1, x2, y1, y2. es decir un x inicial y un x final
//y analogamente un y inicial y un y final

//Utilizamos x1 para la coordenada x inicial, x2 para la coordenada y inicial
//x3 para la coordenada x final y x4 para la coordenada y final
draw_line_straight:
    SUB SP, SP, #40
    STR X1, [SP]
    STR X2, [SP, #8]
    STR X3, [SP, #16]
    STR X4, [SP, #24]
    STR X30, [SP, #32]

    cmp x1, x3              
    b.eq draw_vertical_line  // Si son iguales, es una línea vertical

    cmp x2, x4              
    b.eq draw_horizontal_line // Si son iguales, es una línea horizontal

    LDR X30, [SP, #32]
    LDR X4, [SP, #24]
    LDR X3, [SP, #16]
    LDR X2, [SP, #8]
    LDR X1, [SP]
    ADD SP, SP, #40

    ret

draw_horizontal_line:
    SUB SP, SP, #16
    STR X1, [SP]
    STR X30, [SP, #8]

    cmp x1, x3
    b.gt swap_coordinates_horizontal // Si x1 > x3, intercambiar coordenadas

draw_horizontal_line_true:
    mov x2, x2            // Asegurar que y inicial se mantiene
    bl draw_pixel         // Llamar a draw_pixel para dibujar el pixel
    add x1, x1, #1        // Incrementar x
    cmp x1, x3            // Verificar si se ha llegado al final
    b.le draw_horizontal_line_true // Si no, repetir

    LDR X30, [SP, #8]
    LDR X1, [SP]
    ADD SP, SP, #16

    ret

swap_coordinates_horizontal:
    mov x19, x1           // Simple swap de coordenadas
    mov x1, x3
    mov x3, x19
    b draw_horizontal_line_true

draw_vertical_line:
    SUB SP, SP, #16
    STR X2, [SP]
    STR X30, [SP, #8]

    cmp x2, x4
    b.gt swap_coordinates_vertical // Si y2 > y4, intercambiar coordenadas

draw_vertical_line_true:
    bl draw_pixel         // Llamar a draw_pixel para dibujar el pixel
    add x2, x2, #1        // Incrementar y
    cmp x2, x4            // Verificar si se ha llegado al final
    b.le draw_vertical_line_true

    LDR X30, [SP, #8]
    LDR X2, [SP]
    ADD SP, SP, #16

    ret

swap_coordinates_vertical:
    mov x19, x2           // Simple swap de coordenadas
    mov x2, x4
    mov x4, x19
    b draw_vertical_line_true


draw_rectangle:
    // Para dibujar un rectángulo utilizare dos puntos, el primero será la esquina superior izquierda del rectángulo y el segundo
    // será la esquina inferior derecha del rectángulo
    // x1 y x2 serán las coordenadas del primer punto y x3 y x4 serán las coordenadas del segundo punto
    // x10 será el color del rectángulo
    // STACK POINTER:
    SUB SP, SP, #48
    STR X1, [SP]
    STR X2, [SP, #8]
    STR X3, [SP, #16]
    STR X4, [SP, #24]
    STR X30, [SP, #40]

    // Similar a la función draw_line debemos verificar que el primer punto sea el superior izquierdo y el segundo el inferior derecho

    cmp x1, x3
    b.le noswap_coordinates_rectangle // Si x1 < x3, no intercambiar coordenadas
    mov x16, x1         // Simple swap de coordenadas
    mov x1, x3
    mov x3, x16
noswap_coordinates_rectangle:

    cmp x2, x4
    b.le noswap_coordinates_rectangle2 // Si y1 < y2, no intercambiar coordenadas
    mov x16, x2         // Simple swap de coordenadas
    mov x2, x4
    mov x4, x16
noswap_coordinates_rectangle2:

    mov x9, x1
draw_rectangle_true:
    cmp x2, x4
    b.gt stop_draw
    cmp x1, x3
    b.gt up
    bl draw_pixel
    add x1, x1, #1
    b draw_rectangle_true

up:
    mov x1, x9           // Reinicio X1
    add x2, x2, #1
    b draw_rectangle_true

stop_draw:
    LDR X30, [SP, #40]
    LDR X4, [SP, #24]
    LDR X3, [SP, #16]
    LDR X2, [SP, #8]
    LDR X1, [SP]
    ADD SP, SP, #48
    ret


.endif
