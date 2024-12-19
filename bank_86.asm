.segment "BANK_86"
.include "copy_bank_ram.inc"
.include "copy_bank_val.inc"
.org $A000
; 0x00C010-0x00E00F



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
- D 1 - - - 0x00D810 06:B800: 2A B8     .word _off013_B82A_00
- D 1 - - - 0x00D812 06:B802: 38 B8     .word _off013_B838_01
- D 1 - - - 0x00D814 06:B804: 4A B8     .word _off013_B84A_02
- D 1 - - - 0x00D816 06:B806: 84 B8     .word _off013_B884_03
- D 1 - - - 0x00D818 06:B808: 92 B8     .word _off013_B892_04
- D 1 - - - 0x00D81A 06:B80A: C4 B8     .word _off013_B8C4_05
- D 1 - - - 0x00D81C 06:B80C: DE B8     .word _off013_B8DE_06
- D 1 - - - 0x00D81E 06:B80E: 18 B9     .word _off013_B918_07
- D 1 - - - 0x00D820 06:B810: 36 B9     .word _off013_B936_08
- D 1 - - - 0x00D822 06:B812: 58 B9     .word _off013_B958_09
- D 1 - - - 0x00D824 06:B814: 7A B9     .word _off013_B97A_0A
- D 1 - - - 0x00D826 06:B816: B4 B9     .word _off013_B9B4_0B
- D 1 - - - 0x00D828 06:B818: 22 BA     .word _off013_BA22_0C
- D 1 - - - 0x00D82A 06:B81A: 2C BA     .word _off013_BA2C_0D
- D 1 - - - 0x00D82C 06:B81C: 36 BA     .word _off013_BA36_0E
- D 1 - - - 0x00D82E 06:B81E: 44 BA     .word _off013_BA44_0F
- D 1 - - - 0x00D830 06:B820: 96 BA     .word _off013_BA96_10
- D 1 - - - 0x00D832 06:B822: 52 BA     .word _off013_BA52_11
- - - - - - 0x00D834 06:B824: 96 BA     .word _off013_BA96_12
- - - - - - 0x00D836 06:B826: 96 BA     .word _off013_BA96_13
- D 1 - - - 0x00D838 06:B828: 5C BA     .word _off013_BA5C_14



_off013_B82A_00:
- D 1 - I - 0x00D83A 06:B82A: 0C        .byte $0C
- D 1 - I - 0x00D83B 06:B82B: 04        .byte $04
- D 1 - I - 0x00D83C 06:B82C: 3A        .byte $3A
- D 1 - I - 0x00D83D 06:B82D: 1A        .byte $1A
- D 1 - I - 0x00D83E 06:B82E: 1A        .byte $1A
- D 1 - I - 0x00D83F 06:B82F: 04        .byte $04
- D 1 - I - 0x00D840 06:B830: 1A        .byte $1A
- D 1 - I - 0x00D841 06:B831: 1A        .byte $1A
- D 1 - I - 0x00D842 06:B832: 3A        .byte $3A
- D 1 - I - 0x00D843 06:B833: 04        .byte $04
- D 1 - I - 0x00D844 06:B834: 1A        .byte $1A
- D 1 - I - 0x00D845 06:B835: 3A        .byte $3A
- D 1 - I - 0x00D846 06:B836: 1A        .byte $1A
- D 1 - I - 0x00D847 06:B837: FE        .byte $FE



_off013_B838_01:
- D 1 - I - 0x00D848 06:B838: 08        .byte $08
- D 1 - I - 0x00D849 06:B839: 04        .byte $04
- D 1 - I - 0x00D84A 06:B83A: 30        .byte $30
- D 1 - I - 0x00D84B 06:B83B: 00        .byte $00
- D 1 - I - 0x00D84C 06:B83C: 00        .byte $00
- D 1 - I - 0x00D84D 06:B83D: 04        .byte $04
- D 1 - I - 0x00D84E 06:B83E: 21        .byte $21
- D 1 - I - 0x00D84F 06:B83F: 00        .byte $00
- D 1 - I - 0x00D850 06:B840: 00        .byte $00
- D 1 - I - 0x00D851 06:B841: 04        .byte $04
- D 1 - I - 0x00D852 06:B842: 30        .byte $30
- D 1 - I - 0x00D853 06:B843: 00        .byte $00
- D 1 - I - 0x00D854 06:B844: 00        .byte $00
- D 1 - I - 0x00D855 06:B845: 04        .byte $04
- D 1 - I - 0x00D856 06:B846: 25        .byte $25
- D 1 - I - 0x00D857 06:B847: 00        .byte $00
- D 1 - I - 0x00D858 06:B848: 00        .byte $00
- D 1 - I - 0x00D859 06:B849: FE        .byte $FE



_off013_B84A_02:
- D 1 - I - 0x00D85A 06:B84A: 08        .byte $08
- D 1 - I - 0x00D85B 06:B84B: 20        .byte $20
- D 1 - I - 0x00D85C 06:B84C: 08        .byte $08
- D 1 - I - 0x00D85D 06:B84D: 18        .byte $18
- D 1 - I - 0x00D85E 06:B84E: 15        .byte $15
- D 1 - I - 0x00D85F 06:B84F: 04        .byte $04
- D 1 - I - 0x00D860 06:B850: 30        .byte $30
- D 1 - I - 0x00D861 06:B851: 30        .byte $30
- D 1 - I - 0x00D862 06:B852: 30        .byte $30
- D 1 - I - 0x00D863 06:B853: 04        .byte $04
- D 1 - I - 0x00D864 06:B854: 0F        .byte $0F
- D 1 - I - 0x00D865 06:B855: 0F        .byte $0F
- D 1 - I - 0x00D866 06:B856: 0F        .byte $0F
- D 1 - I - 0x00D867 06:B857: 04        .byte $04
- D 1 - I - 0x00D868 06:B858: 11        .byte $11
- D 1 - I - 0x00D869 06:B859: 11        .byte $11
- D 1 - I - 0x00D86A 06:B85A: 11        .byte $11
- D 1 - I - 0x00D86B 06:B85B: 04        .byte $04
- D 1 - I - 0x00D86C 06:B85C: 0F        .byte $0F
- D 1 - I - 0x00D86D 06:B85D: 0F        .byte $0F
- D 1 - I - 0x00D86E 06:B85E: 0F        .byte $0F
- D 1 - I - 0x00D86F 06:B85F: 04        .byte $04
- D 1 - I - 0x00D870 06:B860: 21        .byte $21
- D 1 - I - 0x00D871 06:B861: 21        .byte $21
- D 1 - I - 0x00D872 06:B862: 21        .byte $21
- D 1 - I - 0x00D873 06:B863: 04        .byte $04
- D 1 - I - 0x00D874 06:B864: 0F        .byte $0F
- D 1 - I - 0x00D875 06:B865: 0F        .byte $0F
- D 1 - I - 0x00D876 06:B866: 0F        .byte $0F
- D 1 - I - 0x00D877 06:B867: 04        .byte $04
- D 1 - I - 0x00D878 06:B868: 25        .byte $25
- D 1 - I - 0x00D879 06:B869: 25        .byte $25
- D 1 - I - 0x00D87A 06:B86A: 25        .byte $25
- D 1 - I - 0x00D87B 06:B86B: 04        .byte $04
- D 1 - I - 0x00D87C 06:B86C: 0F        .byte $0F
- D 1 - I - 0x00D87D 06:B86D: 0F        .byte $0F
- D 1 - I - 0x00D87E 06:B86E: 0F        .byte $0F
- D 1 - I - 0x00D87F 06:B86F: 04        .byte $04
- D 1 - I - 0x00D880 06:B870: 27        .byte $27
- D 1 - I - 0x00D881 06:B871: 27        .byte $27
- D 1 - I - 0x00D882 06:B872: 27        .byte $27
- D 1 - I - 0x00D883 06:B873: 04        .byte $04
- D 1 - I - 0x00D884 06:B874: 0F        .byte $0F
- D 1 - I - 0x00D885 06:B875: 0F        .byte $0F
- D 1 - I - 0x00D886 06:B876: 0F        .byte $0F
- D 1 - I - 0x00D887 06:B877: 04        .byte $04
- D 1 - I - 0x00D888 06:B878: 30        .byte $30
- D 1 - I - 0x00D889 06:B879: 30        .byte $30
- D 1 - I - 0x00D88A 06:B87A: 30        .byte $30
- D 1 - I - 0x00D88B 06:B87B: 04        .byte $04
- D 1 - I - 0x00D88C 06:B87C: 0F        .byte $0F
- D 1 - I - 0x00D88D 06:B87D: 0F        .byte $0F
- D 1 - I - 0x00D88E 06:B87E: 0F        .byte $0F
- D 1 - I - 0x00D88F 06:B87F: 04        .byte $04
- D 1 - I - 0x00D890 06:B880: 08        .byte $08
- D 1 - I - 0x00D891 06:B881: 18        .byte $18
- D 1 - I - 0x00D892 06:B882: 15        .byte $15
- D 1 - I - 0x00D893 06:B883: FF        .byte $FF



