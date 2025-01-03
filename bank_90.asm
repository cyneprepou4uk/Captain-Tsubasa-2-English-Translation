.segment "BANK_90"
.include "copy_bank_ram.inc"
.include "copy_bank_val.inc"
.org $8000
; 0x020010-0x02400F



.export sub_0x020016_прочитать_поинтеры_сценария
.export sub_0x020031_обработка_байтов_сценария



sub_0x020016_прочитать_поинтеры_сценария:
C D 0 - - - 0x020016 10:8006: A2 89     LDX #> tbl_89BF_сценарии
C - - - - - 0x020018 10:8008: AD 18 05  LDA ram_сценарий
C - - - - - 0x02001B 10:800B: 0A        ASL
C - - - - - 0x02001C 10:800C: A8        TAY
C - - - - - 0x02001D 10:800D: 90 01     BCC bra_8010_not_overflow
; bzk optimize, проверка на overflow никогда не корректировалась, видимо потому что 0518 никогда не превышает 7F
- - - - - - 0x02001F 10:800F: E8        INX
bra_8010_not_overflow:
C - - - - - 0x020020 10:8010: A9 BF     LDA #< tbl_89BF_сценарии
C - - - - - 0x020022 10:8012: 85 5D     STA ram_scernario_data
C - - - - - 0x020024 10:8014: 86 5E     STX ram_scernario_data + $01
C - - - - - 0x020026 10:8016: B1 5D     LDA (ram_scernario_data),Y
C - - - - - 0x020028 10:8018: AA        TAX
C - - - - - 0x020029 10:8019: C8        INY
C - - - - - 0x02002A 10:801A: B1 5D     LDA (ram_scernario_data),Y
C - - - - - 0x02002C 10:801C: 85 5E     STA ram_scernario_data + $01
C - - - - - 0x02002E 10:801E: 86 5D     STX ram_scernario_data
                                        LDX #$7F
bra_801F_loop:
                                        LDA #$FF
                                        STA ram_debug_подтип_сценария,X
                                        DEX
                                        BPL bra_801F_loop
                                        LDA #$00
                                        STA ram_debug_индекс_подтипов_сценария
                                        STA ram_debug_индекс_подтипов_сценария + $10
                                        STA ram_debug_индекс_подтипов_сценария + $20
                                        STA ram_debug_индекс_подтипов_сценария + $30
                                        STA ram_debug_индекс_подтипов_сценария + $40
                                        STA ram_debug_индекс_подтипов_сценария + $50
                                        STA ram_debug_индекс_подтипов_сценария + $60
                                        STA ram_debug_индекс_подтипов_сценария + $70
C - - - - - 0x020030 10:8020: 60        RTS



sub_0x020031_обработка_байтов_сценария:
C D 0 - - - 0x020031 10:8021: AD 17 05  LDA ram_0517
C - - - - - 0x020034 10:8024: 8D 2A 05  STA ram_флаг_зеркала_анимации
C - - - - - 0x020037 10:8027: AD 16 05  LDA ram_флаги_сценария_ХЗ
C - - - - - 0x02003A 10:802A: 29 FB     AND #$04 ^ $FF
C - - - - - 0x02003C 10:802C: 8D 16 05  STA ram_флаги_сценария_ХЗ
C - - - - - 0x02003F 10:802F: A9 00     LDA #$00
C - - - - - 0x020041 10:8031: 8D 2B 05  STA ram_for_0532
C - - - - - 0x020044 10:8034: 8D 2D 05  STA ram_052D
C - - - - - 0x020047 10:8037: 8D 2C 05  STA ram_052C
C - - - - - 0x02004A 10:803A: 8D 30 05  STA ram_for_052E_задержка_звука_анимации
C - - - - - 0x02004D 10:803D: 85 3A     STA ram_003A_temp
loc_803F_loop:
C D 0 - - - 0x02004F 10:803F: A4 3A     LDY ram_003A_temp
C - - - - - 0x020051 10:8041: E6 3A     INC ram_003A_temp
C - - - - - 0x020053 10:8043: B1 5D     LDA (ram_scernario_data),Y
C - - - - - 0x020055 10:8045: C9 F0     CMP #$F0
C - - - - - 0x020057 10:8047: 90 06     BCC bra_804F
C - - - - - 0x020059 10:8049: 20 A9 80  JSR sub_80A9_управляющие_байты_F0_FF
C - - - - - 0x02005C 10:804C: 4C 3F 80  JMP loc_803F_loop
bra_804F:
; 00-EF
C - - - - - 0x02005F 10:804F: 8D 23 05  STA ram_for_0519_задержка_следующей_анимации
C - - - - - 0x020062 10:8052: AD 16 05  LDA ram_флаги_сценария_ХЗ
C - - - - - 0x020065 10:8055: 09 40     ORA #$40
C - - - - - 0x020067 10:8057: 29 EF     AND #$10 ^ $FF
C - - - - - 0x020069 10:8059: 8D 16 05  STA ram_флаги_сценария_ХЗ
C - - - - - 0x02006C 10:805C: A4 3A     LDY ram_003A_temp
C - - - - - 0x02006E 10:805E: E6 3A     INC ram_003A_temp
C - - - - - 0x020070 10:8060: B1 5D     LDA (ram_scernario_data),Y
C - - - - - 0x020079 10:8069: 8D 24 05  STA ram_фон_анимации
C - - - - - 0x02007C 10:806C: A4 3A     LDY ram_003A_temp
C - - - - - 0x02007E 10:806E: E6 3A     INC ram_003A_temp
C - - - - - 0x020080 10:8070: B1 5D     LDA (ram_scernario_data),Y
C - - - - - 0x020089 10:8079: 8D 28 05  STA ram_for_053C_номер_анимации
C - - - - - 0x02008C 10:807C: A4 3A     LDY ram_003A_temp
C - - - - - 0x02008E 10:807E: E6 3A     INC ram_003A_temp
C - - - - - 0x020090 10:8080: B1 5D     LDA (ram_scernario_data),Y
C - - - - - 0x020099 10:8089: 8D 29 05  STA ram_for_05EA_облако
; при необходимости выбрать анимацию из таблицы
                                        LDA ram_for_053C_номер_анимации
                                        CMP #con_s_anim_FD_attacker
                                        BEQ bra_808C_FD
                                        CMP #con_s_anim_FE_defender
                                        BEQ bra_808B_FE
                                        JMP loc_808C
bra_808C_FD:    ; атакующий
                                        LDA ram_игрок_с_мячом
                                        JMP loc_808A                        
bra_808B_FE:    ; защитник
                                        LDA ram_игрок_без_мяча
loc_808A:
                                        JSR sub_8207_узнать_номер_игрока___X_00
                                        TAY
                                        LDX tbl_86F4_игроки_с_рожами,Y
                                        LDA tbl_8275_номер_анимации_рожи_игрока,X
                                        STA ram_for_053C_номер_анимации
loc_808C:
; 00-FC, FF
C - - - - - 0x02009C 10:808C: A5 3A     LDA ram_003A_temp
C - - - - - 0x02009E 10:808E: 18        CLC
C - - - - - 0x02009F 10:808F: 65 5D     ADC ram_scernario_data
C - - - - - 0x0200A1 10:8091: 85 5D     STA ram_scernario_data
C - - - - - 0x0200A3 10:8093: 90 02     BCC bra_8097_not_overflow
C - - - - - 0x0200A5 10:8095: E6 5E     INC ram_scernario_data + $01
bra_8097_not_overflow:
C - - - - - 0x0200A7 10:8097: A2 15     LDX #$15
C - - - - - 0x0200A9 10:8099: A9 F0     LDA #$F0
C - - - - - 0x0200AB 10:809B: 95 01     STA ram_0001,X
C - - - - - 0x0200AD 10:809D: A9 0B     LDA #$0B
C - - - - - 0x0200AF 10:809F: 95 02     STA ram_0002,X
C - - - - - 0x0200B1 10:80A1: A9 80     LDA #> (ofs_099_0x01615C - $01)
C - - - - - 0x0200B3 10:80A3: A0 08     LDY #< (ofs_099_0x01615C - $01)
; bzk optimize, JMP
C - - - - - 0x0200B5 10:80A5: 20 0F C5  JSR sub_0x03CAF7_подготовить_подпрограмму_в_стеке
C - - - - - 0x0200B8 10:80A8: 60        RTS



sub_80A9_управляющие_байты_F0_FF:
C - - - - - 0x0200B9 10:80A9: 38        SEC
C - - - - - 0x0200BA 10:80AA: E9 F0     SBC #$F0
C - - - - - 0x0200BC 10:80AC: 20 09 C5  JSR sub_0x03CBA9_поинтеры_после_JSR
- D 0 - I - 0x0200BF 10:80AF: CF 80     .word ofs_014_80CF_F0_quit
- D 0 - I - 0x0200C1 10:80B1: D4 80     .word $0000   ; unused, было аналогично F0, но без очистки флага зеркала
- D 0 - I - 0x0200C3 10:80B3: F4 80     .word ofs_014_80F4_F2_jmp
- D 0 - I - 0x0200C5 10:80B5: 05 81     .word ofs_014_8105_F3_branch
- D 0 - I - 0x0200C7 10:80B7: E0 87     .word ofs_014_87E0_F4_mirror_on
- D 0 - I - 0x0200C9 10:80B9: E6 87     .word ofs_014_87E6_F5_mirror_off
- D 0 - I - 0x0200CB 10:80BB: EC 87     .word ofs_014_87EC_F6_mirror_toggle
- D 0 - I - 0x0200CD 10:80BD: F5 87     .word ofs_014_87F5_F7
- D 0 - I - 0x0200CF 10:80BF: FF 87     .word ofs_014_87FF_F8
- D 0 - I - 0x0200D1 10:80C1: 09 88     .word ofs_014_8809_F9_soundID_delay
- D 0 - I - 0x0200D3 10:80C3: 1A 88     .word ofs_014_881A_FA_jsr
- D 0 - I - 0x0200D5 10:80C5: 37 88     .word ofs_014_8837_FB_rts
- D 0 - I - 0x0200D7 10:80C7: 53 88     .word ofs_014_8853_FC_moving_bg
- D 0 - I - 0x0200D9 10:80C9: 5D 88     .word ofs_014_885D_FD_mirror_condition
- D 0 - I - 0x0200DB 10:80CB: E3 88     .word ofs_014_88E3_FE
- D 0 - I - 0x0200DD 10:80CD: ED 88     .word ofs_014_88ED_FF_drive_overhead_tiger



ofs_014_80CF_F0_quit:
loc_80CF_возврат_из_стека_сценария:
; без чтения следующих байтов
C D 0 - - - 0x0200DF 10:80CF: A9 00     LDA #$00
C - - - - - 0x0200E1 10:80D1: 8D 2A 05  STA ram_флаг_зеркала_анимации
C - - - - - 0x0200E4 10:80D4: A9 08     LDA #$08
C - - - - - 0x0200E6 10:80D6: 2C 16 05  BIT ram_флаги_сценария_ХЗ
C - - - - - 0x0200E9 10:80D9: D0 0B     BNE bra_80E6
C - - - - - 0x0200EB 10:80DB: 0D 16 05  ORA ram_флаги_сценария_ХЗ
C - - - - - 0x0200EE 10:80DE: 8D 16 05  STA ram_флаги_сценария_ХЗ
C - - - - - 0x0200F1 10:80E1: A2 05     LDX #$05
C - - - - - 0x0200F3 10:80E3: 20 1B C5  JSR sub_CB02
bra_80E6:
C - - - - - 0x0200F6 10:80E6: A9 00     LDA #$00
C - - - - - 0x0200F8 10:80E8: 8D 22 05  STA ram_указатель_стека_сценария
C - - - - - 0x0200FB 10:80EB: A5 21     LDA ram_for_2001
C - - - - - 0x0200FD 10:80ED: 29 1E     AND #$1E
C - - - - - 0x0200FF 10:80EF: 85 21     STA ram_for_2001
C - - - - - 0x020101 10:80F1: 68        PLA
C - - - - - 0x020102 10:80F2: 68        PLA
C - - - - - 0x020103 10:80F3: 60        RTS



sub_CB02:
; перемещено из банка FF
; bzk optimize, X = 05
C D 2 - - - 0x03CB12 FF:CB02: B5 01     LDA ram_0001,X
C - - - - - 0x03CB14 FF:CB04: F0 06     BEQ bra_CB0C_RTS
C - - - - - 0x03CB16 FF:CB06: B5 00     LDA ram_0000,X
C - - - - - 0x03CB18 FF:CB08: D0 02     BNE bra_CB0C_RTS
C - - - - - 0x03CB1A FF:CB0A: F6 00     INC ram_0000,X
bra_CB0C_RTS:
C - - - - - 0x03CB1C FF:CB0C: 60        RTS



ofs_014_80F4_F2_jmp:
; читает 2 следующих байта
; переместиться на адрес поинтеров после F2
C - - J - - 0x020104 10:80F4: A4 3A     LDY ram_003A_temp
loc_80F6_подпрограмма_сценария:
C D 0 - - - 0x020106 10:80F6: B1 5D     LDA (ram_scernario_data),Y
C - - - - - 0x020108 10:80F8: AA        TAX
C - - - - - 0x020109 10:80F9: C8        INY
C - - - - - 0x02010A 10:80FA: B1 5D     LDA (ram_scernario_data),Y
C - - - - - 0x02010C 10:80FC: 85 5E     STA ram_scernario_data + $01
C - - - - - 0x02010E 10:80FE: 86 5D     STX ram_scernario_data
C - - - - - 0x020110 10:8100: A9 00     LDA #$00
C - - - - - 0x020112 10:8102: 85 3A     STA ram_003A_temp
C - - - - - 0x020114 10:8104: 60        RTS



ofs_014_8105_F3_branch:
; читает 1 следующий байт
; код считывает байт после F3 и прыгает на одну из соответствующих подпрограмм, откуда получает нужный результат в X
    ; если байт после F3 отрицательный, то меняется косвенный адрес сценария в зависимости от результата
    ; если байт после F3 положительный, то косвенный адрес сценария смещается на велечину результата
C - - J - - 0x020115 10:8105: A4 3A     LDY ram_003A_temp
C - - - - - 0x020117 10:8107: B1 5D     LDA (ram_scernario_data),Y
C - - - - - 0x020119 10:8109: 48        PHA
C - - - - - 0x02011A 10:810A: 20 6E 81  JSR sub_816E_выбор_подпрограммы
                                        TYA
                                        PHA

                                        ; сместиться на 10 в зависимости от стека (байт в стеке кратный 02)
                                        LDA ram_указатель_стека_сценария
                                        ASL
                                        ASL
                                        ASL
                                        STA ram_00F8_tmp
                                        TAY

                                        LDA ram_debug_индекс_подтипов_сценария,Y
                                        CLC
                                        ADC ram_00F8_tmp
                                        TAY

                                        TXA
                                        STA ram_debug_подтип_сценария,Y
                                        TAX ; требуется чтобы удобно было менять значение регистра в A и X одновременно когда бряк сработает
                                        LDY ram_00F8_tmp
                                        LDA ram_debug_индекс_подтипов_сценария,Y
                                        CLC
                                        ADC #$01
                                        STA ram_debug_индекс_подтипов_сценария,Y
                                        PLA
                                        TAY
C - - - - - 0x02011D 10:810D: 68        PLA
C - - - - - 0x02011E 10:810E: 10 1F     BPL bra_812F_00_7F
; 80-FF
C - - - - - 0x020120 10:8110: 8A        TXA
C - - - - - 0x020121 10:8111: 38        SEC
C - - - - - 0x020122 10:8112: 65 3A     ADC ram_003A_temp
C - - - - - 0x020124 10:8114: 18        CLC
C - - - - - 0x020125 10:8115: 65 5D     ADC ram_scernario_data
C - - - - - 0x020127 10:8117: 85 5D     STA ram_scernario_data
C - - - - - 0x020129 10:8119: 90 02     BCC bra_811D_not_overflow
C - - - - - 0x02012B 10:811B: E6 5E     INC ram_scernario_data + $01
bra_811D_not_overflow:
C - - - - - 0x02012D 10:811D: A0 00     LDY #$00
C - - - - - 0x02012F 10:811F: B1 5D     LDA (ram_scernario_data),Y
C - - - - - 0x020131 10:8121: 18        CLC
C - - - - - 0x020132 10:8122: 65 5D     ADC ram_scernario_data
C - - - - - 0x020134 10:8124: 85 5D     STA ram_scernario_data
C - - - - - 0x020136 10:8126: 90 02     BCC bra_812A_not_overflow
C - - - - - 0x020138 10:8128: E6 5E     INC ram_scernario_data + $01
bra_812A_not_overflow:
C - - - - - 0x02013A 10:812A: A9 00     LDA #$00
C - - - - - 0x02013C 10:812C: 85 3A     STA ram_003A_temp
C - - - - - 0x02013E 10:812E: 60        RTS
bra_812F_00_7F:
loc_812F_выбрать_подпрограмму:
C D 0 - - - 0x02013F 10:812F: 8A        TXA
C - - - - - 0x020140 10:8130: 0A        ASL
C - - - - - 0x020141 10:8131: 38        SEC
C - - - - - 0x020142 10:8132: 65 3A     ADC ram_003A_temp
C - - - - - 0x020144 10:8134: A8        TAY
C - - - - - 0x020145 10:8135: 4C F6 80  JMP loc_80F6_подпрограмма_сценария



sub_8138_рандом_убийства_игрока___X_00:
; bzk optimize, в конце всегда проверяется на 80,
; сделать в конце CMP 80
C - - - - - 0x020148 10:8138: 29 FC     AND #$FC
C - - - - - 0x02014A 10:813A: F0 11     BEQ bra_814D_данное_действие_не_убивает
C - - - - - 0x02014C 10:813C: 4A        LSR
C - - - - - 0x02014D 10:813D: 85 3B     STA ram_003B_temp
C - - - - - 0x02014F 10:813F: AD E2 00  LDA ram_random + $01
loc_8142_loop:
C D 0 - - - 0x020152 10:8142: C5 3B     CMP ram_003B_temp
C - - - - - 0x020154 10:8144: 90 05     BCC bra_814B_закончить_цикл
C - - - - - 0x020156 10:8146: E5 3B     SBC ram_003B_temp
C - - - - - 0x020158 10:8148: 4C 42 81  JMP loc_8142_loop
bra_814B_закончить_цикл:
; C = 1
C - - - - - 0x02015B 10:814B: 65 3B     ADC ram_003B_temp
bra_814D_данное_действие_не_убивает:    ; A = 00
C - - - - - 0x02015D 10:814D: A2 00     LDX #$00
C - - - - - 0x02015F 10:814F: 60        RTS



sub_8150_отнять_хп_за_смерть_игрока___X_01:
C - - - - - 0x020160 10:8150: 20 0C C5  JSR sub_0x03CD8C_получить_адрес_игрока
C - - - - - 0x020163 10:8153: A0 01     LDY #con_plr_guts_lo
C - - - - - 0x020165 10:8155: B1 34     LDA (ram_plr_data),Y    ; con_plr_guts_lo
C - - - - - 0x020167 10:8157: 38        SEC
C - - - - - 0x020168 10:8158: E9 40     SBC #< $0040
C - - - - - 0x02016A 10:815A: AA        TAX
C - - - - - 0x02016B 10:815B: C8        INY ; con_plr_guts_hi
C - - - - - 0x02016C 10:815C: B1 34     LDA (ram_plr_data),Y
C - - - - - 0x02016E 10:815E: E9 00     SBC #> $0040
C - - - - - 0x020170 10:8160: 10 03     BPL bra_8165_эренгия_еще_есть
C - - - - - 0x020172 10:8162: A2 00     LDX #$00
C - - - - - 0x020174 10:8164: 8A        TXA
bra_8165_эренгия_еще_есть:
C - - - - - 0x020175 10:8165: 91 34     STA (ram_plr_data),Y    ; con_plr_guts_hi
C - - - - - 0x020177 10:8167: 88        DEY ; con_plr_guts_lo
C - - - - - 0x020178 10:8168: 8A        TXA
C - - - - - 0x020179 10:8169: 91 34     STA (ram_plr_data),Y    ; con_plr_guts_lo
C - - - - - 0x02017B 10:816B: A2 01     LDX #$01
C - - - - - 0x02017D 10:816D: 60        RTS



sub_816E_выбор_подпрограммы:
C - - - - - 0x02017E 10:816E: 29 7F     AND #$7F
C - - - - - 0x020180 10:8170: 20 09 C5  JSR sub_0x03CBA9_поинтеры_после_JSR
- D 0 - I - 0x020183 10:8173: 1C 82     .word $0000       ; unused ofs_821C_00_80_защитник_клон_или_нет
- D 0 - I - 0x020185 10:8175: 2C 82     .word ofs_015_822C_01_выживет_ли_защитник
- D 0 - I - 0x020187 10:8177: 51 82     .word ofs_015_8251_02_номер_действия_защитника
- D 0 - I - 0x020189 10:8179: 55 82     .word ofs_015_8255_03_результат_действия_защитника
- D 0 - I - 0x02018B 10:817B: 59 82     .word ofs_015_8259_04_высота_мяча
- D 0 - I - 0x02018D 10:817D: 60 82     .word ofs_015_8260_05_порядковый_номер_защитника
- D 0 - I - 0x02018F 10:817F: 64 82     .word ofs_015_8264_06_защитник_полевой_или_кипер
- D 0 - I - 0x020191 10:8181: 71 82     .word $0000       ; unused, было аналогично 03_83
- D 0 - I - 0x020193 10:8183: 75 82     .word ofs_015_8275_08
- D 0 - I - 0x020195 10:8185: 8A 82     .word ofs_015_828A_09_действие_атаки_на_штрафной
- D 0 - I - 0x020197 10:8187: 97 82     .word $0000       ; unused, было аналогично 02_8A для киперов
- D 0 - I - 0x020199 10:8189: 9B 82     .word $0000       ; unused, было аналогично 03_83
- D 0 - I - 0x02019B 10:818B: 9F 82     .word ofs_015_829F_0C_обычный_или_спешал
- D 0 - I - 0x02019D 10:818D: BA 82     .word ofs_015_82BA_0D_что_будет_после_промаха_кипера
- D 0 - I - 0x02019F 10:818F: 66 83     .word ofs_015_8366_0E_действие_атаки_на_земле
- D 0 - I - 0x0201A1 10:8191: 6A 83     .word $0000       ; unused, было аналогично 03_83
- D 0 - I - 0x0201A3 10:8193: 6E 83     .word ofs_015_836E_10_скорость_мяча
- D 0 - I - 0x0201A5 10:8195: 7C 83     .word $0000       ; unused, было аналогично 0F_8F
- D 0 - I - 0x0201A7 10:8197: 80 83     .word $0000       ; unused, было аналогично 0F_8F
- D 0 - I - 0x0201A9 10:8199: 84 83     .word ofs_015_8384_13_спасет_ли_защитник_ворота
- D 0 - I - 0x0201AB 10:819B: A4 83     .word $0000       ; unused, было аналогично 0F_8F
- D 0 - I - 0x0201AD 10:819D: A8 83     .word ofs_015_83A8_15
- D 0 - I - 0x0201AF 10:819F: B4 83     .word ofs_015_83B4_16_действие_атакующего_на_своей_штрафной
- D 0 - I - 0x0201B1 10:81A1: C2 83     .word $0000       ; unused, было аналогично 0F_8F
- D 0 - I - 0x0201B3 10:81A3: C6 83     .word ofs_015_83C6_18_проверка_на_jito
- - - - - - 0x0201B5 10:81A5: D6 83     .word $0000       ; unused, байты не найдены
- - - - - - 0x0201B7 10:81A7: DD 83     .word $0000       ; unused, байты не найдены
- D 0 - I - 0x0201B9 10:81A9: E4 83     .word ofs_015_83E4_1B_разновидность_block
- D 0 - I - 0x0201BB 10:81AB: EB 83     .word ofs_015_83EB_1C_разновидность_dribble
- D 0 - I - 0x0201BD 10:81AD: F5 83     .word ofs_015_83F5_1D_разновидность_shoot
- D 0 - I - 0x0201BF 10:81AF: 01 84     .word ofs_015_8401_1E_разновидность_pass
- D 0 - I - 0x0201C1 10:81B1: 0A 84     .word $0000       ; unused, было аналогично 0E_8E
- D 0 - I - 0x0201C3 10:81B3: 0E 84     .word ofs_015_840E_20_проверка_на_wakashimazu_и_gertise
- D 0 - I - 0x0201C5 10:81B5: 2B 84     .word ofs_015_842B_21_порвана_ли_сетка
- D 0 - I - 0x0201C7 10:81B7: 36 84     .word ofs_015_8436_22_у_чьей_команды_мяч
- D 0 - I - 0x0201C9 10:81B9: 3E 84     .word ofs_015_843E_23_за_какую_команду_играешь
- - - - - - 0x0201CB 10:81BB: 42 84     .word ofs_015_8442_24_был_ли_крит   ; new
- D 0 - I - 0x0201CD 10:81BD: 4E 84     .word ofs_015_844E_25_coimbra_france_уже_били_или_нет
- D 0 - I - 0x0201CF 10:81BF: 57 84     .word ofs_015_8457_26_проигрывает_ли_германия
- D 0 - I - 0x0201D1 10:81C1: 4E 84     .word ofs_015_847С_27_атакующий_с_рожей     ; new
- D 0 - I - 0x0201D3 10:81C3: 7E 84     .word $0000       ; ofs_015_847E_28_оба_игрока_с_рожами___рожа_защитника
- D 0 - I - 0x0201D5 10:81C5: 98 84     .word $0000       ; ofs_015_8498_29_оба_игрока_с_рожами___рожа_нападающего
- D 0 - I - 0x0201D7 10:81C7: B2 84     .word ofs_015_84B2_2A_защитник_с_рожей
- D 0 - I - 0x0201D9 10:81C9: C7 84     .word ofs_015_84C7_2B_проверка_на_100_хп
- D 0 - I - 0x0201DB 10:81CB: E7 84     .word ofs_015_84E7_2C_напали_ли_защитники
- D 0 - I - 0x0201DD 10:81CD: EF 84     .word ofs_015_84EF_2D_забил_ли_jito_гол_с_сано
- D 0 - I - 0x0201DF 10:81CF: FC 84     .word ofs_015_84FC_2E_наебан_ли_кипер
- D 0 - I - 0x0201E1 10:81D1: 0B 85     .word ofs_015_850B_2F_киперы_с_критами
- D 0 - I - 0x0201E3 10:81D3: 27 85     .word ofs_015_8527_30_tsubasa_diaz
- D 0 - I - 0x0201E5 10:81D5: 3A 85     .word ofs_015_853A_31_nitta
- D 0 - I - 0x0201E7 10:81D7: 46 85     .word ofs_015_8546_32_soda
- D 0 - I - 0x0201E9 10:81D9: 56 85     .word ofs_015_8556_33_игроки_с_защитным_спешалом
- D 0 - I - 0x0201EB 10:81DB: 6C 85     .word ofs_015_856C_34_узнать_высоту_мяча
- D 0 - I - 0x0201ED 10:81DD: 70 85     .word ofs_015_8570_35_действие_защитника_на_своей_штрафной
- D 0 - I - 0x0201EF 10:81DF: 80 85     .word ofs_015_8580_36_разновидность_catch
- D 0 - I - 0x0201F1 10:81E1: 87 85     .word ofs_015_8587_37_защитный_спешал_или_нет
- D 0 - I - 0x0201F3 10:81E3: 92 85     .word ofs_015_8592_38_hyuga
- D 0 - I - 0x0201F5 10:81E5: A2 85     .word ofs_015_85A2_39_matsuyama
- D 0 - I - 0x0201F7 10:81E7: B2 85     .word ofs_015_85B2_3A_kaltz
- D 0 - I - 0x0201F9 10:81E9: BE 85     .word ofs_015_85BE_3B_carlos
- D 0 - I - 0x0201FB 10:81EB: CA 85     .word ofs_015_85CA_3C_misugi
- D 0 - I - 0x0201FD 10:81ED: DA 85     .word ofs_015_85DA_3D_misaki
- D 0 - I - 0x0201FF 10:81EF: E6 85     .word ofs_015_85E6_3E_полет_мяча_и_кипера_в_пк
- D 0 - I - 0x020201 10:81F1: FE 85     .word $0000       ; unused, было аналогично 0F_8F
- D 0 - I - 0x020203 10:81F3: 02 86     .word ofs_015_8602_40
- D 0 - I - 0x020205 10:81F5: 10 86     .word ofs_015_8610_41_рожа_кипера
- D 0 - I - 0x020207 10:81F7: 27 86     .word ofs_015_8627_42_2_варианта_рандома
- D 0 - I - 0x020209 10:81F9: 2E 86     .word ofs_015_862E_43_действие_атакующего_на_своей_штрафной
- D 0 - I - 0x02020B 10:81FB: 3B 86     .word ofs_015_863B_44_делает_ли_кипер_dive
- D 0 - I - 0x02020D 10:81FD: 4A 86     .word ofs_015_864A_45_выживет_ли_кипер_после_punch
- D 0 - I - 0x02020F 10:81FF: 77 86     .word ofs_015_8677_46_попытка_убийства_защитника
- D 0 - I - 0x020211 10:8201: 8A 86     .word ofs_015_868A_47_кто_делает_силовой_дриблинг
- D 0 - I - 0x020213 10:8203: B6 86     .word ofs_015_86B6_48_тип_удара_на_штрафной
- D 0 - I - 0x020215 10:8205: CC 86     .word ofs_015_86CC_49_спешал_перепасовка_и_twin_shot
                                        .word ofs_015_847D_4A_оба_игрока_с_рожами
                                        .word ofs_015_85FE_4B_проверка_на_защитника_misugi    ; new



sub_8207_узнать_номер_игрока___X_00:
C - - - - - 0x020217 10:8207: 20 0C C5  JSR sub_0x03CD8C_получить_адрес_игрока
C - - - - - 0x02021A 10:820A: A0 00     LDY #con_plr_id
C - - - - - 0x02021C 10:820C: B1 34     LDA (ram_plr_data),Y    ; con_plr_id
C - - - - - 0x02021E 10:820E: A2 00     LDX #$00
C - - - - - 0x020220 10:8210: 60        RTS



sub_8211_выставить_флаг_сценария_04:
loc_8211_выставить_флаг_сценария_04:
C D 0 - - - 0x020221 10:8211: F0 08     BEQ bra_821B_RTS
C - - - - - 0x020223 10:8213: AD 16 05  LDA ram_флаги_сценария_ХЗ
C - - - - - 0x020226 10:8216: 09 04     ORA #$04
C - - - - - 0x020228 10:8218: 8D 16 05  STA ram_флаги_сценария_ХЗ
bra_821B_RTS:
C - - - - - 0x02022B 10:821B: 60        RTS



; ofs_821C_00_80_защитник_клон_или_нет:
; 00 = не клон
; 01 = клон
; C - J - - - 0x02022C 10:821C: AD 42 04  LDA ram_игрок_без_мяча
; C - - - - - 0x02022F 10:821F: 20 0C C5  JSR sub_0x03CD8C_получить_адрес_игрока
; C - - - - - 0x020232 10:8222: A0 00     LDY #con_plr_id
; C - - - - - 0x020234 10:8224: A2 00     LDX #$00
; C - - - - - 0x020236 10:8226: B1 34     LDA (ram_plr_data),Y    ; con_plr_id
; C - - - - - 0x020238 10:8228: D0 01     BNE bra_822B_RTS
; C - - - - - 0x02023A 10:822A: E8        INX ; 01
; bra_822B_RTS:
; C - - - - - 0x02023B 10:822B: 60        RTS



ofs_015_822C_01_выживет_ли_защитник:
; 00 = защитник выживет
; 01 = защитник убьется
C - - J - - 0x02023C 10:822C: AD 44 04  LDA ram_спешал_атакующего
C - - - - - 0x02023F 10:822F: AC 12 06  LDY ram_результат_защитника
C - - - - - 0x020242 10:8232: C0 02     CPY #$02
C - - - - - 0x020244 10:8234: 90 03     BCC bra_8239_защитник_не_отберет_мяч
C - - - - - 0x020246 10:8236: AD 45 04  LDA ram_спешал_защитника
bra_8239_защитник_не_отберет_мяч:
C - - - - - 0x020249 10:8239: 20 38 81  JSR sub_8138_рандом_убийства_игрока___X_00
C - - - - - 0x02024C 10:823C: C9 80     CMP #$80
C - - - - - 0x02024E 10:823E: 90 10     BCC bra_8250_RTS
C - - - - - 0x020250 10:8240: AD 42 04  LDA ram_игрок_без_мяча
C - - - - - 0x020253 10:8243: AE 12 06  LDX ram_результат_защитника
C - - - - - 0x020256 10:8246: E0 02     CPX #$02
C - - - - - 0x020258 10:8248: 90 03     BCC bra_824D_защитник_не_отберет_мяч
C - - - - - 0x02025A 10:824A: AD 41 04  LDA ram_игрок_с_мячом
bra_824D_защитник_не_отберет_мяч:
; bzk optimize, JMP
C - - - - - 0x02025D 10:824D: 20 50 81  JSR sub_8150_отнять_хп_за_смерть_игрока___X_01
bra_8250_RTS:
C - - - - - 0x020260 10:8250: 60        RTS



ofs_015_8251_02_номер_действия_защитника:
; 00 = block / catch
; 01 = tackle / punch
; 02 = pass cut / triangle jump
C - - J - - 0x020261 10:8251: AE 3D 04  LDX ram_действие_защиты
C - - - - - 0x020264 10:8254: 60        RTS



ofs_015_8255_03_результат_действия_защитника:
; 00 = атакующий легко обведет/защитник не напорется на летящий мяч/кипер пропустит
; 01 = атакующий с трудом обведет/защитник коснется летящего мяча/кипер пропустит но мяч порвется если супер
; 02 = защитник выбьет мяч у атакующего/отобьет мяч в воздухе/кипер еле отобьет ? либо пропустит и штанга
; 03 = защитник отберет мяч/кипер словит или легко отобьет
; 04 = нарушение по вине защитника
C - - J - - 0x020265 10:8255: AE 12 06  LDX ram_результат_защитника
C - - - - - 0x020268 10:8258: 60        RTS



ofs_015_8259_04_высота_мяча:
; 00 = мяч у атакующего/низкий мяч
; 01 = высокий мяч
C - - J - - 0x020269 10:8259: AE 4E 04  LDX ram_высота_мяча
C - - - - - 0x02026C 10:825C: F0 01     BEQ bra_825F_RTS
C - - - - - 0x02026E 10:825E: CA        DEX ; 00/01
bra_825F_RTS:   ; X = 00, bzk optimize, небезопасно
C - - - - - 0x02026F 10:825F: 60        RTS



ofs_015_8260_05_порядковый_номер_защитника:
; 00 = защитник 1
; 01 = защитник 2
; 02 = защитник 3
; 03 = защитник 4
; 04 = защитник 5
C - - J - - 0x020270 10:8260: AE 16 06  LDX ram_индекс_защитника
C - - - - - 0x020273 10:8263: 60        RTS



ofs_015_8264_06_защитник_полевой_или_кипер:
; 00 = защитник полевой
; 01 = защитник кипер
C - - J - - 0x020274 10:8264: A2 00     LDX #$00
C - - - - - 0x020276 10:8266: AD 42 04  LDA ram_игрок_без_мяча
C - - - - - 0x020279 10:8269: F0 04     BEQ bra_826F_if_кипер
C - - - - - 0x02027B 10:826B: C9 0B     CMP #$0B
C - - - - - 0x02027D 10:826D: D0 01     BNE bra_8270_RTS
bra_826F_if_кипер:
C - - - - - 0x02027F 10:826F: E8        INX ; 01
bra_8270_RTS:
C - - - - - 0x020280 10:8270: 60        RTS



tbl_8275_номер_анимации_рожи_игрока:
; bzk optimize, добавить сюда киперов (и не забыть про meon)
    .byte con_s_anim_FF_skip ; 00 игрок без рожи
    .byte con_s_anim_face_p_tsubasa_my ; 01 p_tsubasa_my
    .byte con_s_anim_face_p_misaki_my ; 02 p_misaki_my
    .byte con_s_anim_face_p_misaki_japan ; 03 p_misaki_japan
    .byte con_s_anim_face_p_hyuga_my ; 04 p_hyuga_my, p_hyuga_japan
    .byte con_s_anim_face_p_hyuga_toho ; 05 p_hyuga_toho
    .byte con_s_anim_face_p_misugi_my ; 06 p_misugi_my, p_misugi_japan
    .byte con_s_anim_face_p_misugi_musashi ; 07 p_misugi_musashi
    .byte con_s_anim_face_p_matsuyama_my ; 08 p_matsuyama_my, p_matsuyama_japan
    .byte con_s_anim_face_p_matsuyama_furano ; 09 p_matsuyama_furano
    .byte con_s_anim_face_p_ishizaki_my ; 0A p_ishizaki_my
    .byte con_s_anim_face_p_ishizaki_japan ; 0B p_ishizaki_japan
    .byte con_s_anim_face_p_soda_my ; 0C p_soda_my, p_soda_japan
    .byte con_s_anim_face_p_soda_tatsunami ; 0D p_soda_tatsunami
    .byte con_s_anim_face_p_jito_my ; 0E p_jito_my, p_jito_japan
    .byte con_s_anim_face_p_jito_kunimi ; 0F p_jito_kunimi
    .byte con_s_anim_face_p_masao_my ; 10 p_masao_my, p_masao_japan, p_kazuo_my, p_kazuo_japan
    .byte con_s_anim_face_p_masao_akita ; 11 p_masao_akita, p_kazuo_akita
    .byte con_s_anim_face_p_nitta_my ; 12 p_nitta_my
    .byte con_s_anim_face_p_nitta_japan ; 13 p_nitta_japan
    .byte con_s_anim_face_p_sawada_my ; 14 p_sawada_my
    .byte con_s_anim_face_p_sawada_toho ; 15 p_sawada_toho
    .byte con_s_anim_face_p_coimbra_brazil ; 16 p_coimbra_brazil
    .byte con_s_anim_face_p_carlos_flamengo ; 17 p_carlos_flamengo
    .byte con_s_anim_face_p_carlos_brazil ; 18 p_carlos_brazil
    .byte con_s_anim_face_p_schneider_west_germany ; 19 p_schneider_west_germany
    .byte con_s_anim_face_p_kaltz_hamburger_sv ; 1A p_kaltz_hamburger_sv
    .byte con_s_anim_face_p_schester_west_germany ; 1B p_schester_west_germany
    .byte con_s_anim_face_p_diaz_argentina ; 1C p_diaz_argentina
    .byte con_s_anim_face_p_pascal_argentina ; 1D p_pascal_argentina
    .byte con_s_anim_face_p_pierre_france ; 1E p_pierre_france
    .byte con_s_anim_face_p_napoleon_france ; 1F p_napoleon_france
    .byte con_s_anim_face_p_victorino_uruguay ; 20 p_victorino_uruguay
    .byte con_s_anim_face_p_kaltz_west_germany ; 21 p_kaltz_west_germany



ofs_015_8275_08:
; 00 = 
; 01 = 
; 02 = это кипер
C - - J - - 0x020285 10:8275: A2 02     LDX #$02
C - - - - - 0x020287 10:8277: AD 42 04  LDA ram_игрок_без_мяча
C - - - - - 0x02028A 10:827A: F0 0D     BEQ bra_8289_RTS
C - - - - - 0x02028C 10:827C: C9 0B     CMP #$0B
C - - - - - 0x02028E 10:827E: F0 09     BEQ bra_8289_RTS
C - - - - - 0x020290 10:8280: CA        DEX ; 01
C - - - - - 0x020291 10:8281: AD 3D 04  LDA ram_действие_защиты
C - - - - - 0x020294 10:8284: C9 03     CMP #$03
C - - - - - 0x020296 10:8286: F0 01     BEQ bra_8289_RTS
C - - - - - 0x020298 10:8288: CA        DEX ; 00
bra_8289_RTS:
C - - - - - 0x020299 10:8289: 60        RTS



ofs_015_828A_09_действие_атаки_на_штрафной:
; 00 = shoot
; 01 = pass
; 02 = trap
; 03 = through
C - - J - - 0x02029A 10:828A: AC 3B 04  LDY ram_действие_атаки
C - - - - - 0x02029D 10:828D: BE 91 82  LDX tbl_8291,Y
C - - - - - 0x0202A0 10:8290: 60        RTS



tbl_8291:
    .byte $00   ; 00 shoot
    .byte $01   ; 01 pass
    .byte $FF   ; 02 unused
    .byte $FF   ; 03 unused
    .byte $02   ; 04 trap
    .byte $03   ; 05 through



ofs_015_829F_0C_обычный_или_спешал:
; 00 = 
; 01 = 
C - - J - - 0x0202AF 10:829F: A2 00     LDX #$00
C - - - - - 0x0202B1 10:82A1: AD 3B 04  LDA ram_действие_атаки
C - - - - - 0x0202B4 10:82A4: D0 0B     BNE bra_82B8_if_not_удар
C - - - - - 0x0202B6 10:82A6: AD 3C 04  LDA ram_подтип_действия_атаки
C - - - - - 0x0202B9 10:82A9: 29 7F     AND #$7F
C - - - - - 0x0202BB 10:82AB: C9 03     CMP #$03
C - - - - - 0x0202BD 10:82AD: 90 0A     BCC bra_82B9_RTS        ; это не спешал
C - - - - - 0x0202BF 10:82AF: B0 07     BCS bra_82B8_if_спешал    ; jmp
bra_82B8_if_not_удар:
; bzk optimize, хз зачем эта дальнейшая проверка,
; разве можно забить не ударом, но каким-то другим спешалом?
C - - - - - 0x0202C1 10:82B1: AD 3C 04  LDA ram_подтип_действия_атаки
; A = 00 01 02 03 04 80 
C - - - - - 0x0202C4 10:82B4: 29 7F     AND #$7F
C - - - - - 0x0202C6 10:82B6: F0 01     BEQ bra_82B9_RTS
bra_82B8_if_спешал:
C - - - - - 0x0202C8 10:82B8: E8        INX ; 01
bra_82B9_RTS:
C - - - - - 0x0202C9 10:82B9: 60        RTS



ofs_015_82BA_0D_что_будет_после_промаха_кипера:
; 00 = гол
; 01 = штанга
; 02 = защитник спасает (его может убить)
; 03 = штанга и добивание
; 04 = защитник не спасает (его может убить)
C - - J - - 0x0202CA 10:82BA: AD 43 04  LDA ram_0443
C - - - - - 0x0202CD 10:82BD: C9 06     CMP #$06
C - - - - - 0x0202CF 10:82BF: F0 19     BEQ bra_82DA
C - - - - - 0x0202D1 10:82C1: AD 2C 06  LDA ram_062C
C - - - - - 0x0202D4 10:82C4: 10 05     BPL bra_82CB
C - - - - - 0x0202D6 10:82C6: 49 FF     EOR #$FF
C - - - - - 0x0202D8 10:82C8: 18        CLC
C - - - - - 0x0202D9 10:82C9: 69 01     ADC #$01
bra_82CB:
C - - - - - 0x0202DB 10:82CB: C9 40     CMP #$40
C - - - - - 0x0202DD 10:82CD: 90 04     BCC bra_82D3
C - - - - - 0x0202DF 10:82CF: 49 FF     EOR #$FF
C - - - - - 0x0202E1 10:82D1: 29 3F     AND #$3F
bra_82D3:
C - - - - - 0x0202E3 10:82D3: C9 20     CMP #$20
C - - - - - 0x0202E5 10:82D5: 90 03     BCC bra_82DA
C - - - - - 0x0202E7 10:82D7: EE 43 04  INC ram_0443
bra_82DA:
C - - - - - 0x0202EA 10:82DA: AD 43 04  LDA ram_0443
; * 05
C - - - - - 0x0202ED 10:82DD: 0A        ASL
C - - - - - 0x0202EE 10:82DE: 0A        ASL
C - - - - - 0x0202EF 10:82DF: 6D 43 04  ADC ram_0443
C - - - - - 0x0202F2 10:82E2: A8        TAY
C - - - - - 0x0202F3 10:82E3: A2 00     LDX #$00
C - - - - - 0x0202F5 10:82E5: AD E3 00  LDA ram_random + $02
bra_82E8_loop:
C - - - - - 0x0202F8 10:82E8: D9 08 83  CMP tbl_8308_шанс,Y
C - - - - - 0x0202FB 10:82EB: B0 06     BCS bra_82F3_больше_или_равно
C - - - - - 0x0202FD 10:82ED: F0 04     BEQ bra_82F3_больше_или_равно
C - - - - - 0x0202FF 10:82EF: E8        INX
C - - - - - 0x020300 10:82F0: C8        INY
C - - - - - 0x020301 10:82F1: D0 F5     BNE bra_82E8_loop
bra_82F3_больше_или_равно:
C - - - - - 0x020303 10:82F3: 8A        TXA
C - - - - - 0x020304 10:82F4: 48        PHA
C - - - - - 0x020305 10:82F5: 20 FB 82  JSR sub_82FB_подпрограмма
C - - - - - 0x020308 10:82F8: 68        PLA
C - - - - - 0x020309 10:82F9: AA        TAX
C - - - - - 0x02030A 10:82FA: 60        RTS



sub_82FB_подпрограмма:
C - - - - - 0x02030B 10:82FB: 20 09 C5  JSR sub_0x03CBA9_поинтеры_после_JSR
- D 0 - I - 0x02030E 10:82FE: 36 83     .word _общий_RTS
- D 0 - I - 0x020310 10:8300: 37 83     .word ofs_016_8337_01
- D 0 - I - 0x020312 10:8302: 2D 83     .word ofs_016_832D_02
- D 0 - I - 0x020314 10:8304: 40 83     .word ofs_016_8340_03
- D 0 - I - 0x020316 10:8306: 4C 83     .word ofs_016_834C_04_вычислить_игрока_без_мяча



tbl_8308_шанс:
; 00 
- D 0 - - - 0x020318 10:8308: 4D        .byte $4D   ; 00 = гол
- D 0 - - - 0x020319 10:8309: 39        .byte $39   ; 01 = штанга
- D 0 - - - 0x02031A 10:830A: 21        .byte $21   ; 02 = защитник спасает (его может убить)
- D 0 - - - 0x02031B 10:830B: 0F        .byte $0F   ; 03 = штанга и добивание
- D 0 - - - 0x02031C 10:830C: 00        .byte $00   ; 04 = защитник не спасает (его может убить)
; 01 
- D 0 - - - 0x02031D 10:830D: 81        .byte $81
- D 0 - - - 0x02031E 10:830E: 53        .byte $53
- D 0 - - - 0x02031F 10:830F: 2D        .byte $2D
- D 0 - - - 0x020320 10:8310: 19        .byte $19
- D 0 - - - 0x020321 10:8311: 00        .byte $00
; 02 
- D 0 - - - 0x020322 10:8312: 57        .byte $57
- D 0 - - - 0x020323 10:8313: 1F        .byte $1F
- D 0 - - - 0x020324 10:8314: 17        .byte $17
- D 0 - - - 0x020325 10:8315: 0D        .byte $0D
- - - - - - 0x020326 10:8316: 00        .byte $00
; 03 
- D 0 - - - 0x020327 10:8317: 64        .byte $64
- D 0 - - - 0x020328 10:8318: 1F        .byte $1F
- - - - - - 0x020329 10:8319: 17        .byte $17
- - - - - - 0x02032A 10:831A: 0D        .byte $0D
- - - - - - 0x02032B 10:831B: 00        .byte $00
; 04 
- D 0 - - - 0x02032C 10:831C: 2C        .byte $2C
- D 0 - - - 0x02032D 10:831D: 13        .byte $13
- D 0 - - - 0x02032E 10:831E: FF        .byte $FF
- D 0 - - - 0x02032F 10:831F: 0F        .byte $0F
- D 0 - - - 0x020330 10:8320: 00        .byte $00
; 05 
- D 0 - - - 0x020331 10:8321: 42        .byte $42
- D 0 - - - 0x020332 10:8322: 1E        .byte $1E
- D 0 - - - 0x020333 10:8323: FF        .byte $FF
- D 0 - - - 0x020334 10:8324: 15        .byte $15
- D 0 - - - 0x020335 10:8325: 00        .byte $00
; 06 
- D 0 - - - 0x020336 10:8326: 1F        .byte $1F
- D 0 - - - 0x020337 10:8327: 13        .byte $13
- D 0 - - - 0x020338 10:8328: FF        .byte $FF
- D 0 - - - 0x020339 10:8329: 0F        .byte $0F
- D 0 - - - 0x02033A 10:832A: 00        .byte $00
; bzk garbage?
- - - - - - 0x02033B 10:832B: 00        .byte $00
- - - - - - 0x02033C 10:832C: 00        .byte $00



ofs_016_832D_02:
C - - J - - 0x02033D 10:832D: 20 50 83  JSR sub_8350_вычислить_игрока_без_мяча
C - - - - - 0x020340 10:8330: A9 02     LDA #$02
C - - - - - 0x020342 10:8332: 8D 12 06  STA ram_результат_защитника
C - - - - - 0x020345 10:8335: 60        RTS



ofs_016_8337_01:
C - - J - - 0x020347 10:8337: A9 02     LDA #$02
C - - - - - 0x020349 10:8339: 8D 12 06  STA ram_результат_защитника
C - - - - - 0x02034C 10:833C: EE 16 06  INC ram_индекс_защитника
C - - - - - 0x02034F 10:833F: 60        RTS



ofs_016_8340_03:
C - - J - - 0x020350 10:8340: 20 50 83  JSR sub_8350_вычислить_игрока_без_мяча
C - - - - - 0x020353 10:8343: 20 5C 83  JSR sub_835C_вычислить_игрока_с_мячом
C - - - - - 0x020356 10:8346: A9 02     LDA #$02
C - - - - - 0x020358 10:8348: 8D 3C 04  STA ram_подтип_действия_атаки
C - - - - - 0x02035B 10:834B: 60        RTS



ofs_016_834C_04_вычислить_игрока_без_мяча:
sub_8350_вычислить_игрока_без_мяча:
C - - - - - 0x020360 10:8350: AD FB 05  LDA ram_команда_с_мячом
C - - - - - 0x020363 10:8353: 49 0B     EOR #$0B
C - - - - - 0x020365 10:8355: 20 48 C5  JSR sub_0x03CEA9_вычислить_управляемого
C - - - - - 0x020368 10:8358: 8D 42 04  STA ram_игрок_без_мяча
C - - - - - 0x02036B 10:835B: 60        RTS



sub_835C_вычислить_игрока_с_мячом:
C - - - - - 0x02036C 10:835C: AD FB 05  LDA ram_команда_с_мячом
C - - - - - 0x02036F 10:835F: 20 48 C5  JSR sub_0x03CEA9_вычислить_управляемого
C - - - - - 0x020372 10:8362: 8D 41 04  STA ram_игрок_с_мячом
C - - - - - 0x020375 10:8365: 60        RTS



ofs_015_8366_0E_действие_атаки_на_земле:
; 00 = shoot
; 01 = pass
; 02 = dribble
; 03 = 1-2 pass
C - - J - - 0x020376 10:8366: AE 3B 04  LDX ram_действие_атаки
C - - - - - 0x020379 10:8369: 60        RTS



ofs_015_836E_10_скорость_мяча:
; 00 = медленный (пас)
; 01 = быстрый (удар)
; 02 = смертельный (этот мяч полюбому убьет игрока)
C - - J - - 0x02037E 10:836E: A2 00     LDX #$00
C - - - - - 0x020380 10:8370: AD 3B 04  LDA ram_действие_атаки
C - - - - - 0x020383 10:8373: C9 01     CMP #$01      ; pass
C - - - - - 0x020385 10:8375: F0 04     BEQ bra_837B_RTS
C - - - - - 0x020387 10:8377: 20 77 86  JSR sub_8677_рандом_убийства_и_уменьшение_хп
C - - - - - 0x02038A 10:837A: E8        INX ; 01
bra_837B_RTS:
C - - - - - 0x02038B 10:837B: 60        RTS



ofs_015_8384_13_спасет_ли_защитник_ворота:
; 00 = защитник не появится
; 01 = защитник промахнется и гол
; 02 = защитник отобьет
C - - J - - 0x020394 10:8384: 20 8B 83  JSR sub_838B_действие_защитника_при_спасении_ворот
C - - - - - 0x020397 10:8387: AE 12 06  LDX ram_результат_защитника
C - - - - - 0x02039A 10:838A: 60        RTS



sub_838B_действие_защитника_при_спасении_ворот:
C - - - - - 0x02039B 10:838B: AD 12 06  LDA ram_результат_защитника
C - - - - - 0x02039E 10:838E: 20 09 C5  JSR sub_0x03CBA9_поинтеры_после_JSR
- D 0 - I - 0x0203A1 10:8391: 97 83     .word _общий_RTS      ; защитник не появляется
- D 0 - I - 0x0203A3 10:8393: 98 83     .word ofs_017_8398_01_02_защитник_появляется
- D 0 - I - 0x0203A5 10:8395: 98 83     .word ofs_017_8398_01_02_защитник_появляется



ofs_017_8398_01_02_защитник_появляется:
C - - J - - 0x0203A8 10:8398: AD FB 05  LDA ram_команда_с_мячом
C - - - - - 0x0203AB 10:839B: 49 0B     EOR #$0B
C - - - - - 0x0203AD 10:839D: 20 48 C5  JSR sub_0x03CEA9_вычислить_управляемого
C - - - - - 0x0203B0 10:83A0: 8D 42 04  STA ram_игрок_без_мяча
C - - - - - 0x0203B3 10:83A3: 60        RTS



ofs_015_83A8_15:
; 00 = 
; 01 = 
C - - J - - 0x0203B8 10:83A8: AC 3D 04  LDY ram_действие_защиты
C - - - - - 0x0203BB 10:83AB: BE AF 83  LDX tbl_83AF,Y
C - - - - - 0x0203BE 10:83AE: 60        RTS



tbl_83AF:
    .byte $FF   ; 00 unused
    .byte $FF   ; 01 unused
    .byte $00   ; 02 pass cut/dive?
    .byte $FF   ; 03 unused
    .byte $01   ; 04 clearing/wait?



ofs_015_83B4_16_действие_атакующего_на_своей_штрафной:
; 00 = pass
; 01 = trap
; 02 = clearing
C - - J - - 0x0203C4 10:83B4: AC 3B 04  LDY ram_действие_атаки
C - - - - - 0x0203C7 10:83B7: BE BB 83  LDX tbl_83BB,Y
C - - - - - 0x0203CA 10:83BA: 60        RTS



tbl_83BB:
    .byte $FF   ; 00 unused
    .byte $00   ; 01 pass
    .byte $FF   ; 02 unused
    .byte $FF   ; 03 unused
    .byte $01   ; 04 trap
    .byte $FF   ; 05 unused
    .byte $02   ; 06 clearing



ofs_015_83C6_18_проверка_на_jito:
; 00 = p_jito_my, p_jito_japan
; 01 = p_jito_kunimi
C - - J - - 0x0203D6 10:83C6: AD 41 04  LDA ram_игрок_с_мячом
C - - - - - 0x0203D9 10:83C9: 20 07 82  JSR sub_8207_узнать_номер_игрока___X_00
C - - - - - 0x0203DC 10:83CC: C9 1C     CMP #con_p_jito_my
C - - - - - 0x0203DE 10:83CE: F0 05     BEQ bra_83D5_RTS
C - - - - - 0x0203E0 10:83D0: C9 48     CMP #con_p_jito_japan
C - - - - - 0x0203E2 10:83D2: F0 01     BEQ bra_83D5_RTS
C - - - - - 0x0203E4 10:83D4: E8        INX ; 01
bra_83D5_RTS:
C - - - - - 0x0203E5 10:83D5: 60        RTS



ofs_015_83E4_1B_разновидность_block:
; 00 = block
; 01 = face block
; 02 = skylab block
; 03 = power block
C - - J - - 0x0203F4 10:83E4: AD 3E 04  LDA ram_подтип_действия_защиты
C - - - - - 0x0203F7 10:83E7: 29 7F     AND #$7F
C - - - - - 0x0203F9 10:83E9: AA        TAX
C - - - - - 0x0203FA 10:83EA: 60        RTS



ofs_015_83EB_1C_разновидность_dribble:
; 00 = dribble
; 01 = heel lift
; 02 = forcible dribble
; 03 = vanishing feint
; 04 = clone dribble
; 05 = high speed dribble
; 06 = hedgehog dribble
C - - J - - 0x0203FB 10:83EB: AD 3C 04  LDA ram_подтип_действия_атаки
C - - - - - 0x0203FE 10:83EE: 29 7F     AND #$7F
C - - - - - 0x020400 10:83F0: AA        TAX
; bzk optimize, JMP
C - - - - - 0x020401 10:83F1: 20 11 82  JSR sub_8211_выставить_флаг_сценария_04
C - - - - - 0x020404 10:83F4: 60        RTS



ofs_015_83F5_1D_разновидность_shoot:
; 00 = shot
; 01 = volley
; 02 = header
; 03 = drive shot
; 04 = drive overhead
; 05 = falcon shot
; 06 = falcon volley
; 07 = razor shot
; 08 = skylab hurricane
; 09 = twin shot
; 0A = skylab twin shot
; 0B = eagle shot
; 0C = tiger shot
; 0D = neo-tiger shot
; 0E = overhead
; 0F = hyper overhead
; 10 = jumping volley
; 11 = drive tiger
; 12 = cyclone
; 13 = sano combo
; 14 = banana shot
; 15 = booster shot
; 16 = mirage shot
; 17 = mach shot
; 18 = sidewinder shot
; 19 = slider shot
; 1A = cannon shot
; 1B = fire shot
; 1C = dynamite header
; 1D = cannon header
; 1E = rocket header
; 1F = rising dragon kick
; 20 = foward somersault
; 21 = slider cannon
; 22 = double eel
C - - J - - 0x020405 10:83F5: A9 01     LDA #$01
C - - - - - 0x020407 10:83F7: 20 11 82  JSR sub_8211_выставить_флаг_сценария_04
C - - - - - 0x02040A 10:83FA: AD 3C 04  LDA ram_подтип_действия_атаки
C - - - - - 0x02040D 10:83FD: 29 7F     AND #$7F
C - - - - - 0x02040F 10:83FF: AA        TAX
C - - - - - 0x020410 10:8400: 60        RTS



ofs_015_8401_1E_разновидность_pass:
; 00 = pass
; 01 = drive pass
; 02 = razor pass
; 03 = topspin pass
C - - J - - 0x020411 10:8401: AD 3C 04  LDA ram_подтип_действия_атаки
C - - - - - 0x020414 10:8404: 29 7F     AND #$7F
C - - - - - 0x020416 10:8406: AA        TAX
C - - - - - 0x020417 10:8407: 4C 11 82  JMP loc_8211_выставить_флаг_сценария_04



ofs_015_840E_20_проверка_на_wakashimazu_и_gertise:
; 00 = другой кипер
; 01 = p_wakashimazu_my, p_wakashimazu_toho, p_wakashimazu_japan
; 02 = p_gertise_brazil
C - - J - - 0x02041E 10:840E: AD FB 05  LDA ram_команда_с_мячом
C - - - - - 0x020421 10:8411: 49 0B     EOR #$0B
C - - - - - 0x020423 10:8413: 20 07 82  JSR sub_8207_узнать_номер_игрока___X_00
C - - - - - 0x020426 10:8416: A2 02     LDX #$02
C - - - - - 0x020428 10:8418: C9 74     CMP #con_p_gertise_brazil
C - - - - - 0x02042A 10:841A: F0 0E     BEQ bra_842A_RTS
C - - - - - 0x02042C 10:841C: CA        DEX ; 01
C - - - - - 0x02042D 10:841D: C9 22     CMP #con_p_wakashimazu_my
C - - - - - 0x02042F 10:841F: F0 09     BEQ bra_842A_RTS
C - - - - - 0x020431 10:8421: C9 39     CMP #con_p_wakashimazu_toho
C - - - - - 0x020433 10:8423: F0 05     BEQ bra_842A_RTS
C - - - - - 0x020435 10:8425: C9 4C     CMP #con_p_wakashimazu_japan
C - - - - - 0x020437 10:8427: F0 01     BEQ bra_842A_RTS
C - - - - - 0x020439 10:8429: CA        DEX ; 00
bra_842A_RTS:
C - - - - - 0x02043A 10:842A: 60        RTS



ofs_015_842B_21_порвана_ли_сетка:
; 00 = не порвана
; 01 = порвана
C - - J - - 0x02043B 10:842B: A2 00     LDX #$00
                                        LDA ram_сила_действия_hi
                                        BNE bra_8434
C - - - - - 0x02043D 10:842D: AD 1C 06  LDA ram_сила_действия_lo
C - - - - - 0x020440 10:8430: C9 60     CMP #$60
C - - - - - 0x020442 10:8432: 90 01     BCC bra_8435_RTS
bra_8434:
C - - - - - 0x020444 10:8434: E8        INX ; 01
bra_8435_RTS:
C - - - - - 0x020445 10:8435: 60        RTS



ofs_015_8436_22_у_чьей_команды_мяч:
; 00 = у команды слева
; 01 = у команды справа
C - - J - - 0x020446 10:8436: AE FB 05  LDX ram_команда_с_мячом
C - - - - - 0x020449 10:8439: F0 02     BEQ bra_843D_RTS    ; if комада слева
; if мяч у команды справа
C - - - - - 0x02044B 10:843B: A2 01     LDX #$01
bra_843D_RTS:   ; X = 00, bzk optimize, небезопасно
C - - - - - 0x02044D 10:843D: 60        RTS



ofs_015_843E_23_за_какую_команду_играешь:
; 00 = за sao paulo
; 01 = за nankatsu
; 02 = за japan
C - - J - - 0x02044E 10:843E: AE 2A 00  LDX ram_твоя_команда
C - - - - - 0x020451 10:8441: 60        RTS



ofs_015_8442_24_был_ли_крит:
; из-за флага сценария нельзя делать 2 отдельных проверки 24 + 2A
; 00 = крита не было либо защитник без рожи
; 01 = крит был и защитник с рожей
    LDX #$00
    BIT ram_подтип_действия_защиты
    BPL bra_8443_RTS
    LDA ram_игрок_без_мяча
    JSR sub_8207_узнать_номер_игрока___X_00
    TAY
    LDX tbl_86F4_игроки_с_рожами,Y
    BEQ bra_8443_RTS
    JSR sub_8211_выставить_флаг_сценария_04
    LDX #$01
bra_8443_RTS:
    RTS



ofs_015_844E_25_coimbra_france_уже_били_или_нет:
; 00 = удар уже бы
; 01 = удара еще не было
C - - J - - 0x02045E 10:844E: AE 47 04  LDX ram_флаг_удара_франции_коимбры
C - - - - - 0x020461 10:8451: D0 03     BNE bra_8456_RTS
; X = 00
C - - - - - 0x020463 10:8453: EE 47 04  INC ram_флаг_удара_франции_коимбры
bra_8456_RTS:   ; X = 01, bzk optimize, небезопасно
C - - - - - 0x020466 10:8456: 60        RTS



ofs_015_8457_26_проигрывает_ли_германия:
; 00 = германия не проигрывает
; 01 = германия проигрывает
C - - J - - 0x020467 10:8457: A2 00     LDX #$00
C - - - - - 0x020469 10:8459: AD 2B 00  LDA ram_команда_соперника
C - - - - - 0x02046C 10:845C: C9 22     CMP #$22          ; это не германия
C - - - - - 0x02046E 10:845E: D0 1D     BNE bra_847D_RTS
C - - - - - 0x020470 10:8460: A0 00     LDY #$00
C - - - - - 0x020472 10:8462: AD 28 00  LDA ram_голы
C - - - - - 0x020475 10:8465: 38        SEC
C - - - - - 0x020476 10:8466: ED 29 00  SBC ram_голы + $01
C - - - - - 0x020479 10:8469: 90 0F     BCC bra_847A      ; japan проигрывает
C - - - - - 0x02047B 10:846B: F0 0D     BEQ bra_847A      ; ничья
C - - - - - 0x02047D 10:846D: A0 80     LDY #$80
C - - - - - 0x02047F 10:846F: A9 CA     LDA #$CA
C - - - - - 0x020481 10:8471: 8D FE 03  STA ram_03FE
C - - - - - 0x020484 10:8474: AD FB 05  LDA ram_команда_с_мячом
C - - - - - 0x020487 10:8477: D0 01     BNE bra_847A      ; гол забили соперники
; if гол забила наша команда
C - - - - - 0x020489 10:8479: E8        INX ; 01
bra_847A:
C - - - - - 0x02048A 10:847A: 8C FD 03  STY ram_03FD
bra_847D_RTS:
C - - - - - 0x02048D 10:847D: 60        RTS



ofs_015_847С_27_атакующий_с_рожей:
; 00 = атакующий без рожи
; 01 = атакующий с рожей
    LDA ram_игрок_с_мячом
    JSR sub_8207_узнать_номер_игрока___X_00
    TAY
    LDX tbl_86F4_игроки_с_рожами,Y
    BEQ bra_84C7_RTS
    JSR sub_8211_выставить_флаг_сценария_04
    LDX #$01
bra_84C7_RTS:
    RTS



; ofs_015_847E_28_оба_игрока_с_рожами___рожа_защитника:
; ; 00 = игрок без рожи
; ; 01 = p_tsubasa_my
; ; 02 = p_misaki_my
; ; 03 = p_misaki_japan
; ; 04 = p_hyuga_my, p_hyuga_japan
; ; 05 = p_hyuga_toho
; ; 06 = p_misugi_my, p_misugi_japan
; ; 07 = p_misugi_musashi
; ; 08 = p_matsuyama_my, p_matsuyama_japan
; ; 09 = p_matsuyama_furano
; ; 0A = p_ishizaki_my
; ; 0B = p_ishizaki_japan
; ; 0C = p_soda_my, p_soda_japan
; ; 0D = p_soda_tatsunami
; ; 0E = p_jito_my, p_jito_japan
; ; 0F = p_jito_kunimi
; ; 10 = p_masao_my, p_kazuo_my, p_masao_japan, p_kazuo_japan
; ; 11 = p_masao_akita, p_kazuo_akita
; ; 12 = p_nitta_my
; ; 13 = p_nitta_japan
; ; 14 = p_sawada_my
; ; 15 = p_sawada_toho
; ; 16 = p_coimbra_brazil
; ; 17 = p_carlos_flamengo
; ; 18 = p_carlos_brazil
; ; 19 = p_schneider_west_germany
; ; 1A = p_kaltz_hamburger_sv
; ; 1B = p_schester_west_germany
; ; 1C = p_diaz_argentina
; ; 1D = p_pascal_argentina
; ; 1E = p_pierre_france
; ; 1F = p_napoleon_france
; ; 20 = p_victorino_uruguay
; ; 21 = p_kaltz_west_germany
; C - J - - - 0x02048E 10:847E: AD 42 04  LDA ram_игрок_без_мяча
; C - - - - - 0x020491 10:8481: 20 07 82  JSR sub_8207_узнать_номер_игрока___X_00
; C - - - - - 0x020494 10:8484: A8        TAY
; C - - - - - 0x020495 10:8485: BE F4 86  LDX tbl_86F4_игроки_с_рожами,Y
; C - - - - - 0x020498 10:8488: F0 0D     BEQ bra_8497_RTS
; C - - - - - 0x02049A 10:848A: AD 41 04  LDA ram_игрок_с_мячом
; C - - - - - 0x02049D 10:848D: 20 07 82  JSR sub_8207_узнать_номер_игрока___X_00
; C - - - - - 0x0204A0 10:8490: A8        TAY
; C - - - - - 0x0204A1 10:8491: BE F4 86  LDX tbl_86F4_игроки_с_рожами,Y
; bzk optimize, JMP
; C - - - - - 0x0204A4 10:8494: 20 11 82  JSR sub_8211_выставить_флаг_сценария_04
; bra_8497_RTS:
; C - - - - - 0x0204A7 10:8497: 60        RTS



; ofs_015_8498_29_оба_игрока_с_рожами___рожа_нападающего:
; ; 00 = игрок без рожи
; ; 01 = p_tsubasa_my
; ; 02 = p_misaki_my
; ; 03 = p_misaki_japan
; ; 04 = p_hyuga_my, p_hyuga_japan
; ; 05 = p_hyuga_toho
; ; 06 = p_misugi_my, p_misugi_japan
; ; 07 = p_misugi_musashi
; ; 08 = p_matsuyama_my, p_matsuyama_japan
; ; 09 = p_matsuyama_furano
; ; 0A = p_ishizaki_my
; ; 0B = p_ishizaki_japan
; ; 0C = p_soda_my, p_soda_japan
; ; 0D = p_soda_tatsunami
; ; 0E = p_jito_my, p_jito_japan
; ; 0F = p_jito_kunimi
; ; 10 = p_masao_my, p_kazuo_my, p_masao_japan, p_kazuo_japan
; ; 11 = p_masao_akita, p_kazuo_akita
; ; 12 = p_nitta_my
; ; 13 = p_nitta_japan
; ; 14 = p_sawada_my
; ; 15 = p_sawada_toho
; ; 16 = p_coimbra_brazil
; ; 17 = p_carlos_flamengo
; ; 18 = p_carlos_brazil
; ; 19 = p_schneider_west_germany
; ; 1A = p_kaltz_hamburger_sv
; ; 1B = p_schester_west_germany
; ; 1C = p_diaz_argentina
; ; 1D = p_pascal_argentina
; ; 1E = p_pierre_france
; ; 1F = p_napoleon_france
; ; 20 = p_victorino_uruguay
; ; 21 = p_kaltz_west_germany
; C - J - - - 0x0204A8 10:8498: AD 41 04  LDA ram_игрок_с_мячом
; C - - - - - 0x0204AB 10:849B: 20 07 82  JSR sub_8207_узнать_номер_игрока___X_00
; C - - - - - 0x0204AE 10:849E: A8        TAY
; C - - - - - 0x0204AF 10:849F: BE F4 86  LDX tbl_86F4_игроки_с_рожами,Y
; C - - - - - 0x0204B2 10:84A2: F0 0D     BEQ bra_84B1_RTS
; C - - - - - 0x0204B4 10:84A4: AD 42 04  LDA ram_игрок_без_мяча
; C - - - - - 0x0204B7 10:84A7: 20 07 82  JSR sub_8207_узнать_номер_игрока___X_00
; C - - - - - 0x0204BA 10:84AA: A8        TAY
; C - - - - - 0x0204BB 10:84AB: BE F4 86  LDX tbl_86F4_игроки_с_рожами,Y
; bzk optimize, JMP
; C - - - - - 0x0204BE 10:84AE: 20 11 82  JSR sub_8211_выставить_флаг_сценария_04
; bra_84B1_RTS:
; C - - - - - 0x0204C1 10:84B1: 60        RTS



ofs_015_84B2_2A_защитник_с_рожей:
; bzk optimize, я оставил эту подпрограмму, так как тут есть какая-то проверка
; на действие защитника. пока не понятно что она означает
; 00 = защитник без рожи
; 01 = защитник с рожей
C - - - - - 0x0204C9 10:84B9: AD 42 04  LDA ram_игрок_без_мяча
C - - - - - 0x0204CC 10:84BC: 20 07 82  JSR sub_8207_узнать_номер_игрока___X_00
C - - - - - 0x0204CF 10:84BF: A8        TAY
C - - - - - 0x0204D0 10:84C0: BE F4 86  LDX tbl_86F4_игроки_с_рожами,Y
                                        BEQ bra_84C6_RTS
C - - - - - 0x0204D3 10:84C3: 20 11 82  JSR sub_8211_выставить_флаг_сценария_04
                                        LDX #$01
bra_84C6_RTS:
C - - - - - 0x0204D6 10:84C6: 60        RTS



ofs_015_84C7_2B_проверка_на_100_хп:
; 00 = есть 100 хп
; 01 = меньше 100 хп
C - - J - - 0x0204D7 10:84C7: AD 41 04  LDA ram_игрок_с_мячом
C - - - - - 0x0204DA 10:84CA: AE FB 05  LDX ram_команда_с_мячом
C - - - - - 0x0204DD 10:84CD: F0 03     BEQ bra_84D2_команда_слева
; if мяч у команды справа
C - - - - - 0x0204DF 10:84CF: AD 42 04  LDA ram_игрок_без_мяча
bra_84D2_команда_слева:
C - - - - - 0x0204E2 10:84D2: 20 0C C5  JSR sub_0x03CD8C_получить_адрес_игрока
C - - - - - 0x0204E5 10:84D5: A2 00     LDX #$00
C - - - - - 0x0204E7 10:84D7: A0 01     LDY #con_plr_guts_lo
C - - - - - 0x0204E9 10:84D9: B1 34     LDA (ram_plr_data),Y    ; con_plr_guts_lo
C - - - - - 0x0204EB 10:84DB: 38        SEC
C - - - - - 0x0204EC 10:84DC: E9 64     SBC #< $0064
C - - - - - 0x0204EE 10:84DE: C8        INY ; con_plr_guts_hi
C - - - - - 0x0204EF 10:84DF: B1 34     LDA (ram_plr_data),Y    ; con_plr_guts_hi
C - - - - - 0x0204F1 10:84E1: E9 00     SBC #> $0064
C - - - - - 0x0204F3 10:84E3: B0 01     BCS bra_84E6_RTS
C - - - - - 0x0204F5 10:84E5: E8        INX ; 01
bra_84E6_RTS:
C - - - - - 0x0204F6 10:84E6: 60        RTS



ofs_015_84E7_2C_напали_ли_защитники:
; 00 = нет защитников
; 01 = есть защитники
C - - J - - 0x0204F7 10:84E7: AE 00 06  LDX ram_колво_защитников
C - - - - - 0x0204FA 10:84EA: F0 02     BEQ bra_84EE_RTS
C - - - - - 0x0204FC 10:84EC: A2 01     LDX #$01
bra_84EE_RTS:   ; X = 00, bzk optimize, небезопасно
C - - - - - 0x0204FE 10:84EE: 60        RTS



ofs_015_84EF_2D_забил_ли_jito_гол_с_сано:
; 00 = гол забит другим ударом
; 01 = гол забили jito с сано
C - - J - - 0x0204FF 10:84EF: A2 00     LDX #$00
C - - - - - 0x020501 10:84F1: AD 3C 04  LDA ram_подтип_действия_атаки
C - - - - - 0x020504 10:84F4: 29 7F     AND #$7F
C - - - - - 0x020506 10:84F6: C9 13     CMP #$13      ; sano combo
C - - - - - 0x020508 10:84F8: D0 01     BNE bra_84FB_RTS
C - - - - - 0x02050A 10:84FA: E8        INX ; 01
bra_84FB_RTS:
C - - - - - 0x02050B 10:84FB: 60        RTS



ofs_015_84FC_2E_наебан_ли_кипер:
; 00 = кипер не наебан
; 01 = кипер наебан
C - - J - - 0x02050C 10:84FC: 20 51 C5  JSR sub_0x03CD87_получить_адрес_кипера_команды_без_мяча
C - - - - - 0x02050F 10:84FF: A2 00     LDX #$00
C - - - - - 0x020511 10:8501: A0 07     LDY #con_gk_величина_наебки
C - - - - - 0x020513 10:8503: B1 34     LDA (ram_plr_data),Y    ; con_gk_величина_наебки
C - - - - - 0x020515 10:8505: C9 18     CMP #$18
C - - - - - 0x020517 10:8507: 90 01     BCC bra_850A_RTS
C - - - - - 0x020519 10:8509: E8        INX ; 01
bra_850A_RTS:
C - - - - - 0x02051A 10:850A: 60        RTS



ofs_015_850B_2F_киперы_с_критами:
; 00 = кипер без крита
; 01 = p_morisaki_my
; 02 = p_wakabayashi_my, p_wakabayashi_hamburger_sv
C - - J - - 0x02051B 10:850B: A2 00     LDX #$00
C - - - - - 0x02051D 10:850D: 2C 3E 04  BIT ram_подтип_действия_защиты
C - - - - - 0x020520 10:8510: 10 14     BPL bra_8526_RTS
C - - - - - 0x020522 10:8512: AD 42 04  LDA ram_игрок_без_мяча
C - - - - - 0x020525 10:8515: 20 07 82  JSR sub_8207_узнать_номер_игрока___X_00
C - - - - - 0x020528 10:8518: C9 0F     CMP #con_p_morisaki_my
C - - - - - 0x02052A 10:851A: F0 09     BEQ bra_8525
C - - - - - 0x02052C 10:851C: C9 21     CMP #con_p_wakabayashi_my
C - - - - - 0x02052E 10:851E: F0 04     BEQ bra_8524
C - - - - - 0x020530 10:8520: C9 40     CMP #con_p_wakabayashi_hamburger_sv
C - - - - - 0x020532 10:8522: D0 02     BNE bra_8526_RTS
bra_8524:
C - - - - - 0x020534 10:8524: E8        INX ; 01
bra_8525:
C - - - - - 0x020535 10:8525: E8        INX ; 01/02
bra_8526_RTS:
C - - - - - 0x020536 10:8526: 60        RTS



ofs_015_8527_30_tsubasa_diaz:
; проверяется для drive shot
; 00 = это не diaz и не tsubasa
; 01 = p_tsubasa_my
; 02 = p_diaz_argentina
C - - J - - 0x020537 10:8527: AD 41 04  LDA ram_игрок_с_мячом
C - - - - - 0x02053A 10:852A: 20 07 82  JSR sub_8207_узнать_номер_игрока___X_00
C - - - - - 0x02053D 10:852D: A2 02     LDX #$02
C - - - - - 0x02053F 10:852F: C9 60     CMP #con_p_diaz_argentina
C - - - - - 0x020541 10:8531: F0 06     BEQ bra_8539_RTS
C - - - - - 0x020543 10:8533: CA        DEX ; 01
C - - - - - 0x020544 10:8534: C9 01     CMP #con_p_tsubasa_my
C - - - - - 0x020546 10:8536: F0 01     BEQ bra_8539_RTS
C - - - - - 0x020548 10:8538: CA        DEX ; 00
bra_8539_RTS:
C - - - - - 0x020549 10:8539: 60        RTS



ofs_015_853A_31_nitta:
; 00 = p_nitta_my
; 01 = p_nitta_japan
C - - J - - 0x02054A 10:853A: AD 41 04  LDA ram_игрок_с_мячом
C - - - - - 0x02054D 10:853D: 20 07 82  JSR sub_8207_узнать_номер_игрока___X_00
C - - - - - 0x020550 10:8540: C9 15     CMP #con_p_nitta_my
C - - - - - 0x020552 10:8542: F0 01     BEQ bra_8545_RTS
C - - - - - 0x020554 10:8544: E8        INX ; 01
bra_8545_RTS:
C - - - - - 0x020555 10:8545: 60        RTS



ofs_015_8546_32_soda:
; 00 = p_soda_my, p_soda_japan
; 01 = p_soda_tatsunami
C - - J - - 0x020556 10:8546: AD 41 04  LDA ram_игрок_с_мячом
C - - - - - 0x020559 10:8549: 20 07 82  JSR sub_8207_узнать_номер_игрока___X_00
C - - - - - 0x02055C 10:854C: C9 1B     CMP #con_p_soda_my
C - - - - - 0x02055E 10:854E: F0 05     BEQ bra_8555_RTS
C - - - - - 0x020560 10:8550: C9 4A     CMP #con_p_soda_japan
C - - - - - 0x020562 10:8552: F0 01     BEQ bra_8555_RTS
C - - - - - 0x020564 10:8554: E8        INX ; 01
bra_8555_RTS:
C - - - - - 0x020565 10:8555: 60        RTS



ofs_015_8556_33_игроки_с_защитным_спешалом:
; 00 = игрок без защитного спешала
; 01 = p_masao_my, p_masao_japan, p_kazuo_my, p_kazuo_japan
; 02 = p_masao_akita, p_kazuo_akita
; 03 = p_soda_my, p_soda_japan
; 04 = p_soda_tatsunami
; 05 = p_jito_my, p_jito_japan
; 06 = p_jito_kunimi
; 07 = p_dirceu_santos
; 08 = p_dirceu_brazil
; 09 = p_robson_england
; 0A = p_libuta_netherlands
; 0B = p_galvan_argentina
; 0C = p_hyuga_my, p_hyuga_japan
; 0D = p_hyuga_toho
; 0E = p_ishizaki_my
; 0F = p_ishizaki_japan
C - - J - - 0x020566 10:8556: AD 3E 04  LDA ram_подтип_действия_защиты
C - - - - - 0x020569 10:8559: 29 7F     AND #$7F
C - - - - - 0x02056B 10:855B: AA        TAX
C - - - - - 0x02056C 10:855C: F0 0D     BEQ bra_856B_RTS
C - - - - - 0x02056E 10:855E: AD 42 04  LDA ram_игрок_без_мяча
C - - - - - 0x020571 10:8561: 20 07 82  JSR sub_8207_узнать_номер_игрока___X_00
C - - - - - 0x020574 10:8564: A8        TAY
C - - - - - 0x020575 10:8565: BE 6A 87  LDX tbl_876A_игроки_с_защитным_спешалом,Y
; bzk optimize, JMP
C - - - - - 0x020578 10:8568: 20 11 82  JSR sub_8211_выставить_флаг_сценария_04
bra_856B_RTS:
C - - - - - 0x02057B 10:856B: 60        RTS



ofs_015_856C_34_узнать_высоту_мяча:
; 00 = мяч у атакующего на земле
; 01 = летит низкий мяч
; 02 = летит высокий мяч
C - - J - - 0x02057C 10:856C: AE 4E 04  LDX ram_высота_мяча
C - - - - - 0x02057F 10:856F: 60        RTS



ofs_015_8570_35_действие_защитника_на_своей_штрафной:
; 00 = pass cut
; 01 = interfere
; 02 = mark
C - - J - - 0x020580 10:8570: AD 3D 04  LDA ram_действие_защиты
C - - - - - 0x020583 10:8573: 29 0F     AND #$0F
C - - - - - 0x020585 10:8575: A8        TAY
C - - - - - 0x020586 10:8576: BE 7A 85  LDX tbl_857A,Y
C - - - - - 0x020589 10:8579: 60        RTS



tbl_857A:
    .byte $FF   ; 00 unused
    .byte $FF   ; 01 unused
    .byte $00   ; 02 pass cut
    .byte $01   ; 03 interfere
    .byte $FF   ; 04 unused
    .byte $02   ; 05 mark



ofs_015_8580_36_разновидность_catch:
; 00 = catch
; 01 = rolling save
; 02 = clone save
; 03 = dark illusion
C - - J - - 0x020590 10:8580: AD 3E 04  LDA ram_подтип_действия_защиты
C - - - - - 0x020593 10:8583: 29 7F     AND #$7F
C - - - - - 0x020595 10:8585: AA        TAX
C - - - - - 0x020596 10:8586: 60        RTS



ofs_015_8587_37_защитный_спешал_или_нет:
; 00 = не спешал
; 01 = спешал
C - - J - - 0x020597 10:8587: AD 3E 04  LDA ram_подтип_действия_защиты
C - - - - - 0x02059A 10:858A: 29 7F     AND #$7F
C - - - - - 0x02059C 10:858C: AA        TAX
C - - - - - 0x02059D 10:858D: F0 02     BEQ bra_8591_RTS
C - - - - - 0x02059F 10:858F: A2 01     LDX #$01
bra_8591_RTS:   ; X = 00, bzk optimize, небезопасно
C - - - - - 0x0205A1 10:8591: 60        RTS



ofs_015_8592_38_hyuga:
; 00 = p_hyuga_my, p_hyuga_japan
; 01 = p_hyuga_toho
C - - J - - 0x0205A2 10:8592: AD 41 04  LDA ram_игрок_с_мячом
C - - - - - 0x0205A5 10:8595: 20 07 82  JSR sub_8207_узнать_номер_игрока___X_00
C - - - - - 0x0205A8 10:8598: C9 1A     CMP #con_p_hyuga_my
C - - - - - 0x0205AA 10:859A: F0 05     BEQ bra_85A1_RTS
C - - - - - 0x0205AC 10:859C: C9 41     CMP #con_p_hyuga_japan
C - - - - - 0x0205AE 10:859E: F0 01     BEQ bra_85A1_RTS
C - - - - - 0x0205B0 10:85A0: E8        INX ; 01
bra_85A1_RTS:
C - - - - - 0x0205B1 10:85A1: 60        RTS



ofs_015_85A2_39_matsuyama:
; 00 = p_matsuyama_my, p_matsuyama_japan
; 01 = p_matsuyama_furano
C - - J - - 0x0205B2 10:85A2: AD 41 04  LDA ram_игрок_с_мячом
C - - - - - 0x0205B5 10:85A5: 20 07 82  JSR sub_8207_узнать_номер_игрока___X_00
C - - - - - 0x0205B8 10:85A8: C9 1D     CMP #con_p_matsuyama_my
C - - - - - 0x0205BA 10:85AA: F0 05     BEQ bra_85B1_RTS
C - - - - - 0x0205BC 10:85AC: C9 4B     CMP #con_p_matsuyama_japan
C - - - - - 0x0205BE 10:85AE: F0 01     BEQ bra_85B1_RTS
C - - - - - 0x0205C0 10:85B0: E8        INX ; 01
bra_85B1_RTS:
C - - - - - 0x0205C1 10:85B1: 60        RTS



ofs_015_85B2_3A_kaltz:
; 00 = p_kaltz_hamburger_sv
; 01 = p_kaltz_west_germany
C - - J - - 0x0205C2 10:85B2: AD 41 04  LDA ram_игрок_с_мячом
C - - - - - 0x0205C5 10:85B5: 20 07 82  JSR sub_8207_узнать_номер_игрока___X_00
C - - - - - 0x0205C8 10:85B8: C9 3E     CMP #con_p_kaltz_hamburger_sv
C - - - - - 0x0205CA 10:85BA: F0 01     BEQ bra_85BD_RTS
C - - - - - 0x0205CC 10:85BC: E8        INX ; 01
bra_85BD_RTS:
C - - - - - 0x0205CD 10:85BD: 60        RTS



ofs_015_85BE_3B_carlos:
; 00 = p_carlos_flamengo
; 01 = p_carlos_brazil
C - - J - - 0x0205CE 10:85BE: AD 41 04  LDA ram_игрок_с_мячом
C - - - - - 0x0205D1 10:85C1: 20 07 82  JSR sub_8207_узнать_номер_игрока___X_00
C - - - - - 0x0205D4 10:85C4: C9 2B     CMP #con_p_carlos_flamengo
C - - - - - 0x0205D6 10:85C6: F0 01     BEQ bra_85C9_RTS
C - - - - - 0x0205D8 10:85C8: E8        INX ; 01
bra_85C9_RTS:
C - - - - - 0x0205D9 10:85C9: 60        RTS



ofs_015_85CA_3C_misugi:
; 00 = p_misugi_my, p_misugi_japan
; 01 = p_misugi_musashi
C - - J - - 0x0205DA 10:85CA: AD 41 04  LDA ram_игрок_с_мячом
C - - - - - 0x0205DD 10:85CD: 20 07 82  JSR sub_8207_узнать_номер_игрока___X_00
C - - - - - 0x0205E0 10:85D0: C9 20     CMP #con_p_misugi_my
C - - - - - 0x0205E2 10:85D2: F0 05     BEQ bra_85D9_RTS
C - - - - - 0x0205E4 10:85D4: C9 45     CMP #con_p_misugi_japan
C - - - - - 0x0205E6 10:85D6: F0 01     BEQ bra_85D9_RTS
C - - - - - 0x0205E8 10:85D8: E8        INX ; 01
bra_85D9_RTS:
C - - - - - 0x0205E9 10:85D9: 60        RTS



ofs_015_85DA_3D_misaki:
; 00 = p_misaki_my
; 01 = p_misaki_japan
C - - J - - 0x0205EA 10:85DA: AD 41 04  LDA ram_игрок_с_мячом
C - - - - - 0x0205ED 10:85DD: 20 07 82  JSR sub_8207_узнать_номер_игрока___X_00
C - - - - - 0x0205F0 10:85E0: C9 11     CMP #con_p_misaki_my
C - - - - - 0x0205F2 10:85E2: F0 01     BEQ bra_85E5_RTS
- - - - - - 0x0205F4 10:85E4: E8        INX ; 01
bra_85E5_RTS:
C - - - - - 0x0205F5 10:85E5: 60        RTS



ofs_015_85E6_3E_полет_мяча_и_кипера_в_пк:
; 00 = мяч влево, кипер влево
; 01 = мяч влево, кипер центр
; 02 = мяч влево, кипер вправо
; 03 = мяч центр, кипер влево
; 04 = мяч центр, кипер центр
; 05 = мяч центр, кипер вправо
; 06 = мяч вправо, кипер влево
; 07 = мяч вправо, кипер центр
; 08 = мяч вправо, кипер вправо
C - - J - - 0x0205F6 10:85E6: AD 3B 04  LDA ram_действие_атаки
C - - - - - 0x0205F9 10:85E9: 38        SEC
C - - - - - 0x0205FA 10:85EA: E9 07     SBC #$07
C - - - - - 0x0205FC 10:85EC: 85 3B     STA ram_003B_temp
C - - - - - 0x0205FE 10:85EE: 0A        ASL
C - - - - - 0x0205FF 10:85EF: 65 3B     ADC ram_003B_temp
C - - - - - 0x020601 10:85F1: 85 3B     STA ram_003B_temp
C - - - - - 0x020603 10:85F3: AD 3D 04  LDA ram_действие_защиты
C - - - - - 0x020606 10:85F6: 38        SEC
C - - - - - 0x020607 10:85F7: E9 07     SBC #$07
C - - - - - 0x020609 10:85F9: 18        CLC
C - - - - - 0x02060A 10:85FA: 65 3B     ADC ram_003B_temp
C - - - - - 0x02060C 10:85FC: AA        TAX
C - - - - - 0x02060D 10:85FD: 60        RTS



ofs_015_8602_40:
; 00 = игрок без рожи
; 01 = p_tsubasa_my
; 02 = p_misaki_my
; 03 = p_misaki_japan
; 04 = p_hyuga_my, p_hyuga_japan
; 05 = p_hyuga_toho
; 06 = p_misugi_my, p_misugi_japan
; 07 = p_misugi_musashi
; 08 = p_matsuyama_my, p_matsuyama_japan
; 09 = p_matsuyama_furano
; 0A = p_ishizaki_my
; 0B = p_ishizaki_japan
; 0C = p_soda_my, p_soda_japan
; 0D = p_soda_tatsunami
; 0E = p_jito_my, p_jito_japan
; 0F = p_jito_kunimi
; 10 = p_masao_my, p_kazuo_my, p_masao_japan, p_kazuo_japan
; 11 = p_masao_akita, p_kazuo_akita
; 12 = p_nitta_my
; 13 = p_nitta_japan
; 14 = p_sawada_my
; 15 = p_sawada_toho
; 16 = p_coimbra_brazil
; 17 = p_carlos_flamengo
; 18 = p_carlos_brazil
; 19 = p_schneider_west_germany
; 1A = p_kaltz_hamburger_sv
; 1B = p_schester_west_germany
; 1C = p_diaz_argentina
; 1D = p_pascal_argentina
; 1E = p_pierre_france
; 1F = p_napoleon_france
; 20 = p_victorino_uruguay
; 21 = p_kaltz_west_germany
C - - J - - 0x020612 10:8602: AD 41 04  LDA ram_игрок_с_мячом
C - - - - - 0x020615 10:8605: 20 07 82  JSR sub_8207_узнать_номер_игрока___X_00
C - - - - - 0x020618 10:8608: A8        TAY
C - - - - - 0x020619 10:8609: BE F4 86  LDX tbl_86F4_игроки_с_рожами,Y
; bzk optimize, JMP
C - - - - - 0x02061C 10:860C: 20 11 82  JSR sub_8211_выставить_флаг_сценария_04
C - - - - - 0x02061F 10:860F: 60        RTS



ofs_015_8610_41_рожа_кипера:
; 00 = кипер без рожи
; 01 = p_renato_my
; 02 = p_morisaki_my
; 03 = p_wakabayashi_my
; 04 = p_wakashimazu_my
C - - J - - 0x020620 10:8610: AD FB 05  LDA ram_команда_с_мячом
C - - - - - 0x020623 10:8613: 49 0B     EOR #$0B
C - - - - - 0x020625 10:8615: 20 07 82  JSR sub_8207_узнать_номер_игрока___X_00
C - - - - - 0x020628 10:8618: A2 04     LDX #$04
bra_861A_loop_поиска_кипера:
C - - - - - 0x02062A 10:861A: DD 22 86  CMP tbl_8623_наши_киперы - $01,X
C - - - - - 0x02062D 10:861D: F0 03     BEQ bra_8622_RTS
C - - - - - 0x02062F 10:861F: CA        DEX
C - - - - - 0x020630 10:8620: D0 F8     BNE bra_861A_loop_поиска_кипера
bra_8622_RTS:
C - - - - - 0x020632 10:8622: 60        RTS



tbl_8623_наши_киперы:
    .byte con_p_renato_my               ; 01
    .byte con_p_morisaki_my             ; 02
    .byte con_p_wakabayashi_my          ; 03
    .byte con_p_wakashimazu_my          ; 04



ofs_015_8627_42_2_варианта_рандома:
; 00 = рандом 1
; 01 = рандом 2
C - - J - - 0x020637 10:8627: AD E2 00  LDA ram_random + $01
C - - - - - 0x02063A 10:862A: 29 01     AND #$01
C - - - - - 0x02063C 10:862C: AA        TAX
C - - - - - 0x02063D 10:862D: 60        RTS



ofs_015_862E_43_действие_атакующего_на_своей_штрафной:
; 00 = pass
; 01 = clearing
; 02 = through
C - - J - - 0x02063E 10:862E: AC 3D 04  LDY ram_действие_защиты
C - - - - - 0x020641 10:8631: BE 35 86  LDX tbl_8635,Y
C - - - - - 0x020644 10:8634: 60        RTS



tbl_8635:
    .byte $FF   ; 00 unused
    .byte $FF   ; 01 unused
    .byte $00   ; 02 pass
    .byte $FF   ; 03 unused
    .byte $01   ; 04 clearing
    .byte $02   ; 05 through



ofs_015_863B_44_делает_ли_кипер_dive:
; 00 = кипер делает dive
; 01 = кипер ждет в воротах
C - - J - - 0x02064B 10:863B: AD 3D 04  LDA ram_действие_защиты
C - - - - - 0x02064E 10:863E: 29 0F     AND #$0F
C - - - - - 0x020650 10:8640: A8        TAY
C - - - - - 0x020651 10:8641: BE 45 86  LDX tbl_8645,Y
C - - - - - 0x020654 10:8644: 60        RTS



tbl_8645:
    .byte $FF   ; 00 unused
    .byte $FF   ; 01 unused
    .byte $FF   ; 02 unused
    .byte $00   ; 03 dive
    .byte $01   ; 04 wait



ofs_015_864A_45_выживет_ли_кипер_после_punch:
; только для киперов
; 00 = выживет
; 01 = убьется
C - - J - - 0x02065A 10:864A: A2 00     LDX #$00
C - - - - - 0x02065C 10:864C: AD 12 06  LDA ram_результат_защитника
C - - - - - 0x02065F 10:864F: C9 03     CMP #$03
C - - - - - 0x020661 10:8651: B0 23     BCS bra_8676_RTS
C - - - - - 0x020663 10:8653: AD 44 04  LDA ram_спешал_атакующего
C - - - - - 0x020666 10:8656: 20 38 81  JSR sub_8138_рандом_убийства_игрока___X_00
C - - - - - 0x020669 10:8659: C9 80     CMP #$80
C - - - - - 0x02066B 10:865B: 90 19     BCC bra_8676_RTS
C - - - - - 0x02066D 10:865D: AD FB 05  LDA ram_команда_с_мячом
C - - - - - 0x020670 10:8660: 49 0B     EOR #$0B
C - - - - - 0x020672 10:8662: 20 0C C5  JSR sub_0x03CD8C_получить_адрес_игрока
; судя по новому логу, только для кипера соперника?
C - - - - - 0x020675 10:8665: A0 05     LDY #con_gk_таймер_наебки
C - - - - - 0x020677 10:8667: B1 34     LDA (ram_plr_data),Y    ; con_gk_таймер_наебки
; bzk optimize, нахрена складывать с 00?
C - - - - - 0x020679 10:8669: 18        CLC
C - - - - - 0x02067A 10:866A: 69 00     ADC #$00
C - - - - - 0x02067C 10:866C: C9 80     CMP #$80
C - - - - - 0x02067E 10:866E: 90 02     BCC bra_8672_not_overflow
- - - - - - 0x020680 10:8670: A9 7F     LDA #$7F
bra_8672_not_overflow:
; судя по новому логу, только для кипера соперника?
C - - - - - 0x020682 10:8672: 91 34     STA (ram_plr_data),Y    ; con_gk_таймер_наебки
C - - - - - 0x020684 10:8674: A2 01     LDX #$01
bra_8676_RTS:
C - - - - - 0x020686 10:8676: 60        RTS



ofs_015_8677_46_попытка_убийства_защитника:
sub_8677_рандом_убийства_и_уменьшение_хп:
; 00 = ?
; 01 = ?
C - - J - - 0x020687 10:8677: A2 00     LDX #$00      ; bzk optimize, можно не загружать X, раз он уже есть в подпрограмме
C - - - - - 0x020689 10:8679: AD 44 04  LDA ram_спешал_атакующего
C - - - - - 0x02068C 10:867C: 20 38 81  JSR sub_8138_рандом_убийства_игрока___X_00
C - - - - - 0x02068F 10:867F: C9 80     CMP #$80
C - - - - - 0x020691 10:8681: 90 06     BCC bra_8689_RTS
C - - - - - 0x020693 10:8683: AD 42 04  LDA ram_игрок_без_мяча
; bzk optimize, JMP
C - - - - - 0x020696 10:8686: 20 50 81  JSR sub_8150_отнять_хп_за_смерть_игрока___X_01
bra_8689_RTS:
C - - - - - 0x020699 10:8689: 60        RTS



ofs_015_868A_47_кто_делает_силовой_дриблинг:
; 00 = hyuga из японии
; 01 = hyuga из тохо
; 02 = jito из японии
; 03 = jito из куними
; 04 = napoleon
; 05 = игрок без рожи
C - - J - - 0x02069A 10:868A: AD 41 04  LDA ram_игрок_с_мячом
C - - - - - 0x02069D 10:868D: 20 07 82  JSR sub_8207_узнать_номер_игрока___X_00
C - - - - - 0x0206A0 10:8690: A0 00     LDY #$00
bra_8692_loop:
C - - - - - 0x0206A2 10:8692: D9 A6 86  CMP tbl_86A6_игрок,Y
C - - - - - 0x0206A5 10:8695: F0 06     BEQ bra_869D
C - - - - - 0x0206A7 10:8697: C8        INY
C - - - - - 0x0206A8 10:8698: C8        INY
C - - - - - 0x0206A9 10:8699: C0 0E     CPY #$0E
C - - - - - 0x0206AB 10:869B: D0 F5     BNE bra_8692_loop
bra_869D:
C - - - - - 0x0206AD 10:869D: BE A7 86  LDX tbl_86A6_индекс_для_bra + $01,Y
C - - - - - 0x0206B0 10:86A0: A9 01     LDA #$01
; bzk optimize, JMP
C - - - - - 0x0206B2 10:86A2: 20 11 82  JSR sub_8211_выставить_флаг_сценария_04
C - - - - - 0x0206B5 10:86A5: 60        RTS



tbl_86A6_игрок:
tbl_86A6_индекс_для_bra:
    .byte con_p_hyuga_my
    .byte $00       ; X     

    .byte con_p_hyuga_japan
    .byte $00       ; X

    .byte con_p_hyuga_toho
    .byte $01       ; X

    .byte con_p_jito_my
    .byte $02       ; X

    .byte con_p_jito_japan
    .byte $02       ; X

    .byte con_p_jito_kunimi
    .byte $03       ; X

    .byte con_p_napoleon_france
    .byte $04       ; X

    .byte $00       ; игрок без рожи, unused так как не читается в цикле
    .byte $05       ; X



ofs_015_86B6_48_тип_удара_на_штрафной:
; 00 = skylab hurricane
; 01 = skylab twin shot
; 02 = jumping volley
; 03 = rising dragon kick
; 04 = other shot
C - - J - - 0x0206C6 10:86B6: A2 00     LDX #$00
C - - - - - 0x0206C8 10:86B8: AD 3C 04  LDA ram_подтип_действия_атаки
C - - - - - 0x0206CB 10:86BB: 29 7F     AND #$7F
bra_86BD_loop:
C - - - - - 0x0206CD 10:86BD: DD C8 86  CMP tbl_86C8,X
C - - - - - 0x0206D0 10:86C0: F0 05     BEQ bra_86C7_RTS
C - - - - - 0x0206D2 10:86C2: E8        INX
C - - - - - 0x0206D3 10:86C3: E0 04     CPX #$04
C - - - - - 0x0206D5 10:86C5: D0 F6     BNE bra_86BD_loop
bra_86C7_RTS:
C - - - - - 0x0206D7 10:86C7: 60        RTS



tbl_86C8:
    .byte $08 ; 00 skylab hurricane
    .byte $0A ; 01 skylab twin shot
    .byte $10 ; 02 jumping volley
    .byte $1F ; 03 rising dragon kick



ofs_015_86CC_49_спешал_перепасовка_и_twin_shot:
; 00 = p_tsubasa_my
; 01 = p_misaki_my
; 02 = p_hyuga_my
; 03 = p_hyuga_japan
; 04 = p_hyuga_toho
; 05 = p_sawada_my
; 06 = p_sawada_toho
; 07 = p_masao_my
; 08 = p_kazuo_my
; 09 = p_masao_japan
; 0A = p_kazuo_japan
; 0B = p_masao_akita
; 0C = p_kazuo_akita
; 0D = p_diaz_argentina
; 0E = p_pascal_argentina
; 0F = p_pierre_france
; 10 = p_napoleon_france
; 11 = игрок без спешал перепасовки/twin shot без рож игроков (p_sha_south_korea или p_kim_south_korea)
C - - J - - 0x0206DC 10:86CC: AD 41 04  LDA ram_игрок_с_мячом
C - - - - - 0x0206DF 10:86CF: 20 07 82  JSR sub_8207_узнать_номер_игрока___X_00
C - - - - - 0x0206E2 10:86D2: A2 00     LDX #$00
bra_86D4_loop_поиск:
C - - - - - 0x0206E4 10:86D4: DD E3 86  CMP tbl_86E3_игроки_со_спешал_перепасовкой,X
C - - - - - 0x0206E7 10:86D7: F0 05     BEQ bra_86DE_игрок_найден
C - - - - - 0x0206E9 10:86D9: E8        INX
C - - - - - 0x0206EA 10:86DA: E0 11     CPX #$11
C - - - - - 0x0206EC 10:86DC: D0 F6     BNE bra_86D4_loop_поиск
; if игрок так и не найден, возможно это south_korea
bra_86DE_игрок_найден:
C - - - - - 0x0206EE 10:86DE: E0 11     CPX #$11
C - - - - - 0x0206F0 10:86E0: 4C 11 82  JMP loc_8211_выставить_флаг_сценария_04



ofs_015_847D_4A_оба_игрока_с_рожами:
; 00 = один из игроков/оба игрока без рожи
; 01 = оба игрока с рожами
                                        LDA ram_игрок_без_мяча
                                        JSR sub_8207_узнать_номер_игрока___X_00
                                        TAY
                                        LDX tbl_86F4_игроки_с_рожами,Y
                                        BEQ bra_8498_RTS
                                        LDA ram_игрок_с_мячом
                                        JSR sub_8207_узнать_номер_игрока___X_00
                                        TAY
                                        LDX tbl_86F4_игроки_с_рожами,Y
                                        BEQ bra_8498_RTS
                                        JSR sub_8211_выставить_флаг_сценария_04
                                        LDX #$01
bra_8498_RTS:
                                        RTS



ofs_015_85FE_4B_проверка_на_защитника_misugi:
; 00 = p_misugi_my
; 01 = p_misugi_musashi, p_misugi_japan
                                        LDA ram_игрок_без_мяча
                                        JSR sub_8207_узнать_номер_игрока___X_00
                                        CMP #con_p_misugi_my
                                        BEQ bra_85FE_RTS
                                        INX ; 01
bra_85FE_RTS:
                                        RTS



tbl_86E3_игроки_со_спешал_перепасовкой:
; 0x0206F3
    .byte con_p_tsubasa_my          ; 00 
    .byte con_p_misaki_my           ; 01 
    .byte con_p_hyuga_my            ; 02 
    .byte con_p_hyuga_japan         ; 03 
    .byte con_p_hyuga_toho          ; 04 
    .byte con_p_sawada_my           ; 05 
    .byte con_p_sawada_toho         ; 06 
    .byte con_p_masao_my            ; 07 
    .byte con_p_kazuo_my            ; 08 
    .byte con_p_masao_japan         ; 09 
    .byte con_p_kazuo_japan         ; 0A 
    .byte con_p_masao_akita         ; 0B 
    .byte con_p_kazuo_akita         ; 0C 
    .byte con_p_diaz_argentina      ; 0D 
    .byte con_p_pascal_argentina    ; 0E 
    .byte con_p_pierre_france       ; 0F 
    .byte con_p_napoleon_france     ; 10 



tbl_86F4_игроки_с_рожами:
; 0x020704
    .byte $00   ; 00
    .byte $01   ; 01 p_tsubasa_my
    .byte $00   ; 02
    .byte $00   ; 03
    .byte $00   ; 04
    .byte $00   ; 05
    .byte $00   ; 06
    .byte $00   ; 07
    .byte $00   ; 08
    .byte $00   ; 09
    .byte $00   ; 0A
    .byte $00   ; 0B
    .byte $00   ; 0C
    .byte $00   ; 0D
    .byte $00   ; 0E
    .byte $00   ; 0F
    .byte $00   ; 10
    .byte $02   ; 11 p_misaki_my
    .byte $00   ; 12
    .byte $00   ; 13
    .byte $0A   ; 14 p_ishizaki_my
    .byte $12   ; 15 p_nitta_my
    .byte $00   ; 16
    .byte $10   ; 17 p_masao_my
    .byte $10   ; 18 p_kazuo_my
    .byte $00   ; 19
    .byte $04   ; 1A p_hyuga_my
    .byte $0C   ; 1B p_soda_my
    .byte $0E   ; 1C p_jito_my
    .byte $08   ; 1D p_matsuyama_my
    .byte $00   ; 1E
    .byte $14   ; 1F p_sawada_my
    .byte $06   ; 20 p_misugi_my
    .byte $00   ; 21
    .byte $00   ; 22
    .byte $00   ; 23
    .byte $00   ; 24
    .byte $00   ; 25
    .byte $00   ; 26
    .byte $00   ; 27
    .byte $00   ; 28
    .byte $00   ; 29
    .byte $00   ; 2A
    .byte $17   ; 2B p_carlos_flamengo
    .byte $00   ; 2C
    .byte $00   ; 2D
    .byte $0F   ; 2E p_jito_kunimi
    .byte $00   ; 2F
    .byte $11   ; 30 p_masao_akita
    .byte $11   ; 31 p_kazuo_akita
    .byte $0D   ; 32 p_soda_tatsunami
    .byte $00   ; 33
    .byte $07   ; 34 p_misugi_musashi
    .byte $09   ; 35 p_matsuyama_furano
    .byte $05   ; 36 p_hyuga_toho
    .byte $00   ; 37
    .byte $15   ; 38 p_sawada_toho
    .byte $00   ; 39
    .byte $00   ; 3A
    .byte $20   ; 3B p_victorino_uruguay
    .byte $00   ; 3C
    .byte $00   ; 3D
    .byte $1A   ; 3E p_kaltz_hamburger_sv
    .byte $00   ; 3F
    .byte $00   ; 40
    .byte $04   ; 41 p_hyuga_japan
    .byte $13   ; 42 p_nitta_japan
    .byte $00   ; 43
    .byte $03   ; 44 p_misaki_japan
    .byte $06   ; 45 p_misugi_japan
    .byte $10   ; 46 p_masao_japan
    .byte $10   ; 47 p_kazuo_japan
    .byte $0E   ; 48 p_jito_japan
    .byte $0B   ; 49 p_ishizaki_japan
    .byte $0C   ; 4A p_soda_japan
    .byte $08   ; 4B p_matsuyama_japan
    .byte $00   ; 4C
    .byte $00   ; 4D
    .byte $00   ; 4E
    .byte $00   ; 4F
    .byte $00   ; 50
    .byte $00   ; 51
    .byte $00   ; 52
    .byte $00   ; 53
    .byte $00   ; 54
    .byte $00   ; 55
    .byte $00   ; 56
    .byte $1F   ; 57 p_napoleon_france
    .byte $1E   ; 58 p_pierre_france
    .byte $00   ; 59
    .byte $00   ; 5A
    .byte $00   ; 5B
    .byte $00   ; 5C
    .byte $00   ; 5D
    .byte $1D   ; 5E p_pascal_argentina
    .byte $00   ; 5F
    .byte $1C   ; 60 p_diaz_argentina
    .byte $00   ; 61
    .byte $00   ; 62
    .byte $19   ; 63 p_schneider_west_germany
    .byte $00   ; 64
    .byte $21   ; 65 p_kaltz_west_germany
    .byte $00   ; 66
    .byte $1B   ; 67 p_schester_west_germany
    .byte $00   ; 68
    .byte $00   ; 69
    .byte $18   ; 6A p_carlos_brazil
    .byte $00   ; 6B
    .byte $00   ; 6C
    .byte $00   ; 6D
    .byte $00   ; 6E
    .byte $00   ; 6F
    .byte $00   ; 70
    .byte $00   ; 71
    .byte $00   ; 72
    .byte $00   ; 73
    .byte $00   ; 74
    .byte $16   ; 75 p_coimbra_brazil



tbl_876A_игроки_с_защитным_спешалом:
; 0x02077A
    .byte $00   ; 00
    .byte $00   ; 01
    .byte $00   ; 02
    .byte $00   ; 03
    .byte $00   ; 04
    .byte $00   ; 05
    .byte $00   ; 06
    .byte $00   ; 07
    .byte $00   ; 08
    .byte $00   ; 09
    .byte $00   ; 0A
    .byte $00   ; 0B
    .byte $00   ; 0C
    .byte $00   ; 0D
    .byte $00   ; 0E
    .byte $00   ; 0F
    .byte $00   ; 10
    .byte $00   ; 11
    .byte $00   ; 12
    .byte $00   ; 13
    .byte $0E   ; 14 p_ishizaki_my
    .byte $00   ; 15
    .byte $00   ; 16
    .byte $01   ; 17 p_masao_my
    .byte $01   ; 18 p_kazuo_my
    .byte $00   ; 19
    .byte $0C   ; 1A p_hyuga_my
    .byte $03   ; 1B p_soda_my
    .byte $05   ; 1C p_jito_my
    .byte $00   ; 1D
    .byte $00   ; 1E
    .byte $00   ; 1F
    .byte $00   ; 20
    .byte $00   ; 21
    .byte $00   ; 22
    .byte $00   ; 23
    .byte $00   ; 24
    .byte $00   ; 25
    .byte $00   ; 26
    .byte $00   ; 27
    .byte $00   ; 28
    .byte $00   ; 29
    .byte $07   ; 2A p_dirceu_santos
    .byte $00   ; 2B
    .byte $00   ; 2C
    .byte $00   ; 2D
    .byte $06   ; 2E p_jito_kunimi
    .byte $00   ; 2F
    .byte $02   ; 30 p_masao_akita
    .byte $02   ; 31 p_kazuo_akita
    .byte $04   ; 32 p_soda_tatsunami
    .byte $00   ; 33
    .byte $00   ; 34
    .byte $00   ; 35
    .byte $0D   ; 36 p_hyuga_toho
    .byte $00   ; 37
    .byte $00   ; 38
    .byte $00   ; 39
    .byte $00   ; 3A
    .byte $00   ; 3B
    .byte $00   ; 3C
    .byte $00   ; 3D
    .byte $00   ; 3E
    .byte $00   ; 3F
    .byte $00   ; 40
    .byte $0C   ; 41 p_hyuga_japan
    .byte $00   ; 42
    .byte $00   ; 43
    .byte $00   ; 44
    .byte $00   ; 45
    .byte $01   ; 46 p_masao_japan
    .byte $01   ; 47 p_kazuo_japan
    .byte $05   ; 48 p_jito_japan
    .byte $0F   ; 49 p_ishizaki_japan
    .byte $03   ; 4A p_soda_japan
    .byte $00   ; 4B
    .byte $00   ; 4C
    .byte $00   ; 4D
    .byte $00   ; 4E
    .byte $00   ; 4F
    .byte $00   ; 50
    .byte $00   ; 51
    .byte $00   ; 52
    .byte $00   ; 53
    .byte $09   ; 54 p_robson_england
    .byte $00   ; 55
    .byte $00   ; 56
    .byte $00   ; 57
    .byte $00   ; 58
    .byte $00   ; 59
    .byte $00   ; 5A
    .byte $00   ; 5B
    .byte $00   ; 5C
    .byte $0A   ; 5D p_libuta_netherlands
    .byte $00   ; 5E
    .byte $00   ; 5F
    .byte $00   ; 60
    .byte $00   ; 61
    .byte $0B   ; 62 p_galvan_argentina
    .byte $00   ; 63
    .byte $00   ; 64
    .byte $00   ; 65
    .byte $00   ; 66
    .byte $00   ; 67
    .byte $00   ; 68
    .byte $00   ; 69
    .byte $00   ; 6A
    .byte $00   ; 6B
    .byte $00   ; 6C
    .byte $00   ; 6D
    .byte $00   ; 6E
    .byte $00   ; 6F
    .byte $00   ; 70
    .byte $00   ; 71
    .byte $08   ; 72 p_dirceu_brazil
    .byte $00   ; 73
    .byte $00   ; 74
    .byte $00   ; 75



ofs_014_87E0_F4_mirror_on:
; без чтения следующих байтов
C - - J - - 0x0207F0 10:87E0: A9 40     LDA #$40
C - - - - - 0x0207F2 10:87E2: 8D 2A 05  STA ram_флаг_зеркала_анимации
C - - - - - 0x0207F5 10:87E5: 60        RTS



ofs_014_87E6_F5_mirror_off:
; без чтения следующих байтов
C - - J - - 0x0207F6 10:87E6: A9 00     LDA #$00
C - - - - - 0x0207F8 10:87E8: 8D 2A 05  STA ram_флаг_зеркала_анимации
C - - - - - 0x0207FB 10:87EB: 60        RTS



ofs_014_87EC_F6_mirror_toggle:
; без чтения следующих байтов
C - - J - - 0x0207FC 10:87EC: A9 40     LDA #$40
C - - - - - 0x0207FE 10:87EE: 4D 2A 05  EOR ram_флаг_зеркала_анимации
C - - - - - 0x020801 10:87F1: 8D 2A 05  STA ram_флаг_зеркала_анимации
C - - - - - 0x020804 10:87F4: 60        RTS



ofs_014_87F5_F7:
; читает 1 следующий байт, который позже будет записан в ram_0532
C - - J - - 0x020805 10:87F5: A4 3A     LDY ram_003A_temp
C - - - - - 0x020807 10:87F7: E6 3A     INC ram_003A_temp
C - - - - - 0x020809 10:87F9: B1 5D     LDA (ram_scernario_data),Y
C - - - - - 0x02080B 10:87FB: 8D 2B 05  STA ram_for_0532
C - - - - - 0x02080E 10:87FE: 60        RTS



ofs_014_87FF_F8:
; читает 1 следующий байт
C - - J - - 0x02080F 10:87FF: A4 3A     LDY ram_003A_temp
C - - - - - 0x020811 10:8801: E6 3A     INC ram_003A_temp
C - - - - - 0x020813 10:8803: B1 5D     LDA (ram_scernario_data),Y
C - - - - - 0x020815 10:8805: 8D 2C 05  STA ram_052C
C - - - - - 0x020818 10:8808: 60        RTS



ofs_014_8809_F9_soundID_delay:
; читает 2 следующих байта
; номер звука и время задержки перед воспроизведением этого звука
C - - J - - 0x020819 10:8809: A4 3A     LDY ram_003A_temp
C - - - - - 0x02081B 10:880B: B1 5D     LDA (ram_scernario_data),Y
C - - - - - 0x02081D 10:880D: 8D 30 05  STA ram_for_052F_звук_анимации
C - - - - - 0x020820 10:8810: C8        INY
C - - - - - 0x020821 10:8811: B1 5D     LDA (ram_scernario_data),Y
C - - - - - 0x020823 10:8813: 8D 31 05  STA ram_for_052E_задержка_звука_анимации
C - - - - - 0x020826 10:8816: C8        INY
C - - - - - 0x020827 10:8817: 84 3A     STY ram_003A_temp
C - - - - - 0x020829 10:8819: 60        RTS



ofs_014_881A_FA_jsr:
; читает 2 следующих байта
; прыжок с возвратом во внутренний сценарий
C - - J - - 0x02082A 10:881A: AE 22 05  LDX ram_указатель_стека_сценария
C - - - - - 0x02082D 10:881D: A5 3A     LDA ram_003A_temp
C - - - - - 0x02082F 10:881F: A8        TAY
C - - - - - 0x020830 10:8820: 18        CLC
C - - - - - 0x020831 10:8821: 69 02     ADC #< $0002
C - - - - - 0x020833 10:8823: 65 5D     ADC ram_scernario_data
C - - - - - 0x020835 10:8825: 9D 1A 05  STA ram_стек_сценария_lo,X
C - - - - - 0x020838 10:8828: A5 5E     LDA ram_scernario_data + $01
C - - - - - 0x02083A 10:882A: 69 00     ADC #> $0002
C - - - - - 0x02083C 10:882C: 9D 1B 05  STA ram_стек_сценария_hi,X
C - - - - - 0x02083F 10:882F: E8        INX
C - - - - - 0x020840 10:8830: E8        INX
C - - - - - 0x020841 10:8831: 8E 22 05  STX ram_указатель_стека_сценария
C - - - - - 0x020844 10:8834: 4C F6 80  JMP loc_80F6_подпрограмма_сценария



ofs_014_8837_FB_rts:
; возврат из sub сценария
; без чтения следующих байтов
                                        TYA
                                        PHA
                                        LDA ram_указатель_стека_сценария
                                        ASL
                                        ASL
                                        ASL
                                        TAX
                                        LDA #$00
                                        STA ram_debug_индекс_подтипов_сценария,X
                                        LDY #$0E
                                        LDA #$FF
@loop:
                                        STA ram_debug_подтип_сценария,X
                                        INX
                                        DEY
                                        BPL @loop
                                        PLA
                                        TAY
C - - J - - 0x020847 10:8837: AE 22 05  LDX ram_указатель_стека_сценария
C - - - - - 0x02084A 10:883A: CA        DEX
C - - - - - 0x02084B 10:883B: CA        DEX
C - - - - - 0x02084C 10:883C: 8E 22 05  STX ram_указатель_стека_сценария
C - - - - - 0x02084F 10:883F: 10 03     BPL bra_8844
C - - - - - 0x020851 10:8841: 4C CF 80  JMP loc_80CF_возврат_из_стека_сценария
bra_8844:
C - - - - - 0x020854 10:8844: BD 1A 05  LDA ram_стек_сценария_lo,X
C - - - - - 0x020857 10:8847: 85 5D     STA ram_scernario_data
C - - - - - 0x020859 10:8849: BD 1B 05  LDA ram_стек_сценария_hi,X
C - - - - - 0x02085C 10:884C: 85 5E     STA ram_scernario_data + $01
C - - - - - 0x02085E 10:884E: A9 00     LDA #$00
C - - - - - 0x020860 10:8850: 85 3A     STA ram_003A_temp
C - - - - - 0x020862 10:8852: 60        RTS



ofs_014_8853_FC_moving_bg:
; читает 1 следующий байт
; что-то связанное с движущимся фоном во время подката
C - - J - - 0x020863 10:8853: A4 3A     LDY ram_003A_temp
C - - - - - 0x020865 10:8855: E6 3A     INC ram_003A_temp
C - - - - - 0x020867 10:8857: B1 5D     LDA (ram_scernario_data),Y
C - - - - - 0x020869 10:8859: 8D 2D 05  STA ram_052D
C - - - - - 0x02086C 10:885C: 60        RTS



ofs_014_885D_FD_mirror_condition:
; читает 1 следующий байт
C - - J - - 0x02086D 10:885D: A4 3A     LDY ram_003A_temp
C - - - - - 0x02086F 10:885F: E6 3A     INC ram_003A_temp
C - - - - - 0x020871 10:8861: B1 5D     LDA (ram_scernario_data),Y
C - - - - - 0x020873 10:8863: 20 6A 88  JSR sub_886A_подпрограмма
C - - - - - 0x020876 10:8866: 8E 2A 05  STX ram_флаг_зеркала_анимации
C - - - - - 0x020879 10:8869: 60        RTS



sub_886A_подпрограмма:
C - - - - - 0x02087A 10:886A: 20 09 C5  JSR sub_0x03CBA9_поинтеры_после_JSR
- D 0 - I - 0x02087D 10:886D: 77 88     .word ofs_018_8877_00_координаты_игрока
- D 0 - I - 0x02087F 10:886F: AA 88     .word ofs_018_88AA_01_номер_защитника
- D 0 - I - 0x020881 10:8871: B5 88     .word ofs_018_88B5_02_команда
- D 0 - I - 0x020883 10:8873: BF 88     .word ofs_018_88BF_03_сторона_полета_мяча
- D 0 - I - 0x020885 10:8875: D9 88     .word ofs_018_88D9_04



ofs_018_8877_00_координаты_игрока:
C - - J - - 0x020887 10:8877: A9 00     LDA #$00
C - - - - - 0x020889 10:8879: 85 3B     STA ram_003B_temp
C - - - - - 0x02088B 10:887B: AD 41 04  LDA ram_игрок_с_мячом
C - - - - - 0x02088E 10:887E: 20 0C C5  JSR sub_0x03CD8C_получить_адрес_игрока
C - - - - - 0x020891 10:8881: AD 38 06  LDA ram_0638
C - - - - - 0x020894 10:8884: 20 36 C5  JSR sub_0x03CDD9_проверить_координаты_игрока
C - - - - - 0x020897 10:8887: 98        TYA
C - - - - - 0x020898 10:8888: A0 08     LDY #con_plr_pos_Y_hi
C - - - - - 0x02089A 10:888A: 38        SEC
C - - - - - 0x02089B 10:888B: F1 34     SBC (ram_plr_data),Y    ; con_plr_pos_Y_hi
C - - - - - 0x02089D 10:888D: B0 02     BCS bra_8891
C - - - - - 0x02089F 10:888F: E6 3B     INC ram_003B_temp
bra_8891:
C - - - - - 0x0208A1 10:8891: 8A        TXA
C - - - - - 0x0208A2 10:8892: A0 06     LDY #con_plr_pos_X_hi
C - - - - - 0x0208A4 10:8894: 38        SEC
C - - - - - 0x0208A5 10:8895: F1 34     SBC (ram_plr_data),Y    ; con_plr_pos_X_hi
C - - - - - 0x0208A7 10:8897: B0 04     BCS bra_889D
C - - - - - 0x0208A9 10:8899: E6 3B     INC ram_003B_temp
C - - - - - 0x0208AB 10:889B: E6 3B     INC ram_003B_temp
bra_889D:
C - - - - - 0x0208AD 10:889D: A2 40     LDX #$40
C - - - - - 0x0208AF 10:889F: A5 3B     LDA ram_003B_temp
C - - - - - 0x0208B1 10:88A1: F0 06     BEQ bra_88A9_RTS
C - - - - - 0x0208B3 10:88A3: C9 03     CMP #$03
C - - - - - 0x0208B5 10:88A5: F0 02     BEQ bra_88A9_RTS
C - - - - - 0x0208B7 10:88A7: A2 00     LDX #$00
bra_88A9_RTS:
C - - - - - 0x0208B9 10:88A9: 60        RTS



ofs_018_88AA_01_номер_защитника:
C - - J - - 0x0208BA 10:88AA: A2 00     LDX #$00
C - - - - - 0x0208BC 10:88AC: AD 16 06  LDA ram_индекс_защитника
C - - - - - 0x0208BF 10:88AF: 4A        LSR
C - - - - - 0x0208C0 10:88B0: 90 02     BCC bra_88B4_RTS
C - - - - - 0x0208C2 10:88B2: A2 40     LDX #$40
bra_88B4_RTS:
C - - - - - 0x0208C4 10:88B4: 60        RTS



ofs_018_88B5_02_команда:
C - - J - - 0x0208C5 10:88B5: A2 00     LDX #$00
C - - - - - 0x0208C7 10:88B7: AD FB 05  LDA ram_команда_с_мячом
C - - - - - 0x0208CA 10:88BA: F0 02     BEQ bra_88BE_RTS    ; if комада слева
; if мяч у команды справа
C - - - - - 0x0208CC 10:88BC: A2 40     LDX #$40
bra_88BE_RTS:
C - - - - - 0x0208CE 10:88BE: 60        RTS



ofs_018_88BF_03_сторона_полета_мяча:
C - - J - - 0x0208CF 10:88BF: AD 41 04  LDA ram_игрок_с_мячом
C - - - - - 0x0208D2 10:88C2: 20 0C C5  JSR sub_0x03CD8C_получить_адрес_игрока
C - - - - - 0x0208D5 10:88C5: A0 08     LDY #con_plr_pos_Y_hi
C - - - - - 0x0208D7 10:88C7: B1 34     LDA (ram_plr_data),Y    ; con_plr_pos_Y_hi
C - - - - - 0x0208D9 10:88C9: AE FB 05  LDX ram_команда_с_мячом
C - - - - - 0x0208DC 10:88CC: F0 02     BEQ bra_88D0_команда_слева
; if мяч у команды справа
C - - - - - 0x0208DE 10:88CE: 49 FF     EOR #$FF
bra_88D0_команда_слева:
C - - - - - 0x0208E0 10:88D0: A2 00     LDX #$00
C - - - - - 0x0208E2 10:88D2: C9 80     CMP #$80
C - - - - - 0x0208E4 10:88D4: B0 02     BCS bra_88D8_RTS
C - - - - - 0x0208E6 10:88D6: A2 40     LDX #$40
bra_88D8_RTS:
C - - - - - 0x0208E8 10:88D8: 60        RTS



ofs_018_88D9_04:
C - - J - - 0x0208E9 10:88D9: A2 00     LDX #$00
C - - - - - 0x0208EB 10:88DB: 2C 2C 06  BIT ram_062C
C - - - - - 0x0208EE 10:88DE: 10 02     BPL bra_88E2_RTS
C - - - - - 0x0208F0 10:88E0: A2 40     LDX #$40
bra_88E2_RTS:
C - - - - - 0x0208F2 10:88E2: 60        RTS



ofs_014_88E3_FE:
; без чтения следующих байтов
                                        LDA #$01
C - - - - - 0x0208F9 10:88E9: 8D 39 05  STA ram_0539
C - - - - - 0x0208FC 10:88EC: 60        RTS



ofs_014_88ED_FF_drive_overhead_tiger:
; читает 1 следующий байт
C - - J - - 0x0208FD 10:88ED: A4 3A     LDY ram_003A_temp
C - - - - - 0x0208FF 10:88EF: B1 5D     LDA (ram_scernario_data),Y
C - - - - - 0x020901 10:88F1: 20 09 C5  JSR sub_0x03CBA9_поинтеры_после_JSR
- D 0 - I - 0x020906 10:88F6: 0D 89     .word ofs_019_890D_00_drive_overhead
- D 0 - I - 0x02090A 10:88FA: 42 89     .word ofs_019_8942_01_активация_drive_tiger



ofs_019_890D_00_drive_overhead:
; X 00-03
C - - J - - 0x02091D 10:890D: AD FB 05  LDA ram_команда_с_мячом
C - - - - - 0x020920 10:8910: D0 26     BNE bra_8938    ; if комада справа
; if мяч у команды слева
C - - - - - 0x020922 10:8912: AD 2B 00  LDA ram_команда_соперника
C - - - - - 0x020925 10:8915: C9 05     CMP #$05
C - - - - - 0x020927 10:8917: D0 1F     BNE bra_8938
C - - - - - 0x020929 10:8919: AE 46 04  LDX ram_флаг_драйв_оверхеда
C - - - - - 0x02092C 10:891C: F0 1C     BEQ bra_893A
C - - - - - 0x02092E 10:891E: A2 01     LDX #$01
C - - - - - 0x020930 10:8920: AD 3C 04  LDA ram_подтип_действия_атаки
C - - - - - 0x020933 10:8923: C9 03     CMP #$03
C - - - - - 0x020935 10:8925: F0 13     BEQ bra_893A
C - - - - - 0x020937 10:8927: AE 46 04  LDX ram_флаг_драйв_оверхеда
C - - - - - 0x02093A 10:892A: E0 04     CPX #$04
C - - - - - 0x02093C 10:892C: B0 0A     BCS bra_8938
C - - - - - 0x02093E 10:892E: AD 3C 04  LDA ram_подтип_действия_атаки
C - - - - - 0x020941 10:8931: F0 05     BEQ bra_8938
C - - - - - 0x020943 10:8933: EE 46 04  INC ram_флаг_драйв_оверхеда
C - - - - - 0x020946 10:8936: D0 02     BNE bra_893A
bra_8938:
C - - - - - 0x020948 10:8938: A2 00     LDX #$00
bra_893A:
C - - - - - 0x02094A 10:893A: 4C 2F 81  JMP loc_812F_выбрать_подпрограмму



ofs_019_8942_01_активация_drive_tiger:
; X 00-01, встречается всего 1 раз
C - - J - - 0x020952 10:8942: A2 00     LDX #$00
C - - - - - 0x020954 10:8944: AD FB 05  LDA ram_команда_с_мячом
C - - - - - 0x020957 10:8947: D0 45     BNE bra_898E_RTS    ; if комада справа
; if мяч у команды слева
C - - - - - 0x020959 10:8949: A9 01     LDA #$01
bra_894B_поиск_хюги_в_команде:
C - - - - - 0x02095B 10:894B: 48        PHA
C - - - - - 0x02095C 10:894C: 20 0C C5  JSR sub_0x03CD8C_получить_адрес_игрока
C - - - - - 0x02095F 10:894F: A0 00     LDY #con_plr_id
C - - - - - 0x020961 10:8951: B1 34     LDA (ram_plr_data),Y    ; con_plr_id
C - - - - - 0x020963 10:8953: A8        TAY
C - - - - - 0x020964 10:8954: A2 00     LDX #$00
C - - - - - 0x020966 10:8956: 68        PLA
C - - - - - 0x020967 10:8957: C0 1A     CPY #con_p_hyuga_my
C - - - - - 0x020969 10:8959: F0 09     BEQ bra_8964_hyuga_найден
C - - - - - 0x02096B 10:895B: 18        CLC
C - - - - - 0x02096C 10:895C: 69 01     ADC #$01
C - - - - - 0x02096E 10:895E: C9 0B     CMP #$0B
C - - - - - 0x020970 10:8960: D0 E9     BNE bra_894B_поиск_хюги_в_команде
C - - - - - 0x020972 10:8962: F0 2A     BEQ bra_898E_RTS    ; jmp
bra_8964_hyuga_найден:
C - - - - - 0x020974 10:8964: AD 3C 04  LDA ram_подтип_действия_атаки
; проверка на то, что удар яляется спешалом, а не обычным
C - - - - - 0x020977 10:8967: C9 03     CMP #$03
C - - - - - 0x020979 10:8969: 90 23     BCC bra_898E_RTS
C - - - - - 0x02097B 10:896B: 2C 49 04  BIT ram_флаг_драйв_тигра
C - - - - - 0x02097E 10:896E: 30 1E     BMI bra_898E_RTS
C - - - - - 0x020980 10:8970: EE 49 04  INC ram_флаг_драйв_тигра
C - - - - - 0x020983 10:8973: AD 49 04  LDA ram_флаг_драйв_тигра
; нужно как минимум 2 спешала для активации
C - - - - - 0x020986 10:8976: C9 02     CMP #$02
C - - - - - 0x020988 10:8978: D0 14     BNE bra_898E_RTS
C - - - - - 0x02098A 10:897A: A9 00     LDA #$00
C - - - - - 0x02098C 10:897C: AC E2 00  LDY ram_random + $01
; шанс злого цубасы
C - - - - - 0x02098F 10:897F: C0 20     CPY #$20
C - - - - - 0x020991 10:8981: B0 08     BCS bra_898B_не_активировать_спешал
C - - - - - 0x020993 10:8983: A9 1E     LDA #$1E
C - - - - - 0x020995 10:8985: 8D 4A 04  STA ram_таймер_драйв_тигра
C - - - - - 0x020998 10:8988: A9 80     LDA #$80
C - - - - - 0x02099A 10:898A: E8        INX
bra_898B_не_активировать_спешал:
C - - - - - 0x02099B 10:898B: 8D 49 04  STA ram_флаг_драйв_тигра
bra_898E_RTS:
C - - - - - 0x02099E 10:898E: 4C 2F 81  JMP loc_812F_выбрать_подпрограмму



tbl_89BF_сценарии:
; смотреть con_s_id
- D 0 - I - 0x0209CF 10:89BF: B1 8A     .word _scenario_8AB1_00 ; 
- D 0 - I - 0x0209D1 10:89C1: F2 91     .word _scenario_91F2_01 ; 
- D 0 - I - 0x0209D3 10:89C3: FF 91     .word _scenario_91FF_02 ; 
- - - - - - 0x0209D5 10:89C5: 8E B4     .word $0000        ; 03 ; 
- D 0 - I - 0x0209D7 10:89C7: CB 9B     .word _scenario_9BCB_04 ; 
- D 0 - I - 0x0209D9 10:89C9: 59 92     .word _scenario_9259_05 ; 
- D 0 - I - 0x0209DB 10:89CB: 63 92     .word _scenario_9263_06 ; 
- D 0 - I - 0x0209DD 10:89CD: 85 92     .word _scenario_9285_07 ; 
- D 0 - I - 0x0209DF 10:89CF: 2C 93     .word _scenario_932C_08 ; 
- D 0 - I - 0x0209E1 10:89D1: 69 93     .word _scenario_9369_09 ; 
- D 0 - I - 0x0209E3 10:89D3: 11 98     .word _scenario_9811_0A_result_gk_vs_attacker ; 
- D 0 - I - 0x0209E5 10:89D5: ED 98     .word _scenario_98ED_0B ; 
- D 0 - I - 0x0209E7 10:89D7: E3 96     .word _scenario_96E3_0C ; 
- D 0 - I - 0x0209E9 10:89D9: F7 96     .word _scenario_96F7_0D ; 
- D 0 - I - 0x0209EB 10:89DB: EA 91     .word _scenario_91EA_0E ; 
- D 0 - I - 0x0209ED 10:89DD: 05 92     .word _scenario_9205_0F ; 
- D 0 - I - 0x0209EF 10:89DF: 59 92     .word _scenario_9259_10 ; 
- D 0 - I - 0x0209F1 10:89E1: 69 92     .word _scenario_9269_11 ; 
- D 0 - I - 0x0209F3 10:89E3: 7F 92     .word _scenario_927F_12 ; 
- D 0 - I - 0x0209F5 10:89E5: D3 91     .word _scenario_91D3_13 ; 
- D 0 - I - 0x0209F7 10:89E7: 82 9B     .word _scenario_9B82_14 ; 
- D 0 - I - 0x0209F9 10:89E9: 0A B8     .word _scenario_B80A_15 ; 
- D 0 - I - 0x0209FB 10:89EB: 17 B8     .word _scenario_B817_16 ; 
- D 0 - I - 0x0209FD 10:89ED: A1 B8     .word _scenario_B8A1_17 ; 
- D 0 - I - 0x0209FF 10:89EF: 3E 9E     .word _scenario_9E3E_18 ; 
- D 0 - I - 0x020A01 10:89F1: D4 BB     .word _scenario_BBD4_19_1_2_start ; 
- D 0 - I - 0x020A03 10:89F3: 6D BC     .word _scenario_BC6D_1A_1_2_return ; 
- D 0 - I - 0x020A05 10:89F5: 86 B4     .word _scenario_B486_1B_1_2_end ; 
- D 0 - I - 0x020A07 10:89F7: E3 9B     .word _scenario_9BE3_1C ; 
- D 0 - I - 0x020A09 10:89F9: EE 9C     .word _scenario_9CEE_1D ; 
- D 0 - I - 0x020A0B 10:89FB: DA B7     .word _scenario_B7DA_1E_игрок_бежит_по_полю_с_картой ; 
- D 0 - I - 0x020A0D 10:89FD: 33 B7     .word _scenario_B733_1F ; 
- D 0 - I - 0x020A0F 10:89FF: 38 B7     .word _scenario_B738_20 ; 
- D 0 - I - 0x020A11 10:8A01: 3B BA     .word _scenario_BA3B_21 ; 
- D 0 - I - 0x020A13 10:8A03: 49 B7     .word _scenario_B749_22 ; 
- D 0 - I - 0x020A15 10:8A05: 3F BB     .word _scenario_BB3F_23 ; 
- D 0 - I - 0x020A17 10:8A07: F2 9B     .word _scenario_9BF2_24 ; 
- D 0 - I - 0x020A19 10:8A09: DD 9C     .word _scenario_9CDD_25 ; 
- D 0 - I - 0x020A1B 10:8A0B: 2D 9E     .word _scenario_9E2D_26 ; 
- D 0 - I - 0x020A1D 10:8A0D: F8 9B     .word _scenario_9BF8_27 ; 
- D 0 - I - 0x020A1F 10:8A0F: CC B4     .word _scenario_B4CC_28 ; 
- D 0 - I - 0x020A21 10:8A11: FE 9B     .word _scenario_9BFE_29 ; 
- D 0 - I - 0x020A23 10:8A13: E0 B4     .word _scenario_B4E0_2A ; 
- D 0 - I - 0x020A25 10:8A15: 2C B7     .word _scenario_B72C_2B ; 
- D 0 - I - 0x020A27 10:8A17: 54 9F     .word _scenario_9F54_2C ; 
- D 0 - I - 0x020A29 10:8A19: D6 B4     .word _scenario_B4D6_2D ; 
- D 0 - I - 0x020A2B 10:8A1B: 4E B7     .word _scenario_B74E_2E ; 
- D 0 - I - 0x020A2D 10:8A1D: 73 B7     .word _scenario_B773_2F ; 
- D 0 - I - 0x020A2F 10:8A1F: 30 9C     .word _scenario_9C30_30 ; 
- D 0 - I - 0x020A31 10:8A21: 8C B7     .word _scenario_B78C_31_gk_vs_attacker ; 
- D 0 - I - 0x020A33 10:8A23: 57 9E     .word _scenario_9E57_32 ; 
- D 0 - I - 0x020A35 10:8A25: 04 9C     .word _scenario_9C04_33 ; 
- D 0 - I - 0x020A37 10:8A27: CC BB     .word _scenario_BBCC_34 ; 
- D 0 - I - 0x020A39 10:8A29: CD B7     .word _scenario_B7CD_35_wait_for_kick_off ; 
- D 0 - I - 0x020A3B 10:8A2B: E4 B7     .word _scenario_B7E4_36_kick_off ; 
- D 0 - I - 0x020A3D 10:8A2D: BF B7     .word _scenario_B7BF_37 ; 
- D 0 - I - 0x020A3F 10:8A2F: C6 B7     .word _scenario_B7C6_38 ; 
- D 0 - I - 0x020A41 10:8A31: B3 BD     .word _scenario_BDB3_39 ; 
- D 0 - I - 0x020A43 10:8A33: 7C B4     .word _scenario_B47C_3A ; 
- - - - - - 0x020A45 10:8A35: A1 BD     .word $0000        ; 3B ; 
- - - - - - 0x020A47 10:8A37: 3E 9F     .word $0000        ; 3C ; 
- D 0 - I - 0x020A49 10:8A39: BA 9F     .word _scenario_9FBA_3D ; 
- D 0 - I - 0x020A4B 10:8A3B: 0A 9C     .word _scenario_9C0A_3E ; 
- D 0 - I - 0x020A4D 10:8A3D: 54 B7     .word _scenario_B754_3F ; 
- D 0 - I - 0x020A4F 10:8A3F: 95 BD     .word _scenario_BD95_40 ; 
- D 0 - I - 0x020A51 10:8A41: 9A BD     .word _scenario_BD9A_41 ; 
- D 0 - I - 0x020A53 10:8A43: A6 BD     .word _scenario_BDA6_42 ; 
- D 0 - I - 0x020A55 10:8A45: AD BD     .word _scenario_BDAD_43 ; 
- D 0 - I - 0x020A57 10:8A47: D5 B7     .word _scenario_B7D5_44 ; 
- D 0 - I - 0x020A59 10:8A49: B8 BD     .word _scenario_BDB8_45 ; 
- D 0 - I - 0x020A5B 10:8A4B: BD BD     .word _scenario_BDBD_46 ; 
- D 0 - I - 0x020A5D 10:8A4D: 19 9C     .word _scenario_9C19_47 ; 
- - - - - - 0x020A5F 10:8A4F: 01 BE     .word $0000        ; 48 ; 
- - - - - - 0x020A61 10:8A51: 01 BE     .word $0000        ; 49 ; 
- - - - - - 0x020A63 10:8A53: 01 BE     .word $0000        ; 4A ; 
- - - - - - 0x020A65 10:8A55: 01 BE     .word $0000        ; 4B ; 
- - - - - - 0x020A67 10:8A57: 01 BE     .word $0000        ; 4C ; 
- - - - - - 0x020A69 10:8A59: 01 BE     .word $0000        ; 4D ; 
- - - - - - 0x020A6B 10:8A5B: 01 BE     .word $0000        ; 4E ; 
- - - - - - 0x020A6D 10:8A5D: 01 BE     .word $0000        ; 4F ; 
- D 0 - I - 0x020A6F 10:8A5F: 01 BE     .word _scenario_BE01_50 ; 
- D 0 - I - 0x020A71 10:8A61: 0D BE     .word _scenario_BE0D_51 ; 
- D 0 - I - 0x020A73 10:8A63: 18 BE     .word _scenario_BE18_52 ; 
- D 0 - I - 0x020A75 10:8A65: 20 BE     .word _scenario_BE20_53 ; 
- D 0 - I - 0x020A77 10:8A67: 2A BE     .word _scenario_BE2A_54 ; 
- D 0 - I - 0x020A79 10:8A69: 32 BE     .word _scenario_BE32_55 ; 
- D 0 - I - 0x020A7B 10:8A6B: 3A BE     .word _scenario_BE3A_56 ; 
- D 0 - I - 0x020A7D 10:8A6D: 42 BE     .word _scenario_BE42_57 ; 
- D 0 - I - 0x020A7F 10:8A6F: 4A BE     .word _scenario_BE4A_58 ; 
- D 0 - I - 0x020A81 10:8A71: 52 BE     .word _scenario_BE52_59 ; 
- D 0 - I - 0x020A83 10:8A73: 5A BE     .word _scenario_BE5A_5A ; 
- D 0 - I - 0x020A85 10:8A75: 69 BE     .word _scenario_BE69_5B ; 
- D 0 - I - 0x020A87 10:8A77: 73 BE     .word _scenario_BE73_5C ; 
- D 0 - I - 0x020A89 10:8A79: 7C BE     .word _scenario_BE7C_5D ; 
- D 0 - I - 0x020A8B 10:8A7B: 86 BE     .word _scenario_BE86_5E ; 
- D 0 - I - 0x020A8D 10:8A7D: 8E BE     .word _scenario_BE8E_5F ; 
- D 0 - I - 0x020A8F 10:8A7F: 96 BE     .word _scenario_BE96_60 ; 
- D 0 - I - 0x020A91 10:8A81: 9E BE     .word _scenario_BE9E_61 ; 
- D 0 - I - 0x020A93 10:8A83: A6 BE     .word _scenario_BEA6_62 ; 
- D 0 - I - 0x020A95 10:8A85: AE BE     .word _scenario_BEAE_63 ; 
- D 0 - I - 0x020A97 10:8A87: B6 BE     .word _scenario_BEB6_64 ; 
- D 0 - I - 0x020A99 10:8A89: BE BE     .word _scenario_BEBE_65 ; 
- D 0 - I - 0x020A9B 10:8A8B: C6 BE     .word $0000        ; 66 ; 
- - - - - - 0x020A9D 10:8A8D: D8 BE     .word $0000        ; 67 ; 
- - - - - - 0x020A9F 10:8A8F: F7 BE     .word _scenario_BEF7_68 ; 
- D 0 - I - 0x020AA1 10:8A91: 05 BF     .word _scenario_BF05_69 ; 
- D 0 - I - 0x020AA3 10:8A93: 62 AA     .word _scenario_AA62_6A ; 
- D 0 - I - 0x020AA5 10:8A95: 0D BF     .word _scenario_BF0D_6B ; 
- D 0 - I - 0x020AA7 10:8A97: 13 BF     .word _scenario_BF13_6C ; 
- D 0 - I - 0x020AA9 10:8A99: 23 BF     .word _scenario_BF23_6D ; 
- D 0 - I - 0x020AAB 10:8A9B: 2C BF     .word _scenario_BF2C_6E ; 
- D 0 - I - 0x020AAD 10:8A9D: 54 BF     .word _scenario_BF54_6F ; 
- D 0 - I - 0x020AAF 10:8A9F: 61 BF     .word _scenario_BF61_70 ; 
- D 0 - I - 0x020AB1 10:8AA1: 73 BF     .word _scenario_BF73_71 ; 
- D 0 - I - 0x020AB3 10:8AA3: 7F BF     .word _scenario_BF7F_72 ; 
- D 0 - I - 0x020AB5 10:8AA5: 94 BF     .word _scenario_BF94_73 ; 
- D 0 - I - 0x020AB7 10:8AA7: 9C BF     .word _scenario_BF9C_74 ; 
- D 0 - I - 0x020AB9 10:8AA9: D2 BF     .word _scenario_BFD2_75 ; 
- D 0 - I - 0x020ABB 10:8AAB: 1B B0     .word _scenario_B01B_76 ; 
- D 0 - I - 0x020ABD 10:8AAD: D8 BF     .word _scenario_BFD8_77 ; 
- D 0 - I - 0x020ABF 10:8AAF: 97 A1     .word _scenario_A197_78 ; 



; управляющие байты 0x0200B9
con_quit                    = $F0   ; 
; unused                    = $F1   ; аналогично F0, но выход без очистки флага зеркала
con_jmp                     = $F2   ; 
; F3 0x02017E
con_branch_long             = $F300 ; 
con_branch_short            = $F380 ; 
   ;con_bra_00                                  = $00   ; 
    con_bra_выживет_ли_защитник                 = $01   ; 00 = выживет, 01 = убьется
    con_bra_действие_защитника                  = $02   ; также киперы
    con_bra_результат_действия_защитника        = $03   ; 
    con_bra_высота_мяча                         = $04   ; 
    con_bra_порядковый_номер_защитника          = $05   ; 
    con_bra_защитник_полевой_или_кипер          = $06   ; 
   ;con_bra_07                                  = $07   ; 
    con_bra_08                                  = $08   ; 
    con_bra_действие_атакующего                 = $09   ; 
   ;con_bra_0A                                  = $0A   ; 
   ;con_bra_0B                                  = $0B   ; 
    con_bra_обычный_или_спешал                  = $0C   ; 00 = обычное действие, 01 = спешал действие
    con_bra_результат_пропуска_мяча_кипером     = $0D   ; 
    con_bra_действие_атаки_на_земле             = $0E   ; 
   ;con_bra_0F                                  = $0F   ; 
    con_bra_скорость_мяча                       = $10   ; 
   ;con_bra_11                                  = $11   ; 
   ;con_bra_12                                  = $12   ; 
    con_bra_появится_ли_защитник_в_воротах      = $13   ; 
   ;con_bra_14                                  = $14   ; 
    con_bra_15                                  = $15   ; 
    con_bra_действ_атак_на_своей_штрафной       = $16   ; только на своей штрафной
   ;con_bra_17                                  = $17   ; 
    con_bra_plr_jito                            = $18   ; 
   ;con_bra_19                                  = $19   ; 
   ;con_bra_1A                                  = $1A   ; 
    con_bra_разновидность_block                 = $1B   ; 
    con_bra_разновидность_dribble               = $1C   ; 
    con_bra_разновидность_shoot                 = $1D   ; включает в себя удары с земли и в штрафной
    con_bra_разновидность_pass                  = $1E   ; 
   ;con_bra_1F                                  = $1F   ; 
    con_bra_plr_wakashimazu_gertise             = $20   ; 
    con_bra_порвана_ли_сетка                    = $21   ; 
    con_bra_у_чьей_команды_мяч                  = $22   ; 
    con_bra_за_какую_команду_играешь            = $23   ; 
    con_bra_был_ли_крит                         = $24   ; 
    con_bra_били_ли_раньше_этот_удар            = $25   ; slider cannon и mach shot
    con_bra_проигрывает_ли_germany              = $26   ; 
    con_bra_атакующий_с_рожей                   = $27   ; 00 = атакующий без рожи, 01 = атакующий с рожей
   ;con_bra_рожа_защитника                      = $28   ; 
   ;con_bra_рожа_нападающего                    = $29   ; 
    con_bra_защитник_с_рожей                    = $2A   ; 00 = защитник без рожи, 01 = защитник с рожей
    con_bra_проверка_на_100_хп                  = $2B   ; 
    con_bra_напали_ли_защитники                 = $2C   ; 
    con_bra_jito_sano_ли_забили                 = $2D   ; 
    con_bra_наебан_ли_кипер                     = $2E   ; 
    con_bra_киперы_с_критами                    = $2F   ; 
    con_bra_plr_tsubasa_diaz                    = $30   ; 
    con_bra_plr_nitta                           = $31   ; 
    con_bra_plr_soda                            = $32   ; 
    con_bra_игроки_с_защитным_спешалом          = $33   ; 
    con_bra_где_сейчас_мяч                      = $34   ; 00 = у атакующего на земле, 01 = летит низкий, 02 = летит высокий
    con_bra_действ_защит_на_своей_штрафной      = $35   ; 
    con_bra_разновидность_catch                 = $36   ; 
    con_bra_защитный_спешал_или_нет             = $37   ; 
    con_bra_plr_hyuga                           = $38   ; 
    con_bra_plr_matsuyama                       = $39   ; 
    con_bra_plr_kaltz                           = $3A   ; 
    con_bra_plr_carlos                          = $3B   ; 
    con_bra_plr_misugi                          = $3C   ; 
    con_bra_plr_misaki                          = $3D   ; 
    con_bra_полет_мяча_и_кипера_в_пк            = $3E   ; 
   ;con_bra_3F                                  = $3F   ; 
    con_bra_40                                  = $40   ; 
    con_bra_рожа_кипера                         = $41   ; 
    con_bra_рандом_из_2х                        = $42   ; рандомный выбор из двух вариантов
    con_bra_43                                  = $43   ; действие атакующего на своей штрафной (pass, clearing, through)
    con_bra_dive_или_wait                       = $44   ; 
    con_bra_выживет_ли_кипер_после_punch        = $45   ; 
    con_bra_46_попытка_убийства_защитника       = $46   ; 
    con_bra_force_drib                          = $47   ; кто делает силовой дриблинг
    con_bra_тип_удара_на_штрафной               = $48   ; чтобы добавить нужную анимацию подготовки к удару перед нападением соперников
    con_bra_требуются_2_напарника               = $49   ; для выполнения некого действия
    con_bra_4A                                  = $4A   ; оба игрока с рожами
    con_bra_4B                                  = $4B   ; misugi?
   ;con_bra_4C                                  = $4C   ; 
   ;con_bra_4D                                  = $4D   ; 
   ;con_bra_4E                                  = $4E   ; 
   ;con_bra_4F                                  = $4F   ; 
con_mirror_on               = $F4   ; 
con_mirror_off              = $F5   ; 
con_mirror_toggle           = $F6   ; 
con_F7                      = $F7   ; запись в 052B
con_F8                      = $F8   ; запись в 052C, байты 01-04
con_soundID_delay           = $F9   ; номер звука + задержка перед звуком
con_jsr                     = $FA   ; 
con_rts                     = $FB   ; 
con_moving_bg               = $FC   ; байты 01-04
con_mirror_condition        = $FD   ; байты 00-04
con_FE                      = $FE   ; запись 01 в 0539
con_drive                   = $FF   ; 
    con_overhead                = $00   ;
    con_tiger                   = $01   ;

con_pause                   = $00   ; задержка следующей анимации



_scenario_8AB1_00:
    .dbyt con_branch_long + con_bra_где_сейчас_мяч
    .word bra_long_case_00_00 ; мяч у атакующего на земле
    .word bra_long_case_00_01 ; летит низкий мяч
    .word bra_long_case_00_02 ; летит высокий мяч

        bra_long_case_00_00:
        ; мяч у атакующего на земле
            .byte con_mirror_condition, $01       ; номер защитника
            .dbyt con_branch_short + con_bra_выживет_ли_защитник
            .byte off_case_00_00_00 - * ; оба соперника выживут
            .byte off_case_00_00_01 - * ; кто-то из соперников убьется

                off_case_00_00_00:
                ; мяч у атакующего на земле/оба соперника выживут
                    .dbyt con_branch_short + con_bra_действие_защитника
                    .byte off_case_00_00_00_00 - * ; block
                    .byte off_case_00_00_00_01 - * ; tackle
                    .byte off_case_00_00_00_02 - * ; pass cut

                        off_case_00_00_00_00:
                        off_case_00_00_00_02:
                        ; мяч у атакующего на земле/оба соперника выживут/block или pass cut
                            .byte con_jsr
                            .word sub_9C8B_защитник_бежит_по_земле_нападая_на_атакующего
                            .dbyt con_branch_short + con_bra_результат_действия_защитника
                            .byte off_case_00_00_00_00_00 - * ; атакующий легко обводит
                            .byte off_case_00_00_00_00_01 - * ; атакующий с трудом обводит
                            .byte off_case_00_00_00_00_02 - * ; защитник выбьет мяч
                            .byte off_case_00_00_00_00_03 - * ; защитник заберет мяч
                            .byte off_case_00_00_00_00_04 - * ; нарушение

                                off_case_00_00_00_00_00:
                                ; мяч у атакующего на земле/оба соперника выживут/block или pass cut/атакующий легко обводит
                                    .byte con_jsr
                                    .word sub_A495_сообщение_атакующего_в_ответ_защитнику
                                    .byte con_jsr
                                    .word sub_9CC0_выбор_анимации_дриблинга_легкой_обводки
                                    .byte con_jmp
                                    .word loc_9EAA_рожа_защитника_с_сообщением_неудачи_если_выжил

                                off_case_00_00_00_00_01:
                                ; мяч у атакующего на земле/оба соперника выживут/block или pass cut/атакующий с трудом обводит
                                    .byte con_jsr
                                    .word sub_A495_сообщение_атакующего_в_ответ_защитнику
                                    .byte con_jsr
                                    .word sub_9CA3_выбор_анимации_дриблинга_трудной_обводки
                                    .byte con_jmp
                                    .word loc_9EAA_рожа_защитника_с_сообщением_неудачи_если_выжил

                                off_case_00_00_00_00_02:
                                ; мяч у атакующего на земле/оба соперника выживут/block или pass cut/защитник выбьет мяч
                                    .byte con_jsr
                                    .word sub_A495_сообщение_атакующего_в_ответ_защитнику
                                    .byte con_jsr
                                    .word sub_9DFE_выбор_анимации_дриблинга_в_зависимости_от_действия
                                    .byte con_jsr
                                    .word sub_A308_белое_мерцание
                                    .byte con_mirror_toggle
                                    .byte con_jsr
                                    .word sub_A373_мяч_улетает_в_сторону
                                    .byte con_jsr
                                    .word sub_9E64_рожа_атакующего_с_сообщением_неудачи_если_выжил
                                    .byte con_mirror_toggle
                                    .byte con_quit

                                off_case_00_00_00_00_03:
                                ; мяч у атакующего на земле/оба соперника выживут/block или pass cut/защитник заберет мяч
                                    .byte con_jsr
                                    .word sub_A495_сообщение_атакующего_в_ответ_защитнику
                                    .byte con_jsr
                                    .word sub_9DFE_выбор_анимации_дриблинга_в_зависимости_от_действия
                                    .byte con_jsr
                                    .word sub_A2EF_белое_мерцание_без_звука
                                    .byte con_jsr
                                    .word sub_BF00_защитник_отбирает_ногой_мяч_у_атакующего
                                    .byte con_jsr
                                    .word sub_9E64_рожа_атакующего_с_сообщением_неудачи_если_выжил
                                    .byte con_mirror_toggle
                                    .byte con_quit

                                off_case_00_00_00_00_04:
                                ; мяч у атакующего на земле/оба соперника выживут/block или pass cut/нарушение
                                    .byte con_jsr
                                    .word sub_A495_сообщение_атакующего_в_ответ_защитнику
                                    .byte con_jsr
                                    .word sub_9DFE_выбор_анимации_дриблинга_в_зависимости_от_действия
                                    .byte con_jsr
                                    .word sub_A2DD_ярко_красное_мерцание
                                    .byte con_jmp
                                    .word loc_A35B_нарушение

                        off_case_00_00_00_01:
                        ; мяч у атакующего на земле/оба соперника выживут/tackle
                            .byte con_jsr
                            .word sub_A936_сообщение_защитника_атакующему_при_нападении_подкатом
                            .byte con_jsr
                            .word sub_A3CF_tackle
                            .dbyt con_branch_short + con_bra_результат_действия_защитника
                            .byte off_case_00_00_00_01_00 - * ; атакующий легко обводит
                            .byte off_case_00_00_00_01_01 - * ; атакующий с трудом обводит
                            .byte off_case_00_00_00_01_02 - * ; защитник выбьет мяч
                            .byte off_case_00_00_00_01_03 - * ; защитник заберет мяч
                            .byte off_case_00_00_00_01_04 - * ; нарушение

                                off_case_00_00_00_01_00:
                                ; мяч у атакующего на земле/оба соперника выживут/tackle/атакующий легко обводит
                                    .byte con_jsr
                                    .word sub_A495_сообщение_атакующего_в_ответ_защитнику
                                    .byte con_jsr
                                    .word sub_9CC0_выбор_анимации_дриблинга_легкой_обводки
                                    .byte con_jmp
                                    .word loc_9EAA_рожа_защитника_с_сообщением_неудачи_если_выжил

                                off_case_00_00_00_01_01:
                                ; мяч у атакующего на земле/оба соперника выживут/tackle/атакующий с трудом обводит
                                    .byte con_jsr
                                    .word sub_A495_сообщение_атакующего_в_ответ_защитнику
                                    .byte con_jsr
                                    .word sub_9CA3_выбор_анимации_дриблинга_трудной_обводки
                                    .byte con_jmp
                                    .word loc_9EAA_рожа_защитника_с_сообщением_неудачи_если_выжил

                                off_case_00_00_00_01_02:
                                ; мяч у атакующего на земле/оба соперника выживут/tackle/защитник выбьет мяч
                                    .byte con_jsr
                                    .word sub_A495_сообщение_атакующего_в_ответ_защитнику
                                    .byte con_jsr
                                    .word sub_9DFE_выбор_анимации_дриблинга_в_зависимости_от_действия
                                    .byte con_jsr
                                    .word sub_A308_белое_мерцание
                                    .byte con_mirror_toggle
                                    .byte con_jsr
                                    .word sub_A373_мяч_улетает_в_сторону
                                    .byte con_jsr
                                    .word sub_9E64_рожа_атакующего_с_сообщением_неудачи_если_выжил
                                    .byte con_mirror_toggle
                                    .byte con_quit

                                off_case_00_00_00_01_03:
                                ; мяч у атакующего на земле/оба соперника выживут/tackle/защитник заберет мяч
                                    .byte con_jsr
                                    .word sub_A495_сообщение_атакующего_в_ответ_защитнику
                                    .byte con_jsr
                                    .word sub_9DFE_выбор_анимации_дриблинга_в_зависимости_от_действия
                                    .byte con_jsr
                                    .word sub_B428_белое_мерцание_если_защитник_делал_спешал
                                    .byte con_jsr
                                    .word sub_A0C3_успешный_отбор_мяча_подкатом
                                    .byte con_mirror_toggle
                                    .byte con_jsr
                                    .word sub_9E64_рожа_атакующего_с_сообщением_неудачи_если_выжил
                                    .byte con_mirror_toggle
                                    .byte con_quit

                                off_case_00_00_00_01_04:
                                ; мяч у атакующего на земле/оба соперника выживут/tackle/нарушение
                                    .byte con_jsr
                                    .word sub_A495_сообщение_атакующего_в_ответ_защитнику
                                    .byte con_jsr
                                    .word sub_9DFE_выбор_анимации_дриблинга_в_зависимости_от_действия
                                    .byte con_jsr
                                    .word sub_A2DD_ярко_красное_мерцание
                                    .byte con_jmp
                                    .word loc_A35B_нарушение

                off_case_00_00_01:
                ; мяч у атакующего на земле/кто-то из соперников убьется
                    .dbyt con_branch_short + con_bra_действие_защитника
                    .byte off_case_00_00_01_00 - * ; block
                    .byte off_case_00_00_01_01 - * ; tackle
                    .byte off_case_00_00_01_02 - * ; pass cut

                        off_case_00_00_01_00:
                        off_case_00_00_01_02:
                        ; мяч у атакующего на земле/кто-то из соперников убьется/block или pass cut
                            .byte con_jsr
                            .word sub_9C8B_защитник_бежит_по_земле_нападая_на_атакующего
                            .byte con_jsr
                            .word sub_A495_сообщение_атакующего_в_ответ_защитнику
                            .byte con_jsr
                            .word sub_9DFE_выбор_анимации_дриблинга_в_зависимости_от_действия
                            .byte con_jsr
                            .word sub_A2DD_ярко_красное_мерцание
                            .byte con_jsr
                            .word sub_9EAB_рожа_защитника_с_сообщением_неудачи_если_убился
                            .dbyt con_branch_short + con_bra_результат_действия_защитника
                            .byte off_case_00_00_01_00_00 - * ; атакующий легко обводит
                            .byte off_case_00_00_01_00_01 - * ; атакующий с трудом обводит

                                off_case_00_00_01_00_00:
                                ; мяч у атакующего на земле/кто-то из соперников убьется/block или pass cut/атакующий легко обводит
                                    .byte con_jsr
                                    .word sub_9F62_рандом_анимации_отпизженного_игрока_2_с_сообщением
                                    .byte con_quit

                                off_case_00_00_01_00_01:
                                ; мяч у атакующего на земле/кто-то из соперников убьется/block или pass cut/атакующий с трудом обводит
                                    .byte con_jsr
                                    .word sub_9F5C_рандом_анимации_отпизженного_игрока_1_с_сообщением
                                    .byte con_jmp
                                    .word loc_A247_серый_экран_атакующий_замедлился

                        off_case_00_00_01_01:
                        ; мяч у атакующего на земле/кто-то из соперников убьется/tackle
                            .byte con_jsr
                            .word sub_A936_сообщение_защитника_атакующему_при_нападении_подкатом
                            .byte con_jsr
                            .word sub_A3CF_tackle
                            .byte con_jsr
                            .word sub_A495_сообщение_атакующего_в_ответ_защитнику
                            .byte con_jsr
                            .word sub_9DFE_выбор_анимации_дриблинга_в_зависимости_от_действия
                            .byte con_jsr
                            .word sub_A2DD_ярко_красное_мерцание
                            .dbyt con_branch_short + con_bra_результат_действия_защитника
                            .byte off_case_00_00_01_01_00 - * ; атакующий легко обводит
                            .byte off_case_00_00_01_01_01 - * ; атакующий с трудом обводит
                            .byte off_case_00_00_01_01_02 - * ; защитник выбьет мяч
                            .byte off_case_00_00_01_01_03 - * ; защитник заберет мяч
                            .byte off_case_00_00_01_01_04 - * ; нарушение

                                off_case_00_00_01_01_00:
                                ; мяч у атакующего на земле/кто-то из соперников убьется/tackle/атакующий легко обводит
                                    .byte con_jsr
                                    .word sub_9EAB_рожа_защитника_с_сообщением_неудачи_если_убился
                                    .byte con_jmp
                                    .word loc_9F62_рандом_анимации_отпизженного_игрока_2_с_сообщением

                                off_case_00_00_01_01_01:
                                ; мяч у атакующего на земле/кто-то из соперников убьется/tackle/атакующий с трудом обводит
                                    .byte con_jsr
                                    .word sub_9EAB_рожа_защитника_с_сообщением_неудачи_если_убился
                                    .byte con_jsr
                                    .word sub_9F5C_рандом_анимации_отпизженного_игрока_1_с_сообщением
                                    .byte con_jmp
                                    .word loc_A247_серый_экран_атакующий_замедлился

                                off_case_00_00_01_01_02:
                                ; мяч у атакующего на земле/кто-то из соперников убьется/tackle/защитник выбьет мяч
                                    .byte con_mirror_toggle
                                    .byte con_jsr
                                    .word sub_9E65_рожа_атакующего_с_сообщением_неудачи_если_убился
                                    .byte con_mirror_toggle
                                    .byte con_jsr
                                    .word sub_9F6E_рандом_анимации_отпизженного_игрока_3_с_сообщением
                                    .byte con_jmp
                                    .word loc_A371_мяч_улетает_в_сторону

                                off_case_00_00_01_01_03:
                                ; мяч у атакующего на земле/кто-то из соперников убьется/tackle/защитник заберет мяч
                                    .byte con_mirror_toggle
                                    .byte con_jsr
                                    .word sub_9E65_рожа_атакующего_с_сообщением_неудачи_если_убился
                                    .byte con_mirror_toggle
                                    .byte con_jsr
                                    .word sub_9F74_рандом_анимации_отпизженного_игрока_2_без_сообщения
                                    .byte con_jmp
                                    .word loc_BF01_успешный_отбор_мяча_подкатом_с_убийством_атакующего

                                off_case_00_00_01_01_04:
                                ; мяч у атакующего на земле/кто-то из соперников убьется/tackle/нарушение
                                    .byte con_jsr
                                    .word sub_9F6E_рандом_анимации_отпизженного_игрока_3_с_сообщением
                                    .byte con_jmp
                                    .word loc_A35B_нарушение

        bra_long_case_00_01:
        ; летит низкий мяч
            .byte con_mirror_condition, $03       ; куда летит мяч
            .dbyt con_branch_short + con_bra_46_попытка_убийства_защитника
            .byte off_case_00_01_00 - * ; защитник выживет
            .byte off_case_00_01_01 - * ; защитник убьется

                off_case_00_01_00:
                ; летит низкий мяч/защитник выживет
                    .dbyt con_branch_short + con_bra_действие_защитника
                    .byte off_case_00_01_00_00 - * ; block
                    .byte off_case_00_01_00_01 - * ; tackle
                    .byte off_case_00_01_00_02 - * ; pass cut

                        off_case_00_01_00_00:
                        ; летит низкий мяч/защитник выживет/block
                            .dbyt con_branch_short + con_bra_результат_действия_защитника
                            .byte off_case_00_01_00_00_00 - * ; промахнется
                            .byte off_case_00_01_00_00_01 - * ; коснется
                            .byte off_case_00_01_00_00_02 - * ; отобьет
                            .byte off_case_00_01_00_00_03 - * ; словит

                                off_case_00_01_00_00_00:
                                ; летит низкий мяч/защитник выживет/block/промахнется
                                    .byte con_jsr
                                    .word sub_9F7A_защитнику_бежит_к_низкому_мячу_блоком
                                    .byte con_jsr
                                    .word sub_A38F_полет_низкого_мяча_к_защитнику
                                    .byte con_jmp
                                    .word loc_A01C_защитник_промахивается_телом_по_низкому_мячу

                                off_case_00_01_00_00_01:
                                ; летит низкий мяч/защитник выживет/block/коснется
                                    .byte con_jsr
                                    .word sub_9F7A_защитнику_бежит_к_низкому_мячу_блоком
                                    .byte con_jsr
                                    .word sub_A38F_полет_низкого_мяча_к_защитнику
                                    .byte con_jsr
                                    .word sub_A034_защитник_собирается_коснуться_телом_низкого_мяча
                                    .byte con_jsr
                                    .word sub_A025_момент_касания_защитником_мяча_телом
                                    .byte con_jmp
                                    .word loc_A015_низкий_мяч_летит_дальше_после_касания_телом_защитника

                                off_case_00_01_00_00_02:
                                ; летит низкий мяч/защитник выживет/block/отобьет
                                    .dbyt con_branch_short + con_bra_разновидность_block
                                    .byte off_case_00_01_00_00_02_00 - * ; block
                                    .byte off_case_00_01_00_00_02_01 - * ; face block
                                    .byte off_case_00_01_00_00_02_02 - * ; skylab block
                                    .byte off_case_00_01_00_00_02_03 - * ; power block

                                        off_case_00_01_00_00_02_00:
                                        ; летит низкий мяч/защитник выживет/block/отобьет/block
                                            .byte con_jsr
                                            .word sub_9F7A_защитнику_бежит_к_низкому_мячу_блоком
                                            .byte con_jsr
                                            .word sub_A38F_полет_низкого_мяча_к_защитнику
                                            .byte con_jsr
                                            .word sub_A03B_защиник_собирается_отбить_телом_низкий_мяч
                                            .byte con_jsr
                                            .word sub_A023_процесс_отбивания_защитником_мяча_телом_после_прыжка
                                            .byte con_jmp
                                            .word loc_A371_мяч_улетает_в_сторону

                                        off_case_00_01_00_00_02_01:
                                        ; летит низкий мяч/защитник выживет/block/отобьет/face block
loc_8F64_00_01_00_00_03_01:
                                            .byte con_jsr
                                            .word sub_9F7A_защитнику_бежит_к_низкому_мячу_блоком
loc_8F67_ishizaki_face_block_в_процессе:
                                            .byte con_jsr
                                            .word sub_BF03_ishizaki_face_block_в_процессе
                                            .byte con_jmp
                                            .word loc_A371_мяч_улетает_в_сторону

                                        off_case_00_01_00_00_02_02:
                                        off_case_00_01_00_00_02_03:
                                        ; летит низкий мяч/защитник выживет/block/отобьет/skylab block, power block
                                            .byte con_jmp
                                            .word loc_8C88_защитник_прыгает_и_отбивает_мяч_телом

                                off_case_00_01_00_00_03:
                                ; летит низкий мяч/защитник выживет/block/словит
                                    .dbyt con_branch_short + con_bra_разновидность_block
                                    .byte off_case_00_01_00_00_03_00 - * ; block
                                    .byte off_case_00_01_00_00_03_01 - * ; face block
                                    .byte off_case_00_01_00_00_03_02 - * ; skylab block
                                    .byte off_case_00_01_00_00_03_03 - * ; power block

                                        off_case_00_01_00_00_03_00:
                                        ; летит низкий мяч/защитник выживет/block/словит/block
                                            .byte con_jsr
                                            .word sub_9F7A_защитнику_бежит_к_низкому_мячу_блоком
                                            .byte con_jsr
                                            .word sub_A38F_полет_низкого_мяча_к_защитнику
                                            .byte con_jmp
                                            .word loc_A19F_защитник_забирает_низкий_мяч_телом

                                        off_case_00_01_00_00_03_01:
                                        ; летит низкий мяч/защитник выживет/block/словит/face block
                                            .byte con_jmp
                                            .word loc_8F64_00_01_00_00_03_01

                                        off_case_00_01_00_00_03_02:
                                        off_case_00_01_00_00_03_03:
                                        ; летит низкий мяч/защитник выживет/block/словит/skylab block, power block
                                            .byte con_jmp
                                            .word loc_8D38_защитник_ловит_блоком_высокий_мяч

                        off_case_00_01_00_01:
                        ; летит низкий мяч/защитник выживет/tackle
                            .byte con_jsr
                            .word sub_A6E0_защитник_бежит_к_низкому_мячу
                            .byte con_jsr
                            .word sub_A38F_полет_низкого_мяча_к_защитнику
                            .dbyt con_branch_short + con_bra_результат_действия_защитника
                            .byte off_case_00_01_00_01_00 - * ; промахнется
                            .byte off_case_00_01_00_01_01 - * ; коснется
                            .byte off_case_00_01_00_01_02 - * ; отобьет
                            .byte off_case_00_01_00_01_03 - * ; словит

                                off_case_00_01_00_01_00:
                                ; летит низкий мяч/защитник выживет/tackle/промахнется
                                    .byte con_jmp
                                    .word loc_A01C_защитник_промахивается_телом_по_низкому_мячу

                                off_case_00_01_00_01_01:
                                ; летит низкий мяч/защитник выживет/tackle/коснется
                                    .byte con_jsr
                                    .word sub_A034_защитник_собирается_коснуться_телом_низкого_мяча
                                    .byte con_jsr
                                    .word sub_A025_момент_касания_защитником_мяча_телом
                                    .byte con_jmp
                                    .word loc_A015_низкий_мяч_летит_дальше_после_касания_телом_защитника

                                off_case_00_01_00_01_02:
                                ; летит низкий мяч/защитник выживет/tackle/отобьет
                                    .byte con_jsr
                                    .word sub_A03B_защиник_собирается_отбить_телом_низкий_мяч
                                    .byte con_jsr
                                    .word sub_A023_процесс_отбивания_защитником_мяча_телом_после_прыжка
                                    .byte con_jmp
                                    .word loc_A371_мяч_улетает_в_сторону

                                off_case_00_01_00_01_03:
                                ; летит низкий мяч/защитник выживет/tackle/словит
                                    .byte con_jmp
                                    .word loc_A17B_защитник_ловит_низкий_мяч_телом

                        off_case_00_01_00_02:
                        ; летит низкий мяч/защитник выживет/pass cut
                            .byte con_jsr
                            .word sub_9C7F_защитник_бежит_по_земле
                            .byte con_jsr
                            .word sub_A38F_полет_низкого_мяча_к_защитнику
                            .dbyt con_branch_short + con_bra_результат_действия_защитника
                            .byte off_case_00_01_00_02_00 - * ; промахнется
                            .byte off_case_00_01_00_02_01 - * ; коснется
                            .byte off_case_00_01_00_02_02 - * ; отобьет
                            .byte off_case_00_01_00_02_03 - * ; словит

                                off_case_00_01_00_02_00:
                                ; летит низкий мяч/защитник выживет/pass cut/промахнется
                                    .byte con_jmp
                                    .word loc_9FEA_защитник_промахивается_ногой_по_низкому_мячу

                                off_case_00_01_00_02_01:
                                ; летит низкий мяч/защитник выживет/pass cut/коснется
                                    .byte con_jsr
                                    .word sub_9FFD_защитник_собирается_коснуться_ногой_низкого_мяча
                                    .byte con_jsr
                                    .word sub_9FF3_в_процессе_касания_защитником_ногой_высого_мяча
                                    .byte con_jmp
                                    .word loc_9FDE_высокий_мяч_летит_дальше_после_касания_ногой_защитником

                                off_case_00_01_00_02_02:
                                ; летит низкий мяч/защитник выживет/pass cut/отобьет
                                    .byte con_jsr
                                    .word sub_A004_защитник_собирается_отбить_ногой_низкий_мяч
                                    .byte con_jsr
                                    .word sub_9FF1_защитник_в_процессе_отбития_ногой_низкого_мяча
                                    .byte con_jmp
                                    .word loc_A371_мяч_улетает_в_сторону

                                off_case_00_01_00_02_03:
                                ; летит низкий мяч/защитник выживет/pass cut/словит
                                    .byte con_jmp
                                    .word loc_A164_защитник_ловит_низкий_мяч_ногой

                off_case_00_01_01:
                ; летит низкий мяч/защитник убьется
                    .dbyt con_branch_short + con_bra_действие_защитника
                    .byte off_case_00_01_01_00 - * ; block
                    .byte off_case_00_01_01_01 - * ; tackle
                    .byte off_case_00_01_01_02 - * ; pass cut

                        off_case_00_01_01_00:
                        ; летит низкий мяч/защитник убьется/block
                            .dbyt con_branch_short + con_bra_результат_действия_защитника
                            .byte off_case_00_01_01_00_00 - * ; промахнется
                            .byte off_case_00_01_01_00_01 - * ; коснется
                            .byte off_case_00_01_01_00_02 - * ; отобьет
                            .byte off_case_00_01_01_00_03 - * ; словит

                                off_case_00_01_01_00_00:
                                ; летит низкий мяч/защитник убьется/block/промахнется
                                    .byte con_jsr
                                    .word sub_9F7A_защитнику_бежит_к_низкому_мячу_блоком
                                    .byte con_jsr
                                    .word sub_A38F_полет_низкого_мяча_к_защитнику
                                    .byte con_jsr
                                    .word sub_A03B_защиник_собирается_отбить_телом_низкий_мяч
                                    .byte con_jsr
                                    .word sub_A2DD_ярко_красное_мерцание
                                    .byte con_jmp
                                    .word loc_9F62_рандом_анимации_отпизженного_игрока_2_с_сообщением

                                off_case_00_01_01_00_01:
                                ; летит низкий мяч/защитник убьется/block/коснется
                                    .byte con_jsr
                                    .word sub_9F7A_защитнику_бежит_к_низкому_мячу_блоком
                                    .byte con_jsr
                                    .word sub_A38F_полет_низкого_мяча_к_защитнику
                                    .byte con_jsr
                                    .word sub_A03B_защиник_собирается_отбить_телом_низкий_мяч
                                    .byte con_jsr
                                    .word sub_A2DD_ярко_красное_мерцание
                                    .byte con_jsr
                                    .word sub_9F5C_рандом_анимации_отпизженного_игрока_1_с_сообщением
                                    .byte con_jmp
                                    .word loc_A240_серый_экран_после_касания_высого_мяча_телом

                                off_case_00_01_01_00_02:
                                ; летит низкий мяч/защитник убьется/block/отобьет
                                    .dbyt con_branch_short + con_bra_разновидность_block
                                    .byte off_case_00_01_01_00_02_00 - * ; block
                                    .byte off_case_00_01_01_00_02_01 - * ; face block
                                    .byte off_case_00_01_01_00_02_02 - * ; skylab block
                                    .byte off_case_00_01_01_00_02_03 - * ; power block

                                    off_case_00_01_01_00_02_00:
                                    off_case_00_01_01_00_02_02:
                                    off_case_00_01_01_00_02_03:
                                    ; летит низкий мяч/защитник убьется/block/отобьет/block, skylab block, power block
                                            .byte con_jsr
                                            .word sub_9F7A_защитнику_бежит_к_низкому_мячу_блоком
                                            .byte con_jsr
                                            .word sub_A38F_полет_низкого_мяча_к_защитнику
                                            .byte con_jsr
                                            .word sub_A03B_защиник_собирается_отбить_телом_низкий_мяч
                                            .byte con_jsr
                                            .word sub_A2DD_ярко_красное_мерцание
                                            .byte con_jsr
                                            .word sub_9F5C_рандом_анимации_отпизженного_игрока_1_с_сообщением
                                            .byte con_jmp
                                            .word loc_A371_мяч_улетает_в_сторону

                                        off_case_00_01_01_00_02_01:
                                        ; летит низкий мяч/защитник убьется/block/отобьет/face block
                                            .byte con_jmp
                                            .word loc_8C97_ishizaki_face_block_полная_анимация

                                off_case_00_01_01_00_03:
                                ; летит низкий мяч/защитник убьется/block/словит
                                    .dbyt con_branch_short + con_bra_разновидность_block
                                    .byte off_case_00_01_01_00_03_00 - * ; block
                                    .byte off_case_00_01_01_00_03_01 - * ; face block
                                    .byte off_case_00_01_01_00_03_02 - * ; skylab block
                                    .byte off_case_00_01_01_00_03_03 - * ; power block

                                        off_case_00_01_01_00_03_00:
                                        off_case_00_01_01_00_03_02:
                                        off_case_00_01_01_00_03_03:
                                        ; летит низкий мяч/защитник убьется/block/словит/block, skylab block, power block
                                            .byte con_jsr
                                            .word sub_9F7A_защитнику_бежит_к_низкому_мячу_блоком
                                            .byte con_jsr
                                            .word sub_A38F_полет_низкого_мяча_к_защитнику
                                            .byte con_jsr
                                            .word sub_A2DD_ярко_красное_мерцание
                                            .byte con_jmp
                                            .word loc_A19F_защитник_забирает_низкий_мяч_телом

                                        off_case_00_01_01_00_03_01:
                                        ; летит низкий мяч/защитник убьется/block/словит/face block
                                            .byte con_jmp
                                            .word loc_8C97_ishizaki_face_block_полная_анимация

                        off_case_00_01_01_01:
                        ; летит низкий мяч/защитник убьется/tackle
                            .byte con_jsr
                            .word sub_A6E0_защитник_бежит_к_низкому_мячу
                            .byte con_jsr
                            .word sub_A38F_полет_низкого_мяча_к_защитнику
                            .byte con_jsr
                            .word sub_A03B_защиник_собирается_отбить_телом_низкий_мяч
                            .byte con_jsr
                            .word sub_A2DD_ярко_красное_мерцание
                            .dbyt con_branch_short + con_bra_результат_действия_защитника
                            .byte off_case_00_01_01_01_00 - * ; умрет
                            .byte off_case_00_01_01_01_01 - * ; умрет и серый экран
                            .byte off_case_00_01_01_01_02 - * ; умрет и отобьет
; bzk по идее может и словить с темно красным мерцанием, надо смотреть код, бывает ли такая ситуация
    ; pass cut может словить, а подкат почему-то нет

                                off_case_00_01_01_01_00:
                                ; летит низкий мяч/защитник убьется/tackle/умрет
                                    .byte con_jmp
                                    .word loc_9F62_рандом_анимации_отпизженного_игрока_2_с_сообщением

                                off_case_00_01_01_01_01:
                                ; летит низкий мяч/защитник убьется/tackle/умрет и серый экран
                                    .byte con_jsr
                                    .word sub_9F5C_рандом_анимации_отпизженного_игрока_1_с_сообщением
                                    .byte con_jmp
                                    .word loc_A240_серый_экран_после_касания_высого_мяча_телом

                                off_case_00_01_01_01_02:
                                ; летит низкий мяч/защитник убьется/tackle/умрет и отобьет
                                    .byte con_jsr
                                    .word sub_9F5C_рандом_анимации_отпизженного_игрока_1_с_сообщением
                                    .byte con_jmp
                                    .word loc_A371_мяч_улетает_в_сторону

                        off_case_00_01_01_02:
                        ; летит низкий мяч/защитник убьется/pass cut
                            .byte con_jsr
                            .word sub_9C7F_защитник_бежит_по_земле
                            .byte con_jsr
                            .word sub_A38F_полет_низкого_мяча_к_защитнику
                            .dbyt con_branch_short + con_bra_результат_действия_защитника
                            .byte off_case_00_01_01_02_00 - * ; умрет
                            .byte off_case_00_01_01_02_01 - * ; умрет и серый экран
                            .byte off_case_00_01_01_02_02 - * ; умрет и отобьет
                            .byte off_case_00_01_01_02_03 - * ; словит

                                off_case_00_01_01_02_00:
                                ; летит низкий мяч/защитник убьется/pass cut/умрет
                                    .byte con_jsr
                                    .word sub_A004_защитник_собирается_отбить_ногой_низкий_мяч
                                    .byte con_jsr
                                    .word sub_A2DD_ярко_красное_мерцание
                                    .byte con_jmp
                                    .word loc_9F62_рандом_анимации_отпизженного_игрока_2_с_сообщением

                                off_case_00_01_01_02_01:
                                ; летит низкий мяч/защитник убьется/pass cut/умрет и серый экран
                                    .byte con_jsr
                                    .word sub_A004_защитник_собирается_отбить_ногой_низкий_мяч
                                    .byte con_jsr
                                    .word sub_A2DD_ярко_красное_мерцание
                                    .byte con_jsr
                                    .word sub_9F5C_рандом_анимации_отпизженного_игрока_1_с_сообщением
                                    .byte con_jmp
                                    .word loc_A240_серый_экран_после_касания_высого_мяча_телом

                                off_case_00_01_01_02_02:
                                ; летит низкий мяч/защитник убьется/pass cut/умрет и отобьет
                                    .byte con_jsr
                                    .word sub_A004_защитник_собирается_отбить_ногой_низкий_мяч
                                    .byte con_jsr
                                    .word sub_A2DD_ярко_красное_мерцание
                                    .byte con_jsr
                                    .word sub_9F5C_рандом_анимации_отпизженного_игрока_1_с_сообщением
                                    .byte con_jmp
                                    .word loc_A371_мяч_улетает_в_сторону

                                off_case_00_01_01_02_03:
                                ; bzk wtf, возможно нереальный случай
                                ; летит низкий мяч/защитник убьется/pass cut/словит
                                    .byte con_jsr
                                    .word sub_A2DD_ярко_красное_мерцание
                                    .byte con_jmp
                                    .word loc_A164_защитник_ловит_низкий_мяч_ногой

        bra_long_case_00_02:
        ; летит высокий мяч
            .byte con_mirror_condition, $03       ; куда летит мяч
            .dbyt con_branch_short + con_bra_46_попытка_убийства_защитника
            .byte off_case_00_02_00 - * ; защитник выживет
            .byte off_case_00_02_01 - * ; защитник убьется

                off_case_00_02_00:
                ; летит высокий мяч/защитник выживет
                    .dbyt con_branch_short + con_bra_действие_защитника
                    .byte off_case_00_02_00_00 - * ; block
                    .byte off_case_00_02_00_01 - * ; tackle
                    .byte off_case_00_02_00_02 - * ; pass cut

                        off_case_00_02_00_00:
                        ; летит высокий мяч/защитник выживет/block
                            .dbyt con_branch_short + con_bra_результат_действия_защитника
                            .byte off_case_00_02_00_00_00 - * ; промахнется
                            .byte off_case_00_02_00_00_01 - * ; коснется
                            .byte off_case_00_02_00_00_02 - * ; отобьет
                            .byte off_case_00_02_00_00_03 - * ; словит

                                off_case_00_02_00_00_00:
                                ; летит высокий мяч/защитник выживет/block/промахнется
                                    .byte con_jsr
                                    .word sub_9C79_защитник_бежит_по_земле
                                    .byte con_jsr
                                    .word sub_B347_защитник_прыгает_к_летящему_мячу_блоком
                                    .byte con_jmp
                                    .word loc_A176_защитник_в_воздухе_не_касается_мяча_телом

                                off_case_00_02_00_00_01:
                                ; летит высокий мяч/защитник выживет/block/коснется
                                    .byte con_jsr
                                    .word sub_9C79_защитник_бежит_по_земле
                                    .byte con_jsr
                                    .word sub_B347_защитник_прыгает_к_летящему_мячу_блоком
                                    .byte con_jsr
                                    .word sub_A042_защитник_в_воздухе_собирается_коснуться_мяча_телом
                                    .byte con_jsr
                                    .word sub_A025_момент_касания_защитником_мяча_телом
                                    .byte con_jmp
                                    .word loc_A017_мяч_летит_дальше_после_касания_защитинком_мяча_телом


                                off_case_00_02_00_00_02:
                                ; летит высокий мяч/защитник выживет/block/отобьет
                                    .dbyt con_branch_short + con_bra_разновидность_block
                                    .byte off_case_00_02_00_00_02_00 - * ; block
                                    .byte off_case_00_02_00_00_02_01 - * ; face block
                                    .byte off_case_00_02_00_00_02_02 - * ; skylab block
                                    .byte off_case_00_02_00_00_02_03 - * ; power block

                                        off_case_00_02_00_00_02_00:
                                        off_case_00_02_00_00_02_02:
                                        off_case_00_02_00_00_02_03:
                                        ; летит высокий мяч/защитник выживет/block/отобьет/block, skylab block, power block
                                        loc_8C88_защитник_прыгает_и_отбивает_мяч_телом:
                                            .byte con_jsr
                                            .word sub_9C79_защитник_бежит_по_земле
                                            .byte con_jsr
                                            .word sub_B347_защитник_прыгает_к_летящему_мячу_блоком
                                            .byte con_jsr
                                            .word sub_A047_защитник_собирается_отбить_мяч_телом_после_прыжка
                                            .byte con_jsr
                                            .word sub_A023_процесс_отбивания_защитником_мяча_телом_после_прыжка
                                            .byte con_jmp
                                            .word loc_A371_мяч_улетает_в_сторону

                                        off_case_00_02_00_00_02_01:
                                        ; летит высокий мяч/защитник выживет/block/отобьет/face block
                                        loc_8C97_ishizaki_face_block_полная_анимация:
                                            .byte con_jsr
                                            .word sub_B347_защитник_прыгает_к_летящему_мячу_блоком
                                            .byte con_jmp
                                            .word loc_8F67_ishizaki_face_block_в_процессе

                                off_case_00_02_00_00_03:
                                ; летит высокий мяч/защитник выживет/block/словит
                                    .dbyt con_branch_short + con_bra_разновидность_block
                                    .byte off_case_00_02_00_00_03_00 - * ; block
                                    .byte off_case_00_02_00_00_03_01 - * ; face block
                                    .byte off_case_00_02_00_00_03_02 - * ; skylab block
                                    .byte off_case_00_02_00_00_03_03 - * ; power block

                                        off_case_00_02_00_00_03_00:
                                        off_case_00_02_00_00_03_02:
                                        off_case_00_02_00_00_03_03:
                                        ; летит высокий мяч/защитник выживет/block/словит/block, skylab block, power block
loc_8D38_защитник_ловит_блоком_высокий_мяч:
                                            .byte con_jsr
                                            .word sub_9C79_защитник_бежит_по_земле
                                            .byte con_jsr
                                            .word sub_B347_защитник_прыгает_к_летящему_мячу_блоком
                                            .byte con_jmp
                                            .word loc_A1A9_защитник_ловит_блоком_высокий_мяч

                                        off_case_00_02_00_00_03_01:
                                        ; летит высокий мяч/защитник выживет/block/словит/face block
                                            .byte con_jmp
                                            .word loc_8C97_ishizaki_face_block_полная_анимация

                        off_case_00_02_00_01:
                        ; летит высокий мяч/защитник выживет/tackle
                            .byte con_jsr
                            .word sub_9C79_защитник_бежит_по_земле
                            .byte con_jsr
                            .word sub_B2DC_игрок_прыгает_к_летящему_мячу_подкатом
                            .dbyt con_branch_short + con_bra_результат_действия_защитника
                            .byte off_case_00_02_00_01_00 - * ; промахнется
                            .byte off_case_00_02_00_01_01 - * ; коснется
                            .byte off_case_00_02_00_01_02 - * ; отобьет
                            .byte off_case_00_02_00_01_03 - * ; словит

                                off_case_00_02_00_01_00:
                                ; летит высокий мяч/защитник выживет/tackle/промахнется
                                    .byte con_jmp
                                    .word loc_A176_защитник_в_воздухе_не_касается_мяча_телом

                                off_case_00_02_00_01_01:
                                ; летит высокий мяч/защитник выживет/tackle/коснется
                                    .byte con_jsr
                                    .word sub_A042_защитник_в_воздухе_собирается_коснуться_мяча_телом
                                    .byte con_jsr
                                    .word sub_A025_момент_касания_защитником_мяча_телом
                                    .byte con_jmp
                                    .word loc_A017_мяч_летит_дальше_после_касания_защитинком_мяча_телом

                                off_case_00_02_00_01_02:
                                ; летит высокий мяч/защитник выживет/tackle/отобьет
                                    .byte con_jsr
                                    .word sub_A047_защитник_собирается_отбить_мяч_телом_после_прыжка
                                    .byte con_jsr
                                    .word sub_A023_процесс_отбивания_защитником_мяча_телом_после_прыжка
                                    .byte con_jmp
                                    .word loc_A371_мяч_улетает_в_сторону

                                off_case_00_02_00_01_03:
                                ; летит высокий мяч/защитник выживет/tackle/словит
                                    .byte con_jmp
                                    .word loc_A185_защитник_ловит_высокий_мяч_телом

                        off_case_00_02_00_02:
                        ; летит высокий мяч/защитник выживет/pass cut
                            .byte con_jsr
                            .word sub_9C79_защитник_бежит_по_земле
                            .byte con_jsr
                            .word sub_9DF8_защитник_прыгает_к_летящему_мячу_с_перехватом
                            .dbyt con_branch_short + con_bra_результат_действия_защитника
                            .byte off_case_00_02_00_02_00 - * ; промахнется
                            .byte off_case_00_02_00_02_01 - * ; коснется
                            .byte off_case_00_02_00_02_02 - * ; отобьет
                            .byte off_case_00_02_00_02_03 - * ; словит

                                off_case_00_02_00_02_00:
                                ; летит высокий мяч/защитник выживет/pass cut/промахнется
                                    .byte con_jmp
                                    .word loc_BF02_защитник_промахивается_ногой_по_высокому_мячу

                                off_case_00_02_00_02_01:
                                ; летит высокий мяч/защитник выживет/pass cut/коснется
                                    .byte con_jsr
                                    .word sub_A00B_защитник_собирается_коснуться_ногой_высокого_мяча
                                    .byte con_jsr
                                    .word sub_9FF3_в_процессе_касания_защитником_ногой_высого_мяча
                                    .byte con_jmp
                                    .word loc_9FE0_высокий_мяч_летит_дальше_после_касания_ногой_защитником

                                off_case_00_02_00_02_02:
                                ; летит высокий мяч/защитник выживет/pass cut/отобьет
                                    .byte con_jsr
                                    .word sub_A010_защитник_собирается_отбить_ногой_высокий_мяч
                                    .byte con_jsr
                                    .word sub_9FF1_защитник_в_процессе_отбития_ногой_низкого_мяча
                                    .byte con_jmp
                                    .word loc_A371_мяч_улетает_в_сторону

                                off_case_00_02_00_02_03:
                                ; летит высокий мяч/защитник выживет/pass cut/словит
                                    .byte con_jmp
                                    .word loc_A16E_защитник_ловит_высокий_мяч_ногой

                off_case_00_02_01:
                ; летит высокий мяч/защитник убьется
                    .dbyt con_branch_short + con_bra_действие_защитника
                    .byte off_case_00_02_01_00 - * ; block
                    .byte off_case_00_02_01_01 - * ; tackle
                    .byte off_case_00_02_01_02 - * ; pass cut

                        off_case_00_02_01_00:
                        ; летит высокий мяч/защитник убьется/block
                            .dbyt con_branch_short + con_bra_результат_действия_защитника
                            .byte off_case_00_02_01_00_00 - * ; промахнется
                            .byte off_case_00_02_01_00_01 - * ; коснется
                            .byte off_case_00_02_01_00_02 - * ; отобьет
                            .byte off_case_00_02_01_00_03 - * ; словит

                                off_case_00_02_01_00_00:
                                ; летит высокий мяч/защитник убьется/block/промахнется
                                    .byte con_jsr
                                    .word sub_9C79_защитник_бежит_по_земле
                                    .byte con_jsr
                                    .word sub_B347_защитник_прыгает_к_летящему_мячу_блоком
                                    .byte con_jsr
                                    .word sub_A047_защитник_собирается_отбить_мяч_телом_после_прыжка
                                    .byte con_jsr
                                    .word sub_A2DD_ярко_красное_мерцание
                                    .byte con_jmp
                                    .word loc_9F62_рандом_анимации_отпизженного_игрока_2_с_сообщением

                                off_case_00_02_01_00_01:
                                ; летит высокий мяч/защитник убьется/block/коснется
                                    .byte con_jsr
                                    .word sub_9C79_защитник_бежит_по_земле
                                    .byte con_jsr
                                    .word sub_B347_защитник_прыгает_к_летящему_мячу_блоком
                                    .byte con_jsr
                                    .word sub_A047_защитник_собирается_отбить_мяч_телом_после_прыжка
                                    .byte con_jsr
                                    .word sub_A2DD_ярко_красное_мерцание
                                    .byte con_jsr
                                    .word sub_9F5C_рандом_анимации_отпизженного_игрока_1_с_сообщением
                                    .byte con_jmp
                                    .word loc_A240_серый_экран_после_касания_высого_мяча_телом

                                off_case_00_02_01_00_02:
                                ; летит высокий мяч/защитник убьется/block/отобьет
                                    .dbyt con_branch_short + con_bra_разновидность_block
                                    .byte off_case_00_02_01_00_02_00 - * ; block
                                    .byte off_case_00_02_01_00_02_01 - * ; face block
                                    .byte off_case_00_02_01_00_02_02 - * ; skylab block
                                    .byte off_case_00_02_01_00_02_03 - * ; power block

                                        off_case_00_02_01_00_02_00:
                                        off_case_00_02_01_00_02_02:
                                        off_case_00_02_01_00_02_03:
                                        ; летит высокий мяч/защитник убьется/block/отобьет/block, skylab block, power block
                                            .byte con_jsr
                                            .word sub_9C79_защитник_бежит_по_земле
                                            .byte con_jsr
                                            .word sub_B347_защитник_прыгает_к_летящему_мячу_блоком
                                            .byte con_jsr
                                            .word sub_A047_защитник_собирается_отбить_мяч_телом_после_прыжка
                                            .byte con_jsr
                                            .word sub_A2DD_ярко_красное_мерцание
                                            .byte con_jsr
                                            .word sub_9F5C_рандом_анимации_отпизженного_игрока_1_с_сообщением
                                            .byte con_jmp
                                            .word loc_A371_мяч_улетает_в_сторону

                                        off_case_00_02_01_00_02_01:
                                        ; летит высокий мяч/защитник убьется/block/отобьет/face block
                                            .byte con_jmp
                                            .word loc_8C97_ishizaki_face_block_полная_анимация

                                off_case_00_02_01_00_03:
                                ; летит высокий мяч/защитник убьется/block/словит
                                    .dbyt con_branch_short + con_bra_разновидность_block
                                    .byte off_case_00_02_01_00_03_00 - * ; block
                                    .byte off_case_00_02_01_00_03_01 - * ; face block
                                    .byte off_case_00_02_01_00_03_02 - * ; skylab block
                                    .byte off_case_00_02_01_00_03_03 - * ; power block

                                        off_case_00_02_01_00_03_00:
                                        off_case_00_02_01_00_03_02:
                                        off_case_00_02_01_00_03_03:
                                        ; летит высокий мяч/защитник убьется/block/словит/block, skylab block, power block
                                            .byte con_jsr
                                            .word sub_9C79_защитник_бежит_по_земле
                                            .byte con_jsr
                                            .word sub_B347_защитник_прыгает_к_летящему_мячу_блоком
                                            .byte con_jsr
                                            .word sub_A2DD_ярко_красное_мерцание
                                            .byte con_jmp
                                            .word loc_A1A9_защитник_ловит_блоком_высокий_мяч

                                        off_case_00_02_01_00_03_01:
                                        ; летит высокий мяч/защитник убьется/block/словит/face block
                                            .byte con_jmp
                                            .word loc_8C97_ishizaki_face_block_полная_анимация

                        off_case_00_02_01_01:
                        ; летит высокий мяч/защитник убьется/tackle
                            .byte con_jsr
                            .word sub_9C79_защитник_бежит_по_земле
                            .byte con_jsr
                            .word sub_B2DC_игрок_прыгает_к_летящему_мячу_подкатом
                            .byte con_jsr
                            .word sub_A047_защитник_собирается_отбить_мяч_телом_после_прыжка
                            .byte con_jsr
                            .word sub_A2DD_ярко_красное_мерцание
                            .dbyt con_branch_short + con_bra_результат_действия_защитника
                            .byte off_case_00_02_01_01_00 - * ; умрет
                            .byte off_case_00_02_01_01_01 - * ; умрет и серый экран
                            .byte off_case_00_02_01_01_02 - * ; умрет и отобьет
; bzk по идее может и словить с темно красным мерцанием, надо смотреть код, бывает ли такая ситуация

                                off_case_00_02_01_01_00:
                                ; летит высокий мяч/защитник убьется/tackle/умрет
                                    .byte con_jmp
                                    .word loc_9F62_рандом_анимации_отпизженного_игрока_2_с_сообщением

                                off_case_00_02_01_01_01:
                                ; летит высокий мяч/защитник убьется/tackle/умрет и серый экран
                                    .byte con_jsr
                                    .word sub_9F5C_рандом_анимации_отпизженного_игрока_1_с_сообщением
                                    .byte con_jmp
                                    .word loc_A240_серый_экран_после_касания_высого_мяча_телом

                                off_case_00_02_01_01_02:
                                ; летит высокий мяч/защитник убьется/tackle/умрет и отобьет
                                    .byte con_jsr
                                    .word sub_9F5C_рандом_анимации_отпизженного_игрока_1_с_сообщением
                                    .byte con_jmp
                                    .word loc_A371_мяч_улетает_в_сторону

                        off_case_00_02_01_02:
                        ; летит высокий мяч/защитник убьется/pass cut
                            .byte con_jsr
                            .word sub_9C79_защитник_бежит_по_земле
                            .byte con_jsr
                            .word sub_9DF8_защитник_прыгает_к_летящему_мячу_с_перехватом
                            .dbyt con_branch_short + con_bra_результат_действия_защитника
                            .byte off_case_00_02_01_02_00 - * ; умрет
                            .byte off_case_00_02_01_02_01 - * ; умрет и серый экран
                            .byte off_case_00_02_01_02_02 - * ; умрет и отобьет
                            .byte off_case_00_02_01_02_03 - * ; словит

                                off_case_00_02_01_02_00:
                                ; летит высокий мяч/защитник убьется/pass cut/умрет
                                    .byte con_jsr
                                    .word sub_A010_защитник_собирается_отбить_ногой_высокий_мяч
                                    .byte con_jsr
                                    .word sub_A2DD_ярко_красное_мерцание
                                    .byte con_jmp
                                    .word loc_9F62_рандом_анимации_отпизженного_игрока_2_с_сообщением

                                off_case_00_02_01_02_01:
                                ; летит высокий мяч/защитник убьется/pass cut/умрет и серый экран
                                    .byte con_jsr
                                    .word sub_A010_защитник_собирается_отбить_ногой_высокий_мяч
                                    .byte con_jsr
                                    .word sub_A2DD_ярко_красное_мерцание
                                    .byte con_jsr
                                    .word sub_9F5C_рандом_анимации_отпизженного_игрока_1_с_сообщением
                                    .byte con_jmp
                                    .word loc_A240_серый_экран_после_касания_высого_мяча_телом

                                off_case_00_02_01_02_02:
                                ; летит высокий мяч/защитник убьется/pass cut/умрет и отобьет
                                    .byte con_jsr
                                    .word sub_A010_защитник_собирается_отбить_ногой_высокий_мяч
                                    .byte con_jsr
                                    .word sub_A2DD_ярко_красное_мерцание
                                    .byte con_jsr
                                    .word sub_9F5C_рандом_анимации_отпизженного_игрока_1_с_сообщением
                                    .byte con_jmp
                                    .word loc_A371_мяч_улетает_в_сторону

                                off_case_00_02_01_02_03:
                                ; bzk wtf, возможно нереальный случай
                                ; летит высокий мяч/защитник убьется/pass cut/умрет и словит
                                    .byte con_jsr
                                    .word sub_A2DD_ярко_красное_мерцание
                                    .byte con_jmp
                                    .word loc_A16E_защитник_ловит_высокий_мяч_ногой



_scenario_91F2_01:
    .byte con_mirror_condition, $01       ; номер защитника
    .dbyt con_branch_long + con_bra_высота_мяча
    .word bra_long_case_01_00 ; low
    .word bra_long_case_01_01 ; high

        bra_long_case_01_00:
        ; low
            .dbyt con_branch_short + con_bra_действие_атакующего
            .byte off_case_01_00_00 - * ; shoot
            .byte off_case_01_00_01 - * ; pass
            .byte off_case_01_00_02 - * ; trap
            .byte off_case_01_00_03 - * ; through

                off_case_01_00_00:
                ; low/shoot
                    .dbyt con_branch_short + con_bra_тип_удара_на_штрафной
                    .byte off_case_01_00_00_00 - * ; skylab hurricane
                    .byte off_case_01_00_00_01 - * ; skylab twin shot
                    .byte off_case_01_00_00_02 - * ; jumping volley
                    .byte off_case_01_00_00_03 - * ; rising dragon kick
                    .byte off_case_01_00_00_04 - * ; other shot

                        off_case_01_00_00_00:
                        ; low/shoot/skylab hurricane
                            .byte con_jmp
                            .word loc_AE4C_skylab_hurricane

                        off_case_01_00_00_01:
                        ; low/shoot/skylab twin shot
                            .byte con_jmp
                            .word loc_AED4_skylab_twin_shot

                        off_case_01_00_00_02:
                        ; low/shoot/jumping volley
                            .byte con_jmp
                            .word loc_B2A2_jumping_volley

                        off_case_01_00_00_03:
                        ; low/shoot/rising dragon kick
                        off_case_01_00_00_04:
                        ; low/shoot/other shot
                            .byte con_jmp
                            .word loc_B29B_бежать_к_мячу_на_штрафной_перед_совершением_выбранного_действия

                off_case_01_00_01:
                off_case_01_00_02:
                off_case_01_00_03:
                ; low/pass, trap, through
                    .byte con_jmp
                    .word loc_B29B_бежать_к_мячу_на_штрафной_перед_совершением_выбранного_действия

        bra_long_case_01_01:
        ; high
            .dbyt con_branch_short + con_bra_действие_атакующего
            .byte off_case_01_01_00 - * ; shoot
            .byte off_case_01_01_01 - * ; pass
            .byte off_case_01_01_02 - * ; trap
            .byte off_case_01_01_03 - * ; though

                off_case_01_01_00:
                ; high/shoot
                    .dbyt con_branch_short + con_bra_тип_удара_на_штрафной
                    .byte off_case_01_01_00_00 - * ; skylab hurricane
                    .byte off_case_01_01_00_01 - * ; skylab twin shot
                    .byte off_case_01_01_00_02 - * ; jumping volley
                    .byte off_case_01_01_00_03 - * ; rising dragon kick
                    .byte off_case_01_01_00_04 - * ; other shot

                        off_case_01_01_00_00:
                        ; high/shoot/skylab hurricane
                            .byte con_jmp
                            .word loc_AE4C_skylab_hurricane

                        off_case_01_01_00_01:
                        ; high/shoot/skylab twin shot
                            .byte con_jmp
                            .word loc_AED4_skylab_twin_shot

                        off_case_01_01_00_02:
                        ; high/shoot/jumping volley
                            .byte con_jmp
                            .word loc_AE64_прыгать_к_мячу_на_штрафной_перед_совершением_выбранного_действия

                        off_case_01_01_00_03:
                        ; high/shoot/rising dragon kick
                            .byte con_jmp
                            .word loc_AF31_rising_dragon_kick

                        off_case_01_01_00_04:
                        ; high/shoot/other shot
                            .byte con_jmp
                            .word loc_AE64_прыгать_к_мячу_на_штрафной_перед_совершением_выбранного_действия

                off_case_01_01_01:
                off_case_01_01_02:
                off_case_01_01_03:
                ; high/pass, trap, though
                    .byte con_jmp
                    .word loc_AE64_прыгать_к_мячу_на_штрафной_перед_совершением_выбранного_действия



_scenario_91FF_02:
    .byte con_mirror_condition, $01       ; номер защитника
    .dbyt con_branch_long + con_bra_защитник_полевой_или_кипер
    .word bra_long_case_02_00 ; защитник полевой
    .word bra_long_case_02_01 ; защитник кипер

        bra_long_case_02_00:
        ; защитник полевой
            .dbyt con_branch_short + con_bra_действ_защит_на_своей_штрафной
            .byte off_case_02_00_00 - * ; pass cut
            .byte off_case_02_00_01 - * ; interfere
            .byte off_case_02_00_02 - * ; mark

                off_case_02_00_00:
                ; защитник полевой/pass cut
                    .byte con_jmp
                    .word loc_9217

                off_case_02_00_01:
                ; защитник полевой/interfere
                    .byte con_jmp
                    .word loc_9217

                off_case_02_00_02:
                ; защитник полевой/mark
                    .byte con_jmp
                    .word loc_BD87

        bra_long_case_02_01:
        ; защитник кипер
            .byte con_mirror_condition, $03       ; куда летит мяч
            .dbyt con_branch_short + con_bra_dive_или_wait
            .byte off_case_02_01_00 - * ; dive
            .byte off_case_02_01_01 - * ; wait

                off_case_02_01_00:
                ; защитник кипер/dive
                    .dbyt con_branch_short + con_bra_высота_мяча
                    .byte off_case_02_01_00_00 - * ; low
                    .byte off_case_02_01_00_01 - * ; high

                        off_case_02_01_00_00:
                        ; защитник кипер/dive/low
                            .byte con_mirror_off
                            .byte con_moving_bg, $04
                            .byte con_pause + $2D
                            .byte con_s_bg_58
                            .byte con_s_anim_04
                            .byte con_s_cloud_F0_default ; s_cloud_3A
                            .byte con_rts

                        off_case_02_01_00_01:
                        ; защитник кипер/dive/high
                            .byte con_soundID_delay, $25, $02
                            .byte con_pause + $3C
                            .byte con_s_bg_2F
                            .byte con_s_anim_57
                            .byte con_s_cloud_F0_default ; s_cloud_3A
                            .byte con_rts

                off_case_02_01_01:
                ; защитник кипер/wait
                    .byte con_pause + $60
                    .byte con_s_bg_65
                    .byte con_s_anim_DA
                    .byte con_s_cloud_F0_default ; s_cloud_E7
                    .byte con_rts



_scenario_9BCB_04:
    .byte con_jsr
    .word sub_A2FE_сообщение_oh_на_мигающем_белом_фоне
    .byte con_quit



_scenario_9259_05:
loc_9259:
    .byte con_mirror_condition, $01       ; номер защитника
    .dbyt con_branch_short + con_bra_выживет_ли_защитник
    .byte off_case_05_00 - * ; защитник выживет
    .byte off_case_05_01 - * ; защитник убьется

        off_case_05_00:
        ; защитник выживет
            .byte con_quit

        off_case_05_01:
        ; защитник убьется
            .byte con_jmp
            .word loc_9F6E_рандом_анимации_отпизженного_игрока_3_с_сообщением



_scenario_9263_06:
    .byte con_mirror_condition, $01       ; номер защитника
    .dbyt con_branch_short + con_bra_защитник_полевой_или_кипер
    .byte off_case_06_00 - * ; защитник полевой
    .byte off_case_06_01 - * ; защитник кипер
    
        off_case_06_00:
        ; защитник полевой
        loc_9264:
            .byte con_mirror_condition, $01       ; номер защитника
            .dbyt con_branch_short + con_bra_выживет_ли_защитник
            .byte off_case_06_00_00 - * ; защитник выживет
            .byte off_case_06_00_01 - * ; защитник убьется

                off_case_06_00_00:
                ; защитник полевой/защитник выживет
                    .byte con_quit

                off_case_06_00_01:
                ; защитник полевой/защитник убьется
                    .byte con_mirror_condition, $01       ; номер защитника
                    .byte con_jsr
                    .word sub_9F62_рандом_анимации_отпизженного_игрока_2_с_сообщением
                    .byte con_quit

        off_case_06_01:
        ; защитник кипер
            .dbyt con_branch_short + con_bra_выживет_ли_защитник
            .byte off_case_06_01_00 - * ; защитник выживет
            .byte off_case_06_01_01 - * ; защитник убьется

                off_case_06_01_00:
                ; защитник кипер/защитник выживет
                    .byte con_quit

                off_case_06_01_01:
                ; защитник кипер/защитник убьется
                    .byte con_mirror_condition, $01       ; номер защитника
                    .byte con_jsr
                    .word sub_9FB5_убийство_кипера
                    .byte con_quit



_scenario_9285_07:
    .byte con_mirror_condition, $03       ; куда летит мяч
    .dbyt con_branch_long + con_bra_высота_мяча
    .word bra_long_case_07_00 ; low
    .word bra_long_case_07_01 ; high

        bra_long_case_07_00:
        ; low
            .dbyt con_branch_short + con_bra_выживет_ли_защитник
            .byte off_case_07_00_00 - * ; защитник выживет
            .byte off_case_07_00_01 - * ; защитник убьется

                off_case_07_00_00:
                ; low/защитник выживет
                    .dbyt con_branch_short + con_bra_результат_действия_защитника
                    .byte off_case_07_00_00_00 - * ; 
                    .byte off_case_07_00_00_01 - * ; 
                    .byte off_case_07_00_00_02 - * ; 
                    .byte off_case_07_00_00_03 - * ; 
                    .byte off_case_07_00_00_04 - * ; нарушение

                        off_case_07_00_00_00:
                        off_case_07_00_00_01:
                            .byte con_quit

                        off_case_07_00_00_02:
                            .byte con_jsr
                            .word sub_A371_мяч_улетает_в_сторону
                            .byte con_quit

                        off_case_07_00_00_03:
                            .dbyt con_branch_short + con_bra_08
                            .byte off_case_07_00_00_03_00 - * ; 
                            .byte off_case_07_00_00_03_01 - * ; 
                            .byte off_case_07_00_00_03_02 - * ; 

                                off_case_07_00_00_03_00:
                                    .byte con_jmp
                                    .word loc_A164_защитник_ловит_низкий_мяч_ногой

                                off_case_07_00_00_03_01:
                                    .byte con_jmp
                                    .word loc_A18D_игрок_делает_clear_ногой

                                off_case_07_00_00_03_02:
                                    .byte con_jmp
                                    .word loc_A079_кипер_ловит_мяч_после_нижнего_dive

                        off_case_07_00_00_04:
                            .byte con_jmp
                            .word loc_A35B_нарушение

                off_case_07_00_01:
                ; low/защитник убьется
                    .dbyt con_branch_short + con_bra_результат_действия_защитника
                    .byte off_case_07_00_01_00 - * ; 
                    .byte off_case_07_00_01_01 - * ; 
                    .byte off_case_07_00_01_02 - * ; 
                    .byte off_case_07_00_01_03 - * ; 
                    .byte off_case_07_00_01_04 - * ; нарушение

                        off_case_07_00_01_00:
                        off_case_07_00_01_01:
                            .byte con_quit

                        off_case_07_00_01_02:
                            .byte con_jsr
                            .word sub_A371_мяч_улетает_в_сторону
                            .byte con_quit

                        off_case_07_00_01_03:
                            .dbyt con_branch_short + con_bra_08
                            .byte off_case_07_00_01_03_00 - * ; 
                            .byte off_case_07_00_01_03_01 - * ; 
                            .byte off_case_07_00_01_03_02 - * ; 

                                off_case_07_00_01_03_00:
                                    .byte con_jmp
                                    .word loc_A16E_защитник_ловит_высокий_мяч_ногой

                                off_case_07_00_01_03_01:
                                ; !!! разве тут нужен не верхний clear?
                                   ;.word loc_A197_защитник_делает_clear_головой_из_своей_штрафной
                                    .byte con_jmp
                                    .word loc_A18D_игрок_делает_clear_ногой

                                off_case_07_00_01_03_02:
                                    .byte con_jmp
                                    .word loc_A083_кипер_ловит_мяч_после_верхнего_dive
                                  
                        off_case_07_00_01_04:  
                            .byte con_jmp
                            .word loc_A35B_нарушение

        bra_long_case_07_01:
        ; high
            .dbyt con_branch_short + con_bra_выживет_ли_защитник
            .byte off_case_07_01_00 - * ; защитник выживет
            .byte off_case_07_01_01 - * ; защитник убьется

                off_case_07_01_00:
                ; high/защитник выживет
                    .dbyt con_branch_short + con_bra_результат_действия_защитника
                    .byte off_case_07_01_00_00 - * ; 
                    .byte off_case_07_01_00_01 - * ; 
                    .byte off_case_07_01_00_02 - * ; 
                    .byte off_case_07_01_00_03 - * ; 
                    .byte off_case_07_01_00_04 - * ; нарушение

                        off_case_07_01_00_00:
                        off_case_07_01_00_01:
                            .byte con_quit

                        off_case_07_01_00_02:
                            .byte con_jsr
                            .word sub_A371_мяч_улетает_в_сторону
                            .byte con_quit

                        off_case_07_01_00_03:
                            .dbyt con_branch_short + con_bra_08
                            .byte off_case_07_01_00_03_00 - * ; 
                            .byte off_case_07_01_00_03_01 - * ; 
                            .byte off_case_07_01_00_03_02 - * ; 

                                off_case_07_01_00_03_00:
                                    .byte con_jmp
                                    .word loc_A16E_защитник_ловит_высокий_мяч_ногой

                                off_case_07_01_00_03_01:
                                    .byte con_jmp
                                    .word loc_A197_защитник_делает_clear_головой_из_своей_штрафной

                                off_case_07_01_00_03_02:
                                    .byte con_jmp
                                    .word loc_A083_кипер_ловит_мяч_после_верхнего_dive

                        off_case_07_01_00_04:
                            .byte con_jmp
                            .word loc_A35B_нарушение

                off_case_07_01_01:
                ; high/защитник убьется
                    .dbyt con_branch_short + con_bra_результат_действия_защитника
                    .byte off_case_07_01_01_00 - * ; 
                    .byte off_case_07_01_01_01 - * ; 
                    .byte off_case_07_01_01_02 - * ; 
                    .byte off_case_07_01_01_03 - * ; 
                    .byte off_case_07_01_01_04 - * ; нарушение

                        off_case_07_01_01_00:
                        off_case_07_01_01_01:
                            .byte con_quit

                        off_case_07_01_01_02:
                            .byte con_jsr
                            .word sub_A371_мяч_улетает_в_сторону
                            .byte con_quit

                        off_case_07_01_01_03:
                            .dbyt con_branch_short + con_bra_08
                            .byte off_case_07_01_01_03_00 - * ; 
                            .byte off_case_07_01_01_03_01 - * ; 
                            .byte off_case_07_01_01_03_02 - * ; 

                                off_case_07_01_01_03_00:
                                    .byte con_jmp
                                    .word loc_A16E_защитник_ловит_высокий_мяч_ногой

                                off_case_07_01_01_03_01:
                                    .byte con_jmp
                                    .word loc_A197_защитник_делает_clear_головой_из_своей_штрафной

                                off_case_07_01_01_03_02:
                                    .byte con_jmp
                                    .word loc_A083_кипер_ловит_мяч_после_верхнего_dive

                        off_case_07_01_01_04:
                            .byte con_jmp
                            .word loc_A35B_нарушение



_scenario_932C_08:
    .dbyt con_branch_long + con_bra_высота_мяча
    .word bra_long_case_08_00 ; low
    .word bra_long_case_08_01 ; high

        bra_long_case_08_00:
        ; low
            .dbyt con_branch_short + con_bra_действие_атакующего
            .byte off_case_08_00_00 - * ; shoot
            .byte off_case_08_00_01 - * ; pass
            .byte off_case_08_00_02 - * ; trap
            .byte off_case_08_00_03 - * ; through

                off_case_08_00_00:
                ; low/shoot
                    .byte con_mirror_condition, $03       ; куда летит мяч
                    .byte con_jmp
                    .word loc_9D9A_выбор_анимации_удара_по_низкому_мячу

                off_case_08_00_01:
                ; low/pass
loc_933C_low_pass_ногой_на_своей_штрафной:
                    .byte con_mirror_condition, $00
                    .byte con_jmp
                    .word loc_9E45_выбор_анимации_паса_с_земли_или_по_низкому_мячу

                off_case_08_00_02:
                ; low/trap
loc_9341_low_trap_ногой_на_своей_штрафной:
                    .byte con_mirror_condition, $03       ; куда летит мяч
                    .byte con_jmp
                    .word loc_B2C2_игрок_принимает_низкий_мяч_на_ногу

                off_case_08_00_03:
                ; low/through
                    .byte con_mirror_condition, $03       ; куда летит мяч
                    .byte con_jmp
                    .word loc_B442_игрок_делает_нижний_through

        bra_long_case_08_01:
        ; high
            .dbyt con_branch_short + con_bra_действие_атакующего
            .byte off_case_08_01_00 - * ; shoot
            .byte off_case_08_01_01 - * ; pass
            .byte off_case_08_01_02 - * ; dribble
            .byte off_case_08_01_03 - * ; 1-2 pass

                off_case_08_01_00:
                ; high/shoot
                    .byte con_mirror_condition, $03       ; куда летит мяч
                    .byte con_jmp
                    .word loc_9D52_выбор_анимации_удара_по_высокому_мячу

                off_case_08_01_01:
                ; high/pass
loc_9350:
                    .byte con_mirror_condition, $00
                    .byte con_jmp
                    .word loc_9E4F_пас_головой_в_воздухе

                off_case_08_01_02:
                ; high/dribble
                    .byte con_mirror_condition, $03       ; куда летит мяч
                    .byte con_jmp
                    .word loc_B2CC_игрок_принимает_высокий_мяч_на_живот_фон_облака

                off_case_08_01_03:
                ; high/1-2 pass
                    .byte con_mirror_condition, $03       ; куда летит мяч
                    .byte con_jmp
                    .word loc_B43D_игрок_делает_верхний_through



_scenario_9369_09:
    .byte con_mirror_condition, $03       ; куда летит мяч
    .byte con_jsr
    .word sub_9EF6_выбор_анимации_полета_удара
    .dbyt con_branch_long + con_bra_действие_защитника
    .word bra_long_case_09_00 ; catch
    .word bra_long_case_09_01 ; punch
    .word bra_long_case_09_02 ; triangle jump

        bra_long_case_09_00:
        ; catch
            .dbyt con_branch_long + con_bra_разновидность_catch
            .word bra_long_case_09_00_00 ; normal catch
            .word bra_long_case_09_00_01 ; rolling save
            .word bra_long_case_09_00_02 ; clone save
            .word bra_long_case_09_00_03 ; dark illusion

                bra_long_case_09_00_00:
                ; catch/normal catch
                    .byte con_jsr
                    .word sub_9F9C_крит_кипера
                    .dbyt con_branch_short + con_bra_выживет_ли_защитник
                    .byte off_case_09_00_00_00 - * ; кипер выживет
                    .byte off_case_09_00_00_01 - * ; кипер убьется

                        off_case_09_00_00_00:
                        ; catch/normal catch/кипер выживет
                            .dbyt con_branch_short + con_bra_результат_действия_защитника
                            .byte off_case_09_00_00_00_00 - * ; кипер пропустит обычный удар
                            .byte off_case_09_00_00_00_01 - * ; кипер пропустит спешал удар
                            .byte off_case_09_00_00_00_02 - * ; кипер с трудом отобьет
                            .byte off_case_09_00_00_00_03 - * ; кипер словит

                                off_case_09_00_00_00_00:
                                ; catch/normal catch/кипер выживет/кипер пропустит обычный удар
                                    .byte con_jmp
                                    .word loc_954A_09_00_00_00_00

                                off_case_09_00_00_00_01:
                                ; catch/normal catch/кипер выживет/кипер пропустит спешал удар
                                    .dbyt con_branch_short + con_bra_обычный_или_спешал
                                    .byte off_case_09_00_00_00_01_00 - * ; мяч не порвется
                                    .byte off_case_09_00_00_00_01_01 - * ; мяч порвется

                                        off_case_09_00_00_00_01_00:
                                        ; catch/normal catch/кипер выживет/кипер пропустит спешал удар/мяч не порвется
                                        loc_954A_09_00_00_00_00:
                                            .byte con_jsr
                                            .word sub_A094_кипер_не_дотягивается_до_мяча_при_ловле
                                            .dbyt con_branch_short + con_bra_результат_пропуска_мяча_кипером
                                            .byte off_case_954C_00 - * ; гол
                                            .byte off_case_954C_01 - * ; штанга
                                            .byte off_case_954C_02 - * ; защитник спасает
                                            .byte off_case_954C_03 - * ; штанга и добивание
                                            .byte off_case_954C_04 - * ; защитник промахнется и гол

                                                off_case_954C_00:
                                                ; catch/normal catch/кипер выживет/кипер пропустит обычный удар/гол
                                                    .byte con_jmp
                                                    .word loc_9C28_гол_и_проверка_на_рваную_сетку

                                                off_case_954C_01:
                                                ; catch/normal catch/кипер выживет/кипер пропустит обычный удар/штанга
                                                    .byte con_jmp
                                                    .word loc_9716_штанга

                                                off_case_954C_02:
                                                ; catch/normal catch/кипер выживет/кипер пропустит обычный удар/защитник спасает
                                                    .byte con_jmp
                                                    .word loc_9722_защитник_спасает

                                                off_case_954C_03:
                                                ; catch/normal catch/кипер выживет/кипер пропустит обычный удар/штанга и добивание
                                                    .byte con_jmp
                                                    .word loc_9731_штанга_и_добивание

                                                off_case_954C_04:
                                                ; catch/normal catch/кипер выживет/кипер пропустит обычный удар/защитник промахнется и гол
                                                    .byte con_jmp
                                                    .word loc_9743_защитник_промахнется_и_гол

                                        off_case_09_00_00_00_01_01:
                                        ; catch/normal catch/кипер выживет/кипер пропустит спешал удар/мяч порвется
                                            .byte con_jsr
                                            .word sub_A094_кипер_не_дотягивается_до_мяча_при_ловле
                                            .byte con_jmp
                                            .word loc_9755_мяч_порвется

                                off_case_09_00_00_00_02:
                                ; catch/normal catch/кипер выживет/кипер с трудом отобьет
                                    .byte con_jsr
                                    .word sub_A0A1_кипер_ловит_мяч_без_звука
loc_9572_белое_мерцание_мяч_улетает_попытка_включить_drive_tiger:
                                    .byte con_jsr
                                    .word sub_A308_белое_мерцание
                                    .byte con_jsr
                                    .word sub_B45D_мяч_улетает_в_сторону
                                    .byte con_jmp
                                    .word loc_9EF0_попытка_включить_drive_tiger

                                off_case_09_00_00_00_03:
                                ; catch/normal catch/кипер выживет/кипер словит
loc_957B_идеальный_сейв:
                                    .byte con_jsr
                                    .word sub_A0A6_кипер_ловит_мяч_со_звуком
                                    .byte con_jmp
                                    .word loc_9770_сообщение_об_идеальном_сейве

                        off_case_09_00_00_01:
                        ; catch/normal catch/кипер убьется
                            .dbyt con_branch_short + con_bra_результат_действия_защитника
                            .byte off_case_09_00_00_01_00 - * ; кипер пропустит обычный удар
                            .byte off_case_09_00_00_01_01 - * ; кипер коснется спешала и умрет
                            .byte off_case_09_00_00_01_02 - * ; кипер с трудом отобьет
                            .byte off_case_09_00_00_01_03 - * ; кипер словит

                                off_case_09_00_00_01_00:
                                ; catch/normal catch/кипер убьется/кипер пропустит обычный удар
                                    .byte con_jmp
                                    .word loc_9594_09_00_00_01_00

                                off_case_09_00_00_01_01:
                                ; catch/normal catch/кипер убьется/кипер коснется спешала и умрет
                                    .dbyt con_branch_short + con_bra_обычный_или_спешал
                                    .byte off_case_09_00_00_01_01_00 - * ; мяч не порвется
                                    .byte off_case_09_00_00_01_01_01 - * ; мяч порвется

                                        off_case_09_00_00_01_01_00:
                                        ; catch/normal catch/кипер убьется/кипер коснется спешала и умрет/мяч не порвется
                                        loc_9594_09_00_00_01_00:
                                            .byte con_jsr
                                            .word sub_A0A1_кипер_ловит_мяч_без_звука
                                            .dbyt con_branch_short + con_bra_результат_пропуска_мяча_кипером
                                            .byte off_case_9596_00 - * ; гол
                                            .byte off_case_9596_01 - * ; штанга
                                            .byte off_case_9596_02 - * ; защитник спасает
                                            .byte off_case_9596_03 - * ; штанга и добивание
                                            .byte off_case_9596_04 - * ; защитник не спасает и гол

                                                off_case_9596_00:
                                                ; catch/normal catch/кипер убьется/кипер коснется спешала и умрет/мяч не порвется/гол
                                                    .byte con_jmp
                                                    .word loc_978A_убийство_кипера_и_гол

                                                off_case_9596_01:
                                                ; catch/normal catch/кипер убьется/кипер коснется спешала и умрет/мяч не порвется/штанга
                                                    .byte con_jmp
                                                    .word loc_9799_убийство_кипера_и_штанга

                                                off_case_9596_02:
                                                ; catch/normal catch/кипер убьется/кипер коснется спешала и умрет/мяч не порвется/защитник спасает
                                                    .byte con_jmp
                                                    .word loc_97AB_убийство_кипера_и_защитник_спасает

                                                off_case_9596_03:
                                                ; catch/normal catch/кипер убьется/кипер коснется спешала и умрет/мяч не порвется/штанга и добивание
                                                    .byte con_jmp
                                                    .word loc_97C3_убийство_кипера_и_добивание_от_штанги

                                                off_case_9596_04:
                                                ; catch/normal catch/кипер убьется/кипер коснется спешала и умрет/мяч не порвется/защитник не спасает и гол
                                                    .byte con_jmp
                                                    .word loc_97DB_убийство_кипера_и_защитника_и_гол

                                        off_case_09_00_00_01_01_01:
                                        ; catch/normal catch/кипер убьется/кипер коснется спешала и умрет/мяч порвется
                                            .byte con_jsr
                                            .word sub_A0A1_кипер_ловит_мяч_без_звука
                                            .byte con_jmp
                                            .word loc_97F3_мяч_порвется_после_убийства_кипера

                                off_case_09_00_00_01_02:
                                ; catch/normal catch/кипер убьется/кипер с трудом отобьет
                                    .byte con_jsr
                                    .word sub_A0A1_кипер_ловит_мяч_без_звука
loc_95BC_убийство_кипера_и_мяч_отлетает:
                                    .byte con_jsr
                                    .word sub_A2DD_ярко_красное_мерцание
                                    .byte con_jsr
                                    .word sub_9FB5_убийство_кипера
                                    .byte con_jsr
                                    .word sub_A371_мяч_улетает_в_сторону
                                    .byte con_jmp
                                    .word loc_9EF0_попытка_включить_drive_tiger

                                off_case_09_00_00_01_03:
                                ; catch/normal catch/кипер убьется/кипер словит
                                    .byte con_jmp
                                    .word loc_957B_идеальный_сейв

                bra_long_case_09_00_01:
                ; catch/rolling save
                    .dbyt con_branch_short + con_bra_выживет_ли_защитник
                    .byte off_case_09_00_01_00 - * ; защитник выживет
                    .byte off_case_09_00_01_01 - * ; защитник убьется

                        off_case_09_00_01_00:
                        ; catch/rolling save/кипер выживет
                            .dbyt con_branch_short + con_bra_результат_действия_защитника
                            .byte off_case_09_00_01_00_00 - * ; кипер пропустит обычный удар
                            .byte off_case_09_00_01_00_01 - * ; кипер пропустит спешал удар
                            .byte off_case_09_00_01_00_02 - * ; кипер с трудом отобьет
                            .byte off_case_09_00_01_00_03 - * ; кипер словит

                                off_case_09_00_01_00_00:
                                ; catch/rolling save/кипер выживет/кипер пропустит обычный удар
                                    .byte con_jmp
                                    .word loc_95DC_09_00_01_00_00

                                off_case_09_00_01_00_01:
                                ; catch/rolling save/кипер выживет/кипер пропустит спешал удар
                                    .dbyt con_branch_short + con_bra_обычный_или_спешал
                                    .byte off_case_09_00_01_00_01_00 - * ; мяч не порвется
                                    .byte off_case_09_00_01_00_01_01 - * ; мяч порвется

                                        off_case_09_00_01_00_01_00:
                                        ; catch/rolling save/кипер выживет/кипер пропустит спешал удар/мяч не порвется
                                        loc_95DC_09_00_01_00_00:
                                            .byte con_jsr
                                            .word sub_A0CD_rolling_save_полная_анимация
                                            .dbyt con_branch_short + con_bra_результат_пропуска_мяча_кипером
                                            .byte off_case_95DD_00 - * ; гол
                                            .byte off_case_95DD_01 - * ; штанга
                                            .byte off_case_95DD_02 - * ; защитник спасает
                                            .byte off_case_95DD_03 - * ; штанга и добивание
                                            .byte off_case_95DD_04 - * ; защитник промахнется и гол

                                                off_case_95DD_00:
                                                ; catch/rolling save/кипер выживет/кипер пропустит спешал удар/мяч не порвется/гол
                                                    .byte con_jmp
                                                    .word loc_970A_кипер_промахивается_кулаком_после_спешаша_и_гол

                                                off_case_95DD_01:
                                                ; catch/rolling save/кипер выживет/кипер пропустит спешал удар/мяч не порвется/штанга
                                                    .byte con_jmp
                                                    .word loc_9713_кипер_промахивается_кулаком_после_спешаша_и_штанга

                                                off_case_95DD_02:
                                                ; catch/rolling save/кипер выживет/кипер пропустит спешал удар/мяч не порвется/защитник спасает
                                                    .byte con_jmp
                                                    .word loc_971F_кипер_промахивается_кулаком_после_спешаша_и_защитник_спасает

                                                off_case_95DD_03:
                                                ; catch/rolling save/кипер выживет/кипер пропустит спешал удар/мяч не порвется/штанга и добивание
                                                    .byte con_jmp
                                                    .word loc_972E_кипер_промахивается_кулаком_после_спешаша_и_добивание_от_штанги

                                                off_case_95DD_04:
                                                ; catch/rolling save/кипер выживет/кипер пропустит спешал удар/мяч не порвется/защитник промахнется и гол
                                                    .byte con_jmp
                                                    .word loc_9740_кипер_промахивается_кулаком_после_спешаша_и_защитник_промахивается_и_гол

                                        off_case_09_00_01_00_01_01:
                                        ; catch/rolling save/кипер выживет/кипер пропустит спешал удар/мяч порвется
                                            .byte con_jsr
                                            .word sub_A0CD_rolling_save_полная_анимация
                                            .byte con_jmp
                                            .word loc_9752_кипер_промахивается_кулаком_после_спешаша_и_мяч_порвется

                                off_case_09_00_01_00_02:
                                ; catch/rolling save/кипер выживет/кипер с трудом отобьет
                                    .byte con_jsr
                                    .word sub_A0CD_rolling_save_полная_анимация
                                    .byte con_jmp
                                    .word loc_975E_кипер_с_трудом_отбивает_кулаком

                                off_case_09_00_01_00_03:
                                ; catch/rolling save/кипер выживет/кипер словит
loc_9607_rolling_save_и_ловля_мяча:
                                    .byte con_jsr
                                    .word sub_A0CD_rolling_save_полная_анимация
                                    .byte con_jmp
                                    .word loc_976D_кипер_ловит_мяч

                        off_case_09_00_01_01:
                        ; catch/rolling save/кипер убьется
                            .dbyt con_branch_short + con_bra_результат_действия_защитника     ; результат действия кипера
                            .byte off_case_09_00_01_01_00 - * ; кипер пропустит обычный удар
                            .byte off_case_09_00_01_01_01 - * ; кипер коснется спешала и умрет
                            .byte off_case_09_00_01_01_02 - * ; кипер с трудом отобьет
                            .byte off_case_09_00_01_01_03 - * ; кипер словит

                                off_case_09_00_01_01_00:
                                ; catch/rolling save/кипер убьется/кипер пропустит обычный удар
                                    .byte con_jmp
                                    .word loc_9620_09_00_01_01_00

                                off_case_09_00_01_01_01:
                                ; catch/rolling save/кипер убьется/кипер пропустит спешал удар
                                    .dbyt con_branch_short + con_bra_обычный_или_спешал
                                    .byte off_case_09_00_01_01_01_00 - * ; мяч не порвется
                                    .byte off_case_09_00_01_01_01_01 - * ; мяч порвется

                                        off_case_09_00_01_01_01_00:
                                        ; catch/rolling save/кипер убьется/кипер пропустит спешал удар/мяч не порвется
                                        loc_9620_09_00_01_01_00:
                                            .byte con_jsr
                                            .word sub_A0CD_rolling_save_полная_анимация
                                            .dbyt con_branch_short + con_bra_результат_пропуска_мяча_кипером
                                            .byte off_case_9621_00 - * ; гол
                                            .byte off_case_9621_01 - * ; штанга
                                            .byte off_case_9621_02 - * ; защитник спасает
                                            .byte off_case_9621_03 - * ; штанга и добивание
                                            .byte off_case_9621_04 - * ; защитник не спасает и гол

                                                off_case_9621_00:
                                                ; catch/rolling save/кипер убьется/кипер пропустит спешал удар/мяч не порвется/гол
                                                    .byte con_jmp
                                                    .word loc_9787_кипер_убивается_после_спешала_и_гол

                                                off_case_9621_01:
                                                ; catch/rolling save/кипер убьется/кипер пропустит спешал удар/мяч не порвется/штанга
                                                    .byte con_jmp
                                                    .word loc_9796_кипер_убивается_после_спешала_и_штанга

                                                off_case_9621_02:
                                                ; catch/rolling save/кипер убьется/кипер пропустит спешал удар/мяч не порвется/защитник спасает
                                                    .byte con_jmp
                                                    .word loc_97A8_кипер_убивается_после_спешала_и_защитник_спасает

                                                off_case_9621_03:
                                                ; catch/rolling save/кипер убьется/кипер пропустит спешал удар/мяч не порвется/штанга и добивание
                                                    .byte con_jmp
                                                    .word loc_97C0_кипер_убивается_после_спешала_и_добивание_от_штанги

                                                off_case_9621_04:
                                                ; catch/rolling save/кипер убьется/кипер пропустит спешал удар/мяч не порвется/защитник не спасает и гол
                                                    .byte con_jmp
                                                    .word loc_97D8_кипер_убивается_после_спешала_и_защитник_убивается_и_гол

                                        off_case_09_00_01_01_01_01:
                                        ; catch/rolling save/кипер убьется/кипер пропустит спешал удар/мяч не порвется
                                            .byte con_jsr
                                            .word sub_A0CD_rolling_save_полная_анимация
                                            .byte con_jmp
                                            .word loc_97F0_кипер_убивается_после_своего_спешала_и_мяч_порвется

                                off_case_09_00_01_01_02:
                                ; catch/rolling save/кипер убьется/кипер пропустит спешал удар/кипер с трудом отобьет
                                    .byte con_jsr
                                    .word sub_A0CD_rolling_save_полная_анимация
                                    .byte con_jmp
                                    .word loc_9802_кипер_убивается_после_спешала_и_отбивает

                                off_case_09_00_01_01_03:
                                ; catch/rolling save/кипер убьется/кипер пропустит спешал удар/кипер словит
                                    .byte con_jmp
                                    .word loc_9607_rolling_save_и_ловля_мяча

                bra_long_case_09_00_02:
                ; catch/clone save
                    .dbyt con_branch_short + con_bra_выживет_ли_защитник
                    .byte off_case_09_00_02_00 - * ; кипер выживет
                    .byte off_case_09_00_02_01 - * ; кипер убьется

                        off_case_09_00_02_00:
                        ; catch/clone save/кипер выживет
                            .dbyt con_branch_short + con_bra_результат_действия_защитника
                            .byte off_case_09_00_02_00_00 - * ; кипер пропустит обычный удар
                            .byte off_case_09_00_02_00_01 - * ; кипер пропустит спешал удар
                            .byte off_case_09_00_02_00_02 - * ; кипер с трудом отобьет
                            .byte off_case_09_00_02_00_03 - * ; кипер словит

                                off_case_09_00_02_00_00:
                                ; catch/clone save/кипер выживет/кипер пропустит обычный удар
                                    .byte con_jmp
                                    .word loc_9660_09_00_02_00_00

                                off_case_09_00_02_00_01:
                                ; catch/clone save/кипер выживет/кипер пропустит спешал удар
                                    .dbyt con_branch_short + con_bra_обычный_или_спешал
                                    .byte off_case_09_00_02_00_01_00 - * ; мяч не порвется
                                    .byte off_case_09_00_02_00_01_01 - * ; мяч порвется

                                        off_case_09_00_02_00_01_00:
                                        ; catch/clone save/кипер выживет/кипер пропустит спешал удар/мяч не порвется
                                        loc_9660_09_00_02_00_00:
                                            .byte con_jsr
                                            .word sub_A1FF_clone_save
                                            .dbyt con_branch_short + con_bra_результат_пропуска_мяча_кипером
                                            .byte off_case_9660_00 - * ; гол
                                            .byte off_case_9660_01 - * ; штанга
                                            .byte off_case_9660_02 - * ; защитник спасает
                                            .byte off_case_9660_03 - * ; штанга и добивание
                                            .byte off_case_9660_04 - * ; защитник промахнется и гол

                                                off_case_9660_00:
                                                ; catch/clone save/кипер выживет/кипер пропустит спешал удар/мяч не порвется/гол
                                                    .byte con_jmp
                                                    .word loc_970A_кипер_промахивается_кулаком_после_спешаша_и_гол

                                                off_case_9660_01:
                                                ; catch/clone save/кипер выживет/кипер пропустит спешал удар/мяч не порвется/штанга
                                                    .byte con_jmp
                                                    .word loc_9713_кипер_промахивается_кулаком_после_спешаша_и_штанга

                                                off_case_9660_02:
                                                ; catch/clone save/кипер выживет/кипер пропустит спешал удар/мяч не порвется/защитник спасает
                                                    .byte con_jmp
                                                    .word loc_971F_кипер_промахивается_кулаком_после_спешаша_и_защитник_спасает

                                                off_case_9660_03:
                                                ; catch/clone save/кипер выживет/кипер пропустит спешал удар/мяч не порвется/штанга и добивание
                                                    .byte con_jmp
                                                    .word loc_972E_кипер_промахивается_кулаком_после_спешаша_и_добивание_от_штанги

                                                off_case_9660_04:
                                                ; catch/clone save/кипер выживет/кипер пропустит спешал удар/мяч не порвется/защитник промахнется и гол
                                                    .byte con_jmp
                                                    .word loc_9740_кипер_промахивается_кулаком_после_спешаша_и_защитник_промахивается_и_гол

                                        off_case_09_00_02_00_01_01:
                                        ; catch/clone save/кипер выживет/кипер пропустит спешал удар/мяч не порвется
                                            .byte con_jsr
                                            .word sub_A1FF_clone_save
                                            .byte con_jmp
                                            .word loc_9752_кипер_промахивается_кулаком_после_спешаша_и_мяч_порвется

                                off_case_09_00_02_00_02:
                                ; catch/clone save/кипер выживет/кипер с трудом отобьет
                                    .byte con_jsr
                                    .word sub_A1FF_clone_save
                                    .byte con_jmp
                                    .word loc_975E_кипер_с_трудом_отбивает_кулаком

                                off_case_09_00_02_00_03:
                                ; catch/clone save/кипер выживет/кипер словит
                                loc_968A_clone_save_и_ловля_мяча:
                                    .byte con_jsr
                                    .word sub_A1FF_clone_save
                                    .byte con_jmp
                                    .word loc_976D_кипер_ловит_мяч

                        off_case_09_00_02_01:
                        ; catch/clone save/кипер убьется
                            .dbyt con_branch_short + con_bra_результат_действия_защитника
                            .byte off_case_09_00_02_01_00 - * ; кипер пропустит обычный удар
                            .byte off_case_09_00_02_01_01 - * ; кипер коснется спешала и умрет
                            .byte off_case_09_00_02_01_02 - * ; кипер с трудом отобьет
                            .byte off_case_09_00_02_01_03 - * ; кипер словит

                                off_case_09_00_02_01_00:
                                ; catch/clone save/кипер убьется/кипер пропустит обычный удар
                                    .byte con_jmp
                                    .word loc_96A3_09_00_02_01_00

                                off_case_09_00_02_01_01:
                                ; catch/clone save/кипер убьется/кипер коснется спешала и умрет
                                    .dbyt con_branch_short + con_bra_обычный_или_спешал
                                    .byte off_case_09_00_02_01_01_00 - * ; мяч не порвется
                                    .byte off_case_09_00_02_01_01_01 - * ; мяч порвется

                                        off_case_09_00_02_01_01_00:
                                        ; catch/clone save/кипер убьется/кипер коснется спешала и умрет/мяч не порвется
                                        loc_96A3_09_00_02_01_00:
                                            .byte con_jsr
                                            .word sub_A1FF_clone_save
                                            .dbyt con_branch_short + con_bra_результат_пропуска_мяча_кипером
                                            .byte off_case_96A4_00 - * ; гол
                                            .byte off_case_96A4_01 - * ; штанга
                                            .byte off_case_96A4_02 - * ; защитник спасает
                                            .byte off_case_96A4_03 - * ; штанга и добивание
                                            .byte off_case_96A4_04 - * ; защитник не спасает и гол

                                                off_case_96A4_00:
                                                ; catch/clone save/кипер убьется/кипер коснется спешала и умрет/мяч не порвется/гол
                                                    .byte con_jmp
                                                    .word loc_9787_кипер_убивается_после_спешала_и_гол

                                                off_case_96A4_01:
                                                ; catch/clone save/кипер убьется/кипер коснется спешала и умрет/мяч не порвется/штанга
                                                    .byte con_jmp
                                                    .word loc_9796_кипер_убивается_после_спешала_и_штанга

                                                off_case_96A4_02:
                                                ; catch/clone save/кипер убьется/кипер коснется спешала и умрет/мяч не порвется/зашитник спасает
                                                    .byte con_jmp
                                                    .word loc_97A8_кипер_убивается_после_спешала_и_защитник_спасает

                                                off_case_96A4_03:
                                                ; catch/clone save/кипер убьется/кипер коснется спешала и умрет/мяч не порвется/штанга и добивание
                                                    .byte con_jmp
                                                    .word loc_97C0_кипер_убивается_после_спешала_и_добивание_от_штанги

                                                off_case_96A4_04:
                                                ; catch/clone save/кипер убьется/кипер коснется спешала и умрет/мяч не порвется/защитник не спасает и гол
                                                    .byte con_jmp
                                                    .word loc_97D8_кипер_убивается_после_спешала_и_защитник_убивается_и_гол

                                        off_case_09_00_02_01_01_01:
                                        ; catch/clone save/кипер убьется/мяч порвется
                                            .byte con_jsr
                                            .word sub_A1FF_clone_save
                                            .byte con_jmp
                                            .word loc_97F0_кипер_убивается_после_своего_спешала_и_мяч_порвется

                                off_case_09_00_02_01_02:
                                ; catch/clone save/кипер убьется/кипер с трудом отобьет
                                    .byte con_jsr
                                    .word sub_A1FF_clone_save
                                    .byte con_jmp
                                    .word loc_9802_кипер_убивается_после_спешала_и_отбивает

                                off_case_09_00_02_01_03:
                                ; catch/clone save/кипер убьется/кипер словит
                                    .byte con_jmp
                                    .word loc_968A_clone_save_и_ловля_мяча

                bra_long_case_09_00_03:
                ; catch/dark illusion
                    .dbyt con_branch_short + con_bra_выживет_ли_защитник
                    .byte off_case_09_00_03_00 - * ; кипер выживет
                    .byte off_case_09_00_03_01 - * ; кипер убьется

                        off_case_09_00_03_00:
                        ; catch/dark illusion/кипер выживет
                            .dbyt con_branch_short + con_bra_результат_действия_защитника
                            .byte off_case_09_00_03_00_00 - * ; кипер пропустит обычный удар
                            .byte off_case_09_00_03_00_01 - * ; кипер пропустит спешал удар
                            .byte off_case_09_00_03_00_02 - * ; кипер с трудом отобьет
                            .byte off_case_09_00_03_00_03 - * ; кипер словит

                                off_case_09_00_03_00_00:
                                ; catch/dark illusion/кипер выживет/кипер пропустит обычный удар
                                    .byte con_jmp
                                    .word loc_96E2_09_00_03_00_00

                                off_case_09_00_03_00_01:
                                ; catch/dark illusion/кипер выживет/кипер пропустит спешал удар
                                    .dbyt con_branch_short + con_bra_обычный_или_спешал
                                    .byte off_case_09_00_03_00_01_00 - * ; мяч не порвется
                                    .byte off_case_09_00_03_00_01_01 - * ; мяч порвется

                                        off_case_09_00_03_00_01_00:
                                        ; catch/dark illusion/кипер выживет/кипер пропустит спешал удар/мяч не порвется
                                        loc_96E2_09_00_03_00_00:
                                            .byte con_jsr
                                            .word sub_A1E4_dark_illusion
                                            .dbyt con_branch_short + con_bra_результат_пропуска_мяча_кипером
                                            .byte off_case_9707_00 - * ; гол
                                            .byte off_case_9707_01 - * ; штанга
                                            .byte off_case_9707_02 - * ; защитник спасает
                                            .byte off_case_9707_03 - * ; штанга и добивание
                                            .byte off_case_9707_04 - * ; защитник промахнется и гол

                                                off_case_9707_00:
                                                ; catch/dark illusion/кипер выживет/кипер пропустит спешал удар/мяч не порвется/гол
                                                loc_970A_кипер_промахивается_кулаком_после_спешаша_и_гол:
                                                    .byte con_jsr
                                                    .word sub_A109_кипер_промахивается_кулаком_после_спешала
                                                    .byte con_jmp
                                                    .word loc_9C28_гол_и_проверка_на_рваную_сетку

                                                off_case_9707_01:
                                                ; catch/dark illusion/кипер выживет/кипер пропустит спешал удар/мяч не порвется/штанга
                                                loc_9713_кипер_промахивается_кулаком_после_спешаша_и_штанга:
                                                    .byte con_jsr
                                                    .word sub_A109_кипер_промахивается_кулаком_после_спешала
loc_9716_штанга:
                                                    .byte con_jsr
                                                    .word sub_A24E_штанга_со_звуком
                                                    .byte con_jmp
                                                    .word loc_A258_полет_мяча_после_отскока_от_штанги

                                                off_case_9707_02:
                                                ; catch/dark illusion/кипер выживет/кипер пропустит спешал удар/мяч не порвется/защитник спасает
                                                loc_971F_кипер_промахивается_кулаком_после_спешаша_и_защитник_спасает:
                                                    .byte con_jsr
                                                    .word sub_A109_кипер_промахивается_кулаком_после_спешала
loc_9722_защитник_спасает:
                                                    .byte con_jsr
                                                    .word sub_A0B6_защитник_касается_мяча_при_спасении_ворот
                                                    .byte con_jsr
                                                    .word sub_A312_небольшая_пауза
                                                    .byte con_jmp
                                                    .word loc_A371_мяч_улетает_в_сторону

                                                off_case_9707_03:
                                                ; catch/dark illusion/кипер выживет/кипер пропустит спешал удар/мяч не порвется/штанга и добивание
                                                loc_972E_кипер_промахивается_кулаком_после_спешаша_и_добивание_от_штанги:
                                                    .byte con_jsr
                                                    .word sub_A109_кипер_промахивается_кулаком_после_спешала
loc_9731_штанга_и_добивание:
                                                    .byte con_jsr
                                                    .word sub_A24E_штанга_со_звуком
                                                    .byte con_jsr
                                                    .word sub_A258_полет_мяча_после_отскока_от_штанги
                                                    .byte con_jsr
                                                    .word sub_A212_добивание_отскока_от_штанги_соперником
                                                    .byte con_jmp
                                                    .word loc_9C28_гол_и_проверка_на_рваную_сетку

                                                off_case_9707_04:
                                                ; catch/dark illusion/кипер выживет/кипер пропустит спешал удар/мяч не порвется/защитник промахнется и гол
                                                loc_9740_кипер_промахивается_кулаком_после_спешаша_и_защитник_промахивается_и_гол:
                                                    .byte con_jsr
                                                    .word sub_A109_кипер_промахивается_кулаком_после_спешала
loc_9743_защитник_промахнется_и_гол:
                                                    .byte con_jsr
                                                    .word sub_A0BE_защитник_промахивается
                                                    .byte con_jmp
                                                    .word loc_9C28_гол_и_проверка_на_рваную_сетку

                                        off_case_09_00_03_00_01_01:
                                        ; catch/dark illusion/кипер выживет/кипер пропустит спешал удар/мяч порвется
                                            .byte con_jsr
                                            .word sub_A1E4_dark_illusion
loc_9752_кипер_промахивается_кулаком_после_спешаша_и_мяч_порвется:
                                            .byte con_jsr
                                            .word sub_A109_кипер_промахивается_кулаком_после_спешала
loc_9755_мяч_порвется:
                                            .byte con_jsr
                                            .word sub_A2F4_сообщение_oops_на_мигающем_белом_фоне
                                            .byte con_jmp
                                            .word loc_A364_рваный_мяч

                                off_case_09_00_03_00_02:
                                ; catch/dark illusion/кипер выживет/кипер с трудом отобьет
                                    .byte con_jsr
                                    .word sub_A1E4_dark_illusion
loc_975E_кипер_с_трудом_отбивает_кулаком:
                                    .byte con_jsr
                                    .word sub_BF04_кипер_собирается_напороться_кулаком_на_мяч
                                    .byte con_jsr
                                    .word sub_A308_белое_мерцание
                                    .byte con_jsr
                                    .word sub_A371_мяч_улетает_в_сторону
                                    .byte con_jmp
                                    .word loc_9EF0_попытка_включить_drive_tiger

                                off_case_09_00_03_00_03:
                                ; catch/dark illusion/кипер выживет/кипер словит
                                loc_9783:
                                    .byte con_jsr
                                    .word sub_A1E4_dark_illusion
loc_976D_кипер_ловит_мяч:
                                    .byte con_jsr
                                    .word sub_A099_анимация_кипер_мгновенно_ловит_мяч
loc_9770_сообщение_об_идеальном_сейве:
                                    .byte con_jsr
                                    .word sub_B44E_кипер_идеально_засейвил
                                    .byte con_jmp
                                    .word loc_9EF0_попытка_включить_drive_tiger

                        off_case_09_00_03_01:
                        ; catch/dark illusion/кипер убьется
                            .dbyt con_branch_short + con_bra_результат_действия_защитника
                            .byte off_case_09_00_03_01_00 - * ; кипер пропустит обычный удар
                            .byte off_case_09_00_03_01_01 - * ; кипер коснется спешала и умрет
                            .byte off_case_09_00_03_01_02 - * ; кипер с трудом отобьет
                            .byte off_case_09_00_03_01_03 - * ; кипер словит

                                off_case_09_00_03_01_00:
                                ; catch/dark illusion/кипер убьется/кипер пропустит обычный удар
                                    .byte con_jmp
                                    .word loc_9782_09_00_03_01_00

                                off_case_09_00_03_01_01:
                                ; catch/dark illusion/кипер убьется/кипер коснется спешала и умрет
                                    .dbyt con_branch_short + con_bra_обычный_или_спешал
                                    .byte off_case_09_00_03_01_01_00 - * ; мяч не порвется
                                    .byte off_case_09_00_03_01_01_01 - * ; мяч порвется

                                        off_case_09_00_03_01_01_00:
                                        ; catch/dark illusion/кипер убьется/кипер коснется спешала и умрет/мяч не порвется
                                        loc_9782_09_00_03_01_00:
                                            .byte con_jsr
                                            .word sub_A1E4_dark_illusion
                                            .dbyt con_branch_short + con_bra_результат_пропуска_мяча_кипером
                                            .byte off_case_9784_00 - * ; гол
                                            .byte off_case_9784_01 - * ; штанга
                                            .byte off_case_9784_02 - * ; защитник спасает
                                            .byte off_case_9784_03 - * ; штанга и добивание
                                            .byte off_case_9784_04 - * ; защитник не спасает и гол

                                                off_case_9784_00:
                                                ; catch/dark illusion/кипер убьется/кипер коснется спешала и умрет/мяч не порвется/гол
loc_9787_кипер_убивается_после_спешала_и_гол:
                                                    .byte con_jsr
                                                    .word sub_A11D_кипер_касается_мяча_кулаком_после_спешала
loc_978A_убийство_кипера_и_гол:
                                                    .byte con_jsr
                                                    .word sub_A2DD_ярко_красное_мерцание
                                                    .byte con_jsr
                                                    .word sub_9FB5_убийство_кипера
                                                    .byte con_jmp
                                                    .word loc_9C28_гол_и_проверка_на_рваную_сетку

                                                off_case_9784_01:
                                                ; catch/dark illusion/кипер убьется/кипер коснется спешала и умрет/мяч не порвется/штанга
loc_9796_кипер_убивается_после_спешала_и_штанга:
                                                    .byte con_jsr
                                                    .word sub_A11D_кипер_касается_мяча_кулаком_после_спешала
loc_9799_убийство_кипера_и_штанга:
                                                    .byte con_jsr
                                                    .word sub_A2DD_ярко_красное_мерцание
                                                    .byte con_jsr
                                                    .word sub_9FB5_убийство_кипера
                                                    .byte con_jsr
                                                    .word sub_A24E_штанга_со_звуком
                                                    .byte con_jmp
                                                    .word loc_A258_полет_мяча_после_отскока_от_штанги

                                                off_case_9784_02:
                                                ; catch/dark illusion/кипер убьется/кипер коснется спешала и умрет/мяч не порвется/защитник спасает
loc_97A8_кипер_убивается_после_спешала_и_защитник_спасает:
                                                    .byte con_jsr
                                                    .word sub_A11D_кипер_касается_мяча_кулаком_после_спешала
loc_97AB_убийство_кипера_и_защитник_спасает:
                                                    .byte con_jsr
                                                    .word sub_A2DD_ярко_красное_мерцание
                                                    .byte con_jsr
                                                    .word sub_9FB5_убийство_кипера
                                                    .byte con_jsr
                                                    .word sub_A0B6_защитник_касается_мяча_при_спасении_ворот
                                                    .byte con_jsr
                                                    .word sub_A2E7_темно_красное_мерцание
                                                    .byte con_jsr
                                                    .word sub_9E1B_рандом_анимации_отпизженного_игрока_4_с_сообщением
                                                    .byte con_jmp
                                                    .word loc_A371_мяч_улетает_в_сторону

                                                off_case_9784_03:
                                                ; catch/dark illusion/кипер убьется/кипер коснется спешала и умрет/мяч не порвется/штанга и добивание
loc_97C0_кипер_убивается_после_спешала_и_добивание_от_штанги:
                                                    .byte con_jsr
                                                    .word sub_A11D_кипер_касается_мяча_кулаком_после_спешала
loc_97C3_убийство_кипера_и_добивание_от_штанги:
                                                    .byte con_jsr
                                                    .word sub_A2DD_ярко_красное_мерцание
                                                    .byte con_jsr
                                                    .word sub_9FB5_убийство_кипера
                                                    .byte con_jsr
                                                    .word sub_A24E_штанга_со_звуком
                                                    .byte con_jsr
                                                    .word sub_A258_полет_мяча_после_отскока_от_штанги
                                                    .byte con_jsr
                                                    .word sub_A212_добивание_отскока_от_штанги_соперником
                                                    .byte con_jmp
                                                    .word loc_9C28_гол_и_проверка_на_рваную_сетку

                                                off_case_9784_04:
                                                ; catch/dark illusion/кипер убьется/кипер коснется спешала и умрет/мяч не порвется/защитник не спасает и гол
loc_97D8_кипер_убивается_после_спешала_и_защитник_убивается_и_гол:
                                                    .byte con_jsr
                                                    .word sub_A11D_кипер_касается_мяча_кулаком_после_спешала
loc_97DB_убийство_кипера_и_защитника_и_гол:
                                                    .byte con_jsr
                                                    .word sub_A2DD_ярко_красное_мерцание
                                                    .byte con_jsr
                                                    .word sub_9FB5_убийство_кипера
                                                    .byte con_jsr
                                                    .word sub_A0B6_защитник_касается_мяча_при_спасении_ворот
                                                    .byte con_jsr
                                                    .word sub_A2E7_темно_красное_мерцание
                                                    .byte con_jsr
                                                    .word sub_9E1B_рандом_анимации_отпизженного_игрока_4_с_сообщением
                                                    .byte con_jmp
                                                    .word loc_9C28_гол_и_проверка_на_рваную_сетку

                                        off_case_09_00_03_01_01_01:
                                        ; catch/dark illusion/кипер убьется/кипер коснется спешала и умрет/мяч порвется
                                            .byte con_jsr
                                            .word sub_A1E4_dark_illusion
loc_97F0_кипер_убивается_после_своего_спешала_и_мяч_порвется:
                                            .byte con_jsr
                                            .word sub_A11D_кипер_касается_мяча_кулаком_после_спешала
loc_97F3_мяч_порвется_после_убийства_кипера:
                                            .byte con_jsr
                                            .word sub_A2DD_ярко_красное_мерцание
                                            .byte con_jsr
                                            .word sub_9FB5_убийство_кипера
                                            .byte con_jsr
                                            .word sub_A2F4_сообщение_oops_на_мигающем_белом_фоне
                                            .byte con_jmp
                                            .word loc_A364_рваный_мяч

                                off_case_09_00_03_01_02:
                                ; catch/dark illusion/кипер убьется/кипер с трудом отобьет
                                    .byte con_jsr
                                    .word sub_A1E4_dark_illusion
loc_9802_кипер_убивается_после_спешала_и_отбивает:
                                    .byte con_jsr
                                    .word sub_A11D_кипер_касается_мяча_кулаком_после_спешала
                                    .byte con_jsr
                                    .word sub_A2DD_ярко_красное_мерцание
                                    .byte con_jsr
                                    .word sub_9FB5_убийство_кипера
                                    .byte con_jsr
                                    .word sub_A371_мяч_улетает_в_сторону
                                    .byte con_jmp
                                    .word loc_9EF0_попытка_включить_drive_tiger

; !!! правильно ли тут? кипер же должен убиться, но прыжок туда где кипер живой
; предположительно эта ситуация никогда не случится, так как кипер не может умереть и словить одновременно
                                off_case_09_00_03_01_03:
                                ; catch/dark illusion/кипер убьется/кипер словит
                                    .byte con_jmp
                                    .word loc_9783

        bra_long_case_09_01:
        ; punch
            .byte con_jsr
            .word sub_9F9C_крит_кипера
            .dbyt con_branch_long + con_bra_выживет_ли_кипер_после_punch
            .word bra_long_case_09_01_00 ; кипер выживет
            .word bra_long_case_09_01_01 ; кипер убьется

                bra_long_case_09_01_00:
                ; punch/кипер выживет
                    .dbyt con_branch_short + con_bra_результат_действия_защитника
                    .byte off_case_09_01_00_00 - * ; кипер пропустит обычный удар
                    .byte off_case_09_01_00_01 - * ; кипер пропустит спешал удар
                    .byte off_case_09_01_00_02 - * ; кипер с трудом отобьет
                    .byte off_case_09_01_00_03 - * ; кипер отобьет

                        off_case_09_01_00_00:
                        ; punch/кипер выживет/кипер пропустит обычный удар
                                    .byte con_jmp
                                    .word loc_936A_09_01_00_00

                        off_case_09_01_00_01:
                        ; punch/кипер выживет/кипер пропустит спешал удар
                            .dbyt con_branch_short + con_bra_обычный_или_спешал
                            .byte off_case_09_01_00_01_00 - * ; мяч не порвется
                            .byte off_case_09_01_00_01_01 - * ; мяч порвется

                                off_case_09_01_00_01_00:
                                ; punch/кипер выживет/кипер пропустит спешал удар/мяч не порвется
                                loc_936A_09_01_00_00:
                                    .byte con_jsr
                                    .word sub_A10E_кипер_не_дотягивается_кулаком_до_мяча
                                    .dbyt con_branch_short + con_bra_результат_пропуска_мяча_кипером
                                    .byte off_case_9390_00 - * ; гол
                                    .byte off_case_9390_01 - * ; штанга
                                    .byte off_case_9390_02 - * ; защитник спасает
                                    .byte off_case_9390_03 - * ; штанга и добивание
                                    .byte off_case_9390_04 - * ; защитник промахнется и гол

                                        off_case_9390_00:
                                        ; punch/кипер выживет/кипер пропустит обычный удар/гол
                                            .byte con_jmp
                                            .word loc_9C28_гол_и_проверка_на_рваную_сетку

                                        off_case_9390_01:
                                        ; punch/кипер выживет/кипер пропустит обычный удар/штанга
                                            .byte con_jmp
                                            .word loc_9716_штанга

                                        off_case_9390_02:
                                        ; punch/кипер выживет/кипер пропустит обычный удар/защитник спасает
                                            .byte con_jmp
                                            .word loc_9722_защитник_спасает

                                        off_case_9390_03:
                                        ; punch/кипер выживет/кипер пропустит обычный удар/штанга и добивание
                                            .byte con_jmp
                                            .word loc_9731_штанга_и_добивание

                                        off_case_9390_04:
                                        ; punch/кипер выживет/кипер пропустит обычный удар/защитник промахнется и гол
                                            .byte con_jmp
                                            .word loc_9743_защитник_промахнется_и_гол

                                        off_case_09_01_00_01_01:
                                        ; punch/кипер выживет/кипер пропустит спешал удар/мяч порвется
                                            .byte con_jsr
                                            .word sub_A10E_кипер_не_дотягивается_кулаком_до_мяча
                                            .byte con_jmp
                                            .word loc_9755_мяч_порвется

                        off_case_09_01_00_02:
                        ; punch/кипер выживет/кипер с трудом отобьет
                            .byte con_drive, con_overhead
                            .word ofs_93BE_00_кипер_с_трудом_обивает
                            .word ofs_93C4_01_drive_shot_бесполезен
                            .word ofs_93D0_02_meon_с_трудом_отбивает_1й_раз
                            .word ofs_93DF_03_meon_с_трудом_отбивает_2й_раз_и_озарение

                        off_case_09_01_00_03:
                        ; punch/кипер выживет/кипер отобьет
loc_93F1_кипер_с_легкостью_отбивает_мяч:
                            .byte con_drive, con_overhead
                            .word ofs_93FB_00
                            .word ofs_9404_01
                            .word ofs_940D_02
                            .word ofs_9419_03

                bra_long_case_09_01_01:
                ; punch/кипер убьется
                    .dbyt con_branch_short + con_bra_результат_действия_защитника
                    .byte off_case_09_01_01_00 - * ; кипер пропустит обычный удар
                    .byte off_case_09_01_01_01 - * ; кипер коснется спешала и умрет
                    .byte off_case_09_01_01_02 - * ; кипер с трудом отобьет
                    .byte off_case_09_01_01_03 - * ; кипер отобьет

                        off_case_09_01_01_00:
                        ; punch/кипер убьется/кипер пропустит обычный удар
                                    .byte con_jmp
                                    .word loc_9435_09_01_01_00

                        off_case_09_01_01_01:
                        ; punch/кипер убьется/кипер коснется спешала и умрет
                            .dbyt con_branch_short + con_bra_обычный_или_спешал
                            .byte off_case_09_01_01_01_00 - * ; мяч не порвется
                            .byte off_case_09_01_01_01_01 - * ; мяч порвется

                                off_case_09_01_01_01_00:
                                ; punch/кипер убьется/кипер коснется спешала и умрет/мяч не порвется
                                loc_9435_09_01_01_00:
                                    .byte con_jsr
                                    .word sub_A122_кипер_собирается_коснуться_мяча_кулаком
                                    .dbyt con_branch_short + con_bra_результат_пропуска_мяча_кипером
                                    .byte off_case_943C_00 - * ; гол
                                    .byte off_case_943C_01 - * ; штанга
                                    .byte off_case_943C_02 - * ; защитник спасает
                                    .byte off_case_943C_03 - * ; штанга и добивание
                                    .byte off_case_943C_04 - * ; защитник не спасает и гол

                                        off_case_943C_00:
                                        ; punch/кипер убьется/кипер пропустит обычный удар/гол
                                            .byte con_jmp
                                            .word loc_978A_убийство_кипера_и_гол

                                        off_case_943C_01:
                                        ; punch/кипер убьется/кипер пропустит обычный удар/штанга
                                            .byte con_jmp
                                            .word loc_9799_убийство_кипера_и_штанга

                                        off_case_943C_02:
                                        ; punch/кипер убьется/кипер пропустит обычный удар/защитник спасает
                                            .byte con_jmp
                                            .word loc_97AB_убийство_кипера_и_защитник_спасает

                                        off_case_943C_03:
                                        ; punch/кипер убьется/кипер пропустит обычный удар/штанга и добивание
                                            .byte con_jmp
                                            .word loc_97C3_убийство_кипера_и_добивание_от_штанги

                                        off_case_943C_04:
                                        ; punch/кипер убьется/кипер пропустит обычный удар/защитник не спасает и гол
                                            .byte con_jmp
                                            .word loc_97DB_убийство_кипера_и_защитника_и_гол

                                        off_case_09_01_01_01_01:
                                        ; punch/кипер убьется/кипер коснется спешала и умрет/мяч порвется
                                            .byte con_jsr
                                            .word sub_A122_кипер_собирается_коснуться_мяча_кулаком
                                            .byte con_jmp
                                            .word loc_97F3_мяч_порвется_после_убийства_кипера

                        off_case_09_01_01_02:
                        ; punch/кипер убьется/кипер с трудом отобьет
                            .byte con_drive, con_overhead
                            .word ofs_946A_00_кипер_убивается_и_мяч_отлетает
                            .word ofs_93C4_01_drive_shot_бесполезен
                            .word ofs_93D0_02_meon_с_трудом_отбивает_1й_раз
                            .word ofs_93DF_03_meon_с_трудом_отбивает_2й_раз_и_озарение

                        off_case_09_01_01_03:
                        ; punch/кипер убьется/кипер отобьет
                            .byte con_jmp
                            .word loc_93F1_кипер_с_легкостью_отбивает_мяч

        bra_long_case_09_02:
        ; triangle jump
            .dbyt con_branch_short + con_bra_выживет_ли_защитник
            .byte off_case_09_02_00 - * ; кипер выживет
            .byte off_case_09_02_01 - * ; кипер убьется

                off_case_09_02_00:
                ; triangle jump/кипер выживет
                    .dbyt con_branch_short + con_bra_результат_действия_защитника
                    .byte off_case_09_02_00_00 - * ; кипер пропустит обычный удар
                    .byte off_case_09_02_00_01 - * ; кипер пропустит спешал удар
                    .byte off_case_09_02_00_02 - * ; кипер отобьет
                    .byte off_case_09_02_00_03 - * ; кипер словит

                        off_case_09_02_00_00:
                        ; triangle jump/кипер выживет/кипер пропустит обычный удар
                            .byte con_jmp
                            .word loc_9484_09_02_00_00

                        off_case_09_02_00_01:
                        ; triangle jump/кипер выживет/кипер пропустит спешал удар
                            .dbyt con_branch_short + con_bra_обычный_или_спешал
                            .byte off_case_09_02_00_01_00 - * ; мяч не порвется
                            .byte off_case_09_02_00_01_01 - * ; мяч порвется

                                off_case_09_02_00_01_00:
                                 ; triangle jump/кипер выживет/кипер пропустит спешал удар/мяч не порвется
                                loc_9484_09_02_00_00:
                                    .byte con_jsr
                                    .word sub_9C5B_wakashimazu_отскок_от_штанги
                                    .byte con_jsr
                                    .word sub_A1DD_triangle_jump_не_достает_до_мяча
                                    .dbyt con_branch_short + con_bra_результат_пропуска_мяча_кипером
                                    .byte off_case_9485_00 - * ; гол
                                    .byte off_case_9485_01 - * ; штанга
                                    .byte off_case_9485_02 - * ; защитник спасает
                                    .byte off_case_9485_03 - * ; штанга и добивание
                                    .byte off_case_9485_04 - * ; защитник промахнется и гол

                                        off_case_9485_00:
                                        ; triangle jump/кипер выживет/кипер пропустит спешал удар/мяч не порвется/гол
                                            .byte con_jmp
                                            .word loc_9C28_гол_и_проверка_на_рваную_сетку

                                        off_case_9485_01:
                                         ; triangle jump/кипер выживет/кипер пропустит спешал удар/мяч не порвется/штанга
                                            .byte con_jmp
                                            .word loc_9716_штанга

                                        off_case_9485_02:
                                         ; triangle jump/кипер выживет/кипер пропустит спешал удар/мяч не порвется/защитник спасает
                                            .byte con_jmp
                                            .word loc_9722_защитник_спасает

                                        off_case_9485_03:
                                         ; triangle jump/кипер выживет/кипер пропустит спешал удар/мяч не порвется/штанга и добивание
                                            .byte con_jmp
                                            .word loc_9731_штанга_и_добивание

                                        off_case_9485_04:
                                         ; triangle jump/кипер выживет/кипер пропустит спешал удар/мяч не порвется/защитник промахнется и гол
                                            .byte con_jmp
                                            .word loc_9743_защитник_промахнется_и_гол

                                off_case_09_02_00_01_01:
                                ; triangle jump/кипер выживет/кипер пропустит спешал удар/мяч порвется
                                    .byte con_jsr
                                    .word sub_9C5B_wakashimazu_отскок_от_штанги
                                    .byte con_jsr
                                    .word sub_A1DD_triangle_jump_не_достает_до_мяча
                                    .byte con_jmp
                                    .word loc_9755_мяч_порвется

                        off_case_09_02_00_02:
                        ; triangle jump/кипер выживет/кипер отобьет
                            .byte con_jsr
                            .word sub_9C5B_wakashimazu_отскок_от_штанги
                            .byte con_jsr
                            .word sub_A1CA_triangle_jump_ловит_мяч
                            .byte con_jsr
                            .word sub_A308_белое_мерцание
                            .byte con_jmp
                            .word loc_A371_мяч_улетает_в_сторону

                        off_case_09_02_00_03:
                        ; triangle jump/кипер выживет/кипер словит
loc_94C7_wakashimazu_triagle_jump_ловит_мяч:
                            .byte con_jsr
                            .word sub_9C5B_wakashimazu_отскок_от_штанги
                            .byte con_jsr
                            .word sub_A1D1_triangle_jump_ловит_мяч
                            .byte con_jmp
                            .word loc_B44E_кипер_идеально_засейвил

                off_case_09_02_01:
                ; triangle jump/кипер убьется
                    .dbyt con_branch_short + con_bra_результат_действия_защитника
                    .byte off_case_09_02_01_00 - * ; кипер пропустит обычный удар
                    .byte off_case_09_02_01_01 - * ; кипер коснется спешала и умрет
                    .byte off_case_09_02_01_02 - * ; кипер с трудом отобьет
                    .byte off_case_09_02_01_03 - * ; кипер словит

                        off_case_09_02_01_00:
                        ; triangle jump/кипер убьется/кипер пропустит обычный удар
                            .byte con_jmp
                            .word loc_94E3_09_02_01_00

                        off_case_09_02_01_01:
                        ; triangle jump/кипер убьется/кипер коснется спешала и умрет
                            .dbyt con_branch_short + con_bra_обычный_или_спешал
                            .byte off_case_09_02_01_01_00 - * ; мяч не порвется
                            .byte off_case_09_02_01_01_01 - * ; мяч порвется

                                off_case_09_02_01_01_00:
                                ; triangle jump/кипер убьется/кипер коснется спешала и умрет/мяч не порвется
                                loc_94E3_09_02_01_00:
                                    .byte con_jsr
                                    .word sub_9C5B_wakashimazu_отскок_от_штанги
                                    .byte con_jsr
                                    .word sub_A1CA_triangle_jump_ловит_мяч
                                    .dbyt con_branch_short + con_bra_результат_пропуска_мяча_кипером
                                    .byte off_case_94E4_00 - * ; гол
                                    .byte off_case_94E4_01 - * ; штанга
                                    .byte off_case_94E4_02 - * ; защитник спасает
                                    .byte off_case_94E4_03 - * ; штанга и добивание
                                    .byte off_case_94E4_04 - * ; защитник не спасает и гол

                                        off_case_94E4_00:
                                        ; triangle jump/кипер убьется/кипер коснется спешала и умрет/мяч не порвется/гол
                                            .byte con_jmp
                                            .word loc_978A_убийство_кипера_и_гол

                                        off_case_94E4_01:
                                        ; triangle jump/кипер убьется/кипер коснется спешала и умрет/мяч не порвется/штанга
                                            .byte con_jmp
                                            .word loc_9799_убийство_кипера_и_штанга

                                        off_case_94E4_02:
                                        ; triangle jump/кипер убьется/кипер коснется спешала и умрет/мяч не порвется/защитник спасает
                                            .byte con_jmp
                                            .word loc_97AB_убийство_кипера_и_защитник_спасает

                                        off_case_94E4_03:
                                        ; triangle jump/кипер убьется/кипер коснется спешала и умрет/мяч не порвется/штанга и добивание
                                            .byte con_jmp
                                            .word loc_97C3_убийство_кипера_и_добивание_от_штанги

                                        off_case_94E4_04:
                                        ; triangle jump/кипер убьется/кипер коснется спешала и умрет/мяч не порвется/защитник не спасает и гол
                                            .byte con_jmp
                                            .word loc_97DB_убийство_кипера_и_защитника_и_гол

                                off_case_09_02_01_01_01:
                                ; triangle jump/кипер убьется/кипер коснется спешала и умрет/мяч порвется
                                    .byte con_jsr
                                    .word sub_9C5B_wakashimazu_отскок_от_штанги
                                    .byte con_jsr
                                    .word sub_A1CA_triangle_jump_ловит_мяч
                                    .byte con_jmp
                                    .word loc_97F3_мяч_порвется_после_убийства_кипера

                        off_case_09_02_01_02:
                        ; triangle jump/кипер убьется/кипер с трудом отобьет
                            .byte con_jsr
                            .word sub_9C5B_wakashimazu_отскок_от_штанги
                            .byte con_jsr
                            .word sub_A1CA_triangle_jump_ловит_мяч
                            .byte con_jsr
                            .word sub_A2DD_ярко_красное_мерцание
                            .byte con_jsr
                            .word sub_9FB5_убийство_кипера
                            .byte con_jmp
                            .word loc_A371_мяч_улетает_в_сторону

; !!! правильно ли тут? кипер же должен убиться, но прыжок туда где кипер живой
; предположительно эта ситуация никогда не случится, так как кипер не может умереть и словить одновременно
                        off_case_09_02_01_03:
                        ; triangle jump/кипер убьется/кипер словит
                            .byte con_jmp
                            .word loc_94C7_wakashimazu_triagle_jump_ловит_мяч



_scenario_9811_0A_result_gk_vs_attacker:
    .dbyt con_branch_long + con_bra_действие_атаки_на_земле
    .word bra_long_case_0A_00 ; shoot
    .word bra_long_case_0A_01 ; pass
    .word bra_long_case_0A_02 ; drible

        bra_long_case_0A_00:
        ; shoot
            .byte con_jsr
            .word sub_9FD6_кипер_делает_нижний_dive
            .dbyt con_branch_short + con_bra_выживет_ли_защитник
            .byte off_case_0A_00_00 - * ; защитник выживет
            .byte off_case_0A_00_01 - * ; защитник убьется

                off_case_0A_00_00:
                ; shoot/защитник выживет
                    .dbyt con_branch_short + con_bra_результат_действия_защитника
                    .byte off_case_0A_00_00_00 - * ; кипер промахнется
                    .byte off_case_0A_00_00_01 - * ; кипер отобьет ладонью
                    .byte off_case_0A_00_00_02 - * ; кипер отобьет кулаком
                    .byte off_case_0A_00_00_03 - * ; кипер словит
                    .byte off_case_0A_00_00_04 - * ; нарушение

                        off_case_0A_00_00_00:
                        ; shoot/защитник выживет/кипер промахнется
                            .byte con_jsr
                            .word sub_9CF3_игрок_делает_удар_с_земли
                            .byte con_mirror_condition, $03       ; куда летит мяч
                            .byte con_jmp
                            .word loc_A08D_кипер_промахивается_dive_после_удара_1_на_1

                        off_case_0A_00_00_01:
                        ; shoot/защитник выживет/кипер отобьет ладонью
                            .byte con_jsr
                            .word sub_9CF3_игрок_делает_удар_с_земли
                            .byte con_mirror_condition, $03       ; куда летит мяч
                            .byte con_jsr
                            .word sub_A0A1_кипер_ловит_мяч_без_звука
                            .byte con_jsr
                            .word sub_A308_белое_мерцание
                            .byte con_jmp
                            .word loc_B45D_мяч_улетает_в_сторону

                        off_case_0A_00_00_02:
                        ; shoot/защитник выживет/кипер отобьет кулаком
                            .byte con_jsr
                            .word sub_9CF3_игрок_делает_удар_с_земли
                            .byte con_mirror_condition, $03       ; куда летит мяч
                            .byte con_jsr
                            .word sub_A14B_кипер_дотягивается_до_мяча_кулаком_и_проверка_на_wakashimazu_gertise
                            .byte con_jsr
                            .word sub_A308_белое_мерцание
                            .byte con_jmp
                            .word loc_B45D_мяч_улетает_в_сторону

                        off_case_0A_00_00_03:
                        ; shoot/защитник выживет/кипер словит
                            .byte con_jsr
                            .word sub_9CF3_игрок_делает_удар_с_земли
                            .byte con_mirror_condition, $03       ; куда летит мяч
                            .byte con_jmp
                            .word loc_A0A6_кипер_ловит_мяч_со_звуком

                        off_case_0A_00_00_04:
                        ; shoot/защитник выживет/нарушение
                            .byte con_jsr
                            .word sub_A2DD_ярко_красное_мерцание
                            .byte con_jmp
                            .word loc_A35B_нарушение

                off_case_0A_00_01:
                ; shoot/защитник убьется
                    .dbyt con_branch_short + con_bra_результат_действия_защитника
                    .byte off_case_0A_00_01_00 - * ; кипер убьется
                    .byte off_case_0A_00_01_01 - * ; кипер убьет атакующего мяч отлетит
                    .byte off_case_0A_00_01_02 - * ; кипер убьет атакующего мяч отлетит
                    .byte off_case_0A_00_01_03 - * ; кипер убьет атакующего мяч отлетит
                    .byte off_case_0A_00_01_04 - * ; нарушение

                        off_case_0A_00_01_00:
                        ; bzk wtf, защитник же не может умереть вместе с кипером (хотя было бы круто если они оба отлетят)
                        ; shoot/защитник убьется/кипер убьется
                            .byte con_jsr
                            .word sub_9CF3_игрок_делает_удар_с_земли
                            .byte con_mirror_condition, $03       ; куда летит мяч
                            .byte con_jsr
                            .word sub_A0A1_кипер_ловит_мяч_без_звука
                            .byte con_jsr
                            .word sub_A2DD_ярко_красное_мерцание
                            .byte con_jmp
                            .word loc_9FB5_убийство_кипера

                        off_case_0A_00_01_01:
                        off_case_0A_00_01_02:
                        ; shoot/защитник убьется/кипер убьет атакующего и мяч отлетит
                            .byte con_jsr
                            .word sub_A2DD_ярко_красное_мерцание
                            .byte con_mirror_condition, $03       ; куда летит мяч
                            .byte con_jsr
                            .word sub_9F6E_рандом_анимации_отпизженного_игрока_3_с_сообщением
                            .byte con_jmp
                            .word loc_A371_мяч_улетает_в_сторону

                        off_case_0A_00_01_03:
                        ; shoot/защитник убьется/кипер убьет атакующего и заберет мяч
                            .byte con_jsr
                            .word sub_A2DD_ярко_красное_мерцание
                            .byte con_mirror_condition, $03       ; куда летит мяч
                            .byte con_jsr
                            .word sub_9F68_рандом_анимации_отпизженного_игрока_1_без_сообщения
                            .byte con_jmp
                            .word loc_9FBF_кипер_ловит_мяч_нижним_dive_после_убийства_игрока

                        off_case_0A_00_01_04:
                        ; shoot/защитник убьется/нарушение
                            .byte con_jsr
                            .word sub_A2DD_ярко_красное_мерцание
                            .byte con_jsr
                            .word sub_9F6E_рандом_анимации_отпизженного_игрока_3_с_сообщением
                            .byte con_jmp
                            .word loc_A35B_нарушение

        bra_long_case_0A_01:
        ; pass
            .byte con_quit

        bra_long_case_0A_02:
        ; drible
            .byte con_jsr
            .word sub_9FD6_кипер_делает_нижний_dive
            .byte con_mirror_condition, $03       ; куда летит мяч
            .dbyt con_branch_short + con_bra_выживет_ли_защитник
            .byte off_case_0A_02_00 - * ; защитник выживет
            .byte off_case_0A_02_01 - * ; защитник убьется

                off_case_0A_02_00:
                ; drible/защитник выживет
                    .dbyt con_branch_short + con_bra_результат_действия_защитника
                    .byte off_case_0A_02_00_00 - * ; игрок обведет кипера
                    .byte off_case_0A_02_00_01 - * ; кипер выбьет мяч
                    .byte off_case_0A_02_00_02 - * ; кипер выбьет мяч
                    .byte off_case_0A_02_00_03 - * ; кипер словит мяч
                    .byte off_case_0A_02_00_04 - * ; нарушение

                        off_case_0A_02_00_00:
                        ; drible/защитник выживет/игрок обведет кипера
                            .byte con_jsr
                            .word sub_A495_сообщение_атакующего_в_ответ_защитнику
                            .byte con_jmp
                            .word loc_9CC0_выбор_анимации_дриблинга_легкой_обводки

                        off_case_0A_02_00_01:
                        off_case_0A_02_00_02:
                        ; drible/защитник выживет/кипер выбьет мяч
                            .byte con_jsr
                            .word sub_A495_сообщение_атакующего_в_ответ_защитнику
                            .byte con_jsr
                            .word sub_9DFE_выбор_анимации_дриблинга_в_зависимости_от_действия
                            .byte con_jsr
                            .word sub_A308_белое_мерцание
                            .byte con_jmp
                            .word loc_A371_мяч_улетает_в_сторону

                        off_case_0A_02_00_03:
                        ; drible/защитник выживет/кипер словит мяч
                            .byte con_jsr
                            .word sub_A495_сообщение_атакующего_в_ответ_защитнику
                            .byte con_jsr
                            .word sub_9DFE_выбор_анимации_дриблинга_в_зависимости_от_действия
                            .byte con_jsr
                            .word sub_A2EF_белое_мерцание_без_звука
                            .byte con_jmp
                            .word loc_9FCE_кипер_ловит_мяч_нижним_dive_не_убивая_игрока

                        off_case_0A_02_00_04:
                        ; drible/защитник выживет/нарушение
                            .byte con_jsr
                            .word sub_A495_сообщение_атакующего_в_ответ_защитнику
                            .byte con_jsr
                            .word sub_9DFE_выбор_анимации_дриблинга_в_зависимости_от_действия
                            .byte con_jsr
                            .word sub_A2DD_ярко_красное_мерцание
                            .byte con_jmp
                            .word loc_A35B_нарушение

                off_case_0A_02_01:
                ; drible/защитник убьется
                    .dbyt con_branch_short + con_bra_результат_действия_защитника
                    .byte off_case_0A_02_01_00 - * ; кипер умрет
                    .byte off_case_0A_02_01_01 - * ; кипер умрет и мяч отлетит
                    .byte off_case_0A_02_01_02 - * ; кипер умрет и мяч отлетит
                    .byte off_case_0A_02_01_03 - * ; кипер убивает игрока и ловит мяч
                    .byte off_case_0A_02_01_04 - * ; нарушение

                        off_case_0A_02_01_00:
                        ; drible/защитник убьется/кипер умрет
                            .byte con_jsr
                            .word sub_A495_сообщение_атакующего_в_ответ_защитнику
                            .byte con_jsr
                            .word sub_9DFE_выбор_анимации_дриблинга_в_зависимости_от_действия
                            .byte con_jsr
                            .word sub_A2DD_ярко_красное_мерцание
                            .byte con_jmp
                            .word loc_9FB5_убийство_кипера

                        off_case_0A_02_01_01:
                        off_case_0A_02_01_02:
                        ; drible/защитник убьется/кипер умрет и мяч отлетит
                            .byte con_jsr
                            .word sub_A495_сообщение_атакующего_в_ответ_защитнику
                            .byte con_jsr
                            .word sub_9DFE_выбор_анимации_дриблинга_в_зависимости_от_действия
                            .byte con_jsr
                            .word sub_A2DD_ярко_красное_мерцание
                            .byte con_jsr
                            .word sub_9F6E_рандом_анимации_отпизженного_игрока_3_с_сообщением
                            .byte con_jmp
                            .word loc_A371_мяч_улетает_в_сторону

                        off_case_0A_02_01_03:
                        ; drible/защитник убьется/кипер убивает игрока и ловит мяч
                            .byte con_jsr
                            .word sub_A495_сообщение_атакующего_в_ответ_защитнику
                            .byte con_jsr
                            .word sub_9DFE_выбор_анимации_дриблинга_в_зависимости_от_действия
                            .byte con_jsr
                            .word sub_A2DD_ярко_красное_мерцание
                            .byte con_jsr
                            .word sub_9F68_рандом_анимации_отпизженного_игрока_1_без_сообщения
                            .byte con_jmp
                            .word loc_9FBF_кипер_ловит_мяч_нижним_dive_после_убийства_игрока

                        off_case_0A_02_01_04:
                        ; drible/защитник убьется/нарушение
                            .byte con_jsr
                            .word sub_A495_сообщение_атакующего_в_ответ_защитнику
                            .byte con_jsr
                            .word sub_9DFE_выбор_анимации_дриблинга_в_зависимости_от_действия
                            .byte con_jsr
                            .word sub_A2DD_ярко_красное_мерцание
                            .byte con_jsr
                            .word sub_9F6E_рандом_анимации_отпизженного_игрока_3_с_сообщением
                            .byte con_jmp
                            .word loc_A35B_нарушение



_scenario_98ED_0B:
    .dbyt con_branch_long + con_bra_высота_мяча
    .word bra_long_case_0B_00 ; low
    .word bra_long_case_0B_01 ; high

        bra_long_case_0B_00:
        ; low
            .dbyt con_branch_short + con_bra_скорость_мяча
            .byte off_case_0B_00_00 - * ; медленный
            .byte off_case_0B_00_01 - * ; быстрый
            .byte off_case_0B_00_02 - * ; смертельный

                off_case_0B_00_00:
                ; low/медленный
                    .byte con_mirror_condition, $00
                    .byte con_jsr
                    .word sub_A335_полет_нижнего_мяча
                    .byte con_jsr
                    .word sub_A1C3_защитник_бежит_к_низкому_мячу
                    .dbyt con_branch_short + con_bra_результат_действия_защитника
                    .byte off_case_0B_00_00_00 - * ; промахнется
                    .byte off_case_0B_00_00_01 - * ; коснется
                    .byte off_case_0B_00_00_02 - * ; отобьет
                    .byte off_case_0B_00_00_03 - * ; словит

                        off_case_0B_00_00_00:
                        ; low/медленный/промахнется
                            .byte con_jmp
                            .word loc_9FEA_защитник_промахивается_ногой_по_низкому_мячу

                        off_case_0B_00_00_01:
                        ; low/медленный/коснется
                            .byte con_jsr
                            .word sub_9FFD_защитник_собирается_коснуться_ногой_низкого_мяча
                            .byte con_jsr
                            .word sub_9FF3_в_процессе_касания_защитником_ногой_высого_мяча
                            .byte con_jmp
                            .word loc_9FDE_высокий_мяч_летит_дальше_после_касания_ногой_защитником

                        off_case_0B_00_00_02:
                        ; low/медленный/отобьет
                            .byte con_jsr
                            .word sub_A004_защитник_собирается_отбить_ногой_низкий_мяч
                            .byte con_jsr
                            .word sub_9FF1_защитник_в_процессе_отбития_ногой_низкого_мяча
                            .byte con_jmp
                            .word loc_A371_мяч_улетает_в_сторону

                        off_case_0B_00_00_03:
                        ; low/медленный/словит
                            .byte con_jmp
                            .word loc_A164_защитник_ловит_низкий_мяч_ногой

                off_case_0B_00_01:
                ; low/быстрый
                    .byte con_mirror_condition, $03       ; куда летит мяч
                    .byte con_jsr
                    .word sub_A32D_полет_удара_со_звуком
                    .byte con_jsr
                    .word sub_A1C3_защитник_бежит_к_низкому_мячу
                    .dbyt con_branch_short + con_bra_результат_действия_защитника
                    .byte off_case_0B_00_01_00 - * ; промахнется
                    .byte off_case_0B_00_01_01 - * ; коснется
                    .byte off_case_0B_00_01_02 - * ; отобьет
                    .byte off_case_0B_00_01_03 - * ; словит

                        off_case_0B_00_01_00:
                        ; low/быстрый/промахнется
                            .byte con_jmp
                            .word loc_9FEA_защитник_промахивается_ногой_по_низкому_мячу

                        off_case_0B_00_01_01:
                        ; low/быстрый/коснется
                            .byte con_jsr
                            .word sub_9FFD_защитник_собирается_коснуться_ногой_низкого_мяча
                            .byte con_jsr
                            .word sub_9FF3_в_процессе_касания_защитником_ногой_высого_мяча
                            .byte con_jmp
                            .word loc_9FDE_высокий_мяч_летит_дальше_после_касания_ногой_защитником

                        off_case_0B_00_01_02:
                        ; low/быстрый/отобьет
                            .byte con_jsr
                            .word sub_A004_защитник_собирается_отбить_ногой_низкий_мяч
                            .byte con_jsr
                            .word sub_9FF1_защитник_в_процессе_отбития_ногой_низкого_мяча
                            .byte con_jmp
                            .word loc_A371_мяч_улетает_в_сторону

                        off_case_0B_00_01_03:
                        ; low/быстрый/словит
                            .byte con_jmp
                            .word loc_A164_защитник_ловит_низкий_мяч_ногой

                off_case_0B_00_02:
                ; low/смертельный
                    .byte con_mirror_condition, $03       ; куда летит мяч
                    .byte con_jsr
                    .word sub_A32D_полет_удара_со_звуком
                    .byte con_jsr
                    .word sub_A1C3_защитник_бежит_к_низкому_мячу
                    .dbyt con_branch_short + con_bra_результат_действия_защитника
                    .byte off_case_0B_00_02_00 - * ; промахнется
                    .byte off_case_0B_00_02_01 - * ; коснется
                    .byte off_case_0B_00_02_02 - * ; отобьет
                    .byte off_case_0B_00_02_03 - * ; словит

                        off_case_0B_00_02_00:
                        ; low/смертельный/промахнется
                            .byte con_jsr
                            .word sub_A004_защитник_собирается_отбить_ногой_низкий_мяч
                            .byte con_jsr
                            .word sub_A2DD_ярко_красное_мерцание
                            .byte con_jsr
                            .word sub_9F62_рандом_анимации_отпизженного_игрока_2_с_сообщением
                            .byte con_quit

                        off_case_0B_00_02_01:
                        ; low/смертельный/коснется
                            .byte con_jsr
                            .word sub_A004_защитник_собирается_отбить_ногой_низкий_мяч
                            .byte con_jsr
                            .word sub_A2DD_ярко_красное_мерцание
                            .byte con_jsr
                            .word sub_9F5C_рандом_анимации_отпизженного_игрока_1_с_сообщением
                            .byte con_jmp
                            .word loc_A240_серый_экран_после_касания_высого_мяча_телом

                        off_case_0B_00_02_02:
                        ; low/смертельный/отобьет
                            .byte con_jsr
                            .word sub_A004_защитник_собирается_отбить_ногой_низкий_мяч
                            .byte con_jsr
                            .word sub_A2E7_темно_красное_мерцание
                            .byte con_jsr
                            .word sub_9F5C_рандом_анимации_отпизженного_игрока_1_с_сообщением
                            .byte con_jmp
                            .word loc_A371_мяч_улетает_в_сторону

                        off_case_0B_00_02_03:
                        ; low/смертельный/словит
                            .byte con_jmp
                            .word loc_A164_защитник_ловит_низкий_мяч_ногой

        bra_long_case_0B_01:
        ; high
            .dbyt con_branch_short + con_bra_скорость_мяча
            .byte off_case_0B_01_00 - * ; медленный
            .byte off_case_0B_01_01 - * ; быстрый
            .byte off_case_0B_01_02 - * ; смертельный

                off_case_0B_01_00:
                ; high/медленный
                    .byte con_mirror_condition, $00
                    .byte con_jsr
                    .word sub_A335_полет_нижнего_мяча
                    .byte con_jsr
                    .word sub_A0AE_защитник_прыгает_без_движения_фона
                    .byte con_jsr
                    .word sub_A2D8_защитник_в_прыжке_к_летящему_мячу
                    .dbyt con_branch_short + con_bra_результат_действия_защитника
                    .byte off_case_0B_01_00_00 - * ; промахнется
                    .byte off_case_0B_01_00_01 - * ; коснется
                    .byte off_case_0B_01_00_02 - * ; отобьет
                    .byte off_case_0B_01_00_03 - * ; словит

                        off_case_0B_01_00_00:
                        ; high/медленный/промахнется
                            .byte con_jmp
                            .word loc_A176_защитник_в_воздухе_не_касается_мяча_телом

                        off_case_0B_01_00_01:
                        ; high/медленный/коснется
                            .byte con_jsr
                            .word sub_A02F_защитник_собирается_коснуться_телом_верхнего_мяча
                            .byte con_jsr
                            .word sub_A051_защитник_касается_телом_верхнего_мяча
                            .byte con_jmp
                            .word loc_A04C_высокий_мяч_летит_дальше_после_касания_тела_защитника

                        off_case_0B_01_00_02:
                        ; high/медленный/отобьет
                            .byte con_jsr
                            .word sub_A047_защитник_собирается_отбить_мяч_телом_после_прыжка
                            .byte con_jsr
                            .word sub_A023_процесс_отбивания_защитником_мяча_телом_после_прыжка
                            .byte con_jmp
                            .word loc_A371_мяч_улетает_в_сторону

                        off_case_0B_01_00_03:
                        ; high/медленный/словит
                            .byte con_jmp
                            .word loc_A185_защитник_ловит_высокий_мяч_телом

                off_case_0B_01_01:
                ; high/быстрый
                    .byte con_mirror_condition, $03       ; куда летит мяч
                    .byte con_jsr
                    .word sub_A32D_полет_удара_со_звуком
                    .byte con_jsr
                    .word sub_A0AE_защитник_прыгает_без_движения_фона
                    .byte con_jsr
                    .word sub_A2D8_защитник_в_прыжке_к_летящему_мячу
                    .dbyt con_branch_short + con_bra_результат_действия_защитника
                    .byte off_case_0B_01_01_00 - * ; промахнется
                    .byte off_case_0B_01_01_01 - * ; коснется
                    .byte off_case_0B_01_01_02 - * ; отобьет
                    .byte off_case_0B_01_01_03 - * ; словит

                        off_case_0B_01_01_00:
                        ; high/быстрый/промахнется
                            .byte con_jmp
                            .word loc_A176_защитник_в_воздухе_не_касается_мяча_телом

                        off_case_0B_01_01_01:
                        ; high/быстрый/коснется
                            .byte con_jsr
                            .word sub_A02F_защитник_собирается_коснуться_телом_верхнего_мяча
                            .byte con_jsr
                            .word sub_A051_защитник_касается_телом_верхнего_мяча
                            .byte con_jmp
                            .word loc_A04C_высокий_мяч_летит_дальше_после_касания_тела_защитника

                        off_case_0B_01_01_02:
                        ; high/быстрый/отобьет
                            .byte con_jsr
                            .word sub_A047_защитник_собирается_отбить_мяч_телом_после_прыжка
                            .byte con_jsr
                            .word sub_A023_процесс_отбивания_защитником_мяча_телом_после_прыжка
                            .byte con_jmp
                            .word loc_A371_мяч_улетает_в_сторону

                        off_case_0B_01_01_03:
                        ; high/быстрый/словит
                            .byte con_jmp
                            .word loc_A185_защитник_ловит_высокий_мяч_телом

                off_case_0B_01_02:
                ; high/смертельный
                    .byte con_mirror_condition, $03       ; куда летит мяч
                    .dbyt con_branch_short + con_bra_результат_действия_защитника
                    .byte off_case_0B_01_02_00 - * ; промахнется
                    .byte off_case_0B_01_02_01 - * ; коснется
                    .byte off_case_0B_01_02_02 - * ; отобьет
                    .byte off_case_0B_01_02_03 - * ; словит

                        off_case_0B_01_02_00:
                        ; high/смертельный/промахнется
                            .byte con_jsr
                            .word sub_A32D_полет_удара_со_звуком
                            .byte con_jsr
                            .word sub_A0AE_защитник_прыгает_без_движения_фона
                            .byte con_jsr
                            .word sub_A2D8_защитник_в_прыжке_к_летящему_мячу
                            .byte con_jsr
                            .word sub_A047_защитник_собирается_отбить_мяч_телом_после_прыжка
                            .byte con_jsr
                            .word sub_A2DD_ярко_красное_мерцание
                            .byte con_jsr
                            .word sub_9F62_рандом_анимации_отпизженного_игрока_2_с_сообщением
                            .byte con_quit

                        off_case_0B_01_02_01:
                        ; high/смертельный/коснется
                            .byte con_jsr
                            .word sub_A32D_полет_удара_со_звуком
                            .byte con_jsr
                            .word sub_A0AE_защитник_прыгает_без_движения_фона
                            .byte con_jsr
                            .word sub_A2D8_защитник_в_прыжке_к_летящему_мячу
                            .byte con_jsr
                            .word sub_A047_защитник_собирается_отбить_мяч_телом_после_прыжка
                            .byte con_jsr
                            .word sub_A2DD_ярко_красное_мерцание
                            .byte con_jsr
                            .word sub_9F5C_рандом_анимации_отпизженного_игрока_1_с_сообщением
                            .byte con_jmp
                            .word loc_A240_серый_экран_после_касания_высого_мяча_телом

                        off_case_0B_01_02_02:
                        ; high/смертельный/отобьет
                            .byte con_jsr
                            .word sub_A32D_полет_удара_со_звуком
                            .byte con_jsr
                            .word sub_A0AE_защитник_прыгает_без_движения_фона
                            .byte con_jsr
                            .word sub_A2D8_защитник_в_прыжке_к_летящему_мячу
                            .byte con_jsr
                            .word sub_A047_защитник_собирается_отбить_мяч_телом_после_прыжка
                            .byte con_jsr
                            .word sub_A2E7_темно_красное_мерцание
                            .byte con_jsr
                            .word sub_9F5C_рандом_анимации_отпизженного_игрока_1_с_сообщением
                            .byte con_jmp
                            .word loc_A371_мяч_улетает_в_сторону

                        off_case_0B_01_02_03:
                        ; high/смертельный/словит
                            .byte con_jmp
                            .word loc_A185_защитник_ловит_высокий_мяч_телом



_scenario_96E3_0C:
; !!! правильные ли комменты?
    .byte con_mirror_condition, $03       ; куда летит мяч
    .byte con_jsr
    .word sub_9EF6_выбор_анимации_полета_удара
    .dbyt con_branch_short + con_bra_результат_действия_защитника     ; ? порвется ли мяч
    .byte off_case_0C_00 - * ; мяч не порвется
    .byte off_case_0C_01 - * ; мяч порвется

        off_case_0C_00:
        ; мяч не порвется
        loc_96F0_0C_01_00:
            .dbyt con_branch_short + con_bra_результат_пропуска_мяча_кипером
            .byte off_case_0C_00_00 - * ; гол
            .byte off_case_0C_00_01 - * ; штанга
            .byte off_case_0C_00_02 - * ; защитник отобьет
            .byte off_case_0C_00_03 - * ; штанга и добивание
            .byte off_case_0C_00_04 - * ; защитник промахнется

                off_case_0C_00_00:
                ; мяч не порвется/гол
                    .byte con_jmp
                    .word loc_9C28_гол_и_проверка_на_рваную_сетку

                off_case_0C_00_01:
                ; мяч не порвется/штанга
                    .byte con_jsr
                    .word sub_A24E_штанга_со_звуком
                    .byte con_jmp
                    .word loc_A258_полет_мяча_после_отскока_от_штанги

                off_case_0C_00_02:
                ; мяч не порвется/защитник отобьет
                    .byte con_jsr
                    .word sub_A0B6_защитник_касается_мяча_при_спасении_ворот
                    .byte con_jsr
                    .word sub_A312_небольшая_пауза
                    .byte con_jmp
                    .word loc_A371_мяч_улетает_в_сторону

                off_case_0C_00_03:
                ; мяч не порвется/штанга и добивание
                    .byte con_jsr
                    .word sub_A24E_штанга_со_звуком
                    .byte con_jsr
                    .word sub_A258_полет_мяча_после_отскока_от_штанги
                    .byte con_jsr
                    .word sub_A212_добивание_отскока_от_штанги_соперником
                    .byte con_jmp
                    .word loc_9C28_гол_и_проверка_на_рваную_сетку

                off_case_0C_00_04:
                ; мяч не порвется/защитник промахнется
                    .byte con_jsr
                    .word sub_A0BE_защитник_промахивается
                    .byte con_jmp
                    .word loc_9C28_гол_и_проверка_на_рваную_сетку

        off_case_0C_01:
        ; мяч порвется
            .dbyt con_branch_short + con_bra_обычный_или_спешал     ; ? порвется ли мяч
            .byte off_case_0C_01_00 - * ; 
            .byte off_case_0C_01_01 - * ; 

                off_case_0C_01_00:
                ; мяч порвется/???
                    .byte con_jmp
                    .word loc_96F0_0C_01_00

                off_case_0C_01_01:
                ; мяч порвется/???
                    .byte con_jsr
                    .word sub_A2F4_сообщение_oops_на_мигающем_белом_фоне
                    .byte con_jmp
                    .word loc_A364_рваный_мяч



_scenario_96F7_0D:
    .byte con_jsr
    .word sub_AB31_полная_анимация_обычного_удара_с_земли
    .byte con_mirror_condition, $03       ; куда летит мяч
    .byte con_jsr
    .word sub_B4E7_конечный_полет_обычного_удара_с_земли
    .dbyt con_branch_short + con_bra_появится_ли_защитник_в_воротах
    .byte off_case_0D_00 - * ; защитник не появится
    .byte off_case_0D_01 - * ; защитник промахнется
    .byte off_case_0D_02 - * ; защитник отобьет

        off_case_0D_00:
        ; защитник не появится
            .byte con_jmp
            .word loc_9C28_гол_и_проверка_на_рваную_сетку

        off_case_0D_01:
        ; защитник промахнется
            .byte con_jsr
            .word sub_A0BE_защитник_промахивается
            .byte con_jmp
            .word loc_9C28_гол_и_проверка_на_рваную_сетку

        off_case_0D_02:
        ; защитник отобьет
            .byte con_jsr
            .word sub_A0B6_защитник_касается_мяча_при_спасении_ворот
            .byte con_jsr
            .word sub_A312_небольшая_пауза
            .byte con_jmp
            .word loc_A371_мяч_улетает_в_сторону



_scenario_91EA_0E:
    .byte con_mirror_condition, $01       ; номер защитника
    .dbyt con_branch_short + con_bra_высота_мяча
    .byte off_case_0E_00 - * ; low
    .byte off_case_0E_01 - * ; high

        off_case_0E_00:
        ; low
            .byte con_jmp
            .word loc_B29B_бежать_к_мячу_на_штрафной_перед_совершением_выбранного_действия

        off_case_0E_01:
        ; high
            .byte con_jmp
            .word loc_AE64_прыгать_к_мячу_на_штрафной_перед_совершением_выбранного_действия



_scenario_9205_0F:
    .byte con_mirror_condition, $01       ; номер защитника
    .dbyt con_branch_long + con_bra_43         ; действие атакующего на своей штрафной
    .word bra_long_case_0F_00 ; pass
    .word bra_long_case_0F_01 ; clearing
    .word bra_long_case_0F_02 ; through

        bra_long_case_0F_00:
        bra_long_case_0F_01:
        ; pass, clearing
loc_9217:
            .dbyt con_branch_short + con_bra_высота_мяча
            .byte off_case_0F_00_00 - * ; low
            .byte off_case_0F_00_01 - * ; high

                off_case_0F_00_00:
                ; pass, clearing/low
                    .dbyt con_branch_short + con_bra_порядковый_номер_защитника
                    .byte off_case_0F_00_00_00 - * ; защитник 1
                    .byte off_case_0F_00_00_01 - * ; защитник 2
                    .byte off_case_0F_00_00_02 - * ; защитник 3
                    .byte off_case_0F_00_00_03 - * ; защитник 4
                    .byte off_case_0F_00_00_04 - * ; защитник 5

                        off_case_0F_00_00_00:
                        ; pass, clearing/low/защитник 1
                            .byte con_jmp
                            .word loc_9C85_защитник_бежит_по_земле_1й

                        off_case_0F_00_00_01:
                        ; pass, clearing/low/защитник 2
                            .byte con_jmp
                            .word loc_9C91_защитник_бежит_по_земле_2й_и_5й

                        off_case_0F_00_00_02:
                        ; pass, clearing/low/защитник 3
                            .byte con_jmp
                            .word loc_9C9D_защитник_бежит_по_земле_3й

                        off_case_0F_00_00_03:
                        ; pass, clearing/low/защитник 4
                            .byte con_jmp
                            .word loc_9C97_защитник_бежит_по_земле_4й

                        off_case_0F_00_00_04:
                        ; pass, clearing/low/защитник 5
                            .byte con_jmp
                            .word loc_9C91_защитник_бежит_по_земле_2й_и_5й

                off_case_0F_00_01:
                ; pass, clearing/high
                    .dbyt con_branch_short + con_bra_порядковый_номер_защитника
                    .byte off_case_0F_00_01_00 - * ; защитник 1
                    .byte off_case_0F_00_01_01 - * ; защитник 2
                    .byte off_case_0F_00_01_02 - * ; защитник 3
                    .byte off_case_0F_00_01_03 - * ; защитник 4
                    .byte off_case_0F_00_01_04 - * ; защитник 5

                        off_case_0F_00_01_00:
                        ; pass, clearing/high/защитник 1
                            .byte con_jmp
                            .word loc_9C61_защитник_прыгает_в_воздух_1й

                        off_case_0F_00_01_01:
                        ; pass, clearing/high/защитник 2
                            .byte con_jmp
                            .word loc_9C6D_защитник_прыгает_в_воздух_2й_и_5й

                        off_case_0F_00_01_02:
                        ; pass, clearing/high/защитник 3
                            .byte con_jmp
                            .word loc_9C73_защитник_прыгает_в_воздух_3й

                        off_case_0F_00_01_03:
                        ; pass, clearing/high/защитник 4
                            .byte con_jmp
                            .word loc_9C67_защитник_прыгает_в_воздух_4й

                        off_case_0F_00_01_04:
                        ; pass, clearing/high/защитник 4
                            .byte con_jmp
                            .word loc_9C6D_защитник_прыгает_в_воздух_2й_и_5й

        bra_long_case_0F_02:
        ; through
loc_BD87:
            .byte con_mirror_condition, $01       ; номер защитника
            .byte con_F7, $02
            .byte con_pause + $28
            .byte con_s_bg_23
            .byte con_s_anim_5A
            .byte con_s_cloud_F0_default ; s_cloud_E8
            .byte con_rts



_scenario_9259_10:
    .byte con_jmp
    .word loc_9259



_scenario_9269_11:
    .byte con_jmp
    .word loc_9264



_scenario_927F_12:
    .byte con_mirror_condition, $03       ; куда летит мяч
    .dbyt con_branch_long + con_bra_высота_мяча
    .word bra_long_case_12_00 ; low
    .word bra_long_case_12_01 ; high

        bra_long_case_12_00:
        ; low
            .dbyt con_branch_short + con_bra_выживет_ли_защитник
            .byte off_case_12_00_00 - * ; защитник выживет
            .byte off_case_12_00_01 - * ; защитник убьется

                off_case_12_00_00:
                ; low/защитник выживет
                    .dbyt con_branch_short + con_bra_результат_действия_защитника
                    .byte off_case_12_00_00_00 - * ; 
                    .byte off_case_12_00_00_01 - * ; 
                    .byte off_case_12_00_00_02 - * ; 
                    .byte off_case_12_00_00_03 - * ; 

                        off_case_12_00_00_00:
                        ; low/защитник выживет/
                        off_case_12_00_00_01:
                        ; low/защитник выживет/
                            .byte con_quit

                        off_case_12_00_00_02:
                        ; low/защитник выживет/
                            .byte con_jsr
                            .word sub_A371_мяч_улетает_в_сторону
                            .byte con_quit

                        off_case_12_00_00_03:
                        ; low/защитник выживет/
                            .dbyt con_branch_short + con_bra_15
                            .byte off_case_12_00_00_03_00 - * ; 
                            .byte off_case_12_00_00_03_01 - * ; 

                                off_case_12_00_00_03_00:
                                    .byte con_jmp
                                    .word loc_A164_защитник_ловит_низкий_мяч_ногой

                                off_case_12_00_00_03_01:
                                    .byte con_jsr
                                    .word sub_A1B1_защитник_выигрывает_нижний_compete
                                    .byte con_jmp
                                    .word loc_A388_мяч_улетает_в_сторону_после_выигрывания_compete

                off_case_12_00_01:
                ; low/защитник убьется
                    .dbyt con_branch_short + con_bra_результат_действия_защитника
                    .byte off_case_12_00_01_00 - * ; 
                    .byte off_case_12_00_01_01 - * ; 
                    .byte off_case_12_00_01_02 - * ; 
                    .byte off_case_12_00_01_03 - * ; 

                        off_case_12_00_01_00:
                        ; low/защитник убьется/
                        off_case_12_00_01_01:
                        ; low/защитник убьется/
                            .byte con_quit

                        off_case_12_00_01_02:
                        ; low/защитник убьется/
                            .byte con_jsr
                            .word sub_A371_мяч_улетает_в_сторону
                            .byte con_quit

                        off_case_12_00_01_03:
                        ; low/защитник убьется/
                            .dbyt con_branch_short + con_bra_15
                            .byte off_case_12_00_01_03_00 - * ; 
                            .byte off_case_12_00_01_03_01 - * ; 

                                off_case_12_00_01_03_00:
                                    .byte con_jmp
                                    .word loc_A164_защитник_ловит_низкий_мяч_ногой

                                off_case_12_00_01_03_01:
                                    .byte con_jsr
                                    .word sub_A1B1_защитник_выигрывает_нижний_compete
                                    .byte con_jmp
                                    .word loc_A388_мяч_улетает_в_сторону_после_выигрывания_compete

        bra_long_case_12_01:
        ; high
            .dbyt con_branch_short + con_bra_выживет_ли_защитник
            .byte off_case_12_01_00 - * ; защитник выживет
            .byte off_case_12_01_01 - * ; защитник убьется

                off_case_12_01_00:
                ; high/защитник выживет
                    .dbyt con_branch_short + con_bra_результат_действия_защитника
                    .byte off_case_12_01_00_00 - * ; 
                    .byte off_case_12_01_00_01 - * ; 
                    .byte off_case_12_01_00_02 - * ; 
                    .byte off_case_12_01_00_03 - * ; 

                        off_case_12_01_00_00:
                        ; high/защитник выживет/
                        off_case_12_01_00_01:
                        ; high/защитник выживет/
                            .byte con_quit

                        off_case_12_01_00_02:
                        ; high/защитник выживет/
                            .byte con_jsr
                            .word sub_A371_мяч_улетает_в_сторону
                            .byte con_quit

                        off_case_12_01_00_03:
                        ; high/защитник выживет/
                            .dbyt con_branch_short + con_bra_15
                            .byte off_case_12_01_00_03_00 - * ; 
                            .byte off_case_12_01_00_03_01 - * ; 

                                off_case_12_01_00_03_00:
                                    .byte con_jmp
                                    .word loc_A16E_защитник_ловит_высокий_мяч_ногой

                                off_case_12_01_00_03_01:
                                    .byte con_jsr
                                    .word sub_A1BB_защитник_выигрывает_верхний_compete
                                    .byte con_jmp
                                    .word loc_A388_мяч_улетает_в_сторону_после_выигрывания_compete

                off_case_12_01_01:
                ; high/защитник убьется
                    .dbyt con_branch_short + con_bra_результат_действия_защитника
                    .byte off_case_12_01_01_00 - * ; 
                    .byte off_case_12_01_01_01 - * ; 
                    .byte off_case_12_01_01_02 - * ; 
                    .byte off_case_12_01_01_03 - * ; 

                        off_case_12_01_01_00:
                        ; high/защитник убьется/
                        off_case_12_01_01_01:
                        ; high/защитник убьется/
                            .byte con_quit

                        off_case_12_01_01_02:
                        ; high/защитник убьется/
                            .byte con_jsr
                            .word sub_A371_мяч_улетает_в_сторону
                            .byte con_quit

                        off_case_12_01_01_03:
                        ; high/защитник убьется/
                            .dbyt con_branch_short + con_bra_15
                            .byte off_case_12_01_01_03_00 - * ; 
                            .byte off_case_12_01_01_03_01 - * ; 

                                off_case_12_01_01_03_00:
                                    .byte con_jmp
                                    .word loc_A16E_защитник_ловит_высокий_мяч_ногой

                                off_case_12_01_01_03_01:
                                    .byte con_jsr
                                    .word sub_A1BB_защитник_выигрывает_верхний_compete
                                    .byte con_jmp
                                    .word loc_A388_мяч_улетает_в_сторону_после_выигрывания_compete



_scenario_91D3_13:
    .dbyt con_branch_long + con_bra_высота_мяча
    .word bra_long_case_13_00 ; low
    .word bra_long_case_13_01 ; high

        bra_long_case_13_00:
        ; low
            .dbyt con_branch_short + con_bra_действ_атак_на_своей_штрафной
            .byte off_case_13_00_00 - * ; pass
            .byte off_case_13_00_01 - * ; trap
            .byte off_case_13_00_02 - * ; clearing

                off_case_13_00_00:
                ; low/pass
                    .byte con_jmp
                    .word loc_933C_low_pass_ногой_на_своей_штрафной

                off_case_13_00_01:
                ; low/trap
                    .byte con_jmp
                    .word loc_9341_low_trap_ногой_на_своей_штрафной

                off_case_13_00_02:
                ; low/cleraring
                    .byte con_mirror_toggle
                    .byte con_jmp
                    .word loc_A22E_игрок_делает_low_clearing_ногой_на_своей_штрафной

        bra_long_case_13_01:
        ; high
            .dbyt con_branch_short + con_bra_действ_атак_на_своей_штрафной
            .byte off_case_13_01_00 - * ; pass
            .byte off_case_13_01_01 - * ; trap
            .byte off_case_13_01_02 - * ; clearing

                off_case_13_01_00:
                ; high/pass
                    .byte con_jmp
                    .word loc_9350

                off_case_13_01_01:
                ; high/trap
                    .byte con_mirror_condition, $03       ; куда летит мяч
                    .byte con_jmp
                    .word loc_B2D4_игрок_принимает_высокий_мяч_на_живот_фон_зрители

                off_case_13_01_02:
                ; high/clearing
                    .byte con_mirror_toggle
                    .byte con_jmp
                    .word loc_A238_игрок_делает_clear_головой



;_scenario_9369_09:
    .byte con_mirror_condition, $03       ; куда летит мяч
    .byte con_jsr
    .word sub_9EF6_выбор_анимации_полета_удара
    .byte con_jsr
    .word sub_936A_выбор_анимации_касания_мяча_кипером
    .byte con_jsr
    .word sub_936E_выбор_финального_результата
    .byte con_rts



sub_936A_выбор_анимации_касания_мяча_кипером:
    .dbyt con_branch_long + con_bra_действие_защитника
    .word bra_long_case_936A_00 ; catch
    .word bra_long_case_936A_01 ; punch
    .word bra_long_case_936A_02 ; triangle jump

        bra_long_case_936A_00:
        ; catch
            .dbyt con_branch_short + con_bra_разновидность_catch
            .byte off_case_936A_00_00 - * ; normal catch
            .byte off_case_936A_00_01 - * ; rolling save
            .byte off_case_936A_00_02 - * ; clone save
            .byte off_case_936A_00_03 - * ; dark illusion

                off_case_936A_00_00:
                ; catch/normal catch
                    .byte con_jsr
                    .word sub_9F9C_крит_кипера
                    .dbyt con_branch_short + con_bra_выживет_ли_защитник
                    .byte off_case_936A_00_00_00 - * ; кипер выживет
                    .byte off_case_936A_00_00_01 - * ; кипер убьется

                        off_case_936A_00_00_00:
                        ; catch/normal catch/кипер выживет
                            .dbyt con_branch_short + con_bra_результат_действия_защитника
                            .byte off_case_936A_00_00_00_00 - * ; кипер пропустит обычный удар
                            .byte off_case_936A_00_00_00_01 - * ; кипер пропустит спешал удар
                            .byte off_case_936A_00_00_00_02 - * ; кипер с трудом отобьет ладонью
                            .byte off_case_936A_00_00_00_03 - * ; кипер легко словит

                                off_case_936A_00_00_00_00:
                                ; catch/normal catch/кипер выживет/кипер пропустит обычный удар
                                off_case_936A_00_00_00_01:
                                ; catch/normal catch/кипер выживет/кипер пропустит спешал удар
                                    .byte con_jmp
                                    .word loc_A094_кипер_не_дотягивается_до_мяча_при_ловле

                                off_case_936A_00_00_00_02:
                                    ; catch/normal catch/кипер выживет/кипер с трудом отобьет ладонью
                                    .byte con_jsr
                                    .word sub_A0A1_кипер_ловит_мяч_без_звука
                                    .byte con_jsr
                                    .word sub_A308_белое_мерцание
                                    .byte con_jsr
                                    .word sub_B45D_мяч_улетает_в_сторону
                                    .byte con_jmp
                                    .word loc_9EF0_попытка_включить_drive_tiger

                                off_case_936A_00_00_00_03:
                                    ; catch/normal catch/кипер выживет/кипер легко словит
                                    .byte con_jsr
                                    .word sub_A0A6_кипер_ловит_мяч_со_звуком
                                    .byte con_jmp
                                    .word loc_9770_сообщение_об_идеальном_сейве

                        off_case_936A_00_00_01:
                        ; catch/normal catch/кипер убьется
                            .byte off_case_936A_00_00_01_00 - * ; кипер пропустит обычный удар
                            .byte off_case_936A_00_00_01_01 - * ; кипер коснется спешала и умрет
                            .byte off_case_936A_00_00_01_02 - * ; кипер с трудом отобьет ладонью
                            .byte off_case_936A_00_00_01_03 - * ; кипер легко словит (unused?)

                                off_case_936A_00_00_01_00:
                                ; catch/normal catch/кипер убьется/кипер пропустит обычный удар
                                off_case_936A_00_00_01_01:
                                ; catch/normal catch/кипер убьется/кипер коснется спешала и умрет
                                off_case_936A_00_00_01_02:
                                ; catch/normal catch/кипер убьется/кипер с трудом отобьет ладонью
                                    .byte con_jsr
                                    .word sub_A0A1_кипер_ловит_мяч_без_звука
                                    .byte con_jsr
                                    .word sub_A2DD_ярко_красное_мерцание
                                    .byte con_jmp
                                    .word loc_9FB5_убийство_кипера

                                off_case_936A_00_00_01_03:
                                    .byte con_jmp
                                    .word loc_A0A6_кипер_ловит_мяч_со_звуком

                off_case_936A_00_01:
                ; catch/rolling save
                    .byte con_jsr
                    .word sub_A0CD_rolling_save_полная_анимация
                    .byte con_jmp
                    .word loc_936B_продолжить_вычисление_спешал_catch

                off_case_936A_00_02:
                ; catch/clone save
                    .byte con_jsr
                    .word sub_A1FF_clone_save
                    .byte con_jmp
                    .word loc_936B_продолжить_вычисление_спешал_catch

                off_case_936A_00_03:
                ; catch/dark illusion
                    .byte con_jsr
                    .word sub_A1E4_dark_illusion
                loc_936B_продолжить_вычисление_спешал_catch:
                ; catch/спешал catch
                    .dbyt con_branch_short + con_bra_выживет_ли_защитник
                    .byte off_case_936A_00_01_00 - * ; кипер выживет
                    .byte off_case_936A_00_01_01 - * ; кипер убьется

                        off_case_936A_00_01_00:
                        ; catch/спешал catch/кипер выживет
                            .dbyt con_branch_short + con_bra_результат_действия_защитника
                            .byte off_case_936A_00_01_00_00 - * ; кипер пропустит обычный удар
                            .byte off_case_936A_00_01_00_01 - * ; кипер пропустит спешал удар
                            .byte off_case_936A_00_01_00_02 - * ; кипер с трудом отобьет кулаком
                            .byte off_case_936A_00_01_00_03 - * ; кипер легко словит

                                off_case_936A_00_01_00_00:
                                ; catch/спешал catch/кипер выживет/кипер пропустит обычный удар
                                off_case_936A_00_01_00_01:
                                ; catch/спешал catch/кипер выживет/кипер пропустит спешал удар
                                    .byte con_jmp
                                    .word loc_A109_кипер_промахивается_кулаком_после_спешала

                                off_case_936A_00_01_00_02:
                                ; catch/спешал catch/кипер выживет/кипер с трудом отобьет кулаком
                                    .byte con_jsr
                                    .word sub_BF04_кипер_собирается_напороться_кулаком_на_мяч
                                    .byte con_jsr
                                    .word sub_A308_белое_мерцание
                                    .byte con_jsr
                                    .word sub_A371_мяч_улетает_в_сторону
                                    .byte con_jmp
                                    .word loc_9EF0_попытка_включить_drive_tiger

                                off_case_936A_00_01_00_03:
                                ; catch/спешал catch/кипер выживет/кипер легко словит
                                    .byte con_jsr
                                    .word sub_A099_анимация_кипер_мгновенно_ловит_мяч
                                    .byte con_jsr
                                    .word sub_B44E_кипер_идеально_засейвил
                                    .byte con_jmp
                                    .word loc_9EF0_попытка_включить_drive_tiger

                        off_case_936A_00_01_01:
                        ; catch/спешал catch/кипер убьется
                            .dbyt con_branch_short + con_bra_результат_действия_защитника
                            .byte off_case_936A_00_01_01_00 - * ; кипер пропустит обычный удар
                            .byte off_case_936A_00_01_01_01 - * ; кипер коснется спешала и умрет
                            .byte off_case_936A_00_01_01_02 - * ; кипер с трудом отобьет
                            .byte off_case_936A_00_01_01_03 - * ; кипер словит

                                off_case_936A_00_01_01_00:
                                ; catch/спешал catch/кипер убьется/кипер пропустит обычный удар
                                off_case_936A_00_01_01_01:
                                ; catch/спешал catch/кипер убьется/кипер коснется спешала и умрет
                                off_case_936A_00_01_01_02:
                                ; catch/спешал catch/кипер убьется/кипер с трудом отобьет
                                    .byte con_jsr
                                    .word sub_A11D_кипер_касается_мяча_кулаком_после_спешала
                                    .byte con_jsr
                                    .word sub_A2DD_ярко_красное_мерцание
                                    .byte con_jmp
                                    .word loc_9FB5_убийство_кипера

                                off_case_936A_00_01_01_03:
                                ; catch/спешал catch/кипер убьется/кипер словит
                                    .byte con_jsr
                                    .word sub_A099_анимация_кипер_мгновенно_ловит_мяч
                                    .byte con_jsr
                                    .word sub_B44E_кипер_идеально_засейвил
                                    .byte con_jmp
                                    .word loc_9EF0_попытка_включить_drive_tiger

        bra_long_case_936A_01:
        ; punch
            .byte con_jsr
            .word sub_9F9C_крит_кипера
            .dbyt con_branch_short + con_bra_выживет_ли_кипер_после_punch
            .byte off_case_936A_01_00 - * ; кипер выживет
            .byte off_case_936A_01_01 - * ; кипер убьется

                off_case_936A_01_00:
                ; punch/кипер выживет
                    .dbyt con_branch_short + con_bra_результат_действия_защитника
                    .byte off_case_936A_01_00_00 - * ; кипер пропустит обычный удар
                    .byte off_case_936A_01_00_01 - * ; кипер пропустит спешал удар
                    .byte off_case_936A_01_00_02 - * ; кипер с трудом отобьет
                    .byte off_case_936A_01_00_03 - * ; кипер легко отобьет

                        off_case_936A_01_00_00:
                        ; punch/кипер выживет/кипер пропустит обычный удар
                        off_case_936A_01_00_01:
                        ; punch/кипер выживет/кипер пропустит спешал удар
                            .byte con_jmp
                            .word loc_A10E_кипер_не_дотягивается_кулаком_до_мяча

                        off_case_936A_01_00_02:
                        ; punch/кипер выживет/кипер с трудом отобьет
                            .byte con_drive, con_overhead
                            .word ofs_93BE_00_кипер_с_трудом_обивает
                            .word ofs_93C4_01_drive_shot_бесполезен
                            .word ofs_93D0_02_meon_с_трудом_отбивает_1й_раз
                            .word ofs_93DF_03_meon_с_трудом_отбивает_2й_раз_и_озарение

                        off_case_936A_01_00_03:
                        ; punch/кипер выживет/кипер легко отобьет
                            .byte con_drive, con_overhead
                            .word ofs_93FB_00
                            .word ofs_9404_01
                            .word ofs_940D_02
                            .word ofs_9419_03

                off_case_936A_01_01:
                ; punch/кипер убьется
                    .dbyt con_branch_short + con_bra_результат_действия_защитника
                    .byte off_case_936A_01_01_00 - * ; кипер пропустит обычный удар
                    .byte off_case_936A_01_01_01 - * ; кипер коснется спешала и умрет
                    .byte off_case_936A_01_01_02 - * ; кипер с трудом отобьет
                    .byte off_case_936A_01_01_03 - * ; кипер легко отобьет

                        off_case_936A_01_01_00:
                        ; punch/кипер убьется/кипер пропустит обычный удар
                        off_case_936A_01_01_01:
                        ; punch/кипер убьется/кипер коснется спешала и умрет
                            .byte con_jsr
                            .word sub_A122_кипер_собирается_коснуться_мяча_кулаком
                            .byte con_jsr
                            .word sub_A2DD_ярко_красное_мерцание
                            .byte con_jmp
                            .word loc_9FB5_убийство_кипера

                        off_case_936A_01_01_02:
                        ; punch/кипер убьется/кипер с трудом отобьет
                            .byte con_drive, con_overhead
                            .word ofs_946A_00_кипер_убивается_и_мяч_отлетает
                            .word ofs_93C4_01_drive_shot_бесполезен
                            .word ofs_93D0_02_meon_с_трудом_отбивает_1й_раз
                            .word ofs_93DF_03_meon_с_трудом_отбивает_2й_раз_и_озарение

                        off_case_936A_01_01_03:
                        ; punch/кипер убьется/кипер легко отобьет
                            .byte con_drive, con_overhead
                            .word ofs_93FB_00
                            .word ofs_9404_01
                            .word ofs_940D_02
                            .word ofs_9419_03

        bra_long_case_936A_02:
        ; triangle jump
            .byte con_jsr
            .word sub_9C5B_wakashimazu_отскок_от_штанги
            .dbyt con_branch_short + con_bra_выживет_ли_защитник
            .byte off_case_936A_02_00 - * ; кипер выживет
            .byte off_case_936A_02_01 - * ; кипер убьется

                off_case_936A_02_00:
                ; triangle jump/кипер выживет
                    .dbyt con_branch_short + con_bra_результат_действия_защитника
                    .byte off_case_936A_02_00_00 - * ; кипер пропустит обычный удар
                    .byte off_case_936A_02_00_01 - * ; кипер пропустит спешал удар
                    .byte off_case_936A_02_00_02 - * ; кипер отобьет
                    .byte off_case_936A_02_00_03 - * ; кипер словит

                        off_case_936A_02_00_00:
                        ; triangle jump/кипер выживет/кипер пропустит обычный удар
                        off_case_936A_02_00_01:
                        ; triangle jump/кипер выживет/кипер пропустит спешал удар
                            .byte con_jmp
                            .word loc_A1DD_triangle_jump_не_достает_до_мяча

                        off_case_936A_02_00_02:
                        ; triangle jump/кипер выживет/кипер отобьет
                            .byte con_jsr
                            .word sub_A1CA_triangle_jump_ловит_мяч
                            .byte con_jsr
                            .word sub_A308_белое_мерцание
                            .byte con_jmp
                            .word loc_A371_мяч_улетает_в_сторону

                        off_case_936A_02_00_03:
                        ; triangle jump/кипер выживет/кипер словит
                            .byte con_jsr
                            .word sub_A1D1_triangle_jump_ловит_мяч
                            .byte con_jmp
                            .word loc_B44E_кипер_идеально_засейвил

                off_case_936A_02_01:
                ; triangle jump/кипер убьется
                    .dbyt con_branch_short + con_bra_результат_действия_защитника
                    .byte off_case_936A_02_01_00 - * ; кипер пропустит обычный удар
                    .byte off_case_936A_02_01_01 - * ; кипер коснется спешала и умрет
                    .byte off_case_936A_02_01_02 - * ; кипер с трудом отобьет
                    .byte off_case_936A_02_01_03 - * ; кипер словит

                        off_case_936A_02_01_00:
                        ; triangle jump/кипер убьется/кипер пропустит обычный удар
                        off_case_936A_02_01_01:
                        ; triangle jump/кипер убьется/кипер коснется спешала и умрет
                            .byte con_jsr
                            .word sub_A1CA_triangle_jump_ловит_мяч
                            .byte con_jsr
                            .word sub_A2DD_ярко_красное_мерцание
                            .byte con_jmp
                            .word loc_9FB5_убийство_кипера

                        off_case_936A_02_01_02:
                        ; triangle jump/кипер убьется/кипер с трудом отобьет
                            .byte con_jsr
                            .word sub_A1CA_triangle_jump_ловит_мяч
                            .byte con_jsr
                            .word sub_A2DD_ярко_красное_мерцание
                            .byte con_jsr
                            .word sub_9FB5_убийство_кипера
                            .byte con_jmp
                            .word loc_A371_мяч_улетает_в_сторону

                        off_case_936A_02_01_03:
                        ; triangle jump/кипер убьется/кипер словит
                            .byte con_jsr
                            .word sub_A1D1_triangle_jump_ловит_мяч
                            .byte con_jmp
                            .word loc_B44E_кипер_идеально_засейвил



sub_936E_выбор_финального_результата:
    .dbyt con_branch_long + con_bra_действие_защитника
    .word bra_long_case_936E_00 ; catch
    .word bra_long_case_936E_01 ; punch
    .word bra_long_case_936E_02 ; triangle jump

        bra_long_case_936E_00:
        ; catch
            .dbyt con_branch_short + con_bra_выживет_ли_защитник
            .byte off_case_936E_00_00 - * ; кипер выживет
            .byte off_case_936E_00_01 - * ; кипер убьется

                off_case_936E_00_00:

                    

                off_case_936E_00_01:

            
        bra_long_case_936E_01:
        ; punch

            

        bra_long_case_936E_02:
        ; triangle jump



_scenario_9B82_14:
    .byte con_mirror_condition, $03       ; куда летит мяч
    .dbyt con_branch_short + con_bra_выживет_ли_защитник
    .byte off_case_14_00 - * ; защитник выживет
    .byte off_case_14_01 - * ; защитник убьется

        off_case_14_00:
        ; защитник выживет
            .byte con_jsr
            .word sub_A32D_полет_удара_со_звуком
            .dbyt con_branch_short + con_bra_результат_действия_защитника
            .byte off_case_14_00_00 - * ; промахнется
            .byte off_case_14_00_01 - * ; коснется
            .byte off_case_14_00_02 - * ; отобьет
            .byte off_case_14_00_03 - * ; словит

                off_case_14_00_00:
                ; защитник выживет/промахнется
                    .byte con_jmp
                    .word loc_A383_удар_огибает_стеночку

                off_case_14_00_01:
                ; защитник выживет/коснется
                    .byte con_jsr
                    .word sub_A321_стенка_была_задета
                    .byte con_jmp
                    .word loc_A37E_мяч_летит_дальше_после_задевания_стенки

                off_case_14_00_02:
                ; защитник выживет/отобьет
                    .byte con_jsr
                    .word sub_A308_белое_мерцание
                    .byte con_jmp
                    .word loc_A371_мяч_улетает_в_сторону

                off_case_14_00_03:
                ; защитник выживет/словит
                    .byte con_jsr
                    .word sub_A2EF_белое_мерцание_без_звука
                    .byte con_jmp
                    .word loc_A319_стенка_заблокировала_удар

        off_case_14_01:
        ; защитник убьется
            .dbyt con_branch_short + con_bra_результат_действия_защитника
            .byte off_case_14_01_00 - * ; промахнется
            .byte off_case_14_01_01 - * ; коснется
            .byte off_case_14_01_02 - * ; отобьет
            .byte off_case_14_01_03 - * ; словит

                off_case_14_01_00:
                ; защитник убьется/промахнется
                    .byte con_jsr
                    .word sub_A32D_полет_удара_со_звуком
                    .byte con_jsr
                    .word sub_A2DD_ярко_красное_мерцание
                    .byte con_jmp
                    .word loc_9F62_рандом_анимации_отпизженного_игрока_2_с_сообщением

                off_case_14_01_01:
                ; защитник убьется/коснется
                    .byte con_jsr
                    .word sub_A32D_полет_удара_со_звуком
                    .byte con_jsr
                    .word sub_A2DD_ярко_красное_мерцание
                    .byte con_jsr
                    .word sub_9F5C_рандом_анимации_отпизженного_игрока_1_с_сообщением
                    .byte con_jmp
                    .word loc_A240_серый_экран_после_касания_высого_мяча_телом

                off_case_14_01_02:
                ; защитник убьется/отобьет
                    .byte con_jmp
                    .word loc_A2FE_сообщение_oh_на_мигающем_белом_фоне

                off_case_14_01_03:
                ; защитник убьется/словит
                    .byte con_quit



_scenario_B80A_15:
    .byte con_pause + $01
    .byte con_s_bg_71
    .byte con_s_anim_00
    .byte con_s_cloud_clear
    .byte con_F7, $1F
    .byte con_pause + $80
    .byte con_s_bg_30
    .byte con_s_anim_face_p_matsuyama_furano
    .byte con_s_cloud_F0_default ; s_cloud_76
    .byte con_jmp
    .word loc_BBC7_очистка



_scenario_B817_16:
    .byte con_pause + $01
    .byte con_s_bg_71
    .byte con_s_anim_00
    .byte con_s_cloud_clear
    .byte con_pause + $80
    .byte con_s_bg_30
    .byte con_s_anim_face_p_diaz_argentina
    .byte con_s_cloud_F0_default ; s_cloud_77
    .byte con_jmp
    .word loc_BBC7_очистка



_scenario_B8A1_17:
    .byte con_pause + $01
    .byte con_s_bg_71
    .byte con_s_anim_00
    .byte con_s_cloud_clear
    .byte con_mirror_on
    .byte con_F7, $1F
    .byte con_soundID_delay, $30, $02
    .byte con_pause + $78
    .byte con_s_bg_30
    .byte con_s_anim_face_p_tsubasa_my
    .byte con_s_cloud_F0_default ; s_cloud_81
    .byte con_jsr
    .word sub_BBC7_очистка
    .byte con_soundID_delay, $2B, $02
    .byte con_pause + $28
    .byte con_s_bg_01
    .byte con_s_anim_66
    .byte con_s_cloud_F0_default ; s_cloud_82
    .byte con_pause + $29
    .byte con_s_bg_20
    .byte con_s_anim_4C
    .byte con_s_cloud_FF_skip
    .byte con_jsr
    .word sub_BBC7_очистка
    .byte con_pause + $5A
    .byte con_s_bg_30
    .byte con_s_anim_face_p_tsubasa_my
    .byte con_s_cloud_F0_default ; s_cloud_83
    .byte con_soundID_delay, $25, $02
    .byte con_pause + $28
    .byte con_s_bg_20
    .byte con_s_anim_ED
    .byte con_s_cloud_clear
    .byte con_mirror_toggle
    .byte con_pause + $3C
    .byte con_s_bg_32
    .byte con_s_anim_face_p_meon_gremio
    .byte con_s_cloud_F0_default ; s_cloud_84
    .byte con_mirror_toggle
    .byte con_soundID_delay, $2B, $31
    .byte con_pause + $38
    .byte con_s_bg_47
    .byte con_s_anim_BF
    .byte con_s_cloud_F0_default ; s_cloud_85
    .byte con_pause + $25
    .byte con_s_bg_FF_skip
    .byte con_s_anim_FF_skip
    .byte con_s_cloud_FF_skip
    .byte con_mirror_toggle
    .byte con_soundID_delay, $04, $02
    .byte con_pause + $32
    .byte con_s_bg_63
    .byte con_s_anim_0F
    .byte con_s_cloud_clear
    .byte con_moving_bg, $04
    .byte con_pause + $32
    .byte con_s_bg_58
    .byte con_s_anim_04
    .byte con_s_cloud_F0_default ; s_cloud_86
    .byte con_F7, $33
    .byte con_soundID_delay, $05, $02
    .byte con_pause + $36
    .byte con_s_bg_27
    .byte con_s_anim_10
    .byte con_s_cloud_FF_skip
    .byte con_jsr
    .word sub_B519
    .byte con_pause + $64
    .byte con_s_bg_32
    .byte con_s_anim_face_p_meon_gremio
    .byte con_s_cloud_F0_default ; s_cloud_8E
    .byte con_pause + $10
    .byte con_s_bg_0E
    .byte con_s_anim_D3
    .byte con_s_cloud_clear
    .byte con_F7, $03
    .byte con_soundID_delay, $61, $02
    .byte con_pause + $64
    .byte con_s_bg_07
    .byte con_s_anim_45
    .byte con_s_cloud_F0_default ; s_cloud_28
    .byte con_jsr
    .word sub_BBC7_очистка
    .byte con_pause + $6E
    .byte con_s_bg_32
    .byte con_s_anim_face_p_meon_gremio
    .byte con_s_cloud_F0_default ; s_cloud_87
    .byte con_jmp
    .word loc_BBC7_очистка



_scenario_9E3E_18:
    .byte con_mirror_condition, $00
    .dbyt con_branch_short + con_bra_где_сейчас_мяч
    .byte off_case_18_00 - * ; мяч у атакующего на земле
    .byte off_case_18_01 - * ; летит низкий мяч
    .byte off_case_18_02 - * ; пас головой в воздухе

        off_case_18_00:
        ; мяч у атакующего на земле
        off_case_18_01:
        ; летит низкий мяч
            .byte con_jmp
            .word loc_9E45_выбор_анимации_паса_с_земли_или_по_низкому_мячу

        off_case_18_02:
        ; пас головой в воздухе
            .byte con_jmp
            .word loc_9E4F_пас_головой_в_воздухе



_scenario_BBD4_19_1_2_start:
    .byte con_mirror_condition, $00
    .dbyt con_branch_short + con_bra_обычный_или_спешал
    .byte off_case_19_00 - * ; обычная_перепасовка
    .byte off_case_19_01 - * ; спешал_перепасовка

        off_case_19_00:
        ; обычная_перепасовка
            .byte con_jmp
            .word loc_BBDA

        off_case_19_01:
        ; спешал_перепасовка
            .dbyt con_branch_short + con_bra_требуются_2_напарника     ; спешал перепасовка
            .byte off_case_19_01_00 - * ; p_tsubasa_my
            .byte off_case_19_01_01 - * ; p_misaki_my
            .byte off_case_19_01_02 - * ; p_hyuga_my
            .byte off_case_19_01_03 - * ; p_hyuga_japan
            .byte off_case_19_01_04 - * ; p_hyuga_toho
            .byte off_case_19_01_05 - * ; p_sawada_my
            .byte off_case_19_01_06 - * ; p_sawada_toho
            .byte off_case_19_01_07 - * ; p_masao_my
            .byte off_case_19_01_08 - * ; p_kazuo_my
            .byte off_case_19_01_09 - * ; p_masao_japan
            .byte off_case_19_01_0A - * ; p_kazuo_japan
            .byte off_case_19_01_0B - * ; p_masao_akita
            .byte off_case_19_01_0C - * ; p_kazuo_akita
            .byte off_case_19_01_0D - * ; p_diaz_argentina
            .byte off_case_19_01_0E - * ; p_pascal_argentina
            .byte off_case_19_01_0F - * ; p_pierre_france
            .byte off_case_19_01_10 - * ; p_napoleon_france
            ; bzk garbage
            .byte off_case_19_01_11 - * ; игрок без спешал перепасовки (placeholder)

                off_case_19_01_00:
                ; спешал_перепасовка/p_tsubasa_my
                off_case_19_01_01:
                ; спешал_перепасовка/p_misaki_my
                off_case_19_01_03:
                ; спешал_перепасовка/p_hyuga_japan
                off_case_19_01_11:
                ; спешал_перепасовка/игрок без спешал перепасовки
                    .byte con_mirror_on
                    .byte con_F8, $04
                    .byte con_pause + $3C
                    .byte con_s_bg_4F
                    .byte con_s_anim_face_p_tsubasa_my
                    .byte con_s_cloud_F0_default ; s_cloud_CB
                    .byte con_mirror_toggle
                    .byte con_F8, $04
                    .byte con_pause + $3C
                    .byte con_s_bg_30
                    .byte con_s_anim_face_p_misaki_my
                    .byte con_s_cloud_F0_default ; s_cloud_CA
                    .byte con_jmp
                    .word loc_BBDA

                off_case_19_01_02:
                ; спешал_перепасовка/p_hyuga_my
                off_case_19_01_05:
                ; спешал_перепасовка/p_sawada_my
                    .byte con_mirror_on
                    .byte con_F8, $04
                    .byte con_pause + $3C
                    .byte con_s_bg_55
                    .byte con_s_anim_face_p_hyuga_my
                    .byte con_s_cloud_F0_default ; s_cloud_D1
                    .byte con_mirror_toggle
                    .byte con_F8, $04
                    .byte con_pause + $3C
                    .byte con_s_bg_30
                    .byte con_s_anim_face_p_sawada_my
                    .byte con_s_cloud_F0_default ; s_cloud_D0
                    .byte con_jmp
                    .word loc_BBDA

                off_case_19_01_04:
                ; спешал_перепасовка/p_hyuga_toho
                off_case_19_01_06:
                ; спешал_перепасовка/p_sawada_toho
                    .byte con_mirror_on
                    .byte con_F8, $04
                    .byte con_pause + $3C
                    .byte con_s_bg_55
                    .byte con_s_anim_face_p_hyuga_toho
                    .byte con_s_cloud_F0_default ; s_cloud_D1
                    .byte con_mirror_toggle
                    .byte con_F8, $04
                    .byte con_pause + $3C
                    .byte con_s_bg_30
                    .byte con_s_anim_face_p_sawada_toho
                    .byte con_s_cloud_F0_default ; s_cloud_D0
                    .byte con_jmp
                    .word loc_BBDA

                off_case_19_01_07:
                ; спешал_перепасовка/p_masao_my
                off_case_19_01_08:
                ; спешал_перепасовка/p_kazuo_my
                off_case_19_01_09:
                ; спешал_перепасовка/p_masao_japan
                off_case_19_01_0A:
                ; спешал_перепасовка/p_kazuo_japan
                    .byte con_mirror_on
                    .byte con_F8, $04
                    .byte con_pause + $3C
                    .byte con_s_bg_4F
                    .byte con_s_anim_face_p_masao_my
                    .byte con_s_cloud_F0_default ; s_cloud_AC
                    .byte con_mirror_toggle
                    .byte con_F8, $04
                    .byte con_pause + $3C
                    .byte con_s_bg_30
                    .byte con_s_anim_face_p_masao_my
                    .byte con_s_cloud_F0_default ; s_cloud_D3
                    .byte con_jmp
                    .word loc_BBDA

                off_case_19_01_0B:
                ; спешал_перепасовка/p_masao_akita
                off_case_19_01_0C:
                ; спешал_перепасовка/p_kazuo_akita
                    .byte con_mirror_on
                    .byte con_F8, $04
                    .byte con_pause + $3C
                    .byte con_s_bg_4F
                    .byte con_s_anim_face_p_masao_akita
                    .byte con_s_cloud_F0_default ; s_cloud_D3
                    .byte con_mirror_toggle
                    .byte con_F8, $04
                    .byte con_pause + $3C
                    .byte con_s_bg_30
                    .byte con_s_anim_face_p_masao_akita
                    .byte con_s_cloud_F0_default ; s_cloud_AC
                    .byte con_jmp
                    .word loc_BBDA

                off_case_19_01_0D:
                ; спешал_перепасовка/p_diaz_argentina
                off_case_19_01_0E:
                ; спешал_перепасовка/p_pascal_argentina
                    .byte con_mirror_on
                    .byte con_F8, $04
                    .byte con_pause + $3C
                    .byte con_s_bg_4F
                    .byte con_s_anim_face_p_pascal_argentina
                    .byte con_s_cloud_F0_default ; s_cloud_CD
                    .byte con_mirror_toggle
                    .byte con_F8, $04
                    .byte con_pause + $3C
                    .byte con_s_bg_30
                    .byte con_s_anim_face_p_diaz_argentina
                    .byte con_s_cloud_F0_default ; s_cloud_CE
                    .byte con_jmp
                    .word loc_BBDA

                off_case_19_01_0F:
                ; спешал_перепасовка/p_pierre_france
                off_case_19_01_10:
                ; спешал_перепасовка/p_napoleon_france
                    .byte con_mirror_on
                    .byte con_F8, $04
                    .byte con_pause + $3C
                    .byte con_s_bg_4F
                    .byte con_s_anim_face_p_napoleon_france
                    .byte con_s_cloud_F0_default ; s_cloud_D4
                    .byte con_mirror_toggle
                    .byte con_F8, $04
                    .byte con_pause + $3C
                    .byte con_s_bg_30
                    .byte con_s_anim_face_p_pierre_france
                    .byte con_s_cloud_F0_default ; s_cloud_D5
                    .byte con_jmp
                    .word loc_BBDA



_scenario_BC6D_1A_1_2_return:
    .dbyt con_branch_short + con_bra_обычный_или_спешал
    .byte off_case_1A_00 - * ; обычная перепасовка
    .byte off_case_1A_01 - * ; спешал перепасовка

        off_case_1A_00:
        ; обычная перепасовка
            .byte con_mirror_condition, $00
            .byte con_pause + $32
            .byte con_s_bg_20
            .byte con_s_anim_7B
            .byte con_s_cloud_FF_skip
            .byte con_soundID_delay, $2C, $1D
            .byte con_pause + $3C
            .byte con_s_bg_3C
            .byte con_s_anim_7C
            .byte con_s_cloud_F0_default ; s_cloud_5A
            .byte con_jmp
            .word loc_BBC7_очистка

        off_case_1A_01:
        ; спешал перепасовка
            .byte con_mirror_off
            .dbyt con_branch_short + con_bra_требуются_2_напарника     ; спешал перепасовка
            .byte off_case_1A_01_00 - * ; p_tsubasa_my
            .byte off_case_1A_01_01 - * ; p_misaki_my
            .byte off_case_1A_01_02 - * ; p_hyuga_my
            .byte off_case_1A_01_03 - * ; p_hyuga_japan
            .byte off_case_1A_01_04 - * ; p_hyuga_toho
            .byte off_case_1A_01_05 - * ; p_sawada_my
            .byte off_case_1A_01_06 - * ; p_sawada_toho
            .byte off_case_1A_01_07 - * ; p_masao_my
            .byte off_case_1A_01_08 - * ; p_kazuo_my
            .byte off_case_1A_01_09 - * ; p_masao_japan
            .byte off_case_1A_01_0A - * ; p_kazuo_japan
            .byte off_case_1A_01_0B - * ; p_masao_akita
            .byte off_case_1A_01_0C - * ; p_kazuo_akita
            .byte off_case_1A_01_0D - * ; p_diaz_argentina
            .byte off_case_1A_01_0E - * ; p_pascal_argentina
            .byte off_case_1A_01_0F - * ; p_pierre_france
            .byte off_case_1A_01_10 - * ; p_napoleon_france
            .byte off_case_1A_01_11 - * ; игрок без спешал перепасовки

                off_case_1A_01_00:
                ; спешал перепасовка/p_tsubasa_my
                    .byte con_soundID_delay, $2C, $21
                    .byte con_pause + $28
                    .byte con_s_bg_36
                    .byte con_s_anim_95
                    .byte con_s_cloud_F0_default ; s_cloud_CC
                    .byte con_mirror_toggle
                    .byte con_soundID_delay, $2C, $21
                    .byte con_pause + $3C
                    .byte con_s_bg_01
                    .byte con_s_anim_92
                    .byte con_s_cloud_FF_skip
                    .byte con_mirror_toggle
                    .byte con_soundID_delay, $2C, $21
                    .byte con_pause + $28
                    .byte con_s_bg_36
                    .byte con_s_anim_95
                    .byte con_s_cloud_FF_skip
                off_case_1A_01_11:
                ; спешал перепасовка/игрок без спешал перепасовки
                    .byte con_rts

                off_case_1A_01_01:
                ; спешал перепасовка/p_misaki_my
                    .byte con_soundID_delay, $2C, $21
                    .byte con_pause + $3C
                    .byte con_s_bg_36
                    .byte con_s_anim_92
                    .byte con_s_cloud_F0_default ; s_cloud_CC
                    .byte con_mirror_toggle
                    .byte con_soundID_delay, $2C, $21
                    .byte con_pause + $3C
                    .byte con_s_bg_01
                    .byte con_s_anim_95
                    .byte con_s_cloud_FF_skip
                    .byte con_mirror_toggle
                    .byte con_soundID_delay, $2C, $21
                    .byte con_pause + $3C
                    .byte con_s_bg_36
                    .byte con_s_anim_92
                    .byte con_s_cloud_FF_skip
                    .byte con_rts

                off_case_1A_01_02:
                ; спешал перепасовка/p_hyuga_my
                off_case_1A_01_03:
                ; спешал перепасовка/p_hyuga_japan
                    .byte con_F7, $40
                    .byte con_jmp
                    .word loc_BCCD

                off_case_1A_01_04:
                ; спешал перепасовка/p_hyuga_toho
                    .byte con_F7, $22
                loc_BCCD:
                    .byte con_soundID_delay, $2C, $21
                    .byte con_pause + $3C
                    .byte con_s_bg_36
                    .byte con_s_anim_A7
                    .byte con_s_cloud_F0_default ; s_cloud_D2
                    .byte con_mirror_toggle
                    .byte con_soundID_delay, $2C, $21
                    .byte con_pause + $3C
                    .byte con_s_bg_01
                    .byte con_s_anim_A5
                    .byte con_s_cloud_FF_skip
                    .byte con_mirror_toggle
                    .byte con_soundID_delay, $2C, $21
                    .byte con_pause + $3C
                    .byte con_s_bg_36
                    .byte con_s_anim_A7
                    .byte con_s_cloud_FF_skip
                    .byte con_rts

                off_case_1A_01_05:
                ; спешал перепасовка/p_sawada_my
                    .byte con_F7, $40
                    .byte con_jmp
                    .word loc_BCEC

                off_case_1A_01_06:
                ; спешал перепасовка/p_sawada_toho
                    .byte con_F7, $22
                loc_BCEC:
                    .byte con_soundID_delay, $2C, $21
                    .byte con_pause + $3C
                    .byte con_s_bg_36
                    .byte con_s_anim_A5
                    .byte con_s_cloud_F0_default ; s_cloud_D2
                    .byte con_mirror_toggle
                    .byte con_soundID_delay, $2C, $21
                    .byte con_pause + $3C
                    .byte con_s_bg_01
                    .byte con_s_anim_A7
                    .byte con_s_cloud_FF_skip
                    .byte con_mirror_toggle
                    .byte con_soundID_delay, $2C, $21
                    .byte con_pause + $3C
                    .byte con_s_bg_36
                    .byte con_s_anim_A5
                    .byte con_s_cloud_FF_skip
                    .byte con_rts

                off_case_1A_01_07:
                ; спешал перепасовка/p_masao_my
                off_case_1A_01_08:
                ; спешал перепасовка/p_kazuo_my
                off_case_1A_01_09:
                ; спешал перепасовка/p_masao_japan
                off_case_1A_01_0A:
                ; спешал перепасовка/p_kazuo_japan
                    .byte con_F7, $40
                    .byte con_jmp
                    .word loc_BD0B

                off_case_1A_01_0B:
                ; спешал перепасовка/p_masao_akita
                off_case_1A_01_0C:
                ; спешал перепасовка/p_kazuo_akita
                    .byte con_F7, $3F
                loc_BD0B:
                    .byte con_soundID_delay, $2C, $21
                    .byte con_pause + $3C
                    .byte con_s_bg_36
                    .byte con_s_anim_EF
                    .byte con_s_cloud_F0_default ; s_cloud_D6
                    .byte con_mirror_toggle
                    .byte con_soundID_delay, $2C, $21
                    .byte con_pause + $3C
                    .byte con_s_bg_01
                    .byte con_s_anim_EF
                    .byte con_s_cloud_FF_skip
                    .byte con_mirror_toggle
                    .byte con_soundID_delay, $2C, $21
                    .byte con_pause + $3C
                    .byte con_s_bg_36
                    .byte con_s_anim_EF
                    .byte con_s_cloud_FF_skip
                    .byte con_rts

                off_case_1A_01_0D:
                ; спешал перепасовка/p_diaz_argentina
                    .byte con_soundID_delay, $2C, $21
                    .byte con_pause + $3C
                    .byte con_s_bg_36
                    .byte con_s_anim_DF
                    .byte con_s_cloud_F0_default ; s_cloud_CF
                    .byte con_mirror_toggle
                    .byte con_soundID_delay, $2C, $21
                    .byte con_pause + $3C
                    .byte con_s_bg_01
                    .byte con_s_anim_BE
                    .byte con_s_cloud_FF_skip
                    .byte con_mirror_toggle
                    .byte con_soundID_delay, $2C, $21
                    .byte con_pause + $3C
                    .byte con_s_bg_36
                    .byte con_s_anim_DF
                    .byte con_s_cloud_FF_skip
                    .byte con_rts

                off_case_1A_01_0E:
                ; спешал перепасовка/p_pascal_argentina
                    .byte con_soundID_delay, $2C, $21
                    .byte con_pause + $3C
                    .byte con_s_bg_36
                    .byte con_s_anim_BE
                    .byte con_s_cloud_F0_default ; s_cloud_CF
                    .byte con_mirror_toggle
                    .byte con_soundID_delay, $2C, $21
                    .byte con_pause + $3C
                    .byte con_s_bg_01
                    .byte con_s_anim_DF
                    .byte con_s_cloud_FF_skip
                    .byte con_mirror_toggle
                    .byte con_soundID_delay, $2C, $21
                    .byte con_pause + $3C
                    .byte con_s_bg_36
                    .byte con_s_anim_BE
                    .byte con_s_cloud_FF_skip
                    .byte con_rts

                off_case_1A_01_0F:
                ; спешал перепасовка/p_pierre_france
                    .byte con_F7, $25
                    .byte con_soundID_delay, $2C, $21
                    .byte con_pause + $3C
                    .byte con_s_bg_36
                    .byte con_s_anim_A7
                    .byte con_s_cloud_F0_default ; s_cloud_D6
                    .byte con_mirror_toggle
                    .byte con_soundID_delay, $2C, $21
                    .byte con_pause + $3C
                    .byte con_s_bg_01
                    .byte con_s_anim_EE
                    .byte con_s_cloud_FF_skip
                    .byte con_mirror_toggle
                    .byte con_soundID_delay, $2C, $21
                    .byte con_pause + $3C
                    .byte con_s_bg_36
                    .byte con_s_anim_A7
                    .byte con_s_cloud_FF_skip
                    .byte con_rts

                off_case_1A_01_10:
                ; спешал перепасовка/p_napoleon_france
                    .byte con_F7, $25
                    .byte con_soundID_delay, $2C, $21
                    .byte con_pause + $3C
                    .byte con_s_bg_36
                    .byte con_s_anim_EE
                    .byte con_s_cloud_F0_default ; s_cloud_D6
                    .byte con_mirror_toggle
                    .byte con_soundID_delay, $2C, $21
                    .byte con_pause + $3C
                    .byte con_s_bg_01
                    .byte con_s_anim_A7
                    .byte con_s_cloud_FF_skip
                    .byte con_mirror_toggle
                    .byte con_soundID_delay, $2C, $21
                    .byte con_pause + $3C
                    .byte con_s_bg_36
                    .byte con_s_anim_EE
                    .byte con_s_cloud_F0_default ; s_cloud_D6
                    .byte con_rts



_scenario_B486_1B_1_2_end:
    .byte con_mirror_condition, $00
    .dbyt con_branch_short + con_bra_обычный_или_спешал
    .word case_1B_00 - * ; обычная перепасовка
    .word case_1B_01 - * ; спешал перепасовка

        case_1B_00:
        ; обычная перепасовка
            .byte con_mirror_toggle
            .byte con_jsr
            .word sub_BB4B_летящий_мяч_перед_принятием_финального_паса_перепасовки
loc_B49E_игрок_принимает_пас_на_ногу:
            .byte con_soundID_delay, $2C, $1D
            .byte con_pause + $3C
            .byte con_s_bg_01
            .byte con_s_anim_78
            .byte con_s_cloud_F0_default ; s_cloud_58
            .byte con_rts

        case_1B_01:
        ; спешал перепасовка
        ; bzk bug?
            .byte con_jmp
            .word loc_B48E



_scenario_9BE3_1C:
    .byte con_mirror_condition, $00
    .byte con_jsr
    .word sub_9F3E
    .dbyt con_branch_short + con_bra_высота_мяча
    .byte off_case_1C_00 - * ; low
    .byte off_case_1C_01 - * ; high

        off_case_1C_00:
        ; low
            .byte con_jmp
            .word loc_B49E_игрок_принимает_пас_на_ногу

        off_case_1C_01:
        ; high
            .byte con_jmp
            .word loc_B4B6_игрок_принимает_пас_на_грудь



sub_B4BF_мяч_улетает_в_аут:
    .byte con_soundID_delay, $64, $0B
    .byte con_pause + $1E
    .byte con_s_bg_39
    .byte con_s_anim_7E
    .byte con_s_cloud_F0_default ; s_cloud_5C
    .byte con_rts



loc_9C28_гол_и_проверка_на_рваную_сетку:
    .byte con_F7, $03
    .dbyt con_branch_short + con_bra_порвана_ли_сетка
    .byte off_case_A25D_00 - * ; сетка не порвана
    .byte off_case_A267_01 - * ; сетка порвана

        off_case_A25D_00:
            .byte con_F7, $03
            .byte con_soundID_delay, $60, $02
            .byte con_pause + $78
            .byte con_s_bg_07
            .byte con_s_anim_44
            .byte con_s_cloud_F0_default ; s_cloud_28
            .byte con_rts

        off_case_A267_01:
loc_A267_goal_и_рваная_сетка:
            .byte con_F7, $03
            .byte con_soundID_delay, $61, $02
            .byte con_pause + $78
            .byte con_s_bg_07
            .byte con_s_anim_45
            .byte con_s_cloud_F0_default ; s_cloud_28
            .byte con_rts



sub_9C5B_wakashimazu_отскок_от_штанги:
    .dbyt con_branch_short + con_bra_наебан_ли_кипер
    .byte off_case_9C5B_00 - * ; кипер не наебан
    .byte off_case_9C5B_01 - * ; кипер наебан

        off_case_9C5B_00:
        ; кипер не наебан
            .byte con_jmp
            .word loc_A34D_отскок_вакашимазу_от_штанги

        off_case_9C5B_01:
        ; кипер наебан
            .byte con_mirror_off
            .dbyt con_branch_short + con_bra_за_какую_команду_играешь
            .byte off_case_9C5B_01_00 - * ; sao paulo
            .byte off_case_9C5B_01_01 - * ; nankatsu
            .byte off_case_9C5B_01_02 - * ; japan

                off_case_9C5B_01_00:
                off_case_9C5B_01_02:
                ; кипер наебан/sao paulo, japan
                ; антикрит вакашимазу
                    .byte con_pause + $32
                    .byte con_s_bg_33
                    .byte con_s_anim_face_p_wakashimazu_my
                    .byte con_s_cloud_F0_default ; s_cloud_9F
loc_A34B_отскок_от_штанги:
                    .byte con_mirror_condition, $03       ; куда летит мяч
loc_A34D_отскок_вакашимазу_от_штанги:
sub_A34D_отскок_вакашимазу_от_штанги:
; вакашимазу отталкивается от штанги
                    .byte con_pause + $08
                    .byte con_s_bg_0B
                    .byte con_s_anim_00
                    .byte con_s_cloud_F0_default ; s_cloud_2F
                    .byte con_F7, $05
                    .byte con_soundID_delay, $68, $21
                    .byte con_pause + $2D
                    .byte con_s_bg_FF_skip
                    .byte con_s_anim_4D
                    .byte con_s_cloud_FF_skip
                    .byte con_rts

                off_case_9C5B_01_01:
                ; кипер наебан/nankatsu
                ; антикрит вакашимазу (bzk чего это я так решил? но вроде правильно решил)
                    .byte con_pause + $32
                    .byte con_s_bg_73
                    .byte con_s_anim_face_p_wakashimazu_my
                    .byte con_s_cloud_F0_default ; s_cloud_9F
                    .byte con_jmp
                    .word loc_A34B_отскок_от_штанги



loc_9C61_защитник_прыгает_в_воздух_1й:
; !!!
    .dbyt con_branch_long + con_bra_защитный_спешал_или_нет
    .word bra_long_case_B310_00_no_special_defense ; 
    .word bra_long_case_B2FE_01_yes_special_defense ; 



loc_9C67_защитник_прыгает_в_воздух_4й:
    .dbyt con_branch_long + con_bra_защитный_спешал_или_нет
    .word bra_long_case_A3B3_00_no_special_defense ; 
    .word bra_long_case_B2FE_01_yes_special_defense ; 

bra_long_case_A3B3_00_no_special_defense:
            .byte con_F8, $03
            .byte con_soundID_delay, $25, $02
            .byte con_pause + $32
            .byte con_s_bg_1D
            .byte con_s_anim_20
            .byte con_s_cloud_F0_default ; s_cloud_3C
            .byte con_rts



loc_9C6D_защитник_прыгает_в_воздух_2й_и_5й:
    .dbyt con_branch_long + con_bra_защитный_спешал_или_нет
    .word bra_long_case_A3BD_00_no_special_defense ; 
    .word bra_long_case_B2FE_01_yes_special_defense ; 

bra_long_case_A3BD_00_no_special_defense:
            .byte con_soundID_delay, $25, $02
            .byte con_pause + $32
            .byte con_s_bg_1E
            .byte con_s_anim_1C
            .byte con_s_cloud_F0_default ; s_cloud_3D
            .byte con_rts



loc_9C73_защитник_прыгает_в_воздух_3й:
    .dbyt con_branch_long + con_bra_защитный_спешал_или_нет
    .word bra_long_case_A3C5_00_no_special_defense ; 
    .word bra_long_case_B2FE_01_yes_special_defense ; 

bra_long_case_A3C5_00_no_special_defense:
            .byte con_F8, $01
            .byte con_soundID_delay, $25, $02
            .byte con_pause + $32
            .byte con_s_bg_1E
            .byte con_s_anim_20
            .byte con_s_cloud_F0_default ; s_cloud_3E
            .byte con_rts


sub_9C79_защитник_бежит_по_земле:
    .dbyt con_branch_long + con_bra_защитный_спешал_или_нет
    .word bra_long_case_A6B5_00_no_special_defense ; 
    .word bra_long_case_A6BB_01_yes_special_defense ; 

bra_long_case_A6B5_00_no_special_defense:
            .byte con_F7, $02
            .byte con_pause + $1E
            .byte con_s_bg_23
            .byte con_s_anim_5A
            .byte con_s_cloud_clear
bra_long_case_A6BB_01_yes_special_defense:
            .byte con_rts



sub_9C7F_защитник_бежит_по_земле:
    .dbyt con_branch_long + con_bra_защитный_спешал_или_нет
    .word bra_long_case_A70C_00_no_special_defense ; 
    .word bra_long_case_A6BC_01_yes_special_defense ; 



loc_9C85_защитник_бежит_по_земле_1й:
    .dbyt con_branch_long + con_bra_защитный_спешал_или_нет
    .word bra_long_case_A7CE_00_no_special_defense ; 
    .word bra_long_case_A6CE_01_yes_special_defense ; 



sub_9C8B_защитник_бежит_по_земле_нападая_на_атакующего:
    .dbyt con_branch_long + con_bra_защитный_спешал_или_нет
    .word bra_long_case_A6FF_00_no_special_defense ; 
    .word bra_long_case_A6E4_01_yes_special_defense ; 



loc_9C91_защитник_бежит_по_земле_2й_и_5й:
    .dbyt con_branch_long + con_bra_защитный_спешал_или_нет
    .word bra_long_case_A7D5_00_no_special_defense ; 
    .word bra_long_case_A6CE_01_yes_special_defense ; 

bra_long_case_A7D5_00_no_special_defense:
            .byte con_F8, $03
            .byte con_F7, $02
            .byte con_pause + $37
            .byte con_s_bg_23
            .byte con_s_anim_5A
            .byte con_s_cloud_F0_default ; s_cloud_42
            .byte con_rts



loc_9C97_защитник_бежит_по_земле_4й:
    .dbyt con_branch_long + con_bra_защитный_спешал_или_нет
    .word bra_long_case_A7DE_00_no_special_defense ; 
    .word bra_long_case_A6CE_01_yes_special_defense ; 

bra_long_case_A7DE_00_no_special_defense:
            .byte con_F8, $03
            .byte con_F7, $02
            .byte con_pause + $37
            .byte con_s_bg_22
            .byte con_s_anim_5B
            .byte con_s_cloud_F0_default ; s_cloud_43
            .byte con_rts



loc_9C9D_защитник_бежит_по_земле_3й:
    .dbyt con_branch_long + con_bra_защитный_спешал_или_нет
    .word bra_long_case_A7E7_00_no_special_defense ; 
    .word bra_long_case_A6CE_01_yes_special_defense ; 

bra_long_case_A7E7_00_no_special_defense:
            .byte con_F7, $02
            .byte con_pause + $37
            .byte con_s_bg_23
            .byte con_s_anim_5B
            .byte con_s_cloud_F0_default ; s_cloud_44
            .byte con_rts



sub_9CA3_выбор_анимации_дриблинга_трудной_обводки:
    .dbyt con_branch_short + con_bra_действие_атаки_на_земле
    .byte off_case_9CA3_00 - * ; shoot
    .byte off_case_9CA3_01 - * ; pass
    .byte off_case_9CA3_02 - * ; dribble
    .byte off_case_9CA3_03 - * ; 1-2 pass

        off_case_9CA3_00:
        off_case_9CA3_01:
        off_case_9CA3_03:
        ; shoot, pass, 1-2 pass
            .byte con_jmp
            .word loc_9CA3_анимация_дриблинга_трудной_обводки

        off_case_9CA3_02:
        ; dribble
            .dbyt con_branch_long + con_bra_разновидность_dribble
            .word bra_long_case_9CA3_02_00 ; dribble
            .word bra_long_case_9CA3_02_01 ; heel lift
            .word bra_long_case_9CA3_02_02 ; forcible dribble
            .word bra_long_case_9CA3_02_03 ; vanishing feint
            .word bra_long_case_9CA3_02_04 ; clone dribble
            .word bra_long_case_9CA3_02_05 ; high speed dribble
            .word bra_long_case_9CA3_02_06 ; hedgehog dribble

                bra_long_case_9CA3_02_00:
                ; dribble/dribble
loc_9CA3_анимация_дриблинга_трудной_обводки:
                    .byte con_mirror_toggle
                    .byte con_F7, $02
                    .byte con_pause + $14
                    .byte con_s_bg_22
                    .byte con_s_anim_60
                    .byte con_s_cloud_F0_default ; s_cloud_45
                    .byte con_F7, $24
                    .byte con_soundID_delay, $68, $02
                    .byte con_pause + $10
                    .byte con_s_bg_6B
                    .byte con_s_anim_FF_skip
                    .byte con_s_cloud_FF_skip
loc_A7FE_движение_фона_после_дриблинга:
                    .byte con_F7, $02
                    .byte con_pause + $3C
                    .byte con_s_bg_22
                    .byte con_s_anim_FF_skip
                    .byte con_s_cloud_FF_skip
                    .byte con_rts

                bra_long_case_9CA3_02_01:
                ; dribble/heel lift
                    .byte con_jsr
                    .word sub_A810_анимация_heel_lift
                    .byte con_F7, $02
                    .byte con_pause + $3C
                    .byte con_s_bg_23
                    .byte con_s_anim_E4
                    .byte con_s_cloud_F0_default ; s_cloud_45
                    .byte con_mirror_toggle
                    .byte con_rts

                bra_long_case_9CA3_02_02:
                ; dribble/forcible dribble
                    .dbyt con_branch_short + con_bra_force_drib
                    .byte off_case_9CA3_02_02_00 - * ; hyuga из японии
                    .byte off_case_9CA3_02_02_01 - * ; hyuga из тохо
                    .byte off_case_9CA3_02_02_02 - * ; jito из японии
                    .byte off_case_9CA3_02_02_03 - * ; jito из куними
                    .byte off_case_9CA3_02_02_04 - * ; napoleon
                    .byte off_case_9CA3_02_02_05 - * ; игрок без рожи

                        off_case_9CA3_02_02_00:
                        ; hyuga из японии
                            .byte con_F7, $44
                            .byte con_pause + $3C
                            .byte con_s_bg_31
                            .byte con_s_anim_face_p_hyuga_my
                            .byte con_s_cloud_F0_default ; s_cloud_C4
                            .byte con_jmp
                            .word loc_AA7B_forcible_dribble

                        off_case_9CA3_02_02_01:
                        ; hyuga из тохо
                            .byte con_F7, $44
                            .byte con_pause + $3C
                            .byte con_s_bg_31
                            .byte con_s_anim_face_p_hyuga_toho
                            .byte con_s_cloud_F0_default ; s_cloud_C4
                            .byte con_jmp
                            .word loc_AA7B_forcible_dribble

                        off_case_9CA3_02_02_02:
                        ; jito из японии
                            .byte con_F7, $44
                            .byte con_pause + $78
                            .byte con_s_bg_30
                            .byte con_s_anim_face_p_jito_my
                            .byte con_s_cloud_F0_default ; s_cloud_C5
                            .byte con_jmp
                            .word loc_AA7B_forcible_dribble

                        off_case_9CA3_02_02_03:
                        ; jito из куними
                            .byte con_F7, $44
                            .byte con_pause + $78
                            .byte con_s_bg_30
                            .byte con_s_anim_face_p_jito_kunimi
                            .byte con_s_cloud_F0_default ; s_cloud_C5
                            .byte con_jmp
                            .word loc_AA7B_forcible_dribble

                        off_case_9CA3_02_02_04:
                        ; napoleon
                            .byte con_F7, $44
                            .byte con_pause + $40
                            .byte con_s_bg_30
                            .byte con_s_anim_face_p_napoleon_france
                            .byte con_s_cloud_F0_default ; s_cloud_C6
                            .byte con_jmp
                            .word loc_AA7B_forcible_dribble

                        off_case_9CA3_02_02_05:
                        ; игрок без рожи
                            .byte con_jmp
                            .word loc_AA7E_forcible_dribble_без_рожи

                bra_long_case_9CA3_02_03:
                ; dribble/vanishing feint
                    .byte con_jsr
                    .word sub_A86C_vanishing_feint
                    .byte con_F7, $02
                    .byte con_pause + $3C
                    .byte con_s_bg_23
                    .byte con_s_anim_FF_skip
                    .byte con_s_cloud_clear
                    .byte con_F7, $02
                    .byte con_soundID_delay, $11, $02
                    .byte con_pause + $46
                    .byte con_s_bg_FF_skip
                    .byte con_s_anim_D1
                    .byte con_s_cloud_F0_default ; s_cloud_45
                    .byte con_mirror_toggle
                    .byte con_rts

                bra_long_case_9CA3_02_04:
                ; dribble/clone dribble
                    .dbyt con_branch_short + con_bra_plr_carlos
                    .byte off_case_9CA3_02_04_00 - * ; con_p_carlos_flamengo
                    .byte off_case_9CA3_02_04_01 - * ; con_p_carlos_brazil

                        off_case_9CA3_02_04_00:
                        ; dribble/clone dribble/con_p_carlos_flamengo
                            .byte con_jsr
                            .word sub_A885_рожа_carlos_flamengo
                        loc_A8A0_02_04_01:
                            .byte con_jsr
                            .word sub_A8AB_clone_dribble
                            .byte con_F7, $02
                            .byte con_pause + $46
                            .byte con_s_bg_FF_skip
                            .byte con_s_anim_FF_skip
                            .byte con_s_cloud_F0_default ; s_cloud_45
                            .byte con_mirror_toggle
                            .byte con_rts

                        off_case_9CA3_02_04_01:
                        ; dribble/clone dribble/con_p_carlos_brazil
                            .byte con_jsr
                            .word sub_A88F_рожа_carlos_brazil
                            .byte con_jmp
                            .word loc_A8A0_02_04_01

                bra_long_case_9CA3_02_05:
                ; dribble/high speed dribble
                    .byte con_jsr
                    .word sub_A8D0_high_speed_dribble
                    .byte con_F7, $0D
                    .byte con_soundID_delay, $26, $02
                    .byte con_pause + $1E
                    .byte con_s_bg_47
                    .byte con_s_anim_D1
                    .byte con_s_cloud_F0_default ; s_cloud_45
                    .byte con_jmp
                    .word loc_AAEF

                bra_long_case_9CA3_02_06:
                ; dribble/hedgehog dribble
                    .dbyt con_branch_short + con_bra_plr_kaltz
                    .byte off_case_9CA3_02_06_00 - * ; con_p_kaltz_hamburger_sv
                    .byte off_case_9CA3_02_06_01 - * ; con_p_kaltz_west_germany

                        off_case_9CA3_02_06_00:
                        ; dribble/hedgehog dribble/con_p_kaltz_hamburger_sv
                            .byte con_jsr
                            .word sub_A8E5_kaltz_hedgehog_dribble
                        loc_A918_kaltz_hedgehog_dribble_обводит_соперника_не_убивая:
                            .byte con_jsr
                            .word sub_BBC7_очистка
                            .byte con_F7, $02
                            .byte con_soundID_delay, $26, $02
                            .byte con_pause + $17
                            .byte con_s_bg_FF_skip
                            .byte con_s_anim_D2
                            .byte con_s_cloud_clear
                            .byte con_F7, $02
                            .byte con_soundID_delay, $26, $02
                            .byte con_pause + $17
                            .byte con_s_bg_FF_skip
                            .byte con_s_anim_D1
                            .byte con_s_cloud_F0_default ; s_cloud_45
                            .byte con_jmp
                            .word loc_AB18_kaltz_hedgehog_dribble_обводит_соперника_не_убивая_финальная_анимация

                        off_case_9CA3_02_06_01:
                        ; dribble/hedgehog dribble/con_p_kaltz_west_germany
                            .byte con_jsr
                            .word sub_A908_kaltz_hedgehog_dribble
                            .byte con_jmp
                            .word loc_A918_kaltz_hedgehog_dribble_обводит_соперника_не_убивая



loc_9CC0_выбор_анимации_дриблинга_легкой_обводки:
sub_9CC0_выбор_анимации_дриблинга_легкой_обводки:
    .dbyt con_branch_short + con_bra_действие_атаки_на_земле
    .byte off_case_9CC0_00 - * ; shoot
    .byte off_case_9CC0_01 - * ; pass
    .byte off_case_9CC0_02 - * ; dribble
    .byte off_case_9CC0_03 - * ; 1-2 pass

        off_case_9CC0_00:
        off_case_9CC0_01:
        off_case_9CC0_03:
        ; shoot, pass, 1-2 pass
            .byte con_jmp
            .word loc_AA4F_анимация_дриблинга_легкой_обводки

        off_case_9CC0_02:
        ; dribble
            .dbyt con_branch_long + con_bra_разновидность_dribble
            .word bra_long_case_9CC0_02_00 ; dribble
            .word bra_long_case_9CC0_02_01 ; heel lift
            .word bra_long_case_9CC0_02_02 ; forcible dribble
            .word bra_long_case_9CC0_02_03 ; vanishing feint
            .word bra_long_case_9CC0_02_04 ; clone dribble
            .word bra_long_case_9CC0_02_05 ; high speed dribble
            .word bra_long_case_9CC0_02_06 ; hedgehog dribble

                bra_long_case_9CC0_02_00:
                ; dribble/dribble
loc_AA4F_анимация_дриблинга_легкой_обводки:
                    .byte con_mirror_toggle
                    .byte con_F7, $02
                    .byte con_pause + $14
                    .byte con_s_bg_22
                    .byte con_s_anim_60
                    .byte con_s_cloud_F0_default ; s_cloud_46
                    .byte con_F7, $33
                    .byte con_soundID_delay, $68, $02
                    .byte con_pause + $14
                    .byte con_s_bg_6B
                    .byte con_s_anim_FF_skip
                    .byte con_s_cloud_FF_skip
                    .byte con_jmp
                    .word loc_A7FE_движение_фона_после_дриблинга

                bra_long_case_9CC0_02_01:
                ; dribble/heel lift
loc_AA62_heel_lift:
                    .byte con_jsr
                    .word sub_A810_анимация_heel_lift
                    .byte con_F7, $02
                    .byte con_pause + $3C
                    .byte con_s_bg_23
                    .byte con_s_anim_E4
                    .byte con_s_cloud_F0_default ; s_cloud_46
                    .byte con_mirror_toggle
                    .byte con_rts

                bra_long_case_9CC0_02_02:
                ; dribble/forcible dribble
                    .dbyt con_branch_short + con_bra_force_drib
                    .byte off_case_9CC0_02_02_00 - * ; hyuga из японии
                    .byte off_case_9CC0_02_02_01 - * ; hyuga из тохо
                    .byte off_case_9CC0_02_02_02 - * ; jito из японии
                    .byte off_case_9CC0_02_02_03 - * ; jito из куними
                    .byte off_case_9CC0_02_02_04 - * ; napoleon
                    .byte off_case_9CC0_02_02_05 - * ; игрок без рожи

                        off_case_9CC0_02_02_00:
                        ; hyuga из японии
                            .byte con_F7, $44
                            .byte con_pause + $40
                            .byte con_s_bg_31
                            .byte con_s_anim_face_p_hyuga_my
                            .byte con_s_cloud_F0_default ; s_cloud_C4
                        loc_AA7B_forcible_dribble:
                            .byte con_jsr
                            .word sub_BBC7_очистка
                        loc_AA7E_forcible_dribble_без_рожи:
                            .byte con_jsr
                            .word sub_AA89_forcible_dribble
                            .byte con_F7, $3A
                            .byte con_pause + $32
                            .byte con_s_bg_FF_skip
                            .byte con_s_anim_FF_skip
                            .byte con_s_cloud_F0_default ; s_cloud_46
                            .byte con_mirror_toggle
                            .byte con_rts

                        off_case_9CC0_02_02_01:
                        ; hyuga из тохо
                            .byte con_F7, $44
                            .byte con_pause + $40
                            .byte con_s_bg_31
                            .byte con_s_anim_face_p_hyuga_toho
                            .byte con_s_cloud_F0_default ; s_cloud_C4
                            .byte con_jmp
                            .word loc_AA7B_forcible_dribble

                        off_case_9CC0_02_02_02:
                        ; jito из японии
                            .byte con_F7, $44
                            .byte con_pause + $78
                            .byte con_s_bg_30
                            .byte con_s_anim_face_p_jito_my
                            .byte con_s_cloud_F0_default ; s_cloud_C5
                            .byte con_jmp
                            .word loc_AA7B_forcible_dribble

                        off_case_9CC0_02_02_03:
                        ; jito из куними
                            .byte con_F7, $44
                            .byte con_pause + $78
                            .byte con_s_bg_30
                            .byte con_s_anim_face_p_jito_kunimi
                            .byte con_s_cloud_F0_default ; s_cloud_C5
                            .byte con_jmp
                            .word loc_AA7B_forcible_dribble

                        off_case_9CC0_02_02_04:
                        ; napoleon
                            .byte con_F7, $44
                            .byte con_pause + $40
                            .byte con_s_bg_30
                            .byte con_s_anim_face_p_napoleon_france
                            .byte con_s_cloud_F0_default ; s_cloud_C6
                            .byte con_jmp
                            .word loc_AA7B_forcible_dribble

                        off_case_9CC0_02_02_05:
                        ; игрок без рожи
                            .byte con_jmp
                            .word loc_AA7E_forcible_dribble_без_рожи

                bra_long_case_9CC0_02_03:
                ; dribble/vanishing feint
                    .byte con_jsr
                    .word sub_A86C_vanishing_feint
                    .byte con_F7, $02
                    .byte con_pause + $3C
                    .byte con_s_bg_23
                    .byte con_s_anim_FF_skip
                    .byte con_s_cloud_clear
                    .byte con_soundID_delay, $11, $02
                    .byte con_F7, $02
                    .byte con_pause + $46
                    .byte con_s_bg_FF_skip
                    .byte con_s_anim_D1
                    .byte con_s_cloud_F0_default ; s_cloud_46
                    .byte con_mirror_toggle
                    .byte con_rts

                bra_long_case_9CC0_02_04:
                ; dribble/clone dribble
                    .dbyt con_branch_short + con_bra_plr_carlos
                    .byte off_case_9CC0_02_04_00 - * ; con_p_carlos_flamengo
                    .byte off_case_9CC0_02_04_01 - * ; con_p_carlos_brazil

                        off_case_9CC0_02_04_00:
                        ; dribble/clone dribble/con_p_carlos_flamengo
                            .byte con_jsr
                            .word sub_A885_рожа_carlos_flamengo
                        loc_AAD2_02_04_01:
                            .byte con_jsr
                            .word sub_A8AB_clone_dribble
                            .byte con_F7, $02
                            .byte con_pause + $46
                            .byte con_s_bg_FF_skip
                            .byte con_s_anim_FF_skip
                            .byte con_s_cloud_F0_default ; s_cloud_46
                            .byte con_mirror_toggle
                            .byte con_rts

                        off_case_9CC0_02_04_01:
                        ; dribble/clone dribble/con_p_carlos_brazil
                            .byte con_jsr
                            .word sub_A88F_рожа_carlos_brazil
                            .byte con_jmp
                            .word loc_AAD2_02_04_01

                bra_long_case_9CC0_02_05:
                ; dribble/high speed dribble
                    .byte con_jsr
                    .word sub_A8D0_high_speed_dribble
                    .byte con_F7, $0D
                    .byte con_soundID_delay, $26, $02
                    .byte con_pause + $1E
                    .byte con_s_bg_47
                    .byte con_s_anim_D1
                    .byte con_s_cloud_F0_default ; s_cloud_46
                loc_AAEF:
                    .byte con_soundID_delay, $26, $02
                    .byte con_pause + $1E
                    .byte con_s_bg_FF_skip
                    .byte con_s_anim_D2
                    .byte con_s_cloud_FF_skip
                    .byte con_soundID_delay, $26, $02
                    .byte con_pause + $1E
                    .byte con_s_bg_FF_skip
                    .byte con_s_anim_D1
                    .byte con_s_cloud_FF_skip
                    .byte con_mirror_toggle
                    .byte con_rts

                bra_long_case_9CC0_02_06:
                ; dribble/hedgehog dribble
                    .dbyt con_branch_short + con_bra_plr_kaltz
                    .byte off_case_9CC0_02_06_00 - * ; con_p_kaltz_hamburger_sv
                    .byte off_case_9CC0_02_06_01 - * ; con_p_kaltz_west_germany

                        off_case_9CC0_02_06_00:
                        ; dribble/hedgehog dribble/con_p_kaltz_hamburger_sv
                            .byte con_jsr
                            .word sub_A8E5_kaltz_hedgehog_dribble
                        loc_AB06_kaltz_hedgehog_dribble_обводит_соперника_не_убивая:
                            .byte con_F7, $02
                            .byte con_soundID_delay, $26, $02
                            .byte con_pause + $17
                            .byte con_s_bg_FF_skip
                            .byte con_s_anim_D2
                            .byte con_s_cloud_clear
                            .byte con_F7, $02
                            .byte con_soundID_delay, $26, $02
                            .byte con_pause + $17
                            .byte con_s_bg_FF_skip
                            .byte con_s_anim_D1
                            .byte con_s_cloud_F0_default ; s_cloud_46
                        loc_AB18_kaltz_hedgehog_dribble_обводит_соперника_не_убивая_финальная_анимация:
                            .byte con_F7, $02
                            .byte con_soundID_delay, $26, $02
                            .byte con_pause + $17
                            .byte con_s_bg_FF_skip
                            .byte con_s_anim_D2
                            .byte con_s_cloud_FF_skip
                            .byte con_F7, $02
                            .byte con_soundID_delay, $26, $02
                            .byte con_pause + $17
                            .byte con_s_bg_FF_skip
                            .byte con_s_anim_D1
                            .byte con_s_cloud_FF_skip
                            .byte con_rts

                        off_case_9CC0_02_06_01:
                        ; dribble/hedgehog dribble/con_p_kaltz_west_germany
                            .byte con_jsr
                            .word sub_A908_kaltz_hedgehog_dribble
                            .byte con_jmp
                            .word loc_AB06_kaltz_hedgehog_dribble_обводит_соперника_не_убивая



_scenario_9CEE_1D:
    .dbyt con_branch_short + con_bra_где_сейчас_мяч
    .byte off_case_1D_00 - * ; мяч у атакующего на земле
    .byte off_case_1D_01 - * ; летит низкий мяч
    .byte off_case_1D_02 - * ; летит высокий мяч

        off_case_1D_00:
        ; мяч у атакующего на земле
            .byte con_jmp
            .word loc_9CF3_игрок_делает_удар_с_земли

        off_case_1D_01:
        ; летит низкий мяч
            .byte con_jmp
            .word loc_9D9A_выбор_анимации_удара_по_низкому_мячу

        off_case_1D_02:
        ; летит высокий мяч
            .byte con_jmp
            .word loc_9D52_выбор_анимации_удара_по_высокому_мячу



_scenario_B7DA_1E_игрок_бежит_по_полю_с_картой:
    .byte con_mirror_condition, $02       ; команда
    .byte con_mirror_toggle
    .byte con_F7, $01
    .byte con_pause + $07
    .byte con_s_bg_45
    .byte con_s_anim_90
    .byte con_s_cloud_FF_skip
    .byte con_rts



sub_9CF3_игрок_делает_удар_с_земли:
loc_9CF3_игрок_делает_удар_с_земли:
; полная анимация замахивания по мячу, удара по нему и последующий полет мяча после удара
    .byte con_mirror_off
    .dbyt con_branch_long + con_bra_разновидность_shoot
    .word bra_long_case_9CF3_FF ; 00
    .word bra_long_case_9CF3_FF ; 01
    .word bra_long_case_9CF3_FF ; 02
    .word bra_long_case_9CF3_03 ; drive shot
    .word bra_long_case_9CF3_FF ; 04
    .word bra_long_case_9CF3_05 ; falcon shot
    .word bra_long_case_9CF3_FF ; 06
    .word bra_long_case_9CF3_07 ; razor shot
    .word bra_long_case_9CF3_FF ; 08
    .word bra_long_case_9CF3_FF ; 09
    .word bra_long_case_9CF3_FF ; 0A
    .word bra_long_case_9CF3_0B ; eagle shot
    .word bra_long_case_9CF3_0C ; tiger shot
    .word bra_long_case_9CF3_0D ; neo tiger shot
    .word bra_long_case_9CF3_FF ; 0E
    .word bra_long_case_9CF3_FF ; 0F
    .word bra_long_case_9CF3_FF ; 10
    .word bra_long_case_9CF3_11 ; drive tiger
    .word bra_long_case_9CF3_12 ; cyclone с земли
    .word bra_long_case_9CF3_13 ; sano combo
    .word bra_long_case_9CF3_14 ; banana shot
    .word bra_long_case_9CF3_15 ; booster shot
    .word bra_long_case_9CF3_16 ; mirage shot
    .word bra_long_case_9CF3_17 ; mach shot
    .word bra_long_case_9CF3_18 ; sidewinder shot
    .word bra_long_case_9CF3_19 ; slider shot
    .word bra_long_case_9CF3_1A ; cannon shot
    .word bra_long_case_9CF3_1B ; fire shot
    .word bra_long_case_9CF3_FF ; 1C
    .word bra_long_case_9CF3_FF ; 1D
    .word bra_long_case_9CF3_FF ; 1E
    .word bra_long_case_9CF3_FF ; 1F
    .word bra_long_case_9CF3_FF ; 20
    .word bra_long_case_9CF3_FF ; 21
    .word bra_long_case_9CF3_22 ; double eel

        bra_long_case_9CF3_FF:
        ; shot
            .byte con_jmp
            .word loc_AB31_полная_анимация_обычного_удара_с_земли

        bra_long_case_9CF3_03:
        ; drive shot
            .dbyt con_branch_short + con_bra_plr_tsubasa_diaz
            .byte off_case_9CF3_03_00 - * ; игрок без рожи
            .byte off_case_9CF3_03_01 - * ; con_p_tsubasa_my
            .byte off_case_9CF3_03_02 - * ; con_p_diaz_argentina
                
                off_case_9CF3_03_00:
                ; drive shot/игрок без рожи
                    .byte con_jmp
                    .word loc_AB58

                off_case_9CF3_03_01:
                ; drive shot/con_p_tsubasa_my
                    .byte con_pause + $3C
                    .byte con_s_bg_30
                    .byte con_s_anim_face_p_tsubasa_my
                    .byte con_s_cloud_F0_default ; s_cloud_A3
                loc_AB57:
                    .byte con_jsr
                    .word sub_BBC7_очистка
                loc_AB58:
                    .byte con_soundID_delay, $16, $02
                    .byte con_pause + $28
                    .byte con_s_bg_4A
                    .byte con_s_anim_8E
                    .byte con_s_cloud_F0_default ; s_cloud_49
                    .byte con_jsr
                    .word sub_AB7C
                    .byte con_F7, $02
                    .byte con_soundID_delay, $04, $02
                    .byte con_pause + $20
                    .byte con_s_bg_25
                    .byte con_s_anim_63
                    .byte con_s_cloud_FF_skip
                    .byte con_jmp
                    .word loc_AB6B

                off_case_9CF3_03_02:
                ; drive shot/con_p_diaz_argentina
                ; bzk optimize, проверка на diaz не обязательная, код один и тот же (чего я так решил? номер анимации же разный)
                    ; однако если я буду менять номер облака для них, возможно и понадобится
                    .byte con_pause + $3C
                    .byte con_s_bg_30
                    .byte con_s_anim_face_p_diaz_argentina
                    .byte con_s_cloud_F0_default ; s_cloud_A3
                    .byte con_jmp
                    .word loc_AB57

        bra_long_case_9CF3_05:
        ; falcon shot
            .dbyt con_branch_short + con_bra_plr_nitta
            .byte off_case_9CF3_05_00 - * ; con_p_nitta_my
            .byte off_case_9CF3_05_01 - * ; con_p_nitta_japan

                off_case_9CF3_05_00:
                ; falcon shot/con_p_nitta_my
                    .byte con_pause + $3C
                    .byte con_s_bg_30
                    .byte con_s_anim_face_p_nitta_my
                    .byte con_s_cloud_F0_default ; s_cloud_A5
                loc_ABD4:
                    .byte con_jsr
                    .word sub_BBC7_очистка
                    .byte con_jsr
                    .word sub_ABB8
                    .byte con_jsr
                    .word sub_AB86
                    .byte con_F7, $02
                    .byte con_soundID_delay, $06, $02
                    .byte con_pause + $20
                    .byte con_s_bg_25
                    .byte con_s_anim_63
                    .byte con_s_cloud_FF_skip
                    .byte con_jmp
                    .word loc_AB6B

                off_case_9CF3_05_01:
                ; falcon shot/con_p_nitta_japan
                    .byte con_pause + $3C
                    .byte con_s_bg_30
                    .byte con_s_anim_face_p_nitta_japan
                    .byte con_s_cloud_F0_default ; s_cloud_A5
                    .byte con_jmp
                    .word loc_ABD4

        bra_long_case_9CF3_07:
        ; razor shot
            .dbyt con_branch_short + con_bra_plr_soda
            .byte off_case_9CF3_07_00 - * ; con_p_soda_my, con_p_soda_japan
            .byte off_case_9CF3_07_01 - * ; con_p_soda_tatsunami

                off_case_9CF3_07_00:
                ; razor shot/con_p_soda_my, con_p_soda_japan
                    .byte con_pause + $3C
                    .byte con_s_bg_30
                    .byte con_s_anim_face_p_soda_my
                    .byte con_s_cloud_F0_default ; s_cloud_A3
                loc_ABF8:
                    .byte con_F7, $0D
                    .byte con_soundID_delay, $17, $02
                    .byte con_pause + $3C
                    .byte con_s_bg_6A
                    .byte con_s_anim_9D
                    .byte con_s_cloud_F0_default ; s_cloud_49
                    .byte con_F7, $15
                    .byte con_soundID_delay, $1D, $09
                    .byte con_pause + $20
                    .byte con_s_bg_05
                    .byte con_s_anim_CE
                    .byte con_s_cloud_FF_skip
                    .byte con_F7, $10
                    .byte con_pause + $0D
                    .byte con_s_bg_05
                    .byte con_s_anim_00
                    .byte con_s_cloud_FF_skip
                    .byte con_F7, $02
                    .byte con_soundID_delay, $06, $02
                    .byte con_pause + $20
                    .byte con_s_bg_25
                    .byte con_s_anim_63
                    .byte con_s_cloud_FF_skip
                    .byte con_jmp
                    .word loc_AB6B

                off_case_9CF3_07_01:
                ; razor shot/con_p_soda_tatsunami
                    .byte con_pause + $3C
                    .byte con_s_bg_30
                    .byte con_s_anim_face_p_soda_tatsunami
                    .byte con_s_cloud_F0_default ; s_cloud_A3
                    .byte con_jmp
                    .word loc_ABF8

        bra_long_case_9CF3_0B:
        ; eagle shot
            .dbyt con_branch_short + con_bra_plr_matsuyama
            .byte off_case_9CF3_0B_00 - * ; con_p_matsuyama_my, con_p_matsuyama_japan
            .byte off_case_9CF3_0B_01 - * ; con_p_matsuyama_furano

                off_case_9CF3_0B_00:
                ; eagle shot/con_p_matsuyama_my, con_p_matsuyama_japan
                    .byte con_pause + $3C
                    .byte con_s_bg_30
                    .byte con_s_anim_face_p_matsuyama_my
                    .byte con_s_cloud_F0_default ; s_cloud_B1
                loc_AC2B:
                    .byte con_jsr
                    .word sub_BBC7_очистка
                    .byte con_F7, $19
                    .byte con_soundID_delay, $15, $02
                    .byte con_pause + $28
                    .byte con_s_bg_49
                    .byte con_s_anim_8E
                    .byte con_s_cloud_F0_default ; s_cloud_49
                    .byte con_jsr
                    .word sub_AB9A
                    .byte con_F7, $02
                    .byte con_soundID_delay, $06, $02
                    .byte con_pause + $20
                    .byte con_s_bg_25
                    .byte con_s_anim_63
                    .byte con_s_cloud_FF_skip
                    .byte con_jmp
                    .word loc_AB6B

                off_case_9CF3_0B_01:
                ; eagle shot/con_p_matsuyama_furano
                    .byte con_pause + $3C
                    .byte con_s_bg_30
                    .byte con_s_anim_face_p_matsuyama_furano
                    .byte con_s_cloud_F0_default ; s_cloud_B1
                    .byte con_jmp
                    .word loc_AC2B

        bra_long_case_9CF3_0C:
        ; tiger shot
            .dbyt con_branch_short + con_bra_plr_hyuga
            .byte off_case_9CF3_0C_00 - * ; con_p_hyuga_my, con_p_hyuga_japan
            .byte off_case_9CF3_0C_01 - * ; con_p_hyuga_toho

                off_case_9CF3_0C_00:
                ; tiger shot/con_p_hyuga_my, con_p_hyuga_japan
                    .byte con_pause + $3C
                    .byte con_s_bg_31
                    .byte con_s_anim_face_p_hyuga_my
                    .byte con_s_cloud_F0_default ; s_cloud_B2
                loc_AC55:
                    .byte con_jsr
                    .word sub_ABB8
                    .byte con_jsr
                    .word sub_ABA4
                    .byte con_F7, $02
                    .byte con_soundID_delay, $06, $02
                    .byte con_pause + $20
                    .byte con_s_bg_25
                    .byte con_s_anim_63
                    .byte con_s_cloud_FF_skip
                    .byte con_jmp
                    .word loc_AB6B

                off_case_9CF3_0C_01:
                ; tiger shot/con_p_hyuga_toho
                    .byte con_pause + $3C
                    .byte con_s_bg_31
                    .byte con_s_anim_face_p_hyuga_toho
                    .byte con_s_cloud_F0_default ; s_cloud_B2
                    .byte con_jmp
                    .word loc_AC55

        bra_long_case_9CF3_0D:
        ; neo tiger shot
        ; bzk bug, когда хюга бьет с углового, он всегда считает что защитники есть
        ; возможно игра не очищает количество защитников когда мяч улетает за линию
            .dbyt con_branch_short + con_bra_напали_ли_защитники
            .byte off_case_9CF3_0D_00 - * ; нет_защитников
            .byte off_case_9CF3_0D_01 - * ; есть_защитники

                off_case_9CF3_0D_00:
                ; neo tiger shot/нет_защитников
                    .dbyt con_branch_short + con_bra_plr_hyuga
                    .byte off_case_9CF3_0D_00_00 - * ; con_p_hyuga_my, con_p_hyuga_japan
                    .byte off_case_9CF3_0D_00_01 - * ; con_p_hyuga_toho

                        off_case_9CF3_0D_00_00:
                        ; neo tiger shot/нет_защитников/con_p_hyuga_my, con_p_hyuga_japan
                            .byte con_pause + $78
                            .byte con_s_bg_31
                            .byte con_s_anim_face_p_hyuga_my
                            .byte con_s_cloud_F0_default ; s_cloud_B3
                        loc_AC7A:
                            .byte con_jsr
                            .word sub_BBC7_очистка
                            .byte con_soundID_delay, $16, $02
                            .byte con_F7, $1B
                            .byte con_pause + $28
                            .byte con_s_bg_4A
                            .byte con_s_anim_8E
                            .byte con_s_cloud_F0_default ; s_cloud_49
                            .byte con_F7, $04
                            .byte con_soundID_delay, $13, $02
                            .byte con_pause + $1E
                            .byte con_s_bg_41
                            .byte con_s_anim_8C
                            .byte con_s_cloud_F0_default ; s_cloud_6A
                            .byte con_F7, $02
                            .byte con_soundID_delay, $06, $02
                            .byte con_pause + $20
                            .byte con_s_bg_25
                            .byte con_s_anim_63
                            .byte con_s_cloud_FF_skip
                            .byte con_jmp
                            .word loc_AB6B

                        off_case_9CF3_0D_00_01:
                        ; neo tiger shot/нет_защитников/con_p_hyuga_toho
                            .byte con_pause + $78
                            .byte con_s_bg_31
                            .byte con_s_anim_face_p_hyuga_toho
                            .byte con_s_cloud_F0_default ; s_cloud_B3
                            .byte con_jmp
                            .word loc_AC7A

                off_case_9CF3_0D_01:
                ; neo tiger shot/есть_защитники
                    .dbyt con_branch_short + con_bra_plr_hyuga
                    .byte off_case_9CF3_0D_01_00 - * ; con_p_hyuga_my, con_p_hyuga_japan
                    .byte off_case_9CF3_0D_01_01 - * ; con_p_hyuga_toho

                        off_case_9CF3_0D_01_00:
                        ; есть_защитники/нет_защитников/con_p_hyuga_my, con_p_hyuga_japan
                            .byte con_F7, $44
                            .byte con_pause + $B4
                            .byte con_s_bg_31
                            .byte con_s_anim_face_p_hyuga_my
                            .byte con_s_cloud_F0_default ; s_cloud_9D
                            .byte con_jmp
                            .word loc_AC7A

                        off_case_9CF3_0D_01_01:
                        ; есть_защитники/нет_защитников/con_p_hyuga_toho
                            .byte con_F7, $44
                            .byte con_pause + $B4
                            .byte con_s_bg_31
                            .byte con_s_anim_face_p_hyuga_toho
                            .byte con_s_cloud_F0_default ; s_cloud_9D
                            .byte con_jmp
                            .word loc_AC7A

        bra_long_case_9CF3_11:
        ; drive tiger
            .byte con_mirror_off
            .byte con_F8, $04
            .byte con_pause + $3C
            .byte con_s_bg_30
            .byte con_s_anim_face_p_tsubasa_my
            .byte con_s_cloud_F0_default ; s_cloud_B6
            .byte con_mirror_toggle
            .byte con_F8, $04
            .byte con_pause + $3C
            .byte con_s_bg_55
            .byte con_s_anim_face_p_hyuga_my
            .byte con_s_cloud_F0_default ; s_cloud_B7
            .byte con_soundID_delay, $26, $02
            .byte con_F7, $02
            .byte con_pause + $1E
            .byte con_s_bg_23
            .byte con_s_anim_6B
            .byte con_s_cloud_clear
            .byte con_mirror_toggle
            .byte con_soundID_delay, $26, $02
            .byte con_F7, $02
            .byte con_pause + $1E
            .byte con_s_bg_22
            .byte con_s_anim_E7
            .byte con_s_cloud_FF_skip
            .byte con_F7, $10
            .byte con_soundID_delay, $30, $11
            .byte con_pause + $14
            .byte con_s_bg_05
            .byte con_s_anim_00
            .byte con_s_cloud_F0_default ; s_cloud_9C
            .byte con_F7, $31
            .byte con_pause + $3C
            .byte con_s_bg_5C
            .byte con_s_anim_D7
            .byte con_s_cloud_FF_skip
            .byte con_F7, $23
            .byte con_soundID_delay, $0A, $02
            .byte con_pause + $3C
            .byte con_s_bg_27
            .byte con_s_anim_DC
            .byte con_s_cloud_clear
            .byte con_F7, $1F
            .byte con_F8, $04
            .byte con_pause + $3C
            .byte con_s_bg_30
            .byte con_s_anim_face_p_tsubasa_my
            .byte con_s_cloud_F0_default ; s_cloud_AF
            .byte con_mirror_toggle
            .byte con_F7, $1F
            .byte con_F8, $04
            .byte con_pause + $3C
            .byte con_s_bg_55
            .byte con_s_anim_face_p_hyuga_my
            .byte con_s_cloud_F0_default ; s_cloud_B8
            .byte con_mirror_toggle
            .byte con_soundID_delay, $08, $02
            .byte con_pause + $41
            .byte con_s_bg_1D
            .byte con_s_anim_1F
            .byte con_s_cloud_clear
            .byte con_rts

        bra_long_case_9CF3_12:
        ; cyclone с земли
            .byte con_jmp
            .word loc_AD0C_cyclone

        bra_long_case_9CF3_13:
        ; sano combo
            .dbyt con_branch_short + con_bra_plr_jito
            .byte off_case_9CF3_13_00 - * ; jito япония
            .byte off_case_9CF3_13_01 - * ; jito куними

        off_case_9CF3_13_00:
        ; sano combo/jito япония
            .byte con_pause + $78
            .byte con_s_bg_30
            .byte con_s_anim_face_p_jito_my
            .byte con_s_cloud_F0_default ; s_cloud_4B
        loc_AD25:
            .byte con_jsr
            .word sub_ABB8
            .byte con_jsr
            .word sub_ABAE
            .byte con_soundID_delay, $0E, $02
            .byte con_pause + $30
            .byte con_s_bg_62
            .byte con_s_anim_40
            .byte con_s_cloud_clear
            .byte con_F7, $3D
            .byte con_soundID_delay, $25, $02
            .byte con_pause + $28
            .byte con_s_bg_1F
            .byte con_s_anim_71
            .byte con_s_cloud_F0_default ; s_cloud_49
            .byte con_F7, $3D
            .byte con_soundID_delay, $1B, $21
            .byte con_pause + $46
            .byte con_s_bg_51
            .byte con_s_anim_E8
            .byte con_s_cloud_FF_skip
            .byte con_rts

        off_case_9CF3_13_01:
        ; sano combo/jito куними
            .byte con_pause + $78
            .byte con_s_bg_30
            .byte con_s_anim_face_p_jito_kunimi
            .byte con_s_cloud_F0_default ; s_cloud_B9
            .byte con_jmp
            .word loc_AD25

        bra_long_case_9CF3_14:
        ; banana shot
            .byte con_jsr
            .word sub_ABB8
            .byte con_jsr
            .word sub_ABAE
            .byte con_F7, $02
            .byte con_soundID_delay, $06, $02
            .byte con_pause + $20
            .byte con_s_bg_25
            .byte con_s_anim_63
            .byte con_s_cloud_FF_skip
            .byte con_jmp
            .word loc_AB6B

        bra_long_case_9CF3_15:
        ; booster shot
            .byte con_jsr
            .word sub_ABB8
            .byte con_jsr
            .word sub_AB7C
            .byte con_F7, $3E
            .byte con_moving_bg, $02
            .byte con_pause + $28
            .byte con_s_bg_58
            .byte con_s_anim_C8
            .byte con_s_cloud_clear
            .byte con_F7, $29
            .byte con_soundID_delay, $14, $02
            .byte con_pause + $1E
            .byte con_s_bg_47
            .byte con_s_anim_E9
            .byte con_s_cloud_F0_default ; s_cloud_04
            .byte con_F7, $3E
            .byte con_moving_bg, $02
            .byte con_soundID_delay, $0B, $02
            .byte con_pause + $28
            .byte con_s_bg_58
            .byte con_s_anim_C5
            .byte con_s_cloud_FF_skip
            .byte con_rts

        bra_long_case_9CF3_16:
        ; mirage shot
            .dbyt con_branch_short + con_bra_plr_carlos
            .byte off_case_9CF3_16_00 - * ; con_p_carlos_flamengo
            .byte off_case_9CF3_16_01 - * ; con_p_carlos_brazil

                off_case_9CF3_16_00:
                ; mirage shot/con_p_carlos_flamengo
                    .byte con_pause + $3C
                    .byte con_s_bg_30
                    .byte con_s_anim_face_p_carlos_flamengo
                    .byte con_s_cloud_F0_default ; s_cloud_BA
                loc_AD89_16_01:
                    .byte con_jsr
                    .word sub_BBC7_очистка
                    .byte con_F7, $26
                    .byte con_soundID_delay, $15, $02
                    .byte con_pause + $28
                    .byte con_s_bg_49
                    .byte con_s_anim_8E
                    .byte con_s_cloud_F0_default ; s_cloud_49
                    .byte con_jsr
                    .word sub_AB9A
                    .byte con_F7, $02
                    .byte con_soundID_delay, $06, $02
                    .byte con_pause + $20
                    .byte con_s_bg_25
                    .byte con_s_anim_63
                    .byte con_s_cloud_FF_skip
                    .byte con_jmp
                    .word loc_AB6B

                off_case_9CF3_16_01:
                ; mirage shot/con_p_carlos_brazil
                    .byte con_pause + $3C
                    .byte con_s_bg_30
                    .byte con_s_anim_face_p_carlos_brazil
                    .byte con_s_cloud_F0_default ; s_cloud_BA
                    .byte con_jmp
                    .word loc_AD89_16_01

        bra_long_case_9CF3_17:
        ; mach shot
            .byte con_pause + $3C
            .byte con_s_bg_30
            .byte con_s_anim_face_p_coimbra_brazil
            .byte con_s_cloud_F0_default ; s_cloud_BB
            .byte con_jsr
            .word sub_BBC7_очистка
            .byte con_F7, $0D
            .byte con_soundID_delay, $16, $02
            .byte con_pause + $28
            .byte con_s_bg_4A
            .byte con_s_anim_8E
            .byte con_s_cloud_F0_default ; s_cloud_49
            .byte con_jsr
            .word sub_ABA4
            .byte con_F7, $02
            .byte con_soundID_delay, $0B, $02
            .byte con_pause + $20
            .byte con_s_bg_25
            .byte con_s_anim_63
            .byte con_s_cloud_FF_skip
            .byte con_jmp
            .word loc_AB6B

        bra_long_case_9CF3_18:
        ; sidewinder shot
            .byte con_jsr
            .word sub_ABB8
            .byte con_jsr
            .word sub_AB86
            .byte con_F7, $02
            .byte con_soundID_delay, $08, $02
            .byte con_pause + $20
            .byte con_s_bg_25
            .byte con_s_anim_63
            .byte con_s_cloud_FF_skip
            .byte con_jmp
            .word loc_AB6B

        bra_long_case_9CF3_19:
        ; slider shot
            .byte con_pause + $3C
            .byte con_s_bg_30
            .byte con_s_anim_face_p_pierre_france
            .byte con_s_cloud_F0_default ; s_cloud_BC
            .byte con_jsr
            .word sub_BBC7_очистка
            .byte con_soundID_delay, $17, $02
            .byte con_pause + $3C
            .byte con_s_bg_6A
            .byte con_s_anim_9D
            .byte con_s_cloud_F0_default ; s_cloud_49
            .byte con_jsr
            .word sub_AB90
            .byte con_F7, $02
            .byte con_soundID_delay, $0B, $02
            .byte con_pause + $28
            .byte con_s_bg_25
            .byte con_s_anim_63
            .byte con_s_cloud_FF_skip
            .byte con_jmp
            .word loc_AB6B

        bra_long_case_9CF3_1A:
        ; cannon shot
            .byte con_pause + $3C
            .byte con_s_bg_30
            .byte con_s_anim_face_p_napoleon_france
            .byte con_s_cloud_F0_default ; s_cloud_BD
            .byte con_jsr
            .word sub_ABB8
            .byte con_jsr
            .word sub_ABAE
            .byte con_F7, $02
            .byte con_soundID_delay, $06, $02
            .byte con_pause + $28
            .byte con_s_bg_25
            .byte con_s_anim_63
            .byte con_s_cloud_FF_skip
            .byte con_jmp
            .word loc_AB6B

        bra_long_case_9CF3_1B:
        ; fire shot
            .byte con_pause + $3C
            .byte con_s_bg_30
            .byte con_s_anim_face_p_schneider_west_germany
            .byte con_s_cloud_F0_default ; s_cloud_BE
            .byte con_jsr
            .word sub_BBC7_очистка
            .byte con_F7, $1D
            .byte con_soundID_delay, $16, $02
            .byte con_pause + $28
            .byte con_s_bg_4A
            .byte con_s_anim_8E
            .byte con_s_cloud_F0_default ; s_cloud_49
            .byte con_F7, $04
            .byte con_soundID_delay, $13, $10
            .byte con_pause + $10
            .byte con_s_bg_41
            .byte con_s_anim_8C
            .byte con_s_cloud_F0_default ; s_cloud_6C
            .byte con_F7, $02
            .byte con_soundID_delay, $0B, $02
            .byte con_pause + $28
            .byte con_s_bg_25
            .byte con_s_anim_63
            .byte con_s_cloud_FF_skip
            .byte con_jmp
            .word loc_AB6B

        bra_long_case_9CF3_22:
        ; double eel
            .byte con_F7, $31
            .byte con_soundID_delay, $16, $02
            .byte con_pause + $28
            .byte con_s_bg_4A
            .byte con_s_anim_8E
            .byte con_s_cloud_F0_default ; s_cloud_49
            .byte con_jsr
            .word sub_AB9A
            .byte con_F7, $02
            .byte con_soundID_delay, $08, $02
            .byte con_pause + $28
            .byte con_s_bg_25
            .byte con_s_anim_63
            .byte con_s_cloud_FF_skip
            .byte con_jmp
            .word loc_AB6B



loc_9D52_выбор_анимации_удара_по_высокому_мячу:
    .dbyt con_branch_long + con_bra_разновидность_shoot
    .word bra_long_case_9D52_FF ; 00
    .word bra_long_case_9D52_FF ; 01
    .word bra_long_case_9D52_02 ; header
    .word bra_long_case_9D52_FF ; 03
    .word bra_long_case_9D52_04 ; drive overhead
    .word bra_long_case_9D52_FF ; 05
    .word bra_long_case_9D52_FF ; 06
    .word bra_long_case_9D52_FF ; 07
    .word bra_long_case_9D52_08 ; skylab hurricane
    .word bra_long_case_9D52_FF ; 09
    .word bra_long_case_9D52_0A ; skylab twin shot
    .word bra_long_case_9D52_FF ; 0B
    .word bra_long_case_9D52_FF ; 0C
    .word bra_long_case_9D52_FF ; 0D
    .word bra_long_case_9D52_0E ; overhead
    .word bra_long_case_9D52_0F ; hyper overhead
    .word bra_long_case_9D52_FF ; 10
    .word bra_long_case_9D52_FF ; 11
    .word bra_long_case_9D52_12 ; cyclone
    .word bra_long_case_9D52_FF ; 13
    .word bra_long_case_9D52_FF ; 14
    .word bra_long_case_9D52_FF ; 15
    .word bra_long_case_9D52_FF ; 16
    .word bra_long_case_9D52_FF ; 17
    .word bra_long_case_9D52_FF ; 18
    .word bra_long_case_9D52_FF ; 19
    .word bra_long_case_9D52_FF ; 1A
    .word bra_long_case_9D52_FF ; 1B
    .word bra_long_case_9D52_1C ; dynamite header
    .word bra_long_case_9D52_1D ; cannon header
    .word bra_long_case_9D52_1E ; rocker header
    .word bra_long_case_9D52_1F ; rising dragon kick
    .word bra_long_case_9D52_FF ; 20
    .word bra_long_case_9D52_21 ; slider cannon high
    .word bra_long_case_9D52_FF ; 22

        bra_long_case_9D52_FF:
        ; unused
            .byte con_rts

        bra_long_case_9D52_02:
        ; header
            .byte con_soundID_delay, $1B, $21
            .byte con_pause + $48
            .byte con_s_bg_2A
            .byte con_s_anim_3B
            .byte con_s_cloud_F0_default ; s_cloud_47
            .byte con_rts

        bra_long_case_9D52_04:
        ; drive overhead
            .byte con_pause + $01
            .byte con_s_bg_71
            .byte con_s_anim_00
            .byte con_s_cloud_clear
            .byte con_mirror_toggle
            .byte con_pause + $3C
            .byte con_s_bg_30
            .byte con_s_anim_face_p_tsubasa_my
            .byte con_s_cloud_F0_default ; s_cloud_A4
            .byte con_soundID_delay, $25, $02
            .byte con_pause + $22
            .byte con_s_bg_20
            .byte con_s_anim_ED
            .byte con_s_cloud_FF_skip
            .byte con_F7, $10
            .byte con_pause + $1C
            .byte con_s_bg_05
            .byte con_s_anim_00
            .byte con_s_cloud_clear
            .byte con_soundID_delay, $2B, $31
            .byte con_pause + $40
            .byte con_s_bg_47
            .byte con_s_anim_BF
            .byte con_s_cloud_F0_default ; s_cloud_49
            .byte con_mirror_toggle
            .byte con_rts

        bra_long_case_9D52_08:
        ; skylab hurricane
            .byte con_soundID_delay, $1A, $21
            .byte con_pause + $50
            .byte con_s_bg_2A
            .byte con_s_anim_3B
            .byte con_s_cloud_F0_default ; s_cloud_49
            .byte con_rts

        bra_long_case_9D52_0A:
        ; skylab twin shot
            .byte con_jmp
            .word loc_B22E

        bra_long_case_9D52_0E:
        ; overhead
            .dbyt con_branch_short + con_bra_40
            .byte off_case_9D52_0E_00 - * ; игрок без рожи
            .byte off_case_9D52_0E_01 - * ; con_p_tsubasa_my
            .byte off_case_9D52_0E_02 - * ; con_p_misaki_my
            .byte off_case_9D52_0E_03 - * ; con_p_misaki_japan
            .byte off_case_9D52_0E_04 - * ; con_p_hyuga_my, con_p_hyuga_japan
            .byte off_case_9D52_0E_05 - * ; con_p_hyuga_toho
            .byte off_case_9D52_0E_06 - * ; con_p_misugi_my, con_p_misugi_japan
            .byte off_case_9D52_0E_07 - * ; con_p_misugi_musashi
            .byte off_case_9D52_0E_08 - * ; con_p_matsuyama_my, con_p_matsuyama_japan
            .byte off_case_9D52_0E_09 - * ; con_p_matsuyama_furano
            .byte off_case_9D52_0E_0A - * ; con_p_ishizaki_my
            .byte off_case_9D52_0E_0B - * ; con_p_ishizaki_japan
            .byte off_case_9D52_0E_0C - * ; con_p_soda_my, con_p_soda_japan
            .byte off_case_9D52_0E_0D - * ; con_p_soda_tatsunami
            .byte off_case_9D52_0E_0E - * ; con_p_jito_my, con_p_jito_japan
            .byte off_case_9D52_0E_0F - * ; con_p_jito_kunimi
            .byte off_case_9D52_0E_10 - * ; con_p_masao_my, con_p_kazuo_my, con_p_masao_japan, con_p_kazuo_japan
            .byte off_case_9D52_0E_11 - * ; con_p_masao_akita, con_p_kazuo_akita
            .byte off_case_9D52_0E_12 - * ; con_p_nitta_my
            .byte off_case_9D52_0E_13 - * ; con_p_nitta_japan
            .byte off_case_9D52_0E_14 - * ; con_p_sawada_my
            .byte off_case_9D52_0E_15 - * ; con_p_sawada_toho
            .byte off_case_9D52_0E_16 - * ; con_p_coimbra_brazil
            .byte off_case_9D52_0E_17 - * ; con_p_carlos_flamengo
            .byte off_case_9D52_0E_18 - * ; con_p_carlos_brazil
            .byte off_case_9D52_0E_19 - * ; con_p_schneider_west_germany
            .byte off_case_9D52_0E_1A - * ; con_p_kaltz_hamburger_sv
            .byte off_case_9D52_0E_1B - * ; con_p_schester_west_germany
            .byte off_case_9D52_0E_1C - * ; con_p_diaz_argentina
            .byte off_case_9D52_0E_1D - * ; con_p_pascal_argentina
            .byte off_case_9D52_0E_1E - * ; con_p_pierre_france
            .byte off_case_9D52_0E_1F - * ; con_p_napoleon_france
            .byte off_case_9D52_0E_20 - * ; con_p_victorino_uruguay
            .byte off_case_9D52_0E_21 - * ; con_p_kaltz_west_germany

                off_case_9D52_0E_00:
                ; игрок без рожи
                    .byte con_jmp
                    .word loc_B01B_overhead_без_очистки

                off_case_9D52_0E_01:
                ; tsubasa
                    .byte con_pause + $3C
                    .byte con_s_bg_30
                    .byte con_s_anim_face_p_tsubasa_my
                    .byte con_s_cloud_F0_default ; s_cloud_B4
                    .byte con_jmp
                    .word loc_B018_overhead_с_очисткой

                off_case_9D52_0E_02:
                ; misaki
                    .byte con_pause + $3C
                    .byte con_s_bg_30
                    .byte con_s_anim_face_p_misaki_my
                    .byte con_s_cloud_F0_default ; s_cloud_B4
                    .byte con_jmp
                    .word loc_B018_overhead_с_очисткой

                off_case_9D52_0E_03:
                ; misaki
                    .byte con_pause + $3C
                    .byte con_s_bg_30
                    .byte con_s_anim_face_p_misaki_japan
                    .byte con_s_cloud_F0_default ; s_cloud_B4
                    .byte con_jmp
                    .word loc_B018_overhead_с_очисткой
                
                off_case_9D52_0E_04:
                ; hyuga
                    .byte con_pause + $3C
                    .byte con_s_bg_31
                    .byte con_s_anim_face_p_hyuga_my
                    .byte con_s_cloud_F0_default ; s_cloud_B4
                    .byte con_jmp
                    .word loc_B018_overhead_с_очисткой
                
                off_case_9D52_0E_05:
                ; hyuga
                    .byte con_pause + $3C
                    .byte con_s_bg_31
                    .byte con_s_anim_face_p_hyuga_toho
                    .byte con_s_cloud_F0_default ; s_cloud_B4
                    .byte con_jmp
                    .word loc_B018_overhead_с_очисткой

                off_case_9D52_0E_06:
                off_case_9D52_0E_07:
                    .byte con_jmp
                    .word loc_B01B_overhead_без_очистки
                
                off_case_9D52_0E_08:
                ; matsuyama
                    .byte con_pause + $3C
                    .byte con_s_bg_30
                    .byte con_s_anim_face_p_matsuyama_my
                    .byte con_s_cloud_F0_default ; s_cloud_B4
                    .byte con_jmp
                    .word loc_B018_overhead_с_очисткой
                
                off_case_9D52_0E_09:
                ; matsuyama
                    .byte con_pause + $3C
                    .byte con_s_bg_30
                    .byte con_s_anim_face_p_matsuyama_furano
                    .byte con_s_cloud_F0_default ; s_cloud_B4
                    .byte con_jmp
                    .word loc_B018_overhead_с_очисткой

                off_case_9D52_0E_0A:
                off_case_9D52_0E_0B:
                off_case_9D52_0E_0C:
                off_case_9D52_0E_0D:
                off_case_9D52_0E_0E:
                off_case_9D52_0E_0F:
                off_case_9D52_0E_10:
                off_case_9D52_0E_11:
                off_case_9D52_0E_12:
                off_case_9D52_0E_13:
                off_case_9D52_0E_14:
                off_case_9D52_0E_15:
                ; ishizaki, soda, jito, masao, kazuo, nitta, sawada
                    .byte con_jmp
                    .word loc_B01B_overhead_без_очистки
                
                off_case_9D52_0E_16:
                ; coimbra
                    .byte con_pause + $3C
                    .byte con_s_bg_30
                    .byte con_s_anim_face_p_coimbra_brazil
                    .byte con_s_cloud_F0_default ; s_cloud_B4
                    .byte con_jmp
                    .word loc_B018_overhead_с_очисткой
                
                off_case_9D52_0E_17:
                ; carlos
                    .byte con_pause + $3C
                    .byte con_s_bg_30
                    .byte con_s_anim_face_p_carlos_flamengo
                    .byte con_s_cloud_F0_default ; s_cloud_B4
                    .byte con_jmp
                    .word loc_B018_overhead_с_очисткой
                
                off_case_9D52_0E_18:
                ; carlos
                    .byte con_pause + $3C
                    .byte con_s_bg_30
                    .byte con_s_anim_face_p_carlos_brazil
                    .byte con_s_cloud_F0_default ; s_cloud_B4
                    .byte con_jmp
                    .word loc_B018_overhead_с_очисткой
                
                off_case_9D52_0E_19:
                ; schneider
                    .byte con_pause + $3C
                    .byte con_s_bg_30
                    .byte con_s_anim_face_p_schneider_west_germany
                    .byte con_s_cloud_F0_default ; s_cloud_B4
                    .byte con_jmp
                    .word loc_B018_overhead_с_очисткой

                off_case_9D52_0E_1A:
                off_case_9D52_0E_1B:
                ; kaltz, schester
                    .byte con_jmp
                    .word loc_B01B_overhead_без_очистки
                
                off_case_9D52_0E_1C:
                ; diaz
                    .byte con_pause + $3C
                    .byte con_s_bg_30
                    .byte con_s_anim_face_p_diaz_argentina
                    .byte con_s_cloud_F0_default ; s_cloud_B4
                    .byte con_jmp
                    .word loc_B018_overhead_с_очисткой

                off_case_9D52_0E_1D:
                off_case_9D52_0E_1E:
                off_case_9D52_0E_1F:
                ; pascal, pierre, napoleon
                    .byte con_jmp
                    .word loc_B01B_overhead_без_очистки
                
                off_case_9D52_0E_20:
                ; victorino
                    .byte con_pause + $3C
                    .byte con_s_bg_30
                    .byte con_s_anim_face_p_victorino_uruguay
                    .byte con_s_cloud_F0_default ; s_cloud_B4
                    .byte con_jmp
                    .word loc_B018_overhead_с_очисткой

                off_case_9D52_0E_21:
                ; kaltz
                    .byte con_jmp
                    .word loc_B01B_overhead_без_очистки

                bra_long_case_9D52_0F:
                ; hyper overhead
                    .dbyt con_branch_short + con_bra_plr_misugi
                    .byte off_case_9D52_0F_00 - * ; con_p_misugi_my, con_p_misugi_japan
                    .byte off_case_9D52_0F_01 - * ; con_p_misugi_musashi

                        off_case_9D52_0F_00:
                        ; hyper overhead/con_p_misugi_my, con_p_misugi_japan
                            .byte con_mirror_toggle
                            .byte con_pause + $3C
                            .byte con_s_bg_30
                            .byte con_s_anim_face_p_misugi_my
                            .byte con_s_cloud_F0_default ; s_cloud_B5
                        loc_B082_прыжок_misugi_для_hyper_overhead:
                            .byte con_soundID_delay, $25, $02
                            .byte con_pause + $19
                            .byte con_s_bg_1F
                            .byte con_s_anim_AC
                            .byte con_s_cloud_FF_skip
                            .byte con_jsr
                            .word sub_BBC7_очистка
                            .byte con_F7, $1D
                            .byte con_soundID_delay, $2B, $31
                            .byte con_pause + $4B
                            .byte con_s_bg_49
                            .byte con_s_anim_BF
                            .byte con_s_cloud_F0_default ; s_cloud_49
                            .byte con_mirror_toggle
                            .byte con_rts

                        off_case_9D52_0F_01:
                        ; hyper overhead/con_p_misugi_musashi
                            .byte con_mirror_toggle
                            .byte con_pause + $3C
                            .byte con_s_bg_30
                            .byte con_s_anim_face_p_misugi_musashi
                            .byte con_s_cloud_F0_default ; s_cloud_B5
                            .byte con_jmp
                            .word loc_B082_прыжок_misugi_для_hyper_overhead

                bra_long_case_9D52_12:
                ; cyclone
                    .byte con_mirror_off
                    .byte con_soundID_delay, $2B, $19
                    .byte con_pause + $3C
                    .byte con_s_bg_29
                    .byte con_s_anim_C6
                    .byte con_s_cloud_clear
loc_B0A7_tsubasa_cyclone_полная_анимация:
sub_B0A7_tsubasa_cyclone_полная_анимация:
                    .byte con_soundID_delay, $22, $02
                    .byte con_pause + $64
                    .byte con_s_bg_52
                    .byte con_s_anim_E5
                    .byte con_s_cloud_F0_default ; s_cloud_B5
                    .byte con_F7, $2F
                    .byte con_soundID_delay, $1F, $02
                    .byte con_pause + $64
                    .byte con_s_bg_4A
                    .byte con_s_anim_C7
                    .byte con_s_cloud_FF_skip
                    .byte con_pause + $3C
                    .byte con_s_bg_30
                    .byte con_s_anim_face_p_tsubasa_my
                    .byte con_s_cloud_F0_default ; s_cloud_AF
                    .byte con_soundID_delay, $23, $11
                    .byte con_F7, $04
                    .byte con_pause + $28
                    .byte con_s_bg_41
                    .byte con_s_anim_8C
                    .byte con_s_cloud_clear
                    .byte con_jmp
                    .word loc_AB42_мяч_улетает_от_игрока_после_удара

                bra_long_case_9D52_1C:
                ; dynamite header
                    .byte con_F7, $1E
                    .byte con_soundID_delay, $1A, $21
                    .byte con_pause + $48
                    .byte con_s_bg_05
                    .byte con_s_anim_3B
                    .byte con_s_cloud_F0_default ; s_cloud_49
                    .byte con_F7, $1E
                    .byte con_rts

                bra_long_case_9D52_1D:
                ; cannon header
                    .byte con_F7, $2A
                    .byte con_soundID_delay, $1A, $21
                    .byte con_pause + $48
                    .byte con_s_bg_4B
                    .byte con_s_anim_3B
                    .byte con_s_cloud_F0_default ; s_cloud_49
                    .byte con_rts

                bra_long_case_9D52_1E:
                ; rocker header
                    .byte con_F7, $20
                    .byte con_soundID_delay, $1A, $21
                    .byte con_pause + $56
                    .byte con_s_bg_48
                    .byte con_s_anim_CA
                    .byte con_s_cloud_F0_default ; s_cloud_49
                    .byte con_rts

                bra_long_case_9D52_1F:
                ; rising dragon kick
                    .byte con_soundID_delay, $1A, $02
                    .byte con_pause + $1E
                    .byte con_s_bg_1D
                    .byte con_s_anim_69
                    .byte con_s_cloud_F0_default ; s_cloud_49
                    .byte con_FE
                    .byte con_moving_bg, $03
                    .byte con_soundID_delay, $06, $02
                    .byte con_pause + $28
                    .byte con_s_bg_58
                    .byte con_s_anim_6A
                    .byte con_s_cloud_FF_skip
                    .byte con_rts

                bra_long_case_9D52_21:
                ; slider cannon high
                    .byte con_jmp
                    .word loc_B0FB_slider_cannon



loc_9D9A_выбор_анимации_удара_по_низкому_мячу:
    .dbyt con_branch_long + con_bra_разновидность_shoot
    .word bra_long_case_9D9A_FF ; 00
    .word bra_long_case_9D9A_01 ; volley
    .word bra_long_case_9D9A_FF ; 02
    .word bra_long_case_9D9A_FF ; 03
    .word bra_long_case_9D9A_FF ; 04
    .word bra_long_case_9D9A_FF ; 05
    .word bra_long_case_9D9A_06 ; falcon volley
    .word bra_long_case_9D9A_FF ; 07
    .word bra_long_case_9D9A_FF ; 08
    .word bra_long_case_9D9A_09 ; twin shot
    .word bra_long_case_9D9A_0A ; skylab twin shot
    .word bra_long_case_9D9A_FF ; 0B
    .word bra_long_case_9D9A_FF ; 0C
    .word bra_long_case_9D9A_FF ; 0D
    .word bra_long_case_9D9A_FF ; 0E
    .word bra_long_case_9D9A_FF ; 0F
    .word bra_long_case_9D9A_10 ; jumping volley
    .word bra_long_case_9D9A_FF ; 11
    .word bra_long_case_9D9A_12 ; cyclone
    .word bra_long_case_9D9A_FF ; 12
    .word bra_long_case_9D9A_FF ; 13
    .word bra_long_case_9D9A_FF ; 14
    .word bra_long_case_9D9A_FF ; 15
    .word bra_long_case_9D9A_FF ; 16
    .word bra_long_case_9D9A_FF ; 17
    .word bra_long_case_9D9A_FF ; 18
    .word bra_long_case_9D9A_FF ; 19
    .word bra_long_case_9D9A_FF ; 1A
    .word bra_long_case_9D9A_FF ; 1B
    .word bra_long_case_9D9A_FF ; 1C
    .word bra_long_case_9D9A_FF ; 1D
    .word bra_long_case_9D9A_FF ; 1E
    .word bra_long_case_9D9A_20 ; foward somersault
    .word bra_long_case_9D9A_21 ; slider cannon
    .word bra_long_case_9D9A_FF ; 22

        bra_long_case_9D9A_FF:
        ; unused
            .byte con_rts

        bra_long_case_9D9A_01:
        ; volley
            .byte con_moving_bg, $03
            .byte con_pause + $1E
            .byte con_s_bg_58
            .byte con_s_anim_68
            .byte con_s_cloud_F0_default ; s_cloud_47
            .byte con_F7, $28
            .byte con_soundID_delay, $14, $02
            .byte con_pause + $19
            .byte con_s_bg_05
            .byte con_s_anim_69
            .byte con_s_cloud_FF_skip
            .byte con_moving_bg, $03
            .byte con_pause + $28
            .byte con_s_bg_58
            .byte con_s_anim_6A
            .byte con_s_cloud_FF_skip
            .byte con_rts

        bra_long_case_9D9A_06:
        ; falcon volley
            .dbyt con_branch_short + con_bra_plr_nitta
            .byte off_case_9D9A_06_00 - * ; con_p_nitta_my
            .byte off_case_9D9A_06_01 - * ; con_p_nitta_japan

                off_case_9D9A_06_00:
                ; falcon volley/con_p_nitta_my
                    .byte con_pause + $3C
                    .byte con_s_bg_30
                    .byte con_s_anim_face_p_nitta_my
                    .byte con_s_cloud_F0_default ; s_cloud_BC
                loc_B1A0_falcon_volley:
                    .byte con_F7, $02
                    .byte con_mirror_toggle
                    .byte con_pause + $14
                    .byte con_s_bg_24
                    .byte con_s_anim_6B
                    .byte con_s_cloud_clear
                    .byte con_mirror_toggle
                    .byte con_F7, $10
                    .byte con_pause + $1E
                    .byte con_s_bg_05
                    .byte con_s_anim_00
                    .byte con_s_cloud_FF_skip
                    .byte con_F7, $30
                    .byte con_soundID_delay, $14, $02
                    .byte con_pause + $28
                    .byte con_s_bg_47
                    .byte con_s_anim_69
                    .byte con_s_cloud_F0_default ; s_cloud_49
                    .byte con_moving_bg, $03
                    .byte con_soundID_delay, $06, $02
                    .byte con_pause + $28
                    .byte con_s_bg_58
                    .byte con_s_anim_6A
                    .byte con_s_cloud_FF_skip
                    .byte con_FE
                    .byte con_rts

                off_case_9D9A_06_01:
                ; falcon volley/con_p_nitta_japan
                    .byte con_pause + $3C
                    .byte con_s_bg_30
                    .byte con_s_anim_face_p_nitta_japan
                    .byte con_s_cloud_F0_default ; s_cloud_BC
                    .byte con_jmp
                    .word loc_B1A0_falcon_volley

        bra_long_case_9D9A_09:
        ; twin shot
            .dbyt con_branch_short + con_bra_требуются_2_напарника     ; twin shot
            .byte off_case_9D9A_09_00 - * ; p_tsubasa_my
            .byte off_case_9D9A_09_01 - * ; p_misaki_my
            .byte off_case_9D9A_09_02 - * ; p_hyuga_my
            .byte off_case_9D9A_09_03 - * ; p_hyuga_japan
            .byte off_case_9D9A_09_04 - * ; p_hyuga_toho
            .byte off_case_9D9A_09_05 - * ; p_sawada_my
            .byte off_case_9D9A_09_06 - * ; p_sawada_toho
            .byte off_case_9D9A_09_07 - * ; p_masao_my
            .byte off_case_9D9A_09_08 - * ; p_kazuo_my
            .byte off_case_9D9A_09_09 - * ; p_masao_japan
            .byte off_case_9D9A_09_0A - * ; p_kazuo_japan
            .byte off_case_9D9A_09_0B - * ; p_masao_akita
            .byte off_case_9D9A_09_0C - * ; p_kazuo_akita
            .byte off_case_9D9A_09_0D - * ; p_diaz_argentina
            .byte off_case_9D9A_09_0E - * ; p_pascal_argentina
            .byte off_case_9D9A_09_0F - * ; p_pierre_france
            .byte off_case_9D9A_09_10 - * ; p_napoleon_france
            .byte off_case_9D9A_09_11 - * ; south_korea без рож

                off_case_9D9A_09_00:
                ; twin shot/p_tsubasa_my
                off_case_9D9A_09_01:
                ; twin shot/p_misaki_my
                    .byte con_mirror_on
                    .byte con_F8, $04
                    .byte con_pause + $3C
                    .byte con_s_bg_4F
                    .byte con_s_anim_face_p_tsubasa_my
                    .byte con_s_cloud_F0_default ; s_cloud_AA
                    .byte con_mirror_toggle
                    .byte con_F8, $04
                    .byte con_pause + $3C
                    .byte con_s_bg_30
                    .byte con_s_anim_face_p_misaki_my
                    .byte con_s_cloud_F0_default ; s_cloud_AB
                    .byte con_F7, $10
                    .byte con_pause + $16
                    .byte con_s_bg_05
                    .byte con_s_anim_00
                    .byte con_s_cloud_clear
                    .byte con_soundID_delay, $14, $02
                    .byte con_F7, $36
                    .byte con_pause + $3C
                    .byte con_s_bg_05
                    .byte con_s_anim_D6
                    .byte con_s_cloud_F0_default ; s_cloud_04
                    .byte con_jmp
                    .word loc_B1F6_мяч_улетает_от_игроков_после_twin_shot

                off_case_9D9A_09_02:
                ; twin shot/p_hyuga_my
                off_case_9D9A_09_03:
                ; twin shot/p_hyuga_japan
                off_case_9D9A_09_04:
                ; twin shot/p_hyuga_toho
                off_case_9D9A_09_05:
                ; twin shot/p_sawada_my
                off_case_9D9A_09_06:
                ; twin shot/p_sawada_toho
                loc_B1DE_twin_shot:
                    .byte con_soundID_delay, $26, $02
                    .byte con_F7, $02
                    .byte con_pause + $28
                    .byte con_s_bg_22
                    .byte con_s_anim_6B
                    .byte con_s_cloud_F0_default ; s_cloud_8D
                    .byte con_F7, $10
                    .byte con_pause + $16
                    .byte con_s_bg_05
                    .byte con_s_anim_00
                    .byte con_s_cloud_clear
                    .byte con_soundID_delay, $14, $02
                    .byte con_F7, $36
                    .byte con_pause + $3C
                    .byte con_s_bg_05
                    .byte con_s_anim_D9
                    .byte con_s_cloud_F0_default ; s_cloud_04
                loc_B1F6_мяч_улетает_от_игроков_после_twin_shot:
                    .byte con_F7, $23
                    .byte con_soundID_delay, $09, $02
                    .byte con_pause + $46
                    .byte con_s_bg_27
                    .byte con_s_anim_DC
                    .byte con_s_cloud_FF_skip
                    .byte con_rts
                
                off_case_9D9A_09_07:
                ; twin shot/p_masao_my
                off_case_9D9A_09_08:
                ; twin shot/p_kazuo_my
                off_case_9D9A_09_09:
                ; twin shot/p_masao_japan
                off_case_9D9A_09_0A:
                ; twin shot/p_kazuo_japan
                    .byte con_mirror_on
                    .byte con_F8, $04
                    .byte con_pause + $3C
                    .byte con_s_bg_4F
                    .byte con_s_anim_face_p_masao_my
                    .byte con_s_cloud_F0_default ; s_cloud_AC
                    .byte con_mirror_toggle
                    .byte con_F8, $04
                    .byte con_pause + $3C
                    .byte con_s_bg_30
                    .byte con_s_anim_face_p_masao_my
                    .byte con_s_cloud_F0_default ; s_cloud_AD
                    loc_B22E:
                    .byte con_F7, $10
                    .byte con_pause + $16
                    .byte con_s_bg_05
                    .byte con_s_anim_00
                    .byte con_s_cloud_clear
                    .byte con_soundID_delay, $14, $02
                    .byte con_F7, $36
                    .byte con_pause + $3C
                    .byte con_s_bg_05
                    .byte con_s_anim_D8
                    .byte con_s_cloud_F0_default ; s_cloud_04
                    .byte con_jmp
                    .word loc_B1F6_мяч_улетает_от_игроков_после_twin_shot
                
                off_case_9D9A_09_0B:
                ; twin shot/p_masao_akita
                off_case_9D9A_09_0C:
                ; twin shot/p_kazuo_akita
                    .byte con_mirror_on
                    .byte con_F8, $04
                    .byte con_pause + $3C
                    .byte con_s_bg_4F
                    .byte con_s_anim_face_p_masao_akita
                    .byte con_s_cloud_F0_default ; s_cloud_AC
                    .byte con_mirror_toggle
                    .byte con_F8, $04
                    .byte con_pause + $3C
                    .byte con_s_bg_30
                    .byte con_s_anim_face_p_masao_akita
                    .byte con_s_cloud_F0_default ; s_cloud_AD
                    .byte con_jmp
                    .word loc_B22E

                off_case_9D9A_09_0D:
                ; twin shot/p_diaz_argentina
                off_case_9D9A_09_0E:
                ; twin shot/p_pascal_argentina
                off_case_9D9A_09_0F:
                ; twin shot/p_pierre_france
                off_case_9D9A_09_10:
                ; twin shot/p_napoleon_france
                off_case_9D9A_09_11:
                ; twin shot/p_sha_south_korea или p_kim_south_korea
                    .byte con_jmp
                    .word loc_B1DE_twin_shot

        bra_long_case_9D9A_0A:
        ; skylab twin shot
            .byte con_jmp
            .word loc_B22E

        bra_long_case_9D9A_10:
        ; jumping volley
loc_B251_misaki_jumping_volley_в_процессе:
            .byte con_F7, $31
            .byte con_soundID_delay, $16, $02
            .byte con_pause + $28
            .byte con_s_bg_6A
            .byte con_s_anim_C4
            .byte con_s_cloud_F0_default ; s_cloud_49
            .byte con_F7, $21
            .byte con_soundID_delay, $14, $02
            .byte con_pause + $16
            .byte con_s_bg_05
            .byte con_s_anim_69
            .byte con_s_cloud_FF_skip
            .byte con_moving_bg, $04
            .byte con_soundID_delay, $0B, $02
            .byte con_pause + $28
            .byte con_s_bg_58
            .byte con_s_anim_C5
            .byte con_s_cloud_FF_skip
            .byte con_jmp
            .word loc_BBC7_очистка

        bra_long_case_9D9A_12:
        ; cyclone
loc_AD0C_cyclone:
            .byte con_mirror_off
            .byte con_jsr
            .word sub_AD13
            .byte con_jmp
            .word loc_B0A7_tsubasa_cyclone_полная_анимация

        bra_long_case_9D9A_20:
        ; foward somersault
            .byte con_pause + $3C
            .byte con_s_bg_30
            .byte con_s_anim_face_p_diaz_argentina
            .byte con_s_cloud_F0_default ; s_cloud_13
            .byte con_F7, $31
            .byte con_soundID_delay, $25, $02
            .byte con_pause + $1B
            .byte con_s_bg_48
            .byte con_s_anim_CC
            .byte con_s_cloud_F0_default ; s_cloud_DE
            .byte con_jsr
            .word sub_BBC7_очистка
            .byte con_F7, $0E
            .byte con_pause + $28
            .byte con_s_bg_05
            .byte con_s_anim_00
            .byte con_s_cloud_F0_default ; s_cloud_49
            .byte con_F7, $19
            .byte con_soundID_delay, $1A, $11
            .byte con_pause + $28
            .byte con_s_bg_5C
            .byte con_s_anim_CD
            .byte con_s_cloud_FF_skip
            .byte con_jsr
            .word sub_BBC7_очистка
            .byte con_F7, $1F
            .byte con_pause + $78
            .byte con_s_bg_30
            .byte con_s_anim_face_p_diaz_argentina
            .byte con_s_cloud_F0_default ; s_cloud_BF
            .byte con_jmp
            .word loc_BBC7_очистка

            bra_long_case_9D9A_21:
            ; slider cannon
            loc_B0FB_slider_cannon:
                .dbyt con_branch_short + con_bra_били_ли_раньше_этот_удар     ; slider cannon уже били или нет
                .byte off_case_9D9A_21_00 - * ; slider cannon уже били
                .byte off_case_9D9A_21_01 - * ; slider cannon еще не били

                off_case_9D9A_21_00:
                    .byte con_mirror_off
                    .byte con_F7, $10
                    .byte con_pause + $28
                    .byte con_s_bg_05
                    .byte con_s_anim_00
                    .byte con_s_cloud_clear
                    .byte con_soundID_delay, $46, $02
                    .byte con_pause + $10
                    .byte con_s_bg_54
                    .byte con_s_anim_D4
                    .byte con_s_cloud_clear
                    .byte con_pause + $78
                    .byte con_s_bg_30
                    .byte con_s_anim_face_p_pierre_france
                    .byte con_s_cloud_F0_default ; s_cloud_8A
                    .byte con_jsr
                    .word sub_BBC7_очистка
                    .byte con_mirror_toggle
                    .byte con_pause + $10
                    .byte con_s_bg_54
                    .byte con_s_anim_D5
                    .byte con_s_cloud_F0_default ; s_cloud_8B
                    .byte con_pause + $B8
                    .byte con_s_bg_30
                    .byte con_s_anim_face_p_napoleon_france
                    .byte con_s_cloud_FF_skip
                    .byte con_pause + $C0
                    .byte con_s_bg_FF_skip
                    .byte con_s_anim_FF_skip
                    .byte con_s_cloud_FF_skip
                    .byte con_jsr
                    .word sub_BBC7_очистка
                    .byte con_mirror_toggle
                    .byte con_pause + $10
                    .byte con_s_bg_54
                    .byte con_s_anim_D4
                    .byte con_s_cloud_F0_default ; s_cloud_8C
                    .byte con_pause + $B8
                    .byte con_s_bg_30
                    .byte con_s_anim_face_p_pierre_france
                    .byte con_s_cloud_FF_skip
                    .byte con_pause + $C0
                    .byte con_s_bg_FF_skip
                    .byte con_s_anim_FF_skip
                    .byte con_s_cloud_FF_skip
                    .byte con_F7, $1F
                    .byte con_soundID_delay, $30, $02
                    .byte con_pause + $1E
                    .byte con_s_bg_30
                    .byte con_s_anim_face_p_pierre_france
                    .byte con_s_cloud_F0_default ; s_cloud_8D
                    .byte con_soundID_delay, $7F, $02
                    .byte con_jsr
                    .word sub_BBC7_очистка
                loc_9D9A_slider_cannon_без_катсцены:
                    .byte con_mirror_off
                    .byte con_F8, $04
                    .byte con_pause + $3C
                    .byte con_s_bg_30
                    .byte con_s_anim_face_p_pierre_france
                    .byte con_s_cloud_F0_default ; s_cloud_C1
                    .byte con_mirror_toggle
                    .byte con_F8, $04
                    .byte con_pause + $3C
                    .byte con_s_bg_4F
                    .byte con_s_anim_face_p_napoleon_france
                    .byte con_s_cloud_F0_default ; s_cloud_C0
                    .byte con_soundID_delay, $25, $02
                    .byte con_pause + $28
                    .byte con_s_bg_1F
                    .byte con_s_anim_EB
                    .byte con_s_cloud_clear
                    .byte con_mirror_toggle
                    .byte con_soundID_delay, $25, $02
                    .byte con_pause + $28
                    .byte con_s_bg_1F
                    .byte con_s_anim_EC
                    .byte con_s_cloud_FF_skip
                    .byte con_F7, $31
                    .byte con_soundID_delay, $24, $02
                    .byte con_pause + $27
                    .byte con_s_bg_6A
                    .byte con_s_anim_DB
                    .byte con_s_cloud_F0_default ; s_cloud_DE
                    .byte con_F7, $20
                    .byte con_pause + $5E
                    .byte con_s_bg_49
                    .byte con_s_anim_FF_skip
                    .byte con_s_cloud_F0_default ; s_cloud_DE
                    .byte con_F7, $10
                    .byte con_soundID_delay, $14, $02
                    .byte con_pause + $1E
                    .byte con_s_bg_05
                    .byte con_s_anim_00
                    .byte con_s_cloud_clear
                    .byte con_soundID_delay, $09, $02
                    .byte con_moving_bg, $03
                    .byte con_pause + $46
                    .byte con_s_bg_59
                    .byte con_s_anim_DC
                    .byte con_s_cloud_F0_default ; s_cloud_04
                    .byte con_jmp
                    .word loc_BBC7_очистка

                off_case_9D9A_21_01:
                    .byte con_jmp
                    .word loc_9D9A_slider_cannon_без_катсцены



sub_9DF8_защитник_прыгает_к_летящему_мячу_с_перехватом:
    .dbyt con_branch_long + con_bra_защитный_спешал_или_нет
    .word bra_long_case_B32C_00_no_special_defense ; 
    .word bra_long_case_B31A_01_yes_special_defense ; 



sub_9DFE_выбор_анимации_дриблинга_в_зависимости_от_действия:
    .dbyt con_branch_long + con_bra_действие_атаки_на_земле
    .word bra_long_case_9DFE_00 ; shoot
    .word bra_long_case_9DFE_01 ; pass
    .word bra_long_case_9DFE_02 ; dribble
    .word bra_long_case_9DFE_03 ; 1-2 pass



bra_long_case_9DFE_02:
    .dbyt con_branch_long + con_bra_разновидность_dribble
    .word bra_long_case_9DFE_02_00 ; dribble
    .word bra_long_case_9DFE_02_01 ; heel lift
    .word bra_long_case_9DFE_02_02 ; forcible dribble
    .word bra_long_case_9DFE_02_03 ; vanishing feint
    .word bra_long_case_9DFE_02_04 ; clone dribble
    .word bra_long_case_9DFE_02_05 ; high speed dribble
    .word bra_long_case_9DFE_02_06 ; hedgehog dribble



sub_9E1B_рандом_анимации_отпизженного_игрока_4_с_сообщением:
    .dbyt con_branch_short + con_bra_рандом_из_2х
    .byte off_case_9E1B_00 - * ; random 1
    .byte off_case_9E1B_01 - * ; random 2

        off_case_9E1B_00:
        ; random 1
            .byte con_pause + $32
            .byte con_s_bg_1C
            .byte con_s_anim_13
            .byte con_s_cloud_F0_default ; s_cloud_02
            .byte con_rts

        off_case_9E1B_01:
        ; random 2
            .byte con_pause + $32
            .byte con_s_bg_1C
            .byte con_s_anim_14
            .byte con_s_cloud_F0_default ; s_cloud_02
            .byte con_rts



loc_9E45_выбор_анимации_паса_с_земли_или_по_низкому_мячу:
    .dbyt con_branch_short + con_bra_разновидность_pass
    .byte off_case_9E45_00 - * ; pass
    .byte off_case_9E45_01 - * ; drive pass
    .byte off_case_9E45_02 - * ; razor pass
    .byte off_case_9E45_03 - * ; topspin pass

        off_case_9E45_00:
        ; pass
            .byte con_soundID_delay, $2B, $05
            .byte con_pause + $3C
            .byte con_s_bg_72
            .byte con_s_anim_66
            .byte con_s_cloud_F0_default ; s_cloud_47
            .byte con_rts

        off_case_9E45_01:
        ; drive pass
            .byte con_mirror_off
            .byte con_pause + $3C
            .byte con_s_bg_30
            .byte con_s_anim_face_p_tsubasa_my
            .byte con_s_cloud_F0_default ; s_cloud_C2
            .byte con_F7, $10
            .byte con_soundID_delay, $12, $02
            .byte con_pause + $14
            .byte con_s_bg_10
            .byte con_s_anim_62
            .byte con_s_cloud_FF_skip
            .byte con_F7, $02
            .byte con_soundID_delay, $04, $02
            .byte con_pause + $27
            .byte con_s_bg_24
            .byte con_s_anim_66
            .byte con_s_cloud_FF_skip
            .byte con_jmp
            .word loc_AB6B

        off_case_9E45_02:
        ; razor pass
            .dbyt con_branch_short + con_bra_plr_soda
            .byte off_case_9E45_02_00 - * ; con_p_soda_my, con_p_soda_japan
            .byte off_case_9E45_02_01 - * ; con_p_soda_tatsunami

                off_case_9E45_02_00:
                ; razor pass/con_p_soda_my, con_p_soda_japan
                    .byte con_jsr
                    .word sub_AF73_рожа_soda_палка_и_мерцание
                loc_AF97_02_01_razor_pass_улетает_от_игрока:
                    .byte con_mirror_toggle
                    .byte con_F7, $02
                    .byte con_soundID_delay, $06, $02
                    .byte con_pause + $27
                    .byte con_s_bg_24
                    .byte con_s_anim_66
                    .byte con_s_cloud_FF_skip
                    .byte con_jmp
                    .word loc_AB6B

                off_case_9E45_02_01:
                ; razor pass/con_p_soda_tatsunami
                    .byte con_jsr
                    .word sub_AF88_рожа_soda_палка_и_мерцание
                    .byte con_jmp
                    .word loc_AF97_02_01_razor_pass_улетает_от_игрока

        off_case_9E45_03:
        ; topspin pass
            .byte con_mirror_off
            .byte con_F7, $10
            .byte con_soundID_delay, $12, $02
            .byte con_pause + $1D
            .byte con_s_bg_10
            .byte con_s_anim_62
            .byte con_s_cloud_F0_default ; s_cloud_49
            .byte con_F7, $02
            .byte con_soundID_delay, $07, $02
            .byte con_pause + $37
            .byte con_s_bg_24
            .byte con_s_anim_66
            .byte con_s_cloud_FF_skip
            .byte con_rts



loc_9E4F_пас_головой_в_воздухе:
    .byte con_soundID_delay, $2B, $15     ; отбитие мяча
    .byte con_pause + $3F
    .byte con_s_bg_2A
    .byte con_s_anim_19
    .byte con_s_cloud_F0_default ; s_cloud_47
    .byte con_rts



sub_9E64_рожа_атакующего_с_сообщением_неудачи_если_выжил:
    .dbyt con_branch_short + con_bra_4A
    .byte off_case_9E64_00 - * ; кто-то из соперников без рожи
    .byte off_case_9E64_01 - * ; оба соперника с рожами

        off_case_9E64_00:
        ; кто-то из соперников без рожи
            .byte con_rts

        off_case_9E64_01:
        ; оба соперника с рожами
            .dbyt con_branch_short + con_bra_атакующий_с_рожей
            .byte off_case_9E64_01_00 - * ; атакующий без рожи
            .byte off_case_9E64_01_01 - * ; атакующий с рожей

                off_case_9E64_01_00:
                ; оба соперника с рожами/атакующий без рожи
                    .byte con_rts

                off_case_9E64_01_01:
                ; оба соперника с рожами/атакующий с рожей
                    .byte con_pause + $3C
                    .byte con_s_bg_30
                    .byte con_s_anim_FD_attacker
                    .byte con_s_cloud_F0_default ; s_cloud_8E
                    .byte con_jmp
                    .word loc_BBC7_очистка



sub_9E65_рожа_атакующего_с_сообщением_неудачи_если_убился:
    .dbyt con_branch_short + con_bra_4A
    .byte off_case_9E65_00 - * ; кто-то из соперников без рожи
    .byte off_case_9E65_01 - * ; оба соперника с рожами

        off_case_9E65_00:
        ; кто-то из соперников без рожи
            .byte con_rts

        off_case_9E65_01:
        ; оба соперника с рожами
            .dbyt con_branch_short + con_bra_атакующий_с_рожей
            .byte off_case_9E65_01_00 - * ; атакующий без рожи
            .byte off_case_9E65_01_01 - * ; атакующий с рожей

                off_case_9E65_01_00:
                ; оба соперника с рожами/атакующий без рожи
                    .byte con_rts

                off_case_9E65_01_01:
                ; оба соперника с рожами/атакующий с рожей
                    .byte con_pause + $3C
                    .byte con_s_bg_30
                    .byte con_s_anim_FD_attacker
                    .byte con_s_cloud_F0_default ; s_cloud_90
                    .byte con_jmp
                    .word loc_BBC7_очистка



loc_9EAA_рожа_защитника_с_сообщением_неудачи_если_выжил:
sub_9EAA_рожа_защитника_с_сообщением_неудачи_если_выжил:
    .dbyt con_branch_short + con_bra_4A
    .byte off_case_9EAA_00 - * ; кто-то из соперников без рожи
    .byte off_case_9EAA_01 - * ; оба соперника с рожами

        off_case_9EAA_00:
        ; кто-то из соперников без рожи
            .byte con_rts

        off_case_9EAA_01:
        ; оба соперника с рожами
            .dbyt con_branch_short + con_bra_защитник_с_рожей
            .byte off_case_9EAA_01_00 - * ; защитник без рожи
            .byte off_case_9EAA_01_01 - * ; защитник с рожей

                off_case_9EAA_01_00:
                ; оба соперника с рожами/защитник без рожи
                    .byte con_rts

                off_case_9EAA_01_01:
                ; оба соперника с рожами/защитник с рожей
                    .byte con_pause + $3C
                    .byte con_s_bg_30
                    .byte con_s_anim_FE_defender
                    .byte con_s_cloud_F0_default ; s_cloud_8F
                    .byte con_jmp
                    .word loc_BBC7_очистка



sub_9EAB_рожа_защитника_с_сообщением_неудачи_если_убился:
    .dbyt con_branch_short + con_bra_4A
    .byte off_case_9EAB_00 - * ; кто-то из соперников без рожи
    .byte off_case_9EAB_01 - * ; оба соперника с рожами

        off_case_9EAB_00:
        ; кто-то из соперников без рожи
            .byte con_rts

        off_case_9EAB_01:
        ; оба соперника с рожами
            .dbyt con_branch_short + con_bra_защитник_с_рожей
            .byte off_case_9EAB_01_00 - * ; защитник без рожи
            .byte off_case_9EAB_01_01 - * ; защитник с рожей

                off_case_9EAB_01_00:
                ; оба соперника с рожами/защитник без рожи
                    .byte con_rts

                off_case_9EAB_01_01:
                ; оба соперника с рожами/защитник с рожей
                    .byte con_pause + $3C
                    .byte con_s_bg_30
                    .byte con_s_anim_FE_defender
                    .byte con_s_cloud_F0_default ; s_cloud_90
                    .byte con_jmp
                    .word loc_BBC7_очистка



loc_9EF0_попытка_включить_drive_tiger:
    .byte con_drive, con_tiger
    .word ofs_BA11_00_не_активировать_drive_tiger
    .word ofs_B9FB_01_активировать_drive_tiger



sub_9EF6_выбор_анимации_полета_удара:
    .dbyt con_branch_long + con_bra_разновидность_shoot
    .word bra_long_case_B4E7_00 ; shot
    .word bra_long_case_B4EF_01 ; header
    .word bra_long_case_B4F7_02 ; volley
    .word bra_long_case_B4FB_03 ; drive shot
    .word bra_long_case_B509_04 ; drive overhead
    .word bra_long_case_B525_05 ; falcon shot
    .word bra_long_case_B532_06 ; falcon volley
    .word bra_long_case_B53F_07 ; razor shot
    .word bra_long_case_B4F7_08 ; skylab hurricane
    .word bra_long_case_B553_09 ; twin shot
    .word bra_long_case_B55A_0A ; skylab twin shot
    .word bra_long_case_B567_0B ; eagle shot
    .word bra_long_case_B575_0C ; tiger shot
    .word bra_long_case_B583_0D ; neo tiger shot
    .word bra_long_case_B599_0E ; overhead
    .word bra_long_case_B59D_0F ; hyper overhead
    .word bra_long_case_B5A4_10 ; jumping volley
    .word bra_long_case_B5BA_11 ; drive tiger
    .word bra_long_case_B5D0_12 ; cyclone
    .word bra_long_case_B5E4_13 ; sano combo
    .word bra_long_case_B5EC_14 ; banana shot
    .word bra_long_case_B5F7_15 ; booster shot
    .word bra_long_case_B60B_16 ; mirage shot
    .word bra_long_case_B61D_17 ; mach shot
    .word bra_long_case_B675_18 ; sidewinder shot
    .word bra_long_case_B685_19 ; slider shot
    .word bra_long_case_B690_1A ; cannon shot
    .word bra_long_case_B6C0_1B ; fire shot
    .word bra_long_case_B6D6_1C ; dynamite header
    .word bra_long_case_B6DE_1D ; cannon header
    .word bra_long_case_B6E6_1E ; rocket header
    .word bra_long_case_B6F0_1F ; rising dragon kick
    .word bra_long_case_B701_20 ; foward somersault
    .word bra_long_case_B712_21 ; slider cannon
    .word bra_long_case_B724_22 ; double eel

        bra_long_case_B4E7_00:
        ; shot
sub_B4E7_конечный_полет_обычного_удара_с_земли:
            .byte con_soundID_delay, $03, $02
            .byte con_pause + $3C
            .byte con_s_bg_1F
            .byte con_s_anim_84
            .byte con_s_cloud_clear
            .byte con_rts

        bra_long_case_B4EF_01:
        ; header
            .byte con_soundID_delay, $04, $02
            .byte con_pause + $37
            .byte con_s_bg_2A
            .byte con_s_anim_1A
            .byte con_s_cloud_clear
            .byte con_rts

        bra_long_case_B4F7_02:
        ; volley
            .byte con_jmp
            .word loc_BB65_одна_из_анимаций_drive_shot

        bra_long_case_B4FB_03:
        ; drive shot
            .byte con_soundID_delay, $04, $02
            .byte con_pause + $37
            .byte con_s_bg_00
            .byte con_s_anim_01
            .byte con_s_cloud_clear
        loc_B502:
            .byte con_jsr
            .word sub_BB5D_одна_из_анимаций_drive_shot
            .byte con_jmp
            .word loc_BB65_одна_из_анимаций_drive_shot

        bra_long_case_B509_04:
        ; drive overhead
            .byte con_soundID_delay, $04, $02
            .byte con_pause + $2A
            .byte con_s_bg_00
            .byte con_s_anim_0F
            .byte con_s_cloud_clear
            .byte con_F7, $33
            .byte con_soundID_delay, $05, $02
            .byte con_pause + $36
            .byte con_s_bg_27
            .byte con_s_anim_10
            .byte con_s_cloud_clear
        sub_B519:
            .byte con_mirror_toggle
            .byte con_soundID_delay, $08, $02
            .byte con_F7, $09
            .byte con_pause + $24
            .byte con_s_bg_43
            .byte con_s_anim_5F
            .byte con_s_cloud_clear
            .byte con_mirror_toggle
            .byte con_rts

        bra_long_case_B525_05:
        ; falcon shot
            .byte con_jsr
            .word sub_BB75
            .byte con_F7, $33
            .byte con_soundID_delay, $06, $02
            .byte con_pause + $2A
            .byte con_s_bg_27
            .byte con_s_anim_12
            .byte con_s_cloud_clear
            .byte con_rts

        bra_long_case_B532_06:
        ; falcon volley
            .byte con_jsr
            .word sub_BB75
            .byte con_soundID_delay, $04, $02
            .byte con_F7, $30
            .byte con_pause + $30
            .byte con_s_bg_4B
            .byte con_s_anim_0F
            .byte con_s_cloud_clear
            .byte con_rts

        bra_long_case_B53F_07:
        ; razor shot
            .byte con_mirror_toggle
            .byte con_jsr
            .word sub_BB8F
        loc_B543:
            .byte con_soundID_delay, $08, $02
            .byte con_pause + $34
            .byte con_s_bg_56
            .byte con_s_anim_1D
            .byte con_s_cloud_clear
            .byte con_mirror_toggle
            .byte con_jsr
            .word sub_BB8F
            .byte con_rts

        bra_long_case_B4F7_08:
        ; skylab hurricane
            .byte con_jmp
            .word loc_BB65_одна_из_анимаций_drive_shot

        bra_long_case_B553_09:
        ; twin shot
            .byte con_jsr
            .word sub_BBA7_полет_twin_shot_1
            .byte con_jsr
            .word sub_BBAF_полет_twin_shot_2
            .byte con_rts

        bra_long_case_B55A_0A:
        ; skylab twin shot
            .byte con_jsr
            .word sub_BBA7_полет_twin_shot_1
            .byte con_F7, $3A
            .byte con_soundID_delay, $0A, $02
            .byte con_pause + $46
            .byte con_s_bg_24
            .byte con_s_anim_28
            .byte con_s_cloud_clear
            .byte con_rts

        bra_long_case_B567_0B:
        ; eagle shot
            .byte con_jsr
            .word sub_BB85
            .byte con_soundID_delay, $5E, $02
            .byte con_pause + $1E
            .byte con_s_bg_35
            .byte con_s_anim_32
            .byte con_s_cloud_clear
            .byte con_jsr
            .word sub_BB85
            .byte con_rts

        bra_long_case_B575_0C:
        ; tiger shot
            .byte con_jsr
            .word sub_BB8F
            .byte con_soundID_delay, $07, $02
            .byte con_pause + $32
            .byte con_s_bg_02
            .byte con_s_anim_36
            .byte con_s_cloud_clear
            .byte con_jsr
            .word sub_BB7D
            .byte con_rts

        bra_long_case_B583_0D:
        ; neo tiger shot
            .byte con_F7, $0C
            .byte con_jsr
            .word sub_BB97
            .byte con_mirror_toggle
            .byte con_F7, $0C
            .byte con_jsr
            .word sub_BB97
            .byte con_mirror_toggle
            .byte con_F7, $16
            .byte con_soundID_delay, $07, $02
            .byte con_pause + $32
            .byte con_s_bg_49
            .byte con_s_anim_36
            .byte con_s_cloud_clear
            .byte con_rts

        bra_long_case_B599_0E:
        ; overhead
            .byte con_jsr
            .word sub_BB6D
            .byte con_rts

        bra_long_case_B59D_0F:
        ; hyper overhead
            .byte con_jsr
            .word sub_BB6D
            .byte con_jsr
            .word sub_B6D6_полет_dynamite_header
            .byte con_rts

        bra_long_case_B5A4_10:
        ; jumping volley
            .byte con_F7, $31
            .byte con_jsr
            .word sub_BBBF
            .byte con_mirror_toggle
            .byte con_F7, $31
            .byte con_jsr
            .word sub_BBBF
            .byte con_mirror_toggle
            .byte con_F7, $33
            .byte con_soundID_delay, $07, $02
            .byte con_pause + $32
            .byte con_s_bg_27
            .byte con_s_anim_11
            .byte con_s_cloud_clear
            .byte con_rts

        bra_long_case_B5BA_11:
        ; drive tiger
            .byte con_soundID_delay, $08, $02
            .byte con_pause + $41
            .byte con_s_bg_02
            .byte con_s_anim_29
            .byte con_s_cloud_clear
            .byte con_soundID_delay, $0A, $02
            .byte con_pause + $3D
            .byte con_s_bg_13
            .byte con_s_anim_2F
            .byte con_s_cloud_clear
            .byte con_soundID_delay, $0A, $02
            .byte con_pause + $46
            .byte con_s_bg_5F
            .byte con_s_anim_28
            .byte con_s_cloud_clear
            .byte con_rts

        bra_long_case_B5D0_12:
        ; cyclone
            .byte con_soundID_delay, $24, $02
            .byte con_pause + $38
            .byte con_s_bg_35
            .byte con_s_anim_10
            .byte con_s_cloud_clear
            .byte con_jsr
            .word sub_BB5D_одна_из_анимаций_drive_shot
            .byte con_soundID_delay, $24, $02
            .byte con_F7, $33
            .byte con_pause + $3C
            .byte con_s_bg_5D
            .byte con_s_anim_51
            .byte con_s_cloud_clear
            .byte con_rts

        bra_long_case_B5E4_13:
        ; sano combo
            .byte con_soundID_delay, $0E, $02
            .byte con_pause + $32
            .byte con_s_bg_1D
            .byte con_s_anim_0F
            .byte con_s_cloud_clear
            .byte con_rts

        bra_long_case_B5EC_14:
        ; banana shot
            .byte con_jsr
            .word sub_BB8F
            .byte con_soundID_delay, $0E, $02
            .byte con_pause + $32
            .byte con_s_bg_62
            .byte con_s_anim_41
            .byte con_s_cloud_clear
            .byte con_rts

        bra_long_case_B5F7_15:
        ; booster shot
            .byte con_F7, $31
            .byte con_jsr
            .word sub_BBBF
            .byte con_F7, $31
            .byte con_soundID_delay, $07, $02
            .byte con_pause + $34
            .byte con_s_bg_44
            .byte con_s_anim_11
            .byte con_s_cloud_clear
            .byte con_F7, $31
            .byte con_jsr
            .word sub_BBBF
            .byte con_rts

        bra_long_case_B60B_16:
        ; mirage shot
            .byte con_F7, $3B
            .byte con_jsr
            .word sub_BB8F
            .byte con_mirror_toggle
            .byte con_F7, $3B
            .byte con_jsr
            .word sub_BB8F
            .byte con_mirror_toggle
            .byte con_F7, $3B
            .byte con_jsr
            .word sub_BBAF_полет_twin_shot_2
            .byte con_rts

        bra_long_case_B61D_17:
        ; mach shot
            .byte con_soundID_delay, $0B, $02
            .byte con_pause + $32
            .byte con_s_bg_1C
            .byte con_s_anim_3C
            .byte con_s_cloud_clear
            .byte con_mirror_toggle
            .byte con_jsr
            .word sub_BB8F
            .byte con_mirror_toggle
            .byte con_F7, $18
            .byte con_soundID_delay, $0C, $02
            .byte con_pause + $32
            .byte con_s_bg_5D
            .byte con_s_anim_3D
            .byte con_s_cloud_clear
            .byte con_F7, $18
            .byte con_soundID_delay, $0D, $02
            .byte con_pause + $20
            .byte con_s_bg_FF_skip
            .byte con_s_anim_00
            .byte con_s_cloud_clear
            .dbyt con_branch_short + con_bra_били_ли_раньше_этот_удар     ; coimbra уже бил или нет
            .byte off_case_B61D_17_00 - * ; coimbra еще не бил
            .byte off_case_B61D_17_01 - * ; coimbra уже бил

                off_case_B61D_17_00:
                ; coimbra еще не бил
                    .byte con_soundID_delay, $43, $02
                    .byte con_mirror_off
                    .dbyt con_branch_short + con_bra_рожа_кипера
                    .byte off_case_B61D_17_00_00 - * ; кипер без рожи
                    .byte off_case_B61D_17_00_01 - * ; p_renato_my
                    .byte off_case_B61D_17_00_02 - * ; p_morisaki_my
                    .byte off_case_B61D_17_00_03 - * ; p_wakabayashi_my
                    .byte off_case_B61D_17_00_04 - * ; p_wakashimazu_my 

                        off_case_B61D_17_00_00:
                        ; coimbra еще не бил/кипер без рожи
                        off_case_B61D_17_00_01:
                        ; coimbra еще не бил/p_renato_my
                            .byte con_rts

                        off_case_B61D_17_00_02:
                        ; coimbra еще не бил/p_morisaki_my
                            .byte con_pause + $78
                            .byte con_s_bg_33
                            .byte con_s_anim_face_p_morisaki_my
                            .byte con_s_cloud_F0_default ; s_cloud_9B
                            .byte con_jmp
                            .word loc_B65F_mach_shot

                        off_case_B61D_17_00_03:
                        ; coimbra еще не бил/p_wakabayashi_my
                            .byte con_pause + $78
                            .byte con_s_bg_32
                            .byte con_s_anim_face_p_wakabayashi_my
                            .byte con_s_cloud_F0_default ; s_cloud_9B
                            .byte con_jmp
                            .word loc_B65F_mach_shot

                        off_case_B61D_17_00_04:
                        ; coimbra еще не бил/p_wakashimazu_my
                            .byte con_pause + $78
                            .byte con_s_bg_33
                            .byte con_s_anim_face_p_wakashimazu_my
                            .byte con_s_cloud_F0_default ; s_cloud_9B
                        loc_B65F_mach_shot:
                            .byte con_jsr
                            .word sub_BBC7_очистка
                            .byte con_soundID_delay, $7F, $02
                            .byte con_jmp
                            .word loc_B61D_mach_shot_появление_после_невидимости

        
                off_case_B61D_17_01:
                ; coimbra уже бил
                loc_B61D_mach_shot_появление_после_невидимости:
                    .byte con_F7, $2E
                    .byte con_pause + $32
                    .byte con_s_bg_64
                    .byte con_s_anim_00
                    .byte con_s_cloud_clear
                    .byte con_soundID_delay, $11, $02
                    .byte con_F7, $12
                    .byte con_pause + $32
                    .byte con_s_bg_FF_skip
                    .byte con_s_anim_11
                    .byte con_s_cloud_clear
                    .byte con_rts



sub_9F5C_рандом_анимации_отпизженного_игрока_1_с_сообщением:
    .dbyt con_branch_short + con_bra_рандом_из_2х
    .byte off_case_9F5C_00 - * ; random 1
    .byte off_case_9F5C_01 - * ; random 2

        off_case_9F5C_00:
        ; random 1
            .byte con_pause + $3C
            .byte con_s_bg_1B
            .byte con_s_anim_13
            .byte con_s_cloud_F0_default ; s_cloud_02
            .byte con_rts

        off_case_9F5C_01:
        ; random 2
            .byte con_pause + $3C
            .byte con_s_bg_1B
            .byte con_s_anim_14
            .byte con_s_cloud_F0_default ; s_cloud_02
            .byte con_rts



loc_9F62_рандом_анимации_отпизженного_игрока_2_с_сообщением:
sub_9F62_рандом_анимации_отпизженного_игрока_2_с_сообщением:
    .dbyt con_branch_short + con_bra_рандом_из_2х
    .byte off_case_9F62_00 - * ; random 1
    .byte off_case_9F62_01 - * ; random 2

        off_case_9F62_00:
        ; random 1
            .byte con_pause + $3C
            .byte con_s_bg_1C
            .byte con_s_anim_13
            .byte con_s_cloud_F0_default ; s_cloud_02
            .byte con_rts

        off_case_9F62_01:
        ; random 2
            .byte con_pause + $3C
            .byte con_s_bg_1C
            .byte con_s_anim_14
            .byte con_s_cloud_F0_default ; s_cloud_02
            .byte con_rts



sub_9F68_рандом_анимации_отпизженного_игрока_1_без_сообщения:
    .dbyt con_branch_short + con_bra_рандом_из_2х
    .byte off_case_9F68_00 - * ; random 1
    .byte off_case_9F68_01 - * ; random 2

        off_case_9F68_00:
        ; random 1
            .byte con_pause + $28
            .byte con_s_bg_1C
            .byte con_s_anim_3E
            .byte con_s_cloud_FF_skip
            .byte con_rts

        off_case_9F68_01:
        ; random 2
            .byte con_pause + $28
            .byte con_s_bg_1C
            .byte con_s_anim_3F
            .byte con_s_cloud_FF_skip
            .byte con_rts



loc_9F6E_рандом_анимации_отпизженного_игрока_3_с_сообщением:
sub_9F6E_рандом_анимации_отпизженного_игрока_3_с_сообщением:
    .dbyt con_branch_short + con_bra_рандом_из_2х
    .byte off_case_9F6E_00 - * ; random 1
    .byte off_case_9F6E_01 - * ; random 2

        off_case_9F6E_00:
        ; random 1
            .byte con_pause + $32
            .byte con_s_bg_1E
            .byte con_s_anim_3E
            .byte con_s_cloud_F0_default ; s_cloud_02
            .byte con_rts

        off_case_9F6E_01:
        ; random 2
            .byte con_pause + $32
            .byte con_s_bg_1E
            .byte con_s_anim_3F
            .byte con_s_cloud_F0_default ; s_cloud_02
            .byte con_rts



sub_9F74_рандом_анимации_отпизженного_игрока_2_без_сообщения:
    .dbyt con_branch_short + con_bra_рандом_из_2х
    .byte off_case_9F74_00 - * ; random 1
    .byte off_case_9F74_01 - * ; random 2

        off_case_9F74_00:
        ; random 1
            .byte con_pause + $28
            .byte con_s_bg_1E
            .byte con_s_anim_3E
            .byte con_s_cloud_FF_skip
            .byte con_rts

        off_case_9F74_01:
        ; random 2
            .byte con_pause + $28
            .byte con_s_bg_1E
            .byte con_s_anim_3F
            .byte con_s_cloud_FF_skip
            .byte con_rts



sub_9F7A_защитнику_бежит_к_низкому_мячу_блоком:
    .dbyt con_branch_long + con_bra_игроки_с_защитным_спешалом
    .word bra_long_case_A713_FF_no_special_defense ; 00
    .word bra_long_case_A6F6_01_p_masao_my ; 
    .word bra_long_case_A706_02_p_masao_akita ; 
    .word bra_long_case_A713_FF_no_special_defense ; 03 p_soda_my, p_soda_japan
    .word bra_long_case_A713_FF_no_special_defense ; 04 p_soda_tatsunami
    .word bra_long_case_A789_05_p_jito_my ; 
    .word bra_long_case_A79C_06_p_jito_kunimi ; 
    .word bra_long_case_A792_07_p_dirceu_santos ; 
    .word bra_long_case_A792_08_p_dirceu_brazil ; 
    .word bra_long_case_A792_09_p_robson_england ; 
    .word bra_long_case_A792_0A_p_libuta_netherlands ; 
    .word bra_long_case_A792_0B_p_galvan_argentina ; 
    .word bra_long_case_A713_FF_no_special_defense ; 0C p_hyuga_my, p_hyuga_japan
    .word bra_long_case_A713_FF_no_special_defense ; 0D p_hyuga_toho
    .word bra_long_case_A7A5_0E_p_ishizaki_my ; 
    .word bra_long_case_A7BF_0F_p_ishizaki_japan ; 



sub_9F9C_крит_кипера:
    .dbyt con_branch_short + con_bra_киперы_с_критами
    .byte off_case_9F9C_00 - * ; кипер без крита
    .byte off_case_9F9C_01 - * ; крит morisaki
    .byte off_case_9F9C_02 - * ; крит wakabayashi

        off_case_9F9C_00:
        ; кипер без крита
            .byte con_rts

        off_case_9F9C_01:
        ; крит morisaki
            .byte con_mirror_off
            .byte con_pause + $78
            .byte con_s_bg_33
            .byte con_s_anim_face_p_morisaki_my
            .byte con_s_cloud_F0_default ; s_cloud_A0
            .byte con_jmp
            .word loc_BBC7_очистка

        off_case_9F9C_02:
        ; крит wakabayashi
            .byte con_soundID_delay, $20, $02     ; звук когда вакабаяши злится
            .byte con_pause + $78
            .byte con_s_bg_48
            .byte con_s_anim_75
            .byte con_s_cloud_F0_default ; s_cloud_A1
            .byte con_jmp
            .word loc_BBC7_очистка



loc_9FB5_убийство_кипера:
sub_9FB5_убийство_кипера:
    .byte con_pause + $32
    .byte con_s_bg_1B
    .byte con_s_anim_02
    .byte con_s_cloud_F0_default ; s_cloud_01
    .byte con_rts



loc_9FBF_кипер_ловит_мяч_нижним_dive_после_убийства_игрока:
    .byte con_jsr
    .word sub_9FC7_движение_фона_и_звук
    .byte con_pause + $5A
    .byte con_s_bg_58
    .byte con_s_anim_03
    .byte con_s_cloud_F0_default ; s_cloud_E3
    .byte con_rts



sub_9FC7_движение_фона_и_звук:
    .byte con_mirror_toggle
    .byte con_moving_bg, $04
    .byte con_soundID_delay, $2A, $02     ; ловля мяча/мяч приклеился
    .byte con_rts



loc_9FCE_кипер_ловит_мяч_нижним_dive_не_убивая_игрока:
    .byte con_jsr
    .word sub_9FC7_движение_фона_и_звук
    .byte con_pause + $5A
    .byte con_s_bg_58
    .byte con_s_anim_03
    .byte con_s_cloud_F0_default ; s_cloud_0B
    .byte con_rts



sub_9FD6_кипер_делает_нижний_dive:
    .byte con_mirror_off
    .byte con_moving_bg, $04
    .byte con_pause + $32
    .byte con_s_bg_58
    .byte con_s_anim_04
    .byte con_s_cloud_F0_default ; s_cloud_06
    .byte con_rts



loc_9FDE_высокий_мяч_летит_дальше_после_касания_ногой_защитником:
    .byte con_moving_bg, $02
loc_9FE0_высокий_мяч_летит_дальше_после_касания_ногой_защитником:
    .byte con_pause + $2D
    .byte con_s_bg_FF_skip
    .byte con_s_anim_05
    .byte con_s_cloud_FF_skip
    .byte con_rts



loc_9FEA_защитник_промахивается_ногой_по_низкому_мячу:
    .byte con_moving_bg, $02
    .byte con_pause + $3C
    .byte con_s_bg_57
    .byte con_s_anim_07
    .byte con_s_cloud_F0_default ; s_cloud_07
    .byte con_rts



sub_9FF1_защитник_в_процессе_отбития_ногой_низкого_мяча:
    .byte con_F8, $02
sub_9FF3_в_процессе_касания_защитником_ногой_высого_мяча:
    .byte con_soundID_delay, $2A, $02     ; ловля мяча/мяч приклеился
    .byte con_pause + $14
    .byte con_s_bg_FF_skip
    .byte con_s_anim_08
    .byte con_s_cloud_FF_skip
    .byte con_FE
    .byte con_rts



sub_9FFD_защитник_собирается_коснуться_ногой_низкого_мяча:
    .byte con_moving_bg, $02
    .byte con_pause + $1E
    .byte con_s_bg_57
    .byte con_s_anim_09
    .byte con_s_cloud_F0_default ; s_cloud_08
    .byte con_rts



sub_A004_защитник_собирается_отбить_ногой_низкий_мяч:
    .byte con_moving_bg, $02
    .byte con_pause + $1E
    .byte con_s_bg_57
    .byte con_s_anim_09
    .byte con_s_cloud_F0_default ; s_cloud_09
    .byte con_rts



sub_A00B_защитник_собирается_коснуться_ногой_высокого_мяча:
    .byte con_pause + $1E
    .byte con_s_bg_6C
    .byte con_s_anim_09
    .byte con_s_cloud_F0_default ; s_cloud_08
    .byte con_rts



sub_A010_защитник_собирается_отбить_ногой_высокий_мяч:
    .byte con_pause + $1E
    .byte con_s_bg_6C
    .byte con_s_anim_09
    .byte con_s_cloud_F0_default ; s_cloud_09
    .byte con_rts



loc_A015_низкий_мяч_летит_дальше_после_касания_телом_защитника:
    .byte con_moving_bg, $02
loc_A017_мяч_летит_дальше_после_касания_защитинком_мяча_телом:
    .byte con_pause + $32
    .byte con_s_bg_FF_skip
    .byte con_s_anim_0B
    .byte con_s_cloud_FF_skip
    .byte con_rts



loc_A01C_защитник_промахивается_телом_по_низкому_мячу:
    .byte con_moving_bg, $02
    .byte con_pause + $3C
    .byte con_s_bg_57
    .byte con_s_anim_0C
    .byte con_s_cloud_F0_default ; s_cloud_07
    .byte con_rts



sub_A023_процесс_отбивания_защитником_мяча_телом_после_прыжка:
    .byte con_F8, $02
sub_A025_момент_касания_защитником_мяча_телом:
    .byte con_soundID_delay, $2D, $02
    .byte con_pause + $14
    .byte con_s_bg_FF_skip
    .byte con_s_anim_0D
    .byte con_s_cloud_FF_skip
    .byte con_FE
    .byte con_rts



sub_A02F_защитник_собирается_коснуться_телом_верхнего_мяча:
    .byte con_pause + $1E
    .byte con_s_bg_6C
    .byte con_s_anim_35
    .byte con_s_cloud_F0_default ; s_cloud_08
    .byte con_rts



sub_A034_защитник_собирается_коснуться_телом_низкого_мяча:
    .byte con_moving_bg, $02
    .byte con_pause + $1E
    .byte con_s_bg_57
    .byte con_s_anim_35
    .byte con_s_cloud_F0_default ; s_cloud_08
    .byte con_rts



sub_A03B_защиник_собирается_отбить_телом_низкий_мяч:
    .byte con_moving_bg, $02
    .byte con_pause + $1E
    .byte con_s_bg_57
    .byte con_s_anim_35
    .byte con_s_cloud_F0_default ; s_cloud_09
    .byte con_rts



sub_A042_защитник_в_воздухе_собирается_коснуться_мяча_телом:
    .byte con_pause + $1E
    .byte con_s_bg_6C
    .byte con_s_anim_35
    .byte con_s_cloud_F0_default ; s_cloud_08
    .byte con_rts



sub_A047_защитник_собирается_отбить_мяч_телом_после_прыжка:
    .byte con_pause + $1E
    .byte con_s_bg_6C
    .byte con_s_anim_35
    .byte con_s_cloud_F0_default ; s_cloud_09
    .byte con_rts



loc_A04C_высокий_мяч_летит_дальше_после_касания_тела_защитника:
    .byte con_pause + $32
    .byte con_s_bg_6C
    .byte con_s_anim_0B
    .byte con_s_cloud_FF_skip
    .byte con_rts



sub_A051_защитник_касается_телом_верхнего_мяча:
    .byte con_soundID_delay, $2D, $02     ; удар мяча об живот
    .byte con_pause + $1B
    .byte con_s_bg_FF_skip
    .byte con_s_anim_0D
    .byte con_s_cloud_FF_skip
    .byte con_FE
    .byte con_rts



loc_A079_кипер_ловит_мяч_после_нижнего_dive:
    .byte con_moving_bg, $03
    .byte con_soundID_delay, $2A, $02     ; ловля мяча/мяч приклеился
    .byte con_pause + $3C
    .byte con_s_bg_57
    .byte con_s_anim_16
    .byte con_s_cloud_F0_default ; s_cloud_0B
    .byte con_rts



loc_A083_кипер_ловит_мяч_после_верхнего_dive:
    .byte con_F7, $07
    .byte con_soundID_delay, $2A, $21     ; ловля мяча/мяч приклеился
    .byte con_pause + $50
    .byte con_s_bg_40
    .byte con_s_anim_17
    .byte con_s_cloud_F0_default ; s_cloud_0B
    .byte con_rts



loc_A08D_кипер_промахивается_dive_после_удара_1_на_1:
sub_A08D_кипер_промахивается_dive_после_удара_1_на_1:
    .byte con_moving_bg, $02
    .byte con_pause + $32
    .byte con_s_bg_57
    .byte con_s_anim_18
    .byte con_s_cloud_F0_default ; s_cloud_0C
    .byte con_rts



loc_A094_кипер_не_дотягивается_до_мяча_при_ловле:
sub_A094_кипер_не_дотягивается_до_мяча_при_ловле:
    .byte con_pause + $2B
    .byte con_s_bg_03
    .byte con_s_anim_18
    .byte con_s_cloud_F0_default ; s_cloud_0C
    .byte con_rts



sub_A099_анимация_кипер_мгновенно_ловит_мяч:
    .byte con_soundID_delay, $2A, $02     ; ловля мяча/мяч приклеился
    .byte con_pause + $28
    .byte con_s_bg_03
    .byte con_s_anim_03
    .byte con_s_cloud_F0_default ; s_cloud_0D
    .byte con_rts



sub_A0A1_кипер_ловит_мяч_без_звука:
    .byte con_pause + $20
    .byte con_s_bg_03
    .byte con_s_anim_1B
    .byte con_s_cloud_F0_default ; s_cloud_0E
    .byte con_rts



loc_A0A6_кипер_ловит_мяч_со_звуком:
sub_A0A6_кипер_ловит_мяч_со_звуком:
    .byte con_soundID_delay, $2A, $21     ; ловля мяча/мяч приклеился
    .byte con_pause + $46
    .byte con_s_bg_03
    .byte con_s_anim_1B
    .byte con_s_cloud_F0_default ; s_cloud_0E
    .byte con_rts



sub_A0AE_защитник_прыгает_без_движения_фона:
    .byte con_soundID_delay, $25, $02     ; прыжок
    .byte con_pause + $14
    .byte con_s_bg_02
    .byte con_s_anim_1C
    .byte con_s_cloud_clear
    .byte con_rts



loc_A0B6_защитник_касается_мяча_при_спасении_ворот:
sub_A0B6_защитник_касается_мяча_при_спасении_ворот:
    .byte con_soundID_delay, $2B, $19     ; отбитие мяча/принятие на ногу
    .byte con_pause + $18
    .byte con_s_bg_04
    .byte con_s_anim_21
    .byte con_s_cloud_F0_default ; s_cloud_0F
    .byte con_rts



sub_A0BE_защитник_промахивается:
    .byte con_pause + $30
    .byte con_s_bg_04
    .byte con_s_anim_22
    .byte con_s_cloud_F0_default ; s_cloud_11
    .byte con_rts



loc_A0C3_успешный_отбор_мяча_подкатом:
sub_A0C3_успешный_отбор_мяча_подкатом:
    .byte con_moving_bg, $02
    .byte con_soundID_delay, $2D, $02
    .byte con_pause + $46
    .byte con_s_bg_57
    .byte con_s_anim_15
    .byte con_s_cloud_F0_default ; s_cloud_05
    .byte con_rts



sub_A0CD_rolling_save_полная_анимация:
    .byte con_soundID_delay, $24, $02
    .byte con_pause + $0A
    .byte con_s_bg_13
    .byte con_s_anim_23
    .byte con_s_cloud_F0_default ; s_cloud_12
    .byte con_pause + $0A
    .byte con_s_bg_14
    .byte con_s_anim_FF_skip
    .byte con_s_cloud_FF_skip
    .byte con_pause + $0A
    .byte con_s_bg_15
    .byte con_s_anim_FF_skip
    .byte con_s_cloud_FF_skip
    .byte con_pause + $0A
    .byte con_s_bg_16
    .byte con_s_anim_FF_skip
    .byte con_s_cloud_FF_skip
    .byte con_pause + $0A
    .byte con_s_bg_17
    .byte con_s_anim_FF_skip
    .byte con_s_cloud_FF_skip
    .byte con_pause + $0A
    .byte con_s_bg_18
    .byte con_s_anim_FF_skip
    .byte con_s_cloud_FF_skip
    .byte con_pause + $0A
    .byte con_s_bg_11
    .byte con_s_anim_FF_skip
    .byte con_s_cloud_FF_skip
    .byte con_pause + $0A
    .byte con_s_bg_12
    .byte con_s_anim_FF_skip
    .byte con_s_cloud_FF_skip
    .byte con_pause + $0A
    .byte con_s_bg_13
    .byte con_s_anim_FF_skip
    .byte con_s_cloud_FF_skip
    .byte con_pause + $0A
    .byte con_s_bg_14
    .byte con_s_anim_FF_skip
    .byte con_s_cloud_FF_skip
    .byte con_pause + $0A
    .byte con_s_bg_15
    .byte con_s_anim_FF_skip
    .byte con_s_cloud_FF_skip
    .byte con_pause + $0A
    .byte con_s_bg_16
    .byte con_s_anim_FF_skip
    .byte con_s_cloud_FF_skip
    .byte con_pause + $0A
    .byte con_s_bg_17
    .byte con_s_anim_FF_skip
    .byte con_s_cloud_FF_skip
    .byte con_pause + $0A
    .byte con_s_bg_18
    .byte con_s_anim_FF_skip
    .byte con_s_cloud_FF_skip
    .byte con_rts



loc_A109_кипер_промахивается_кулаком_после_спешала:
sub_A109_кипер_промахивается_кулаком_после_спешала:
    .byte con_pause + $28
    .byte con_s_bg_0E
    .byte con_s_anim_25
    .byte con_s_cloud_F0_default ; s_cloud_07
    .byte con_rts



loc_A10E_кипер_не_дотягивается_кулаком_до_мяча:
sub_A10E_кипер_не_дотягивается_кулаком_до_мяча:
    .dbyt con_branch_short + con_bra_plr_wakashimazu_gertise
    .byte off_case_A10E_00 - * ; другой кипер
    .byte off_case_A10E_01 - * ; wakashimazu
    .byte off_case_A10E_02 - * ; gertise

        off_case_A10E_00:
        ; другой кипер
            .byte con_pause + $25
            .byte con_s_bg_0E
            .byte con_s_anim_24
            .byte con_s_cloud_F0_default ; s_cloud_0C
            .byte con_rts

        off_case_A10E_01:
        off_case_A10E_02:
        ; wakashimazu, gertise
            .byte con_pause + $28
            .byte con_s_bg_0F
            .byte con_s_anim_26
            .byte con_s_cloud_F0_default ; s_cloud_0C
            .byte con_rts



sub_A11D_кипер_касается_мяча_кулаком_после_спешала:
    .byte con_pause + $1E
    .byte con_s_bg_0E
    .byte con_s_anim_27
    .byte con_s_cloud_F0_default ; s_cloud_0D
    .byte con_rts



sub_A122_кипер_собирается_коснуться_мяча_кулаком:
    .dbyt con_branch_short + con_bra_plr_wakashimazu_gertise
    .byte off_case_A122_00 - * ; другой кипер
    .byte off_case_A122_01 - * ; wakashimazu
    .byte off_case_A122_02 - * ; gertise

        off_case_A122_00:
        ; другой кипер
            .byte con_pause + $1E
            .byte con_s_bg_0E
            .byte con_s_anim_2A
            .byte con_s_cloud_F0_default ; s_cloud_0E
            .byte con_rts

        off_case_A122_01:
        off_case_A122_02:
        ; wakashimazu, gertise
            .byte con_pause + $1E
            .byte con_s_bg_0F
            .byte con_s_anim_2B
            .byte con_s_cloud_F0_default ; s_cloud_0E
            .byte con_rts



sub_A131_кипер_легко_отбивает_и_проверка_на_wakashimazu_gertise:
    .dbyt con_branch_short + con_bra_plr_wakashimazu_gertise
    .byte off_case_A131_00 - * ; другой кипер
    .byte off_case_A131_01 - * ; wakashimazu
    .byte off_case_A131_02 - * ; gertise

        off_case_A131_00:
        ; другой кипер
            .byte con_soundID_delay, $2B, $21     ; отбитие мяча
            .byte con_pause + $3A
            .byte con_s_bg_0E
            .byte con_s_anim_2A
            .byte con_s_cloud_F0_default ; s_cloud_0E
            .byte con_rts

        off_case_A131_01:
        off_case_A131_02:
        ; wakashimazu, gertise
            .byte con_soundID_delay, $2B, $21     ; отбитие мяча
            .byte con_pause + $3A
            .byte con_s_bg_0F
            .byte con_s_anim_2B
            .byte con_s_cloud_F0_default ; s_cloud_0E
            .byte con_rts



sub_A14B_кипер_дотягивается_до_мяча_кулаком_и_проверка_на_wakashimazu_gertise:
    .dbyt con_branch_short + con_bra_plr_wakashimazu_gertise
    .byte off_case_A14B_00 - * ; другой кипер
    .byte off_case_A14B_01 - * ; wakashimazu
    .byte off_case_A14B_02 - * ; gertise

        off_case_A14B_00:
        ; другой кипер
            .byte con_pause + $28
            .byte con_s_bg_0E
            .byte con_s_anim_2C
            .byte con_s_cloud_F0_default ; s_cloud_15
            .byte con_rts

        off_case_A14B_01:
        off_case_A14B_02:
        ; wakashimazu, gertise
            .byte con_pause + $2A
            .byte con_s_bg_0F
            .byte con_s_anim_2D
            .byte con_s_cloud_F0_default ; s_cloud_15
            .byte con_rts



loc_A164_защитник_ловит_низкий_мяч_ногой:
    .byte con_moving_bg, $02
    .byte con_soundID_delay, $2D, $02
    .byte con_pause + $5A
    .byte con_s_bg_57
    .byte con_s_anim_2E
    .byte con_s_cloud_F0_default ; s_cloud_16
    .byte con_rts



loc_A16E_защитник_ловит_высокий_мяч_ногой:
    .byte con_soundID_delay, $2A, $02
    .byte con_pause + $46
    .byte con_s_bg_6C
    .byte con_s_anim_2E
    .byte con_s_cloud_F0_default ; s_cloud_16
    .byte con_rts



loc_A176_защитник_в_воздухе_не_касается_мяча_телом:
    .byte con_pause + $3C
    .byte con_s_bg_6C
    .byte con_s_anim_31
    .byte con_s_cloud_F0_default ; s_cloud_07
    .byte con_rts



loc_A17B_защитник_ловит_низкий_мяч_телом:
    .byte con_moving_bg, $02
    .byte con_soundID_delay, $2D, $02
    .byte con_pause + $46
    .byte con_s_bg_57
    .byte con_s_anim_30
    .byte con_s_cloud_F0_default ; s_cloud_05
    .byte con_rts



loc_A185_защитник_ловит_высокий_мяч_телом:
    .byte con_soundID_delay, $2B, $02
    .byte con_pause + $46
    .byte con_s_bg_6C
    .byte con_s_anim_30
    .byte con_s_cloud_F0_default ; s_cloud_05
    .byte con_rts



loc_A18D_игрок_делает_clear_ногой:
    .byte con_F7, $02
    .byte con_soundID_delay, $2C, $29
    .byte con_pause + $46
    .byte con_s_bg_22
    .byte con_s_anim_33
    .byte con_s_cloud_F0_default ; s_cloud_17
    .byte con_rts



loc_A197_защитник_делает_clear_головой_из_своей_штрафной:
    .byte con_soundID_delay, $2A, $21
    .byte con_pause + $2D
    .byte con_s_bg_6E
    .byte con_s_anim_34
    .byte con_s_cloud_F0_default ; s_cloud_17
    .byte con_rts



loc_A19F_защитник_забирает_низкий_мяч_телом:
    .byte con_moving_bg, $02
    .byte con_soundID_delay, $2D, $02
    .byte con_pause + $41
    .byte con_s_bg_57
    .byte con_s_anim_30
    .byte con_s_cloud_F0_default ; s_cloud_19
    .byte con_rts



loc_A1A9_защитник_ловит_блоком_высокий_мяч:
    .byte con_soundID_delay, $2B, $02
    .byte con_pause + $5A
    .byte con_s_bg_6C
    .byte con_s_anim_30
    .byte con_s_cloud_F0_default ; s_cloud_19
    .byte con_rts



sub_A1B1_защитник_выигрывает_нижний_compete:
    .byte con_moving_bg, $02
    .byte con_soundID_delay, $2B, $1E
    .byte con_pause + $3A
    .byte con_s_bg_57
    .byte con_s_anim_35
    .byte con_s_cloud_F0_default ; s_cloud_1A
    .byte con_rts



sub_A1BB_защитник_выигрывает_верхний_compete:
    .byte con_soundID_delay, $2C, $1E
    .byte con_pause + $3A
    .byte con_s_bg_6C
    .byte con_s_anim_35
    .byte con_s_cloud_F0_default ; s_cloud_1A
    .byte con_rts



sub_A1C3_защитник_бежит_к_низкому_мячу:
    .byte con_F7, $02
    .byte con_pause + $32
    .byte con_s_bg_23
    .byte con_s_anim_37
    .byte con_s_cloud_F0_default ; s_cloud_1B
    .byte con_rts



sub_A1CA_triangle_jump_ловит_мяч:
    .byte con_moving_bg, $01
    .byte con_pause + $20
    .byte con_s_bg_2E
    .byte con_s_anim_2D
    .byte con_s_cloud_F0_default ; s_cloud_1C
    .byte con_rts



sub_A1D1_triangle_jump_ловит_мяч:
    .byte con_moving_bg, $01
    .byte con_soundID_delay, $2A, $21
    .byte con_pause + $30
    .byte con_s_bg_2E
    .byte con_s_anim_2D
    .byte con_s_cloud_F0_default ; s_cloud_1C
    .byte con_moving_bg, $01
    .byte con_rts



loc_A1DD_triangle_jump_не_достает_до_мяча:
sub_A1DD_triangle_jump_не_достает_до_мяча:
    .byte con_moving_bg, $01
    .byte con_pause + $30
    .byte con_s_bg_2E
    .byte con_s_anim_26
    .byte con_s_cloud_F0_default ; s_cloud_1E
    .byte con_rts



sub_A1E4_dark_illusion:
    .byte con_F7, $41
    .byte con_soundID_delay, $21, $02
    .byte con_pause + $E0
    .byte con_s_bg_47
    .byte con_s_anim_7D
    .byte con_s_cloud_F0_default ; s_cloud_1F
    .byte con_F7, $42
    .byte con_pause + $70
    .byte con_s_bg_FF_skip
    .byte con_s_anim_FF_skip
    .byte con_s_cloud_FF_skip
    .byte con_F7, $43
    .byte con_soundID_delay, $30, $02
    .byte con_pause + $32
    .byte con_s_bg_05
    .byte con_s_anim_FF_skip
    .byte con_s_cloud_FF_skip
    .byte con_rts



sub_A1FF_clone_save:
    .byte con_F7, $30
    .byte con_soundID_delay, $17, $02
    .byte con_pause + $96
    .byte con_s_bg_6A
    .byte con_s_anim_3A
    .byte con_s_cloud_F0_default ; s_cloud_20
    .byte con_soundID_delay, $1F, $02
    .byte con_F7, $1D
    .byte con_pause + $80
    .byte con_s_bg_47
    .byte con_s_anim_FF_skip
    .byte con_s_cloud_F0_default ; s_cloud_21
    .byte con_rts



sub_A212_добивание_отскока_от_штанги_соперником:
    .byte con_soundID_delay, $1B, $21
    .byte con_pause + $40
    .byte con_s_bg_2B
    .byte con_s_anim_3B
    .byte con_s_cloud_F0_default ; s_cloud_31
    .byte con_rts



loc_A22E_игрок_делает_low_clearing_ногой_на_своей_штрафной:
    .byte con_F7, $02
    .byte con_soundID_delay, $2C, $26
    .byte con_pause + $50
    .byte con_s_bg_22
    .byte con_s_anim_38
    .byte con_s_cloud_F0_default ; s_cloud_24
    .byte con_rts



loc_A238_игрок_делает_clear_головой:
    .byte con_soundID_delay, $2B, $21
    .byte con_pause + $56
    .byte con_s_bg_6D
    .byte con_s_anim_39
    .byte con_s_cloud_F0_default ; s_cloud_24
    .byte con_rts



loc_A240_серый_экран_после_касания_высого_мяча_телом:
    .byte con_F7, $11
    .byte con_pause + $5A
    .byte con_s_bg_05
    .byte con_s_anim_FF_skip
    .byte con_s_cloud_F0_default ; s_cloud_26
    .byte con_rts



loc_A247_серый_экран_атакующий_замедлился:
    .byte con_F7, $11
    .byte con_pause + $5A
    .byte con_s_bg_05
    .byte con_s_anim_FF_skip
    .byte con_s_cloud_F0_default ; s_cloud_1D
    .byte con_rts



sub_A24E_штанга_со_звуком:
    .byte con_F7, $1F
    .byte con_soundID_delay, $63, $02
loc_A253_штанга:
    .byte con_pause + $10
    .byte con_s_bg_06
    .byte con_s_anim_43
    .byte con_s_cloud_F0_default ; s_cloud_27
    .byte con_rts



sub_A24F_штанга_без_звука:
    .byte con_F7, $1F
    .byte con_jmp
    .word loc_A253_штанга



loc_A258_полет_мяча_после_отскока_от_штанги:
sub_A258_полет_мяча_после_отскока_от_штанги:
    .byte con_pause + $37
    .byte con_s_bg_56
    .byte con_s_anim_42
    .byte con_s_cloud_FF_skip
    .byte con_rts



sub_A2D8_защитник_в_прыжке_к_летящему_мячу:
    .byte con_pause + $28
    .byte con_s_bg_56
    .byte con_s_anim_49
    .byte con_s_cloud_F0_default ; s_cloud_1B
    .byte con_rts



sub_A2DD_ярко_красное_мерцание:
    .byte con_F7, $0F
    .byte con_soundID_delay, $2E, $02
loc_A2E2_мерцание:
    .byte con_pause + $21
    .byte con_s_bg_05
    .byte con_s_anim_00
    .byte con_s_cloud_FF_skip
    .byte con_rts



sub_A2E7_темно_красное_мерцание:
    .byte con_F7, $0E
    .byte con_soundID_delay, $2E, $02
    .byte con_jmp
    .word loc_A2E2_мерцание



sub_A2EF_белое_мерцание_без_звука:
    .byte con_F7, $10
    .byte con_jmp
    .word loc_A2E2_мерцание



sub_A2F4_сообщение_oops_на_мигающем_белом_фоне:
    .byte con_F7, $10
    .byte con_soundID_delay, $65, $02
    .byte con_pause + $1E
    .byte con_s_bg_05
    .byte con_s_anim_00
    .byte con_s_cloud_F0_default ; s_cloud_29
    .byte con_rts



loc_A2FE_сообщение_oh_на_мигающем_белом_фоне:
sub_A2FE_сообщение_oh_на_мигающем_белом_фоне:
    .byte con_F7, $10
    .byte con_soundID_delay, $2E, $02
    .byte con_pause + $20
    .byte con_s_bg_05
    .byte con_s_anim_00
    .byte con_s_cloud_F0_default ; s_cloud_2C
    .byte con_rts



sub_A308_белое_мерцание:
    .byte con_soundID_delay, $2E, $02
    .byte con_F7, $10
    .byte con_pause + $14
    .byte con_s_bg_05
    .byte con_s_anim_00
    .byte con_s_cloud_FF_skip
    .byte con_rts



sub_A312_небольшая_пауза:
    .byte con_pause + $14
    .byte con_s_bg_FF_skip
    .byte con_s_anim_FF_skip
    .byte con_s_cloud_FF_skip
    .byte con_FE
    .byte con_rts



loc_A319_стенка_заблокировала_удар:
    .byte con_soundID_delay, $2A, $02
    .byte con_pause + $32
    .byte con_s_bg_01
    .byte con_s_anim_4A
    .byte con_s_cloud_F0_default ; s_cloud_2E
    .byte con_rts



sub_A321_стенка_была_задета:
    .byte con_F8, $02
    .byte con_soundID_delay, $2A, $02
    .byte con_pause + $14
    .byte con_s_bg_01
    .byte con_s_anim_4A
    .byte con_s_cloud_F0_default ; s_cloud_35
    .byte con_FE
    .byte con_rts



sub_A32D_полет_удара_со_звуком:
    .byte con_soundID_delay, $03, $02
    .byte con_pause + $35
    .byte con_s_bg_1F
    .byte con_s_anim_11
    .byte con_s_cloud_clear
    .byte con_rts



sub_A335_полет_нижнего_мяча:
    .byte con_pause + $32
    .byte con_s_bg_02
    .byte con_s_anim_4C
    .byte con_s_cloud_clear
    .byte con_rts



loc_A35B_нарушение:
    .byte con_mirror_off
    .byte con_soundID_delay, $67, $02
    .byte con_pause + $70
    .byte con_s_bg_0C
    .byte con_s_anim_4E
    .byte con_s_cloud_F0_default ; s_cloud_30
    .byte con_rts



loc_A364_рваный_мяч:
    .byte con_mirror_off
    .byte con_pause + $A4
    .byte con_s_bg_0D
    .byte con_s_anim_4F
    .byte con_s_cloud_F0_default ; s_cloud_32
    .byte con_rts



loc_A36A_кипер_идеально_засейвил:
sub_A36A_кипер_идеально_засейвил:
    .byte con_mirror_condition, $04
    .byte con_pause + $3C
    .byte con_s_bg_20
    .byte con_s_anim_52
    .byte con_s_cloud_F0_default ; s_cloud_33
    .byte con_rts



loc_A371_мяч_улетает_в_сторону:
sub_A371_мяч_улетает_в_сторону:
    .byte con_mirror_condition, $04
sub_A373_мяч_улетает_в_сторону:
    .byte con_pause + $3C
    .byte con_s_bg_1F
    .byte con_s_anim_52
    .byte con_s_cloud_F0_default ; s_cloud_34
    .byte con_rts



loc_A37E_мяч_летит_дальше_после_задевания_стенки:
    .byte con_pause + $30
    .byte con_s_bg_1D
    .byte con_s_anim_54
    .byte con_s_cloud_FF_skip
    .byte con_rts



loc_A383_удар_огибает_стеночку:
    .byte con_pause + $40
    .byte con_s_bg_2A
    .byte con_s_anim_55
    .byte con_s_cloud_F0_default ; s_cloud_36
    .byte con_rts



loc_A388_мяч_улетает_в_сторону_после_выигрывания_compete:
    .byte con_mirror_condition, $04
    .byte con_pause + $34
    .byte con_s_bg_20
    .byte con_s_anim_70
    .byte con_s_cloud_F0_default ; s_cloud_34
    .byte con_rts



sub_A38F_полет_низкого_мяча_к_защитнику:
    .byte con_pause + $28
    .byte con_s_bg_28
    .byte con_s_anim_56
    .byte con_s_cloud_FF_skip
    .byte con_rts



sub_A3CF_tackle:
    .dbyt con_branch_short + con_bra_игроки_с_защитным_спешалом
    .byte off_case_A3CF_FF_no_special_defense - * ; 00
    .byte off_case_A3CF_01_p_masao_my - * ; 
    .byte off_case_A3CF_02_p_masao_akita - * ; 
    .byte off_case_A3CF_03_p_soda_my - * ; 
    .byte off_case_A3CF_04_p_soda_tatsunami - * ; 
    .byte off_case_A3CF_05_p_jito_my - * ; 
    .byte off_case_A3CF_06_p_jito_kunimi - * ; 
    .byte off_case_A3CF_07_p_dirceu_santos - * ; 
    .byte off_case_A3CF_08_p_dirceu_brazil - * ; 
    .byte off_case_A3CF_09_p_robson_england - * ; 
    .byte off_case_A3CF_0A_p_libuta_netherlands - * ; 
    .byte off_case_A3CF_0B_p_galvan_argentina - * ; 
    .byte off_case_A3CF_0C_p_hyuga_my - * ; 
    .byte off_case_A3CF_0D_p_hyuga_toho - * ; 
    .byte off_case_A3CF_FF_no_special_defense - * ; 0E con_p_ishizaki_my
    .byte off_case_A3CF_FF_no_special_defense - * ; 0F con_p_ishizaki_japan



off_case_A3CF_01_p_masao_my:
; p_masao_my, p_masao_japan, p_kazuo_my, p_kazuo_japan
    .byte con_jsr
    .word sub_A71A_masao_kazuo_japan_становятся_друг_на_друга
loc_A3E4_skylab_tackle:
    .byte con_jsr
    .word sub_A6F9_masao_kazuo_летит_по_низу_тонкие_ноги
    .byte con_jmp
    .word loc_A460_подкат



off_case_A3CF_02_p_masao_akita:
; p_masao_akita, p_kazuo_akita
    .byte con_jsr
    .word sub_A756_masao_kazuo_akita_становятся_друг_на_друга
    .byte con_jmp
    .word loc_A3E4_skylab_tackle



off_case_A3CF_05_p_jito_my:
; p_jito_my, p_jito_japan
    .byte con_F7, $44
    .byte con_pause + $78
    .byte con_s_bg_30
    .byte con_s_anim_face_p_jito_my
    .byte con_s_cloud_F0_default ; s_cloud_D9
    .byte con_jsr
    .word sub_BBC7_очистка
loc_A3F9_power_tackle:
off_case_A3CF_07_p_dirceu_santos:
; p_dirceu_santos
off_case_A3CF_08_p_dirceu_brazil:
; p_dirceu_brazil
off_case_A3CF_09_p_robson_england:
; p_robson_england
off_case_A3CF_0A_p_libuta_netherlands:
; p_libuta_netherlands
off_case_A3CF_0B_p_galvan_argentina:
; p_galvan_argentina
    .byte con_moving_bg, $02
    .byte con_soundID_delay, $27, $02
    .byte con_pause + $14
    .byte con_s_bg_59
    .byte con_s_anim_58
    .byte con_s_cloud_F0_default ; s_cloud_EC
    .byte con_jsr
    .word sub_A46A_power_tackle
    .byte con_moving_bg, $02
    .byte con_pause + $0A
    .byte con_s_bg_57
    .byte con_s_anim_FF_skip
    .byte con_s_cloud_FF_skip
    .byte con_rts



off_case_A3CF_06_p_jito_kunimi:
; p_jito_kunimi
    .byte con_F7, $44
    .byte con_pause + $78
    .byte con_s_bg_30
    .byte con_s_anim_face_p_jito_kunimi
    .byte con_s_cloud_F0_default ; s_cloud_D9
    .byte con_jsr
    .word sub_BBC7_очистка
    .byte con_jmp
    .word loc_A3F9_power_tackle



off_case_A3CF_0C_p_hyuga_my:
; p_hyuga_my, p_hyuga_japan
    .byte con_F7, $44
    .byte con_pause + $78
    .byte con_s_bg_31
    .byte con_s_anim_face_p_hyuga_my
    .byte con_s_cloud_F0_default ; s_cloud_DB
loc_A41E_tiger_tackle:
    .byte con_moving_bg, $04
    .byte con_soundID_delay, $27, $02
    .byte con_pause + $14
    .byte con_s_bg_59
    .byte con_s_anim_58
    .byte con_s_cloud_clear
    .byte con_F8, $02
    .byte con_soundID_delay, $30, $02
    .byte con_jmp
    .word loc_A463_подкат_в_дествии



off_case_A3CF_0D_p_hyuga_toho:
; p_hyuga_toho
    .byte con_F7, $44
    .byte con_pause + $78
    .byte con_s_bg_31
    .byte con_s_anim_face_p_hyuga_toho
    .byte con_s_cloud_F0_default ; s_cloud_DB
    .byte con_jmp
    .word loc_A41E_tiger_tackle



off_case_A3CF_FF_no_special_defense:
    .byte con_F7, $02
    .byte con_soundID_delay, $26, $02
    .byte con_pause + $20
    .byte con_s_bg_23
    .byte con_s_anim_58
    .byte con_s_cloud_clear
    .byte con_jsr
    .word sub_A5A9_kurae
    .byte con_moving_bg, $03
    .byte con_soundID_delay, $28, $02
    .byte con_pause + $50
    .byte con_s_bg_57
    .byte con_s_anim_50
    .byte con_s_cloud_F0_default ; s_cloud_3F
    .byte con_rts



off_case_A3CF_04_p_soda_tatsunami:
; p_soda_tatsunami
    .byte con_F7, $44
    .byte con_pause + $78
    .byte con_s_bg_30
    .byte con_s_anim_face_p_soda_tatsunami
    .byte con_s_cloud_F0_default ; s_cloud_DA
    .byte con_jmp
    .word loc_A45D_soda_razor_tackle



off_case_A3CF_03_p_soda_my:
; p_soda_my, p_soda_japan
    .byte con_F7, $44
    .byte con_pause + $78
    .byte con_s_bg_30
    .byte con_s_anim_face_p_soda_my
    .byte con_s_cloud_F0_default ; s_cloud_DA
loc_A45D_soda_razor_tackle:
sub_A45D_soda_razor_tackle:
    .byte con_jsr
    .word sub_AF78_палка_soda_и_мерцание
loc_A460_подкат:
    .byte con_soundID_delay, $28, $02
loc_A463_подкат_в_дествии:
    .byte con_moving_bg, $04
    .byte con_pause + $50
    .byte con_s_bg_57
    .byte con_s_anim_50
    .byte con_s_cloud_F0_default ; s_cloud_EC
    .byte con_rts



sub_A46A_power_tackle:
    .byte con_jsr
    .word sub_A470_loop_power_tackle
    .byte con_jsr
    .word sub_A470_loop_power_tackle
sub_A470_loop_power_tackle:
    .byte con_moving_bg, $02
    .byte con_soundID_delay, $0F, $02
    .byte con_pause + $0A
    .byte con_s_bg_57
    .byte con_s_anim_50
    .byte con_s_cloud_FF_skip
    .byte con_moving_bg, $02
    .byte con_soundID_delay, $0F, $02
    .byte con_pause + $0A
    .byte con_s_bg_59
    .byte con_s_anim_FF_skip
    .byte con_s_cloud_FF_skip
    .byte con_moving_bg, $02
    .byte con_soundID_delay, $0F, $02
    .byte con_pause + $0A
    .byte con_s_bg_58
    .byte con_s_anim_FF_skip
    .byte con_s_cloud_FF_skip
    .byte con_moving_bg, $02
    .byte con_soundID_delay, $0F, $02
    .byte con_pause + $0A
    .byte con_s_bg_59
    .byte con_s_anim_FF_skip
    .byte con_s_cloud_clear
    .byte con_rts



sub_A495_сообщение_атакующего_в_ответ_защитнику:
    .byte con_mirror_toggle
    .dbyt con_branch_short + con_bra_4A
    .byte off_case_A495_00 - * ; кто-то из соперников без рожи
    .byte off_case_A495_01 - * ; оба соперника с рожами

        off_case_A495_00:
        ; кто-то из соперников без рожи
            .byte con_rts

        off_case_A495_01:
        ; оба соперника с рожами
            .dbyt con_branch_short + con_bra_4B
            .byte off_case_A495_01_00 - * ; защитник misugi из японии (наша команда)
            .byte off_case_A495_01_01 - * ; защитник не misugi

                off_case_A495_01_00:
                ; оба соперника с рожами/защитник misugi
                    .dbyt con_branch_short + con_bra_проверка_на_100_хп
                    .byte off_case_A495_01_00_00 - * ; больше 100 хп
                    .byte off_case_A495_01_00_01 - * ; меньше 100 хп

                        off_case_A495_01_00_00:
                        ; оба соперника с рожами/защитник misugi/больше 100 хп 
                            .byte con_jmp
                            .word loc_A496

                        off_case_A495_01_00_01:
                        ; оба соперника с рожами/защитник misugi/меньше 100 хп
                            .byte con_F7, $35
                            .byte con_pause + $5A
                            .byte con_s_bg_30
                            .byte con_s_anim_FD_attacker
                            .byte con_s_cloud_F0_default ; s_cloud_4F
                            .byte con_jmp
                            .word loc_BBC7_очистка

                off_case_A495_01_01:
                ; оба соперника с рожами/защитник не misugi
                loc_A496:
                    .byte con_pause + $3C
                    .byte con_s_bg_30
                    .byte con_s_anim_FD_attacker
                    .byte con_s_cloud_F0_default ; s_cloud_A7
                    .byte con_jmp
                    .word loc_BBC7_очистка



sub_A5A9_kurae:
    .dbyt con_branch_short + con_bra_был_ли_крит
    .byte off_case_A5A9_00 - * ; крита не было либо защитник без рожи
    .byte off_case_A5A9_01 - * ; крит был и защитник с рожей

        off_case_A5A9_00:
        ; крита не было либо защитник без рожи
            .byte con_rts

        off_case_A5A9_01:
        ; крит был и защитник с рожей
            .byte con_pause + $3C
            .byte con_s_bg_30
            .byte con_s_anim_FE_defender
            .byte con_s_cloud_F0_default ; s_cloud_A2
            .byte con_jmp
            .word loc_BBC7_очистка



bra_long_case_A6BC_01_yes_special_defense:
    .dbyt con_branch_short + con_bra_игроки_с_защитным_спешалом
    .byte off_case_A70C_FF_no_special_defense - * ; 00 
    .byte off_case_A6F6_01_p_masao_my - * ; 
    .byte off_case_A706_02_p_masao_akita - * ; 
    .byte off_case_A70C_FF_no_special_defense - * ; 03 p_soda_my, p_soda_japan
    .byte off_case_A70C_FF_no_special_defense - * ; 04 p_soda_tatsunami
    .byte off_case_A70C_FF_no_special_defense - * ; 05 p_jito_my, p_jito_japan
    .byte off_case_A70C_FF_no_special_defense - * ; 06 p_jito_kunimi
    .byte off_case_A70C_FF_no_special_defense - * ; 07 p_dirceu_santos
    .byte off_case_A70C_FF_no_special_defense - * ; 08 p_dirceu_brazil
    .byte off_case_A70C_FF_no_special_defense - * ; 09 p_robson_england
    .byte off_case_A70C_FF_no_special_defense - * ; 0A p_libuta_netherlands
    .byte off_case_A70C_FF_no_special_defense - * ; 0B p_galvan_argentina
    .byte off_case_A70C_FF_no_special_defense - * ; 0C p_hyuga_my, p_hyuga_japan
    .byte off_case_A70C_FF_no_special_defense - * ; 0D p_hyuga_toho
    .byte off_case_A70C_FF_no_special_defense - * ; 0E p_ishizaki_my
    .byte off_case_A70C_FF_no_special_defense - * ; 0F p_ishizaki_japan



bra_long_case_A6CE_01_yes_special_defense:
    .dbyt con_branch_short + con_bra_игроки_с_защитным_спешалом
    .byte off_case_A7CE_FF_no_special_defense - * ; 00 
    .byte off_case_A6F6_01_p_masao_my - * ; 
    .byte off_case_A706_02_p_masao_akita - * ; 
    .byte off_case_A7CE_FF_no_special_defense - * ; 03 p_soda_my, p_soda_japan
    .byte off_case_A7CE_FF_no_special_defense - * ; 04 p_soda_tatsunami
    .byte off_case_A7CE_FF_no_special_defense - * ; 05 p_jito_my, p_jito_japan
    .byte off_case_A7CE_FF_no_special_defense - * ; 06 p_jito_kunimi
    .byte off_case_A7CE_FF_no_special_defense - * ; 07 p_dirceu_santos
    .byte off_case_A7CE_FF_no_special_defense - * ; 08 p_dirceu_brazil
    .byte off_case_A7CE_FF_no_special_defense - * ; 09 p_robson_england
    .byte off_case_A7CE_FF_no_special_defense - * ; 0A p_libuta_netherlands
    .byte off_case_A7CE_FF_no_special_defense - * ; 0B p_galvan_argentina
    .byte off_case_A7CE_FF_no_special_defense - * ; 0C p_hyuga_my, p_hyuga_japan
    .byte off_case_A7CE_FF_no_special_defense - * ; 0D p_hyuga_toho
    .byte off_case_A7CE_FF_no_special_defense - * ; 0E p_ishizaki_my
    .byte off_case_A7CE_FF_no_special_defense - * ; 0F p_ishizaki_japan



sub_A6E0_защитник_бежит_к_низкому_мячу:
    .dbyt con_branch_short + con_bra_защитный_спешал_или_нет
    .byte off_case_A6FE_00_no_special_defense - * ; игрок без защитного спешала
    .byte off_case_A6E4_01_yes_special_defense - * ; защитный спешал



bra_long_case_A6E4_01_yes_special_defense:
off_case_A6E4_01_yes_special_defense:
    .dbyt con_branch_short + con_bra_игроки_с_защитным_спешалом
    .byte off_case_A6FF_FF_no_special_defense - * ; 00 
    .byte off_case_A6F6_01_p_masao_my - * ; 
    .byte off_case_A706_02_p_masao_akita - * ; 
    .byte off_case_A6FF_FF_no_special_defense - * ; 03 p_soda_my, p_soda_japan
    .byte off_case_A6FF_FF_no_special_defense - * ; 04 p_soda_tatsunami
    .byte off_case_A6FF_FF_no_special_defense - * ; 05 p_jito_my, p_jito_japan
    .byte off_case_A6FF_FF_no_special_defense - * ; 06 p_jito_kunimi
    .byte off_case_A6FF_FF_no_special_defense - * ; 07 p_dirceu_santos
    .byte off_case_A6FF_FF_no_special_defense - * ; 08 p_dirceu_brazil
    .byte off_case_A6FF_FF_no_special_defense - * ; 09 p_robson_england
    .byte off_case_A6FF_FF_no_special_defense - * ; 0A p_libuta_netherlands
    .byte off_case_A6FF_FF_no_special_defense - * ; 0B p_galvan_argentina
    .byte off_case_A6FF_FF_no_special_defense - * ; 0C p_hyuga_my, p_hyuga_japan
    .byte off_case_A6FF_FF_no_special_defense - * ; 0D p_hyuga_toho
    .byte off_case_A6FF_FF_no_special_defense - * ; 0E p_ishizaki_my
    .byte off_case_A6FF_FF_no_special_defense - * ; 0F p_ishizaki_japan



bra_long_case_A6F6_01_p_masao_my:
; p_masao_my, p_masao_japan, p_kazuo_my, p_kazuo_japan
off_case_A6F6_01_p_masao_my:
; p_masao_my, p_masao_japan, p_kazuo_my, p_kazuo_japan
    .byte con_jsr
    .word sub_A71A_masao_kazuo_japan_становятся_друг_на_друга
loc_A6F9_masao_kazuo_летит_по_низу_тонкие_ноги:
sub_A6F9_masao_kazuo_летит_по_низу_тонкие_ноги:
    .byte con_pause + $32
    .byte con_s_bg_4E
    .byte con_s_anim_C1
    .byte con_s_cloud_F0_default ; s_cloud_ED
    .byte con_mirror_toggle
    .byte con_rts



bra_long_case_A6FF_00_no_special_defense:
off_case_A6FE_00_no_special_defense:
off_case_A6FF_FF_no_special_defense:
    .byte con_F7, $02
    .byte con_pause + $37
    .byte con_s_bg_23
    .byte con_s_anim_5B
    .byte con_s_cloud_F0_default ; s_cloud_41
    .byte con_rts



bra_long_case_A706_02_p_masao_akita:
; p_masao_akita, p_kazuo_akita
off_case_A706_02_p_masao_akita:
; p_masao_akita, p_kazuo_akita
    .byte con_jsr
    .word sub_A756_masao_kazuo_akita_становятся_друг_на_друга
    .byte con_jmp
    .word loc_A6F9_masao_kazuo_летит_по_низу_тонкие_ноги



bra_long_case_A70C_00_no_special_defense:
off_case_A70C_FF_no_special_defense:
    .byte con_F7, $02
    .byte con_pause + $1E
    .byte con_s_bg_22
    .byte con_s_anim_5A
    .byte con_s_cloud_F0_default ; s_cloud_38
    .byte con_rts



bra_long_case_A713_FF_no_special_defense:
    .byte con_F7, $02
    .byte con_pause + $1E
    .byte con_s_bg_23
    .byte con_s_anim_5A
    .byte con_s_cloud_F0_default ; s_cloud_39
    .byte con_rts



sub_A71A_masao_kazuo_japan_становятся_друг_на_друга:
    .byte con_mirror_on
    .byte con_F8, $04
    .byte con_pause + $3C
    .byte con_s_bg_4F
    .byte con_s_anim_face_p_masao_my
    .byte con_s_cloud_F0_default ; s_cloud_AC
    .byte con_F8, $04
    .byte con_soundID_delay, $25, $02
    .byte con_pause + $32
    .byte con_s_bg_1D
    .byte con_s_anim_1C
    .byte con_s_cloud_FF_skip
    .byte con_mirror_toggle
    .byte con_F8, $04
    .byte con_pause + $3C
    .byte con_s_bg_30
    .byte con_s_anim_face_p_masao_my
    .byte con_s_cloud_F0_default ; s_cloud_D3
    .byte con_soundID_delay, $28, $02
    .byte con_F8, $04
    .byte con_F7, $3A
    .byte con_pause + $32
    .byte con_s_bg_23
    .byte con_s_anim_50
    .byte con_s_cloud_FF_skip
    .byte con_mirror_toggle
    .byte con_F7, $10
    .byte con_soundID_delay, $30, $02
    .byte con_pause + $20
    .byte con_s_bg_05
    .byte con_s_anim_00
    .byte con_s_cloud_FF_skip
    .byte con_pause + $2B
    .byte con_s_bg_12
    .byte con_s_anim_C0
    .byte con_s_cloud_F0_default ; s_cloud_AF
loc_A74A_красное_мерцание_экрана_и_звук:
    .byte con_F7, $1E
    .byte con_soundID_delay, $6D, $02
    .byte con_pause + $1E
    .byte con_s_bg_05
    .byte con_s_anim_FF_skip
    .byte con_s_cloud_FF_skip
    .byte con_jmp
    .word loc_BBC7_очистка



sub_A756_masao_kazuo_akita_становятся_друг_на_друга:
    .byte con_mirror_on
    .byte con_F8, $04
    .byte con_pause + $3C
    .byte con_s_bg_4F
    .byte con_s_anim_face_p_masao_akita
    .byte con_s_cloud_F0_default ; s_cloud_AC
    .byte con_F8, $04
    .byte con_soundID_delay, $25, $02
    .byte con_pause + $32
    .byte con_s_bg_1D
    .byte con_s_anim_1C
    .byte con_s_cloud_FF_skip
    .byte con_F8, $04
    .byte con_mirror_toggle
    .byte con_pause + $3C
    .byte con_s_bg_30
    .byte con_s_anim_face_p_masao_akita
    .byte con_s_cloud_F0_default ; s_cloud_D3
    .byte con_soundID_delay, $28, $02
    .byte con_F8, $04
    .byte con_F7, $3A
    .byte con_pause + $32
    .byte con_s_bg_23
    .byte con_s_anim_50
    .byte con_s_cloud_FF_skip
    .byte con_mirror_toggle
    .byte con_F7, $10
    .byte con_soundID_delay, $30, $02
    .byte con_pause + $20
    .byte con_s_bg_05
    .byte con_s_anim_00
    .byte con_s_cloud_FF_skip
    .byte con_pause + $2B
    .byte con_s_bg_12
    .byte con_s_anim_E1
    .byte con_s_cloud_F0_default ; s_cloud_AF
    .byte con_jmp
    .word loc_A74A_красное_мерцание_экрана_и_звук



bra_long_case_A789_05_p_jito_my:
; p_jito_my, p_jito_japan
    .byte con_F7, $44
    .byte con_pause + $78
    .byte con_s_bg_30
    .byte con_s_anim_face_p_jito_my
    .byte con_s_cloud_F0_default ; s_cloud_D9
loc_A78F_разгон_перед_power_block:
    .byte con_jsr
    .word sub_BBC7_очистка
bra_long_case_A792_07_p_dirceu_santos:
; p_dirceu_santos
bra_long_case_A792_08_p_dirceu_brazil:
; p_dirceu_brazil
bra_long_case_A792_09_p_robson_england:
; p_robson_england
bra_long_case_A792_0A_p_libuta_netherlands:
; p_libuta_netherlands
bra_long_case_A792_0B_p_galvan_argentina:
; p_galvan_argentina
    .byte con_F7, $33
    .byte con_soundID_delay, $27, $02
    .byte con_pause + $28
    .byte con_s_bg_6B
    .byte con_s_anim_E3
    .byte con_s_cloud_F0_default ; s_cloud_EC
    .byte con_rts



bra_long_case_A79C_06_p_jito_kunimi:
; p_jito_kunimi
    .byte con_F7, $44
    .byte con_pause + $78
    .byte con_s_bg_30
    .byte con_s_anim_face_p_jito_kunimi
    .byte con_s_cloud_F0_default ; s_cloud_D9
    .byte con_jmp
    .word loc_A78F_разгон_перед_power_block



bra_long_case_A7A5_0E_p_ishizaki_my:
; p_ishizaki_my
    .byte con_F7, $02
    .byte con_pause + $1E
    .byte con_s_bg_22
    .byte con_s_anim_5A
    .byte con_s_cloud_clear
    .byte con_F7, $44
    .byte con_pause + $3C
    .byte con_s_bg_30
    .byte con_s_anim_face_p_ishizaki_my
    .byte con_s_cloud_F0_default ; s_cloud_D7
loc_A7B1_прыжок_перед_face_block:
sub_A7B1_прыжок_перед_face_block:
    .byte con_soundID_delay, $25, $02
    .byte con_pause + $28
    .byte con_s_bg_4E
    .byte con_s_anim_CF
    .byte con_s_cloud_FF_skip
    .byte con_F7, $31
    .byte con_pause + $1E
    .byte con_s_bg_48
    .byte con_s_anim_FF_skip
    .byte con_s_cloud_clear
    .byte con_rts



bra_long_case_A7BF_0F_p_ishizaki_japan:
; p_ishizaki_japan
    .byte con_F7, $02
    .byte con_pause + $1E
    .byte con_s_bg_22
    .byte con_s_anim_5A
    .byte con_s_cloud_clear
    .byte con_F7, $44
    .byte con_pause + $3C
    .byte con_s_bg_30
    .byte con_s_anim_face_p_ishizaki_japan
    .byte con_s_cloud_F0_default ; s_cloud_D7
    .byte con_jmp
    .word loc_A7B1_прыжок_перед_face_block



bra_long_case_A7CE_00_no_special_defense:
off_case_A7CE_FF_no_special_defense:
    .byte con_F7, $02
    .byte con_pause + $28
    .byte con_s_bg_23
    .byte con_s_anim_5A
    .byte con_s_cloud_F0_default ; s_cloud_40
    .byte con_rts



sub_A810_анимация_heel_lift:
    .byte con_F7, $02
    .byte con_soundID_delay, $1E, $31
    .byte con_pause + $3F
    .byte con_s_bg_23
    .byte con_s_anim_E2
    .byte con_s_cloud_F0_default ; s_cloud_49
    .byte con_F7, $0A
    .byte con_pause + $3C
    .byte con_s_bg_05
    .byte con_s_anim_FF_skip
    .byte con_s_cloud_FF_skip
    .byte con_rts



sub_A86C_vanishing_feint:
    .byte con_F7, $02
    .byte con_soundID_delay, $0C, $0D
    .byte con_pause + $10
    .byte con_s_bg_23
    .byte con_s_anim_DD
    .byte con_s_cloud_clear
    .byte con_F7, $24
    .byte con_pause + $46
    .byte con_s_bg_6B
    .byte con_s_anim_FF_skip
    .byte con_s_cloud_F0_default ; s_cloud_49
    .byte con_F7, $14
    .byte con_soundID_delay, $0D, $02
    .byte con_pause + $1E
    .byte con_s_bg_FF_skip
    .byte con_s_anim_00
    .byte con_s_cloud_FF_skip
    .byte con_rts



sub_A885_рожа_carlos_flamengo:
    .byte con_F7, $44
    .byte con_pause + $40
    .byte con_s_bg_30
    .byte con_s_anim_face_p_carlos_flamengo
    .byte con_s_cloud_F0_default ; s_cloud_C7
    .byte con_jsr
    .word sub_BBC7_очистка
    .byte con_rts



sub_A88F_рожа_carlos_brazil:
    .byte con_F7, $44
    .byte con_pause + $40
    .byte con_s_bg_30
    .byte con_s_anim_face_p_carlos_brazil
    .byte con_s_cloud_F0_default ; s_cloud_C7
    .byte con_jsr
    .word sub_BBC7_очистка
    .byte con_rts



sub_A8AB_clone_dribble:
    .byte con_F7, $02
    .byte con_soundID_delay, $1F, $0D
    .byte con_pause + $12
    .byte con_s_bg_23
    .byte con_s_anim_DD
    .byte con_s_cloud_F0_default ; s_cloud_49
    .byte con_F7, $24
    .byte con_pause + $48
    .byte con_s_bg_6B
    .byte con_s_anim_FF_skip
    .byte con_s_cloud_FF_skip
    .byte con_rts



sub_A8D0_high_speed_dribble:
    .byte con_F7, $0D
    .byte con_soundID_delay, $26, $02
    .byte con_pause + $28
    .byte con_s_bg_47
    .byte con_s_anim_D0
    .byte con_s_cloud_F0_default ; s_cloud_49
    .byte con_mirror_toggle
    .byte con_F7, $0D
    .byte con_soundID_delay, $26, $02
    .byte con_pause + $28
    .byte con_s_bg_47
    .byte con_s_anim_D0
    .byte con_s_cloud_clear
    .byte con_mirror_toggle
    .byte con_rts



sub_A8E5_kaltz_hedgehog_dribble:
    .byte con_F7, $44
    .byte con_pause + $80
    .byte con_s_bg_30
    .byte con_s_anim_face_p_kaltz_hamburger_sv
    .byte con_s_cloud_F0_default ; s_cloud_C8
loc_A8EB_kaltz_hedgehog_dribble_в_процессе:
    .byte con_mirror_toggle
    .byte con_F7, $14
    .byte con_soundID_delay, $26, $02
    .byte con_pause + $17
    .byte con_s_bg_22
    .byte con_s_anim_D1
    .byte con_s_cloud_F0_default ; s_cloud_C9
    .byte con_F7, $02
    .byte con_soundID_delay, $26, $02
    .byte con_pause + $17
    .byte con_s_bg_FF_skip
    .byte con_s_anim_D2
    .byte con_s_cloud_FF_skip
    .byte con_F7, $02
    .byte con_soundID_delay, $26, $02
    .byte con_pause + $17
    .byte con_s_bg_FF_skip
    .byte con_s_anim_D1
    .byte con_s_cloud_FF_skip
    .byte con_rts



sub_A908_kaltz_hedgehog_dribble:
    .byte con_F7, $44
    .byte con_pause + $80
    .byte con_s_bg_30
    .byte con_s_anim_face_p_kaltz_west_germany
    .byte con_s_cloud_F0_default ; s_cloud_C8
    .byte con_jmp
    .word loc_A8EB_kaltz_hedgehog_dribble_в_процессе



sub_A936_сообщение_защитника_атакующему_при_нападении_подкатом:
    .dbyt con_branch_short + con_bra_4A
    .byte off_case_A936_00 - * ; кто-то из соперников без рожи
    .byte off_case_A936_01 - * ; оба соперника с рожами

        off_case_A936_00:
        ; кто-то из соперников без рожи
            .byte con_rts

        off_case_A936_01:
        ; оба соперника с рожами
            .dbyt con_branch_short + con_bra_4B
            .byte off_case_A936_01_00 - * ; защитник misugi из японии (наша команда)
            .byte off_case_A936_01_01 - * ; защитник не misugi
            
                off_case_A936_01_00:
                ; оба соперника с рожами/защитник misugi
                    .dbyt con_branch_short + con_bra_проверка_на_100_хп
                    .byte off_case_A936_01_00_00 - * ; больше 100 хп
                    .byte off_case_A936_01_00_01 - * ; меньше 100 хп

                        off_case_A936_01_00_00:
                        ; оба соперника с рожами/защитник misugi/больше 100 хп
                            .byte con_jmp
                            .word loc_A937

                        off_case_A936_01_00_01:
                        ; оба соперника с рожами/защитник misugi/меньше 100 хп
                            .byte con_F7, $35
                            .byte con_pause + $5A
                            .byte con_s_bg_30
                            .byte con_s_anim_FE_defender
                            .byte con_s_cloud_F0_default ; s_cloud_4F
                            .byte con_jmp
                            .word loc_BBC7_очистка

                off_case_A936_01_01:
                ; оба соперника с рожами/защитник не misugi
                loc_A937:
                    .byte con_pause + $3C
                    .byte con_s_bg_30
                    .byte con_s_anim_FE_defender
                    .byte con_s_cloud_F0_default ; s_cloud_98
                    .byte con_jmp
                    .word loc_BBC7_очистка



sub_AA89_forcible_dribble:
    .byte con_F7, $3A
    .byte con_soundID_delay, $27, $02
    .byte con_pause + $78
    .byte con_s_bg_23
    .byte con_s_anim_D0
    .byte con_s_cloud_F0_default ; s_cloud_49
    .byte con_rts



loc_AB31_полная_анимация_обычного_удара_с_земли:
sub_AB31_полная_анимация_обычного_удара_с_земли:
    .byte con_mirror_off
    .byte con_soundID_delay, $19, $02
    .byte con_pause + $28
    .byte con_s_bg_01
    .byte con_s_anim_61
    .byte con_s_cloud_F0_default ; s_cloud_47
loc_AB39_обычный_удар_по_мячу_и_полет_мяча_от_игрока:
    .byte con_F7, $0B
    .byte con_soundID_delay, $12, $02
    .byte con_pause + $14
    .byte con_s_bg_10
    .byte con_s_anim_62
    .byte con_s_cloud_FF_skip
loc_AB42_мяч_улетает_от_игрока_после_удара:
    .byte con_F7, $02
    .byte con_soundID_delay, $03, $02
    .byte con_pause + $22
    .byte con_s_bg_25
    .byte con_s_anim_63
    .byte con_s_cloud_FF_skip
    .byte con_rts



sub_AB7C:
    .byte con_F7, $04
    .byte con_soundID_delay, $13, $10
    .byte con_pause + $10
    .byte con_s_bg_41
    .byte con_s_anim_8C
    .byte con_s_cloud_F0_default ; s_cloud_AF
    .byte con_rts



sub_AB86:
    .byte con_F7, $04
    .byte con_soundID_delay, $13, $10
    .byte con_pause + $10
    .byte con_s_bg_41
    .byte con_s_anim_8C
    .byte con_s_cloud_F0_default ; s_cloud_E0
    .byte con_rts



sub_AB90:
    .byte con_F7, $04
    .byte con_soundID_delay, $13, $10
    .byte con_pause + $10
    .byte con_s_bg_41
    .byte con_s_anim_8C
    .byte con_s_cloud_F0_default ; s_cloud_DE
    .byte con_rts



sub_AB9A:
    .byte con_F7, $04
    .byte con_soundID_delay, $13, $10
    .byte con_pause + $10
    .byte con_s_bg_41
    .byte con_s_anim_8C
    .byte con_s_cloud_F0_default ; s_cloud_E1
    .byte con_rts



sub_ABA4:
    .byte con_F7, $04
    .byte con_soundID_delay, $13, $10
    .byte con_pause + $10
    .byte con_s_bg_41
    .byte con_s_anim_8C
    .byte con_s_cloud_F0_default ; s_cloud_6A
    .byte con_rts



sub_ABAE:
    .byte con_F7, $04
    .byte con_soundID_delay, $13, $10
    .byte con_pause + $10
    .byte con_s_bg_41
    .byte con_s_anim_8C
    .byte con_s_cloud_F0_default ; s_cloud_6B
    .byte con_rts



sub_ABB8:
    .byte con_pause + $1A
    .byte con_s_bg_3C
    .byte con_s_anim_61
    .byte con_s_cloud_F0_default ; s_cloud_49
    .byte con_F7, $04
    .byte con_soundID_delay, $18, $02
    .byte con_pause + $14
    .byte con_s_bg_05
    .byte con_s_anim_FF_skip
    .byte con_s_cloud_FF_skip
    .byte con_F7, $3C
    .byte con_pause + $34
    .byte con_s_bg_3C
    .byte con_s_anim_FF_skip
    .byte con_s_cloud_FF_skip
    .byte con_rts



sub_AD13:
    .byte con_F7, $10
    .byte con_soundID_delay, $12, $02
    .byte con_pause + $14
    .byte con_s_bg_10
    .byte con_s_anim_62
    .byte con_s_cloud_FF_skip
    .byte con_rts



loc_AE4C_skylab_hurricane:
    ; !!! должно быть 21 вариантов а не 15
    .dbyt con_branch_short + con_bra_40
    .byte off_case_AE64_FF - * ; 00 игрок без рожи
    .byte off_case_AE64_FF - * ; 01 con_p_tsubasa_my
    .byte off_case_AE64_FF - * ; 02 con_p_misaki_my
    .byte off_case_AE64_FF - * ; 03 con_p_misaki_japan
    .byte off_case_AE64_FF - * ; 04 con_p_hyuga_my, con_p_hyuga_japan
    .byte off_case_AE64_FF - * ; 05 con_p_hyuga_toho
    .byte off_case_AE64_FF - * ; 06 con_p_misugi_my, con_p_misugi_japan
    .byte off_case_AE64_FF - * ; 07 con_p_misugi_musashi
    .byte off_case_AE64_FF - * ; 08 con_p_matsuyama_my, con_p_matsuyama_japan
    .byte off_case_AE64_FF - * ; 09 con_p_matsuyama_furano
    .byte off_case_AE64_FF - * ; 0A con_p_ishizaki_my
    .byte off_case_AE64_FF - * ; 0B con_p_ishizaki_japan
    .byte off_case_AE64_FF - * ; 0C con_p_soda_my, con_p_soda_japan
    .byte off_case_AE64_FF - * ; 0D con_p_soda_tatsunami
    .byte off_case_AE64_FF - * ; 0E con_p_jito_my, con_p_jito_japan
    .byte off_case_AE64_FF - * ; 0F con_p_jito_kunimi
    
    .byte off_case_AE69_10_p_masao_my - * ; 10 con_p_masao_my, con_p_kazuo_my, con_p_masao_japan, con_p_kazuo_japan
    .byte off_case_AEA4_11_p_masao_akita - * ; 11 con_p_masao_akita, con_p_kazuo_akita
    
    .byte off_case_AE64_FF - * ; 12 con_p_nitta_my
    .byte off_case_AE64_FF - * ; 13 con_p_nitta_japan
    .byte off_case_AE64_FF - * ; 14 con_p_sawada_my
    .byte off_case_AE64_FF - * ; 15 con_p_sawada_toho



off_case_AE64_FF:
loc_AE64_прыгать_к_мячу_на_штрафной_перед_совершением_выбранного_действия:
    .byte con_pause + $32
    .byte con_s_bg_1F
    .byte con_s_anim_64
    .byte con_s_cloud_F0_default ; s_cloud_48
    .byte con_rts



off_case_AE69_10_p_masao_my:
; подготовка братьев к прыжку друг от друга
    .byte con_mirror_off
    .byte con_F8, $04
    .byte con_pause + $40
    .byte con_s_bg_30
    .byte con_s_anim_face_p_masao_my
    .byte con_s_cloud_F0_default ; s_cloud_A8
    .byte con_mirror_toggle
    .byte con_F8, $04
    .byte con_pause + $78
    .byte con_s_bg_4F
    .byte con_s_anim_face_p_masao_my
    .byte con_s_cloud_F0_default ; s_cloud_A9
    .byte con_mirror_toggle
    .byte con_soundID_delay, $25, $02
    .byte con_pause + $32
    .byte con_s_bg_1F
    .byte con_s_anim_64
    .byte con_s_cloud_clear
    .byte con_mirror_toggle
    .byte con_soundID_delay, $28, $02
    .byte con_F8, $04
    .byte con_F7, $3A
    .byte con_pause + $32
    .byte con_s_bg_23
    .byte con_s_anim_76
    .byte con_s_cloud_FF_skip
    .byte con_mirror_toggle
    .byte con_F7, $10
    .byte con_pause + $20
    .byte con_s_bg_05
    .byte con_s_anim_00
    .byte con_s_cloud_FF_skip
    .byte con_pause + $28
    .byte con_s_bg_12
    .byte con_s_anim_C0
    .byte con_s_cloud_F0_default ; s_cloud_AF
loc_AE96:
    .byte con_F7, $1E
    .byte con_soundID_delay, $6D, $02
    .byte con_pause + $20
    .byte con_s_bg_05
    .byte con_s_anim_FF_skip
    .byte con_s_cloud_FF_skip
    .byte con_pause + $32
    .byte con_s_bg_20
    .byte con_s_anim_4B
    .byte con_s_cloud_clear
    .byte con_rts



off_case_AEA4_11_p_masao_akita:
; подготовка братьев к прыжку друг от друга
    .byte con_mirror_off
    .byte con_F8, $04
    .byte con_pause + $40
    .byte con_s_bg_30
    .byte con_s_anim_face_p_masao_akita
    .byte con_s_cloud_F0_default ; s_cloud_A8
    .byte con_mirror_toggle
    .byte con_F8, $04
    .byte con_pause + $78
    .byte con_s_bg_4F
    .byte con_s_anim_face_p_masao_akita
    .byte con_s_cloud_F0_default ; s_cloud_A9
    .byte con_mirror_toggle
    .byte con_soundID_delay, $25, $02
    .byte con_pause + $32
    .byte con_s_bg_1F
    .byte con_s_anim_64
    .byte con_s_cloud_clear
    .byte con_mirror_toggle
    .byte con_soundID_delay, $28, $02
    .byte con_F8, $04
    .byte con_F7, $3A
    .byte con_pause + $32
    .byte con_s_bg_23
    .byte con_s_anim_76
    .byte con_s_cloud_FF_skip
    .byte con_mirror_toggle
    .byte con_F7, $10
    .byte con_pause + $20
    .byte con_s_bg_05
    .byte con_s_anim_00
    .byte con_s_cloud_FF_skip
    .byte con_pause + $28
    .byte con_s_bg_12
    .byte con_s_anim_E1
    .byte con_s_cloud_F0_default ; s_cloud_AF
    .byte con_jmp
    .word loc_AE96



loc_AED4_skylab_twin_shot:
    .byte con_mirror_on
    .byte con_F8, $04
    .byte con_pause + $40
    .byte con_s_bg_4F
    .byte con_s_anim_face_p_masao_my
    .byte con_s_cloud_F0_default ; s_cloud_A8
    .byte con_mirror_toggle
    .byte con_F8, $04
    .byte con_pause + $78
    .byte con_s_bg_30
    .byte con_s_anim_face_p_jito_my
    .byte con_s_cloud_F0_default ; s_cloud_AE
    .byte con_mirror_toggle
    .byte con_soundID_delay, $26, $02
    .byte con_F7, $02
    .byte con_pause + $1E
    .byte con_s_bg_22
    .byte con_s_anim_6B
    .byte con_s_cloud_clear
    .byte con_mirror_toggle
    .byte con_moving_bg, $03
    .byte con_soundID_delay, $28, $02
    .byte con_pause + $20
    .byte con_s_bg_59
    .byte con_s_anim_EA
    .byte con_s_cloud_FF_skip
    .byte con_soundID_delay, $26, $02
    .byte con_F7, $02
    .byte con_pause + $1E
    .byte con_s_bg_22
    .byte con_s_anim_6B
    .byte con_s_cloud_FF_skip
    .byte con_F7, $0F
    .byte con_pause + $14
    .byte con_s_bg_05
    .byte con_s_anim_00
    .byte con_s_cloud_FF_skip
    .byte con_soundID_delay, $30, $02
    .byte con_pause + $1E
    .byte con_s_bg_3C
    .byte con_s_anim_C2
    .byte con_s_cloud_FF_skip
    .byte con_mirror_toggle
    .byte con_F8, $04
    .byte con_pause + $3C
    .byte con_s_bg_4F
    .byte con_s_anim_face_p_masao_my
    .byte con_s_cloud_F0_default ; s_cloud_13
    .byte con_mirror_toggle
    .byte con_F8, $04
    .byte con_pause + $3C
    .byte con_s_bg_30
    .byte con_s_anim_face_p_masao_my
    .byte con_s_cloud_F0_default ; s_cloud_AF
    .byte con_mirror_toggle
    .byte con_pause + $3C
    .byte con_s_bg_30
    .byte con_s_anim_face_p_jito_my
    .byte con_s_cloud_F0_default ; s_cloud_B0
    .byte con_jsr
    .word sub_BBC7_очистка
    .byte con_mirror_toggle
    .byte con_F7, $10
    .byte con_soundID_delay, $6D, $02
    .byte con_pause + $1E
    .byte con_s_bg_05
    .byte con_s_anim_C2
    .byte con_s_cloud_F0_default ; s_cloud_EE
    .byte con_pause + $3C
    .byte con_s_bg_20
    .byte con_s_anim_C3
    .byte con_s_cloud_FF_skip
    .byte con_rts



loc_AF31_rising_dragon_kick:
    .byte con_soundID_delay, $25, $02
    .byte con_pause + $37
    .byte con_s_bg_47
    .byte con_s_anim_C9
    .byte con_s_cloud_F0_default ; s_cloud_6B
    .byte con_jsr
    .word sub_BBC7_очистка
    .byte con_F7, $0E
    .byte con_soundID_delay, $30, $02
    .byte con_pause + $28
    .byte con_s_bg_05
    .byte con_s_anim_CB
    .byte con_s_cloud_F0_default ; s_cloud_EF
    .byte con_mirror_toggle
    .byte con_soundID_delay, $6D, $02
    .byte con_pause + $28
    .byte con_s_bg_20
    .byte con_s_anim_AC
    .byte con_s_cloud_FF_skip
    .byte con_jsr
    .word sub_BBC7_очистка
    .byte con_mirror_toggle
    .byte con_rts



sub_AF73_рожа_soda_палка_и_мерцание:
    .byte con_mirror_toggle
    .byte con_pause + $3C
    .byte con_s_bg_30
    .byte con_s_anim_face_p_soda_my
    .byte con_s_cloud_F0_default ; s_cloud_C2
loc_AF78_палка_soda_и_мерцание:
sub_AF78_палка_soda_и_мерцание:
    .byte con_F7, $15
    .byte con_soundID_delay, $1D, $09
    .byte con_pause + $20
    .byte con_s_bg_05
    .byte con_s_anim_CE
    .byte con_s_cloud_clear
    .byte con_F7, $10
    .byte con_pause + $0D
    .byte con_s_bg_05
    .byte con_s_anim_00
    .byte con_s_cloud_clear
    .byte con_rts



sub_AF88_рожа_soda_палка_и_мерцание:
    .byte con_mirror_toggle
    .byte con_pause + $3C
    .byte con_s_bg_30
    .byte con_s_anim_face_p_soda_tatsunami
    .byte con_s_cloud_F0_default ; s_cloud_C2
    .byte con_jmp
    .word loc_AF78_палка_soda_и_мерцание



loc_B29B_бежать_к_мячу_на_штрафной_перед_совершением_выбранного_действия:
    .byte con_F7, $02
    .byte con_pause + $32
    .byte con_s_bg_22
    .byte con_s_anim_6B
    .byte con_s_cloud_F0_default ; s_cloud_4C
    .byte con_rts



loc_B2A2_jumping_volley:
    .dbyt con_branch_short + con_bra_plr_misaki
    .byte off_case_B2A2_00 - * ; con_p_misaki_my
    .byte off_case_B2A2_01 - * ; con_p_misaki_japan

        off_case_B2A2_00:
        ; con_p_misaki_my
            .byte con_pause + $3C
            .byte con_s_bg_30
            .byte con_s_anim_face_p_misaki_my
            .byte con_s_cloud_F0_default ; s_cloud_13
        loc_B2AA_misaki_разгоняется_и_прыгает_перед_jumping_volley:
            .byte con_jsr
            .word sub_BBC7_очистка
sub_B2AD_misaki_разгоняется_и_прыгает_перед_jumping_volley:
            .byte con_F7, $02
            .byte con_pause + $1E
            .byte con_s_bg_24
            .byte con_s_anim_6B
            .byte con_s_cloud_FF_skip
            .byte con_soundID_delay, $25, $02
            .byte con_pause + $28
            .byte con_s_bg_20
            .byte con_s_anim_AC
            .byte con_s_cloud_clear
            .byte con_rts

        off_case_B2A2_01:
        ; con_p_misaki_japan
            .byte con_pause + $3C
            .byte con_s_bg_30
            .byte con_s_anim_face_p_misaki_japan
            .byte con_s_cloud_F0_default ; s_cloud_13
            .byte con_jmp
            .word loc_B2AA_misaki_разгоняется_и_прыгает_перед_jumping_volley



loc_B2C2_игрок_принимает_низкий_мяч_на_ногу:
    .byte con_moving_bg, $02
    .byte con_soundID_delay, $2B, $21
    .byte con_pause + $44
    .byte con_s_bg_57
    .byte con_s_anim_6C
    .byte con_s_cloud_F0_default ; s_cloud_4D
    .byte con_rts



loc_B2CC_игрок_принимает_высокий_мяч_на_живот_фон_облака:
    .byte con_soundID_delay, $2B, $21
    .byte con_pause + $3E
    .byte con_s_bg_29
    .byte con_s_anim_6D
    .byte con_s_cloud_F0_default ; s_cloud_4D
    .byte con_rts



loc_B2D4_игрок_принимает_высокий_мяч_на_живот_фон_зрители:
    .byte con_soundID_delay, $2B, $21
    .byte con_pause + $3E
    .byte con_s_bg_67
    .byte con_s_anim_6D
    .byte con_s_cloud_F0_default ; s_cloud_4D
    .byte con_rts



sub_B2DC_игрок_прыгает_к_летящему_мячу_подкатом:
    .dbyt con_branch_short + con_bra_защитный_спешал_или_нет
    .byte off_case_B2F1_00_no_special_defense - * ; игрок без защитного спешала
    .byte off_case_B2E0_01_yes_special_defense - * ; защитный спешал



off_case_B2E0_01_yes_special_defense:
    .dbyt con_branch_short + con_bra_игроки_с_защитным_спешалом
    .byte off_case_B2F2_FF_no_special_defense - * ; 00 
    .byte off_case_B338_01_p_masao_my - * ; 
    .byte off_case_B341_02_p_masao_akita - * ; 
    .byte off_case_B2F2_FF_no_special_defense - * ; 03 p_soda_my, p_soda_japan
    .byte off_case_B2F2_FF_no_special_defense - * ; 04 p_soda_tatsunami
    .byte off_case_B2F2_FF_no_special_defense - * ; 05 p_jito_my, p_jito_japan
    .byte off_case_B2F2_FF_no_special_defense - * ; 06 p_jito_kunimi
    .byte off_case_B2F2_FF_no_special_defense - * ; 07 p_dirceu_santos
    .byte off_case_B2F2_FF_no_special_defense - * ; 08 p_dirceu_brazil
    .byte off_case_B2F2_FF_no_special_defense - * ; 09 p_robson_england
    .byte off_case_B2F2_FF_no_special_defense - * ; 0A p_libuta_netherlands
    .byte off_case_B2F2_FF_no_special_defense - * ; 0B p_galvan_argentina
    .byte off_case_B2F2_FF_no_special_defense - * ; 0C p_hyuga_my, p_hyuga_japan
    .byte off_case_B2F2_FF_no_special_defense - * ; 0D p_hyuga_toho
    .byte off_case_B2F2_FF_no_special_defense - * ; 0E p_ishizaki_my
    .byte off_case_B2F2_FF_no_special_defense - * ; 0F p_ishizaki_japan



off_case_B2F1_00_no_special_defense:
off_case_B2F2_FF_no_special_defense:
    .byte con_soundID_delay, $25, $02
    .byte con_pause + $14
    .byte con_s_bg_02
    .byte con_s_anim_1C
    .byte con_s_cloud_F0_default ; s_cloud_37
    .byte con_pause + $22
    .byte con_s_bg_56
    .byte con_s_anim_49
    .byte con_s_cloud_FF_skip
    .byte con_rts



bra_long_case_B2FE_01_yes_special_defense:
    .dbyt con_branch_short + con_bra_игроки_с_защитным_спешалом
    .byte off_case_B310_FF_no_special_defense - * ; 00 
    .byte off_case_B338_01_p_masao_my - * ; 
    .byte off_case_B341_02_p_masao_akita - * ; 
    .byte off_case_B310_FF_no_special_defense - * ; 03 p_soda_my, p_soda_japan
    .byte off_case_B310_FF_no_special_defense - * ; 04 p_soda_tatsunami
    .byte off_case_B310_FF_no_special_defense - * ; 05 p_jito_my, p_jito_japan
    .byte off_case_B310_FF_no_special_defense - * ; 06 p_jito_kunimi
    .byte off_case_B310_FF_no_special_defense - * ; 07 p_dirceu_santos
    .byte off_case_B310_FF_no_special_defense - * ; 08 p_dirceu_brazil
    .byte off_case_B310_FF_no_special_defense - * ; 09 p_robson_england
    .byte off_case_B310_FF_no_special_defense - * ; 0A p_libuta_netherlands
    .byte off_case_B310_FF_no_special_defense - * ; 0B p_galvan_argentina
    .byte off_case_B310_FF_no_special_defense - * ; 0C p_hyuga_my, p_hyuga_japan
    .byte off_case_B310_FF_no_special_defense - * ; 0D p_hyuga_toho
    .byte off_case_B310_FF_no_special_defense - * ; 0E p_ishizaki_my
    .byte off_case_B310_FF_no_special_defense - * ; 0F p_ishizaki_japan



bra_long_case_B310_00_no_special_defense:
off_case_B310_FF_no_special_defense:
    .byte con_F8, $04
    .byte con_soundID_delay, $25, $02
    .byte con_pause + $32
    .byte con_s_bg_1D
    .byte con_s_anim_1C
    .byte con_s_cloud_F0_default ; s_cloud_3B
    .byte con_rts



bra_long_case_B31A_01_yes_special_defense:
    .dbyt con_branch_short + con_bra_игроки_с_защитным_спешалом
    .byte off_case_B32C_FF_no_special_defense - * ; 00 
    .byte off_case_B338_01_p_masao_my - * ; 
    .byte off_case_B341_02_p_masao_akita - * ; 
    .byte off_case_B32C_FF_no_special_defense - * ; 03 p_soda_my, p_soda_japan
    .byte off_case_B32C_FF_no_special_defense - * ; 04 p_soda_tatsunami
    .byte off_case_B32C_FF_no_special_defense - * ; 05 p_jito_my, p_jito_japan
    .byte off_case_B32C_FF_no_special_defense - * ; 06 p_jito_kunimi
    .byte off_case_B32C_FF_no_special_defense - * ; 07 p_dirceu_santos
    .byte off_case_B32C_FF_no_special_defense - * ; 08 p_dirceu_brazil
    .byte off_case_B32C_FF_no_special_defense - * ; 09 p_robson_england
    .byte off_case_B32C_FF_no_special_defense - * ; 0A p_libuta_netherlands
    .byte off_case_B32C_FF_no_special_defense - * ; 0B p_galvan_argentina
    .byte off_case_B32C_FF_no_special_defense - * ; 0C p_hyuga_my, p_hyuga_japan
    .byte off_case_B32C_FF_no_special_defense - * ; 0D p_hyuga_toho
    .byte off_case_B32C_FF_no_special_defense - * ; 0E p_ishizaki_my
    .byte off_case_B32C_FF_no_special_defense - * ; 0F p_ishizaki_japan



bra_long_case_B32C_00_no_special_defense:
off_case_B32C_FF_no_special_defense:
    .byte con_soundID_delay, $25, $02
    .byte con_pause + $14
    .byte con_s_bg_02
    .byte con_s_anim_1C
    .byte con_s_cloud_F0_default ; s_cloud_38
    .byte con_pause + $20
    .byte con_s_bg_29
    .byte con_s_anim_49
    .byte con_s_cloud_FF_skip
    .byte con_rts



off_case_B338_01_p_masao_my:
; p_masao_my, p_masao_japan, p_kazuo_my, p_kazuo_japan
    .byte con_jsr
    .word sub_A71A_masao_kazuo_japan_становятся_друг_на_друга
loc_B33B_полет_одного_из_братьев_после_запуска:
    .byte con_pause + $2D
    .byte con_s_bg_20
    .byte con_s_anim_C1
    .byte con_s_cloud_F0_default ; s_cloud_ED
    .byte con_mirror_toggle
    .byte con_rts



off_case_B341_02_p_masao_akita:
; p_masao_akita, p_kazuo_akita
    .byte con_jsr
    .word sub_A756_masao_kazuo_akita_становятся_друг_на_друга
    .byte con_jmp
    .word loc_B33B_полет_одного_из_братьев_после_запуска



sub_B347_защитник_прыгает_к_летящему_мячу_блоком:
    .dbyt con_branch_short + con_bra_игроки_с_защитным_спешалом
    .byte off_case_B359_FF_no_special_defense - * ; 00 
    .byte off_case_B365_01_p_masao_my - * ; 
    .byte off_case_B36C_02_p_masao_akita - * ; 
    .byte off_case_B359_FF_no_special_defense - * ; 03 p_soda_my, p_soda_japan
    .byte off_case_B359_FF_no_special_defense - * ; 04 p_soda_tatsunami
    .byte off_case_B372_05_p_jito_my - * ; 
    .byte off_case_B38F_06_p_jito_kunimi - * ; 
    .byte off_case_B37C_07_p_dirceu_santos - * ; 
    .byte off_case_B37C_08_p_dirceu_brazil - * ; 
    .byte off_case_B37C_09_p_robson_england - * ; 
    .byte off_case_B37C_0A_p_libuta_netherlands - * ; 
    .byte off_case_B37C_0B_p_galvan_argentina - * ; 
    .byte off_case_B359_FF_no_special_defense - * ; 0C p_hyuga_my, p_hyuga_japan
    .byte off_case_B359_FF_no_special_defense - * ; 0D p_hyuga_toho
    .byte off_case_B398_0E_p_ishizaki_my - * ; 
    .byte off_case_B3A1_0F_p_ishizaki_japan - * ; 



off_case_B359_FF_no_special_defense:
    .byte con_soundID_delay, $25, $02
    .byte con_pause + $14
    .byte con_s_bg_02
    .byte con_s_anim_1C
    .byte con_s_cloud_F0_default ; s_cloud_39
loc_B360:
    .byte con_pause + $20
    .byte con_s_bg_56
    .byte con_s_anim_49
    .byte con_s_cloud_FF_skip
    .byte con_rts



off_case_B365_01_p_masao_my:
; p_masao_my, p_masao_japan, p_kazuo_my, p_kazuo_japan
    .byte con_jsr
    .word sub_A71A_masao_kazuo_japan_становятся_друг_на_друга
loc_B368:
    .byte con_jmp
    .word loc_B33B_полет_одного_из_братьев_после_запуска



off_case_B36C_02_p_masao_akita:
; p_masao_akita, p_kazuo_akita
    .byte con_jsr
    .word sub_A756_masao_kazuo_akita_становятся_друг_на_друга
    .byte con_jmp
    .word loc_B368



off_case_B372_05_p_jito_my:
; p_jito_my, p_jito_japan
    .byte con_F7, $44
    .byte con_pause + $48
    .byte con_s_bg_30
    .byte con_s_anim_face_p_jito_my
    .byte con_s_cloud_F0_default ; s_cloud_D8
loc_B378:
    .byte con_jsr
    .word sub_BBC7_очистка
off_case_B37C_07_p_dirceu_santos:
; p_dirceu_santos
off_case_B37C_08_p_dirceu_brazil:
; p_dirceu_brazil
off_case_B37C_09_p_robson_england:
; p_robson_england
off_case_B37C_0A_p_libuta_netherlands:
; p_libuta_netherlands
off_case_B37C_0B_p_galvan_argentina:
; p_galvan_argentina
    .byte con_soundID_delay, $27, $02
    .byte con_F7, $33
    .byte con_pause + $20
    .byte con_s_bg_6B
    .byte con_s_anim_E3
    .byte con_s_cloud_F0_default ; s_cloud_EC
    .byte con_soundID_delay, $25, $02
    .byte con_pause + $14
    .byte con_s_bg_02
    .byte con_s_anim_1C
    .byte con_s_cloud_FF_skip
    .byte con_jmp
    .word loc_B360



off_case_B38F_06_p_jito_kunimi:
; p_jito_kunimi
    .byte con_F7, $44
    .byte con_pause + $48
    .byte con_s_bg_30
    .byte con_s_anim_face_p_jito_kunimi
    .byte con_s_cloud_F0_default ; s_cloud_D8
    .byte con_jmp
    .word loc_B378



off_case_B398_0E_p_ishizaki_my:
; p_ishizaki_my
    .byte con_F7, $44
    .byte con_pause + $3C
    .byte con_s_bg_30
    .byte con_s_anim_face_p_ishizaki_my
    .byte con_s_cloud_F0_default ; s_cloud_D7
    .byte con_jmp
    .word loc_A7B1_прыжок_перед_face_block



off_case_B3A1_0F_p_ishizaki_japan:
; p_ishizaki_japan
    .byte con_F7, $44
    .byte con_pause + $3C
    .byte con_s_bg_30
    .byte con_s_anim_face_p_ishizaki_japan
    .byte con_s_cloud_F0_default ; s_cloud_D7
    .byte con_jmp
    .word loc_A7B1_прыжок_перед_face_block



bra_long_case_9DFE_02_01:
; heel lift
    .byte con_jsr
    .word sub_A810_анимация_heel_lift
bra_long_case_9DFE_00:
bra_long_case_9DFE_02_00:
bra_long_case_9DFE_01:
bra_long_case_9DFE_03:
    .byte con_mirror_toggle
    .byte con_rts



bra_long_case_9DFE_02_02:
; forcible dribble
    .dbyt con_branch_short + con_bra_force_drib
    .byte off_case_9DFE_02_02_00 - * ; hyuga из японии
    .byte off_case_9DFE_02_02_01 - * ; hyuga_из тохо
    .byte off_case_9DFE_02_02_02 - * ; jito из японии 
    .byte off_case_9DFE_02_02_03 - * ; jito из куними 
    .byte off_case_9DFE_02_02_04 - * ; napoleon
    .byte off_case_9DFE_02_02_05 - * ; игрок без рожи 



off_case_9DFE_02_02_00:
; forcible dribble/hyuga из японии
    .byte con_F7, $44
    .byte con_pause + $3C
    .byte con_s_bg_31
    .byte con_s_anim_face_p_hyuga_my
    .byte con_s_cloud_F0_default ; s_cloud_C4
loc_B3BD:
    .byte con_jsr
    .word sub_BBC7_очистка
sub_B3C0:
off_case_9DFE_02_02_05:
; forcible dribble/игрок без рожи 
    .byte con_jsr
    .word sub_AA89_forcible_dribble
    .byte con_mirror_toggle
    .byte con_rts



off_case_9DFE_02_02_01:
; forcible dribble/hyuga_из тохо
    .byte con_F7, $44
    .byte con_pause + $3C
    .byte con_s_bg_31
    .byte con_s_anim_face_p_hyuga_toho
    .byte con_s_cloud_F0_default ; s_cloud_C4
    .byte con_jmp
    .word loc_B3BD



off_case_9DFE_02_02_02:
; forcible dribble/jito из японии 
    .byte con_F7, $44
    .byte con_pause + $3C
    .byte con_s_bg_30
    .byte con_s_anim_face_p_jito_my
    .byte con_s_cloud_F0_default ; s_cloud_C5
    .byte con_jmp
    .word loc_B3BD



off_case_9DFE_02_02_03:
; forcible dribble/jito из куними 
    .byte con_F7, $44
    .byte con_pause + $3C
    .byte con_s_bg_30
    .byte con_s_anim_face_p_jito_kunimi
    .byte con_s_cloud_F0_default ; s_cloud_C5
    .byte con_jmp
    .word loc_B3BD



off_case_9DFE_02_02_04:
; forcible dribble/napoleon
    .byte con_F7, $44
    .byte con_pause + $3C
    .byte con_s_bg_30
    .byte con_s_anim_face_p_napoleon_france
    .byte con_s_cloud_F0_default ; s_cloud_C6
    .byte con_jmp
    .word loc_B3BD



bra_long_case_9DFE_02_03:
; vanishing feint
    .byte con_jsr
    .word sub_A86C_vanishing_feint
    .byte con_F7, $02
    .byte con_pause + $28
    .byte con_s_bg_FF_skip
    .byte con_s_anim_FF_skip
    .byte con_s_cloud_FF_skip
    .byte con_mirror_toggle
    .byte con_rts



bra_long_case_9DFE_02_04:
; clone dribble
    .dbyt con_branch_short + con_bra_plr_carlos
    .byte off_case_9DFE_02_04_00 - * ; con_p_carlos_flamengo
    .byte off_case_9DFE_02_04_01 - * ; con_p_carlos_brazil

        off_case_9DFE_02_04_00:
        ; clone dribble/con_p_carlos_flamengo
            .byte con_jsr
            .word sub_A885_рожа_carlos_flamengo
        loc_B3FB_04_01:
            .byte con_jsr
            .word sub_A8AB_clone_dribble
            .byte con_mirror_toggle
            .byte con_rts

        off_case_9DFE_02_04_01:
        ; clone dribble/con_p_carlos_brazil
            .byte con_jsr
            .word sub_A88F_рожа_carlos_brazil
            .byte con_jmp
            .word loc_B3FB_04_01



bra_long_case_9DFE_02_05:
; high speed dribble
    .byte con_jsr
    .word sub_A8D0_high_speed_dribble
    .byte con_F7, $0D
    .byte con_soundID_delay, $26, $02
    .byte con_pause + $1F
    .byte con_s_bg_47
    .byte con_s_anim_D1
    .byte con_s_cloud_FF_skip
    .byte con_mirror_toggle
    .byte con_rts



bra_long_case_9DFE_02_06:
; hedgehog dribble
    .dbyt con_branch_short + con_bra_plr_kaltz
    .byte off_case_9DFE_02_06_00 - * ; con_p_kaltz_hamburger_sv
    .byte off_case_9DFE_02_06_01 - * ; con_p_kaltz_west_germany



off_case_9DFE_02_06_00:
; hedgehog dribble/con_p_kaltz_hamburger_sv
    .byte con_jsr
    .word sub_A8E5_kaltz_hedgehog_dribble
loc_B41B_kaltz_hedgehog_dribble_финальный_кусок_анимации:
    .byte con_F7, $02
    .byte con_pause + $1F
    .byte con_s_bg_FF_skip
    .byte con_s_anim_D2
    .byte con_s_cloud_clear
    .byte con_rts



off_case_9DFE_02_06_01:
; hedgehog dribble/con_p_kaltz_west_germany
    .byte con_jsr
    .word sub_A908_kaltz_hedgehog_dribble
    .byte con_jmp
    .word loc_B41B_kaltz_hedgehog_dribble_финальный_кусок_анимации



sub_B428_белое_мерцание_если_защитник_делал_спешал:
    .dbyt con_branch_short + con_bra_обычный_или_спешал
    .byte off_case_B428_00 - * ; 
    .byte off_case_B428_01 - * ; 

off_case_B428_01:
    .byte con_F7, $10
    .byte con_pause + $10
    .byte con_s_bg_05
    .byte con_s_anim_00
    .byte con_s_cloud_FF_skip
off_case_B428_00:
    .byte con_rts



loc_B43D_игрок_делает_верхний_through:
    .byte con_pause + $3D
    .byte con_s_bg_56
    .byte con_s_anim_6E
    .byte con_s_cloud_F0_default ; s_cloud_4D
    .byte con_rts



loc_B442_игрок_делает_нижний_through:
    .byte con_F7, $02
    .byte con_pause + $3D
    .byte con_s_bg_22
    .byte con_s_anim_6F
    .byte con_s_cloud_F0_default ; s_cloud_4D
    .byte con_rts



loc_B44E_кипер_идеально_засейвил:
sub_B44E_кипер_идеально_засейвил:
    .byte con_pause + $5A
    .byte con_s_bg_FF_skip
    .byte con_s_anim_FF_skip
    .byte con_s_cloud_F0_default ; s_cloud_33
    .byte con_rts



loc_B45D_мяч_улетает_в_сторону:
sub_B45D_мяч_улетает_в_сторону:
    .byte con_mirror_condition, $04
    .byte con_pause + $3C
    .byte con_s_bg_20
    .byte con_s_anim_52
    .byte con_s_cloud_F0_default ; s_cloud_50
    .byte con_rts



loc_B48E:
    .byte con_mirror_on
    .byte con_jsr
    .word sub_BB4B_летящий_мяч_перед_принятием_финального_паса_перепасовки
    .byte con_soundID_delay, $2C, $1D
    .byte con_pause + $3C
    .byte con_s_bg_01
    .byte con_s_anim_78
    .byte con_s_cloud_F0_default ; s_cloud_EB
    .byte con_rts



loc_B4A6_игрок_принимает_пас_на_ногу:
    .byte con_soundID_delay, $2C, $02
    .byte con_pause + $3C
    .byte con_s_bg_01
    .byte con_s_anim_78
    .byte con_s_cloud_F0_default ; s_cloud_6E
    .byte con_rts



loc_B4AE_игрок_принимает_пас_на_грудь:
    .byte con_soundID_delay, $2C, $11
    .byte con_pause + $38
    .byte con_s_bg_63
    .byte con_s_anim_7A
    .byte con_s_cloud_F0_default ; s_cloud_6E
    .byte con_rts



loc_B4B6_игрок_принимает_пас_на_грудь:
    .byte con_soundID_delay, $2C, $11
    .byte con_pause + $38
    .byte con_s_bg_63
    .byte con_s_anim_7A
    .byte con_s_cloud_F0_default ; s_cloud_58
    .byte con_rts



bra_long_case_B675_18:
; sidewinder shot
    .byte con_jsr
    .word sub_BB9F
    .byte con_mirror_toggle
    .byte con_jsr
    .word sub_BB9F
    .byte con_mirror_toggle
    .byte con_soundID_delay, $0F, $02
    .byte con_pause + $3C
    .byte con_s_bg_35
    .byte con_s_anim_5D
    .byte con_s_cloud_clear
    .byte con_rts



bra_long_case_B685_19:
; slider shot
    .byte con_jsr
    .word sub_BBB7
    .byte con_soundID_delay, $10, $02
    .byte con_pause + $37
    .byte con_s_bg_5B
    .byte con_s_anim_5E
    .byte con_s_cloud_clear
    .byte con_rts



bra_long_case_B690_1A:
; cannon shot
    .byte con_soundID_delay, $06, $02
    .byte con_pause + $30
    .byte con_s_bg_5A
    .byte con_s_anim_1A
    .byte con_s_cloud_clear
    .byte con_mirror_toggle
    .byte con_soundID_delay, $06, $02
    .byte con_pause + $30
    .byte con_s_bg_5A
    .byte con_s_anim_1A
    .byte con_s_cloud_clear
    .byte con_mirror_toggle
    .byte con_soundID_delay, $0C, $02
    .byte con_pause + $0A
    .byte con_s_bg_14
    .byte con_s_anim_3D
    .byte con_s_cloud_clear
    .byte con_pause + $0A
    .byte con_s_bg_15
    .byte con_s_anim_FF_skip
    .byte con_s_cloud_FF_skip
    .byte con_pause + $0A
    .byte con_s_bg_16
    .byte con_s_anim_FF_skip
    .byte con_s_cloud_FF_skip
    .byte con_pause + $0A
    .byte con_s_bg_17
    .byte con_s_anim_FF_skip
    .byte con_s_cloud_FF_skip
    .byte con_pause + $0A
    .byte con_s_bg_18
    .byte con_s_anim_FF_skip
    .byte con_s_cloud_FF_skip
    .byte con_rts



bra_long_case_B6C0_1B:
; fire shot
    .byte con_F7, $0D
    .byte con_jsr
    .word sub_BBB7
    .byte con_mirror_toggle
    .byte con_F7, $0D
    .byte con_jsr
    .word sub_BBB7
    .byte con_mirror_toggle
    .byte con_F7, $39
    .byte con_soundID_delay, $07, $02
    .byte con_pause + $32
    .byte con_s_bg_5A
    .byte con_s_anim_11
    .byte con_s_cloud_clear
    .byte con_rts



bra_long_case_B6D6_1C:
; dynamite header
sub_B6D6_полет_dynamite_header:
    .byte con_soundID_delay, $06, $02
    .byte con_pause + $20
    .byte con_s_bg_13
    .byte con_s_anim_12
    .byte con_s_cloud_clear
    .byte con_rts



bra_long_case_B6DE_1D:
; cannon header
    .byte con_soundID_delay, $04, $02
    .byte con_pause + $1E
    .byte con_s_bg_67
    .byte con_s_anim_72
    .byte con_s_cloud_clear
    .byte con_rts



bra_long_case_B6E6_1E:
; rocket header
    .byte con_mirror_toggle
    .byte con_soundID_delay, $08, $02
    .byte con_pause + $33
    .byte con_s_bg_13
    .byte con_s_anim_1D
    .byte con_s_cloud_clear
    .byte con_mirror_toggle
    .byte con_rts



bra_long_case_B6F0_1F:
; rising dragon kick
    .byte con_soundID_delay, $04, $02
    .byte con_pause + $32
    .byte con_s_bg_13
    .byte con_s_anim_40
    .byte con_s_cloud_clear
    .byte con_F7, $14
    .byte con_soundID_delay, $0E, $02
    .byte con_pause + $23
    .byte con_s_bg_43
    .byte con_s_anim_73
    .byte con_s_cloud_clear
    .byte con_rts



bra_long_case_B701_20:
; foward somersault
    .byte con_soundID_delay, $06, $02
    .byte con_pause + $28
    .byte con_s_bg_68
    .byte con_s_anim_12
    .byte con_s_cloud_clear
    .byte con_F7, $2B
    .byte con_soundID_delay, $05, $02
    .byte con_pause + $46
    .byte con_s_bg_60
    .byte con_s_anim_74
    .byte con_s_cloud_clear
    .byte con_rts



bra_long_case_B712_21:
; slider cannon
    .byte con_jsr
    .word sub_BBAF_полет_twin_shot_2
    .byte con_mirror_toggle
    .byte con_jsr
    .word sub_BBA7_полет_twin_shot_1
    .byte con_F7, $3A
    .byte con_soundID_delay, $0A, $02
    .byte con_pause + $46
    .byte con_s_bg_5E
    .byte con_s_anim_28
    .byte con_s_cloud_clear
    .byte con_mirror_toggle
    .byte con_rts



bra_long_case_B724_22:
; double eel
    .byte con_soundID_delay, $0F, $02
    .byte con_pause + $3D
    .byte con_s_bg_4E
    .byte con_s_anim_5D
    .byte con_s_cloud_clear
    .byte con_rts



_scenario_B733_1F:
    .byte con_pause + $96
    .byte con_s_bg_FF_skip
    .byte con_s_anim_FF_skip
    .byte con_s_cloud_F0_default ; s_cloud_66
    .byte con_rts



_scenario_B738_20:
    .byte con_jsr
    .word sub_BBC7_очистка
    .dbyt con_branch_short + con_bra_у_чьей_команды_мяч
    .byte off_case_20_00 - * ; мяч у команды слева
    .byte off_case_20_01 - * ; мяч у команды справа

        off_case_20_00:
        ; мяч у команды слева
            .byte con_pause + $B4
            .byte con_s_bg_38
            .byte con_s_anim_85
            .byte con_s_cloud_F0_default ; s_cloud_67
            .byte con_rts

        off_case_20_01:
        ; мяч у команды справа
            .byte con_pause + $B4
            .byte con_s_bg_37
            .byte con_s_anim_85
            .byte con_s_cloud_F0_default ; s_cloud_67
            .byte con_rts



_scenario_BA3B_21:
    .byte con_jsr
    .word sub_BA2C_замах_и_удар_по_мячу_обычным_ударом
    .dbyt con_branch_short + con_bra_у_чьей_команды_мяч
    .byte off_case_21_00 - * ; мяч у команды слева
    .byte off_case_21_01 - * ; мяч у команды справа

        off_case_21_00:
        ; мяч у команды слева
            .byte con_pause + $0A
            .byte con_s_bg_38
            .byte con_s_anim_00
            .byte con_s_cloud_FF_skip
            .byte con_FE
            .byte con_jmp
            .word loc_BA54_21_00

        off_case_21_01:
        ; мяч у команды справа
            .byte con_pause + $0A
            .byte con_s_bg_37
            .byte con_s_anim_00
            .byte con_s_cloud_FF_skip
            .byte con_FE
        loc_BA54:
        loc_BA54_21_00:
            .dbyt con_branch_short + con_bra_полет_мяча_и_кипера_в_пк
            .byte off_case_21_01_00 - * ; мяч влево, кипер влево
            .byte off_case_21_01_01 - * ; мяч влево, кипер центр
            .byte off_case_21_01_02 - * ; мяч влево, кипер вправо
            .byte off_case_21_01_03 - * ; мяч центр, кипер влево
            .byte off_case_21_01_04 - * ; мяч центр, кипер центр
            .byte off_case_21_01_05 - * ; мяч центр, кипер вправо
            .byte off_case_21_01_06 - * ; мяч вправо, кипер влево
            .byte off_case_21_01_07 - * ; мяч вправо, кипер центр
            .byte off_case_21_01_08 - * ; мяч вправо, кипер вправо

                off_case_21_01_00:
                ; мяч влево, кипер влево
                    .byte con_mirror_toggle
                    .byte con_pause + $32
                    .byte con_s_bg_FF_skip
                    .byte con_s_anim_86
                    .byte con_s_cloud_FF_skip
                    .byte con_mirror_toggle
                    .byte con_mirror_on
                    .byte con_jmp
                    .word loc_BA63_21_01_00

                off_case_21_01_01:
                ; мяч влево, кипер центр
                    .byte con_mirror_toggle
                    .byte con_pause + $32
                    .byte con_s_bg_FF_skip
                    .byte con_s_anim_89
                    .byte con_s_cloud_FF_skip
                    .byte con_mirror_toggle
                    .byte con_mirror_on
                    .byte con_jmp
                    .word loc_BA68_кипер_не_угадывает_сторону_в_пк

                off_case_21_01_02:
                ; мяч влево, кипер вправо
                    .byte con_pause + $32
                    .byte con_s_bg_FF_skip
                    .byte con_s_anim_87
                    .byte con_s_cloud_FF_skip
                    .byte con_mirror_on
                    .byte con_jmp
                    .word loc_BA68_кипер_не_угадывает_сторону_в_пк

                off_case_21_01_03:
                ; мяч центр, кипер влево
                    .byte con_mirror_toggle
                    .byte con_pause + $32
                    .byte con_s_bg_FF_skip
                    .byte con_s_anim_88
                    .byte con_s_cloud_FF_skip
                    .byte con_mirror_toggle
                    .byte con_mirror_on
                    .byte con_jmp
                    .word loc_BA68_кипер_не_угадывает_сторону_в_пк

                off_case_21_01_04:
                ; мяч центр, кипер центр
                    .byte con_pause + $32
                    .byte con_s_bg_FF_skip
                    .byte con_s_anim_8A
                    .byte con_s_cloud_FF_skip
                    .dbyt con_branch_short + con_bra_результат_действия_защитника
                    .byte off_case_21_01_04_00 - * ; кипер промахивается и гол
                    .byte off_case_21_01_04_01 - * ; кипер отбивает
                    .byte off_case_21_01_04_02 - * ; кипер промахивается и штанга (нереальный случай)

                        off_case_21_01_04_00:
                        ; кипер промахивается и гол
                            .byte con_F7, $07
                            .byte con_pause + $2A
                            .byte con_s_bg_40
                            .byte con_s_anim_59
                            .byte con_s_cloud_FF_skip
                            .byte con_jmp
                            .word loc_BA7F_гол_при_ударе_11м

                        off_case_21_01_04_01:
                        ; кипер отбивает
                            .byte con_F7, $07
                            .byte con_soundID_delay, $2A, $21
                            .byte con_pause + $20
                            .byte con_s_bg_40
                            .byte con_s_anim_17
                            .byte con_s_cloud_F0_default ; s_cloud_DD
                            .byte con_F7, $10
                            .byte con_pause + $10
                            .byte con_s_bg_05
                            .byte con_s_anim_00
                            .byte con_s_cloud_FF_skip
                            .byte con_mirror_toggle
                            .byte con_soundID_delay, $7E, $02
                            .byte con_pause + $3C
                            .byte con_s_bg_20
                            .byte con_s_anim_52
                            .byte con_s_cloud_FF_skip
                            .byte con_rts

                        off_case_21_01_04_02:
                        ; кипер промахивается и штанга (нереальный случай)
                            .byte con_rts
                            ; закомментированный код из оригинала
;                            .dbyt con_branch_short + con_bra_plr_wakashimazu_gertise
;                            .byte off_case_21_01_04_02_00 - * ; другой кипер
;                            .byte off_case_21_01_04_02_01 - * ; wakashimazu
;                            .byte off_case_21_01_04_02_02 - * ; gertise
;
;                                off_case_21_01_04_02_00:
;                                ; другой кипер
;                                    .byte con_pause + $28
;                                    .byte con_s_bg_0E
;                                    .byte con_s_anim_25
;                                    .byte con_s_cloud_FF_skip
;                                    .byte con_jmp
;                                    .word loc_BADE_штанга_при_ударе_11м
;
;                                off_case_21_01_04_02_01:
;                                off_case_21_01_04_02_02:
;                                ; wakashimazu, gertise
;                                    .byte con_pause + $28
;                                    .byte con_s_bg_0F
;                                    .byte con_s_anim_26
;                                    .byte con_s_cloud_FF_skip
;                                    .byte con_jmp
;                                    .word loc_BADE_штанга_при_ударе_11м

                off_case_21_01_05:
                ; мяч центр, кипер вправо
                    .byte con_pause + $32
                    .byte con_s_bg_FF_skip
                    .byte con_s_anim_88
                    .byte con_s_cloud_FF_skip
                    .byte con_mirror_on
                    .byte con_jmp
                    .word loc_BA68_кипер_не_угадывает_сторону_в_пк

                off_case_21_01_06:
                ; мяч вправо, кипер влево
                    .byte con_mirror_toggle
                    .byte con_pause + $32
                    .byte con_s_bg_FF_skip
                    .byte con_s_anim_87
                    .byte con_s_cloud_FF_skip
                    .byte con_mirror_toggle
                    .byte con_jmp
                    .word loc_BA68_кипер_не_угадывает_сторону_в_пк

                off_case_21_01_07:
                ; мяч вправо, кипер центр
                    .byte con_pause + $32
                    .byte con_s_bg_FF_skip
                    .byte con_s_anim_89
                    .byte con_s_cloud_FF_skip
                    .byte con_jmp
                    .word loc_BA68_кипер_не_угадывает_сторону_в_пк

                off_case_21_01_08:
                ; мяч вправо, кипер вправо
                    .byte con_pause + $32
                    .byte con_s_bg_FF_skip
                    .byte con_s_anim_86
                    .byte con_s_cloud_FF_skip
                loc_BA63_21_01_00:
                    .dbyt con_branch_short + con_bra_результат_действия_защитника
                    .byte off_case_21_01_08_00 - * ; кипер промахнется и гол
                    .byte off_case_21_01_08_01 - * ; кипер отобьет
                    .byte off_case_21_01_08_02 - * ; кипер промахнется и штанга

                        off_case_21_01_08_00:
                        ; мяч вправо, кипер вправо/кипер промахнется и гол
                            .dbyt con_branch_short + con_bra_plr_wakashimazu_gertise
                            .byte off_case_21_01_08_00_00 - * ; другой кипер
                            .byte off_case_21_01_08_00_01 - * ; wakashimazu
                            .byte off_case_21_01_08_00_02 - * ; gertise

                                off_case_21_01_08_00_00:
                                ; мяч вправо, кипер вправо/кипер промахнется и гол/другой кипер
                                    .byte con_pause + $28
                                    .byte con_s_bg_0E
                                    .byte con_s_anim_25
                                    .byte con_s_cloud_FF_skip
                                    .byte con_jmp
                                    .word loc_BA7F_гол_при_ударе_11м

                                off_case_21_01_08_00_01:
                                off_case_21_01_08_00_02:
                                ; мяч вправо, кипер вправо/кипер промахнется и гол/wakashimazu, gertise
                                    .byte con_pause + $28
                                    .byte con_s_bg_0F
                                    .byte con_s_anim_26
                                    .byte con_s_cloud_FF_skip
                                    .byte con_jmp
                                    .word loc_BA7F_гол_при_ударе_11м

                        off_case_21_01_08_01:
                        ; мяч вправо, кипер вправо/кипер отобьет
                            .dbyt con_branch_short + con_bra_plr_wakashimazu_gertise
                            .byte off_case_21_01_08_01_00 - * ; другой кипер
                            .byte off_case_21_01_08_01_01 - * ; wakashimazu
                            .byte off_case_21_01_08_01_02 - * ; gertise

                                off_case_21_01_08_01_00:
                                ; мяч вправо, кипер вправо/кипер отобьет/другой кипер
                                    .byte con_soundID_delay, $2B, $21
                                    .byte con_pause + $3C
                                    .byte con_s_bg_0E
                                    .byte con_s_anim_27
                                    .byte con_s_cloud_F0_default ; s_cloud_DD
                                    .byte con_soundID_delay, $7E, $02
                                    .byte con_jmp
                                    .word loc_BBC7_очистка

                                off_case_21_01_08_01_01:
                                off_case_21_01_08_01_02:
                                ; мяч вправо, кипер вправо/кипер отобьет/wakashimazu, gertise
                                    .byte con_soundID_delay, $2B, $21
                                    .byte con_pause + $3C
                                    .byte con_s_bg_0F
                                    .byte con_s_anim_2B
                                    .byte con_s_cloud_F0_default ; s_cloud_DD
                                    .byte con_soundID_delay, $7E, $02
                                    .byte con_jmp
                                    .word loc_BBC7_очистка

                        off_case_21_01_08_02:
                        ; мяч вправо, кипер вправо/кипер промахнется и штанга
                            .dbyt con_branch_short + con_bra_plr_wakashimazu_gertise
                            .byte off_case_21_01_08_02_00 - * ; другой кипер
                            .byte off_case_21_01_08_02_01 - * ; wakashimazu
                            .byte off_case_21_01_08_02_02 - * ; gertise

                                off_case_21_01_08_02_00:
                                ; мяч вправо, кипер вправо/кипер промахнется и штанга/другой кипер
                                    .byte con_pause + $28
                                    .byte con_s_bg_0E
                                    .byte con_s_anim_25
                                    .byte con_s_cloud_FF_skip
                                    .byte con_jmp
                                    .word loc_BADE_штанга_при_ударе_11м

                                off_case_21_01_08_02_01:
                                off_case_21_01_08_02_02:
                                ; мяч вправо, кипер вправо/кипер промахнется и штанга/wakashimazu, gertise
                                    .byte con_pause + $28
                                    .byte con_s_bg_0F
                                    .byte con_s_anim_26
                                    .byte con_s_cloud_FF_skip
                                    .byte con_jmp
                                    .word loc_BADE_штанга_при_ударе_11м




_scenario_B749_22:
    .byte con_pause + $B0
    .byte con_s_bg_38
    .byte con_s_anim_85
    .byte con_s_cloud_F0_default ; s_cloud_69
    .byte con_rts



_scenario_BB3F_23:
    .byte con_jsr
    .word sub_BA2C_замах_и_удар_по_мячу_обычным_ударом
    .byte con_pause + $0A
    .byte con_s_bg_38
    .byte con_s_anim_00
    .byte con_s_cloud_FF_skip
    .byte con_FE
    .byte con_jmp
    .word loc_BA54



_scenario_9BF2_24:
    .byte con_jsr
    .word sub_B4BF_мяч_улетает_в_аут
    .byte con_pause + $46
    .byte con_s_bg_FF_skip
    .byte con_s_anim_FF_skip
    .byte con_s_cloud_F0_default ; s_cloud_5D
    .byte con_rts



_scenario_9CDD_25:
    .byte con_jsr
    .word sub_BBC7_очистка
    .dbyt con_branch_short + con_bra_обычный_или_спешал
    .byte off_case_25_00 - * ; 
    .byte off_case_25_01 - * ; 

        off_case_25_00:
        ; 
            .byte con_mirror_condition, $03       ; куда летит мяч
            .byte con_soundID_delay, $12, $02     ; обычный удар с земли
            .byte con_pause + $30
            .byte con_s_bg_42
            .byte con_s_anim_82
            .byte con_s_cloud_F0_default ; s_cloud_63
            .byte con_quit

        off_case_25_01:
        ; 
            .byte con_jmp
            .word loc_9CF3_игрок_делает_удар_с_земли



_scenario_9E2D_26:
    .byte con_jsr
    .word sub_BBC7_очистка
    .dbyt con_branch_short + con_bra_обычный_или_спешал
    .byte off_case_26_00 - * ; 
    .byte off_case_26_00 - * ; 

        off_case_26_00:
        ; 
            .byte con_mirror_condition, $00
            .byte con_soundID_delay, $2B, $09     ; отбитие мяча
            .byte con_pause + $37
            .byte con_s_bg_42
            .byte con_s_anim_83
            .byte con_s_cloud_F0_default ; s_cloud_64
            .byte con_quit

        off_case_26_01:
        ; 
            .byte con_jmp
            .word loc_9E45_выбор_анимации_паса_с_земли_или_по_низкому_мячу



_scenario_9BF8_27:
    .byte con_jsr
    .word sub_B4BF_мяч_улетает_в_аут
    .byte con_pause + $46
    .byte con_s_bg_FF_skip
    .byte con_s_anim_FF_skip
    .byte con_s_cloud_F0_default ; s_cloud_5E
    .byte con_rts



_scenario_B4CC_28:
    .byte con_mirror_condition, $00
    .byte con_soundID_delay, $2B, $09
    .byte con_pause + $32
    .byte con_s_bg_26
    .byte con_s_anim_7F
    .byte con_s_cloud_F0_default ; s_cloud_60
    .byte con_rts



_scenario_9BFE_29:
    .byte con_jsr
    .word sub_B4BF_мяч_улетает_в_аут
    .byte con_pause + $46
    .byte con_s_bg_FF_skip
    .byte con_s_anim_FF_skip
    .byte con_s_cloud_F0_default ; s_cloud_5F
    .byte con_rts



_scenario_B4E0_2A:
    .byte con_mirror_condition, $00
    .byte con_pause + $30
    .byte con_s_bg_3E
    .byte con_s_anim_81
    .byte con_s_cloud_F0_default ; s_cloud_62
    .byte con_rts



_scenario_B72C_2B:
    .byte con_pause + $78
    .byte con_s_bg_46
    .byte con_s_anim_00
    .byte con_s_cloud_F0_default ; s_cloud_65
    .byte con_jmp
    .word loc_BBC7_очистка



_scenario_9F54_2C:
    .byte con_mirror_condition, $03       ; куда летит мяч
    .dbyt con_branch_short + con_bra_высота_мяча
    .byte off_case_2C_00 - * ; low
    .byte off_case_2C_01 - * ; high

        off_case_2C_00:
        ; low
            .byte con_soundID_delay, $2B, $21
            .byte con_pause + $46
            .byte con_s_bg_01
            .byte con_s_anim_6C
            .byte con_s_cloud_F0_default ; s_cloud_14
            .byte con_rts

        off_case_2C_01:
        ; high
            .byte con_soundID_delay, $2B, $21
            .byte con_pause + $4A
            .byte con_s_bg_63
            .byte con_s_anim_6D
            .byte con_s_cloud_F0_default ; s_cloud_14
            .byte con_rts



_scenario_B4D6_2D:
    .byte con_mirror_condition, $00
    .byte con_soundID_delay, $64, $0D
    .byte con_pause + $3A
    .byte con_s_bg_3C
    .byte con_s_anim_80
    .byte con_s_cloud_F0_default ; s_cloud_61
    .byte con_rts



_scenario_B74E_2E:
    .byte con_mirror_off
    .byte con_pause + $78
    .byte con_s_bg_36
    .byte con_s_anim_8B
    .byte con_s_cloud_F0_default ; s_cloud_6D
    .byte con_rts



_scenario_B773_2F:
    .byte con_mirror_condition, $00
    .byte con_jsr
    .word sub_9F3E
    .byte con_mirror_condition, $03       ; куда летит мяч
    .dbyt con_branch_short + con_bra_высота_мяча
    .byte off_case_2F_00 - * ; low
    .byte off_case_2F_01 - * ; high

; видимо сообшение о низком/высоком мяче, в котором больше нет необходимости
; достаточно добавить универсальное сообщение и избавиться от одной из веток
        off_case_2F_00:
        ; low
            .byte con_pause + $5A
            .byte con_s_bg_36
            .byte con_s_anim_8D
            .byte con_s_cloud_F0_default ; s_cloud_10
            .byte con_jmp
            .word loc_B763_2F_проверка_на_наличие_защитников

        off_case_2F_01:
        ; high
            .byte con_pause + $5A
            .byte con_s_bg_36
            .byte con_s_anim_8D
            .byte con_s_cloud_F0_default ; s_cloud_0A
            .byte con_jmp
            .word loc_B763_2F_проверка_на_наличие_защитников



_scenario_9C30_30:
    .dbyt con_branch_long + con_bra_у_чьей_команды_мяч
    .word bra_long_case_30_00 ; гол в правые ворота
    .word bra_long_case_30_01 ; гол в левые ворота

        bra_long_case_30_00:
        ; гол в правые ворота
            .byte con_mirror_off
            .byte con_F7, $13
            .byte con_soundID_delay, $41, $02     ; гол в ворота соперника
            .dbyt con_branch_long + con_bra_порвана_ли_сетка
            .word bra_long_case_30_00_00 ; сетка не порвана
            .word bra_long_case_30_00_01 ; сетка порвана

                bra_long_case_30_00_00:
                ; гол в правые ворота/сетка не порвана
                    .dbyt con_branch_short + con_bra_за_какую_команду_играешь
                    .byte off_case_30_00_00_00 - * ; sao paulo
                    .byte off_case_30_00_00_01 - * ; nankatsu
                    .byte off_case_30_00_00_02 - * ; japan

                        off_case_30_00_00_00:
                        ; гол в правые ворота/сетка не порвана/sao paulo
                            .byte con_pause + $A0
                            .byte con_s_bg_08
                            .byte con_s_anim_46
                            .byte con_s_cloud_F0_default ; s_cloud_52
                            .byte con_jmp
                            .word loc_A275_мерцание_фона_с_портретом_игроков

                        off_case_30_00_00_01:
                        ; гол в правые ворота/сетка не порвана/nankatsu
                            .byte con_pause + $A0
                            .byte con_s_bg_09
                            .byte con_s_anim_47
                            .byte con_s_cloud_F0_default ; s_cloud_52
                            .byte con_jmp
                            .word loc_A275_мерцание_фона_с_портретом_игроков

                        off_case_30_00_00_02:
                        ; гол в правые ворота/сетка не порвана/japan
                            .byte con_pause + $A0
                            .byte con_s_bg_0A
                            .byte con_s_anim_48
                            .byte con_s_cloud_F0_default ; s_cloud_52
loc_A275_мерцание_фона_с_портретом_игроков:
                            .byte con_F7, $13
                            .byte con_pause + $6E
                            .byte con_s_bg_FF_skip
                            .byte con_s_anim_FF_skip
                            .byte con_s_cloud_FF_skip
                            .dbyt con_branch_short + con_bra_проигрывает_ли_germany
                            .byte off_case_30_00_00_02_00 - * ; germany не проигрывает
                            .byte off_case_30_00_00_02_01 - * ; germany проигрывает

                                off_case_30_00_00_02_00:
                                ; гол в правые ворота/сетка не порвана/japan/germany не проигрывает
                                    .dbyt con_branch_short + con_bra_jito_sano_ли_забили
                                    .byte off_case_30_00_00_02_00_00 - * ; гол забили не jito с sano
                                    .byte off_case_30_00_00_02_00_01 - * ; гол забили jito с sano

                                off_case_30_00_00_02_00_00:
                                ; гол в правые ворота/сетка не порвана/japan/germany не проигрывает/гол забили не jito с sano
                                            .byte con_rts

                                off_case_30_00_00_02_00_01:
                                ; гол в правые ворота/сетка не порвана/japan/germany не проигрывает/гол забили jito с sano
                                ; bzk optimize, а эта проверка на jito вообще нужна? если играешь за японию, очевидно что он тоже из японии
                                ; вероятно это как-то связано с тем, что jito может быть из двух разных команд японии
                                            .dbyt con_branch_short + con_bra_plr_jito
                                            .byte off_case_30_00_00_02_00_01_00 - * ; jito japan
                                            .byte off_case_30_00_00_02_00_01_01 - * ; jito kunimi

                                                off_case_30_00_00_02_00_01_00:
                                                ; гол в правые ворота/сетка не порвана/japan/germany не проигрывает/гол забили jito с sano/jito japan
                                                    .byte con_jsr
                                                    .word sub_BBC7_очистка
                                                    .byte con_pause + $D0
                                                    .byte con_s_bg_30
                                                    .byte con_s_anim_face_p_jito_my
                                                    .byte con_s_cloud_F0_default ; s_cloud_9E
                                                    .byte con_jmp
                                                    .word loc_BBC7_очистка

                                                off_case_30_00_00_02_00_01_01:
                                                ; гол в правые ворота/сетка не порвана/japan/germany не проигрывает/гол забили jito с sano/jito kunimi
                                                    .byte con_jsr
                                                    .word sub_BBC7_очистка
                                                    .byte con_pause + $D0
                                                    .byte con_s_bg_30
                                                    .byte con_s_anim_face_p_jito_kunimi
                                                    .byte con_s_cloud_F0_default ; s_cloud_9E
                                                    .byte con_jmp
                                                    .word loc_BBC7_очистка

                                off_case_30_00_00_02_01:
                                ; гол в правые ворота/сетка не порвана/japan/germany проигрывает
                                    .byte con_jsr
                                    .word sub_BBC7_очистка
                                    .byte con_pause + $A0
                                    .byte con_s_bg_30
                                    .byte con_s_anim_face_p_schneider_west_germany
                                    .byte con_s_cloud_F0_default ; s_cloud_89
                                    .byte con_rts

                bra_long_case_30_00_01:
                ; гол в правые ворота/сетка порвана
                ; bzk bug? а почему тут нету проверки на jito?
                    .dbyt con_branch_short + con_bra_за_какую_команду_играешь
                    .byte off_case_30_00_01_00 - * ; sao paulo
                    .byte off_case_30_00_01_01 - * ; nankatsu
                    .byte off_case_30_00_01_02 - * ; japan

                        off_case_30_00_01_00:
                        ; гол в правые ворота/сетка порвана/sao paulo
                            .byte con_pause + $A0
                            .byte con_s_bg_08
                            .byte con_s_anim_46
                            .byte con_s_cloud_F0_default ; s_cloud_54
                            .byte con_jmp
                            .word loc_A275_мерцание_фона_с_портретом_игроков

                        off_case_30_00_01_01:
                        ; гол в правые ворота/сетка порвана/nankatsu
                            .byte con_pause + $A0
                            .byte con_s_bg_09
                            .byte con_s_anim_47
                            .byte con_s_cloud_F0_default ; s_cloud_55
                            .byte con_jmp
                            .word loc_A275_мерцание_фона_с_портретом_игроков

                        off_case_30_00_01_02:
                        ; гол в правые ворота/сетка порвана/japan
                            .byte con_pause + $A0
                            .byte con_s_bg_0A
                            .byte con_s_anim_48
                            .byte con_s_cloud_F0_default ; s_cloud_55
                            .byte con_jmp
                            .word loc_A275_мерцание_фона_с_портретом_игроков

        bra_long_case_30_01:
        ; гол в левые ворота
sub_9C36_анимация_гола_в_левые_ворота_и_сообщения:
            .byte con_soundID_delay, $42, $02     ; гол в ворота нашей команды
            .dbyt con_branch_short + con_bra_порвана_ли_сетка
            .byte off_case_30_01_00 - * ; сетка не порвана
            .byte off_case_30_01_01 - * ; сетка порвана

                off_case_30_01_00:
                ; гол в левые ворота/сетка не порвана
                    .byte con_pause + $82
                    .byte con_s_bg_FF_skip
                    .byte con_s_anim_FF_skip
                    .byte con_s_cloud_F0_default ; s_cloud_51
                    .byte con_jmp
                    .word loc_A275_мерцание_фона_с_портретом_игроков

                off_case_30_01_01:
                ; гол в левые ворота/сетка порвана
                    .byte con_pause + $82
                    .byte con_s_bg_FF_skip
                    .byte con_s_anim_FF_skip
                    .byte con_s_cloud_F0_default ; s_cloud_53
                    .byte con_jmp
                    .word loc_A275_мерцание_фона_с_портретом_игроков



_scenario_B78C_31_gk_vs_attacker:
    .byte con_mirror_off
    .byte con_pause + $5A
    .byte con_s_bg_2C
    .byte con_s_anim_8B
    .byte con_s_cloud_F0_default ; s_cloud_6F
    .byte con_rts



_scenario_9E57_32:
    .byte con_mirror_off
    .dbyt con_branch_short + con_bra_рожа_кипера
    .byte off_case_32_00 - * ; кипер без рожи (unused)
    .byte off_case_32_01 - * ; p_renato_my
    .byte off_case_32_02 - * ; p_morisaki_my
    .byte off_case_32_03 - * ; p_wakabayashi_my
    .byte off_case_32_04 - * ; p_wakashimazu_my

        off_case_32_00:
        ; кипер без рожи
            .byte con_rts

        off_case_32_01:
        ; p_renato_my
            .byte con_pause + $0A
            .byte con_s_bg_32
            .byte con_s_anim_face_p_renato_my
            .byte con_s_cloud_FF_skip
            .byte con_rts

        off_case_32_02:
        ; p_morisaki_my
            .byte con_pause + $0A
            .byte con_s_bg_33
            .byte con_s_anim_face_p_morisaki_my
            .byte con_s_cloud_FF_skip
            .byte con_rts

        off_case_32_03:
        ; p_wakabayashi_my
            .byte con_pause + $0A
            .byte con_s_bg_32
            .byte con_s_anim_face_p_wakabayashi_my
            .byte con_s_cloud_FF_skip
            .byte con_rts

        off_case_32_04:
        ; p_wakashimazu_my
            .byte con_pause + $0A
            .byte con_s_bg_33
            .byte con_s_anim_face_p_wakashimazu_my
            .byte con_s_cloud_FF_skip
            .byte con_rts



_scenario_9C04_33:
    .byte con_mirror_off
    .byte con_soundID_delay, $66, $02
    .byte con_pause + $32
    .byte con_s_bg_0C
    .byte con_s_anim_4E
    .byte con_s_cloud_F0_default ; s_cloud_70
    .byte con_pause + $60
    .byte con_s_bg_FF_skip
    .byte con_s_anim_FF_skip
    .byte con_s_cloud_F0_default ; s_cloud_71
    .byte con_soundID_delay, $31, $02
    .byte con_pause + $C0
    .byte con_s_bg_FF_skip
    .byte con_s_anim_FF_skip
    .byte con_s_cloud_FF_skip
    .byte con_pause + $01
    .byte con_s_bg_71
    .byte con_s_anim_00
    .byte con_s_cloud_clear
    .byte con_rts



_scenario_BBCC_34:
    .byte con_soundID_delay, $64, $0D
    .byte con_pause + $30
    .byte con_s_bg_3C
    .byte con_s_anim_80
    .byte con_s_cloud_F0_default ; s_cloud_E6
    .byte con_rts



_scenario_B7CD_35_wait_for_kick_off:
    .byte con_soundID_delay, $44, $EB
    .byte con_pause + $02
    .byte con_s_bg_3A
    .byte con_s_anim_8F
    .byte con_s_cloud_73
    .byte con_rts



_scenario_B7E4_36_kick_off:
    .byte con_mirror_off
    .byte con_soundID_delay, $7F, $02
    .byte con_pause + $10
    .byte con_s_bg_3A
    .byte con_s_anim_8F
    .byte con_s_cloud_FF_skip
    .byte con_soundID_delay, $66, $02
    .byte con_pause + $20
    .byte con_s_bg_FF_skip
    .byte con_s_anim_FF_skip
    .byte con_s_cloud_F0_default ; s_cloud_74
    .byte con_mirror_condition, $00
    .byte con_soundID_delay, $2B, $09
    .byte con_pause + $32
    .byte con_s_bg_72
    .byte con_s_anim_66
    .byte con_s_cloud_FF_skip
    .byte con_F7, $02
    .byte con_pause + $32
    .byte con_s_bg_1F
    .byte con_s_anim_4C
    .byte con_s_cloud_FF_skip
    .byte con_soundID_delay, $2C, $1D
    .byte con_pause + $3E
    .byte con_s_bg_01
    .byte con_s_anim_E6
    .byte con_s_cloud_F0_default ; s_cloud_75
    .byte con_rts



_scenario_B7BF_37:
    .byte con_F7, $1C
    .byte con_pause + $07
    .byte con_s_bg_46
    .byte con_s_anim_00
    .byte con_s_cloud_FF_skip
    .byte con_rts



_scenario_B7C6_38:
    .byte con_F7, $17
    .byte con_pause + $01
    .byte con_s_bg_34
    .byte con_s_anim_00
    .byte con_s_cloud_FF_skip
    .byte con_rts



_scenario_BDB3_39:
    .byte con_pause + $B0
    .byte con_s_bg_38
    .byte con_s_anim_85
    .byte con_s_cloud_F0_default ; s_cloud_5B
    .byte con_rts



_scenario_B47C_3A:
    .byte con_mirror_condition, $00
    .byte con_soundID_delay, $2B, $09
    .byte con_pause + $3C
    .byte con_s_bg_72
    .byte con_s_anim_77
    .byte con_s_cloud_F0_default ; s_cloud_47
    .byte con_rts



sub_9F3E:
    .dbyt con_branch_short + con_bra_скорость_мяча
    .byte off_case_9F3E_00 - * ; медленный
    .byte off_case_9F3E_01 - * ; быстрый
    .byte off_case_9F3E_02 - * ; смертельный

        off_case_9F3E_00:
        ; медленный
            .dbyt con_branch_short + con_bra_разновидность_pass
            .byte off_case_9F3E_00_00 - * ; pass
            .byte off_case_9F3E_00_01 - * ; drive pass
            .byte off_case_9F3E_00_02 - * ; razor pass
            .byte off_case_9F3E_00_03 - * ; topspin pass

                off_case_9F3E_00_00:
                ; медленный/pass
                    .byte con_jmp
                    .word loc_BB4B_3C_00_00

                off_case_9F3E_00_01:
                ; медленный/drive pass
                    .byte con_jmp
                    .word loc_B502

                off_case_9F3E_00_02:
                ; медленный/razor pass
                    .byte con_mirror_toggle
                    .byte con_jmp
                    .word loc_B543

                off_case_9F3E_00_03:
                ; медленный/topspin pass
                    .byte con_mirror_toggle
                    .byte con_soundID_delay, $08, $02
                    .byte con_pause + $3C
                    .byte con_s_bg_53
                    .byte con_s_anim_1D
                    .byte con_s_cloud_clear
                    .byte con_mirror_toggle
                    .byte con_jsr
                    .word sub_BB7D
                    .byte con_rts

        off_case_9F3E_01:
        ; быстрый
        off_case_9F3E_02:
        ; смертельный
loc_BB4B_3C_00_00:
sub_BB4B_летящий_мяч_перед_принятием_финального_паса_перепасовки:
            .byte con_pause + $30
            .byte con_s_bg_1F
            .byte con_s_anim_4C
            .byte con_s_cloud_clear
            .byte con_rts



_scenario_9FBA_3D:
    .byte con_pause + $78
    .byte con_s_bg_FF_skip
    .byte con_s_anim_FF_skip
    .byte con_s_cloud_F0_default ; s_cloud_25
    .byte con_rts



_scenario_9C0A_3E:
    .byte con_mirror_condition, $00
    .byte con_jsr
    .word sub_9F3E
    .dbyt con_branch_short + con_bra_высота_мяча
    .byte off_case_3E_00 - * ; low
    .byte off_case_3E_01 - * ; high

        off_case_3E_01:
        ; low
            .byte con_jmp
            .word loc_B4AE_игрок_принимает_пас_на_грудь

        off_case_3E_00:
        ; high
            .byte con_jmp
            .word loc_B4A6_игрок_принимает_пас_на_ногу



_scenario_B754_3F:
    .byte con_mirror_condition, $00
    .byte con_jsr
    .word sub_9F3E
    .byte con_mirror_condition, $03       ; куда летит мяч
    .dbyt con_branch_short + con_bra_высота_мяча
    .byte off_case_3F_00 - * ; low
    .byte off_case_3F_01 - * ; high

        off_case_3F_00:
        ;  low
            .byte con_pause + $5A
            .byte con_s_bg_69
            .byte con_s_anim_8D
            .byte con_s_cloud_F0_default ; s_cloud_10
            loc_B763_2F_проверка_на_наличие_защитников:
            loc_B763_3F_01_проверка_на_наличие_защитников:
            .dbyt con_branch_short + con_bra_напали_ли_защитники
            .byte off_case_3F_00_00 - * ; нет защитников
            .byte off_case_3F_00_01 - * ; есть защитники

                off_case_3F_00_00:
                ;  low/нет защитников
                    .byte con_rts

                off_case_3F_00_01:
                ;  low/есть защитники
                    .byte con_pause + $5A
                    .byte con_s_bg_FF_skip
                    .byte con_s_anim_FF_skip
                    .byte con_s_cloud_F0_default ; s_cloud_6D
                    .byte con_rts

        off_case_3F_01:
        ; high
            .byte con_pause + $5A
            .byte con_s_bg_69
            .byte con_s_anim_8D
            .byte con_s_cloud_F0_default ; s_cloud_0A
            .byte con_jmp
            .word loc_B763_3F_01_проверка_на_наличие_защитников



_scenario_BD95_40:
    .byte con_pause + $78
    .byte con_s_bg_FF_skip
    .byte con_s_anim_FF_skip
    .byte con_s_cloud_F0_default ; s_cloud_E9
    .byte con_rts



_scenario_BD9A_41:
    .byte con_pause + $78
    .byte con_s_bg_FF_skip
    .byte con_s_anim_FF_skip
    .byte con_s_cloud_F0_default ; s_cloud_EA
    .byte con_jmp
    .word loc_BBC7_очистка



_scenario_BDA6_42:
    .byte con_pause + $78
    .byte con_s_bg_FF_skip
    .byte con_s_anim_FF_skip
    .byte con_s_cloud_F0_default ; s_cloud_22
    .byte con_jmp
    .word loc_BBC7_очистка



_scenario_BDAD_43:
    .byte con_mirror_off
    .byte con_pause + $46
    .byte con_s_bg_3A
    .byte con_s_anim_8F
    .byte con_s_cloud_F0_default ; s_cloud_E4
    .byte con_rts



_scenario_B7D5_44:
    .byte con_pause + $02
    .byte con_s_bg_70
    .byte con_s_anim_5C
    .byte con_s_cloud_FF_skip
    .byte con_rts



loc_B822_meon_говорит_что_drive_shot_бесполезен:
sub_B822_meon_говорит_что_drive_shot_бесполезен:
    .byte con_jsr
    .word sub_BBC7_очистка
    .byte con_mirror_off
    .byte con_pause + $8C
    .byte con_s_bg_32
    .byte con_s_anim_face_p_meon_gremio
    .byte con_s_cloud_F0_default ; s_cloud_79
    .byte con_jmp
    .word loc_BBC7_очистка



sub_B82E_meon_говорит_что_с_трудом_отбил_удар:
    .byte con_jsr
    .word sub_BBC7_очистка
    .byte con_mirror_off
    .byte con_pause + $64
    .byte con_s_bg_32
    .byte con_s_anim_face_p_meon_gremio
    .byte con_s_cloud_F0_default ; s_cloud_7A
    .byte con_jmp
    .word loc_BBC7_очистка



loc_B83A_tsubasa_замечает_слабость_meon_1й_раз:
    .byte con_jsr
    .word sub_BBC7_очистка
    .byte con_mirror_toggle
    .byte con_pause + $5A
    .byte con_s_bg_30
    .byte con_s_anim_face_p_tsubasa_my
    .byte con_s_cloud_F0_default ; s_cloud_7B
    .byte con_jsr
    .word sub_BBC7_очистка
    .byte con_mirror_toggle
    .byte con_rts



sub_B848_tsubasa_замечает_слабость_meon_2й_раз:
    .byte con_jsr
    .word sub_BBC7_очистка
    .byte con_mirror_toggle
    .byte con_pause + $5A
    .byte con_s_bg_30
    .byte con_s_anim_face_p_tsubasa_my
    .byte con_s_cloud_F0_default ; s_cloud_C3
    .byte con_soundID_delay, $31, $02
    .byte con_jsr
    .word sub_BBC7_очистка
    .byte con_mirror_toggle
    .byte con_rts



loc_B859_катсцена_озарения:
    .byte con_pause + $28
    .byte con_s_bg_FF_skip
    .byte con_s_anim_FF_skip
    .byte con_s_cloud_FF_skip
    .byte con_mirror_off
    .byte con_soundID_delay, $46, $02
    .byte con_pause + $EF
    .byte con_s_bg_19
    .byte con_s_anim_E0
    .byte con_s_cloud_clear
    .byte con_pause + $B4
    .byte con_s_bg_4D
    .byte con_s_anim_FF_skip
    .byte con_s_cloud_F0_default ; s_cloud_7C
    .byte con_pause + $B0
    .byte con_s_bg_FF_skip
    .byte con_s_anim_FF_skip
    .byte con_s_cloud_FF_skip
    .byte con_pause + $C8
    .byte con_s_bg_3F
    .byte con_s_anim_DE
    .byte con_s_cloud_F0_default ; s_cloud_7D
    .byte con_pause + $83
    .byte con_s_bg_FF_skip
    .byte con_s_anim_FF_skip
    .byte con_s_cloud_FF_skip
    .byte con_pause + $8C
    .byte con_s_bg_FF_skip
    .byte con_s_anim_FF_skip
    .byte con_s_cloud_FF_skip
    .byte con_pause + $9C
    .byte con_s_bg_FF_skip
    .byte con_s_anim_FF_skip
    .byte con_s_cloud_F0_default ; s_cloud_7E
    .byte con_pause + $9C
    .byte con_s_bg_FF_skip
    .byte con_s_anim_FF_skip
    .byte con_s_cloud_FF_skip
    .byte con_soundID_delay, $01, $02
    .byte con_F7, $06
    .byte con_pause + $56
    .byte con_s_bg_FF_skip
    .byte con_s_anim_FF_skip
    .byte con_s_cloud_F0_default ; s_cloud_7F
    .byte con_soundID_delay, $52, $02
    .byte con_F7, $1F
    .byte con_pause + $90
    .byte con_s_bg_30
    .byte con_s_anim_face_p_tsubasa_my
    .byte con_s_cloud_F0_default ; s_cloud_80
    .byte con_F7, $1F
    .byte con_pause + $90
    .byte con_s_bg_FF_skip
    .byte con_s_anim_FF_skip
    .byte con_s_cloud_FF_skip
    .byte con_soundID_delay, $7F, $02
    .byte con_jmp
    .word loc_BBC7_очистка



ofs_B9FB_01_активировать_drive_tiger:
    .byte con_pause + $01
    .byte con_s_bg_71
    .byte con_s_anim_00
    .byte con_s_cloud_clear
    .byte con_F7, $1F
    .byte con_soundID_delay, $30, $02
    .byte con_pause + $A0
    .byte con_s_bg_30
    .byte con_s_anim_face_p_tsubasa_my
    .byte con_s_cloud_F0_default ; s_cloud_96
    .byte con_F7, $1F
    .byte con_pause + $80
    .byte con_s_bg_FF_skip
    .byte con_s_anim_FF_skip
    .byte con_s_cloud_FF_skip
    .byte con_jsr
    .word sub_BBC7_очистка
ofs_BA11_00_не_активировать_drive_tiger:
    .byte con_rts



sub_BA2C_замах_и_удар_по_мячу_обычным_ударом:
    .byte con_mirror_off
    .byte con_pause + $28
    .byte con_s_bg_12
    .byte con_s_anim_61
    .byte con_s_cloud_F0_default ; s_cloud_72
    .byte con_F7, $0B
    .byte con_soundID_delay, $12, $02
    .byte con_pause + $10
    .byte con_s_bg_10
    .byte con_s_anim_62
    .byte con_s_cloud_FF_skip
    .byte con_rts



loc_BA68_кипер_не_угадывает_сторону_в_пк:
    .dbyt con_branch_short + con_bra_результат_действия_защитника
    .byte off_case_BA68_00 - * ; гол
    .byte off_case_BA68_01 - * ; кипер отбивает (нереальный случай)
    .byte off_case_BA68_02 - * ; штанга

        off_case_BA68_00:
        ; гол
            .byte con_jmp
            .word loc_BA7F_гол_при_ударе_11м

        off_case_BA68_01:
        ; кипер отбивает (нереальный случай)
            .byte con_rts
            ; закомментированный код из оригинала
;            .dbyt con_branch_short + con_bra_plr_wakashimazu_gertise
;            .byte off_case_BA68_01_00 - * ; другой_кипер
;            .byte off_case_BA68_01_01 - * ; wakashimazu
;            .byte off_case_BA68_01_02 - * ; gertise
;
;                off_case_BA68_01_00:
;                ; другой_кипер
;                    .byte con_soundID_delay, $2B, $21
;                    .byte con_pause + $3C
;                    .byte con_s_bg_0E
;                    .byte con_s_anim_27
;                    .byte con_s_cloud_F0_default ; s_cloud_DD
;                    .byte con_soundID_delay, $7E, $02
;                    .byte con_jmp
;                    .word loc_BBC7_очистка
;
;                off_case_BA68_01_01:
;                off_case_BA68_01_02:
;                ; wakashimazu, gertise
;                    .byte con_soundID_delay, $2B, $21
;                    .byte con_pause + $3C
;                    .byte con_s_bg_0F
;                    .byte con_s_anim_2B
;                    .byte con_s_cloud_F0_default ; s_cloud_DD
;                    .byte con_soundID_delay, $7E, $02
;                    .byte con_jmp
;                    .word loc_BBC7_очистка
    
        off_case_BA68_02:
        ; штанга
            .byte con_jmp
            .word loc_BADE_штанга_при_ударе_11м



loc_BA7F_гол_при_ударе_11м:
    .byte con_F7, $03
    .byte con_soundID_delay, $5D, $02
    .dbyt con_branch_short + con_bra_порвана_ли_сетка
    .byte off_case_BA7F_00 - * ; сетка не порвана
    .byte off_case_BA7F_01 - * ; сетка порвана

        off_case_BA7F_00:
        ; сетка не порвана
            .byte con_pause + $64
            .byte con_s_bg_07
            .byte con_s_anim_44
            .byte con_s_cloud_F0_default ; s_cloud_28
            .byte con_rts

        off_case_BA7F_01:
        ; сетка порвана
            .byte con_pause + $64
            .byte con_s_bg_07
            .byte con_s_anim_45
            .byte con_s_cloud_F0_default ; s_cloud_28
            .byte con_rts



loc_BADE_штанга_при_ударе_11м:
    .byte con_F7, $1F
    .byte con_soundID_delay, $63, $02
    .byte con_pause + $10
    .byte con_s_bg_06
    .byte con_s_anim_43
    .byte con_s_cloud_F0_default ; s_cloud_18
    .byte con_soundID_delay, $7E, $02
    .byte con_pause + $3C
    .byte con_s_bg_1E
    .byte con_s_anim_42
    .byte con_s_cloud_FF_skip
    .byte con_rts



sub_BB5D_одна_из_анимаций_drive_shot:
    .byte con_soundID_delay, $05, $02
    .byte con_pause + $32
    .byte con_s_bg_13
    .byte con_s_anim_0E
    .byte con_s_cloud_clear
    .byte con_rts



loc_BB65_одна_из_анимаций_drive_shot:
    .byte con_soundID_delay, $04, $02
    .byte con_pause + $3C
    .byte con_s_bg_00
    .byte con_s_anim_0F
    .byte con_s_cloud_clear
    .byte con_rts



sub_BB6D:
    .byte con_soundID_delay, $04, $02
    .byte con_pause + $32
    .byte con_s_bg_20
    .byte con_s_anim_0F
    .byte con_s_cloud_clear
    .byte con_rts



sub_BB75:
    .byte con_soundID_delay, $07, $02
    .byte con_pause + $36
    .byte con_s_bg_02
    .byte con_s_anim_11
    .byte con_s_cloud_clear
    .byte con_rts



sub_BB7D:
    .byte con_soundID_delay, $06, $02
    .byte con_pause + $32
    .byte con_s_bg_4E
    .byte con_s_anim_12
    .byte con_s_cloud_clear
    .byte con_rts



sub_BB85:
    .byte con_mirror_toggle
    .byte con_soundID_delay, $5E, $02
    .byte con_pause + $1B
    .byte con_s_bg_64
    .byte con_s_anim_67
    .byte con_s_cloud_clear
    .byte con_mirror_toggle
    .byte con_rts



sub_BB8F:
    .byte con_soundID_delay, $06, $02
    .byte con_pause + $30
    .byte con_s_bg_00
    .byte con_s_anim_1A
    .byte con_s_cloud_clear
    .byte con_rts



sub_BB97:
    .byte con_soundID_delay, $06, $02
    .byte con_pause + $2A
    .byte con_s_bg_27
    .byte con_s_anim_1A
    .byte con_s_cloud_clear
    .byte con_rts



sub_BB9F:
    .byte con_soundID_delay, $08, $02
    .byte con_pause + $3C
    .byte con_s_bg_4B
    .byte con_s_anim_1D
    .byte con_s_cloud_clear
    .byte con_rts



sub_BBA7_полет_twin_shot_1:
    .byte con_soundID_delay, $09, $02
    .byte con_pause + $32
    .byte con_s_bg_20
    .byte con_s_anim_1E
    .byte con_s_cloud_clear
    .byte con_rts



sub_BBAF_полет_twin_shot_2:
    .byte con_soundID_delay, $09, $02
    .byte con_pause + $4B
    .byte con_s_bg_02
    .byte con_s_anim_1F
    .byte con_s_cloud_clear
    .byte con_rts



sub_BBB7:
    .byte con_soundID_delay, $0B, $02
    .byte con_pause + $2D
    .byte con_s_bg_60
    .byte con_s_anim_3C
    .byte con_s_cloud_clear
    .byte con_rts



sub_BBBF:
    .byte con_soundID_delay, $0B, $02
    .byte con_pause + $2D
    .byte con_s_bg_48
    .byte con_s_anim_3C
    .byte con_s_cloud_clear
    .byte con_rts



loc_BBC7_очистка:
sub_BBC7_очистка:
    .byte con_pause + $01
    .byte con_s_bg_FF_skip
    .byte con_s_anim_FF_skip
    .byte con_s_cloud_clear
    .byte con_rts



loc_BBDA:
    .byte con_soundID_delay, $2B, $05
    .byte con_pause + $3C
    .byte con_s_bg_72
    .byte con_s_anim_66
    .byte con_s_cloud_F0_default ; s_cloud_59
    .byte con_rts



_scenario_BDB8_45:
    .byte con_pause + $B0
    .byte con_s_bg_38
    .byte con_s_anim_85
    .byte con_s_cloud_F0_default ; s_cloud_sudden_death_в_пк
    .byte con_rts



_scenario_BDBD_46:
    .dbyt con_branch_short + con_bra_где_сейчас_мяч
    .byte off_case_46_00 - * ; мяч у атакующего на земле
    .byte off_case_46_01 - * ; летит низкий мяч
    .byte off_case_46_02 - * ; летит высокий мяч

        off_case_46_00:
        off_case_46_01:
        ; мяч у атакующего на земле/летит низкий мяч
            .byte con_mirror_off
            .byte con_pause + $78
            .byte con_s_bg_30
            .byte con_s_anim_face_p_tsubasa_my
            .byte con_s_cloud_F0_default ; s_cloud_4A
            .byte con_jsr
            .word sub_AD13
            .byte con_jmp
            .word loc_BDDD_cyclone

        off_case_46_02:
        ; летит высокий мяч
            .byte con_mirror_off
            .byte con_pause + $28
            .byte con_s_bg_02
            .byte con_s_anim_56
            .byte con_s_cloud_clear
            .byte con_pause + $78
            .byte con_s_bg_30
            .byte con_s_anim_face_p_tsubasa_my
            .byte con_s_cloud_F0_default ; s_cloud_4A
            .byte con_soundID_delay, $2B, $19
            .byte con_pause + $28
            .byte con_s_bg_29
            .byte con_s_anim_C6
            .byte con_s_cloud_clear
        loc_BDDD_cyclone:
            .byte con_jsr
            .word sub_B0A7_tsubasa_cyclone_полная_анимация
            .byte con_soundID_delay, $24, $02
            .byte con_pause + $38
            .byte con_s_bg_35
            .byte con_s_anim_10
            .byte con_s_cloud_clear
            .byte con_jsr
            .word sub_BB5D_одна_из_анимаций_drive_shot
            .byte con_soundID_delay, $24, $02
            .byte con_F7, $33
            .byte con_pause + $3C
            .byte con_s_bg_27
            .byte con_s_anim_51
            .byte con_s_cloud_clear
            .byte con_jmp
            .word loc_A267_goal_и_рваная_сетка



_scenario_9C19_47:
    .byte con_jsr
    .word sub_9C36_анимация_гола_в_левые_ворота_и_сообщения
    .byte con_jsr
    .word sub_BBC7_очистка
    .byte con_pause + $5A
    .byte con_s_bg_30
    .byte con_s_anim_face_p_diaz_argentina
    .byte con_s_cloud_F0_default ; s_cloud_78
    .byte con_jmp
    .word loc_BBC7_очистка



_scenario_BE01_50:
    .byte con_mirror_off
    .byte con_jsr
    .word sub_BDFC
    .byte con_jsr
    .word sub_BDF6
    .byte con_pause + $10
    .byte con_s_bg_30
    .byte con_s_anim_face_p_tsubasa_my
    .byte con_s_cloud_FF_skip
    .byte con_rts



_scenario_BE0D_51:
    .byte con_jsr
    .word sub_BDFC
    .byte con_jsr
    .word sub_BDF6
    .byte con_pause + $10
    .byte con_s_bg_30
    .byte con_s_anim_face_p_misaki_japan
    .byte con_s_cloud_FF_skip
    .byte con_rts



_scenario_BE18_52:
    .byte con_jsr
    .word sub_BDF6
    .byte con_pause + $10
    .byte con_s_bg_31
    .byte con_s_anim_face_p_hyuga_my
    .byte con_s_cloud_FF_skip
    .byte con_rts



_scenario_BE20_53:
    .byte con_jsr
    .word sub_BDF6
    .byte con_mirror_off
    .byte con_pause + $10
    .byte con_s_bg_32
    .byte con_s_anim_face_p_wakabayashi_my
    .byte con_s_cloud_FF_skip
    .byte con_mirror_off
    .byte con_rts



_scenario_BE2A_54:
    .byte con_jsr
    .word sub_BDF6
    .byte con_pause + $10
    .byte con_s_bg_30
    .byte con_s_anim_face_p_matsuyama_furano
    .byte con_s_cloud_FF_skip
    .byte con_rts



_scenario_BE32_55:
    .byte con_jsr
    .word sub_BDF6
    .byte con_pause + $10
    .byte con_s_bg_30
    .byte con_s_anim_face_p_misugi_musashi
    .byte con_s_cloud_FF_skip
    .byte con_rts



_scenario_BE3A_56:
    .byte con_jsr
    .word sub_BDF6
    .byte con_pause + $10
    .byte con_s_bg_30
    .byte con_s_anim_face_p_ishizaki_my
    .byte con_s_cloud_FF_skip
    .byte con_rts



_scenario_BE42_57:
    .byte con_jsr
    .word sub_BDF6
    .byte con_pause + $10
    .byte con_s_bg_30
    .byte con_s_anim_face_p_soda_tatsunami
    .byte con_s_cloud_FF_skip
    .byte con_rts



_scenario_BE4A_58:
    .byte con_jsr
    .word sub_BDF6
    .byte con_pause + $10
    .byte con_s_bg_30
    .byte con_s_anim_face_p_nitta_my
    .byte con_s_cloud_FF_skip
    .byte con_rts



_scenario_BE52_59:
    .byte con_jsr
    .word sub_BDF6
    .byte con_pause + $10
    .byte con_s_bg_30
    .byte con_s_anim_face_p_jito_kunimi
    .byte con_s_cloud_FF_skip
    .byte con_rts



_scenario_BE5A_5A:
    .byte con_jsr
    .word sub_BDF6
    .byte con_pause + $50
    .byte con_s_bg_30
    .byte con_s_anim_face_p_masao_akita
    .byte con_s_cloud_FF_skip
    .byte con_jsr
    .word sub_BDF6
    .byte con_pause + $10
    .byte con_s_bg_30
    .byte con_s_anim_face_p_masao_akita
    .byte con_s_cloud_FF_skip
    .byte con_rts



_scenario_BE69_5B:
    .byte con_jsr
    .word sub_BDF6
    .byte con_mirror_off
    .byte con_pause + $10
    .byte con_s_bg_33
    .byte con_s_anim_face_p_wakashimazu_my
    .byte con_s_cloud_FF_skip
    .byte con_mirror_off
    .byte con_rts



_scenario_BE73_5C:
    .byte con_mirror_off
    .byte con_jsr
    .word sub_BDF6
    .byte con_pause + $10
    .byte con_s_bg_30
    .byte con_s_anim_face_p_carlos_flamengo
    .byte con_s_cloud_FF_skip
    .byte con_rts



_scenario_BE7C_5D:
    .byte con_jsr
    .word sub_BDF6
    .byte con_mirror_off
    .byte con_pause + $10
    .byte con_s_bg_32
    .byte con_s_anim_face_p_meon_gremio
    .byte con_s_cloud_FF_skip
    .byte con_mirror_off
    .byte con_rts



_scenario_BE86_5E:
    .byte con_jsr
    .word sub_BDF6
    .byte con_pause + $10
    .byte con_s_bg_30
    .byte con_s_anim_face_p_kaltz_hamburger_sv
    .byte con_s_cloud_FF_skip
    .byte con_rts



_scenario_BE8E_5F:
    .byte con_jsr
    .word sub_BDF6
    .byte con_pause + $10
    .byte con_s_bg_30
    .byte con_s_anim_face_p_pierre_france
    .byte con_s_cloud_FF_skip
    .byte con_rts



_scenario_BE96_60:
    .byte con_jsr
    .word sub_BDF6
    .byte con_pause + $10
    .byte con_s_bg_30
    .byte con_s_anim_face_p_napoleon_france
    .byte con_s_cloud_FF_skip
    .byte con_rts



_scenario_BE9E_61:
    .byte con_jsr
    .word sub_BDF6
    .byte con_pause + $10
    .byte con_s_bg_30
    .byte con_s_anim_face_p_diaz_argentina
    .byte con_s_cloud_FF_skip
    .byte con_rts



_scenario_BEA6_62:
    .byte con_jsr
    .word sub_BDF6
    .byte con_pause + $10
    .byte con_s_bg_30
    .byte con_s_anim_face_p_pascal_argentina
    .byte con_s_cloud_FF_skip
    .byte con_rts



_scenario_BEAE_63:
    .byte con_jsr
    .word sub_BDF6
    .byte con_pause + $10
    .byte con_s_bg_30
    .byte con_s_anim_face_p_schneider_west_germany
    .byte con_s_cloud_FF_skip
    .byte con_rts



_scenario_BEB6_64:
    .byte con_jsr
    .word sub_BDF6
    .byte con_pause + $10
    .byte con_s_bg_30
    .byte con_s_anim_face_p_victorino_uruguay
    .byte con_s_cloud_FF_skip
    .byte con_rts



_scenario_BEBE_65:
    .byte con_jsr
    .word sub_BDF6
    .byte con_pause + $10
    .byte con_s_bg_30
    .byte con_s_anim_face_p_coimbra_brazil
    .byte con_s_cloud_FF_skip
    .byte con_rts



_scenario_BEF7_68:
    .byte con_F7, $03
    .byte con_pause + $A0
    .byte con_s_bg_07
    .byte con_s_anim_45
    .byte con_s_cloud_FF_skip
    .byte con_mirror_off
    .byte con_F7, $13
    .byte con_pause + $78
    .byte con_s_bg_0A
    .byte con_s_anim_48
    .byte con_s_cloud_FF_skip
    .byte con_rts



_scenario_BF05_69:
    .byte con_mirror_off
    .byte con_pause + $28
    .byte con_s_bg_3C
    .byte con_s_anim_61
    .byte con_s_cloud_FF_skip
    .byte con_jmp
    .word loc_AB39_обычный_удар_по_мячу_и_полет_мяча_от_игрока



_scenario_AA62_6A:
    .byte con_jmp
    .word loc_AA62_heel_lift



_scenario_BF0D_6B:
    .byte con_jsr
    .word sub_A45D_soda_razor_tackle
    .byte con_jmp
    .word loc_A0C3_успешный_отбор_мяча_подкатом



_scenario_BF13_6C:
    .byte con_jsr
    .word sub_A7B1_прыжок_перед_face_block
    .byte con_F7, $0F
    .byte con_pause + $1E
    .byte con_s_bg_05
    .byte con_s_anim_00
    .byte con_s_cloud_FF_skip
    .byte con_F7, $2A
    .byte con_pause + $23
    .byte con_s_bg_6A
    .byte con_s_anim_BD
    .byte con_s_cloud_FF_skip
    .byte con_rts



_scenario_BF23_6D:
    .byte con_pause + $3C
    .byte con_s_bg_28
    .byte con_s_anim_C6
    .byte con_s_cloud_FF_skip
    .byte con_pause + $64
    .byte con_s_bg_52
    .byte con_s_anim_E5
    .byte con_s_cloud_FF_skip
    .byte con_rts



_scenario_BF2C_6E:
    .byte con_mirror_off
    .byte con_pause + $32
    .byte con_s_bg_1F
    .byte con_s_anim_64
    .byte con_s_cloud_FF_skip
    .byte con_mirror_toggle
    .byte con_F8, $04
    .byte con_F7, $3A
    .byte con_pause + $32
    .byte con_s_bg_23
    .byte con_s_anim_76
    .byte con_s_cloud_FF_skip
    .byte con_mirror_toggle
    .byte con_F7, $10
    .byte con_pause + $20
    .byte con_s_bg_05
    .byte con_s_anim_00
    .byte con_s_cloud_FF_skip
    .byte con_pause + $28
    .byte con_s_bg_12
    .byte con_s_anim_E1
    .byte con_s_cloud_FF_skip
    .byte con_F7, $1E
    .byte con_pause + $20
    .byte con_s_bg_05
    .byte con_s_anim_FF_skip
    .byte con_s_cloud_FF_skip
    .byte con_pause + $32
    .byte con_s_bg_20
    .byte con_s_anim_4B
    .byte con_s_cloud_FF_skip
    .byte con_pause + $48
    .byte con_s_bg_2A
    .byte con_s_anim_3B
    .byte con_s_cloud_FF_skip
    .byte con_rts



_scenario_BF54_6F:
    .byte con_jsr
    .word sub_A34D_отскок_вакашимазу_от_штанги
    .byte con_moving_bg, $01
    .byte con_soundID_delay, $2A, $21
    .byte con_pause + $30
    .byte con_s_bg_2E
    .byte con_s_anim_2D
    .byte con_s_cloud_FF_skip
    .byte con_rts



_scenario_BF61_70:
    .byte con_jsr
    .word sub_B4E7_конечный_полет_обычного_удара_с_земли
    .byte con_jsr
    .word sub_A24F_штанга_без_звука
    .byte con_jsr
    .word sub_A258_полет_мяча_после_отскока_от_штанги
    .byte con_jsr
    .word sub_A212_добивание_отскока_от_штанги_соперником
    .byte con_jsr
    .word sub_A2F4_сообщение_oops_на_мигающем_белом_фоне
    .byte con_jmp
    .word loc_A364_рваный_мяч



_scenario_BF73_71:
    .byte con_jsr
    .word sub_9FD6_кипер_делает_нижний_dive
    .byte con_jsr
    .word sub_A2F4_сообщение_oops_на_мигающем_белом_фоне
    .byte con_jsr
    .word sub_A08D_кипер_промахивается_dive_после_удара_1_на_1
    .byte con_jmp
    .word loc_A0B6_защитник_касается_мяча_при_спасении_ворот



_scenario_BF7F_72:
    .byte con_F7, $33
    .byte con_pause + $20
    .byte con_s_bg_6B
    .byte con_s_anim_E3
    .byte con_s_cloud_FF_skip
    .byte con_pause + $14
    .byte con_s_bg_02
    .byte con_s_anim_1C
    .byte con_s_cloud_FF_skip
    .byte con_pause + $20
    .byte con_s_bg_56
    .byte con_s_anim_49
    .byte con_s_cloud_FF_skip
    .byte con_F7, $1A
    .byte con_pause + $5A
    .byte con_s_bg_61
    .byte con_s_anim_30
    .byte con_s_cloud_FF_skip
    .byte con_rts



_scenario_BF94_73:
    .byte con_jsr
    .word sub_A32D_полет_удара_со_звуком
    .byte con_pause + $78
    .byte con_s_bg_48
    .byte con_s_anim_75
    .byte con_s_cloud_FF_skip
    .byte con_rts



_scenario_BF9C_74:
    .byte con_jsr
    .word sub_B3C0
    .byte con_jsr
    .word sub_BFCB
    .byte con_jsr
    .word sub_BFC1
    .byte con_mirror_toggle
    .byte con_jsr
    .word sub_BFCB
    .byte con_jsr
    .word sub_BFC6
    .byte con_jsr
    .word sub_BFCB
    .byte con_jsr
    .word sub_BFC1
    .byte con_mirror_toggle
    .byte con_jsr
    .word sub_BFCB
    .byte con_jsr
    .word sub_BFC6
    .byte con_jsr
    .word sub_BFCB
    .byte con_pause + $20
    .byte con_s_bg_1F
    .byte con_s_anim_02
    .byte con_s_cloud_FF_skip
    .byte con_rts



_scenario_BFD2_75:
    .byte con_jsr
    .word sub_B2AD_misaki_разгоняется_и_прыгает_перед_jumping_volley
    .byte con_jmp
    .word loc_B251_misaki_jumping_volley_в_процессе



_scenario_B01B_76:
    .byte con_jmp
    .word loc_B01B_overhead_без_очистки



_scenario_BFD8_77:
    .byte con_mirror_off
    .byte con_pause + $E0
    .byte con_s_bg_2D
    .byte con_s_anim_79
    .byte con_s_cloud_FF_skip
    .byte con_rts



_scenario_A197_78:
    .byte con_jmp
    .word loc_A197_защитник_делает_clear_головой_из_своей_штрафной



loc_AB6B:
    .byte con_F7, $02
    .byte con_pause + $10
    .byte con_s_bg_FF_skip
    .byte con_s_anim_FF_skip
    .byte con_s_cloud_clear
    .byte con_rts



loc_B018_overhead_с_очисткой:
    .byte con_jsr
    .word sub_BBC7_очистка
loc_B01B_overhead_без_очистки:
    .byte con_mirror_toggle
    .byte con_soundID_delay, $1A, $31
    .byte con_pause + $64
    .byte con_s_bg_4C
    .byte con_s_anim_BF
    .byte con_s_cloud_F0_default ; s_cloud_49
    .byte con_mirror_toggle
    .byte con_rts



sub_BDF6:
    .byte con_mirror_toggle
    .byte con_pause + $1D
    .byte con_s_bg_71
    .byte con_s_anim_00
    .byte con_s_cloud_FF_skip
    .byte con_rts



sub_BDFC:
    .byte con_pause + $1D
    .byte con_s_bg_71
    .byte con_s_anim_00
    .byte con_s_cloud_FF_skip
    .byte con_rts



sub_BFC1:
    .byte con_pause + $28
    .byte con_s_bg_1E
    .byte con_s_anim_13
    .byte con_s_cloud_FF_skip
    .byte con_rts



sub_BFC6:
    .byte con_pause + $28
    .byte con_s_bg_1E
    .byte con_s_anim_14
    .byte con_s_cloud_FF_skip
    .byte con_rts



sub_BFCB:
    .byte con_F7, $0F
    .byte con_pause + $14
    .byte con_s_bg_05
    .byte con_s_anim_00
    .byte con_s_cloud_FF_skip
    .byte con_rts



sub_BF00_защитник_отбирает_ногой_мяч_у_атакующего:
    .byte con_moving_bg, $02
    .byte con_soundID_delay, $2D, $02
    .byte con_pause + $46
    .byte con_s_bg_57
    .byte con_s_anim_2E
    .byte con_s_cloud_F0_default ; s_cloud_05
    .byte con_mirror_toggle
    .byte con_rts



loc_BF01_успешный_отбор_мяча_подкатом_с_убийством_атакующего:
    .byte con_moving_bg, $02
    .byte con_soundID_delay, $2D, $02
    .byte con_pause + $3C
    .byte con_s_bg_57
    .byte con_s_anim_15
    .byte con_s_cloud_F0_default ; s_cloud_03
    .byte con_rts



loc_BF02_защитник_промахивается_ногой_по_высокому_мячу:
    .byte con_pause + $3C
    .byte con_s_bg_6C
    .byte con_s_anim_06
    .byte con_s_cloud_F0_default ; s_cloud_07
    .byte con_rts



sub_BF03_ishizaki_face_block_в_процессе:
    .byte con_F7, $0F
    .byte con_pause + $1E
    .byte con_s_bg_05
    .byte con_s_anim_00
    .byte con_s_cloud_FF_skip
    .byte con_F7, $2A
    .byte con_soundID_delay, $2E, $02
    .byte con_pause + $23
    .byte con_s_bg_6A
    .byte con_s_anim_BD
    .byte con_s_cloud_F0_default ; s_cloud_56
    .byte con_jsr
    .word sub_BBC7_очистка
    .byte con_pause + $3C
    .byte con_s_bg_1F
    .byte con_s_anim_13
    .byte con_s_cloud_F0_default ; s_cloud_57
    .byte con_rts



sub_BF04_кипер_собирается_напороться_кулаком_на_мяч:
    .byte con_pause + $28
    .byte con_s_bg_0E
    .byte con_s_anim_2C
    .byte con_s_cloud_clear
    .byte con_rts



ofs_93BE_00_кипер_с_трудом_обивает:
    .byte con_jsr
    .word sub_A14B_кипер_дотягивается_до_мяча_кулаком_и_проверка_на_wakashimazu_gertise
    .byte con_jmp
    .word loc_9572_белое_мерцание_мяч_улетает_попытка_включить_drive_tiger



ofs_93C4_01_drive_shot_бесполезен:
    .byte con_jsr
    .word sub_A14B_кипер_дотягивается_до_мяча_кулаком_и_проверка_на_wakashimazu_gertise
    .byte con_jsr
    .word sub_A308_белое_мерцание
    .byte con_jsr
    .word sub_A371_мяч_улетает_в_сторону
    .byte con_jmp
    .word loc_B822_meon_говорит_что_drive_shot_бесполезен



ofs_93D0_02_meon_с_трудом_отбивает_1й_раз:
    .byte con_jsr
    .word sub_B82E_meon_говорит_что_с_трудом_отбил_удар
    .byte con_jsr
    .word sub_A14B_кипер_дотягивается_до_мяча_кулаком_и_проверка_на_wakashimazu_gertise
    .byte con_jsr
    .word sub_A308_белое_мерцание
    .byte con_jsr
    .word sub_A371_мяч_улетает_в_сторону
    .byte con_jmp
    .word loc_B83A_tsubasa_замечает_слабость_meon_1й_раз



ofs_93DF_03_meon_с_трудом_отбивает_2й_раз_и_озарение:
; 0x0213EF
; bzk garbage драйв оверхеда
    .byte con_jsr
    .word sub_B82E_meon_говорит_что_с_трудом_отбил_удар
    .byte con_jsr
    .word sub_A14B_кипер_дотягивается_до_мяча_кулаком_и_проверка_на_wakashimazu_gertise
    .byte con_jsr
    .word sub_A308_белое_мерцание
    .byte con_jsr
    .word sub_B848_tsubasa_замечает_слабость_meon_2й_раз
    .byte con_jsr
    .word sub_A371_мяч_улетает_в_сторону
    .byte con_jmp
    .word loc_B859_катсцена_озарения



ofs_93FB_00:
    .byte con_jsr
    .word sub_A131_кипер_легко_отбивает_и_проверка_на_wakashimazu_gertise
    .byte con_jsr
    .word sub_A36A_кипер_идеально_засейвил
    .byte con_jmp
    .word loc_9EF0_попытка_включить_drive_tiger



ofs_9404_01:
    .byte con_jsr
    .word sub_B822_meon_говорит_что_drive_shot_бесполезен
    .byte con_jsr
    .word sub_A131_кипер_легко_отбивает_и_проверка_на_wakashimazu_gertise
    .byte con_jmp
    .word loc_A36A_кипер_идеально_засейвил



ofs_940D_02:
    .byte con_jsr
    .word sub_B82E_meon_говорит_что_с_трудом_отбил_удар
    .byte con_jsr
    .word sub_A131_кипер_легко_отбивает_и_проверка_на_wakashimazu_gertise
    .byte con_jsr
    .word sub_A36A_кипер_идеально_засейвил
    .byte con_jmp
    .word loc_B83A_tsubasa_замечает_слабость_meon_1й_раз



ofs_9419_03:
    .byte con_jsr
    .word sub_B82E_meon_говорит_что_с_трудом_отбил_удар
    .byte con_jsr
    .word sub_A131_кипер_легко_отбивает_и_проверка_на_wakashimazu_gertise
    .byte con_jsr
    .word sub_B848_tsubasa_замечает_слабость_meon_2й_раз
    .byte con_jsr
    .word sub_A36A_кипер_идеально_засейвил
    .byte con_jmp
    .word loc_B859_катсцена_озарения



ofs_946A_00_кипер_убивается_и_мяч_отлетает:
    .byte con_jsr
    .word sub_A122_кипер_собирается_коснуться_мяча_кулаком
    .byte con_jmp
    .word loc_95BC_убийство_кипера_и_мяч_отлетает



.out .sprintf("Free bytes in bank 90: 0x%04X [%d]", ($C000 - *), ($C000 - *))



