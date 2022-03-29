.segment "BANK_29"
.include "copy_bank_ram.inc"
.include "copy_bank_val.inc"
; текст облаков


.export _cloud_0x000A6_A7



; начальные байты
con_start_line                  = $00
con_pause                       = $00
con_window                      = $00
con_charlie                     = $00

; управляющие байты 0x030097
con_exit                        = $F0
; unused                        = $F1
con_очистить_облако             = $F2
con_jump                        = $F3
con_выбор_облака                = $F4

; байты в тексте 0x03036E
con_действие_атаки              = $E0
con_действие_защиты             = $E1
con_крит_атаки                  = $E2
con_крит_защиты                 = $E3
con_игрок_с_мячом               = $E4
con_команда_без_мяча            = $E5
con_команда_с_мячом             = $E6
con_количество_нападающих       = $E7
con_нападающий_1                = $E8
con_нападающий_2                = $E9
con_нападающий_3                = $EA
con_нападающий_4                = $EB
con_действие_кипера             = $EC
con_голкипер                    = $ED
con_игрок_без_мяча              = $EE
; unused                        = $EF
; unused                        = $F0
con_команда_слева               = $F1
con_команда_справа              = $F2
con_F3                          = $F3       ; возраст ХЗ
con_F4                          = $F4       ; возраст ХЗ
con_слово_ball                  = $F5       ; ボール
con_слово_goal                  = $F6       ; ゴール
con_тильда                      = $F7       ; указывается количество символов
con_слово_okay                  = $F8       ; タイ
; unused                        = $F9
; unused                        = $FA
; unused                        = $FB
con_line                        = $FC       ; если байт после линии читается, то это уже новое облако



_cloud_0x000A6_A7:
    .byte con_выбор_облака, $08
    .word _фраза_нападающего_00
    .word _фраза_нападающего_01
    .word _фраза_нападающего_02
    .word _фраза_нападающего_03
    .word _фраза_нападающего_04
    .word _фраза_нападающего_05
    .word _фраза_нападающего_06
    .word _фраза_нападающего_07
    .word _фраза_нападающего_08
    .word _фраза_нападающего_09
    .word _фраза_нападающего_0A
    .word _фраза_нападающего_0B
    .word _фраза_нападающего_0C
    .word _фраза_нападающего_0D
    .word _фраза_нападающего_0E
    .word _фраза_нападающего_0F
    .word _фраза_нападающего_10
    .word _фраза_нападающего_11
    .word _фраза_нападающего_12
    .word _фраза_нападающего_13
    .word _фраза_нападающего_14
    .word _фраза_нападающего_15
    .word _фраза_нападающего_16
    .word _фраза_нападающего_17
    .word _фраза_нападающего_18
    .word _фраза_нападающего_19
    .word _фраза_нападающего_1A
    .word _фраза_нападающего_1B
    .word _фраза_нападающего_1C
    .word _фраза_нападающего_1D
    .word _фраза_нападающего_1E
    .word _фраза_нападающего_1F
    .word _фраза_нападающего_20
    .word _фраза_нападающего_21
    .word _фраза_нападающего_22
    .word _фраза_нападающего_23
    .word _фраза_нападающего_24
    .word _фраза_нападающего_25
    .word _фраза_нападающего_26
    .word _фраза_нападающего_27
    .word _фраза_нападающего_28
    .word _фраза_нападающего_29
    .word _фраза_нападающего_2A
    .word _фраза_нападающего_2B
    .word _фраза_нападающего_2C
    .word _фраза_нападающего_2D
    .word _фраза_нападающего_2E
    .word _фраза_нападающего_2F
    .word _фраза_нападающего_30
    .word _фраза_нападающего_31
    .word _фраза_нападающего_32
    .word _фраза_нападающего_33
    .word _фраза_нападающего_34
    .word _фраза_нападающего_35
    .word _фраза_нападающего_36
    .word _фраза_нападающего_37
    .word _фраза_нападающего_38
    .word _фраза_нападающего_39
    .word _фраза_нападающего_3A
    .word _фраза_нападающего_3B
    .word _фраза_нападающего_3C
    .word _фраза_нападающего_3D
    .word _фраза_нападающего_3E
    .word _фраза_нападающего_3F




