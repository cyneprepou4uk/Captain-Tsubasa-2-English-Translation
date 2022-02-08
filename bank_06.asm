.segment "BANK_06"
.include "copy_bank_ram.inc"
.include "copy_bank_val.inc"
; тут только данные
; палитра фона
; палитра спрайтов
; оформление окна диалога



.export tbl_0x00D010_палитра_фона
.export tbl_0x00D310_палитра_спрайтов
.export tbl_0x00D810
.export tbl_0x00DB50_оформление_окна_диалога
.export tbl_0x00DD10_номера_анимаций_чарли
.export tbl_0x00DD90_тайлы_чарли_в_катсцене
.export tbl_0x00DF10



tbl_0x00D010_палитра_фона:
; выбирается в 0x000B59
    ; 00
    .byte $0F, $1A, $18, $30
    .byte $0F, $36, $25, $30
    .byte $0F, $21, $31, $30
    .byte $0F, $2B, $10, $30
    ; 01
    .byte $0F, $16, $00, $30
    .byte $0F, $0F, $0F, $0F
    .byte $0F, $11, $00, $30
    .byte $0F, $0F, $16, $26
    ; 02
    .byte $0F, $1A, $18, $30
    .byte $0F, $36, $25, $30
    .byte $0F, $21, $31, $30
    .byte $0F, $3A, $1A, $1A
    ; 03
    .byte $0F, $19, $21, $30
    .byte $0F, $36, $25, $30
    .byte $0F, $0F, $00, $30
    .byte $0F, $15, $00, $30
    ; 04
    .byte $0F, $0F, $10, $30
    .byte $0F, $36, $25, $30
    .byte $0F, $21, $30, $31
    .byte $0F, $21, $30, $37
    ; 05
    .byte $0F, $21, $30, $31
    .byte $0F, $36, $25, $30
    .byte $0F, $21, $11, $16
    .byte $0F, $21, $11, $30
    ; 06
    .byte $0F, $0C, $00, $36
    .byte $0F, $26, $00, $30
    .byte $0F, $21, $31, $30
    .byte $0F, $0C, $00, $30
    ; 07
    .byte $0F, $0A, $08, $30
    .byte $0F, $36, $25, $30
    .byte $0F, $0C, $01, $30
    .byte $0F, $0C, $0F, $10
    ; 08 еще не использовалась
    .byte $0F, $21, $01, $30
    .byte $0F, $36, $25, $30
    .byte $0F, $21, $31, $30
    .byte $0F, $21, $10, $30
    ; 09
    .byte $0F, $21, $28, $36
    .byte $0F, $36, $25, $30
    .byte $0F, $21, $31, $30
    .byte $0F, $15, $28, $36
    ; 0A
    .byte $0F, $18, $28, $10
    .byte $0F, $06, $26, $30
    .byte $0F, $08, $18, $15
    .byte $0F, $09, $18, $15
    ; 0B
    .byte $0F, $01, $0F, $0F
    .byte $0F, $36, $25, $30
    .byte $0F, $21, $31, $30
    .byte $0F, $2B, $10, $30
    ; 0C
    .byte $0F, $0A, $0F, $00
    .byte $0F, $36, $25, $30
    .byte $0F, $0F, $0F, $0F
    .byte $0F, $0F, $0F, $00
    ; 0D
    .byte $0F, $12, $22, $30
    .byte $0F, $36, $25, $30
    .byte $0F, $22, $30, $25
    .byte $0F, $0F, $15, $27
    ; 0E
    .byte $0F, $15, $25, $30
    .byte $0F, $36, $25, $30
    .byte $0F, $21, $3A, $1A
    .byte $0F, $00, $32, $30
    ; 0F
    .byte $0F, $17, $27, $30
    .byte $0F, $36, $25, $30
    .byte $0F, $21, $00, $27
    .byte $0F, $00, $27, $36
    ; 10
    .byte $0F, $0A, $08, $0F
    .byte $0F, $36, $25, $30
    .byte $0F, $00, $10, $30
    .byte $0F, $00, $10, $15
    ; 11
    .byte $0F, $2A, $0F, $30
    .byte $0F, $36, $25, $30
    .byte $0F, $30, $30, $30
    .byte $0F, $30, $10, $30
    ; 12
    .byte $0F, $07, $27, $36
    .byte $0F, $36, $25, $30
    .byte $0F, $21, $17, $07
    .byte $0F, $07, $17, $36
    ; 13
    .byte $0F, $0C, $30, $12
    .byte $0F, $36, $25, $30
    .byte $0F, $0C, $16, $06
    .byte $0F, $0C, $16, $06
    ; 14
    .byte $0F, $0F, $0F, $0F
    .byte $0F, $36, $25, $30
    .byte $0F, $21, $3C, $2C
    .byte $0F, $21, $30, $2C
    ; 15
    .byte $0F, $0F, $0F, $0F
    .byte $0F, $36, $25, $30
    .byte $0F, $21, $12, $01
    .byte $0F, $21, $30, $37
    ; 16
    .byte $0F, $0F, $27, $36
    .byte $0F, $36, $25, $30
    .byte $0F, $21, $27, $36
    .byte $0F, $30, $27, $36
    ; 17
    .byte $0F, $21, $25, $30
    .byte $0F, $21, $10, $30
    .byte $0F, $21, $31, $30
    .byte $0F, $0F, $00, $30
    ; 18
    .byte $0F, $21, $36, $27
    .byte $0F, $21, $36, $30
    .byte $0F, $21, $36, $16
    .byte $0F, $06, $36, $16
    ; 19
    .byte $0F, $21, $36, $27
    .byte $0F, $21, $36, $30
    .byte $0F, $21, $36, $30
    .byte $0F, $31, $36, $30
    ; 1A
    .byte $0F, $21, $26, $17
    .byte $0F, $21, $26, $30
    .byte $0F, $21, $26, $30
    .byte $0F, $31, $26, $30
    ; 1B
    .byte $0F, $0F, $0F, $0F
    .byte $0F, $0F, $0F, $30
    .byte $0F, $21, $10, $00
    .byte $0F, $21, $10, $00
    ; 1C еще не использовалось
    .byte $0F, $0F, $27, $36
    .byte $0F, $36, $25, $30
    .byte $0F, $01, $27, $36
    .byte $0F, $30, $27, $36
    ; 1D
    .byte $0F, $21, $10, $30
    .byte $0F, $36, $25, $30
    .byte $0F, $21, $31, $30
    .byte $0F, $2B, $10, $30
    ; 1E
    .byte $0F, $0F, $0F, $0F
    .byte $0F, $36, $25, $30
    .byte $0F, $00, $10, $30
    .byte $0F, $10, $00, $00
    ; 1F
    .byte $0F, $10, $10, $00
    .byte $0F, $10, $10, $30
    .byte $0F, $10, $10, $00
    .byte $0F, $00, $10, $00
    ; 20
    .byte $0F, $00, $10, $30
    .byte $0F, $00, $10, $30
    .byte $0F, $00, $10, $30
    .byte $0F, $10, $00, $30
    ; 21
    .byte $0F, $0F, $0F, $0F
    .byte $0F, $10, $10, $30
    .byte $0F, $00, $10, $30
    .byte $0F, $00, $10, $30
    ; 22
    .byte $0F, $21, $25, $30
    .byte $0F, $36, $25, $30
    .byte $0F, $21, $31, $30
    .byte $0F, $0F, $00, $30
    ; 23
    .byte $0F, $0F, $0F, $0F
    .byte $0F, $36, $25, $30
    .byte $0F, $07, $17, $27
    .byte $0F, $17, $07, $27
    ; 24
    .byte $0F, $0F, $0F, $0F
    .byte $0F, $36, $25, $30
    .byte $0F, $11, $21, $10
    .byte $0F, $1C, $00, $10
    ; 25
    .byte $30, $30, $30, $30
    .byte $30, $30, $30, $30
    .byte $30, $30, $30, $30
    .byte $30, $30, $30, $30
    ; 26 еще не использовалось
    .byte $0F, $0F, $0F, $0F
    .byte $0F, $36, $25, $30
    .byte $0F, $01, $00, $10
    .byte $0F, $0F, $00, $10
    ; 27
    .byte $0F, $1A, $0F, $30
    .byte $0F, $36, $25, $30
    .byte $0F, $0F, $32, $31
    .byte $0F, $0F, $0F, $10
    ; 28
    .byte $10, $0F, $0F, $0F
    .byte $10, $0F, $0F, $30
    .byte $10, $0F, $30, $0F
    .byte $10, $0F, $10, $30
    ; 29
    .byte $00, $0F, $0F, $0F
    .byte $00, $0F, $0F, $30
    .byte $00, $0F, $0F, $0F
    .byte $00, $0F, $00, $30
    ; 2A
    .byte $0F, $0F, $0F, $0F
    .byte $0F, $0F, $0F, $30
    .byte $0F, $0F, $0F, $0F
    .byte $0F, $0F, $00, $30
    ; 2B
    .byte $0F, $0F, $0F, $0F
    .byte $0F, $0F, $0F, $30
    .byte $0F, $0F, $32, $31
    .byte $0F, $0F, $00, $30
    ; 2C
    .byte $0F, $16, $00, $30
    .byte $0F, $0F, $0F, $0F
    .byte $0F, $0F, $00, $30
    .byte $0F, $0F, $16, $26
    ; 2D
    .byte $0F, $0F, $0F, $0F
    .byte $0F, $0F, $0F, $0F
    .byte $0F, $15, $25, $35
    .byte $0F, $25, $15, $35
    ; 2E
    .byte $0F, $00, $00, $10
    .byte $0F, $0F, $0F, $30
    .byte $0F, $00, $00, $10
    .byte $0F, $30, $00, $10