_off013_B884_03:
- D 1 - I - 0x00D894 06:B884: 00        .byte $00
- D 1 - I - 0x00D895 06:B885: 01        .byte $01
- D 1 - I - 0x00D896 06:B886: 0F        .byte $0F
- D 1 - I - 0x00D897 06:B887: 0F        .byte $0F
- D 1 - I - 0x00D898 06:B888: 00        .byte $00
- D 1 - I - 0x00D899 06:B889: 01        .byte $01
- D 1 - I - 0x00D89A 06:B88A: 30        .byte $30
- D 1 - I - 0x00D89B 06:B88B: 30        .byte $30
- D 1 - I - 0x00D89C 06:B88C: 00        .byte $00
- D 1 - I - 0x00D89D 06:B88D: 01        .byte $01
- D 1 - I - 0x00D89E 06:B88E: 0A        .byte $0A
- D 1 - I - 0x00D89F 06:B88F: 08        .byte $08
- D 1 - I - 0x00D8A0 06:B890: 00        .byte $00
- D 1 - I - 0x00D8A1 06:B891: FE        .byte $FE



_off013_B892_04:
- D 1 - I - 0x00D8A2 06:B892: 0C        .byte $0C
- D 1 - I - 0x00D8A3 06:B893: 04        .byte $04
- D 1 - I - 0x00D8A4 06:B894: 2B        .byte $2B
- D 1 - I - 0x00D8A5 06:B895: 00        .byte $00
- D 1 - I - 0x00D8A6 06:B896: 00        .byte $00
- D 1 - I - 0x00D8A7 06:B897: 04        .byte $04
- D 1 - I - 0x00D8A8 06:B898: 2A        .byte $2A
- D 1 - I - 0x00D8A9 06:B899: 00        .byte $00
- D 1 - I - 0x00D8AA 06:B89A: 00        .byte $00
- D 1 - I - 0x00D8AB 06:B89B: 04        .byte $04
- D 1 - I - 0x00D8AC 06:B89C: 29        .byte $29
- D 1 - I - 0x00D8AD 06:B89D: 00        .byte $00
- D 1 - I - 0x00D8AE 06:B89E: 00        .byte $00
- D 1 - I - 0x00D8AF 06:B89F: 04        .byte $04
- D 1 - I - 0x00D8B0 06:B8A0: 28        .byte $28
- D 1 - I - 0x00D8B1 06:B8A1: 00        .byte $00
- D 1 - I - 0x00D8B2 06:B8A2: 00        .byte $00
- D 1 - I - 0x00D8B3 06:B8A3: 04        .byte $04
- D 1 - I - 0x00D8B4 06:B8A4: 27        .byte $27
- D 1 - I - 0x00D8B5 06:B8A5: 00        .byte $00
- D 1 - I - 0x00D8B6 06:B8A6: 00        .byte $00
- D 1 - I - 0x00D8B7 06:B8A7: 04        .byte $04
- D 1 - I - 0x00D8B8 06:B8A8: 26        .byte $26
- D 1 - I - 0x00D8B9 06:B8A9: 00        .byte $00
- D 1 - I - 0x00D8BA 06:B8AA: 00        .byte $00
- D 1 - I - 0x00D8BB 06:B8AB: 04        .byte $04
- D 1 - I - 0x00D8BC 06:B8AC: 25        .byte $25
- D 1 - I - 0x00D8BD 06:B8AD: 00        .byte $00
- D 1 - I - 0x00D8BE 06:B8AE: 00        .byte $00
- D 1 - I - 0x00D8BF 06:B8AF: 04        .byte $04
- D 1 - I - 0x00D8C0 06:B8B0: 24        .byte $24
- D 1 - I - 0x00D8C1 06:B8B1: 00        .byte $00
- D 1 - I - 0x00D8C2 06:B8B2: 00        .byte $00
- D 1 - I - 0x00D8C3 06:B8B3: 04        .byte $04
- D 1 - I - 0x00D8C4 06:B8B4: 23        .byte $23
- D 1 - I - 0x00D8C5 06:B8B5: 00        .byte $00
- D 1 - I - 0x00D8C6 06:B8B6: 00        .byte $00
- D 1 - I - 0x00D8C7 06:B8B7: 04        .byte $04
- D 1 - I - 0x00D8C8 06:B8B8: 22        .byte $22
- D 1 - I - 0x00D8C9 06:B8B9: 00        .byte $00
- D 1 - I - 0x00D8CA 06:B8BA: 00        .byte $00
- D 1 - I - 0x00D8CB 06:B8BB: 04        .byte $04
- D 1 - I - 0x00D8CC 06:B8BC: 21        .byte $21
- D 1 - I - 0x00D8CD 06:B8BD: 00        .byte $00
- D 1 - I - 0x00D8CE 06:B8BE: 00        .byte $00
- D 1 - I - 0x00D8CF 06:B8BF: 04        .byte $04
- D 1 - I - 0x00D8D0 06:B8C0: 2C        .byte $2C
- D 1 - I - 0x00D8D1 06:B8C1: 00        .byte $00
- D 1 - I - 0x00D8D2 06:B8C2: 00        .byte $00
- D 1 - I - 0x00D8D3 06:B8C3: FE        .byte $FE



_off013_B8C4_05:
- D 1 - I - 0x00D8D4 06:B8C4: 00        .byte $00
- D 1 - I - 0x00D8D5 06:B8C5: 60        .byte $60
- D 1 - I - 0x00D8D6 06:B8C6: 00        .byte $00
- D 1 - I - 0x00D8D7 06:B8C7: 00        .byte $00
- D 1 - I - 0x00D8D8 06:B8C8: 21        .byte $21
- D 1 - I - 0x00D8D9 06:B8C9: 60        .byte $60
- D 1 - I - 0x00D8DA 06:B8CA: 00        .byte $00
- D 1 - I - 0x00D8DB 06:B8CB: 00        .byte $00
- D 1 - I - 0x00D8DC 06:B8CC: 23        .byte $23
- D 1 - I - 0x00D8DD 06:B8CD: 60        .byte $60
- D 1 - I - 0x00D8DE 06:B8CE: 00        .byte $00
- D 1 - I - 0x00D8DF 06:B8CF: 00        .byte $00
- D 1 - I - 0x00D8E0 06:B8D0: 25        .byte $25
- D 1 - I - 0x00D8E1 06:B8D1: 60        .byte $60
- D 1 - I - 0x00D8E2 06:B8D2: 00        .byte $00
- D 1 - I - 0x00D8E3 06:B8D3: 00        .byte $00
- D 1 - I - 0x00D8E4 06:B8D4: 27        .byte $27
- D 1 - I - 0x00D8E5 06:B8D5: 63        .byte $63
- D 1 - I - 0x00D8E6 06:B8D6: 00        .byte $00
- D 1 - I - 0x00D8E7 06:B8D7: 00        .byte $00
- D 1 - I - 0x00D8E8 06:B8D8: 29        .byte $29
- D 1 - I - 0x00D8E9 06:B8D9: 60        .byte $60
- D 1 - I - 0x00D8EA 06:B8DA: 00        .byte $00
- D 1 - I - 0x00D8EB 06:B8DB: 00        .byte $00
- D 1 - I - 0x00D8EC 06:B8DC: 2B        .byte $2B
- D 1 - I - 0x00D8ED 06:B8DD: FE        .byte $FE



_off013_B8DE_06:
- D 1 - I - 0x00D8EE 06:B8DE: 04        .byte $04
- D 1 - I - 0x00D8EF 06:B8DF: 03        .byte $03
- D 1 - I - 0x00D8F0 06:B8E0: 0F        .byte $0F
- D 1 - I - 0x00D8F1 06:B8E1: 0F        .byte $0F
- D 1 - I - 0x00D8F2 06:B8E2: 0F        .byte $0F
- D 1 - I - 0x00D8F3 06:B8E3: 03        .byte $03
- D 1 - I - 0x00D8F4 06:B8E4: 05        .byte $05
- D 1 - I - 0x00D8F5 06:B8E5: 06        .byte $06
- D 1 - I - 0x00D8F6 06:B8E6: 0F        .byte $0F
- D 1 - I - 0x00D8F7 06:B8E7: 03        .byte $03
- D 1 - I - 0x00D8F8 06:B8E8: 15        .byte $15
- D 1 - I - 0x00D8F9 06:B8E9: 06        .byte $06
- D 1 - I - 0x00D8FA 06:B8EA: 10        .byte $10
- D 1 - I - 0x00D8FB 06:B8EB: 03        .byte $03
- D 1 - I - 0x00D8FC 06:B8EC: 25        .byte $25
- D 1 - I - 0x00D8FD 06:B8ED: 16        .byte $16
- D 1 - I - 0x00D8FE 06:B8EE: 30        .byte $30
- D 1 - I - 0x00D8FF 06:B8EF: 03        .byte $03
- D 1 - I - 0x00D900 06:B8F0: 26        .byte $26
- D 1 - I - 0x00D901 06:B8F1: 17        .byte $17
- D 1 - I - 0x00D902 06:B8F2: 30        .byte $30
- D 1 - I - 0x00D903 06:B8F3: 03        .byte $03
- D 1 - I - 0x00D904 06:B8F4: 27        .byte $27
- D 1 - I - 0x00D905 06:B8F5: 26        .byte $26
- D 1 - I - 0x00D906 06:B8F6: 30        .byte $30
- D 1 - I - 0x00D907 06:B8F7: 03        .byte $03
- D 1 - I - 0x00D908 06:B8F8: 37        .byte $37
- D 1 - I - 0x00D909 06:B8F9: 27        .byte $27
- D 1 - I - 0x00D90A 06:B8FA: 30        .byte $30
- D 1 - I - 0x00D90B 06:B8FB: 03        .byte $03
- D 1 - I - 0x00D90C 06:B8FC: 30        .byte $30
- D 1 - I - 0x00D90D 06:B8FD: 37        .byte $37
- D 1 - I - 0x00D90E 06:B8FE: 30        .byte $30
- D 1 - I - 0x00D90F 06:B8FF: 60        .byte $60
- D 1 - I - 0x00D910 06:B900: 30        .byte $30
- D 1 - I - 0x00D911 06:B901: 30        .byte $30
- D 1 - I - 0x00D912 06:B902: 30        .byte $30
- D 1 - I - 0x00D913 06:B903: 04        .byte $04
- D 1 - I - 0x00D914 06:B904: 30        .byte $30
- D 1 - I - 0x00D915 06:B905: 37        .byte $37
- D 1 - I - 0x00D916 06:B906: 30        .byte $30
- D 1 - I - 0x00D917 06:B907: 04        .byte $04
- D 1 - I - 0x00D918 06:B908: 37        .byte $37
- D 1 - I - 0x00D919 06:B909: 27        .byte $27
- D 1 - I - 0x00D91A 06:B90A: 30        .byte $30
- D 1 - I - 0x00D91B 06:B90B: 04        .byte $04
- D 1 - I - 0x00D91C 06:B90C: 27        .byte $27
- D 1 - I - 0x00D91D 06:B90D: 26        .byte $26
- D 1 - I - 0x00D91E 06:B90E: 30        .byte $30
- D 1 - I - 0x00D91F 06:B90F: 04        .byte $04
- D 1 - I - 0x00D920 06:B910: 26        .byte $26
- D 1 - I - 0x00D921 06:B911: 17        .byte $17
- D 1 - I - 0x00D922 06:B912: 30        .byte $30
- D 1 - I - 0x00D923 06:B913: 04        .byte $04
- D 1 - I - 0x00D924 06:B914: 25        .byte $25
- D 1 - I - 0x00D925 06:B915: 16        .byte $16
- D 1 - I - 0x00D926 06:B916: 30        .byte $30
- D 1 - I - 0x00D927 06:B917: FF        .byte $FF