_фраза_нападающего_00:
    .byte con_pause + $01
    .byte con_charlie + $80
    .byte con_window + $0C
    .byte con_start_line + $00
    .text "                    ", con_line
    .text "                    ", con_line
    .text "                    ", con_line
    .text "                    ", con_line
    .byte con_exit

_фраза_нападающего_01:
    .byte con_pause + $01
    .byte con_charlie + $80
    .byte con_window + $0C
    .byte con_start_line + $00
    .text "                    ", con_line
    .text "                    ", con_line
    .text "                    ", con_line
    .text "                    ", con_line
    .byte con_exit

_фраза_нападающего_02:
    .byte con_pause + $01
    .byte con_charlie + $80
    .byte con_window + $0C
    .byte con_start_line + $00
    .text "                    ", con_line
    .text "                    ", con_line
    .text "                    ", con_line
    .text "                    ", con_line
    .byte con_exit

_фраза_нападающего_03:
    .byte con_pause + $01
    .byte con_charlie + $80
    .byte con_window + $0C
    .byte con_start_line + $00
    .text "                    ", con_line
    .text "                    ", con_line
    .text "                    ", con_line
    .text "                    ", con_line
    .byte con_exit

_фраза_нападающего_04:
    .byte con_pause + $01
    .byte con_charlie + $80
    .byte con_window + $0C
    .byte con_start_line + $00
    .text "                    ", con_line
    .text "                    ", con_line
    .text "                    ", con_line
    .text "                    ", con_line
    .byte con_exit

_фраза_нападающего_05:
    .byte con_pause + $01
    .byte con_charlie + $80
    .byte con_window + $0C
    .byte con_start_line + $00
    .text "                    ", con_line
    .text "                    ", con_line
    .text "                    ", con_line
    .text "                    ", con_line
    .byte con_exit

_фраза_нападающего_06:
    .byte con_pause + $01
    .byte con_charlie + $80
    .byte con_window + $0C
    .byte con_start_line + $00
    .text "                    ", con_line
    .text "                    ", con_line
    .text "                    ", con_line
    .text "                    ", con_line
    .byte con_exit

_фраза_нападающего_07:
    .byte con_pause + $01
    .byte con_charlie + $80
    .byte con_window + $0C
    .byte con_start_line + $00
    .text "                    ", con_line
    .text "                    ", con_line
    .text "                    ", con_line
    .text "                    ", con_line
    .byte con_exit

_фраза_нападающего_08:
    .byte con_pause + $01
    .byte con_charlie + $80
    .byte con_window + $0C
    .byte con_start_line + $00
    .text "                    ", con_line
    .text "                    ", con_line
    .text "                    ", con_line
    .text "                    ", con_line
    .byte con_exit

_фраза_нападающего_09:
    .byte con_pause + $01
    .byte con_charlie + $80
    .byte con_window + $0C
    .byte con_start_line + $00
    .text "                    ", con_line
    .text "                    ", con_line
    .text "                    ", con_line
    .text "                    ", con_line
    .byte con_exit

_фраза_нападающего_0A:
    .byte con_pause + $01
    .byte con_charlie + $80
    .byte con_window + $0C
    .byte con_start_line + $00
    .text "                    ", con_line
    .text "                    ", con_line
    .text "                    ", con_line
    .text "                    ", con_line
    .byte con_exit

_фраза_нападающего_0B:
    .byte con_pause + $01
    .byte con_charlie + $80
    .byte con_window + $0C
    .byte con_start_line + $00
    .text "                    ", con_line
    .text "                    ", con_line
    .text "                    ", con_line
    .text "                    ", con_line
    .byte con_exit