tbl_0x00D310_палитра_спрайтов:
    ; 00
    .byte $0F, $0F, $0F, $36
    .byte $0F, $0F, $16, $36
    .byte $0F, $0F, $30, $36
    .byte $0F, $0F, $30, $36
    ; 01
    .byte $0F, $0F, $36, $27
    .byte $0F, $0F, $36, $30
    .byte $0F, $0F, $30, $27
    .byte $0F, $0F, $30, $36
    ; 02
    .byte $0F, $0F, $0F, $36
    .byte $0F, $0F, $00, $36
    .byte $0F, $0F, $0F, $36
    .byte $0F, $0F, $30, $36
    ; 03
    .byte $0F, $0F, $27, $36
    .byte $0F, $0F, $16, $36
    .byte $0F, $0F, $16, $06
    .byte $0F, $0F, $30, $36
    ; 04
    .byte $0F, $0F, $0F, $26
    .byte $0F, $0F, $16, $26
    .byte $0F, $0F, $11, $26
    .byte $0F, $0F, $30, $36
    ; 05
    .byte $0F, $0F, $37, $16
    .byte $0F, $0F, $37, $27
    .byte $0F, $0F, $07, $16
    .byte $0F, $0F, $30, $0F
    ; 06
    .byte $0F, $0F, $36, $27
    .byte $0F, $0F, $07, $27
    .byte $0F, $0F, $36, $30
    .byte $0F, $0F, $07, $36
    ; 07
    .byte $0F, $0F, $30, $36
    .byte $0F, $0F, $32, $36
    .byte $0F, $0F, $22, $36
    .byte $0F, $0F, $30, $36
    ; 08
    .byte $0F, $0F, $36, $27
    .byte $0F, $0F, $30, $27
    .byte $0F, $0F, $30, $31
    .byte $0F, $0F, $30, $36
    ; 09
    .byte $0F, $27, $37, $30
    .byte $0F, $06, $16, $26
    .byte $0F, $17, $26, $27
    .byte $0F, $0F, $30, $37
    ; 0A
    .byte $0F, $0F, $27, $36
    .byte $0F, $0F, $30, $11
    .byte $0F, $0F, $00, $36
    .byte $0F, $0F, $30, $36
    ; 0B
    .byte $0F, $0F, $27, $36
    .byte $0F, $0F, $37, $27
    .byte $0F, $0F, $10, $36
    .byte $0F, $0F, $30, $36
    ; 0C
    .byte $0F, $0F, $27, $36
    .byte $0F, $0F, $16, $06
    .byte $0F, $0F, $07, $36
    .byte $0F, $0F, $30, $36
    ; 0D
    .byte $0F, $0F, $27, $36
    .byte $0F, $0F, $30, $31
    .byte $0F, $0F, $00, $36
    .byte $0F, $0F, $30, $36
    ; 0E
    .byte $0F, $0F, $25, $26
    .byte $0F, $0F, $25, $15
    .byte $0F, $0F, $27, $26
    .byte $0F, $0F, $30, $1A
    ; 0F
    .byte $0F, $0F, $37, $26
    .byte $0F, $0F, $37, $27
    .byte $0F, $0F, $27, $26
    .byte $0F, $0F, $30, $1A
    ; 10
    .byte $0F, $0F, $1A, $35
    .byte $0F, $0F, $30, $22
    .byte $0F, $0F, $11, $35
    .byte $0F, $0F, $30, $35
    ; 11
    .byte $0F, $0F, $30, $31
    .byte $0F, $0F, $22, $12
    .byte $0F, $0F, $12, $35
    .byte $0F, $0F, $30, $35
    ; 12
    .byte $0F, $0F, $11, $35
    .byte $0F, $0F, $30, $35
    .byte $0F, $0F, $22, $35
    .byte $0F, $0F, $30, $35
    ; 13
    .byte $0F, $0F, $37, $26
    .byte $0F, $0F, $37, $27
    .byte $0F, $0F, $17, $26
    .byte $0F, $0F, $30, $10
    ; 14
    .byte $0F, $0F, $0F, $0F
    .byte $0F, $0F, $37, $0F
    .byte $0F, $0F, $12, $0F
    .byte $0F, $0F, $30, $0F
    ; 15
    .byte $0F, $0F, $27, $36
    .byte $0F, $30, $11, $15
    .byte $0F, $00, $32, $30
    .byte $0F, $0F, $30, $10
    ; 16
    .byte $0F, $0F, $27, $36
    .byte $0F, $0F, $30, $31
    .byte $0F, $0F, $16, $06
    .byte $0F, $0F, $30, $36
    ; 17
    .byte $0F, $0F, $27, $36
    .byte $0F, $0F, $30, $31
    .byte $0F, $0F, $07, $36
    .byte $0F, $0F, $30, $36
    ; 18
    .byte $0F, $0F, $27, $36
    .byte $0F, $0F, $30, $3C
    .byte $0F, $0F, $12, $36
    .byte $0F, $0F, $30, $36
    ; 19
    .byte $0F, $0F, $27, $36
    .byte $0F, $0F, $30, $31
    .byte $0F, $0F, $15, $36
    .byte $0F, $0F, $30, $36
    ; 1A
    .byte $0F, $0F, $27, $36
    .byte $0F, $0F, $30, $31
    .byte $0F, $0F, $26, $36
    .byte $0F, $0F, $30, $36
    ; 1B
    .byte $0F, $0F, $27, $36
    .byte $0F, $0F, $30, $1C
    .byte $0F, $0F, $00, $36
    .byte $0F, $0F, $30, $36
    ; 1C
    .byte $0F, $0F, $27, $36
    .byte $0F, $0F, $32, $22
    .byte $0F, $0F, $32, $36
    .byte $0F, $0F, $30, $36
    ; 1D
    .byte $0F, $0F, $27, $36
    .byte $0F, $0F, $30, $22
    .byte $0F, $0F, $17, $36
    .byte $0F, $0F, $30, $36
    ; 1E
    .byte $0F, $12, $22, $32
    .byte $0F, $0F, $16, $36
    .byte $0F, $0F, $30, $00
    .byte $0F, $0F, $30, $36
    ; 1F
    .byte $0F, $0F, $30, $36
    .byte $0F, $0F, $06, $16
    .byte $0F, $0F, $0F, $36
    .byte $0F, $0F, $30, $16
    ; 20
    .byte $0F, $0F, $30, $36
    .byte $0F, $0F, $27, $37
    .byte $0F, $0F, $00, $36
    .byte $0F, $0F, $30, $16
    ; 21
    .byte $0F, $27, $31, $30
    .byte $0F, $1A, $37, $11
    .byte $0F, $0F, $15, $27
    .byte $0F, $22, $30, $25
    ; 22
    .byte $0F, $0F, $36, $27
    .byte $0F, $0F, $0F, $27
    .byte $0F, $0F, $36, $30
    .byte $0F, $0F, $0F, $36
    ; 23
    .byte $0F, $0F, $27, $36
    .byte $0F, $0F, $30, $31
    .byte $0F, $0F, $30, $36
    .byte $0F, $0F, $30, $36
    ; 24
    .byte $0F, $0F, $26, $37
    .byte $0F, $0F, $07, $36
    .byte $0F, $0F, $27, $37
    .byte $0F, $0F, $30, $36
    ; 25
    .byte $0F, $0F, $21, $21
    .byte $0F, $0F, $16, $36
    .byte $0F, $30, $30, $21
    .byte $0F, $0F, $30, $26
    ; 26
    .byte $0F, $0F, $0F, $0F
    .byte $0F, $0F, $37, $0F
    .byte $0F, $0F, $30, $0F
    .byte $0F, $0F, $30, $0F
    ; 27
    .byte $0F, $0F, $06, $16
    .byte $0F, $0F, $36, $27
    .byte $0F, $0F, $30, $31
    .byte $0F, $0F, $30, $16
    ; 28
    .byte $0F, $0F, $30, $31
    .byte $0F, $0F, $21, $35
    .byte $0F, $0F, $37, $35
    .byte $0F, $0F, $30, $35
    ; 29
    .byte $0F, $0F, $21, $0F
    .byte $0F, $0F, $0F, $0F
    .byte $0F, $0F, $0F, $0F
    .byte $0F, $0F, $30, $0F
    ; 2A
    .byte $0F, $0F, $11, $26
    .byte $0F, $0F, $30, $37
    .byte $0F, $0F, $30, $26
    .byte $0F, $0F, $30, $26
    ; 2B
    .byte $0F, $0F, $16, $06
    .byte $0F, $0F, $10, $36
    .byte $0F, $0F, $16, $36
    .byte $0F, $0F, $30, $36
    ; 2C
    .byte $0F, $0F, $07, $17
    .byte $0F, $0F, $25, $15
    .byte $0F, $0F, $07, $17
    .byte $0F, $0F, $30, $17
    ; 2D
    .byte $0F, $0F, $37, $35
    .byte $0F, $0F, $11, $35
    .byte $0F, $0F, $30, $35
    .byte $0F, $0F, $30, $35
    ; 2E
    .byte $0F, $0F, $35, $27
    .byte $0F, $0F, $37, $27
    .byte $0F, $0F, $35, $30
    .byte $0F, $0F, $1A, $27
    ; 2F
    .byte $0F, $0F, $35, $27
    .byte $0F, $0F, $37, $27
    .byte $0F, $0F, $35, $30
    .byte $0F, $0F, $1A, $30
    ; 30
    .byte $0F, $0F, $35, $27
    .byte $0F, $0F, $37, $27
    .byte $0F, $0F, $35, $30
    .byte $0F, $0F, $1A, $30
    ; 31
    .byte $0F, $0F, $0F, $26
    .byte $0F, $0F, $30, $26
    .byte $0F, $0F, $37, $26
    .byte $0F, $0F, $30, $26
    ; 32
    .byte $0F, $0F, $27, $36
    .byte $0F, $0F, $06, $16
    .byte $0F, $0F, $06, $27
    .byte $0F, $0F, $30, $36
    ; 33
    .byte $0F, $0F, $27, $36
    .byte $0F, $0F, $16, $06
    .byte $0F, $0F, $16, $36
    .byte $0F, $0F, $30, $36
    ; 34
    .byte $0F, $0F, $11, $35
    .byte $0F, $0F, $11, $01
    .byte $0F, $0F, $37, $35
    .byte $0F, $0F, $30, $1A
    ; 35
    .byte $0F, $0F, $10, $30
    .byte $0F, $0F, $27, $36
    .byte $0F, $0F, $17, $36
    .byte $0F, $0F, $30, $25
    ; 36
    .byte $0F, $05, $16, $15
    .byte $0F, $30, $27, $37
    .byte $0F, $10, $0F, $0F
    .byte $0F, $0F, $00, $30
    ; 37
    .byte $0F, $0F, $10, $30
    .byte $0F, $0F, $30, $00
    .byte $0F, $11, $30, $00
    .byte $0F, $0F, $30, $36
    ; 38
    .byte $0F, $0F, $0F, $26
    .byte $0F, $0F, $00, $26
    .byte $0F, $0F, $0F, $26
    .byte $0F, $0F, $30, $26
    ; 39
    .byte $0F, $0F, $0F, $30
    .byte $0F, $0F, $0F, $25
    .byte $0F, $0F, $0F, $30
    .byte $0F, $0F, $0F, $0F
    ; 3A
    .byte $0F, $0F, $27, $36
    .byte $0F, $0F, $30, $00
    .byte $0F, $0F, $0F, $0F
    .byte $0F, $0F, $30, $0F
    ; 3B
    .byte $0F, $0F, $37, $35
    .byte $0F, $0F, $30, $35
    .byte $0F, $0F, $0F, $35
    .byte $0F, $0F, $30, $35
    ; 3C
    .byte $0F, $0F, $0F, $36
    .byte $0F, $0F, $30, $36
    .byte $0F, $0F, $30, $36
    .byte $0F, $0F, $30, $36
    ; 3D
    .byte $0F, $0F, $0F, $10
    .byte $0F, $0F, $00, $10
    .byte $0F, $0F, $30, $10
    .byte $0F, $0F, $30, $10
    ; 3E
    .byte $0F, $0F, $00, $10
    .byte $0F, $0F, $00, $00
    .byte $0F, $0F, $00, $10
    .byte $0F, $0F, $30, $10
    ; 3F
    .byte $0F, $0F, $00, $10
    .byte $0F, $0F, $30, $00
    .byte $0F, $0F, $00, $10
    .byte $0F, $0F, $30, $10
    ; 40
    .byte $0F, $0F, $10, $10
    .byte $0F, $0F, $10, $00
    .byte $0F, $0F, $00, $10
    .byte $0F, $0F, $30, $00
    ; 41
    .byte $0F, $0F, $07, $17
    .byte $0F, $0F, $27, $17
    .byte $0F, $0F, $07, $17
    .byte $0F, $0F, $27, $17
    ; 42
    .byte $0F, $0F, $17, $26
    .byte $0F, $0F, $10, $22
    .byte $0F, $0F, $00, $26
    .byte $0F, $0F, $10, $26
    ; 43
    .byte $30, $30, $30, $30
    .byte $30, $30, $30, $30
    .byte $30, $30, $30, $30
    .byte $30, $30, $30, $30
    ; 44
    .byte $10, $30, $30, $30
    .byte $10, $10, $36, $36
    .byte $10, $10, $30, $30
    .byte $10, $10, $30, $36
    ; 45
    .byte $00, $30, $30, $30
    .byte $00, $00, $26, $36
    .byte $00, $00, $30, $10
    .byte $00, $00, $30, $36
    ; 46
    .byte $0F, $0F, $27, $36
    .byte $0F, $0F, $30, $11
    .byte $0F, $0F, $30, $36
    .byte $0F, $0F, $30, $36
    ; 47
    .byte $0F, $0F, $27, $36
    .byte $0F, $0F, $16, $06
    .byte $0F, $0F, $15, $36
    .byte $0F, $0F, $30, $36
    ; 48
    .byte $0F, $0F, $27, $36
    .byte $0F, $0F, $16, $06
    .byte $0F, $0F, $10, $36
    .byte $0F, $0F, $30, $36



tbl_0x00D810:
- D - - - 0x00D810 07:B800: 2A B8     .word off_B82A_00
- D - - - 0x00D812 07:B802: 38 B8     .word off_B838_01
- D - - - 0x00D814 07:B804: 4A B8     .word off_B84A_02
- D - - - 0x00D816 07:B806: 84 B8     .word off_B884_03
- D - - - 0x00D818 07:B808: 92 B8     .word off_B892_04
- D - - - 0x00D81A 07:B80A: C4 B8     .word off_B8C4_05
- D - - - 0x00D81C 07:B80C: DE B8     .word off_B8DE_06
- D - - - 0x00D81E 07:B80E: 18 B9     .word off_B918_07
- D - - - 0x00D820 07:B810: 36 B9     .word off_B936_08
- D - - - 0x00D822 07:B812: 58 B9     .word off_B958_09
- D - - - 0x00D824 07:B814: 7A B9     .word off_B97A_0A
- D - - - 0x00D826 07:B816: B4 B9     .word off_B9B4_0B
- D - - - 0x00D828 07:B818: 22 BA     .word off_BA22_0C
- D - - - 0x00D82A 07:B81A: 2C BA     .word off_BA2C_0D
- D - - - 0x00D82C 07:B81C: 36 BA     .word off_BA36_0E
- D - - - 0x00D82E 07:B81E: 44 BA     .word off_BA44_0F
- D - - - 0x00D830 07:B820: 96 BA     .word off_BA96_10_12_13
- D - - - 0x00D832 07:B822: 52 BA     .word off_BA52_11
- - - - - 0x00D834 07:B824: 96 BA     .word off_BA96_10_12_13
- - - - - 0x00D836 07:B826: 96 BA     .word off_BA96_10_12_13
- D - - - 0x00D838 07:B828: 5C BA     .word off_BA5C_14

off_B82A_00:
- D - I - 0x00D83A 07:B82A: 0C        .byte $0C    ; <し>
- D - I - 0x00D83B 07:B82B: 04        .byte $04    ; <え>
- D - I - 0x00D83C 07:B82C: 3A        .byte $3A    ; <7>
- D - I - 0x00D83D 07:B82D: 1A        .byte $1A    ; <は>
- D - I - 0x00D83E 07:B82E: 1A        .byte $1A    ; <は>
- D - I - 0x00D83F 07:B82F: 04        .byte $04    ; <え>
- D - I - 0x00D840 07:B830: 1A        .byte $1A    ; <は>
- D - I - 0x00D841 07:B831: 1A        .byte $1A    ; <は>
- D - I - 0x00D842 07:B832: 3A        .byte $3A    ; <7>
- D - I - 0x00D843 07:B833: 04        .byte $04    ; <え>
- D - I - 0x00D844 07:B834: 1A        .byte $1A    ; <は>
- D - I - 0x00D845 07:B835: 3A        .byte $3A    ; <7>
- D - I - 0x00D846 07:B836: 1A        .byte $1A    ; <は>
- D - I - 0x00D847 07:B837: FE        .byte $FE