_off013_B918_07:
- D 1 - I - 0x00D928 06:B918: 08        .byte $08
- D 1 - I - 0x00D929 06:B919: 02        .byte $02
- D 1 - I - 0x00D92A 06:B91A: 0F        .byte $0F
- D 1 - I - 0x00D92B 06:B91B: 00        .byte $00
- D 1 - I - 0x00D92C 06:B91C: 00        .byte $00
- D 1 - I - 0x00D92D 06:B91D: 02        .byte $02
- D 1 - I - 0x00D92E 06:B91E: 30        .byte $30
- D 1 - I - 0x00D92F 06:B91F: 00        .byte $00
- D 1 - I - 0x00D930 06:B920: 00        .byte $00
- D 1 - I - 0x00D931 06:B921: 02        .byte $02
- D 1 - I - 0x00D932 06:B922: 0F        .byte $0F
- D 1 - I - 0x00D933 06:B923: 00        .byte $00
- D 1 - I - 0x00D934 06:B924: 00        .byte $00
- D 1 - I - 0x00D935 06:B925: 02        .byte $02
- D 1 - I - 0x00D936 06:B926: 22        .byte $22
- D 1 - I - 0x00D937 06:B927: 00        .byte $00
- D 1 - I - 0x00D938 06:B928: 00        .byte $00
- D 1 - I - 0x00D939 06:B929: 02        .byte $02
- D 1 - I - 0x00D93A 06:B92A: 0F        .byte $0F
- D 1 - I - 0x00D93B 06:B92B: 00        .byte $00
- D 1 - I - 0x00D93C 06:B92C: 00        .byte $00
- D 1 - I - 0x00D93D 06:B92D: 02        .byte $02
- D 1 - I - 0x00D93E 06:B92E: 25        .byte $25
- D 1 - I - 0x00D93F 06:B92F: 00        .byte $00
- D 1 - I - 0x00D940 06:B930: 00        .byte $00
- D 1 - I - 0x00D941 06:B931: 02        .byte $02
- D 1 - I - 0x00D942 06:B932: 0F        .byte $0F
- D 1 - I - 0x00D943 06:B933: 00        .byte $00
- D 1 - I - 0x00D944 06:B934: 00        .byte $00
- D 1 - I - 0x00D945 06:B935: FE        .byte $FE



_off013_B936_08:
- D 1 - I - 0x00D946 06:B936: 08        .byte $08
- D 1 - I - 0x00D947 06:B937: 02        .byte $02
- D 1 - I - 0x00D948 06:B938: 30        .byte $30
- D 1 - I - 0x00D949 06:B939: 00        .byte $00
- D 1 - I - 0x00D94A 06:B93A: 00        .byte $00
- D 1 - I - 0x00D94B 06:B93B: 02        .byte $02
- D 1 - I - 0x00D94C 06:B93C: 25        .byte $25
- D 1 - I - 0x00D94D 06:B93D: 00        .byte $00
- D 1 - I - 0x00D94E 06:B93E: 00        .byte $00
- D 1 - I - 0x00D94F 06:B93F: 02        .byte $02
- D 1 - I - 0x00D950 06:B940: 0F        .byte $0F
- D 1 - I - 0x00D951 06:B941: 00        .byte $00
- D 1 - I - 0x00D952 06:B942: 00        .byte $00
- D 1 - I - 0x00D953 06:B943: 02        .byte $02
- D 1 - I - 0x00D954 06:B944: 30        .byte $30
- D 1 - I - 0x00D955 06:B945: 00        .byte $00
- D 1 - I - 0x00D956 06:B946: 00        .byte $00
- D 1 - I - 0x00D957 06:B947: 02        .byte $02
- D 1 - I - 0x00D958 06:B948: 0F        .byte $0F
- D 1 - I - 0x00D959 06:B949: 00        .byte $00
- D 1 - I - 0x00D95A 06:B94A: 00        .byte $00
- D 1 - I - 0x00D95B 06:B94B: 02        .byte $02
- D 1 - I - 0x00D95C 06:B94C: 22        .byte $22
- D 1 - I - 0x00D95D 06:B94D: 00        .byte $00
- D 1 - I - 0x00D95E 06:B94E: 00        .byte $00
- D 1 - I - 0x00D95F 06:B94F: 02        .byte $02
- D 1 - I - 0x00D960 06:B950: 0F        .byte $0F
- D 1 - I - 0x00D961 06:B951: 00        .byte $00
- D 1 - I - 0x00D962 06:B952: 00        .byte $00
- D 1 - I - 0x00D963 06:B953: 02        .byte $02
- D 1 - I - 0x00D964 06:B954: 21        .byte $21
- D 1 - I - 0x00D965 06:B955: 00        .byte $00
- D 1 - I - 0x00D966 06:B956: 00        .byte $00
- D 1 - I - 0x00D967 06:B957: FF        .byte $FF



_off013_B958_09:
- D 1 - I - 0x00D968 06:B958: 08        .byte $08
- D 1 - I - 0x00D969 06:B959: 02        .byte $02
- D 1 - I - 0x00D96A 06:B95A: 30        .byte $30
- D 1 - I - 0x00D96B 06:B95B: 00        .byte $00
- D 1 - I - 0x00D96C 06:B95C: 00        .byte $00
- D 1 - I - 0x00D96D 06:B95D: 02        .byte $02
- D 1 - I - 0x00D96E 06:B95E: 15        .byte $15
- D 1 - I - 0x00D96F 06:B95F: 00        .byte $00
- D 1 - I - 0x00D970 06:B960: 00        .byte $00
- D 1 - I - 0x00D971 06:B961: 02        .byte $02
- D 1 - I - 0x00D972 06:B962: 0F        .byte $0F
- D 1 - I - 0x00D973 06:B963: 00        .byte $00
- D 1 - I - 0x00D974 06:B964: 00        .byte $00
- D 1 - I - 0x00D975 06:B965: 02        .byte $02
- D 1 - I - 0x00D976 06:B966: 37        .byte $37
- D 1 - I - 0x00D977 06:B967: 00        .byte $00
- D 1 - I - 0x00D978 06:B968: 00        .byte $00
- D 1 - I - 0x00D979 06:B969: 02        .byte $02
- D 1 - I - 0x00D97A 06:B96A: 0F        .byte $0F
- D 1 - I - 0x00D97B 06:B96B: 00        .byte $00
- D 1 - I - 0x00D97C 06:B96C: 00        .byte $00
- D 1 - I - 0x00D97D 06:B96D: 02        .byte $02
- D 1 - I - 0x00D97E 06:B96E: 12        .byte $12
- D 1 - I - 0x00D97F 06:B96F: 00        .byte $00
- D 1 - I - 0x00D980 06:B970: 00        .byte $00
- D 1 - I - 0x00D981 06:B971: 02        .byte $02
- D 1 - I - 0x00D982 06:B972: 0F        .byte $0F
- D 1 - I - 0x00D983 06:B973: 00        .byte $00
- D 1 - I - 0x00D984 06:B974: 00        .byte $00
- D 1 - I - 0x00D985 06:B975: 02        .byte $02
- D 1 - I - 0x00D986 06:B976: 0C        .byte $0C
- D 1 - I - 0x00D987 06:B977: 00        .byte $00
- D 1 - I - 0x00D988 06:B978: 00        .byte $00
- D 1 - I - 0x00D989 06:B979: FF        .byte $FF



