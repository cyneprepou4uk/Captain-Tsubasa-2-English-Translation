.segment "BANK_29"
.include "copy_bank_ram.inc"
.include "copy_bank_val.inc"
; текст облаков



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