off_B838_01:
- D - I - 0x00D848 07:B838: 08        .byte $08    ; <く>
- D - I - 0x00D849 07:B839: 04        .byte $04    ; <え>
- D - I - 0x00D84A 07:B83A: 30        .byte $30    ; <ゃ>
- D - I - 0x00D84B 07:B83B: 00        .byte $00
- D - I - 0x00D84C 07:B83C: 00        .byte $00
- D - I - 0x00D84D 07:B83D: 04        .byte $04    ; <え>
- D - I - 0x00D84E 07:B83E: 21        .byte $21    ; <む>
- D - I - 0x00D84F 07:B83F: 00        .byte $00
- D - I - 0x00D850 07:B840: 00        .byte $00
- D - I - 0x00D851 07:B841: 04        .byte $04    ; <え>
- D - I - 0x00D852 07:B842: 30        .byte $30    ; <ゃ>
- D - I - 0x00D853 07:B843: 00        .byte $00
- D - I - 0x00D854 07:B844: 00        .byte $00
- D - I - 0x00D855 07:B845: 04        .byte $04    ; <え>
- D - I - 0x00D856 07:B846: 25        .byte $25    ; <ゆ>
- D - I - 0x00D857 07:B847: 00        .byte $00
- D - I - 0x00D858 07:B848: 00        .byte $00
- D - I - 0x00D859 07:B849: FE        .byte $FE

off_B84A_02:
- D - I - 0x00D85A 07:B84A: 08        .byte $08    ; <く>
- D - I - 0x00D85B 07:B84B: 20        .byte $20    ; <み>
- D - I - 0x00D85C 07:B84C: 08        .byte $08    ; <く>
- D - I - 0x00D85D 07:B84D: 18        .byte $18    ; <ね>
- D - I - 0x00D85E 07:B84E: 15        .byte $15    ; <な>
- D - I - 0x00D85F 07:B84F: 04        .byte $04    ; <え>
- D - I - 0x00D860 07:B850: 30        .byte $30    ; <ゃ>
- D - I - 0x00D861 07:B851: 30        .byte $30    ; <ゃ>
- D - I - 0x00D862 07:B852: 30        .byte $30    ; <ゃ>
- D - I - 0x00D863 07:B853: 04        .byte $04    ; <え>
- D - I - 0x00D864 07:B854: 0F        .byte $0F    ; <そ>
- D - I - 0x00D865 07:B855: 0F        .byte $0F    ; <そ>
- D - I - 0x00D866 07:B856: 0F        .byte $0F    ; <そ>
- D - I - 0x00D867 07:B857: 04        .byte $04    ; <え>
- D - I - 0x00D868 07:B858: 11        .byte $11    ; <ち>
- D - I - 0x00D869 07:B859: 11        .byte $11    ; <ち>
- D - I - 0x00D86A 07:B85A: 11        .byte $11    ; <ち>
- D - I - 0x00D86B 07:B85B: 04        .byte $04    ; <え>
- D - I - 0x00D86C 07:B85C: 0F        .byte $0F    ; <そ>
- D - I - 0x00D86D 07:B85D: 0F        .byte $0F    ; <そ>
- D - I - 0x00D86E 07:B85E: 0F        .byte $0F    ; <そ>
- D - I - 0x00D86F 07:B85F: 04        .byte $04    ; <え>
- D - I - 0x00D870 07:B860: 21        .byte $21    ; <む>
- D - I - 0x00D871 07:B861: 21        .byte $21    ; <む>
- D - I - 0x00D872 07:B862: 21        .byte $21    ; <む>
- D - I - 0x00D873 07:B863: 04        .byte $04    ; <え>
- D - I - 0x00D874 07:B864: 0F        .byte $0F    ; <そ>
- D - I - 0x00D875 07:B865: 0F        .byte $0F    ; <そ>
- D - I - 0x00D876 07:B866: 0F        .byte $0F    ; <そ>
- D - I - 0x00D877 07:B867: 04        .byte $04    ; <え>
- D - I - 0x00D878 07:B868: 25        .byte $25    ; <ゆ>
- D - I - 0x00D879 07:B869: 25        .byte $25    ; <ゆ>
- D - I - 0x00D87A 07:B86A: 25        .byte $25    ; <ゆ>
- D - I - 0x00D87B 07:B86B: 04        .byte $04    ; <え>
- D - I - 0x00D87C 07:B86C: 0F        .byte $0F    ; <そ>
- D - I - 0x00D87D 07:B86D: 0F        .byte $0F    ; <そ>
- D - I - 0x00D87E 07:B86E: 0F        .byte $0F    ; <そ>
- D - I - 0x00D87F 07:B86F: 04        .byte $04    ; <え>
- D - I - 0x00D880 07:B870: 27        .byte $27    ; <ら>
- D - I - 0x00D881 07:B871: 27        .byte $27    ; <ら>
- D - I - 0x00D882 07:B872: 27        .byte $27    ; <ら>
- D - I - 0x00D883 07:B873: 04        .byte $04    ; <え>
- D - I - 0x00D884 07:B874: 0F        .byte $0F    ; <そ>
- D - I - 0x00D885 07:B875: 0F        .byte $0F    ; <そ>
- D - I - 0x00D886 07:B876: 0F        .byte $0F    ; <そ>
- D - I - 0x00D887 07:B877: 04        .byte $04    ; <え>
- D - I - 0x00D888 07:B878: 30        .byte $30    ; <ゃ>
- D - I - 0x00D889 07:B879: 30        .byte $30    ; <ゃ>
- D - I - 0x00D88A 07:B87A: 30        .byte $30    ; <ゃ>
- D - I - 0x00D88B 07:B87B: 04        .byte $04    ; <え>
- D - I - 0x00D88C 07:B87C: 0F        .byte $0F    ; <そ>
- D - I - 0x00D88D 07:B87D: 0F        .byte $0F    ; <そ>
- D - I - 0x00D88E 07:B87E: 0F        .byte $0F    ; <そ>
- D - I - 0x00D88F 07:B87F: 04        .byte $04    ; <え>
- D - I - 0x00D890 07:B880: 08        .byte $08    ; <く>
- D - I - 0x00D891 07:B881: 18        .byte $18    ; <ね>
- D - I - 0x00D892 07:B882: 15        .byte $15    ; <な>
- D - I - 0x00D893 07:B883: FF        .byte $FF

off_B884_03:
- D - I - 0x00D894 07:B884: 00        .byte $00
- D - I - 0x00D895 07:B885: 01        .byte $01    ; <あ>
- D - I - 0x00D896 07:B886: 0F        .byte $0F    ; <そ>
- D - I - 0x00D897 07:B887: 0F        .byte $0F    ; <そ>
- D - I - 0x00D898 07:B888: 00        .byte $00
- D - I - 0x00D899 07:B889: 01        .byte $01    ; <あ>
- D - I - 0x00D89A 07:B88A: 30        .byte $30    ; <ゃ>
- D - I - 0x00D89B 07:B88B: 30        .byte $30    ; <ゃ>
- D - I - 0x00D89C 07:B88C: 00        .byte $00
- D - I - 0x00D89D 07:B88D: 01        .byte $01    ; <あ>
- D - I - 0x00D89E 07:B88E: 0A        .byte $0A    ; <こ>
- D - I - 0x00D89F 07:B88F: 08        .byte $08    ; <く>
- D - I - 0x00D8A0 07:B890: 00        .byte $00
- D - I - 0x00D8A1 07:B891: FE        .byte $FE

off_B892_04:
- D - I - 0x00D8A2 07:B892: 0C        .byte $0C    ; <し>
- D - I - 0x00D8A3 07:B893: 04        .byte $04    ; <え>
- D - I - 0x00D8A4 07:B894: 2B        .byte $2B    ; <ろ>
- D - I - 0x00D8A5 07:B895: 00        .byte $00
- D - I - 0x00D8A6 07:B896: 00        .byte $00
- D - I - 0x00D8A7 07:B897: 04        .byte $04    ; <え>
- D - I - 0x00D8A8 07:B898: 2A        .byte $2A    ; <れ>
- D - I - 0x00D8A9 07:B899: 00        .byte $00
- D - I - 0x00D8AA 07:B89A: 00        .byte $00
- D - I - 0x00D8AB 07:B89B: 04        .byte $04    ; <え>
- D - I - 0x00D8AC 07:B89C: 29        .byte $29    ; <る>
- D - I - 0x00D8AD 07:B89D: 00        .byte $00
- D - I - 0x00D8AE 07:B89E: 00        .byte $00
- D - I - 0x00D8AF 07:B89F: 04        .byte $04    ; <え>
- D - I - 0x00D8B0 07:B8A0: 28        .byte $28    ; <り>
- D - I - 0x00D8B1 07:B8A1: 00        .byte $00
- D - I - 0x00D8B2 07:B8A2: 00        .byte $00
- D - I - 0x00D8B3 07:B8A3: 04        .byte $04    ; <え>
- D - I - 0x00D8B4 07:B8A4: 27        .byte $27    ; <ら>
- D - I - 0x00D8B5 07:B8A5: 00        .byte $00
- D - I - 0x00D8B6 07:B8A6: 00        .byte $00
- D - I - 0x00D8B7 07:B8A7: 04        .byte $04    ; <え>
- D - I - 0x00D8B8 07:B8A8: 26        .byte $26    ; <よ>
- D - I - 0x00D8B9 07:B8A9: 00        .byte $00
- D - I - 0x00D8BA 07:B8AA: 00        .byte $00
- D - I - 0x00D8BB 07:B8AB: 04        .byte $04    ; <え>
- D - I - 0x00D8BC 07:B8AC: 25        .byte $25    ; <ゆ>
- D - I - 0x00D8BD 07:B8AD: 00        .byte $00
- D - I - 0x00D8BE 07:B8AE: 00        .byte $00
- D - I - 0x00D8BF 07:B8AF: 04        .byte $04    ; <え>
- D - I - 0x00D8C0 07:B8B0: 24        .byte $24    ; <や>
- D - I - 0x00D8C1 07:B8B1: 00        .byte $00
- D - I - 0x00D8C2 07:B8B2: 00        .byte $00
- D - I - 0x00D8C3 07:B8B3: 04        .byte $04    ; <え>
- D - I - 0x00D8C4 07:B8B4: 23        .byte $23    ; <も>
- D - I - 0x00D8C5 07:B8B5: 00        .byte $00
- D - I - 0x00D8C6 07:B8B6: 00        .byte $00
- D - I - 0x00D8C7 07:B8B7: 04        .byte $04    ; <え>
- D - I - 0x00D8C8 07:B8B8: 22        .byte $22    ; <め>
- D - I - 0x00D8C9 07:B8B9: 00        .byte $00
- D - I - 0x00D8CA 07:B8BA: 00        .byte $00
- D - I - 0x00D8CB 07:B8BB: 04        .byte $04    ; <え>
- D - I - 0x00D8CC 07:B8BC: 21        .byte $21    ; <む>
- D - I - 0x00D8CD 07:B8BD: 00        .byte $00
- D - I - 0x00D8CE 07:B8BE: 00        .byte $00
- D - I - 0x00D8CF 07:B8BF: 04        .byte $04    ; <え>
- D - I - 0x00D8D0 07:B8C0: 2C        .byte $2C    ; <わ>
- D - I - 0x00D8D1 07:B8C1: 00        .byte $00
- D - I - 0x00D8D2 07:B8C2: 00        .byte $00
- D - I - 0x00D8D3 07:B8C3: FE        .byte $FE