_фраза_нападающего_0C:
    .byte con_pause + $01
    .byte con_charlie + $80
    .byte con_window + $0C
    .byte con_start_line + $00
    .text "                    ", con_line
    .text "                    ", con_line
    .text "                    ", con_line
    .text "                    ", con_line
    .byte con_exit

_фраза_нападающего_0D:
    .byte con_pause + $01
    .byte con_charlie + $80
    .byte con_window + $0C
    .byte con_start_line + $00
    .text "                    ", con_line
    .text "                    ", con_line
    .text "                    ", con_line
    .text "                    ", con_line
    .byte con_exit

_фраза_нападающего_0E:
    .byte con_pause + $01
    .byte con_charlie + $80
    .byte con_window + $0C
    .byte con_start_line + $00
    .text "                    ", con_line
    .text "                    ", con_line
    .text "                    ", con_line
    .text "                    ", con_line
    .byte con_exit

_фраза_нападающего_0F:
    .byte con_pause + $01
    .byte con_charlie + $80
    .byte con_window + $0C
    .byte con_start_line + $00
    .text "                    ", con_line
    .text "                    ", con_line
    .text "                    ", con_line
    .text "                    ", con_line
    .byte con_exit

_фраза_нападающего_10:
    .byte con_pause + $01
    .byte con_charlie + $80
    .byte con_window + $0C
    .byte con_start_line + $00
    .text "                    ", con_line
    .text "                    ", con_line
    .text "                    ", con_line
    .text "                    ", con_line
    .byte con_exit

_фраза_нападающего_11:
    .byte con_pause + $01
    .byte con_charlie + $80
    .byte con_window + $0C
    .byte con_start_line + $00
    .text "                    ", con_line
    .text "                    ", con_line
    .text "                    ", con_line
    .text "                    ", con_line
    .byte con_exit

_фраза_нападающего_12:
    .byte con_pause + $01
    .byte con_charlie + $80
    .byte con_window + $0C
    .byte con_start_line + $00
    .text "                    ", con_line
    .text "                    ", con_line
    .text "                    ", con_line
    .text "                    ", con_line
    .byte con_exit

_фраза_нападающего_13:
    .byte con_pause + $01
    .byte con_charlie + $80
    .byte con_window + $0C
    .byte con_start_line + $00
    .text "                    ", con_line
    .text "                    ", con_line
    .text "                    ", con_line
    .text "                    ", con_line
    .byte con_exit

_фраза_нападающего_14:
    .byte con_pause + $01
    .byte con_charlie + $80
    .byte con_window + $0C
    .byte con_start_line + $00
    .text "                    ", con_line
    .text "                    ", con_line
    .text "                    ", con_line
    .text "                    ", con_line
    .byte con_exit

_фраза_нападающего_15:
    .byte con_pause + $01
    .byte con_charlie + $80
    .byte con_window + $0C
    .byte con_start_line + $00
    .text "                    ", con_line
    .text "                    ", con_line
    .text "                    ", con_line
    .text "                    ", con_line
    .byte con_exit

_фраза_нападающего_16:
    .byte con_pause + $01
    .byte con_charlie + $80
    .byte con_window + $0C
    .byte con_start_line + $00
    .text "                    ", con_line
    .text "                    ", con_line
    .text "                    ", con_line
    .text "                    ", con_line
    .byte con_exit

_фраза_нападающего_17:
    .byte con_pause + $01
    .byte con_charlie + $80
    .byte con_window + $0C
    .byte con_start_line + $00
    .text "                    ", con_line
    .text "                    ", con_line
    .text "                    ", con_line
    .text "                    ", con_line
    .byte con_exit

_фраза_нападающего_18:
    .byte con_pause + $01
    .byte con_charlie + $80
    .byte con_window + $0C
    .byte con_start_line + $00
    .text "                    ", con_line
    .text "                    ", con_line
    .text "                    ", con_line
    .text "                    ", con_line
    .byte con_exit