_off013_B97A_0A:
- D 1 - I - 0x00D98A 06:B97A: 04        .byte $04
- D 1 - I - 0x00D98B 06:B97B: 04        .byte $04
- D 1 - I - 0x00D98C 06:B97C: 00        .byte $00
- D 1 - I - 0x00D98D 06:B97D: 00        .byte $00
- D 1 - I - 0x00D98E 06:B97E: 21        .byte $21
- D 1 - I - 0x00D98F 06:B97F: 02        .byte $02
- D 1 - I - 0x00D990 06:B980: 00        .byte $00
- D 1 - I - 0x00D991 06:B981: 00        .byte $00
- D 1 - I - 0x00D992 06:B982: 0F        .byte $0F
- D 1 - I - 0x00D993 06:B983: 04        .byte $04
- D 1 - I - 0x00D994 06:B984: 00        .byte $00
- D 1 - I - 0x00D995 06:B985: 00        .byte $00
- D 1 - I - 0x00D996 06:B986: 23        .byte $23
- D 1 - I - 0x00D997 06:B987: 02        .byte $02
- D 1 - I - 0x00D998 06:B988: 00        .byte $00
- D 1 - I - 0x00D999 06:B989: 00        .byte $00
- D 1 - I - 0x00D99A 06:B98A: 0F        .byte $0F
- D 1 - I - 0x00D99B 06:B98B: 04        .byte $04
- D 1 - I - 0x00D99C 06:B98C: 00        .byte $00
- D 1 - I - 0x00D99D 06:B98D: 00        .byte $00
- D 1 - I - 0x00D99E 06:B98E: 25        .byte $25
- D 1 - I - 0x00D99F 06:B98F: 02        .byte $02
- D 1 - I - 0x00D9A0 06:B990: 00        .byte $00
- D 1 - I - 0x00D9A1 06:B991: 00        .byte $00
- D 1 - I - 0x00D9A2 06:B992: 0F        .byte $0F
- D 1 - I - 0x00D9A3 06:B993: 04        .byte $04
- D 1 - I - 0x00D9A4 06:B994: 00        .byte $00
- D 1 - I - 0x00D9A5 06:B995: 00        .byte $00
- D 1 - I - 0x00D9A6 06:B996: 27        .byte $27
- D 1 - I - 0x00D9A7 06:B997: 02        .byte $02
- D 1 - I - 0x00D9A8 06:B998: 00        .byte $00
- D 1 - I - 0x00D9A9 06:B999: 00        .byte $00
- D 1 - I - 0x00D9AA 06:B99A: 0F        .byte $0F
- D 1 - I - 0x00D9AB 06:B99B: 04        .byte $04
- D 1 - I - 0x00D9AC 06:B99C: 00        .byte $00
- D 1 - I - 0x00D9AD 06:B99D: 00        .byte $00
- D 1 - I - 0x00D9AE 06:B99E: 29        .byte $29
- D 1 - I - 0x00D9AF 06:B99F: 02        .byte $02
- D 1 - I - 0x00D9B0 06:B9A0: 00        .byte $00
- D 1 - I - 0x00D9B1 06:B9A1: 00        .byte $00
- D 1 - I - 0x00D9B2 06:B9A2: 0F        .byte $0F
- D 1 - I - 0x00D9B3 06:B9A3: 04        .byte $04
- D 1 - I - 0x00D9B4 06:B9A4: 00        .byte $00
- D 1 - I - 0x00D9B5 06:B9A5: 00        .byte $00
- D 1 - I - 0x00D9B6 06:B9A6: 2B        .byte $2B
- D 1 - I - 0x00D9B7 06:B9A7: 02        .byte $02
- D 1 - I - 0x00D9B8 06:B9A8: 00        .byte $00
- D 1 - I - 0x00D9B9 06:B9A9: 00        .byte $00
- D 1 - I - 0x00D9BA 06:B9AA: 0F        .byte $0F
- D 1 - I - 0x00D9BB 06:B9AB: 04        .byte $04
- D 1 - I - 0x00D9BC 06:B9AC: 00        .byte $00
- D 1 - I - 0x00D9BD 06:B9AD: 00        .byte $00
- D 1 - I - 0x00D9BE 06:B9AE: 3C        .byte $3C
- D 1 - I - 0x00D9BF 06:B9AF: 02        .byte $02
- D 1 - I - 0x00D9C0 06:B9B0: 00        .byte $00
- D 1 - I - 0x00D9C1 06:B9B1: 00        .byte $00
- D 1 - I - 0x00D9C2 06:B9B2: 0F        .byte $0F
- D 1 - I - 0x00D9C3 06:B9B3: FE        .byte $FE



_off013_B9B4_0B:
- D 1 - I - 0x00D9C4 06:B9B4: 00        .byte $00
- D 1 - I - 0x00D9C5 06:B9B5: 04        .byte $04
- D 1 - I - 0x00D9C6 06:B9B6: 16        .byte $16
- D 1 - I - 0x00D9C7 06:B9B7: 00        .byte $00
- D 1 - I - 0x00D9C8 06:B9B8: 00        .byte $00
- D 1 - I - 0x00D9C9 06:B9B9: 04        .byte $04
- D 1 - I - 0x00D9CA 06:B9BA: 26        .byte $26
- D 1 - I - 0x00D9CB 06:B9BB: 00        .byte $00
- D 1 - I - 0x00D9CC 06:B9BC: 00        .byte $00
- D 1 - I - 0x00D9CD 06:B9BD: 04        .byte $04
- D 1 - I - 0x00D9CE 06:B9BE: 36        .byte $36
- D 1 - I - 0x00D9CF 06:B9BF: 00        .byte $00
- D 1 - I - 0x00D9D0 06:B9C0: 00        .byte $00
- D 1 - I - 0x00D9D1 06:B9C1: 0A        .byte $0A
- D 1 - I - 0x00D9D2 06:B9C2: 30        .byte $30
- D 1 - I - 0x00D9D3 06:B9C3: 00        .byte $00
- D 1 - I - 0x00D9D4 06:B9C4: 00        .byte $00
- D 1 - I - 0x00D9D5 06:B9C5: 04        .byte $04
- D 1 - I - 0x00D9D6 06:B9C6: 36        .byte $36
- D 1 - I - 0x00D9D7 06:B9C7: 00        .byte $00
- D 1 - I - 0x00D9D8 06:B9C8: 00        .byte $00
- D 1 - I - 0x00D9D9 06:B9C9: 04        .byte $04
- D 1 - I - 0x00D9DA 06:B9CA: 26        .byte $26
- D 1 - I - 0x00D9DB 06:B9CB: 00        .byte $00
- D 1 - I - 0x00D9DC 06:B9CC: 00        .byte $00
- D 1 - I - 0x00D9DD 06:B9CD: 04        .byte $04
- D 1 - I - 0x00D9DE 06:B9CE: 16        .byte $16
- D 1 - I - 0x00D9DF 06:B9CF: 00        .byte $00
- D 1 - I - 0x00D9E0 06:B9D0: 00        .byte $00
- D 1 - I - 0x00D9E1 06:B9D1: 04        .byte $04
- D 1 - I - 0x00D9E2 06:B9D2: 06        .byte $06
- D 1 - I - 0x00D9E3 06:B9D3: 00        .byte $00
- D 1 - I - 0x00D9E4 06:B9D4: 00        .byte $00
- D 1 - I - 0x00D9E5 06:B9D5: 04        .byte $04
- D 1 - I - 0x00D9E6 06:B9D6: 01        .byte $01
- D 1 - I - 0x00D9E7 06:B9D7: 00        .byte $00
- D 1 - I - 0x00D9E8 06:B9D8: 00        .byte $00
- D 1 - I - 0x00D9E9 06:B9D9: 04        .byte $04
- D 1 - I - 0x00D9EA 06:B9DA: 11        .byte $11
- D 1 - I - 0x00D9EB 06:B9DB: 00        .byte $00
- D 1 - I - 0x00D9EC 06:B9DC: 00        .byte $00
- D 1 - I - 0x00D9ED 06:B9DD: 04        .byte $04
- D 1 - I - 0x00D9EE 06:B9DE: 21        .byte $21
- D 1 - I - 0x00D9EF 06:B9DF: 00        .byte $00
- D 1 - I - 0x00D9F0 06:B9E0: 00        .byte $00
- D 1 - I - 0x00D9F1 06:B9E1: 04        .byte $04
- D 1 - I - 0x00D9F2 06:B9E2: 31        .byte $31
- D 1 - I - 0x00D9F3 06:B9E3: 00        .byte $00
- D 1 - I - 0x00D9F4 06:B9E4: 00        .byte $00
- D 1 - I - 0x00D9F5 06:B9E5: 0A        .byte $0A
- D 1 - I - 0x00D9F6 06:B9E6: 30        .byte $30
- D 1 - I - 0x00D9F7 06:B9E7: 00        .byte $00
- D 1 - I - 0x00D9F8 06:B9E8: 00        .byte $00
- D 1 - I - 0x00D9F9 06:B9E9: 04        .byte $04
- D 1 - I - 0x00D9FA 06:B9EA: 31        .byte $31
- D 1 - I - 0x00D9FB 06:B9EB: 00        .byte $00
- D 1 - I - 0x00D9FC 06:B9EC: 00        .byte $00
- D 1 - I - 0x00D9FD 06:B9ED: 04        .byte $04
- D 1 - I - 0x00D9FE 06:B9EE: 21        .byte $21
- D 1 - I - 0x00D9FF 06:B9EF: 00        .byte $00
- D 1 - I - 0x00DA00 06:B9F0: 00        .byte $00
- D 1 - I - 0x00DA01 06:B9F1: 04        .byte $04
- D 1 - I - 0x00DA02 06:B9F2: 11        .byte $11
- D 1 - I - 0x00DA03 06:B9F3: 00        .byte $00
- D 1 - I - 0x00DA04 06:B9F4: 00        .byte $00
- D 1 - I - 0x00DA05 06:B9F5: 04        .byte $04
- D 1 - I - 0x00DA06 06:B9F6: 01        .byte $01
- D 1 - I - 0x00DA07 06:B9F7: 00        .byte $00
- D 1 - I - 0x00DA08 06:B9F8: 00        .byte $00
- D 1 - I - 0x00DA09 06:B9F9: 04        .byte $04
- D 1 - I - 0x00DA0A 06:B9FA: 0A        .byte $0A
- D 1 - I - 0x00DA0B 06:B9FB: 00        .byte $00
- D 1 - I - 0x00DA0C 06:B9FC: 00        .byte $00
- D 1 - I - 0x00DA0D 06:B9FD: 04        .byte $04
- D 1 - I - 0x00DA0E 06:B9FE: 1A        .byte $1A
- D 1 - I - 0x00DA0F 06:B9FF: 00        .byte $00
- D 1 - I - 0x00DA10 06:BA00: 00        .byte $00
- D 1 - I - 0x00DA11 06:BA01: 04        .byte $04
- D 1 - I - 0x00DA12 06:BA02: 2A        .byte $2A
- D 1 - I - 0x00DA13 06:BA03: 00        .byte $00
- D 1 - I - 0x00DA14 06:BA04: 00        .byte $00
- D 1 - I - 0x00DA15 06:BA05: 04        .byte $04
- D 1 - I - 0x00DA16 06:BA06: 3A        .byte $3A
- D 1 - I - 0x00DA17 06:BA07: 00        .byte $00
- D 1 - I - 0x00DA18 06:BA08: 00        .byte $00
- D 1 - I - 0x00DA19 06:BA09: 0A        .byte $0A
- D 1 - I - 0x00DA1A 06:BA0A: 30        .byte $30
- D 1 - I - 0x00DA1B 06:BA0B: 00        .byte $00
- D 1 - I - 0x00DA1C 06:BA0C: 00        .byte $00
- D 1 - I - 0x00DA1D 06:BA0D: 04        .byte $04
- D 1 - I - 0x00DA1E 06:BA0E: 3A        .byte $3A
- D 1 - I - 0x00DA1F 06:BA0F: 00        .byte $00
- D 1 - I - 0x00DA20 06:BA10: 00        .byte $00
- D 1 - I - 0x00DA21 06:BA11: 04        .byte $04
- D 1 - I - 0x00DA22 06:BA12: 2A        .byte $2A
- D 1 - I - 0x00DA23 06:BA13: 00        .byte $00
- D 1 - I - 0x00DA24 06:BA14: 00        .byte $00
- D 1 - I - 0x00DA25 06:BA15: 04        .byte $04
- D 1 - I - 0x00DA26 06:BA16: 1A        .byte $1A
- D 1 - I - 0x00DA27 06:BA17: 00        .byte $00
- D 1 - I - 0x00DA28 06:BA18: 00        .byte $00
- D 1 - I - 0x00DA29 06:BA19: 04        .byte $04
- D 1 - I - 0x00DA2A 06:BA1A: 0A        .byte $0A
- D 1 - I - 0x00DA2B 06:BA1B: 00        .byte $00
- D 1 - I - 0x00DA2C 06:BA1C: 00        .byte $00
- D 1 - I - 0x00DA2D 06:BA1D: 04        .byte $04
- D 1 - I - 0x00DA2E 06:BA1E: 06        .byte $06
- D 1 - I - 0x00DA2F 06:BA1F: 00        .byte $00
- D 1 - I - 0x00DA30 06:BA20: 00        .byte $00
- D 1 - I - 0x00DA31 06:BA21: FE        .byte $FE