off_B8C4_05:
- D - I - 0x00D8D4 07:B8C4: 00        .byte $00
- D - I - 0x00D8D5 07:B8C5: 60        .byte $60    ; <ミ>
- D - I - 0x00D8D6 07:B8C6: 00        .byte $00
- D - I - 0x00D8D7 07:B8C7: 00        .byte $00
- D - I - 0x00D8D8 07:B8C8: 21        .byte $21    ; <む>
- D - I - 0x00D8D9 07:B8C9: 60        .byte $60    ; <ミ>
- D - I - 0x00D8DA 07:B8CA: 00        .byte $00
- D - I - 0x00D8DB 07:B8CB: 00        .byte $00
- D - I - 0x00D8DC 07:B8CC: 23        .byte $23    ; <も>
- D - I - 0x00D8DD 07:B8CD: 60        .byte $60    ; <ミ>
- D - I - 0x00D8DE 07:B8CE: 00        .byte $00
- D - I - 0x00D8DF 07:B8CF: 00        .byte $00
- D - I - 0x00D8E0 07:B8D0: 25        .byte $25    ; <ゆ>
- D - I - 0x00D8E1 07:B8D1: 60        .byte $60    ; <ミ>
- D - I - 0x00D8E2 07:B8D2: 00        .byte $00
- D - I - 0x00D8E3 07:B8D3: 00        .byte $00
- D - I - 0x00D8E4 07:B8D4: 27        .byte $27    ; <ら>
- D - I - 0x00D8E5 07:B8D5: 63        .byte $63    ; <モ>
- D - I - 0x00D8E6 07:B8D6: 00        .byte $00
- D - I - 0x00D8E7 07:B8D7: 00        .byte $00
- D - I - 0x00D8E8 07:B8D8: 29        .byte $29    ; <る>
- D - I - 0x00D8E9 07:B8D9: 60        .byte $60    ; <ミ>
- D - I - 0x00D8EA 07:B8DA: 00        .byte $00
- D - I - 0x00D8EB 07:B8DB: 00        .byte $00
- D - I - 0x00D8EC 07:B8DC: 2B        .byte $2B    ; <ろ>
- D - I - 0x00D8ED 07:B8DD: FE        .byte $FE

off_B8DE_06:
- D - I - 0x00D8EE 07:B8DE: 04        .byte $04    ; <え>
- D - I - 0x00D8EF 07:B8DF: 03        .byte $03    ; <う>
- D - I - 0x00D8F0 07:B8E0: 0F        .byte $0F    ; <そ>
- D - I - 0x00D8F1 07:B8E1: 0F        .byte $0F    ; <そ>
- D - I - 0x00D8F2 07:B8E2: 0F        .byte $0F    ; <そ>
- D - I - 0x00D8F3 07:B8E3: 03        .byte $03    ; <う>
- D - I - 0x00D8F4 07:B8E4: 05        .byte $05    ; <お>
- D - I - 0x00D8F5 07:B8E5: 06        .byte $06    ; <か>
- D - I - 0x00D8F6 07:B8E6: 0F        .byte $0F    ; <そ>
- D - I - 0x00D8F7 07:B8E7: 03        .byte $03    ; <う>
- D - I - 0x00D8F8 07:B8E8: 15        .byte $15    ; <な>
- D - I - 0x00D8F9 07:B8E9: 06        .byte $06    ; <か>
- D - I - 0x00D8FA 07:B8EA: 10        .byte $10    ; <た>
- D - I - 0x00D8FB 07:B8EB: 03        .byte $03    ; <う>
- D - I - 0x00D8FC 07:B8EC: 25        .byte $25    ; <ゆ>
- D - I - 0x00D8FD 07:B8ED: 16        .byte $16    ; <に>
- D - I - 0x00D8FE 07:B8EE: 30        .byte $30    ; <ゃ>
- D - I - 0x00D8FF 07:B8EF: 03        .byte $03    ; <う>
- D - I - 0x00D900 07:B8F0: 26        .byte $26    ; <よ>
- D - I - 0x00D901 07:B8F1: 17        .byte $17    ; <ぬ>
- D - I - 0x00D902 07:B8F2: 30        .byte $30    ; <ゃ>
- D - I - 0x00D903 07:B8F3: 03        .byte $03    ; <う>
- D - I - 0x00D904 07:B8F4: 27        .byte $27    ; <ら>
- D - I - 0x00D905 07:B8F5: 26        .byte $26    ; <よ>
- D - I - 0x00D906 07:B8F6: 30        .byte $30    ; <ゃ>
- D - I - 0x00D907 07:B8F7: 03        .byte $03    ; <う>
- D - I - 0x00D908 07:B8F8: 37        .byte $37    ; <4>
- D - I - 0x00D909 07:B8F9: 27        .byte $27    ; <ら>
- D - I - 0x00D90A 07:B8FA: 30        .byte $30    ; <ゃ>
- D - I - 0x00D90B 07:B8FB: 03        .byte $03    ; <う>
- D - I - 0x00D90C 07:B8FC: 30        .byte $30    ; <ゃ>
- D - I - 0x00D90D 07:B8FD: 37        .byte $37    ; <4>
- D - I - 0x00D90E 07:B8FE: 30        .byte $30    ; <ゃ>
- D - I - 0x00D90F 07:B8FF: 60        .byte $60    ; <ミ>
- D - I - 0x00D910 07:B900: 30        .byte $30    ; <ゃ>
- D - I - 0x00D911 07:B901: 30        .byte $30    ; <ゃ>
- D - I - 0x00D912 07:B902: 30        .byte $30    ; <ゃ>
- D - I - 0x00D913 07:B903: 04        .byte $04    ; <え>
- D - I - 0x00D914 07:B904: 30        .byte $30    ; <ゃ>
- D - I - 0x00D915 07:B905: 37        .byte $37    ; <4>
- D - I - 0x00D916 07:B906: 30        .byte $30    ; <ゃ>
- D - I - 0x00D917 07:B907: 04        .byte $04    ; <え>
- D - I - 0x00D918 07:B908: 37        .byte $37    ; <4>
- D - I - 0x00D919 07:B909: 27        .byte $27    ; <ら>
- D - I - 0x00D91A 07:B90A: 30        .byte $30    ; <ゃ>
- D - I - 0x00D91B 07:B90B: 04        .byte $04    ; <え>
- D - I - 0x00D91C 07:B90C: 27        .byte $27    ; <ら>
- D - I - 0x00D91D 07:B90D: 26        .byte $26    ; <よ>
- D - I - 0x00D91E 07:B90E: 30        .byte $30    ; <ゃ>
- D - I - 0x00D91F 07:B90F: 04        .byte $04    ; <え>
- D - I - 0x00D920 07:B910: 26        .byte $26    ; <よ>
- D - I - 0x00D921 07:B911: 17        .byte $17    ; <ぬ>
- D - I - 0x00D922 07:B912: 30        .byte $30    ; <ゃ>
- D - I - 0x00D923 07:B913: 04        .byte $04    ; <え>
- D - I - 0x00D924 07:B914: 25        .byte $25    ; <ゆ>
- D - I - 0x00D925 07:B915: 16        .byte $16    ; <に>
- D - I - 0x00D926 07:B916: 30        .byte $30    ; <ゃ>
- D - I - 0x00D927 07:B917: FF        .byte $FF

off_B918_07:
- D - I - 0x00D928 07:B918: 08        .byte $08    ; <く>
- D - I - 0x00D929 07:B919: 02        .byte $02    ; <い>
- D - I - 0x00D92A 07:B91A: 0F        .byte $0F    ; <そ>
- D - I - 0x00D92B 07:B91B: 00        .byte $00
- D - I - 0x00D92C 07:B91C: 00        .byte $00
- D - I - 0x00D92D 07:B91D: 02        .byte $02    ; <い>
- D - I - 0x00D92E 07:B91E: 30        .byte $30    ; <ゃ>
- D - I - 0x00D92F 07:B91F: 00        .byte $00
- D - I - 0x00D930 07:B920: 00        .byte $00
- D - I - 0x00D931 07:B921: 02        .byte $02    ; <い>
- D - I - 0x00D932 07:B922: 0F        .byte $0F    ; <そ>
- D - I - 0x00D933 07:B923: 00        .byte $00
- D - I - 0x00D934 07:B924: 00        .byte $00
- D - I - 0x00D935 07:B925: 02        .byte $02    ; <い>
- D - I - 0x00D936 07:B926: 22        .byte $22    ; <め>
- D - I - 0x00D937 07:B927: 00        .byte $00
- D - I - 0x00D938 07:B928: 00        .byte $00
- D - I - 0x00D939 07:B929: 02        .byte $02    ; <い>
- D - I - 0x00D93A 07:B92A: 0F        .byte $0F    ; <そ>
- D - I - 0x00D93B 07:B92B: 00        .byte $00
- D - I - 0x00D93C 07:B92C: 00        .byte $00
- D - I - 0x00D93D 07:B92D: 02        .byte $02    ; <い>
- D - I - 0x00D93E 07:B92E: 25        .byte $25    ; <ゆ>
- D - I - 0x00D93F 07:B92F: 00        .byte $00
- D - I - 0x00D940 07:B930: 00        .byte $00
- D - I - 0x00D941 07:B931: 02        .byte $02    ; <い>
- D - I - 0x00D942 07:B932: 0F        .byte $0F    ; <そ>
- D - I - 0x00D943 07:B933: 00        .byte $00
- D - I - 0x00D944 07:B934: 00        .byte $00
- D - I - 0x00D945 07:B935: FE        .byte $FE

off_B936_08:
- D - I - 0x00D946 07:B936: 08        .byte $08    ; <く>
- D - I - 0x00D947 07:B937: 02        .byte $02    ; <い>
- D - I - 0x00D948 07:B938: 30        .byte $30    ; <ゃ>
- D - I - 0x00D949 07:B939: 00        .byte $00
- D - I - 0x00D94A 07:B93A: 00        .byte $00
- D - I - 0x00D94B 07:B93B: 02        .byte $02    ; <い>
- D - I - 0x00D94C 07:B93C: 25        .byte $25    ; <ゆ>
- D - I - 0x00D94D 07:B93D: 00        .byte $00
- D - I - 0x00D94E 07:B93E: 00        .byte $00
- D - I - 0x00D94F 07:B93F: 02        .byte $02    ; <い>
- D - I - 0x00D950 07:B940: 0F        .byte $0F    ; <そ>
- D - I - 0x00D951 07:B941: 00        .byte $00
- D - I - 0x00D952 07:B942: 00        .byte $00
- D - I - 0x00D953 07:B943: 02        .byte $02    ; <い>
- D - I - 0x00D954 07:B944: 30        .byte $30    ; <ゃ>
- D - I - 0x00D955 07:B945: 00        .byte $00
- D - I - 0x00D956 07:B946: 00        .byte $00
- D - I - 0x00D957 07:B947: 02        .byte $02    ; <い>
- D - I - 0x00D958 07:B948: 0F        .byte $0F    ; <そ>
- D - I - 0x00D959 07:B949: 00        .byte $00
- D - I - 0x00D95A 07:B94A: 00        .byte $00
- D - I - 0x00D95B 07:B94B: 02        .byte $02    ; <い>
- D - I - 0x00D95C 07:B94C: 22        .byte $22    ; <め>
- D - I - 0x00D95D 07:B94D: 00        .byte $00
- D - I - 0x00D95E 07:B94E: 00        .byte $00
- D - I - 0x00D95F 07:B94F: 02        .byte $02    ; <い>
- D - I - 0x00D960 07:B950: 0F        .byte $0F    ; <そ>
- D - I - 0x00D961 07:B951: 00        .byte $00
- D - I - 0x00D962 07:B952: 00        .byte $00
- D - I - 0x00D963 07:B953: 02        .byte $02    ; <い>
- D - I - 0x00D964 07:B954: 21        .byte $21    ; <む>
- D - I - 0x00D965 07:B955: 00        .byte $00
- D - I - 0x00D966 07:B956: 00        .byte $00
- D - I - 0x00D967 07:B957: FF        .byte $FF

off_B958_09:
- D - I - 0x00D968 07:B958: 08        .byte $08    ; <く>
- D - I - 0x00D969 07:B959: 02        .byte $02    ; <い>
- D - I - 0x00D96A 07:B95A: 30        .byte $30    ; <ゃ>
- D - I - 0x00D96B 07:B95B: 00        .byte $00
- D - I - 0x00D96C 07:B95C: 00        .byte $00
- D - I - 0x00D96D 07:B95D: 02        .byte $02    ; <い>
- D - I - 0x00D96E 07:B95E: 15        .byte $15    ; <な>
- D - I - 0x00D96F 07:B95F: 00        .byte $00
- D - I - 0x00D970 07:B960: 00        .byte $00
- D - I - 0x00D971 07:B961: 02        .byte $02    ; <い>
- D - I - 0x00D972 07:B962: 0F        .byte $0F    ; <そ>
- D - I - 0x00D973 07:B963: 00        .byte $00
- D - I - 0x00D974 07:B964: 00        .byte $00
- D - I - 0x00D975 07:B965: 02        .byte $02    ; <い>
- D - I - 0x00D976 07:B966: 37        .byte $37    ; <4>
- D - I - 0x00D977 07:B967: 00        .byte $00
- D - I - 0x00D978 07:B968: 00        .byte $00
- D - I - 0x00D979 07:B969: 02        .byte $02    ; <い>
- D - I - 0x00D97A 07:B96A: 0F        .byte $0F    ; <そ>
- D - I - 0x00D97B 07:B96B: 00        .byte $00
- D - I - 0x00D97C 07:B96C: 00        .byte $00
- D - I - 0x00D97D 07:B96D: 02        .byte $02    ; <い>
- D - I - 0x00D97E 07:B96E: 12        .byte $12    ; <つ>
- D - I - 0x00D97F 07:B96F: 00        .byte $00
- D - I - 0x00D980 07:B970: 00        .byte $00
- D - I - 0x00D981 07:B971: 02        .byte $02    ; <い>
- D - I - 0x00D982 07:B972: 0F        .byte $0F    ; <そ>
- D - I - 0x00D983 07:B973: 00        .byte $00
- D - I - 0x00D984 07:B974: 00        .byte $00
- D - I - 0x00D985 07:B975: 02        .byte $02    ; <い>
- D - I - 0x00D986 07:B976: 0C        .byte $0C    ; <し>
- D - I - 0x00D987 07:B977: 00        .byte $00
- D - I - 0x00D988 07:B978: 00        .byte $00
- D - I - 0x00D989 07:B979: FF        .byte $FF