_фраза_нападающего_19:
    .byte con_pause + $01
    .byte con_charlie + $80
    .byte con_window + $0C
    .byte con_start_line + $00
    .text "                    ", con_line
    .text "                    ", con_line
    .text "                    ", con_line
    .text "                    ", con_line
    .byte con_exit

_фраза_нападающего_1A:
    .byte con_pause + $01
    .byte con_charlie + $80
    .byte con_window + $0C
    .byte con_start_line + $00
    .text "                    ", con_line
    .text "                    ", con_line
    .text "                    ", con_line
    .text "                    ", con_line
    .byte con_exit

_фраза_нападающего_1B:
    .byte con_pause + $01
    .byte con_charlie + $80
    .byte con_window + $0C
    .byte con_start_line + $00
    .text "                    ", con_line
    .text "                    ", con_line
    .text "                    ", con_line
    .text "                    ", con_line
    .byte con_exit

_фраза_нападающего_1C:
    .byte con_pause + $01
    .byte con_charlie + $80
    .byte con_window + $0C
    .byte con_start_line + $00
    .text "                    ", con_line
    .text "                    ", con_line
    .text "                    ", con_line
    .text "                    ", con_line
    .byte con_exit

_фраза_нападающего_1D:
    .byte con_pause + $01
    .byte con_charlie + $80
    .byte con_window + $0C
    .byte con_start_line + $00
    .text "                    ", con_line
    .text "                    ", con_line
    .text "                    ", con_line
    .text "                    ", con_line
    .byte con_exit

_фраза_нападающего_1E:
    .byte con_pause + $01
    .byte con_charlie + $80
    .byte con_window + $0C
    .byte con_start_line + $00
    .text "                    ", con_line
    .text "                    ", con_line
    .text "                    ", con_line
    .text "                    ", con_line
    .byte con_exit

_фраза_нападающего_1F:
    .byte con_pause + $01
    .byte con_charlie + $80
    .byte con_window + $0C
    .byte con_start_line + $00
    .text "                    ", con_line
    .text "                    ", con_line
    .text "                    ", con_line
    .text "                    ", con_line
    .byte con_exit

_фраза_нападающего_20:
    .byte con_pause + $01
    .byte con_charlie + $80
    .byte con_window + $0C
    .byte con_start_line + $00
    .text "                    ", con_line
    .text "                    ", con_line
    .text "                    ", con_line
    .text "                    ", con_line
    .byte con_exit

_фраза_нападающего_21:
    .byte con_pause + $01
    .byte con_charlie + $80
    .byte con_window + $0C
    .byte con_start_line + $00
    .text "                    ", con_line
    .text "                    ", con_line
    .text "                    ", con_line
    .text "                    ", con_line
    .byte con_exit

_фраза_нападающего_22:
    .byte con_pause + $01
    .byte con_charlie + $80
    .byte con_window + $0C
    .byte con_start_line + $00
    .text "                    ", con_line
    .text "                    ", con_line
    .text "                    ", con_line
    .text "                    ", con_line
    .byte con_exit

_фраза_нападающего_23:
    .byte con_pause + $01
    .byte con_charlie + $80
    .byte con_window + $0C
    .byte con_start_line + $00
    .text "                    ", con_line
    .text "                    ", con_line
    .text "                    ", con_line
    .text "                    ", con_line
    .byte con_exit

_фраза_нападающего_24:
    .byte con_pause + $01
    .byte con_charlie + $80
    .byte con_window + $0C
    .byte con_start_line + $00
    .text "                    ", con_line
    .text "                    ", con_line
    .text "                    ", con_line
    .text "                    ", con_line
    .byte con_exit

_фраза_нападающего_25:
    .byte con_pause + $01
    .byte con_charlie + $80
    .byte con_window + $0C
    .byte con_start_line + $00
    .text "                    ", con_line
    .text "                    ", con_line
    .text "                    ", con_line
    .text "                    ", con_line
    .byte con_exit