_off013_BA22_0C:
- D 1 - I - 0x00DA32 06:BA22: 08        .byte $08
- D 1 - I - 0x00DA33 06:BA23: 02        .byte $02
- D 1 - I - 0x00DA34 06:BA24: 0F        .byte $0F
- D 1 - I - 0x00DA35 06:BA25: 00        .byte $00
- D 1 - I - 0x00DA36 06:BA26: 00        .byte $00
- D 1 - I - 0x00DA37 06:BA27: 02        .byte $02
- D 1 - I - 0x00DA38 06:BA28: 30        .byte $30
- D 1 - I - 0x00DA39 06:BA29: 00        .byte $00
- D 1 - I - 0x00DA3A 06:BA2A: 00        .byte $00
- D 1 - I - 0x00DA3B 06:BA2B: FE        .byte $FE



_off013_BA2C_0D:
- D 1 - I - 0x00DA3C 06:BA2C: 18        .byte $18
- D 1 - I - 0x00DA3D 06:BA2D: 20        .byte $20
- D 1 - I - 0x00DA3E 06:BA2E: 0F        .byte $0F
- D 1 - I - 0x00DA3F 06:BA2F: 21        .byte $21
- D 1 - I - 0x00DA40 06:BA30: 21        .byte $21
- D 1 - I - 0x00DA41 06:BA31: 20        .byte $20
- D 1 - I - 0x00DA42 06:BA32: 30        .byte $30
- D 1 - I - 0x00DA43 06:BA33: 30        .byte $30
- D 1 - I - 0x00DA44 06:BA34: 0F        .byte $0F
- D 1 - I - 0x00DA45 06:BA35: FE        .byte $FE



_off013_BA36_0E:
- D 1 - I - 0x00DA46 06:BA36: 08        .byte $08
- D 1 - I - 0x00DA47 06:BA37: 04        .byte $04
- D 1 - I - 0x00DA48 06:BA38: 00        .byte $00
- D 1 - I - 0x00DA49 06:BA39: 1C        .byte $1C
- D 1 - I - 0x00DA4A 06:BA3A: 3C        .byte $3C
- D 1 - I - 0x00DA4B 06:BA3B: 04        .byte $04
- D 1 - I - 0x00DA4C 06:BA3C: 00        .byte $00
- D 1 - I - 0x00DA4D 06:BA3D: 12        .byte $12
- D 1 - I - 0x00DA4E 06:BA3E: 22        .byte $22
- D 1 - I - 0x00DA4F 06:BA3F: 04        .byte $04
- D 1 - I - 0x00DA50 06:BA40: 00        .byte $00
- D 1 - I - 0x00DA51 06:BA41: 13        .byte $13
- D 1 - I - 0x00DA52 06:BA42: 23        .byte $23
- D 1 - I - 0x00DA53 06:BA43: FE        .byte $FE



_off013_BA44_0F:
- D 1 - I - 0x00DA54 06:BA44: 00        .byte $00
- D 1 - I - 0x00DA55 06:BA45: 01        .byte $01
- D 1 - I - 0x00DA56 06:BA46: 0F        .byte $0F
- D 1 - I - 0x00DA57 06:BA47: 0F        .byte $0F
- D 1 - I - 0x00DA58 06:BA48: 00        .byte $00
- D 1 - I - 0x00DA59 06:BA49: 01        .byte $01
- D 1 - I - 0x00DA5A 06:BA4A: 15        .byte $15
- D 1 - I - 0x00DA5B 06:BA4B: 15        .byte $15
- D 1 - I - 0x00DA5C 06:BA4C: 00        .byte $00
- D 1 - I - 0x00DA5D 06:BA4D: 01        .byte $01
- D 1 - I - 0x00DA5E 06:BA4E: 0A        .byte $0A
- D 1 - I - 0x00DA5F 06:BA4F: 08        .byte $08
- D 1 - I - 0x00DA60 06:BA50: 00        .byte $00
- D 1 - I - 0x00DA61 06:BA51: FE        .byte $FE



_off013_BA52_11:
- D 1 - I - 0x00DA62 06:BA52: 08        .byte $08
- D 1 - I - 0x00DA63 06:BA53: 01        .byte $01
- D 1 - I - 0x00DA64 06:BA54: 30        .byte $30
- D 1 - I - 0x00DA65 06:BA55: 00        .byte $00
- D 1 - I - 0x00DA66 06:BA56: 00        .byte $00
- D 1 - I - 0x00DA67 06:BA57: 01        .byte $01
- D 1 - I - 0x00DA68 06:BA58: 15        .byte $15
- D 1 - I - 0x00DA69 06:BA59: 00        .byte $00
- D 1 - I - 0x00DA6A 06:BA5A: 00        .byte $00
- D 1 - I - 0x00DA6B 06:BA5B: FE        .byte $FE