off_B97A_0A:
- D - I - 0x00D98A 07:B97A: 04        .byte $04    ; <え>
- D - I - 0x00D98B 07:B97B: 04        .byte $04    ; <え>
- D - I - 0x00D98C 07:B97C: 00        .byte $00
- D - I - 0x00D98D 07:B97D: 00        .byte $00
- D - I - 0x00D98E 07:B97E: 21        .byte $21    ; <む>
- D - I - 0x00D98F 07:B97F: 02        .byte $02    ; <い>
- D - I - 0x00D990 07:B980: 00        .byte $00
- D - I - 0x00D991 07:B981: 00        .byte $00
- D - I - 0x00D992 07:B982: 0F        .byte $0F    ; <そ>
- D - I - 0x00D993 07:B983: 04        .byte $04    ; <え>
- D - I - 0x00D994 07:B984: 00        .byte $00
- D - I - 0x00D995 07:B985: 00        .byte $00
- D - I - 0x00D996 07:B986: 23        .byte $23    ; <も>
- D - I - 0x00D997 07:B987: 02        .byte $02    ; <い>
- D - I - 0x00D998 07:B988: 00        .byte $00
- D - I - 0x00D999 07:B989: 00        .byte $00
- D - I - 0x00D99A 07:B98A: 0F        .byte $0F    ; <そ>
- D - I - 0x00D99B 07:B98B: 04        .byte $04    ; <え>
- D - I - 0x00D99C 07:B98C: 00        .byte $00
- D - I - 0x00D99D 07:B98D: 00        .byte $00
- D - I - 0x00D99E 07:B98E: 25        .byte $25    ; <ゆ>
- D - I - 0x00D99F 07:B98F: 02        .byte $02    ; <い>
- D - I - 0x00D9A0 07:B990: 00        .byte $00
- D - I - 0x00D9A1 07:B991: 00        .byte $00
- D - I - 0x00D9A2 07:B992: 0F        .byte $0F    ; <そ>
- D - I - 0x00D9A3 07:B993: 04        .byte $04    ; <え>
- D - I - 0x00D9A4 07:B994: 00        .byte $00
- D - I - 0x00D9A5 07:B995: 00        .byte $00
- D - I - 0x00D9A6 07:B996: 27        .byte $27    ; <ら>
- D - I - 0x00D9A7 07:B997: 02        .byte $02    ; <い>
- D - I - 0x00D9A8 07:B998: 00        .byte $00
- D - I - 0x00D9A9 07:B999: 00        .byte $00
- D - I - 0x00D9AA 07:B99A: 0F        .byte $0F    ; <そ>
- D - I - 0x00D9AB 07:B99B: 04        .byte $04    ; <え>
- D - I - 0x00D9AC 07:B99C: 00        .byte $00
- D - I - 0x00D9AD 07:B99D: 00        .byte $00
- D - I - 0x00D9AE 07:B99E: 29        .byte $29    ; <る>
- D - I - 0x00D9AF 07:B99F: 02        .byte $02    ; <い>
- D - I - 0x00D9B0 07:B9A0: 00        .byte $00
- D - I - 0x00D9B1 07:B9A1: 00        .byte $00
- D - I - 0x00D9B2 07:B9A2: 0F        .byte $0F    ; <そ>
- D - I - 0x00D9B3 07:B9A3: 04        .byte $04    ; <え>
- D - I - 0x00D9B4 07:B9A4: 00        .byte $00
- D - I - 0x00D9B5 07:B9A5: 00        .byte $00
- D - I - 0x00D9B6 07:B9A6: 2B        .byte $2B    ; <ろ>
- D - I - 0x00D9B7 07:B9A7: 02        .byte $02    ; <い>
- D - I - 0x00D9B8 07:B9A8: 00        .byte $00
- D - I - 0x00D9B9 07:B9A9: 00        .byte $00
- D - I - 0x00D9BA 07:B9AA: 0F        .byte $0F    ; <そ>
- D - I - 0x00D9BB 07:B9AB: 04        .byte $04    ; <え>
- D - I - 0x00D9BC 07:B9AC: 00        .byte $00
- D - I - 0x00D9BD 07:B9AD: 00        .byte $00
- D - I - 0x00D9BE 07:B9AE: 3C        .byte $3C    ; <9>
- D - I - 0x00D9BF 07:B9AF: 02        .byte $02    ; <い>
- D - I - 0x00D9C0 07:B9B0: 00        .byte $00
- D - I - 0x00D9C1 07:B9B1: 00        .byte $00
- D - I - 0x00D9C2 07:B9B2: 0F        .byte $0F    ; <そ>
- D - I - 0x00D9C3 07:B9B3: FE        .byte $FE

off_B9B4_0B:
- D - I - 0x00D9C4 07:B9B4: 00        .byte $00
- D - I - 0x00D9C5 07:B9B5: 04        .byte $04    ; <え>
- D - I - 0x00D9C6 07:B9B6: 16        .byte $16    ; <に>
- D - I - 0x00D9C7 07:B9B7: 00        .byte $00
- D - I - 0x00D9C8 07:B9B8: 00        .byte $00
- D - I - 0x00D9C9 07:B9B9: 04        .byte $04    ; <え>
- D - I - 0x00D9CA 07:B9BA: 26        .byte $26    ; <よ>
- D - I - 0x00D9CB 07:B9BB: 00        .byte $00
- D - I - 0x00D9CC 07:B9BC: 00        .byte $00
- D - I - 0x00D9CD 07:B9BD: 04        .byte $04    ; <え>
- D - I - 0x00D9CE 07:B9BE: 36        .byte $36    ; <3>
- D - I - 0x00D9CF 07:B9BF: 00        .byte $00
- D - I - 0x00D9D0 07:B9C0: 00        .byte $00
- D - I - 0x00D9D1 07:B9C1: 0A        .byte $0A    ; <こ>
- D - I - 0x00D9D2 07:B9C2: 30        .byte $30    ; <ゃ>
- D - I - 0x00D9D3 07:B9C3: 00        .byte $00
- D - I - 0x00D9D4 07:B9C4: 00        .byte $00
- D - I - 0x00D9D5 07:B9C5: 04        .byte $04    ; <え>
- D - I - 0x00D9D6 07:B9C6: 36        .byte $36    ; <3>
- D - I - 0x00D9D7 07:B9C7: 00        .byte $00
- D - I - 0x00D9D8 07:B9C8: 00        .byte $00
- D - I - 0x00D9D9 07:B9C9: 04        .byte $04    ; <え>
- D - I - 0x00D9DA 07:B9CA: 26        .byte $26    ; <よ>
- D - I - 0x00D9DB 07:B9CB: 00        .byte $00
- D - I - 0x00D9DC 07:B9CC: 00        .byte $00
- D - I - 0x00D9DD 07:B9CD: 04        .byte $04    ; <え>
- D - I - 0x00D9DE 07:B9CE: 16        .byte $16    ; <に>
- D - I - 0x00D9DF 07:B9CF: 00        .byte $00
- D - I - 0x00D9E0 07:B9D0: 00        .byte $00
- D - I - 0x00D9E1 07:B9D1: 04        .byte $04    ; <え>
- D - I - 0x00D9E2 07:B9D2: 06        .byte $06    ; <か>
- D - I - 0x00D9E3 07:B9D3: 00        .byte $00
- D - I - 0x00D9E4 07:B9D4: 00        .byte $00
- D - I - 0x00D9E5 07:B9D5: 04        .byte $04    ; <え>
- D - I - 0x00D9E6 07:B9D6: 01        .byte $01    ; <あ>
- D - I - 0x00D9E7 07:B9D7: 00        .byte $00
- D - I - 0x00D9E8 07:B9D8: 00        .byte $00
- D - I - 0x00D9E9 07:B9D9: 04        .byte $04    ; <え>
- D - I - 0x00D9EA 07:B9DA: 11        .byte $11    ; <ち>
- D - I - 0x00D9EB 07:B9DB: 00        .byte $00
- D - I - 0x00D9EC 07:B9DC: 00        .byte $00
- D - I - 0x00D9ED 07:B9DD: 04        .byte $04    ; <え>
- D - I - 0x00D9EE 07:B9DE: 21        .byte $21    ; <む>
- D - I - 0x00D9EF 07:B9DF: 00        .byte $00
- D - I - 0x00D9F0 07:B9E0: 00        .byte $00
- D - I - 0x00D9F1 07:B9E1: 04        .byte $04    ; <え>
- D - I - 0x00D9F2 07:B9E2: 31        .byte $31    ; <ゅ>
- D - I - 0x00D9F3 07:B9E3: 00        .byte $00
- D - I - 0x00D9F4 07:B9E4: 00        .byte $00
- D - I - 0x00D9F5 07:B9E5: 0A        .byte $0A    ; <こ>
- D - I - 0x00D9F6 07:B9E6: 30        .byte $30    ; <ゃ>
- D - I - 0x00D9F7 07:B9E7: 00        .byte $00
- D - I - 0x00D9F8 07:B9E8: 00        .byte $00
- D - I - 0x00D9F9 07:B9E9: 04        .byte $04    ; <え>
- D - I - 0x00D9FA 07:B9EA: 31        .byte $31    ; <ゅ>
- D - I - 0x00D9FB 07:B9EB: 00        .byte $00
- D - I - 0x00D9FC 07:B9EC: 00        .byte $00
- D - I - 0x00D9FD 07:B9ED: 04        .byte $04    ; <え>
- D - I - 0x00D9FE 07:B9EE: 21        .byte $21    ; <む>
- D - I - 0x00D9FF 07:B9EF: 00        .byte $00
- D - I - 0x00DA00 07:B9F0: 00        .byte $00
- D - I - 0x00DA01 07:B9F1: 04        .byte $04    ; <え>
- D - I - 0x00DA02 07:B9F2: 11        .byte $11    ; <ち>
- D - I - 0x00DA03 07:B9F3: 00        .byte $00
- D - I - 0x00DA04 07:B9F4: 00        .byte $00
- D - I - 0x00DA05 07:B9F5: 04        .byte $04    ; <え>
- D - I - 0x00DA06 07:B9F6: 01        .byte $01    ; <あ>
- D - I - 0x00DA07 07:B9F7: 00        .byte $00
- D - I - 0x00DA08 07:B9F8: 00        .byte $00
- D - I - 0x00DA09 07:B9F9: 04        .byte $04    ; <え>
- D - I - 0x00DA0A 07:B9FA: 0A        .byte $0A    ; <こ>
- D - I - 0x00DA0B 07:B9FB: 00        .byte $00
- D - I - 0x00DA0C 07:B9FC: 00        .byte $00
- D - I - 0x00DA0D 07:B9FD: 04        .byte $04    ; <え>
- D - I - 0x00DA0E 07:B9FE: 1A        .byte $1A    ; <は>
- D - I - 0x00DA0F 07:B9FF: 00        .byte $00
- D - I - 0x00DA10 07:BA00: 00        .byte $00
- D - I - 0x00DA11 07:BA01: 04        .byte $04    ; <え>
- D - I - 0x00DA12 07:BA02: 2A        .byte $2A    ; <れ>
- D - I - 0x00DA13 07:BA03: 00        .byte $00
- D - I - 0x00DA14 07:BA04: 00        .byte $00
- D - I - 0x00DA15 07:BA05: 04        .byte $04    ; <え>
- D - I - 0x00DA16 07:BA06: 3A        .byte $3A    ; <7>
- D - I - 0x00DA17 07:BA07: 00        .byte $00
- D - I - 0x00DA18 07:BA08: 00        .byte $00
- D - I - 0x00DA19 07:BA09: 0A        .byte $0A    ; <こ>
- D - I - 0x00DA1A 07:BA0A: 30        .byte $30    ; <ゃ>
- D - I - 0x00DA1B 07:BA0B: 00        .byte $00
- D - I - 0x00DA1C 07:BA0C: 00        .byte $00
- D - I - 0x00DA1D 07:BA0D: 04        .byte $04    ; <え>
- D - I - 0x00DA1E 07:BA0E: 3A        .byte $3A    ; <7>
- D - I - 0x00DA1F 07:BA0F: 00        .byte $00
- D - I - 0x00DA20 07:BA10: 00        .byte $00
- D - I - 0x00DA21 07:BA11: 04        .byte $04    ; <え>
- D - I - 0x00DA22 07:BA12: 2A        .byte $2A    ; <れ>
- D - I - 0x00DA23 07:BA13: 00        .byte $00
- D - I - 0x00DA24 07:BA14: 00        .byte $00
- D - I - 0x00DA25 07:BA15: 04        .byte $04    ; <え>
- D - I - 0x00DA26 07:BA16: 1A        .byte $1A    ; <は>
- D - I - 0x00DA27 07:BA17: 00        .byte $00
- D - I - 0x00DA28 07:BA18: 00        .byte $00
- D - I - 0x00DA29 07:BA19: 04        .byte $04    ; <え>
- D - I - 0x00DA2A 07:BA1A: 0A        .byte $0A    ; <こ>
- D - I - 0x00DA2B 07:BA1B: 00        .byte $00
- D - I - 0x00DA2C 07:BA1C: 00        .byte $00
- D - I - 0x00DA2D 07:BA1D: 04        .byte $04    ; <え>
- D - I - 0x00DA2E 07:BA1E: 06        .byte $06    ; <か>
- D - I - 0x00DA2F 07:BA1F: 00        .byte $00
- D - I - 0x00DA30 07:BA20: 00        .byte $00
- D - I - 0x00DA31 07:BA21: FE        .byte $FE