_фраза_нападающего_26:
    .byte con_pause + $01
    .byte con_charlie + $80
    .byte con_window + $0C
    .byte con_start_line + $00
    .text "                    ", con_line
    .text "                    ", con_line
    .text "                    ", con_line
    .text "                    ", con_line
    .byte con_exit

_фраза_нападающего_27:
    .byte con_pause + $01
    .byte con_charlie + $80
    .byte con_window + $0C
    .byte con_start_line + $00
    .text "                    ", con_line
    .text "                    ", con_line
    .text "                    ", con_line
    .text "                    ", con_line
    .byte con_exit

_фраза_нападающего_28:
    .byte con_pause + $01
    .byte con_charlie + $80
    .byte con_window + $0C
    .byte con_start_line + $00
    .text "                    ", con_line
    .text "                    ", con_line
    .text "                    ", con_line
    .text "                    ", con_line
    .byte con_exit

_фраза_нападающего_29:
    .byte con_pause + $01
    .byte con_charlie + $80
    .byte con_window + $0C
    .byte con_start_line + $00
    .text "                    ", con_line
    .text "                    ", con_line
    .text "                    ", con_line
    .text "                    ", con_line
    .byte con_exit

_фраза_нападающего_2A:
    .byte con_pause + $01
    .byte con_charlie + $80
    .byte con_window + $0C
    .byte con_start_line + $00
    .text "                    ", con_line
    .text "                    ", con_line
    .text "                    ", con_line
    .text "                    ", con_line
    .byte con_exit

_фраза_нападающего_2B:
    .byte con_pause + $01
    .byte con_charlie + $80
    .byte con_window + $0C
    .byte con_start_line + $00
    .text "                    ", con_line
    .text "                    ", con_line
    .text "                    ", con_line
    .text "                    ", con_line
    .byte con_exit

_фраза_нападающего_2C:
    .byte con_pause + $01
    .byte con_charlie + $80
    .byte con_window + $0C
    .byte con_start_line + $00
    .text "                    ", con_line
    .text "                    ", con_line
    .text "                    ", con_line
    .text "                    ", con_line
    .byte con_exit

_фраза_нападающего_2D:
    .byte con_pause + $01
    .byte con_charlie + $80
    .byte con_window + $0C
    .byte con_start_line + $00
    .text "                    ", con_line
    .text "                    ", con_line
    .text "                    ", con_line
    .text "                    ", con_line
    .byte con_exit

_фраза_нападающего_2E:
    .byte con_pause + $01
    .byte con_charlie + $80
    .byte con_window + $0C
    .byte con_start_line + $00
    .text "                    ", con_line
    .text "                    ", con_line
    .text "                    ", con_line
    .text "                    ", con_line
    .byte con_exit

_фраза_нападающего_2F:
    .byte con_pause + $01
    .byte con_charlie + $80
    .byte con_window + $0C
    .byte con_start_line + $00
    .text "                    ", con_line
    .text "                    ", con_line
    .text "                    ", con_line
    .text "                    ", con_line
    .byte con_exit

_фраза_нападающего_30:
    .byte con_pause + $01
    .byte con_charlie + $80
    .byte con_window + $0C
    .byte con_start_line + $00
    .text "                    ", con_line
    .text "                    ", con_line
    .text "                    ", con_line
    .text "                    ", con_line
    .byte con_exit

_фраза_нападающего_31:
    .byte con_pause + $01
    .byte con_charlie + $80
    .byte con_window + $0C
    .byte con_start_line + $00
    .text "                    ", con_line
    .text "                    ", con_line
    .text "                    ", con_line
    .text "                    ", con_line
    .byte con_exit

_фраза_нападающего_32:
    .byte con_pause + $01
    .byte con_charlie + $80
    .byte con_window + $0C
    .byte con_start_line + $00
    .text "                    ", con_line
    .text "                    ", con_line
    .text "                    ", con_line
    .text "                    ", con_line
    .byte con_exit