_off013_BA5C_14:
- D 1 - I - 0x00DA6C 06:BA5C: 18        .byte $18
- D 1 - I - 0x00DA6D 06:BA5D: 06        .byte $06
- D 1 - I - 0x00DA6E 06:BA5E: 00        .byte $00
- D 1 - I - 0x00DA6F 06:BA5F: 00        .byte $00
- D 1 - I - 0x00DA70 06:BA60: 38        .byte $38
- D 1 - I - 0x00DA71 06:BA61: 01        .byte $01
- D 1 - I - 0x00DA72 06:BA62: 00        .byte $00
- D 1 - I - 0x00DA73 06:BA63: 00        .byte $00
- D 1 - I - 0x00DA74 06:BA64: 0F        .byte $0F
- D 1 - I - 0x00DA75 06:BA65: 06        .byte $06
- D 1 - I - 0x00DA76 06:BA66: 00        .byte $00
- D 1 - I - 0x00DA77 06:BA67: 00        .byte $00
- D 1 - I - 0x00DA78 06:BA68: 28        .byte $28
- D 1 - I - 0x00DA79 06:BA69: 01        .byte $01
- D 1 - I - 0x00DA7A 06:BA6A: 00        .byte $00
- D 1 - I - 0x00DA7B 06:BA6B: 00        .byte $00
- D 1 - I - 0x00DA7C 06:BA6C: 0F        .byte $0F
- D 1 - I - 0x00DA7D 06:BA6D: 06        .byte $06
- D 1 - I - 0x00DA7E 06:BA6E: 00        .byte $00
- D 1 - I - 0x00DA7F 06:BA6F: 00        .byte $00
- D 1 - I - 0x00DA80 06:BA70: 26        .byte $26
- D 1 - I - 0x00DA81 06:BA71: 01        .byte $01
- D 1 - I - 0x00DA82 06:BA72: 00        .byte $00
- D 1 - I - 0x00DA83 06:BA73: 00        .byte $00
- D 1 - I - 0x00DA84 06:BA74: 0F        .byte $0F
- D 1 - I - 0x00DA85 06:BA75: 06        .byte $06
- D 1 - I - 0x00DA86 06:BA76: 00        .byte $00
- D 1 - I - 0x00DA87 06:BA77: 00        .byte $00
- D 1 - I - 0x00DA88 06:BA78: 25        .byte $25
- D 1 - I - 0x00DA89 06:BA79: 01        .byte $01
- D 1 - I - 0x00DA8A 06:BA7A: 00        .byte $00
- D 1 - I - 0x00DA8B 06:BA7B: 00        .byte $00
- D 1 - I - 0x00DA8C 06:BA7C: 0F        .byte $0F
- D 1 - I - 0x00DA8D 06:BA7D: 06        .byte $06
- D 1 - I - 0x00DA8E 06:BA7E: 00        .byte $00
- D 1 - I - 0x00DA8F 06:BA7F: 00        .byte $00
- D 1 - I - 0x00DA90 06:BA80: 23        .byte $23
- D 1 - I - 0x00DA91 06:BA81: 01        .byte $01
- D 1 - I - 0x00DA92 06:BA82: 00        .byte $00
- D 1 - I - 0x00DA93 06:BA83: 00        .byte $00
- D 1 - I - 0x00DA94 06:BA84: 0F        .byte $0F
- D 1 - I - 0x00DA95 06:BA85: 06        .byte $06
- D 1 - I - 0x00DA96 06:BA86: 00        .byte $00
- D 1 - I - 0x00DA97 06:BA87: 00        .byte $00
- D 1 - I - 0x00DA98 06:BA88: 21        .byte $21
- D 1 - I - 0x00DA99 06:BA89: 01        .byte $01
- D 1 - I - 0x00DA9A 06:BA8A: 00        .byte $00
- D 1 - I - 0x00DA9B 06:BA8B: 00        .byte $00
- D 1 - I - 0x00DA9C 06:BA8C: 0F        .byte $0F
- D 1 - I - 0x00DA9D 06:BA8D: 06        .byte $06
- D 1 - I - 0x00DA9E 06:BA8E: 00        .byte $00
- D 1 - I - 0x00DA9F 06:BA8F: 00        .byte $00
- D 1 - I - 0x00DAA0 06:BA90: 31        .byte $31
- D 1 - I - 0x00DAA1 06:BA91: 01        .byte $01
- D 1 - I - 0x00DAA2 06:BA92: 00        .byte $00
- D 1 - I - 0x00DAA3 06:BA93: 00        .byte $00
- D 1 - I - 0x00DAA4 06:BA94: 0F        .byte $0F
- D 1 - I - 0x00DAA5 06:BA95: FE        .byte $FE



_off013_BA96_10:
_off013_BA96_12:
_off013_BA96_13:
- D 1 - I - 0x00DAA6 06:BA96: 80        .byte $80
- D 1 - I - 0x00DAA7 06:BA97: 40        .byte $40
- D 1 - I - 0x00DAA8 06:BA98: 02        .byte $02
- D 1 - I - 0x00DAA9 06:BA99: 42        .byte $42
- D 1 - I - 0x00DAAA 06:BA9A: 02        .byte $02
- D 1 - I - 0x00DAAB 06:BA9B: 44        .byte $44
- D 1 - I - 0x00DAAC 06:BA9C: 02        .byte $02
- D 1 - I - 0x00DAAD 06:BA9D: FE        .byte $FE



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
    .word $2227 ; 
    .byte $9C, $A8, $A8, $A8, $A8, $A8, $A8, $A8, $A8, $A8, $A8, $A8, $A8, $A8, $A8, $A8, $A8, $A8, $A8, $A8, $A8, $A8, $A8, $9D
; нижняя горизонтальная полоска
    .byte $18
    .word $2367 ; 
    .byte $9E, $A9, $A9, $A9, $A9, $A9, $A9, $A9, $A9, $A9, $A9, $A9, $A9, $A9, $A9, $A9, $A9, $A9, $A9, $A9, $A9, $A9, $A9, $9F
; левая вертикальная полоска
    .byte $89
    .word $2247 ; 
    .byte $AA, $AA, $AA, $AA, $AA, $AA, $A5, $AA, $AA, $01, $06, $23, $A4
; правая вертикальная полоска
    .byte $C9
    .word $225E ; 
    .byte $AB, $AB, $AB, $AB, $AB, $AB, $AB, $AB, $AB



off_BB9A_01_электрическое_облако_комментатора_в_катсценах:
; верхняя горизонтальная полоска
    .byte $18
    .word $2227 ; 
    .byte $9B, $A2, $A2, $A9, $A2, $A9, $A2, $A9, $A2, $A9, $A2, $A9, $A2, $A9, $A2, $A9, $A2, $A9, $A2, $A9, $A2, $A9, $A2, $9A
; нижняя горизонтальная полоска
    .byte $18
    .word $2367 ; 
    .byte $99, $A0, $A8, $A0, $A8, $A0, $A8, $A0, $A8, $A0, $A8, $A0, $A8, $A0, $A8, $A0, $A8, $A0, $A8, $A0, $A8, $A0, $A0, $98
; левая вертикальная полоска
    .byte $89
    .word $2247 ; 
    .byte $A1, $AB, $A1, $AB, $A1, $AB, $A1, $AB, $A1
; правая вертикальная полоска
    .byte $C9
    .word $225E ; 
    .byte $A3, $AA, $A3, $AA, $A3, $AA, $A3, $AA, $A3



off_BBE8_02_meeting___advice:
; верхняя горизонтальная полоска
    .byte $1E
    .word $2221 ; 
    .byte $9C, $A8, $A8, $A8, $A8, $A8, $A8, $A8, $A8, $A8, $A8, $A8, $A8, $A8, $A8, $A8, $A8, $A8, $A8, $A8, $A8, $A8, $A8, $A8, $A8, $A8, $A8, $A8, $A8, $9D
; нижняя горизонтальная полоска
    .byte $1E
    .word $2361 ; 
    .byte $9E, $A9, $A9, $A9, $A9, $A9, $A9, $A9, $A9, $A9, $A9, $A9, $A9, $A9, $A9, $A9, $A9, $A9, $A9, $A9, $A9, $A9, $A9, $A9, $A9, $A9, $A9, $A9, $A9, $9F
; левая вертикальная полоска
    .byte $89
    .word $2241 ; 
    .byte $AA, $AA, $AA, $AA, $AA, $AA, $AA, $AA, $AA
; правая вертикальная полоска
    .byte $C9
    .word $225E ; 
    .byte $AB, $AB, $AB, $AB, $AB, $AB, $AB, $AB, $AB



off_BC42_03_meeting___coach:
; верхняя горизонтальная полоска
    .byte $1E
    .word $2221 ; 
    .byte $9C, $A8, $A8, $A8, $A8, $A8, $A8, $A8, $A8, $A8, $A8, $A8, $9D, $9C, $A8, $A8, $A8, $A8, $A8, $A8, $A8, $A8, $A8, $A8, $A8, $A8, $A8, $A8, $A8, $9D
; нижняя горизонтальная полоска
    .byte $1E
    .word $2361 ; 
    .byte $9E, $A9, $A9, $A9, $A9, $A9, $A9, $A9, $A9, $A9, $A9, $A9, $9F, $9E, $A9, $A9, $A9, $A9, $A9, $A9, $A9, $A9, $A9, $A9, $A9, $A9, $A9, $A9, $A9, $9F
; левая вертикальная полоска левого окна
    .byte $89
    .word $2241 ; 
    .byte $AA, $AA, $AA, $AA, $AA, $AA, $AA, $AA, $AA
; правая вертикальная полоска левого окна
    .byte $89
    .word $224D ; 
    .byte $AB, $AB, $AB, $AB, $AB, $AB, $AB, $AB, $AB
; левая вертикальная полоска правого окна
    .byte $89
    .word $224E ; 
    .byte $AA, $AA, $AA, $AA, $AA, $AA, $AA, $AA, $AA