off_BA22_0C:
- D - I - 0x00DA32 07:BA22: 08        .byte $08    ; <く>
- D - I - 0x00DA33 07:BA23: 02        .byte $02    ; <い>
- D - I - 0x00DA34 07:BA24: 0F        .byte $0F    ; <そ>
- D - I - 0x00DA35 07:BA25: 00        .byte $00
- D - I - 0x00DA36 07:BA26: 00        .byte $00
- D - I - 0x00DA37 07:BA27: 02        .byte $02    ; <い>
- D - I - 0x00DA38 07:BA28: 30        .byte $30    ; <ゃ>
- D - I - 0x00DA39 07:BA29: 00        .byte $00
- D - I - 0x00DA3A 07:BA2A: 00        .byte $00
- D - I - 0x00DA3B 07:BA2B: FE        .byte $FE

off_BA2C_0D:
- D - I - 0x00DA3C 07:BA2C: 18        .byte $18    ; <ね>
- D - I - 0x00DA3D 07:BA2D: 20        .byte $20    ; <み>
- D - I - 0x00DA3E 07:BA2E: 0F        .byte $0F    ; <そ>
- D - I - 0x00DA3F 07:BA2F: 21        .byte $21    ; <む>
- D - I - 0x00DA40 07:BA30: 21        .byte $21    ; <む>
- D - I - 0x00DA41 07:BA31: 20        .byte $20    ; <み>
- D - I - 0x00DA42 07:BA32: 30        .byte $30    ; <ゃ>
- D - I - 0x00DA43 07:BA33: 30        .byte $30    ; <ゃ>
- D - I - 0x00DA44 07:BA34: 0F        .byte $0F    ; <そ>
- D - I - 0x00DA45 07:BA35: FE        .byte $FE

off_BA36_0E:
- D - I - 0x00DA46 07:BA36: 08        .byte $08    ; <く>
- D - I - 0x00DA47 07:BA37: 04        .byte $04    ; <え>
- D - I - 0x00DA48 07:BA38: 00        .byte $00
- D - I - 0x00DA49 07:BA39: 1C        .byte $1C    ; <ふ>
- D - I - 0x00DA4A 07:BA3A: 3C        .byte $3C    ; <9>
- D - I - 0x00DA4B 07:BA3B: 04        .byte $04    ; <え>
- D - I - 0x00DA4C 07:BA3C: 00        .byte $00
- D - I - 0x00DA4D 07:BA3D: 12        .byte $12    ; <つ>
- D - I - 0x00DA4E 07:BA3E: 22        .byte $22    ; <め>
- D - I - 0x00DA4F 07:BA3F: 04        .byte $04    ; <え>
- D - I - 0x00DA50 07:BA40: 00        .byte $00
- D - I - 0x00DA51 07:BA41: 13        .byte $13    ; <て>
- D - I - 0x00DA52 07:BA42: 23        .byte $23    ; <も>
- D - I - 0x00DA53 07:BA43: FE        .byte $FE

off_BA44_0F:
- D - I - 0x00DA54 07:BA44: 00        .byte $00
- D - I - 0x00DA55 07:BA45: 01        .byte $01    ; <あ>
- D - I - 0x00DA56 07:BA46: 0F        .byte $0F    ; <そ>
- D - I - 0x00DA57 07:BA47: 0F        .byte $0F    ; <そ>
- D - I - 0x00DA58 07:BA48: 00        .byte $00
- D - I - 0x00DA59 07:BA49: 01        .byte $01    ; <あ>
- D - I - 0x00DA5A 07:BA4A: 15        .byte $15    ; <な>
- D - I - 0x00DA5B 07:BA4B: 15        .byte $15    ; <な>
- D - I - 0x00DA5C 07:BA4C: 00        .byte $00
- D - I - 0x00DA5D 07:BA4D: 01        .byte $01    ; <あ>
- D - I - 0x00DA5E 07:BA4E: 0A        .byte $0A    ; <こ>
- D - I - 0x00DA5F 07:BA4F: 08        .byte $08    ; <く>
- D - I - 0x00DA60 07:BA50: 00        .byte $00
- D - I - 0x00DA61 07:BA51: FE        .byte $FE

off_BA52_11:
- D - I - 0x00DA62 07:BA52: 08        .byte $08    ; <く>
- D - I - 0x00DA63 07:BA53: 01        .byte $01    ; <あ>
- D - I - 0x00DA64 07:BA54: 30        .byte $30    ; <ゃ>
- D - I - 0x00DA65 07:BA55: 00        .byte $00
- D - I - 0x00DA66 07:BA56: 00        .byte $00
- D - I - 0x00DA67 07:BA57: 01        .byte $01    ; <あ>
- D - I - 0x00DA68 07:BA58: 15        .byte $15    ; <な>
- D - I - 0x00DA69 07:BA59: 00        .byte $00
- D - I - 0x00DA6A 07:BA5A: 00        .byte $00
- D - I - 0x00DA6B 07:BA5B: FE        .byte $FE

off_BA5C_14:
- D - I - 0x00DA6C 07:BA5C: 18        .byte $18    ; <ね>
- D - I - 0x00DA6D 07:BA5D: 06        .byte $06    ; <か>
- D - I - 0x00DA6E 07:BA5E: 00        .byte $00
- D - I - 0x00DA6F 07:BA5F: 00        .byte $00
- D - I - 0x00DA70 07:BA60: 38        .byte $38    ; <5>
- D - I - 0x00DA71 07:BA61: 01        .byte $01    ; <あ>
- D - I - 0x00DA72 07:BA62: 00        .byte $00
- D - I - 0x00DA73 07:BA63: 00        .byte $00
- D - I - 0x00DA74 07:BA64: 0F        .byte $0F    ; <そ>
- D - I - 0x00DA75 07:BA65: 06        .byte $06    ; <か>
- D - I - 0x00DA76 07:BA66: 00        .byte $00
- D - I - 0x00DA77 07:BA67: 00        .byte $00
- D - I - 0x00DA78 07:BA68: 28        .byte $28    ; <り>
- D - I - 0x00DA79 07:BA69: 01        .byte $01    ; <あ>
- D - I - 0x00DA7A 07:BA6A: 00        .byte $00
- D - I - 0x00DA7B 07:BA6B: 00        .byte $00
- D - I - 0x00DA7C 07:BA6C: 0F        .byte $0F    ; <そ>
- D - I - 0x00DA7D 07:BA6D: 06        .byte $06    ; <か>
- D - I - 0x00DA7E 07:BA6E: 00        .byte $00
- D - I - 0x00DA7F 07:BA6F: 00        .byte $00
- D - I - 0x00DA80 07:BA70: 26        .byte $26    ; <よ>
- D - I - 0x00DA81 07:BA71: 01        .byte $01    ; <あ>
- D - I - 0x00DA82 07:BA72: 00        .byte $00
- D - I - 0x00DA83 07:BA73: 00        .byte $00
- D - I - 0x00DA84 07:BA74: 0F        .byte $0F    ; <そ>
- D - I - 0x00DA85 07:BA75: 06        .byte $06    ; <か>
- D - I - 0x00DA86 07:BA76: 00        .byte $00
- D - I - 0x00DA87 07:BA77: 00        .byte $00
- D - I - 0x00DA88 07:BA78: 25        .byte $25    ; <ゆ>
- D - I - 0x00DA89 07:BA79: 01        .byte $01    ; <あ>
- D - I - 0x00DA8A 07:BA7A: 00        .byte $00
- D - I - 0x00DA8B 07:BA7B: 00        .byte $00
- D - I - 0x00DA8C 07:BA7C: 0F        .byte $0F    ; <そ>
- D - I - 0x00DA8D 07:BA7D: 06        .byte $06    ; <か>
- D - I - 0x00DA8E 07:BA7E: 00        .byte $00
- D - I - 0x00DA8F 07:BA7F: 00        .byte $00
- D - I - 0x00DA90 07:BA80: 23        .byte $23    ; <も>
- D - I - 0x00DA91 07:BA81: 01        .byte $01    ; <あ>
- D - I - 0x00DA92 07:BA82: 00        .byte $00
- D - I - 0x00DA93 07:BA83: 00        .byte $00
- D - I - 0x00DA94 07:BA84: 0F        .byte $0F    ; <そ>
- D - I - 0x00DA95 07:BA85: 06        .byte $06    ; <か>
- D - I - 0x00DA96 07:BA86: 00        .byte $00
- D - I - 0x00DA97 07:BA87: 00        .byte $00
- D - I - 0x00DA98 07:BA88: 21        .byte $21    ; <む>
- D - I - 0x00DA99 07:BA89: 01        .byte $01    ; <あ>
- D - I - 0x00DA9A 07:BA8A: 00        .byte $00
- D - I - 0x00DA9B 07:BA8B: 00        .byte $00
- D - I - 0x00DA9C 07:BA8C: 0F        .byte $0F    ; <そ>
- D - I - 0x00DA9D 07:BA8D: 06        .byte $06    ; <か>
- D - I - 0x00DA9E 07:BA8E: 00        .byte $00
- D - I - 0x00DA9F 07:BA8F: 00        .byte $00
- D - I - 0x00DAA0 07:BA90: 31        .byte $31    ; <ゅ>
- D - I - 0x00DAA1 07:BA91: 01        .byte $01    ; <あ>
- D - I - 0x00DAA2 07:BA92: 00        .byte $00
- D - I - 0x00DAA3 07:BA93: 00        .byte $00
- D - I - 0x00DAA4 07:BA94: 0F        .byte $0F    ; <そ>
- D - I - 0x00DAA5 07:BA95: FE        .byte $FE

off_BA96_10_12_13:
- D - I - 0x00DAA6 07:BA96: 80        .byte $80
- D - I - 0x00DAA7 07:BA97: 40        .byte $40    ; <「>
- D - I - 0x00DAA8 07:BA98: 02        .byte $02    ; <い>
- D - I - 0x00DAA9 07:BA99: 42        .byte $42    ; <イ>
- D - I - 0x00DAAA 07:BA9A: 02        .byte $02    ; <い>
- D - I - 0x00DAAB 07:BA9B: 44        .byte $44    ; <エ>
- D - I - 0x00DAAC 07:BA9C: 02        .byte $02    ; <い>
- D - I - 0x00DAAD 07:BA9D: FE        .byte $FE



tbl_0x00DB50_оформление_окна_диалога:
    .word off_BB48_00_прямоугольное_облако_комментатора_в_катсценах
    .word off_BB9A_01_электрическое_облако_комментатора_в_катсценах
    .word off_BBE8_02_meeting___advice
    .word off_BC42_03_meeting___coach
    .word off_BC43_04_meeting___level_up_password
    .word off_BC44_05_half_time



off_BB48_00_прямоугольное_облако_комментатора_в_катсценах:
; верхняя горизонтальная полоска
    .byte $18
    .word $2227
    .byte $9C, $A8, $A8, $A8, $A8, $A8, $A8, $A8, $A8, $A8, $A8, $A8, $A8, $A8, $A8, $A8, $A8, $A8, $A8, $A8, $A8, $A8, $A8, $9D
; нижняя горизонтальная полоска
    .byte $18
    .word $2367
    .byte $9E, $A9, $A9, $A9, $A9, $A9, $A9, $A9, $A9, $A9, $A9, $A9, $A9, $A9, $A9, $A9, $A9, $A9, $A9, $A9, $A9, $A9, $A9, $9F
; левая вертикальная полоска
    .byte $89
    .word $2247
    .byte $AA, $AA, $AA, $AA, $AA, $AA, $A5, $AA, $AA, $01, $06, $23, $A4
; правая вертикальная полоска
    .byte $C9
    .word $225E
    .byte $AB, $AB, $AB, $AB, $AB, $AB, $AB, $AB, $AB



off_BB9A_01_электрическое_облако_комментатора_в_катсценах:
; верхняя горизонтальная полоска
    .byte $18
    .word $2227
    .byte $9B, $A2, $A2, $A9, $A2, $A9, $A2, $A9, $A2, $A9, $A2, $A9, $A2, $A9, $A2, $A9, $A2, $A9, $A2, $A9, $A2, $A9, $A2, $9A
; нижняя горизонтальная полоска
    .byte $18
    .word $2367
    .byte $99, $A0, $A8, $A0, $A8, $A0, $A8, $A0, $A8, $A0, $A8, $A0, $A8, $A0, $A8, $A0, $A8, $A0, $A8, $A0, $A8, $A0, $A0, $98