_фраза_нападающего_33:
    .byte con_pause + $01
    .byte con_charlie + $80
    .byte con_window + $0C
    .byte con_start_line + $00
    .text "                    ", con_line
    .text "                    ", con_line
    .text "                    ", con_line
    .text "                    ", con_line
    .byte con_exit

_фраза_нападающего_34:
    .byte con_pause + $01
    .byte con_charlie + $80
    .byte con_window + $0C
    .byte con_start_line + $00
    .text "                    ", con_line
    .text "                    ", con_line
    .text "                    ", con_line
    .text "                    ", con_line
    .byte con_exit

_фраза_нападающего_35:
    .byte con_pause + $01
    .byte con_charlie + $80
    .byte con_window + $0C
    .byte con_start_line + $00
    .text "                    ", con_line
    .text "                    ", con_line
    .text "                    ", con_line
    .text "                    ", con_line
    .byte con_exit

_фраза_нападающего_36:
    .byte con_pause + $01
    .byte con_charlie + $80
    .byte con_window + $0C
    .byte con_start_line + $00
    .text "                    ", con_line
    .text "                    ", con_line
    .text "                    ", con_line
    .text "                    ", con_line
    .byte con_exit

_фраза_нападающего_37:
    .byte con_pause + $01
    .byte con_charlie + $80
    .byte con_window + $0C
    .byte con_start_line + $00
    .text "                    ", con_line
    .text "                    ", con_line
    .text "                    ", con_line
    .text "                    ", con_line
    .byte con_exit

_фраза_нападающего_38:
    .byte con_pause + $01
    .byte con_charlie + $80
    .byte con_window + $0C
    .byte con_start_line + $00
    .text "                    ", con_line
    .text "                    ", con_line
    .text "                    ", con_line
    .text "                    ", con_line
    .byte con_exit

_фраза_нападающего_39:
    .byte con_pause + $01
    .byte con_charlie + $80
    .byte con_window + $0C
    .byte con_start_line + $00
    .text "                    ", con_line
    .text "                    ", con_line
    .text "                    ", con_line
    .text "                    ", con_line
    .byte con_exit

_фраза_нападающего_3A:
    .byte con_pause + $01
    .byte con_charlie + $80
    .byte con_window + $0C
    .byte con_start_line + $00
    .text "                    ", con_line
    .text "                    ", con_line
    .text "                    ", con_line
    .text "                    ", con_line
    .byte con_exit

_фраза_нападающего_3B:
    .byte con_pause + $01
    .byte con_charlie + $80
    .byte con_window + $0C
    .byte con_start_line + $00
    .text "                    ", con_line
    .text "                    ", con_line
    .text "                    ", con_line
    .text "                    ", con_line
    .byte con_exit

_фраза_нападающего_3C:
    .byte con_pause + $01
    .byte con_charlie + $80
    .byte con_window + $0C
    .byte con_start_line + $00
    .text "                    ", con_line
    .text "                    ", con_line
    .text "                    ", con_line
    .text "                    ", con_line
    .byte con_exit

_фраза_нападающего_3D:
    .byte con_pause + $01
    .byte con_charlie + $80
    .byte con_window + $0C
    .byte con_start_line + $00
    .text "                    ", con_line
    .text "                    ", con_line
    .text "                    ", con_line
    .text "                    ", con_line
    .byte con_exit

_фраза_нападающего_3E:
    .byte con_pause + $01
    .byte con_charlie + $80
    .byte con_window + $0C
    .byte con_start_line + $00
    .text "                    ", con_line
    .text "                    ", con_line
    .text "                    ", con_line
    .text "                    ", con_line
    .byte con_exit

_фраза_нападающего_3F:
    .byte con_pause + $01
    .byte con_charlie + $80
    .byte con_window + $0C
    .byte con_start_line + $00
    .text "                    ", con_line
    .text "                    ", con_line
    .text "                    ", con_line
    .text "                    ", con_line
    .byte con_exit