; правая вертикальная полоска правого окна
    .byte $89
    .word $225E ; 
    .byte $AB, $AB, $AB, $AB, $AB, $AB, $AB, $AB, $AB
; Team Meeting
    .byte $0C
    .word $20AA ; 
    .byte $80, $81, $82, $83, $00, $84, $81, $81, $85, $86, $87, $88
; Team Meeting      ; для смещения камеры в совете тренера
    .byte $0C
    .word $24AA ; 
    .byte $80, $81, $82, $83, $00, $84, $81, $81, $85, $86, $87, $88

    .byte $06
    .word $2263 ; 
    .text "Advice"

    .byte $0A
    .word $22A3 ; 
    .text "Score Memo"

    .byte $07
    .word $22E3 ; 
    .text "Options"

    .byte $47
    .word $2323 ; 
    .text "Kickoff"



off_BC43_04_meeting___level_up_password:
; верхняя горизонтальная полоска
    .byte $1E
    .word $2221 ; 
    .byte $9C, $A8, $A8, $A8, $A8, $A8, $A8, $A8, $A8, $A8, $A8, $A8, $A8, $A8, $A8, $A8, $A8, $A8, $A8, $A8, $A8, $A8, $A8, $A8, $A8, $A8, $A8, $A8, $A8, $9D
; нижняя горизонтальная полоска
    .byte $1E
    .word $2361 ; 
    .byte $9E, $A9, $A9, $A9, $A9, $A9, $A9, $A9, $A9, $A9, $A9, $A9, $A9, $A9, $A9, $A9, $A9, $A9, $A9, $A9, $A9, $A9, $A9, $A9, $A9, $A9, $A9, $A9, $A9, $9F
; левая вертикальная полоска
    .byte $89
    .word $2241 ; 
    .byte $AA, $AA, $AA, $AA, $AA, $AA, $AA, $AA, $AA
; правая вертикальная полоска
    .byte $89
    .word $225E ; 
    .byte $AB, $AB, $AB, $AB, $AB, $AB, $AB, $AB, $AB
; Team Meeting
    .byte $0C
    .word $20AA ; 
    .byte $80, $81, $82, $83, $00, $84, $81, $81, $85, $86, $87, $88
; Team Meeting      ; для смещения камеры в совете тренера
    .byte $4C
    .word $24AA ; 
    .byte $80, $81, $82, $83, $00, $84, $81, $81, $85, $86, $87, $88



off_BC44_05_half_time:
; верхняя горизонтальная полоска
    .byte $1E
    .word $2221 ; 
    .byte $9C, $A8, $A8, $A8, $A8, $A8, $A8, $A8, $A8, $A8, $A8, $A8, $A8, $A8, $A8, $A8, $A8, $A8, $A8, $A8, $A8, $A8, $A8, $A8, $A8, $A8, $A8, $A8, $A8, $9D
; нижняя горизонтальная полоска
    .byte $1E
    .word $2361 ; 
    .byte $9E, $A9, $A9, $A9, $A9, $A9, $A9, $A9, $A9, $A9, $A9, $A9, $A9, $A9, $A9, $A9, $A9, $A9, $A9, $A9, $A9, $A9, $A9, $A9, $A9, $A9, $A9, $A9, $A9, $9F
; левая вертикальная полоска
    .byte $89
    .word $2241 ; 
    .byte $AA, $AA, $AA, $AA, $AA, $AA, $AA, $AA, $AA
; правая вертикальная полоска
    .byte $89
    .word $225E ; 
    .byte $AB, $AB, $AB, $AB, $AB, $AB, $AB, $AB, $AB
; Half-Time
    .byte $49
    .word $20AB ; 
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
; по 19 байтов
; 00
- D 1 - I - 0x00DF10 06:BF00: 00        .byte $00
- D 1 - I - 0x00DF11 06:BF01: 00        .byte $00
- D 1 - I - 0x00DF12 06:BF02: 00        .byte $00
- D 1 - I - 0x00DF13 06:BF03: 00        .byte $00
- D 1 - I - 0x00DF14 06:BF04: 00        .byte $00
- D 1 - I - 0x00DF15 06:BF05: 00        .byte $00
- D 1 - I - 0x00DF16 06:BF06: 00        .byte $00
- D 1 - I - 0x00DF17 06:BF07: 00        .byte $00
- D 1 - I - 0x00DF18 06:BF08: 00        .byte $00
- D 1 - I - 0x00DF19 06:BF09: 00        .byte $00
- D 1 - I - 0x00DF1A 06:BF0A: 00        .byte $00
- D 1 - I - 0x00DF1B 06:BF0B: 00        .byte $00
- D 1 - I - 0x00DF1C 06:BF0C: 00        .byte $00
- D 1 - I - 0x00DF1D 06:BF0D: 00        .byte $00
- D 1 - I - 0x00DF1E 06:BF0E: 00        .byte $00
- D 1 - I - 0x00DF1F 06:BF0F: 00        .byte $00
- D 1 - I - 0x00DF20 06:BF10: 00        .byte $00
- D 1 - I - 0x00DF21 06:BF11: 00        .byte $00
- D 1 - I - 0x00DF22 06:BF12: 00        .byte $00
 ; 01