; левая вертикальная полоска
    .byte $89
    .word $2247
    .byte $A1, $AB, $A1, $AB, $A1, $AB, $A1, $AB, $A1
; правая вертикальная полоска
    .byte $C9
    .word $225E
    .byte $A3, $AA, $A3, $AA, $A3, $AA, $A3, $AA, $A3



off_BBE8_02_meeting___advice:
; верхняя горизонтальная полоска
    .byte $1E
    .word $2221
    .byte $9C, $A8, $A8, $A8, $A8, $A8, $A8, $A8, $A8, $A8, $A8, $A8, $A8, $A8, $A8, $A8, $A8, $A8, $A8, $A8, $A8, $A8, $A8, $A8, $A8, $A8, $A8, $A8, $A8, $9D
; нижняя горизонтальная полоска
    .byte $1E
    .word $2361
    .byte $9E, $A9, $A9, $A9, $A9, $A9, $A9, $A9, $A9, $A9, $A9, $A9, $A9, $A9, $A9, $A9, $A9, $A9, $A9, $A9, $A9, $A9, $A9, $A9, $A9, $A9, $A9, $A9, $A9, $9F
; левая вертикальная полоска
    .byte $89
    .word $2241
    .byte $AA, $AA, $AA, $AA, $AA, $AA, $AA, $AA, $AA
; правая вертикальная полоска
    .byte $C9
    .word $225E
    .byte $AB, $AB, $AB, $AB, $AB, $AB, $AB, $AB, $AB



off_BC42_03_meeting___coach:
; верхняя горизонтальная полоска
    .byte $1E
    .word $2221
    .byte $9C, $A8, $A8, $A8, $A8, $A8, $A8, $A8, $A8, $A8, $A8, $A8, $9D, $9C, $A8, $A8, $A8, $A8, $A8, $A8, $A8, $A8, $A8, $A8, $A8, $A8, $A8, $A8, $A8, $9D
; нижняя горизонтальная полоска
    .byte $1E
    .word $2361
    .byte $9E, $A9, $A9, $A9, $A9, $A9, $A9, $A9, $A9, $A9, $A9, $A9, $9F, $9E, $A9, $A9, $A9, $A9, $A9, $A9, $A9, $A9, $A9, $A9, $A9, $A9, $A9, $A9, $A9, $9F
; левая вертикальная полоска левого окна
    .byte $89
    .word $2241
    .byte $AA, $AA, $AA, $AA, $AA, $AA, $AA, $AA, $AA
; правая вертикальная полоска левого окна
    .byte $89
    .word $224D
    .byte $AB, $AB, $AB, $AB, $AB, $AB, $AB, $AB, $AB
; левая вертикальная полоска правого окна
    .byte $89
    .word $224E
    .byte $AA, $AA, $AA, $AA, $AA, $AA, $AA, $AA, $AA
; правая вертикальная полоска правого окна
    .byte $89
    .word $225E
    .byte $AB, $AB, $AB, $AB, $AB, $AB, $AB, $AB, $AB
; Team Meeting
    .byte $0C
    .word $20AA
    .byte $80, $81, $82, $83, $00, $84, $81, $81, $85, $86, $87, $88
; Team Meeting      ; для смещения камеры в совете тренера
    .byte $0C
    .word $24AA
    .byte $80, $81, $82, $83, $00, $84, $81, $81, $85, $86, $87, $88

    .byte $06
    .word $2263
    .text "Advice"

    .byte $0A
    .word $22A3
    .text "Score Memo"

    .byte $07
    .word $22E3
    .text "Options"

    .byte $47
    .word $2323
    .text "Kickoff"



off_BC43_04_meeting___level_up_password:
; верхняя горизонтальная полоска
    .byte $1E
    .word $2221
    .byte $9C, $A8, $A8, $A8, $A8, $A8, $A8, $A8, $A8, $A8, $A8, $A8, $A8, $A8, $A8, $A8, $A8, $A8, $A8, $A8, $A8, $A8, $A8, $A8, $A8, $A8, $A8, $A8, $A8, $9D
; нижняя горизонтальная полоска
    .byte $1E
    .word $2361
    .byte $9E, $A9, $A9, $A9, $A9, $A9, $A9, $A9, $A9, $A9, $A9, $A9, $A9, $A9, $A9, $A9, $A9, $A9, $A9, $A9, $A9, $A9, $A9, $A9, $A9, $A9, $A9, $A9, $A9, $9F
; левая вертикальная полоска
    .byte $89
    .word $2241
    .byte $AA, $AA, $AA, $AA, $AA, $AA, $AA, $AA, $AA
; правая вертикальная полоска
    .byte $89
    .word $225E
    .byte $AB, $AB, $AB, $AB, $AB, $AB, $AB, $AB, $AB
; Team Meeting
    .byte $0C
    .word $20AA
    .byte $80, $81, $82, $83, $00, $84, $81, $81, $85, $86, $87, $88
; Team Meeting      ; для смещения камеры в совете тренера
    .byte $4C
    .word $24AA
    .byte $80, $81, $82, $83, $00, $84, $81, $81, $85, $86, $87, $88



off_BC44_05_half_time:
; верхняя горизонтальная полоска
    .byte $1E
    .word $2221
    .byte $9C, $A8, $A8, $A8, $A8, $A8, $A8, $A8, $A8, $A8, $A8, $A8, $A8, $A8, $A8, $A8, $A8, $A8, $A8, $A8, $A8, $A8, $A8, $A8, $A8, $A8, $A8, $A8, $A8, $9D
; нижняя горизонтальная полоска
    .byte $1E
    .word $2361
    .byte $9E, $A9, $A9, $A9, $A9, $A9, $A9, $A9, $A9, $A9, $A9, $A9, $A9, $A9, $A9, $A9, $A9, $A9, $A9, $A9, $A9, $A9, $A9, $A9, $A9, $A9, $A9, $A9, $A9, $9F
; левая вертикальная полоска
    .byte $89
    .word $2241
    .byte $AA, $AA, $AA, $AA, $AA, $AA, $AA, $AA, $AA
; правая вертикальная полоска
    .byte $89
    .word $225E
    .byte $AB, $AB, $AB, $AB, $AB, $AB, $AB, $AB, $AB
; Half-Time
    .byte $49
    .word $20AB
    .byte $89, $82, $8A, $8B, $8C, $80, $86, $83, $81



tbl_0x00DD10_номера_анимаций_чарли:
    .word off_BD0C_00
    .word off_BD1A_01
    .word off_BD24_02
    .word off_BD32_03
    .word off_BD41_04
    .word off_BD4E_05

off_BD0C_00:
    .byte $05
    .byte $0D
    .byte $15
    .byte $0D
    .byte $15
    .byte $1D
    .byte $15
    .byte $0D
    .byte $15
    .byte $1D
    .byte $15
    .byte $0D
    .byte $05
    .byte $FE

off_BD1A_01:
    .byte $24
    .byte $2C
    .byte $34
    .byte $2C
    .byte $34
    .byte $2C
    .byte $34
    .byte $2C
    .byte $24
    .byte $FE

off_BD24_02:
    .byte $3D
    .byte $45
    .byte $4D
    .byte $45
    .byte $4D
    .byte $45
    .byte $3D
    .byte $45
    .byte $4D
    .byte $45
    .byte $4D
    .byte $45
    .byte $3D
    .byte $FE

off_BD32_03:
    .byte $55
    .byte $5D
    .byte $65
    .byte $5D
    .byte $65
    .byte $5D
    .byte $55
    .byte $5D
    .byte $65
    .byte $5D
    .byte $65
    .byte $5D
    .byte $65
    .byte $5D
    .byte $FE

off_BD41_04:
    .byte $6B
    .byte $73
    .byte $83
    .byte $7B
    .byte $6D
    .byte $75
    .byte $85
    .byte $7D
    .byte $6B
    .byte $73
    .byte $83
    .byte $7B
    .byte $FE

off_BD4E_05:
    .byte $95
    .byte $9D
    .byte $95
    .byte $9D
    .byte $95
    .byte $A7
    .byte $9D
    .byte $A5
    .byte $9F
    .byte $95
    .byte $8F
    .byte $95
    .byte $9F
    .byte $A7
    .byte $9D
    .byte $A7
    .byte $9D
    .byte $A7
    .byte $9D
    .byte $A7
    .byte $9D
    .byte $95
    .byte $8F
    .byte $FE



tbl_0x00DD90_тайлы_чарли_в_катсцене:
; картинки из 12 тайлов, рисуется вертикально по 4 тайла 3 раза
    ; 00
    .byte $EB, $B6, $BC, $BE
    .byte $EE, $B7, $BD, $BF
    .byte $EF, $E2, $E8, $EA
    
    .byte $EB, $B6, $BC, $BE
    .byte $EE, $DA, $BD, $BF
    .byte $EF, $E2, $E8, $EA
    
    .byte $EB, $B6, $BC, $BE
    .byte $EE, $F1, $BD, $BF
    .byte $EF, $E2, $E8, $EA
    
    .byte $EB, $B6, $BC, $BE
    .byte $EE, $D8, $BD, $BF
    .byte $EF, $E2, $E8, $EA


    ; 01
    .byte $B4, $B6, $BC, $BE
    .byte $E4, $E6, $BD, $BF
    .byte $E5, $E7, $E8, $EA
    
    .byte $B4, $B6, $BC, $BE
    .byte $E4, $D9, $BD, $BF
    .byte $E5, $E7, $E8, $EA
    
    .byte $B4, $B6, $BC, $BE
    .byte $E4, $F2, $BD, $BF
    .byte $E5, $E7, $E8, $EA


    ; 02
    .byte $B4, $E9, $BC, $BE
    .byte $B5, $EC, $BD, $BF
    .byte $E0, $ED, $E8, $EA
    
    .byte $B4, $E9, $BC, $BE
    .byte $B5, $DB, $BD, $BF
    .byte $E0, $ED, $E8, $EA
    
    .byte $B4, $E9, $BC, $BE
    .byte $B5, $F0, $BD, $BF
    .byte $E0, $ED, $E8, $EA


    ; 03
    .byte $F4, $F5, $B0, $AE
    .byte $B5, $EC, $BD, $BF
    .byte $E0, $ED, $E8, $EA
    
    .byte $E1, $E3, $B0, $AE
    .byte $B5, $DB, $BD, $BF
    .byte $E0, $ED, $E8, $EA
    
    .byte $F4, $F5, $B0, $AE
    .byte $B5, $F0, $BD, $BF
    .byte $E0, $ED, $E8, $EA


    ; 04
    .byte $DC, $DF, $B0, $AE
    .byte $B5, $EC, $BD, $BF
    .byte $E0, $ED, $E8, $EA
    
    .byte $DD, $DF, $B0, $AE
    .byte $B5, $DB, $BD, $BF
    .byte $E0, $ED, $E8, $EA
    
    .byte $DD, $F5, $B0, $AE
    .byte $B5, $DB, $BD, $BF
    .byte $E0, $ED, $E8, $EA
    
    .byte $DE, $F5, $B0, $AE
    .byte $B5, $F0, $BD, $BF
    .byte $E0, $ED, $E8, $EA


    ; 05
    .byte $EB, $B6, $BC, $AE
    .byte $EE, $DA, $D6, $D3
    .byte $EF, $E2, $E8, $EA
    
    .byte $EB, $B6, $BC, $AE
    .byte $EE, $F1, $D6, $D3
    .byte $EF, $E2, $E8, $EA
    
    .byte $EB, $B6, $BC, $AE
    .byte $EE, $D8, $D6, $D3
    .byte $EF, $E2, $E8, $EA
    
    .byte $EB, $B6, $BC, $AE
    .byte $EE, $F3, $D6, $D3
    .byte $EF, $E2, $E8, $EA



tbl_0x00DF10:
; предположительно по 19 байтов
- D - I - 0x00DF10 07:BF00: 00        .byte $00
- D - I - 0x00DF11 07:BF01: 00        .byte $00
- D - I - 0x00DF12 07:BF02: 00        .byte $00
- D - I - 0x00DF13 07:BF03: 00        .byte $00
- D - I - 0x00DF14 07:BF04: 00        .byte $00
- D - I - 0x00DF15 07:BF05: 00        .byte $00
- D - I - 0x00DF16 07:BF06: 00        .byte $00
- D - I - 0x00DF17 07:BF07: 00        .byte $00
- D - I - 0x00DF18 07:BF08: 00        .byte $00
- D - I - 0x00DF19 07:BF09: 00        .byte $00
- D - I - 0x00DF1A 07:BF0A: 00        .byte $00
- D - I - 0x00DF1B 07:BF0B: 00        .byte $00
- D - I - 0x00DF1C 07:BF0C: 00        .byte $00
- D - I - 0x00DF1D 07:BF0D: 00        .byte $00
- D - I - 0x00DF1E 07:BF0E: 00        .byte $00
- D - I - 0x00DF1F 07:BF0F: 00        .byte $00
- D - I - 0x00DF20 07:BF10: 00        .byte $00
- D - I - 0x00DF21 07:BF11: 00        .byte $00
- D - I - 0x00DF22 07:BF12: 00        .byte $00

- D - I - 0x00DF23 07:BF13: 40        .byte $40    ; <「>
- D - I - 0x00DF24 07:BF14: 80        .byte $80
- D - I - 0x00DF25 07:BF15: 00        .byte $00
- D - I - 0x00DF26 07:BF16: 22        .byte $22    ; <め>
- D - I - 0x00DF27 07:BF17: 00        .byte $00
- D - I - 0x00DF28 07:BF18: 00        .byte $00
- D - I - 0x00DF29 07:BF19: 00        .byte $00
- D - I - 0x00DF2A 07:BF1A: 00        .byte $00
- D - I - 0x00DF2B 07:BF1B: 00        .byte $00
- D - I - 0x00DF2C 07:BF1C: 00        .byte $00
- D - I - 0x00DF2D 07:BF1D: 00        .byte $00
- D - I - 0x00DF2E 07:BF1E: 00        .byte $00
- D - I - 0x00DF2F 07:BF1F: 00        .byte $00
- D - I - 0x00DF30 07:BF20: 00        .byte $00
- D - I - 0x00DF31 07:BF21: 00        .byte $00
- D - I - 0x00DF32 07:BF22: 00        .byte $00
- D - I - 0x00DF33 07:BF23: 00        .byte $00
- D - I - 0x00DF34 07:BF24: 00        .byte $00
- D - I - 0x00DF35 07:BF25: 00        .byte $00

- - - - - 0x00DF36 07:BF26: 0F        .byte $0F    ; <そ>
- - - - - 0x00DF37 07:BF27: 0F        .byte $0F    ; <そ>
- - - - - 0x00DF38 07:BF28: 00        .byte $00
- - - - - 0x00DF39 07:BF29: 01        .byte $01    ; <あ>
- - - - - 0x00DF3A 07:BF2A: 0F        .byte $0F    ; <そ>
- - - - - 0x00DF3B 07:BF2B: 00        .byte $00
- - - - - 0x00DF3C 07:BF2C: 01        .byte $01    ; <あ>
- - - - - 0x00DF3D 07:BF2D: 0F        .byte $0F    ; <そ>
- - - - - 0x00DF3E 07:BF2E: 00        .byte $00
- - - - - 0x00DF3F 07:BF2F: 01        .byte $01    ; <あ>
- - - - - 0x00DF40 07:BF30: 0F        .byte $0F    ; <そ>
- - - - - 0x00DF41 07:BF31: 00        .byte $00
- - - - - 0x00DF42 07:BF32: 01        .byte $01    ; <あ>
- - - - - 0x00DF43 07:BF33: 0F        .byte $0F    ; <そ>
- - - - - 0x00DF44 07:BF34: 00        .byte $00
- - - - - 0x00DF45 07:BF35: 01        .byte $01    ; <あ>
- - - - - 0x00DF46 07:BF36: 8F        .byte $8F    ; <S>
- - - - - 0x00DF47 07:BF37: 00        .byte $00
- - - - - 0x00DF48 07:BF38: 22        .byte $22    ; <め>

- D - I - 0x00DF49 07:BF39: 04        .byte $04    ; <え>
- D - I - 0x00DF4A 07:BF3A: 68        .byte $68    ; <リ>
- D - I - 0x00DF4B 07:BF3B: 00        .byte $00
- D - I - 0x00DF4C 07:BF3C: 01        .byte $01    ; <あ>
- D - I - 0x00DF4D 07:BF3D: 80        .byte $80
- D - I - 0x00DF4E 07:BF3E: C0        .byte $C0    ; <ヅ>
- D - I - 0x00DF4F 07:BF3F: 21        .byte $21    ; <む>
- D - I - 0x00DF50 07:BF40: 00        .byte $00
- D - I - 0x00DF51 07:BF41: 00        .byte $00
- D - I - 0x00DF52 07:BF42: 00        .byte $00
- D - I - 0x00DF53 07:BF43: 00        .byte $00
- D - I - 0x00DF54 07:BF44: 00        .byte $00
- D - I - 0x00DF55 07:BF45: 00        .byte $00
- D - I - 0x00DF56 07:BF46: 00        .byte $00
- D - I - 0x00DF57 07:BF47: 00        .byte $00
- D - I - 0x00DF58 07:BF48: 00        .byte $00
- D - I - 0x00DF59 07:BF49: 00        .byte $00
- D - I - 0x00DF5A 07:BF4A: 00        .byte $00
- D - I - 0x00DF5B 07:BF4B: 00        .byte $00

- - - - - 0x00DF5C 07:BF4C: 18        .byte $18    ; <ね>
- - - - - 0x00DF5D 07:BF4D: 00        .byte $00
- - - - - 0x00DF5E 07:BF4E: 00        .byte $00
- - - - - 0x00DF5F 07:BF4F: 00        .byte $00
- - - - - 0x00DF60 07:BF50: 00        .byte $00
- - - - - 0x00DF61 07:BF51: 00        .byte $00
- - - - - 0x00DF62 07:BF52: 01        .byte $01    ; <あ>
- - - - - 0x00DF63 07:BF53: 00        .byte $00
- - - - - 0x00DF64 07:BF54: 00        .byte $00
- - - - - 0x00DF65 07:BF55: 00        .byte $00
- - - - - 0x00DF66 07:BF56: 00        .byte $00
- - - - - 0x00DF67 07:BF57: 00        .byte $00
- - - - - 0x00DF68 07:BF58: 00        .byte $00
- - - - - 0x00DF69 07:BF59: 00        .byte $00
- - - - - 0x00DF6A 07:BF5A: 00        .byte $00
- - - - - 0x00DF6B 07:BF5B: 00        .byte $00
- - - - - 0x00DF6C 07:BF5C: 00        .byte $00
- - - - - 0x00DF6D 07:BF5D: 00        .byte $00
- - - - - 0x00DF6E 07:BF5E: 00        .byte $00

- D - I - 0x00DF6F 07:BF5F: 18        .byte $18    ; <ね>
- D - I - 0x00DF70 07:BF60: 08        .byte $08    ; <く>
- D - I - 0x00DF71 07:BF61: 00        .byte $00
- D - I - 0x00DF72 07:BF62: 00        .byte $00
- D - I - 0x00DF73 07:BF63: 20        .byte $20    ; <み>
- D - I - 0x00DF74 07:BF64: 00        .byte $00
- D - I - 0x00DF75 07:BF65: 00        .byte $00
- D - I - 0x00DF76 07:BF66: 80        .byte $80
- D - I - 0x00DF77 07:BF67: 00        .byte $00
- D - I - 0x00DF78 07:BF68: 22        .byte $22    ; <め>
- D - I - 0x00DF79 07:BF69: 00        .byte $00
- D - I - 0x00DF7A 07:BF6A: 00        .byte $00
- D - I - 0x00DF7B 07:BF6B: 00        .byte $00
- D - I - 0x00DF7C 07:BF6C: 00        .byte $00
- D - I - 0x00DF7D 07:BF6D: 00        .byte $00
- D - I - 0x00DF7E 07:BF6E: 00        .byte $00
- D - I - 0x00DF7F 07:BF6F: 00        .byte $00
- D - I - 0x00DF80 07:BF70: 00        .byte $00
- D - I - 0x00DF81 07:BF71: 00        .byte $00

- D - I - 0x00DF82 07:BF72: 10        .byte $10    ; <た>
- D - I - 0x00DF83 07:BF73: 10        .byte $10    ; <た>
- D - I - 0x00DF84 07:BF74: 00        .byte $00
- D - I - 0x00DF85 07:BF75: 00        .byte $00
- D - I - 0x00DF86 07:BF76: 06        .byte $06    ; <か>
- D - I - 0x00DF87 07:BF77: 00        .byte $00
- D - I - 0x00DF88 07:BF78: 00        .byte $00
- D - I - 0x00DF89 07:BF79: 0A        .byte $0A    ; <こ>
- D - I - 0x00DF8A 07:BF7A: 00        .byte $00
- D - I - 0x00DF8B 07:BF7B: 00        .byte $00
- D - I - 0x00DF8C 07:BF7C: 0C        .byte $0C    ; <し>
- D - I - 0x00DF8D 07:BF7D: 00        .byte $00
- D - I - 0x00DF8E 07:BF7E: 00        .byte $00
- D - I - 0x00DF8F 07:BF7F: 80        .byte $80
- D - I - 0x00DF90 07:BF80: 00        .byte $00
- D - I - 0x00DF91 07:BF81: 22        .byte $22    ; <め>
- D - I - 0x00DF92 07:BF82: 00        .byte $00
- D - I - 0x00DF93 07:BF83: 00        .byte $00
- D - I - 0x00DF94 07:BF84: 00        .byte $00

- D - I - 0x00DF95 07:BF85: 20        .byte $20    ; <み>
- D - I - 0x00DF96 07:BF86: 07        .byte $07    ; <き>
- D - I - 0x00DF97 07:BF87: 00        .byte $00
- D - I - 0x00DF98 07:BF88: 00        .byte $00
- D - I - 0x00DF99 07:BF89: 07        .byte $07    ; <き>
- D - I - 0x00DF9A 07:BF8A: 00        .byte $00
- D - I - 0x00DF9B 07:BF8B: 00        .byte $00
- D - I - 0x00DF9C 07:BF8C: 10        .byte $10    ; <た>
- D - I - 0x00DF9D 07:BF8D: 00        .byte $00
- D - I - 0x00DF9E 07:BF8E: 00        .byte $00
- D - I - 0x00DF9F 07:BF8F: 80        .byte $80
- D - I - 0x00DFA0 07:BF90: 00        .byte $00
- D - I - 0x00DFA1 07:BF91: 22        .byte $22    ; <め>
- D - I - 0x00DFA2 07:BF92: 00        .byte $00
- D - I - 0x00DFA3 07:BF93: 00        .byte $00
- D - I - 0x00DFA4 07:BF94: 00        .byte $00
- D - I - 0x00DFA5 07:BF95: 00        .byte $00
- D - I - 0x00DFA6 07:BF96: 00        .byte $00
- D - I - 0x00DFA7 07:BF97: 00        .byte $00

- D - I - 0x00DFA8 07:BF98: 20        .byte $20    ; <み>
- D - I - 0x00DFA9 07:BF99: 10        .byte $10    ; <た>
- D - I - 0x00DFAA 07:BF9A: 00        .byte $00
- D - I - 0x00DFAB 07:BF9B: 00        .byte $00
- D - I - 0x00DFAC 07:BF9C: 06        .byte $06    ; <か>
- D - I - 0x00DFAD 07:BF9D: 00        .byte $00
- D - I - 0x00DFAE 07:BF9E: 00        .byte $00
- D - I - 0x00DFAF 07:BF9F: 08        .byte $08    ; <く>
- D - I - 0x00DFB0 07:BFA0: 00        .byte $00
- D - I - 0x00DFB1 07:BFA1: 00        .byte $00
- D - I - 0x00DFB2 07:BFA2: 80        .byte $80
- D - I - 0x00DFB3 07:BFA3: 00        .byte $00
- D - I - 0x00DFB4 07:BFA4: 22        .byte $22    ; <め>
- D - I - 0x00DFB5 07:BFA5: 00        .byte $00
- D - I - 0x00DFB6 07:BFA6: 00        .byte $00
- D - I - 0x00DFB7 07:BFA7: 00        .byte $00
- D - I - 0x00DFB8 07:BFA8: 00        .byte $00
- D - I - 0x00DFB9 07:BFA9: 00        .byte $00
- D - I - 0x00DFBA 07:BFAA: 00        .byte $00

- D - I - 0x00DFBB 07:BFAB: 20        .byte $20    ; <み>
- D - I - 0x00DFBC 07:BFAC: 14        .byte $14    ; <と>
- D - I - 0x00DFBD 07:BFAD: 00        .byte $00
- D - I - 0x00DFBE 07:BFAE: 00        .byte $00
- D - I - 0x00DFBF 07:BFAF: 00        .byte $00
- D - I - 0x00DFC0 07:BFB0: 00        .byte $00
- D - I - 0x00DFC1 07:BFB1: 00        .byte $00
- D - I - 0x00DFC2 07:BFB2: 00        .byte $00
- D - I - 0x00DFC3 07:BFB3: 00        .byte $00
- D - I - 0x00DFC4 07:BFB4: 00        .byte $00
- D - I - 0x00DFC5 07:BFB5: 00        .byte $00
- D - I - 0x00DFC6 07:BFB6: 00        .byte $00
- D - I - 0x00DFC7 07:BFB7: 00        .byte $00
- D - I - 0x00DFC8 07:BFB8: 00        .byte $00
- D - I - 0x00DFC9 07:BFB9: 00        .byte $00
- D - I - 0x00DFCA 07:BFBA: 00        .byte $00
- D - I - 0x00DFCB 07:BFBB: 00        .byte $00
- D - I - 0x00DFCC 07:BFBC: 00        .byte $00
- D - I - 0x00DFCD 07:BFBD: 00        .byte $00