- D 1 - I - 0x00DF23 06:BF13: 40        .byte $40
- D 1 - I - 0x00DF24 06:BF14: 80        .byte $80
- D 1 - I - 0x00DF25 06:BF15: 00        .byte $00
- D 1 - I - 0x00DF26 06:BF16: 22        .byte $22
- D 1 - I - 0x00DF27 06:BF17: 00        .byte $00
- D 1 - I - 0x00DF28 06:BF18: 00        .byte $00
- D 1 - I - 0x00DF29 06:BF19: 00        .byte $00
- D 1 - I - 0x00DF2A 06:BF1A: 00        .byte $00
- D 1 - I - 0x00DF2B 06:BF1B: 00        .byte $00
- D 1 - I - 0x00DF2C 06:BF1C: 00        .byte $00
- D 1 - I - 0x00DF2D 06:BF1D: 00        .byte $00
- D 1 - I - 0x00DF2E 06:BF1E: 00        .byte $00
- D 1 - I - 0x00DF2F 06:BF1F: 00        .byte $00
- D 1 - I - 0x00DF30 06:BF20: 00        .byte $00
- D 1 - I - 0x00DF31 06:BF21: 00        .byte $00
- D 1 - I - 0x00DF32 06:BF22: 00        .byte $00
- D 1 - I - 0x00DF33 06:BF23: 00        .byte $00
- D 1 - I - 0x00DF34 06:BF24: 00        .byte $00
- D 1 - I - 0x00DF35 06:BF25: 00        .byte $00
; 02
- - - - - - 0x00DF36 06:BF26: 0F        .byte $0F
- - - - - - 0x00DF37 06:BF27: 0F        .byte $0F
- - - - - - 0x00DF38 06:BF28: 00        .byte $00
- - - - - - 0x00DF39 06:BF29: 01        .byte $01
- - - - - - 0x00DF3A 06:BF2A: 0F        .byte $0F
- - - - - - 0x00DF3B 06:BF2B: 00        .byte $00
- - - - - - 0x00DF3C 06:BF2C: 01        .byte $01
- - - - - - 0x00DF3D 06:BF2D: 0F        .byte $0F
- - - - - - 0x00DF3E 06:BF2E: 00        .byte $00
- - - - - - 0x00DF3F 06:BF2F: 01        .byte $01
- - - - - - 0x00DF40 06:BF30: 0F        .byte $0F
- - - - - - 0x00DF41 06:BF31: 00        .byte $00
- - - - - - 0x00DF42 06:BF32: 01        .byte $01
- - - - - - 0x00DF43 06:BF33: 0F        .byte $0F
- - - - - - 0x00DF44 06:BF34: 00        .byte $00
- - - - - - 0x00DF45 06:BF35: 01        .byte $01
- - - - - - 0x00DF46 06:BF36: 8F        .byte $8F
- - - - - - 0x00DF47 06:BF37: 00        .byte $00
- - - - - - 0x00DF48 06:BF38: 22        .byte $22
; 03
- D 1 - I - 0x00DF49 06:BF39: 04        .byte $04
- D 1 - I - 0x00DF4A 06:BF3A: 68        .byte $68
- D 1 - I - 0x00DF4B 06:BF3B: 00        .byte $00
- D 1 - I - 0x00DF4C 06:BF3C: 01        .byte $01
- D 1 - I - 0x00DF4D 06:BF3D: 80        .byte $80
- D 1 - I - 0x00DF4E 06:BF3E: C0        .byte $C0
- D 1 - I - 0x00DF4F 06:BF3F: 21        .byte $21
- D 1 - I - 0x00DF50 06:BF40: 00        .byte $00
- D 1 - I - 0x00DF51 06:BF41: 00        .byte $00
- D 1 - I - 0x00DF52 06:BF42: 00        .byte $00
- D 1 - I - 0x00DF53 06:BF43: 00        .byte $00
- D 1 - I - 0x00DF54 06:BF44: 00        .byte $00
- D 1 - I - 0x00DF55 06:BF45: 00        .byte $00
- D 1 - I - 0x00DF56 06:BF46: 00        .byte $00
- D 1 - I - 0x00DF57 06:BF47: 00        .byte $00
- D 1 - I - 0x00DF58 06:BF48: 00        .byte $00
- D 1 - I - 0x00DF59 06:BF49: 00        .byte $00
- D 1 - I - 0x00DF5A 06:BF4A: 00        .byte $00
- D 1 - I - 0x00DF5B 06:BF4B: 00        .byte $00
; 04
- - - - - - 0x00DF5C 06:BF4C: 18        .byte $18
- - - - - - 0x00DF5D 06:BF4D: 00        .byte $00
- - - - - - 0x00DF5E 06:BF4E: 00        .byte $00
- - - - - - 0x00DF5F 06:BF4F: 00        .byte $00
- - - - - - 0x00DF60 06:BF50: 00        .byte $00
- - - - - - 0x00DF61 06:BF51: 00        .byte $00
- - - - - - 0x00DF62 06:BF52: 01        .byte $01
- - - - - - 0x00DF63 06:BF53: 00        .byte $00
- - - - - - 0x00DF64 06:BF54: 00        .byte $00
- - - - - - 0x00DF65 06:BF55: 00        .byte $00
- - - - - - 0x00DF66 06:BF56: 00        .byte $00
- - - - - - 0x00DF67 06:BF57: 00        .byte $00
- - - - - - 0x00DF68 06:BF58: 00        .byte $00
- - - - - - 0x00DF69 06:BF59: 00        .byte $00
- - - - - - 0x00DF6A 06:BF5A: 00        .byte $00
- - - - - - 0x00DF6B 06:BF5B: 00        .byte $00
- - - - - - 0x00DF6C 06:BF5C: 00        .byte $00
- - - - - - 0x00DF6D 06:BF5D: 00        .byte $00
- - - - - - 0x00DF6E 06:BF5E: 00        .byte $00
; 05
- D 1 - I - 0x00DF6F 06:BF5F: 18        .byte $18
- D 1 - I - 0x00DF70 06:BF60: 08        .byte $08
- D 1 - I - 0x00DF71 06:BF61: 00        .byte $00
- D 1 - I - 0x00DF72 06:BF62: 00        .byte $00
- D 1 - I - 0x00DF73 06:BF63: 20        .byte $20
- D 1 - I - 0x00DF74 06:BF64: 00        .byte $00
- D 1 - I - 0x00DF75 06:BF65: 00        .byte $00
- D 1 - I - 0x00DF76 06:BF66: 80        .byte $80
- D 1 - I - 0x00DF77 06:BF67: 00        .byte $00
- D 1 - I - 0x00DF78 06:BF68: 22        .byte $22
- D 1 - I - 0x00DF79 06:BF69: 00        .byte $00
- D 1 - I - 0x00DF7A 06:BF6A: 00        .byte $00
- D 1 - I - 0x00DF7B 06:BF6B: 00        .byte $00
- D 1 - I - 0x00DF7C 06:BF6C: 00        .byte $00
- D 1 - I - 0x00DF7D 06:BF6D: 00        .byte $00
- D 1 - I - 0x00DF7E 06:BF6E: 00        .byte $00
- D 1 - I - 0x00DF7F 06:BF6F: 00        .byte $00
- D 1 - I - 0x00DF80 06:BF70: 00        .byte $00
- D 1 - I - 0x00DF81 06:BF71: 00        .byte $00
; 06
- D 1 - I - 0x00DF82 06:BF72: 10        .byte $10
- D 1 - I - 0x00DF83 06:BF73: 10        .byte $10
- D 1 - I - 0x00DF84 06:BF74: 00        .byte $00
- D 1 - I - 0x00DF85 06:BF75: 00        .byte $00
- D 1 - I - 0x00DF86 06:BF76: 06        .byte $06
- D 1 - I - 0x00DF87 06:BF77: 00        .byte $00
- D 1 - I - 0x00DF88 06:BF78: 00        .byte $00
- D 1 - I - 0x00DF89 06:BF79: 0A        .byte $0A
- D 1 - I - 0x00DF8A 06:BF7A: 00        .byte $00
- D 1 - I - 0x00DF8B 06:BF7B: 00        .byte $00
- D 1 - I - 0x00DF8C 06:BF7C: 0C        .byte $0C
- D 1 - I - 0x00DF8D 06:BF7D: 00        .byte $00
- D 1 - I - 0x00DF8E 06:BF7E: 00        .byte $00
- D 1 - I - 0x00DF8F 06:BF7F: 80        .byte $80
- D 1 - I - 0x00DF90 06:BF80: 00        .byte $00
- D 1 - I - 0x00DF91 06:BF81: 22        .byte $22
- D 1 - I - 0x00DF92 06:BF82: 00        .byte $00
- D 1 - I - 0x00DF93 06:BF83: 00        .byte $00
- D 1 - I - 0x00DF94 06:BF84: 00        .byte $00
; 07
- D 1 - I - 0x00DF95 06:BF85: 20        .byte $20
- D 1 - I - 0x00DF96 06:BF86: 07        .byte $07
- D 1 - I - 0x00DF97 06:BF87: 00        .byte $00
- D 1 - I - 0x00DF98 06:BF88: 00        .byte $00
- D 1 - I - 0x00DF99 06:BF89: 07        .byte $07
- D 1 - I - 0x00DF9A 06:BF8A: 00        .byte $00
- D 1 - I - 0x00DF9B 06:BF8B: 00        .byte $00
- D 1 - I - 0x00DF9C 06:BF8C: 10        .byte $10
- D 1 - I - 0x00DF9D 06:BF8D: 00        .byte $00
- D 1 - I - 0x00DF9E 06:BF8E: 00        .byte $00
- D 1 - I - 0x00DF9F 06:BF8F: 80        .byte $80
- D 1 - I - 0x00DFA0 06:BF90: 00        .byte $00
- D 1 - I - 0x00DFA1 06:BF91: 22        .byte $22
- D 1 - I - 0x00DFA2 06:BF92: 00        .byte $00
- D 1 - I - 0x00DFA3 06:BF93: 00        .byte $00
- D 1 - I - 0x00DFA4 06:BF94: 00        .byte $00
- D 1 - I - 0x00DFA5 06:BF95: 00        .byte $00
- D 1 - I - 0x00DFA6 06:BF96: 00        .byte $00
- D 1 - I - 0x00DFA7 06:BF97: 00        .byte $00
; 08
- D 1 - I - 0x00DFA8 06:BF98: 20        .byte $20
- D 1 - I - 0x00DFA9 06:BF99: 10        .byte $10
- D 1 - I - 0x00DFAA 06:BF9A: 00        .byte $00
- D 1 - I - 0x00DFAB 06:BF9B: 00        .byte $00
- D 1 - I - 0x00DFAC 06:BF9C: 06        .byte $06
- D 1 - I - 0x00DFAD 06:BF9D: 00        .byte $00
- D 1 - I - 0x00DFAE 06:BF9E: 00        .byte $00
- D 1 - I - 0x00DFAF 06:BF9F: 08        .byte $08
- D 1 - I - 0x00DFB0 06:BFA0: 00        .byte $00
- D 1 - I - 0x00DFB1 06:BFA1: 00        .byte $00
- D 1 - I - 0x00DFB2 06:BFA2: 80        .byte $80
- D 1 - I - 0x00DFB3 06:BFA3: 00        .byte $00
- D 1 - I - 0x00DFB4 06:BFA4: 22        .byte $22
- D 1 - I - 0x00DFB5 06:BFA5: 00        .byte $00
- D 1 - I - 0x00DFB6 06:BFA6: 00        .byte $00
- D 1 - I - 0x00DFB7 06:BFA7: 00        .byte $00
- D 1 - I - 0x00DFB8 06:BFA8: 00        .byte $00
- D 1 - I - 0x00DFB9 06:BFA9: 00        .byte $00
- D 1 - I - 0x00DFBA 06:BFAA: 00        .byte $00
; 09
- D 1 - I - 0x00DFBB 06:BFAB: 20        .byte $20
- D 1 - I - 0x00DFBC 06:BFAC: 14        .byte $14
- D 1 - I - 0x00DFBD 06:BFAD: 00        .byte $00
- D 1 - I - 0x00DFBE 06:BFAE: 00        .byte $00
- D 1 - I - 0x00DFBF 06:BFAF: 00        .byte $00
- D 1 - I - 0x00DFC0 06:BFB0: 00        .byte $00
- D 1 - I - 0x00DFC1 06:BFB1: 00        .byte $00
- D 1 - I - 0x00DFC2 06:BFB2: 00        .byte $00
- D 1 - I - 0x00DFC3 06:BFB3: 00        .byte $00
- D 1 - I - 0x00DFC4 06:BFB4: 00        .byte $00
- D 1 - I - 0x00DFC5 06:BFB5: 00        .byte $00
- D 1 - I - 0x00DFC6 06:BFB6: 00        .byte $00
- D 1 - I - 0x00DFC7 06:BFB7: 00        .byte $00
- D 1 - I - 0x00DFC8 06:BFB8: 00        .byte $00
- D 1 - I - 0x00DFC9 06:BFB9: 00        .byte $00
- D 1 - I - 0x00DFCA 06:BFBA: 00        .byte $00
- D 1 - I - 0x00DFCB 06:BFBB: 00        .byte $00
- D 1 - I - 0x00DFCC 06:BFBC: 00        .byte $00
- D 1 - I - 0x00DFCD 06:BFBD: 00        .byte $00



.out .sprintf("Free bytes in bank 86: 0x%04X [%d]", ($C000 - *), ($C000 - *))



