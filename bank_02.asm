.segment "BANK_02"
.include "copy_bank_ram.inc"
.include "copy_bank_val.inc"
.org $A000



.export sub_0x004010
.export sub_0x004170
.export loc_0x00422B
.export loc_0x0042BF
.export loc_0x0042F8
.export loc_0x0043E8_управление_музыкальным_экраном
.export sub_0x004494_подпрограммы_байта_F8_в_катсценах
.export sub_0x004865_номера_игроков_и_расстановка_твоей_команды
.export sub_0x00487E_номера_игроков_и_расстановка_твоей_команды
.export sub_0x0048DE



sub_0x004010:
C D - - - - 0x004010 02:A000: A9 00     LDA #< ram_oam
C - - - - - 0x004012 02:A002: 8D 03 20  STA $2003
C - - - - - 0x004015 02:A005: A9 02     LDA #> ram_oam
C - - - - - 0x004017 02:A007: 8D 14 40  STA $4014
C - - - - - 0x00401A 02:A00A: AD 28 06  LDA ram_индекс_буфера
C - - - - - 0x00401D 02:A00D: F0 4E     BEQ bra_A05D
C - - - - - 0x00401F 02:A00F: 2C 29 06  BIT ram_0629
C - - - - - 0x004022 02:A012: 70 49     BVS bra_A05D
C - - - - - 0x004024 02:A014: A9 00     LDA #$00
C - - - - - 0x004026 02:A016: 8D 01 20  STA $2001
C - - - - - 0x004029 02:A019: A2 00     LDX #$00
bra_A01B_loop:
C - - - - - 0x00402B 02:A01B: A0 80     LDY #$80
C - - - - - 0x00402D 02:A01D: BD E8 05  LDA ram_05E8,X
C - - - - - 0x004030 02:A020: 10 04     BPL bra_A026
C - - - - - 0x004032 02:A022: 29 3F     AND #$3F
C - - - - - 0x004034 02:A024: A0 84     LDY #$84
bra_A026:
C - - - - - 0x004036 02:A026: 8C 00 20  STY $2000
C - - - - - 0x004039 02:A029: A8        TAY
C - - - - - 0x00403A 02:A02A: BD EA 05  LDA ram_облако,X
C - - - - - 0x00403D 02:A02D: 8D 06 20  STA $2006
C - - - - - 0x004040 02:A030: BD E9 05  LDA ram_таймер_облака_ХЗ,X
C - - - - - 0x004043 02:A033: 8D 06 20  STA $2006
bra_A036_loop:
C - - - - - 0x004046 02:A036: BD EB 05  LDA ram_05EB,X
C - - - - - 0x004049 02:A039: 8D 07 20  STA $2007
C - - - - - 0x00404C 02:A03C: E8        INX
C - - - - - 0x00404D 02:A03D: 88        DEY
C - - - - - 0x00404E 02:A03E: D0 F6     BNE bra_A036_loop
C - - - - - 0x004050 02:A040: E8        INX
C - - - - - 0x004051 02:A041: E8        INX
C - - - - - 0x004052 02:A042: E8        INX
C - - - - - 0x004053 02:A043: BD E8 05  LDA ram_05E8,X
C - - - - - 0x004056 02:A046: D0 D3     BNE bra_A01B_loop
C - - - - - 0x004058 02:A048: A9 00     LDA #$00
C - - - - - 0x00405A 02:A04A: 8D 28 06  STA ram_индекс_буфера
C - - - - - 0x00405D 02:A04D: A9 3F     LDA #> $3F00
C - - - - - 0x00405F 02:A04F: 8D 06 20  STA $2006
C - - - - - 0x004062 02:A052: A9 00     LDA #< $3F00
C - - - - - 0x004064 02:A054: 8D 06 20  STA $2006
; A = 00
C - - - - - 0x004067 02:A057: 8D 06 20  STA $2006
C - - - - - 0x00406A 02:A05A: 8D 06 20  STA $2006
bra_A05D:
C - - - - - 0x00406D 02:A05D: A5 21     LDA ram_for_2001
C - - - - - 0x00406F 02:A05F: 8D 01 20  STA $2001
C - - - - - 0x004072 02:A062: A5 79     LDA ram_0079
C - - - - - 0x004074 02:A064: 10 0D     BPL bra_A073
- - - - - - 0x004076 02:A066: A5 7B     LDA ram_007B
- - - - - - 0x004078 02:A068: 8D 06 20  STA $2006
- - - - - - 0x00407B 02:A06B: A5 7A     LDA ram_007A
- - - - - - 0x00407D 02:A06D: 8D 06 20  STA $2006
- - - - - - 0x004080 02:A070: 4C 91 A0  JMP loc_A091
bra_A073:
C - - - - - 0x004083 02:A073: 46 20     LSR ram_0020
C - - - - - 0x004085 02:A075: 46 20     LSR ram_0020
C - - - - - 0x004087 02:A077: A5 45     LDA ram_0045
C - - - - - 0x004089 02:A079: 4A        LSR
C - - - - - 0x00408A 02:A07A: 26 20     ROL ram_0020
C - - - - - 0x00408C 02:A07C: A5 7B     LDA ram_007B
C - - - - - 0x00408E 02:A07E: 4A        LSR
C - - - - - 0x00408F 02:A07F: 26 20     ROL ram_0020
C - - - - - 0x004091 02:A081: A5 20     LDA ram_0020
C - - - - - 0x004093 02:A083: 8D 00 20  STA $2000
C - - - - - 0x004096 02:A086: A5 7A     LDA ram_007A
C - - - - - 0x004098 02:A088: 8D 05 20  STA $2005
C - - - - - 0x00409B 02:A08B: A6 44     LDX ram_0044
C - - - - - 0x00409D 02:A08D: CA        DEX
C - - - - - 0x00409E 02:A08E: 8E 05 20  STX $2005
loc_A091:
C - - - - - 0x0040A1 02:A091: A0 16     LDY #$16
C - - - - - 0x0040A3 02:A093: 20 CB A1  JSR sub_A1CB_банксвич_CHR_00_01
C - - - - - 0x0040A6 02:A096: A5 79     LDA ram_0079
C - - - - - 0x0040A8 02:A098: F0 10     BEQ bra_A0AA
C - - - - - 0x0040AA 02:A09A: 0A        ASL
                                        LDY #$80
C - - - - - 0x0040B1 02:A0A1: 8D 01 E0  STY $5204
                                        SEC
                                        SBC #$01
                                        STA ram_линия_irq
C - - - - - 0x0040AB 02:A09B: 8D 00 C0  STA $5203
C - - - - - 0x0040B4 02:A0A4: A9 04     LDA #$04
C - - - - - 0x0040B6 02:A0A6: 85 78     STA ram_0078
C - - - - - 0x0040B8 02:A0A8: 10 05     BPL bra_A0AF
bra_A0AA:
                                        STA $5204
                                        STA ram_0078
bra_A0AF:
C - - - - - 0x0040C4 02:A0B4: A5 9E     LDA ram_for_5124
C - - - - - 0x0040C6 02:A0B6: 8D 01 80  STA $5124
C - - - - - 0x0040CE 02:A0BE: A5 9F     LDA ram_for_5125
C - - - - - 0x0040D0 02:A0C0: 8D 01 80  STA $5125
C - - - - - 0x0040D8 02:A0C8: A5 A0     LDA ram_for_5126
C - - - - - 0x0040DA 02:A0CA: 8D 01 80  STA $5126
C - - - - - 0x0040E2 02:A0D2: A5 A1     LDA ram_for_5127
C - - - - - 0x0040E4 02:A0D4: 8D 01 80  STA $5127
; bzk optimize, зачем тут опрос джойстиков если уже есть такая подпрограмма
C - - - - - 0x0040E7 02:A0D7: A2 02     LDX #$01
C - - - - - 0x0040E9 02:A0D9: A9 04     LDA #$04
C - - - - - 0x0040EB 02:A0DB: 85 40     STA ram_0040
bra_A0DD_loop:
C - - - - - 0x0040ED 02:A0DD: B5 1B     LDA ram_btn_hold,X
bra_A0DF_loop:
C - - - - - 0x0040EF 02:A0DF: 85 41     STA ram_0041
C - - - - - 0x0040F1 02:A0E1: A9 01     LDA #$01
C - - - - - 0x0040F3 02:A0E3: 8D 16 40  STA $4016
C - - - - - 0x0040F6 02:A0E6: A9 00     LDA #$00
C - - - - - 0x0040F8 02:A0E8: 8D 16 40  STA $4016
C - - - - - 0x0040FB 02:A0EB: A0 08     LDY #$08
bra_A0ED_loop:
C - - - - - 0x0040FD 02:A0ED: BD 15 40  LDA $4016,X
C - - - - - 0x004100 02:A0F0: 4A        LSR
C - - - - - 0x004101 02:A0F1: 26 3F     ROL ram_003F
C - - - - - 0x004103 02:A0F3: 29 01     AND #$01
C - - - - - 0x004105 02:A0F5: 05 3F     ORA ram_003F
C - - - - - 0x004107 02:A0F7: 85 3F     STA ram_003F
C - - - - - 0x004109 02:A0F9: 88        DEY
C - - - - - 0x00410A 02:A0FA: D0 F1     BNE bra_A0ED_loop
C - - - - - 0x00410C 02:A0FC: C5 41     CMP ram_0041
C - - - - - 0x00410E 02:A0FE: F0 07     BEQ bra_A107
C - - - - - 0x004110 02:A100: C6 40     DEC ram_0040
C - - - - - 0x004112 02:A102: D0 DB     BNE bra_A0DF_loop
- - - - - - 0x004114 02:A104: 4C 13 A1  JMP loc_A113
bra_A107:
C - - - - - 0x004117 02:A107: B5 1B     LDA ram_btn_hold,X
C - - - - - 0x004119 02:A109: 45 3F     EOR ram_003F
C - - - - - 0x00411B 02:A10B: 25 3F     AND ram_003F
C - - - - - 0x00411D 02:A10D: 95 1D     STA ram_btn_press,X
C - - - - - 0x00411F 02:A10F: A5 3F     LDA ram_003F
C - - - - - 0x004121 02:A111: 95 1B     STA ram_btn_hold,X
loc_A113:
C - - - - - 0x004123 02:A113: CA        DEX
C - - - - - 0x004124 02:A114: D0 C7     BPL bra_A0DD_loop
C - - - - - 0x004126 02:A116: 18        CLC
C - - - - - 0x004127 02:A117: A5 E1     LDA ram_рандом_1
C - - - - - 0x004129 02:A119: 69 83     ADC #$83
C - - - - - 0x00412B 02:A11B: 85 E1     STA ram_рандом_1
C - - - - - 0x00412D 02:A11D: A5 E2     LDA ram_рандом_2
C - - - - - 0x00412F 02:A11F: 69 0D     ADC #$0D
C - - - - - 0x004131 02:A121: 85 E2     STA ram_рандом_2
C - - - - - 0x004133 02:A123: A5 E3     LDA ram_рандом_3
C - - - - - 0x004135 02:A125: 69 11     ADC #$11
C - - - - - 0x004137 02:A127: 85 E3     STA ram_рандом_3
C - - - - - 0x004139 02:A129: A9 00     LDA #$00
C - - - - - 0x00413B 02:A12B: 85 46     STA ram_0046
C - - - - - 0x00413D 02:A12D: 85 47     STA ram_0047
C - - - - - 0x00413F 02:A12F: A5 1B     LDA ram_флаг_nmi
C - - - - - 0x004141 02:A131: 09 80     ORA #$80
C - - - - - 0x004143 02:A133: 85 1B     STA ram_флаг_nmi
C - - - - - 0x004145 02:A135: E6 3A     INC ram_003A
C - - - - - 0x004147 02:A137: 60        RTS



sub_0x004170:
                                        BIT $5204
C - - - - - 0x004170 02:A160: 8D 00 E0  LDA #$80
C - - - - - 0x004173 02:A163: 8D 01 E0  STA $5204
C - - - - - 0x004176 02:A166: A6 78     LDX ram_0078
C - - - - - 0x004178 02:A168: B5 78     LDA ram_0078,X
C - - - - - 0x00417A 02:A16A: 10 21     BPL bra_A18D
C - - - - - 0x00417C 02:A16C: A0 06     LDY #$06
bra_A16E_garbage_loop:
C - - - - - 0x00417E 02:A16E: 88        DEY
C - - - - - 0x00417F 02:A16F: D0 FD     BNE bra_A16E_garbage_loop
C - - - - - 0x004181 02:A171: B5 79     LDA ram_0079,X
C - - - - - 0x004183 02:A173: B4 7A     LDY ram_007A,X
C - - - - - 0x004185 02:A175: 8C 06 20  STY $2006
C - - - - - 0x004188 02:A178: 8D 06 20  STA $2006
C - - - - - 0x00418B 02:A17B: A5 20     LDA ram_0020
C - - - - - 0x00418D 02:A17D: 29 FC     AND #$FC
C - - - - - 0x00418F 02:A17F: 8D 00 20  STA $2000
C - - - - - 0x004192 02:A182: A9 00     LDA #$00
C - - - - - 0x004194 02:A184: 8D 05 20  STA $2005
C - - - - - 0x004197 02:A187: 8D 05 20  STA $2005
C - - - - - 0x00419A 02:A18A: 4C A8 A1  JMP loc_A1A8
bra_A18D:
C - - - - - 0x00419D 02:A18D: A0 02     LDY #$02
bra_A18F_garbage_loop:
C - - - - - 0x00419F 02:A18F: 88        DEY
C - - - - - 0x0041A0 02:A190: D0 FD     BNE bra_A18F_garbage_loop
C - - - - - 0x0041A2 02:A192: 46 20     LSR ram_0020
C - - - - - 0x0041A4 02:A194: B5 7A     LDA ram_007A,X
C - - - - - 0x0041A6 02:A196: 4A        LSR
C - - - - - 0x0041A7 02:A197: 26 20     ROL ram_0020
C - - - - - 0x0041A9 02:A199: A5 20     LDA ram_0020
C - - - - - 0x0041AB 02:A19B: 8D 00 20  STA $2000
C - - - - - 0x0041AE 02:A19E: B5 79     LDA ram_0079,X
C - - - - - 0x0041B0 02:A1A0: 8D 05 20  STA $2005
C - - - - - 0x0041B3 02:A1A3: A9 00     LDA #$00
C - - - - - 0x0041B5 02:A1A5: 8D 05 20  STA $2005
loc_A1A8:
C D - - - - 0x0041B8 02:A1A8: B5 78     LDA ram_0078,X
C - - - - - 0x0041BA 02:A1AA: 29 7F     AND #$7F
C - - - - - 0x0041BC 02:A1AC: F0 12     BEQ bra_A1C0
C - - - - - 0x0041BE 02:A1AE: E0 13     CPX #$13
C - - - - - 0x0041C0 02:A1B0: F0 0E     BEQ bra_A1C0
C - - - - - 0x0041C2 02:A1B2: E6 78     INC ram_0078
C - - - - - 0x0041C4 02:A1B4: E6 78     INC ram_0078
C - - - - - 0x0041C6 02:A1B6: E6 78     INC ram_0078
C - - - - - 0x0041C8 02:A1B8: 0A        ASL
                                        CLC
                                        ADC ram_линия_irq
                                        ADC #$02
                                        STA ram_линия_irq
C - - - - - 0x0041C9 02:A1B9: 8D 00 C0  STA $5203
C - - - - - 0x0041CF 02:A1BF: 60        RTS
bra_A1C0:
C - - - - - 0x0041D0 02:A1C0: 8D 00 E0  STA $5204
C - - - - - 0x0041D3 02:A1C3: 85 78     STA ram_0078
C - - - - - 0x0041D5 02:A1C5: A0 18     LDY #$18    ; 0090-0091
sub_A1CB_банксвич_CHR_00_01:
C - - - - - 0x0041DB 02:A1CB: B6 78     LDX ram_008E - $16,Y
                                        STX $5128
C - - - - - 0x0041E4 02:A1D4: 8E 01 80  STX $5120
                                        INX
                                        STX $5129
                                        STX $5121
C - - - - - 0x0041E7 02:A1D7: B6 79     LDX ram_008F - $16,Y
                                        STX $512A
C - - - - - 0x0041F0 02:A1E0: 8E 01 80  STX $5122
                                        INX
                                        STX $512B
                                        STX $5123
C - - - - - 0x0041F3 02:A1E3: 60        RTS



loc_0x00422B:
C D - - - - 0x00422B 02:A21B: A2 FF     LDX #$FF
C - - - - - 0x00422D 02:A21D: 9A        TXS
C - - - - - 0x00422E 02:A21E: 48        PHA
; запись требуется чтобы после матча не было графических гличей
C - - - - - 0x00422F 02:A21F: A9 00     LDA #$44
C - - - - - 0x004231 02:A221: 8D 00 A0  STA $5105
C - - - - - 0x004234 02:A224: A5 1B     LDA ram_флаг_nmi
C - - - - - 0x004236 02:A226: 09 40     ORA #$40
C - - - - - 0x004238 02:A228: 85 1B     STA ram_флаг_nmi
C - - - - - 0x00423A 02:A22A: A9 00     LDA #$00
C - - - - - 0x00423C 02:A22C: A0 E8     JSR sub_A2E6_очистить_оперативку
C - - - - - 0x004258 02:A248: 20 06 AA  JSR sub_AA06_очистить_0468_06FF
C - - - - - 0x00425B 02:A24B: A9 0F     LDA #$0F
C - - - - - 0x00425D 02:A24D: A0 E0     LDY #$E0
bra_A24F_loop:
C - - - - - 0x00425F 02:A24F: 99 4A 05  STA ram_062A - $E0,Y
C - - - - - 0x004262 02:A252: C8        INY
C - - - - - 0x004263 02:A253: D0 FA     BNE bra_A24F_loop
C - - - - - 0x004265 02:A255: 20 43 9A  JSR sub_0x001A53
C - - - - - 0x004268 02:A258: A9 00     LDA #$00
C - - - - - 0x00426A 02:A25A: 85 4A     STA ram_степень_яркости_фона
C - - - - - 0x00426C 02:A25C: 85 4B     STA ram_степень_яркости_спрайтов
C - - - - - 0x00426E 02:A25E: 20 A0 98  JSR sub_0x0018B0_очистка_двух_nametable
C - - - - - 0x004271 02:A261: 20 7F 9B  JSR sub_0x001B8F_очистить_обе_памяти_спрайтов
C - - - - - 0x004274 02:A264: A9 02     LDA #con_chr_bank + $02
C - - - - - 0x004276 02:A266: 85 8F     STA ram_008F
C - - - - - 0x004278 02:A268: 85 91     STA ram_0091
C - - - - - 0x00427A 02:A26A: 68        PLA
C - - - - - 0x00427B 02:A26B: F0 14     BEQ bra_A281_это_был_reset
; срабатывает в перерыве после первого тайма
C - - - - - 0x00427D 02:A26D: A2 01     LDX #$01
C - - - - - 0x00427F 02:A26F: A9 FF     LDA #< (ofs_0x000010_действие_после_конца_тайма - $01)
C - - - - - 0x004281 02:A271: 95 00     STA ram_0000,X
C - - - - - 0x004283 02:A273: A9 7F     LDA #> (ofs_0x000010_действие_после_конца_тайма - $01)
C - - - - - 0x004285 02:A275: 95 01     STA ram_0001,X
C - - - - - 0x004287 02:A277: A0 28     LDY #$28
C - - - - - 0x004289 02:A279: A9 00     LDA #$00
C - - - - - 0x00428B 02:A27B: 20 69 9F  JSR sub_0x001F79
C - - - - - 0x00428E 02:A27E: 4C 92 A2  JMP loc_A292
bra_A281_это_был_reset:
C - - - - - 0x004291 02:A281: A2 01     LDX #$01
C - - - - - 0x004293 02:A283: A9 1E     LDA #< (ofs_0x00002F - $01)
C - - - - - 0x004295 02:A285: 95 00     STA ram_0000,X
C - - - - - 0x004297 02:A287: A9 80     LDA #> (ofs_0x00002F - $01)
C - - - - - 0x004299 02:A289: 95 01     STA ram_0001,X
C - - - - - 0x00429B 02:A28B: A0 28     LDY #$28
C - - - - - 0x00429D 02:A28D: A9 00     LDA #$00
C - - - - - 0x00429F 02:A28F: 20 69 9F  JSR sub_0x001F79
loc_A292:
C D - - - - 0x0042A2 02:A292: A2 15     LDX #$15
C - - - - - 0x0042A4 02:A294: A9 EC     LDA #< (ofs_0x0002FD - $01)
C - - - - - 0x0042A6 02:A296: 95 00     STA ram_0000,X
C - - - - - 0x0042A8 02:A298: A9 82     LDA #> (ofs_0x0002FD - $01)
C - - - - - 0x0042AA 02:A29A: 95 01     STA ram_0001,X
C - - - - - 0x0042AC 02:A29C: A0 F0     LDY #$F0
C - - - - - 0x0042AE 02:A29E: A9 00     LDA #$00
C - - - - - 0x0042B0 02:A2A0: 20 69 9F  JSR sub_0x001F79
C - - - - - 0x0042B3 02:A2A3: A5 20     LDA ram_0020
C - - - - - 0x0042B5 02:A2A5: 09 80     ORA #$80
C - - - - - 0x0042B7 02:A2A7: 85 20     STA ram_0020
C - - - - - 0x0042B9 02:A2A9: 8D 00 20  STA $2000
C - - - - - 0x0042BC 02:A2AC: 4C ED 9E  JMP loc_0x001EFD



loc_0x0042BF:
C D - - - - 0x0042BF 02:A2AF: 20 F0 99  JSR sub_0x001A00_выход_из_экрана
C - - - - - 0x0042C2 02:A2B2: 20 A0 98  JSR sub_0x0018B0_очистка_двух_nametable
C - - - - - 0x0042C5 02:A2B5: 20 7F 9B  JSR sub_0x001B8F_очистить_обе_памяти_спрайтов
C - - - - - 0x0042C8 02:A2B8: A5 20     LDA ram_0020
C - - - - - 0x0042CA 02:A2BA: 29 7F     AND #$7F
C - - - - - 0x0042CC 02:A2BC: 8D 00 20  STA $2000
C - - - - - 0x0042CF 02:A2BF: 85 20     STA ram_0020
C - - - - - 0x0042D4 02:A2C4: A9 00     LDA #$00
C - - - - - 0x0042D1 02:A2C1: 8D 00 E0  STA $5204
; сработало перед появлением экрана с разводкой
C - - - - - 0x0042D6 02:A2C6: A0 E8     JSR sub_A2E6_очистить_оперативку
C - - - - - 0x0042F2 02:A2E2: 20 06 AA  JSR sub_AA06_очистить_0468_06FF
C - - - - - 0x0042F5 02:A2E5: 4C 57 C5  JMP loc_0x03C6CE



sub_A2E6_очистить_оперативку:
    LDA #$00
    LDY #$17
@loop_очистить_0001_0018:
    STA ram_0001
    DEY
    BPL @loop_очистить_0001_0018
    LDY #$A5 + $01
@loop_очистить_003A_00DF:
    STA ram_003A - $01
    DEY
    BNE @loop_очистить_003A_00DF
    RTS



loc_0x0042F8:
C D - - - - 0x0042F8 02:A2E8: A5 57     LDA ram_0057
C - - - - - 0x0042FA 02:A2EA: 30 4C     BMI bra_A338
C - - - - - 0x0042FC 02:A2EC: 85 ED     STA ram_00ED
C - - - - - 0x0042FE 02:A2EE: A9 00     LDA #$00
C - - - - - 0x004300 02:A2F0: A0 FA     LDY #$05
bra_A2F2_loop:
; 00E6-00EB
C - - - - - 0x004302 02:A2F2: 99 EC FF  STA ram_00E6,Y
C - - - - - 0x004305 02:A2F5: C8        DEY
C - - - - - 0x004306 02:A2F6: D0 FA     BPL bra_A2F2_loop
loc_A2F8:
C D - - - - 0x004308 02:A2F8: A9 01     LDA #$01
C - - - - - 0x00430A 02:A2FA: 20 A8 9F  JSR sub_0x001FB8_задержка_кадра
C - - - - - 0x00430D 02:A2FD: A4 ED     LDY ram_00ED
C - - - - - 0x00430F 02:A2FF: A9 00     LDA #$00
C - - - - - 0x004311 02:A301: 85 EC     STA ram_00EC
bra_A303_loop:
C - - - - - 0x004313 02:A303: 98        TYA
C - - - - - 0x004314 02:A304: 29 0F     AND #$0F
C - - - - - 0x004316 02:A306: 4A        LSR
C - - - - - 0x004317 02:A307: AA        TAX
C - - - - - 0x004318 02:A308: B9 DF AA  LDA tbl_AADF,Y
C - - - - - 0x00431B 02:A30B: 18        CLC
C - - - - - 0x00431C 02:A30C: 75 E6     ADC ram_00E6,X
C - - - - - 0x00431E 02:A30E: 95 E6     STA ram_00E6,X
C - - - - - 0x004320 02:A310: A6 EC     LDX ram_00EC
C - - - - - 0x004322 02:A312: B9 E0 AA  LDA tbl_AADF + $01,Y
C - - - - - 0x004325 02:A315: 75 7A     ADC ram_007A,X
C - - - - - 0x004327 02:A317: 95 7A     STA ram_007A,X
C - - - - - 0x004329 02:A319: B9 E0 AA  LDA tbl_AADF + $01,Y
C - - - - - 0x00432C 02:A31C: 10 04     BPL bra_A322
C - - - - - 0x00432E 02:A31E: A9 FF     LDA #$FF
C - - - - - 0x004330 02:A320: D0 02     BNE bra_A324
bra_A322:
C - - - - - 0x004332 02:A322: A9 00     LDA #$00
bra_A324:
C - - - - - 0x004334 02:A324: 75 7B     ADC ram_007B,X
C - - - - - 0x004336 02:A326: 95 7B     STA ram_007B,X
C - - - - - 0x004338 02:A328: C8        INY
C - - - - - 0x004339 02:A329: C8        INY
C - - - - - 0x00433A 02:A32A: A5 EC     LDA ram_00EC
C - - - - - 0x00433C 02:A32C: 18        CLC
C - - - - - 0x00433D 02:A32D: 69 03     ADC #$03
C - - - - - 0x00433F 02:A32F: 85 EC     STA ram_00EC
C - - - - - 0x004341 02:A331: C9 0F     CMP #$0F
C - - - - - 0x004343 02:A333: D0 CE     BNE bra_A303_loop
C - - - - - 0x004345 02:A335: 4C F8 A2  JMP loc_A2F8
bra_A338:
C - - - - - 0x004348 02:A338: C9 81     CMP #$81
C - - - - - 0x00434A 02:A33A: F0 67     BEQ bra_A3A3
C - - - - - 0x00434C 02:A33C: A2 67     LDX #$67
                                        STX $5127
C - - - - - 0x004353 02:A343: A9 00     LDA #$00
C - - - - - 0x004355 02:A345: 85 ED     STA ram_00ED
C - - - - - 0x004357 02:A347: A8        TAY
C - - - - - 0x004358 02:A348: A2 78     LDX #$78
bra_A34A_loop:
C - - - - - 0x00435A 02:A34A: A5 EC     LDA ram_00EC
C - - - - - 0x00435C 02:A34C: 29 01     AND #$01
C - - - - - 0x00435E 02:A34E: 09 F2     ORA #$F2
C - - - - - 0x004360 02:A350: 9D 69 04  STA ram_copy_spr_T,X
C - - - - - 0x004363 02:A353: A9 03     LDA #$03
C - - - - - 0x004365 02:A355: 9D 6A 04  STA ram_copy_spr_A,X
C - - - - - 0x004368 02:A358: 98        TYA
C - - - - - 0x004369 02:A359: 9D 68 04  STA ram_copy_spr_Y,X
C - - - - - 0x00436C 02:A35C: 18        CLC
C - - - - - 0x00436D 02:A35D: 69 03     ADC #$03
C - - - - - 0x00436F 02:A35F: A8        TAY
C - - - - - 0x004370 02:A360: A5 EC     LDA ram_00EC
C - - - - - 0x004372 02:A362: 9D 6B 04  STA ram_copy_spr_X,X
C - - - - - 0x004375 02:A365: 18        CLC
C - - - - - 0x004376 02:A366: 69 0D     ADC #$0D
C - - - - - 0x004378 02:A368: 85 EC     STA ram_00EC
C - - - - - 0x00437A 02:A36A: E8        INX
C - - - - - 0x00437B 02:A36B: E8        INX
C - - - - - 0x00437C 02:A36C: E8        INX
C - - - - - 0x00437D 02:A36D: E8        INX
C - - - - - 0x00437E 02:A36E: E0 FC     CPX #$FC
C - - - - - 0x004380 02:A370: D0 D8     BNE bra_A34A_loop
loc_A372:
C D - - - - 0x004382 02:A372: A9 01     LDA #$01
C - - - - - 0x004384 02:A374: 20 A8 9F  JSR sub_0x001FB8_задержка_кадра
C - - - - - 0x004387 02:A377: A2 78     LDX #$78
bra_A379_loop:
C - - - - - 0x004389 02:A379: 8A        TXA
C - - - - - 0x00438A 02:A37A: 29 0C     AND #$0C
C - - - - - 0x00438C 02:A37C: A8        TAY
C - - - - - 0x00438D 02:A37D: BD 68 04  LDA ram_copy_spr_Y,X
C - - - - - 0x004390 02:A380: D9 1F AB  CMP tbl_AB1F,Y
C - - - - - 0x004393 02:A383: 90 02     BCC bra_A387
C - - - - - 0x004395 02:A385: A9 00     LDA #$00
bra_A387:
C - - - - - 0x004397 02:A387: 18        CLC
C - - - - - 0x004398 02:A388: 79 21 AB  ADC tbl_AB1F + $02,Y
C - - - - - 0x00439B 02:A38B: 9D 68 04  STA ram_copy_spr_Y,X
C - - - - - 0x00439E 02:A38E: BD 6B 04  LDA ram_copy_spr_X,X
C - - - - - 0x0043A1 02:A391: 18        CLC
C - - - - - 0x0043A2 02:A392: 79 22 AB  ADC tbl_AB1F + $03,Y
C - - - - - 0x0043A5 02:A395: 9D 6B 04  STA ram_copy_spr_X,X
C - - - - - 0x0043A8 02:A398: E8        INX
C - - - - - 0x0043A9 02:A399: E8        INX
C - - - - - 0x0043AA 02:A39A: E8        INX
C - - - - - 0x0043AB 02:A39B: E8        INX
C - - - - - 0x0043AC 02:A39C: E0 FC     CPX #$FC
C - - - - - 0x0043AE 02:A39E: D0 D9     BNE bra_A379_loop
C - - - - - 0x0043B0 02:A3A0: 4C 72 A3  JMP loc_A372
bra_A3A3:
C - - - - - 0x0043B3 02:A3A3: AD 68 05  LDA ram_0568
C - - - - - 0x0043B6 02:A3A6: 09 10     ORA #$10
C - - - - - 0x0043B8 02:A3A8: 8D 68 05  STA ram_0568
loc_A3AB:
C D - - - - 0x0043BB 02:A3AB: A9 04     LDA #$04
C - - - - - 0x0043BD 02:A3AD: 20 A8 9F  JSR sub_0x001FB8_задержка_кадра
C - - - - - 0x0043C0 02:A3B0: A9 08     LDA #$08
C - - - - - 0x0043C2 02:A3B2: 85 44     STA ram_0044
C - - - - - 0x0043C4 02:A3B4: 85 46     STA ram_0046
C - - - - - 0x0043C6 02:A3B6: AD 6D 05  LDA ram_056D
C - - - - - 0x0043C9 02:A3B9: 38        SEC
C - - - - - 0x0043CA 02:A3BA: E9 04     SBC #$04
C - - - - - 0x0043CC 02:A3BC: 8D 6D 05  STA ram_056D
C - - - - - 0x0043CF 02:A3BF: A9 04     LDA #$04
C - - - - - 0x0043D1 02:A3C1: 20 A8 9F  JSR sub_0x001FB8_задержка_кадра
C - - - - - 0x0043D4 02:A3C4: A9 00     LDA #$00
C - - - - - 0x0043D6 02:A3C6: 85 44     STA ram_0044
C - - - - - 0x0043D8 02:A3C8: A9 F8     LDA #$F8
C - - - - - 0x0043DA 02:A3CA: 85 46     STA ram_0046
C - - - - - 0x0043DC 02:A3CC: AD 6D 05  LDA ram_056D
C - - - - - 0x0043DF 02:A3CF: 18        CLC
C - - - - - 0x0043E0 02:A3D0: 69 04     ADC #$04
C - - - - - 0x0043E2 02:A3D2: 8D 6D 05  STA ram_056D
C - - - - - 0x0043E5 02:A3D5: 4C AB A3  JMP loc_A3AB



loc_0x0043E8_управление_музыкальным_экраном:
; в 00E7 хранится порядковый номер счетчика звука
C D - - - - 0x0043E8 02:A3D8: 20 F0 99  JSR sub_0x001A00_выход_из_экрана
C - - - - - 0x0043EB 02:A3DB: A9 61     LDA #con_cutscene + $48      ; катсцена с музыкальным экраном
C - - - - - 0x0043ED 02:A3DD: 20 64 84  JSR sub_0x000474_воспроизвести_катсцену
C - - - - - 0x0043F0 02:A3E0: 20 A9 82  JSR sub_0x0002B9_ожидание_завершения_катсцены
C - - - - - 0x0043F3 02:A3E3: A0 F8     LDY #$F8
bra_A3E5_loop:
C - - - - - 0x0043F5 02:A3E5: B9 84 A3  LDA tbl_A47C_атрибуты_спрайтов_цифр_звука - $F8,Y
C - - - - - 0x0043F8 02:A3E8: 99 60 04  STA ram_0558 - $F8,Y
C - - - - - 0x0043FB 02:A3EB: C8        INY
C - - - - - 0x0043FC 02:A3EC: D0 F7     BNE bra_A3E5_loop
C - - - - - 0x0043FE 02:A3EE: A9 00     LDA #$00
C - - - - - 0x004402 02:A3F2: 20 54 A4  JSR sub_A454_выбрать_тайлы_цифр
bra_A3F5_вверх_вниз_не_нажаты:
C - - - - - 0x004405 02:A3F5: A9 01     LDA #$01
C - - - - - 0x004407 02:A3F7: 20 A8 9F  JSR sub_0x001FB8_задержка_кадра
C - - - - - 0x00440A 02:A3FA: A5 1E     LDA ram_btn_press
C - - - - - 0x00440C 02:A3FC: 29 10     AND #con_btn_Start
C - - - - - 0x00440E 02:A3FE: D0 45     BNE bra_A445_RTS_из_музыкального_экрана
C - - - - - 0x004410 02:A400: 24 1E     BIT ram_btn_press
C - - - - - 0x004412 02:A402: 30 07     BMI bra_A40B_воспроизвести_звук   ; con_btn_A
C - - - - - 0x004414 02:A404: A9 01     LDA #$01
C - - - - - 0x004416 02:A406: 70 08     BVS bra_A410_выключить_звук       ; con_btn_B
C - - - - - 0x004418 02:A408: 4C 13 A4  JMP loc_A413_кнопки_не_нажаты
bra_A40B_воспроизвести_звук:
C - - - - - 0x00441B 02:A40B: A6 E7     LDX ram_00E7
C - - - - - 0x00441D 02:A40D: BD 2F AB  LDA tbl_AB2F_номера_звуков_для_музыкального_экрана,X
bra_A410_выключить_звук:
C - - - - - 0x004420 02:A410: 8D 00 07  STA ram_звук
loc_A413_кнопки_не_нажаты:
C D - - - - 0x004423 02:A413: 20 20 AA  JSR sub_AA20_проверка_нажатий_вверх_вниз
C - - - - - 0x004426 02:A416: 90 DD     BCC bra_A3F5_вверх_вниз_не_нажаты
C - - - - - 0x004428 02:A418: A2 10     LDX #$10
loc_A41A:
C D - - - - 0x00442A 02:A41A: 86 E6     STX ram_00E6
C - - - - - 0x00442C 02:A41C: A8        TAY
C - - - - - 0x00442D 02:A41D: 18        CLC
C - - - - - 0x00442E 02:A41E: 65 E7     ADC ram_00E7
C - - - - - 0x004430 02:A420: C9 64     CMP #$64
C - - - - - 0x004432 02:A422: 90 09     BCC bra_A42D_запись_номера
- - - - - - 0x004434 02:A424: 98        TYA
- - - - - - 0x004435 02:A425: 30 04     BMI bra_A42B_было_нажато_вниз
- - - - - - 0x004437 02:A427: A9 00     LDA #$00
- - - - - - 0x004439 02:A429: F0 02     BEQ bra_A42D_запись_номера
bra_A42B_было_нажато_вниз:
- - - - - - 0x00443B 02:A42B: A9 63     LDA #$63
bra_A42D_запись_номера:
C - - - - - 0x00443F 02:A42F: 20 54 A4  JSR sub_A454_выбрать_тайлы_цифр
bra_A432_loop:
C - - - - - 0x004442 02:A432: A9 01     LDA #$01
C - - - - - 0x004444 02:A434: 20 A8 9F  JSR sub_0x001FB8_задержка_кадра
C - - - - - 0x004447 02:A437: 20 20 AA  JSR sub_AA20_проверка_нажатий_вверх_вниз
C - - - - - 0x00444A 02:A43A: 90 B9     BCC bra_A3F5_вверх_вниз_не_нажаты
C - - - - - 0x00444C 02:A43C: C6 E6     DEC ram_00E6
C - - - - - 0x00444E 02:A43E: D0 F2     BNE bra_A432_loop
C - - - - - 0x004450 02:A440: A2 04     LDX #$04
C - - - - - 0x004452 02:A442: 4C 1A A4  JMP loc_A41A
bra_A445_RTS_из_музыкального_экрана:
C - - - - - 0x004455 02:A445: A9 01     LDA #$01
C - - - - - 0x004457 02:A447: 8D 00 07  STA ram_звук
C - - - - - 0x00445A 02:A44A: A9 00     LDA #$00
C - - - - - 0x00445C 02:A44C: 85 4C     STA ram_004C
C - - - - - 0x00445E 02:A44E: 20 F0 99  JSR sub_0x001A00_выход_из_экрана
C - - - - - 0x004461 02:A451: 4C 53 80  JMP loc_0x000063



sub_A454_выбрать_тайлы_цифр:
C - - - - - 0x004464 02:A454: A5 E7     STA ram_00E7
C - - - - - 0x004466 02:A456: 20 7C 9E  JSR sub_0x001E8C_перевод_из_HEX_в_DEC
C - - - - - 0x004469 02:A459: A5 EC     LDA ram_00EC
C - - - - - 0x00446B 02:A45B: 4A        LSR           ; десятки числа
C - - - - - 0x00446C 02:A45C: 4A        LSR
C - - - - - 0x00446D 02:A45D: 4A        LSR
C - - - - - 0x00446E 02:A45E: 4A        LSR
C - - - - - 0x00446F 02:A45F: A8        TAY
C - - - - - 0x004470 02:A460: B9 72 A4  LDA tbl_A472_номера_тайлов_цифр,Y
C - - - - - 0x004473 02:A463: 8D 59 05  STA ram_0559
C - - - - - 0x004476 02:A466: A5 EC     LDA ram_00EC
C - - - - - 0x004478 02:A468: 29 0F     AND #$0F       ; единицы числа
C - - - - - 0x00447A 02:A46A: A8        TAY
C - - - - - 0x00447B 02:A46B: B9 72 A4  LDA tbl_A472_номера_тайлов_цифр,Y
C - - - - - 0x00447E 02:A46E: 8D 5D 05  STA ram_055D
C - - - - - 0x004481 02:A471: 60        RTS



tbl_A472_номера_тайлов_цифр:
; bzk optimize, нужно только из-за того что на музыкальном экране цифра 0 это буква О
    .byte $10       ; 0
    .byte $18       ; 1
    .byte $19       ; 2
    .byte $1A       ; 3
    .byte $1B       ; 4
    .byte $1C       ; 5
    .byte $1D       ; 6
    .byte $1E       ; 7
    .byte $1F       ; 8
    .byte $20       ; 9

tbl_A47C_атрибуты_спрайтов_цифр_звука:
; Y, тайл, палитра, X
    .byte $80, $10, $03, $90    ; левая цифра
    .byte $80, $10, $03, $98    ; правая цифра



sub_0x004494_подпрограммы_байта_F8_в_катсценах:
C D - - - - 0x004494 02:A484: A5 ED     LDA ram_00ED
C - - - - - 0x004496 02:A486: 0A        ASL
C - - - - - 0x004497 02:A487: AA        TAX
C - - - - - 0x004498 02:A488: BD 92 A4  LDA tbl_A491_подпрограмма + $01,X
C - - - - - 0x00449B 02:A48B: 48        PHA
C - - - - - 0x00449C 02:A48C: BD 91 A4  LDA tbl_A491_подпрограмма,X
C - - - - - 0x00449F 02:A48F: 48        PHA
C - - - - - 0x0044A0 02:A490: 60        RTS



tbl_A491_подпрограмма:
- D - - - - 0x0044A1 02:A491: C0 A4     .word ofs_008_A4C1_00 - $01
- D - - - - 0x0044A3 02:A493: 59 A5     .word ofs_008_A55A_01 - $01
- D - - - - 0x0044A5 02:A495: 7B A5     .word ofs_008_A57C_02 - $01
- - - - - - 0x0044A7 02:A497: 81 A5     .word ofs_008_A582_03 - $01
- - - - - - 0x0044A9 02:A499: A2 A5     .word ofs_008_A5A3_04 - $01
- D - - - - 0x0044AB 02:A49B: A8 A5     .word ofs_008_A5A9_05 - $01
- D - - - - 0x0044AD 02:A49D: B0 A5     .word ofs_008_A5B1_06 - $01
- - - - - - 0x0044AF 02:A49F: B8 A5     .word ofs_008_A5B9_07 - $01
- - - - - - 0x0044B1 02:A4A1: BF A5     .word ofs_008_A5C0_08 - $01
- - - - - - 0x0044B3 02:A4A3: CD A5     .word ofs_008_A5CE_09 - $01
- D - - - - 0x0044B5 02:A4A5: DB A5     .word ofs_008_A5DC_0A - $01
- D - - - - 0x0044B7 02:A4A7: E8 A5     .word ofs_008_A5E9_0B - $01
- D - - - - 0x0044B9 02:A4A9: 02 A6     .word ofs_008_A603_0C - $01
- D - - - - 0x0044BB 02:A4AB: 1C A6     .word ofs_008_A61D_0D - $01
- D - - - - 0x0044BD 02:A4AD: 29 A6     .word ofs_008_A62A_0E - $01
- D - - - - 0x0044BF 02:A4AF: 50 A6     .word ofs_008_A651_0F - $01
- D - - - - 0x0044C1 02:A4B1: 9C A6     .word ofs_008_A69D_10_схема_драйв_удара_и_циклона - $01
- D - - - - 0x0044C3 02:A4B3: 7A A7     .word ofs_008_A77B_11_дождь - $01
- D - - - - 0x0044C5 02:A4B5: 82 A7     .word ofs_008_A783_12 - $01
- - - - - - 0x0044C7 02:A4B7: 8D A7     .word ofs_008_A78E_13 - $01
- D - - - - 0x0044C9 02:A4B9: BD A7     .word ofs_008_A7BE_14 - $01
- D - - - - 0x0044CB 02:A4BB: CE A7     .word ofs_008_A7CF_15 - $01
- D - - - - 0x0044CD 02:A4BD: D6 A7     .word ofs_008_A7D7_16 - $01
- D - - - - 0x0044CF 02:A4BF: FA A7     .word ofs_008_A7FB_17_вывод_забитых_голов_в_катсцене - $01



ofs_008_A4C1_00:
C - - - - - 0x0044D1 02:A4C1: 20 0D 9A  JSR sub_0x001A1D
C - - - - - 0x0044D4 02:A4C4: A9 10     LDA #$10
C - - - - - 0x0044D6 02:A4C6: 20 A8 9F  JSR sub_0x001FB8_задержка_кадра
C - - - - - 0x0044D9 02:A4C9: A0 30     LDY #$30
bra_A4CB_loop:
C - - - - - 0x0044DB 02:A4CB: A9 01     LDA #$01
C - - - - - 0x0044DD 02:A4CD: 20 A8 9F  JSR sub_0x001FB8_задержка_кадра
C - - - - - 0x0044E0 02:A4D0: A9 01     LDA #$01
C - - - - - 0x0044E2 02:A4D2: 20 0C 89  JSR sub_0x00091C_смещение_Y_спрайтов
C - - - - - 0x0044E5 02:A4D5: 88        DEY
C - - - - - 0x0044E6 02:A4D6: D0 F3     BNE bra_A4CB_loop
C - - - - - 0x0044E8 02:A4D8: A9 00     LDA #$00
C - - - - - 0x0044EA 02:A4DA: 85 5B     STA ram_005B
C - - - - - 0x0044EC 02:A4DC: 85 7B     STA ram_007B
C - - - - - 0x0044EE 02:A4DE: A9 17     LDA #$17
C - - - - - 0x0044F0 02:A4E0: 20 F7 8A  JSR sub_0x000B07
; bzk optimize, поместить запись в этот счетчик перед началом цикла
; проверить что этот адрес не нужен в подпрограммах до начала цикла
C - - - - - 0x0044F3 02:A4E3: A9 68     LDA #$68
C - - - - - 0x0044F5 02:A4E5: 85 44     STA ram_0044
C - - - - - 0x0044F7 02:A4E7: A9 03     LDA #con_BF00_03
C - - - - - 0x0044F9 02:A4E9: 20 20 89  JSR sub_0x000930
C - - - - - 0x0044FC 02:A4EC: A5 8E     LDA ram_008E
C - - - - - 0x0044FE 02:A4EE: 85 90     STA ram_0090
C - - - - - 0x004500 02:A4F0: A5 8F     LDA ram_008F
C - - - - - 0x004502 02:A4F2: 85 91     STA ram_0091
C - - - - - 0x004504 02:A4F4: A9 04     LDA #$04
C - - - - - 0x004506 02:A4F6: 20 A8 9F  JSR sub_0x001FB8_задержка_кадра
C - - - - - 0x004509 02:A4F9: 20 35 9A  JSR sub_0x001A45
C - - - - - 0x00450C 02:A4FC: 20 FB 88  JSR sub_0x00090B
bra_A4FF_loop:
C - - - - - 0x00450F 02:A4FF: A9 01     LDA #$01
C - - - - - 0x004511 02:A501: 20 A8 9F  JSR sub_0x001FB8_задержка_кадра
C - - - - - 0x004514 02:A504: E6 79     INC ram_0079
C - - - - - 0x004516 02:A506: C6 7C     DEC ram_007C
C - - - - - 0x004518 02:A508: C6 7C     DEC ram_007C
C - - - - - 0x00451A 02:A50A: A5 44     LDA ram_0044
C - - - - - 0x00451C 02:A50C: 38        SEC
C - - - - - 0x00451D 02:A50D: E9 02     SBC #$02
C - - - - - 0x00451F 02:A50F: 85 44     STA ram_0044
C - - - - - 0x004521 02:A511: C9 03     CMP #$03
C - - - - - 0x004523 02:A513: B0 EA     BCS bra_A4FF_loop
C - - - - - 0x004525 02:A515: A9 00     LDA #con_BF00_00
C - - - - - 0x004527 02:A517: 20 20 89  JSR sub_0x000930
C - - - - - 0x00452A 02:A51A: A5 1B     LDA ram_флаг_nmi
C - - - - - 0x00452C 02:A51C: 09 01     ORA #$01
C - - - - - 0x00452E 02:A51E: 85 1B     STA ram_флаг_nmi
C - - - - - 0x004530 02:A520: A9 F0     LDA #$F0
C - - - - - 0x004532 02:A522: 20 A8 9F  JSR sub_0x001FB8_задержка_кадра
C - - - - - 0x004535 02:A525: A9 3C     LDA #$3C
C - - - - - 0x004537 02:A527: 20 A8 9F  JSR sub_0x001FB8_задержка_кадра
C - - - - - 0x00453A 02:A52A: A5 1B     LDA ram_флаг_nmi
C - - - - - 0x00453C 02:A52C: 29 FE     AND #$FE
C - - - - - 0x00453E 02:A52E: 85 1B     STA ram_флаг_nmi
C - - - - - 0x004540 02:A530: A9 00     LDA #con_chr_bank + $00
C - - - - - 0x004542 02:A532: 85 90     STA ram_0090
C - - - - - 0x004544 02:A534: A9 02     LDA #con_chr_bank + $02
C - - - - - 0x004546 02:A536: 85 91     STA ram_0091
C - - - - - 0x004548 02:A538: 20 F0 99  JSR sub_0x001A00_выход_из_экрана
C - - - - - 0x00454B 02:A53B: 20 7F 9B  JSR sub_0x001B8F_очистить_обе_памяти_спрайтов
C - - - - - 0x00454E 02:A53E: 20 A0 98  JSR sub_0x0018B0_очистка_двух_nametable
C - - - - - 0x004551 02:A541: A9 C0     LDA #$C0
C - - - - - 0x004553 02:A543: 85 E6     STA ram_00E6
C - - - - - 0x004555 02:A545: A9 23     LDA #$23
C - - - - - 0x004557 02:A547: 85 E7     STA ram_00E7
C - - - - - 0x004559 02:A549: A0 02     LDY #$02
C - - - - - 0x00455B 02:A54B: A2 20     LDX #$20
C - - - - - 0x00455D 02:A54D: A9 55     LDA #$55
C - - - - - 0x00455F 02:A54F: 20 EA 98  JSR sub_0x0018FA_замостить_часть_экрана_тайлом
C - - - - - 0x004562 02:A552: A9 01     LDA #con_BF00_01
C - - - - - 0x004564 02:A554: 20 20 89  JSR sub_0x000930
C - - - - - 0x004567 02:A557: A9 02     LDA #$02
C - - - - - 0x004569 02:A559: 60        RTS



ofs_008_A55A_01:
C - - - - - 0x00456A 02:A55A: A9 00     LDA #$00
C - - - - - 0x00456C 02:A55C: 85 60     STA ram_0060
C - - - - - 0x00456E 02:A55E: A5 EC     LDA ram_00EC
C - - - - - 0x004570 02:A560: 4A        LSR
C - - - - - 0x004571 02:A561: 66 60     ROR ram_0060
C - - - - - 0x004573 02:A563: 4A        LSR
C - - - - - 0x004574 02:A564: 66 60     ROR ram_0060
C - - - - - 0x004576 02:A566: 85 61     STA ram_0061
C - - - - - 0x004578 02:A568: 24 62     BIT ram_0062
C - - - - - 0x00457A 02:A56A: 30 0D     BMI bra_A579
C - - - - - 0x00457C 02:A56C: A9 00     LDA #$00
C - - - - - 0x00457E 02:A56E: 38        SEC
C - - - - - 0x00457F 02:A56F: E5 60     SBC ram_0060
C - - - - - 0x004581 02:A571: 85 60     STA ram_0060
C - - - - - 0x004583 02:A573: A9 00     LDA #$00
C - - - - - 0x004585 02:A575: E5 61     SBC ram_0061
C - - - - - 0x004587 02:A577: 85 61     STA ram_0061
bra_A579:
C - - - - - 0x004589 02:A579: A9 03     LDA #$03
C - - - - - 0x00458B 02:A57B: 60        RTS



ofs_008_A57C_02:
C - - - - - 0x00458C 02:A57C: 20 91 9B  JSR sub_0x001BA1_очистить_0568_0588_05A8_05C8
C - - - - - 0x00458F 02:A57F: A9 02     LDA #$02
C - - - - - 0x004591 02:A581: 60        RTS



ofs_008_A582_03:
- - - - - - 0x004592 02:A582: A9 00     LDA #$00
- - - - - - 0x004594 02:A584: 85 E6     STA ram_00E6
- - - - - - 0x004596 02:A586: A9 20     LDA #$20
- - - - - - 0x004598 02:A588: 85 E7     STA ram_00E7
- - - - - - 0x00459A 02:A58A: A0 10     LDY #$10
- - - - - - 0x00459C 02:A58C: A2 20     LDX #$20
- - - - - - 0x00459E 02:A58E: 20 E8 98  JSR sub_0x0018F8_затереть_часть_экрана
- - - - - - 0x0045A1 02:A591: A9 00     LDA #$00
- - - - - - 0x0045A3 02:A593: 85 E6     STA ram_00E6
- - - - - - 0x0045A5 02:A595: A9 24     LDA #$24
- - - - - - 0x0045A7 02:A597: 85 E7     STA ram_00E7
- - - - - - 0x0045A9 02:A599: A0 20     LDY #$20
- - - - - - 0x0045AB 02:A59B: A2 20     LDX #$20
- - - - - - 0x0045AD 02:A59D: 20 E8 98  JSR sub_0x0018F8_затереть_часть_экрана
- - - - - - 0x0045B0 02:A5A0: A9 02     LDA #$02
- - - - - - 0x0045B2 02:A5A2: 60        RTS



ofs_008_A5A3_04:
- - - - - - 0x0045B3 02:A5A3: 20 7F 9B  JSR sub_0x001B8F_очистить_обе_памяти_спрайтов
- - - - - - 0x0045B6 02:A5A6: A9 02     LDA #$02
- - - - - - 0x0045B8 02:A5A8: 60        RTS



ofs_008_A5A9_05:
C - - - - - 0x0045B9 02:A5A9: A2 09     LDX #$09
C - - - - - 0x0045BB 02:A5AB: 20 96 9F  JSR sub_0x001FA6
C - - - - - 0x0045BE 02:A5AE: A9 02     LDA #$02
C - - - - - 0x0045C0 02:A5B0: 60        RTS



ofs_008_A5B1_06:
C - - - - - 0x0045C1 02:A5B1: A2 09     LDX #$09
C - - - - - 0x0045C3 02:A5B3: 20 89 9F  JSR sub_0x001F99
C - - - - - 0x0045C6 02:A5B6: A9 02     LDA #$02
C - - - - - 0x0045C8 02:A5B8: 60        RTS



ofs_008_A5B9_07:
- - - - - - 0x0045C9 02:A5B9: A9 FF     LDA #$FF
- - - - - - 0x0045CB 02:A5BB: 85 99     STA ram_0099
- - - - - - 0x0045CD 02:A5BD: A9 02     LDA #$02
- - - - - - 0x0045CF 02:A5BF: 60        RTS



ofs_008_A5C0_08:
- - - - - - 0x0045D0 02:A5C0: A9 00     LDA #$44
- - - - - - 0x0045D2 02:A5C2: 8D 00 A0  STA $5105
- - - - - - 0x0045D5 02:A5C5: A5 1B     LDA ram_флаг_nmi
- - - - - - 0x0045D7 02:A5C7: 29 BF     AND #$BF
- - - - - - 0x0045D9 02:A5C9: 85 1B     STA ram_флаг_nmi
- - - - - - 0x0045DB 02:A5CB: A9 02     LDA #$02
- - - - - - 0x0045DD 02:A5CD: 60        RTS



ofs_008_A5CE_09:
- - - - - - 0x0045DE 02:A5CE: A9 01     LDA #$50
- - - - - - 0x0045E0 02:A5D0: 8D 00 A0  STA $5105
- - - - - - 0x0045E3 02:A5D3: A5 1B     LDA ram_флаг_nmi
- - - - - - 0x0045E5 02:A5D5: 09 40     ORA #$40
- - - - - - 0x0045E7 02:A5D7: 85 1B     STA ram_флаг_nmi
- - - - - - 0x0045E9 02:A5D9: A9 02     LDA #$02
- - - - - - 0x0045EB 02:A5DB: 60        RTS



ofs_008_A5DC_0A:
C - - - - - 0x0045EC 02:A5DC: A9 00     LDA #$00
C - - - - - 0x0045EE 02:A5DE: 20 95 88  JSR sub_0x0008A5
C - - - - - 0x0045F1 02:A5E1: A9 05     LDA #con_BF00_05
C - - - - - 0x0045F3 02:A5E3: 20 20 89  JSR sub_0x000930
C - - - - - 0x0045F6 02:A5E6: A9 02     LDA #$02
C - - - - - 0x0045F8 02:A5E8: 60        RTS



ofs_008_A5E9_0B:
C - - - - - 0x0045F9 02:A5E9: A5 0D     LDA ram_000D
C - - - - - 0x0045FB 02:A5EB: D0 0D     BNE bra_A5FA
C - - - - - 0x0045FD 02:A5ED: A9 10     LDA #$10
C - - - - - 0x0045FF 02:A5EF: 20 95 88  JSR sub_0x0008A5
C - - - - - 0x004602 02:A5F2: A9 06     LDA #con_BF00_06
C - - - - - 0x004604 02:A5F4: 20 20 89  JSR sub_0x000930
C - - - - - 0x004607 02:A5F7: A9 02     LDA #$02
C - - - - - 0x004609 02:A5F9: 60        RTS
bra_A5FA:
C - - - - - 0x00460A 02:A5FA: A9 00     LDA #$00
C - - - - - 0x00460C 02:A5FC: 85 0D     STA ram_000D
C - - - - - 0x00460E 02:A5FE: 85 0E     STA ram_000E
C - - - - - 0x004610 02:A600: A9 02     LDA #$02
C - - - - - 0x004612 02:A602: 60        RTS



ofs_008_A603_0C:
C - - - - - 0x004613 02:A603: A5 0D     LDA ram_000D
C - - - - - 0x004615 02:A605: D0 0D     BNE bra_A614
C - - - - - 0x004617 02:A607: A9 30     LDA #$30
C - - - - - 0x004619 02:A609: 20 95 88  JSR sub_0x0008A5
C - - - - - 0x00461C 02:A60C: A9 08     LDA #con_BF00_08
C - - - - - 0x00461E 02:A60E: 20 20 89  JSR sub_0x000930
C - - - - - 0x004621 02:A611: A9 02     LDA #$02
C - - - - - 0x004623 02:A613: 60        RTS
bra_A614:
C - - - - - 0x004624 02:A614: A9 00     LDA #$00
C - - - - - 0x004626 02:A616: 85 0D     STA ram_000D
C - - - - - 0x004628 02:A618: 85 0E     STA ram_000E
C - - - - - 0x00462A 02:A61A: A9 02     LDA #$02
C - - - - - 0x00462C 02:A61C: 60        RTS



ofs_008_A61D_0D:
C - - - - - 0x00462D 02:A61D: A9 20     LDA #$20
C - - - - - 0x00462F 02:A61F: 20 95 88  JSR sub_0x0008A5
C - - - - - 0x004632 02:A622: A9 07     LDA #con_BF00_07
C - - - - - 0x004634 02:A624: 20 20 89  JSR sub_0x000930
C - - - - - 0x004637 02:A627: A9 02     LDA #$02
C - - - - - 0x004639 02:A629: 60        RTS



ofs_008_A62A_0E:
C - - - - - 0x00463A 02:A62A: A2 BD     LDX #$BD
C - - - - - 0x00463C 02:A62C: A0 23     LDY #$23
C - - - - - 0x00463E 02:A62E: 20 76 89  JSR sub_0x000986
C - - - - - 0x004641 02:A631: 20 35 9A  JSR sub_0x001A45
C - - - - - 0x004644 02:A634: A9 01     LDA #$01
C - - - - - 0x004646 02:A636: 20 A8 9F  JSR sub_0x001FB8_задержка_кадра
C - - - - - 0x004649 02:A639: AD 8F 05  LDA ram_058F
C - - - - - 0x00464C 02:A63C: 29 7F     AND #$7F
C - - - - - 0x00464E 02:A63E: 8D 8F 05  STA ram_058F
C - - - - - 0x004651 02:A641: A9 82     LDA #$82
C - - - - - 0x004653 02:A643: 85 4C     STA ram_004C
C - - - - - 0x004655 02:A645: A0 28     LDY #$28
C - - - - - 0x004657 02:A647: A2 20     LDX #$20
C - - - - - 0x004659 02:A649: A9 C8     LDA #$C8
C - - - - - 0x00465B 02:A64B: 20 2F A8  JSR sub_A82F
C - - - - - 0x00465E 02:A64E: A9 02     LDA #$02
C - - - - - 0x004660 02:A650: 60        RTS



loc_A651:
ofs_008_A651_0F:
C - - - - - 0x004661 02:A651: A9 00     LDA #$00
C - - - - - 0x004663 02:A653: 85 ED     STA ram_00ED
loc_A655_loop_повторить:
bra_A655_loop_повторить:
; при повторе читаются следующие 3 байта из таблицы
C D - - - - 0x004665 02:A655: A4 ED     LDY ram_00ED
C - - - - - 0x004667 02:A657: B9 97 AA  LDA tbl_AA97_параметры_очистки_буфера,Y
C - - - - - 0x00466A 02:A65A: 85 EA     STA ram_00EA
C - - - - - 0x00466C 02:A65C: 29 7F     AND #$7F
C - - - - - 0x00466E 02:A65E: 85 EB     STA ram_00EB
C - - - - - 0x004670 02:A660: A5 7B     LDA ram_007B
C - - - - - 0x004672 02:A662: 29 01     AND #$01
C - - - - - 0x004674 02:A664: 0A        ASL
C - - - - - 0x004675 02:A665: 0A        ASL
C - - - - - 0x004676 02:A666: 05 EB     ORA ram_00EB
C - - - - - 0x004678 02:A668: AA        TAX
C - - - - - 0x004679 02:A669: C8        INY
C - - - - - 0x00467A 02:A66A: B9 97 AA  LDA tbl_AA97_параметры_очистки_буфера,Y
C - - - - - 0x00467D 02:A66D: 85 EB     STA ram_00EB
C - - - - - 0x00467F 02:A66F: C8        INY
C - - - - - 0x004680 02:A670: B9 97 AA  LDA tbl_AA97_параметры_очистки_буфера,Y
C - - - - - 0x004683 02:A673: C8        INY
C - - - - - 0x004684 02:A674: 84 ED     STY ram_00ED
C - - - - - 0x004686 02:A676: A4 EB     LDY ram_00EB
C - - - - - 0x004688 02:A678: 20 28 9B  JSR sub_0x001B38_подготовить_буфер
C - - - - - 0x00468B 02:A67B: 29 7F     AND #$7F
C - - - - - 0x00468D 02:A67D: 85 EB     STA ram_00EB
C - - - - - 0x00468F 02:A67F: A9 00     LDA #$00
bra_A681_loop_очистки_буфера:
C - - - - - 0x004691 02:A681: 9D E8 05  STA ram_05E8,X
C - - - - - 0x004694 02:A684: E8        INX
C - - - - - 0x004695 02:A685: C6 EB     DEC ram_00EB
C - - - - - 0x004697 02:A687: D0 F8     BNE bra_A681_loop_очистки_буфера
C - - - - - 0x004699 02:A689: 20 5E 9B  JSR sub_0x001B6E_закрыть_буфер
C - - - - - 0x00469C 02:A68C: 24 EA     BIT ram_00EA
C - - - - - 0x00469E 02:A68E: 30 0A     BMI bra_A69A_закончить
C - - - - - 0x0046A0 02:A690: 50 C3     BVC bra_A655_loop_повторить
C - - - - - 0x0046A2 02:A692: A9 02     LDA #$02
C - - - - - 0x0046A4 02:A694: 20 A8 9F  JSR sub_0x001FB8_задержка_кадра
C - - - - - 0x0046A7 02:A697: 4C 55 A6  JMP loc_A655_loop_повторить
bra_A69A_закончить:
C - - - - - 0x0046AA 02:A69A: A9 02     LDA #$02
C - - - - - 0x0046AC 02:A69C: 60        RTS



ofs_008_A69D_10_схема_драйв_удара_и_циклона:
C - - - - - 0x0046AD 02:A69D: AD E5 04  LDA ram_04E5
C - - - - - 0x0046B0 02:A6A0: C9 FF     CMP #$FF
C - - - - - 0x0046B2 02:A6A2: F0 30     BEQ bra_A6D4
C - - - - - 0x0046B4 02:A6A4: 20 67 A7  JSR sub_A767
C - - - - - 0x0046B7 02:A6A7: A0 80     LDY #$80
C - - - - - 0x0046B9 02:A6A9: A9 00     LDA #$00
C - - - - - 0x0046BB 02:A6AB: 85 EA     STA ram_00EA
C - - - - - 0x0046BD 02:A6AD: A2 2F     LDX #$2F
C - - - - - 0x0046BF 02:A6AF: A9 FF     LDA #$FF
C - - - - - 0x0046C1 02:A6B1: 85 ED     STA ram_00ED
C - - - - - 0x0046C3 02:A6B3: A9 FE     LDA #$FE
C - - - - - 0x0046C5 02:A6B5: 85 EC     STA ram_00EC
C - - - - - 0x0046C7 02:A6B7: A9 07     LDA #$07
C - - - - - 0x0046C9 02:A6B9: 85 EB     STA ram_00EB
C - - - - - 0x0046CB 02:A6BB: A9 F7     LDA #$F7
C - - - - - 0x0046CD 02:A6BD: 20 2C A7  JSR sub_A72C
C - - - - - 0x0046D0 02:A6C0: A0 D8     LDY #$D8
C - - - - - 0x0046D2 02:A6C2: A2 30     LDX #$30
C - - - - - 0x0046D4 02:A6C4: A9 01     LDA #$01
C - - - - - 0x0046D6 02:A6C6: 85 ED     STA ram_00ED
C - - - - - 0x0046D8 02:A6C8: A9 FF     LDA #$FF
C - - - - - 0x0046DA 02:A6CA: 85 EC     STA ram_00EC
C - - - - - 0x0046DC 02:A6CC: A9 FC     LDA #$FC
C - - - - - 0x0046DE 02:A6CE: 20 2C A7  JSR sub_A72C
C - - - - - 0x0046E1 02:A6D1: A9 02     LDA #$02
C - - - - - 0x0046E3 02:A6D3: 60        RTS
bra_A6D4:
C - - - - - 0x0046E4 02:A6D4: 20 67 A7  JSR sub_A767
C - - - - - 0x0046E7 02:A6D7: A0 80     LDY #$80
C - - - - - 0x0046E9 02:A6D9: A2 2F     LDX #$2F
C - - - - - 0x0046EB 02:A6DB: A9 02     LDA #$02
C - - - - - 0x0046ED 02:A6DD: 85 EA     STA ram_00EA
C - - - - - 0x0046EF 02:A6DF: A9 FF     LDA #$FF
C - - - - - 0x0046F1 02:A6E1: 85 ED     STA ram_00ED
C - - - - - 0x0046F3 02:A6E3: A9 FE     LDA #$FE
C - - - - - 0x0046F5 02:A6E5: 85 EC     STA ram_00EC
C - - - - - 0x0046F7 02:A6E7: A9 07     LDA #$07
C - - - - - 0x0046F9 02:A6E9: 85 EB     STA ram_00EB
C - - - - - 0x0046FB 02:A6EB: A9 F7     LDA #$F7
C - - - - - 0x0046FD 02:A6ED: 20 2C A7  JSR sub_A72C
C - - - - - 0x004700 02:A6F0: A2 08     LDX #$08
C - - - - - 0x004702 02:A6F2: A9 FE     LDA #$FE
C - - - - - 0x004704 02:A6F4: 20 2C A7  JSR sub_A72C
C - - - - - 0x004707 02:A6F7: A0 FC     LDY #$FC
bra_A6F9_loop:
C - - - - - 0x004709 02:A6F9: B9 7B A6  LDA tbl_A777 - $FC,Y
C - - - - - 0x00470C 02:A6FC: 99 60 04  STA ram_055C - $FC,Y
C - - - - - 0x00470F 02:A6FF: C8        INY
C - - - - - 0x004710 02:A700: D0 F7     BNE bra_A6F9_loop
C - - - - - 0x004712 02:A702: A0 B8     LDY #$B8
C - - - - - 0x004714 02:A704: A2 1C     LDX #$1C
C - - - - - 0x004716 02:A706: A9 02     LDA #$02
C - - - - - 0x004718 02:A708: 85 ED     STA ram_00ED
C - - - - - 0x00471A 02:A70A: A9 FF     LDA #$FF
C - - - - - 0x00471C 02:A70C: 85 EC     STA ram_00EC
C - - - - - 0x00471E 02:A70E: A9 03     LDA #$03
C - - - - - 0x004720 02:A710: 85 EB     STA ram_00EB
C - - - - - 0x004722 02:A712: A9 F6     LDA #$F6
C - - - - - 0x004724 02:A714: 20 2C A7  JSR sub_A72C
C - - - - - 0x004727 02:A717: A0 D8     LDY #$D8
bra_A719_loop:
C - - - - - 0x004729 02:A719: B9 6A 04  LDA ram_copy_spr_A,Y
C - - - - - 0x00472C 02:A71C: 09 02     ORA #$02
C - - - - - 0x00472E 02:A71E: 99 6A 04  STA ram_copy_spr_A,Y
C - - - - - 0x004731 02:A721: C8        INY
C - - - - - 0x004732 02:A722: C8        INY
C - - - - - 0x004733 02:A723: C8        INY
C - - - - - 0x004734 02:A724: C8        INY
C - - - - - 0x004735 02:A725: C0 F0     CPY #$F0
C - - - - - 0x004737 02:A727: 90 F0     BCC bra_A719_loop
C - - - - - 0x004739 02:A729: A9 02     LDA #$02
C - - - - - 0x00473B 02:A72B: 60        RTS



sub_A72C:
C - - - - - 0x00473C 02:A72C: 85 E9     STA ram_00E9
bra_A72E_loop:
C - - - - - 0x00473E 02:A72E: AD E4 04  LDA ram_04E4
C - - - - - 0x004741 02:A731: 18        CLC
C - - - - - 0x004742 02:A732: 65 ED     ADC ram_00ED
C - - - - - 0x004744 02:A734: 8D E4 04  STA ram_04E4
C - - - - - 0x004747 02:A737: AD E7 04  LDA ram_04E7
C - - - - - 0x00474A 02:A73A: 18        CLC
C - - - - - 0x00474B 02:A73B: 65 EC     ADC ram_00EC
C - - - - - 0x00474D 02:A73D: 8D E7 04  STA ram_04E7
C - - - - - 0x004750 02:A740: 25 EB     AND ram_00EB
C - - - - - 0x004752 02:A742: D0 1A     BNE bra_A75E
C - - - - - 0x004754 02:A744: AD E4 04  LDA ram_04E4
C - - - - - 0x004757 02:A747: 99 68 04  STA ram_copy_spr_Y,Y
C - - - - - 0x00475A 02:A74A: A5 E9     LDA ram_00E9
C - - - - - 0x00475C 02:A74C: 99 69 04  STA ram_copy_spr_T,Y
C - - - - - 0x00475F 02:A74F: A5 EA     LDA ram_00EA
C - - - - - 0x004761 02:A751: 99 6A 04  STA ram_copy_spr_A,Y
C - - - - - 0x004764 02:A754: AD E7 04  LDA ram_04E7
C - - - - - 0x004767 02:A757: 99 6B 04  STA ram_copy_spr_X,Y
C - - - - - 0x00476A 02:A75A: C8        INY
C - - - - - 0x00476B 02:A75B: C8        INY
C - - - - - 0x00476C 02:A75C: C8        INY
C - - - - - 0x00476D 02:A75D: C8        INY
bra_A75E:
C - - - - - 0x00476E 02:A75E: A9 01     LDA #$01
C - - - - - 0x004770 02:A760: 20 A8 9F  JSR sub_0x001FB8_задержка_кадра
C - - - - - 0x004773 02:A763: CA        DEX
C - - - - - 0x004774 02:A764: D0 C8     BNE bra_A72E_loop
C - - - - - 0x004776 02:A766: 60        RTS



sub_A767:
C - - - - - 0x004777 02:A767: A0 FC     LDY #$FC
bra_A769_loop:
C - - - - - 0x004779 02:A769: B9 77 A6  LDA tbl_A773 - $FC,Y
C - - - - - 0x00477C 02:A76C: 99 E8 03  STA ram_04E4 - $FC,Y
C - - - - - 0x00477F 02:A76F: C8        INY
C - - - - - 0x004780 02:A770: D0 F7     BNE bra_A769_loop
C - - - - - 0x004782 02:A772: 60        RTS



tbl_A773:
- D - - - - 0x004783 02:A773: 79        .byte $79
- D - - - - 0x004784 02:A774: FF        .byte $FF
- D - - - - 0x004785 02:A775: 03        .byte $03
- D - - - - 0x004786 02:A776: C2        .byte $C2



tbl_A777:
- D - - - - 0x004787 02:A777: 46        .byte $46
- D - - - - 0x004788 02:A778: F6        .byte $F6
- D - - - - 0x004789 02:A779: 02        .byte $02
- D - - - - 0x00478A 02:A77A: 52        .byte $52



ofs_008_A77B_11_дождь:
C - - - - - 0x00478B 02:A77B: A9 80     LDA #$80
C - - - - - 0x00478D 02:A77D: 20 95 88  JSR sub_0x0008A5
C - - - - - 0x004790 02:A780: A9 02     LDA #$02
C - - - - - 0x004792 02:A782: 60        RTS



ofs_008_A783_12:
C - - - - - 0x004793 02:A783: A9 02     LDA #$02
C - - - - - 0x004795 02:A785: 20 A8 9F  JSR sub_0x001FB8_задержка_кадра
C - - - - - 0x004798 02:A788: 20 FB 88  JSR sub_0x00090B
C - - - - - 0x00479B 02:A78B: A9 02     LDA #$02
C - - - - - 0x00479D 02:A78D: 60        RTS



ofs_008_A78E_13:
- - - - - - 0x00479E 02:A78E: A0 40     LDY #$40
bra_A790_loop:
- - - - - - 0x0047A0 02:A790: A9 01     LDA #$01
- - - - - - 0x0047A2 02:A792: 20 A8 9F  JSR sub_0x001FB8_задержка_кадра
- - - - - - 0x0047A5 02:A795: A2 20     LDX #$20
bra_A797_loop:
- - - - - - 0x0047A7 02:A797: BD 68 04  LDA ram_copy_spr_Y,X
- - - - - - 0x0047AA 02:A79A: 10 08     BPL bra_A7A4
- - - - - - 0x0047AC 02:A79C: BD 6A 04  LDA ram_copy_spr_A,X
- - - - - - 0x0047AF 02:A79F: 09 08     ORA #$08
- - - - - - 0x0047B1 02:A7A1: 9D 6A 04  STA ram_copy_spr_A,X
bra_A7A4:
- - - - - - 0x0047B4 02:A7A4: E8        INX
- - - - - - 0x0047B5 02:A7A5: E8        INX
- - - - - - 0x0047B6 02:A7A6: E8        INX
- - - - - - 0x0047B7 02:A7A7: E8        INX
- - - - - - 0x0047B8 02:A7A8: E0 C4     CPX #$C4
- - - - - - 0x0047BA 02:A7AA: D0 EB     BNE bra_A797_loop
- - - - - - 0x0047BC 02:A7AC: 88        DEY
- - - - - - 0x0047BD 02:A7AD: D0 E1     BNE bra_A790_loop
- - - - - - 0x0047BF 02:A7AF: 20 91 9B  JSR sub_0x001BA1_очистить_0568_0588_05A8_05C8
bra_A7B2_loop:
- - - - - - 0x0047C2 02:A7B2: A9 01     LDA #$01
- - - - - - 0x0047C4 02:A7B4: 20 A8 9F  JSR sub_0x001FB8_задержка_кадра
- - - - - - 0x0047C7 02:A7B7: A5 09     LDA ram_0009
- - - - - - 0x0047C9 02:A7B9: D0 F7     BNE bra_A7B2_loop
- - - - - - 0x0047CB 02:A7BB: 4C 51 A6  JMP loc_A651



ofs_008_A7BE_14:
C - - - - - 0x0047CE 02:A7BE: A9 01     LDA #$01
C - - - - - 0x0047D0 02:A7C0: 20 A8 9F  JSR sub_0x001FB8_задержка_кадра
C - - - - - 0x0047D3 02:A7C3: A0 28     LDY #$28
C - - - - - 0x0047D5 02:A7C5: A2 64     LDX #$64
C - - - - - 0x0047D7 02:A7C7: A9 B0     LDA #$B0
C - - - - - 0x0047D9 02:A7C9: 20 2F A8  JSR sub_A82F
C - - - - - 0x0047DC 02:A7CC: A9 02     LDA #$02
C - - - - - 0x0047DE 02:A7CE: 60        RTS



ofs_008_A7CF_15:
C - - - - - 0x0047DF 02:A7CF: A9 81     LDA #$81
C - - - - - 0x0047E1 02:A7D1: 20 95 88  JSR sub_0x0008A5
C - - - - - 0x0047E4 02:A7D4: A9 02     LDA #$02
C - - - - - 0x0047E6 02:A7D6: 60        RTS



ofs_008_A7D7_16:
C - - - - - 0x0047E7 02:A7D7: A0 80     LDY #$80
bra_A7D9_loop:
C - - - - - 0x0047E9 02:A7D9: A9 01     LDA #$01
C - - - - - 0x0047EB 02:A7DB: 20 A8 9F  JSR sub_0x001FB8_задержка_кадра
C - - - - - 0x0047EE 02:A7DE: A2 20     LDX #$20
bra_A7E0_loop_для_атрибутов:
C - - - - - 0x0047F0 02:A7E0: BD 68 04  LDA ram_copy_spr_Y,X
C - - - - - 0x0047F3 02:A7E3: 10 08     BPL bra_A7ED
C - - - - - 0x0047F5 02:A7E5: BD 6A 04  LDA ram_copy_spr_A,X
C - - - - - 0x0047F8 02:A7E8: 09 04     ORA #$04
C - - - - - 0x0047FA 02:A7EA: 9D 6A 04  STA ram_copy_spr_A,X
bra_A7ED:
C - - - - - 0x0047FD 02:A7ED: E8        INX
C - - - - - 0x0047FE 02:A7EE: E8        INX
C - - - - - 0x0047FF 02:A7EF: E8        INX
C - - - - - 0x004800 02:A7F0: E8        INX
C - - - - - 0x004801 02:A7F1: E0 C4     CPX #$C4
C - - - - - 0x004803 02:A7F3: D0 EB     BNE bra_A7E0_loop_для_атрибутов
C - - - - - 0x004805 02:A7F5: 88        DEY
C - - - - - 0x004806 02:A7F6: D0 E1     BNE bra_A7D9_loop
C - - - - - 0x004808 02:A7F8: A9 02     LDA #$02
C - - - - - 0x00480A 02:A7FA: 60        RTS



ofs_008_A7FB_17_вывод_забитых_голов_в_катсцене:
; использовалось в скрытой катсцене со шнайдером
C - - - - - 0x00480B 02:A7FB: A5 28     LDA ram_голы
C - - - - - 0x00480D 02:A7FD: 20 7C 9E  JSR sub_0x001E8C_перевод_из_HEX_в_DEC
C - - - - - 0x004810 02:A800: A5 EC     LDA ram_00EC
C - - - - - 0x004812 02:A802: 29 F0     AND #$F0
C - - - - - 0x004814 02:A804: F0 11     BEQ bra_A817
C - - - - - 0x004816 02:A806: 20 6D AC  JSR sub_AC6D
C - - - - - 0x004819 02:A809: A6 52     LDX ram_0052
C - - - - - 0x00481B 02:A80B: A4 53     LDY ram_0053
C - - - - - 0x00481D 02:A80D: 20 CA 88  JSR sub_0x0008DA_запись_символа_в_буфер
C - - - - - 0x004820 02:A810: E6 53     INC ram_0053
C - - - - - 0x004822 02:A812: A9 06     LDA #$06
C - - - - - 0x004824 02:A814: 20 A8 9F  JSR sub_0x001FB8_задержка_кадра
bra_A817:
C - - - - - 0x004827 02:A817: A5 EC     LDA ram_00EC
C - - - - - 0x004829 02:A819: 29 0F     AND #$0F
C - - - - - 0x00482B 02:A81B: 20 71 AC  JSR sub_AC71
C - - - - - 0x00482E 02:A81E: A6 52     LDX ram_0052
C - - - - - 0x004830 02:A820: A4 53     LDY ram_0053
C - - - - - 0x004832 02:A822: 20 CA 88  JSR sub_0x0008DA_запись_символа_в_буфер
C - - - - - 0x004835 02:A825: E6 53     INC ram_0053
C - - - - - 0x004837 02:A827: A9 06     LDA #$06
C - - - - - 0x004839 02:A829: 20 A8 9F  JSR sub_0x001FB8_задержка_кадра
C - - - - - 0x00483C 02:A82C: A9 02     LDA #$02
C - - - - - 0x00483E 02:A82E: 60        RTS



sub_A82F:
C - - - - - 0x00483F 02:A82F: 85 EC     STA ram_00EC
C - - - - - 0x004841 02:A831: 86 ED     STX ram_00ED
bra_A833_loop:
C - - - - - 0x004843 02:A833: A9 01     LDA #$01
C - - - - - 0x004845 02:A835: 20 A8 9F  JSR sub_0x001FB8_задержка_кадра
C - - - - - 0x004848 02:A838: A6 ED     LDX ram_00ED
bra_A83A_loop:
C - - - - - 0x00484A 02:A83A: BD 68 04  LDA ram_copy_spr_Y,X
C - - - - - 0x00484D 02:A83D: C9 82     CMP #$82
C - - - - - 0x00484F 02:A83F: B0 08     BCS bra_A849
C - - - - - 0x004851 02:A841: BD 6A 04  LDA ram_copy_spr_A,X
C - - - - - 0x004854 02:A844: 29 F3     AND #$F3
C - - - - - 0x004856 02:A846: 9D 6A 04  STA ram_copy_spr_A,X
bra_A849:
C - - - - - 0x004859 02:A849: E8        INX
C - - - - - 0x00485A 02:A84A: E8        INX
C - - - - - 0x00485B 02:A84B: E8        INX
C - - - - - 0x00485C 02:A84C: E8        INX
C - - - - - 0x00485D 02:A84D: E4 EC     CPX ram_00EC
C - - - - - 0x00485F 02:A84F: D0 E9     BNE bra_A83A_loop
C - - - - - 0x004861 02:A851: 88        DEY
C - - - - - 0x004862 02:A852: D0 DF     BNE bra_A833_loop
C - - - - - 0x004864 02:A854: 60        RTS



sub_0x004865_номера_игроков_и_расстановка_твоей_команды:
C D - - - - 0x004865 02:A855: A5 E4     LDA ram_00E4
C - - - - - 0x004867 02:A857: C5 26     CMP ram_матч
C - - - - - 0x004869 02:A859: B0 4D     BCS bra_A8A8_запись_номера_команды
C - - - - - 0x00486B 02:A85B: A5 26     LDA ram_матч
C - - - - - 0x00486D 02:A85D: F0 1D     BEQ bra_A87C_sao_paulo
C - - - - - 0x00486F 02:A85F: C9 06     CMP #$06
C - - - - - 0x004871 02:A861: F0 21     BEQ bra_A884_nankatsu
C - - - - - 0x004873 02:A863: C9 0C     CMP #$0C
C - - - - - 0x004875 02:A865: F0 15     BEQ bra_A87C_sao_paulo
C - - - - - 0x004877 02:A867: C9 10     CMP #$10
C - - - - - 0x004879 02:A869: F0 21     BEQ bra_A88C_japan
C - - - - - 0x00487B 02:A86B: 4C A8 A8  JMP loc_A8A8_запись_номера_команды



sub_0x00487E_номера_игроков_и_расстановка_твоей_команды:
C D - - - - 0x00487E 02:A86E: A5 26     LDA ram_матч
C - - - - - 0x004880 02:A870: C9 06     CMP #$06
C - - - - - 0x004882 02:A872: 90 08     BCC bra_A87C_sao_paulo
- - - - - - 0x004884 02:A874: C9 0C     CMP #$0C
- - - - - - 0x004886 02:A876: 90 0C     BCC bra_A884_nankatsu
- - - - - - 0x004888 02:A878: C9 10     CMP #$10
- - - - - - 0x00488A 02:A87A: B0 10     BCS bra_A88C_japan
bra_A87C_sao_paulo:
C - - - - - 0x00488C 02:A87C: A2 00     LDX #$00
C - - - - - 0x00488E 02:A87E: 20 B7 A8  JSR sub_A8B7_запись_номеров
C - - - - - 0x004891 02:A881: 4C A3 A8  JMP loc_A8A3_запись_расстановки
bra_A884_nankatsu:
C - - - - - 0x004894 02:A884: A2 0C     LDX #$0C
C - - - - - 0x004896 02:A886: 20 B7 A8  JSR sub_A8B7_запись_номеров
C - - - - - 0x004899 02:A889: 4C A3 A8  JMP loc_A8A3_запись_расстановки
bra_A88C_japan:
C - - - - - 0x00489C 02:A88C: A2 18     LDX #$18
C - - - - - 0x00489E 02:A88E: 20 B7 A8  JSR sub_A8B7_запись_номеров
C - - - - - 0x0048A1 02:A891: A0 00     LDY #$00
bra_A893_loop:
C - - - - - 0x0048A3 02:A893: BD 47 AA  LDA tbl_AA47_номера_игроков,X
C - - - - - 0x0048A6 02:A896: 99 08 04  STA ram_bench_1,Y
C - - - - - 0x0048A9 02:A899: E8        INX
C - - - - - 0x0048AA 02:A89A: 98        TYA
C - - - - - 0x0048AB 02:A89B: 18        CLC
C - - - - - 0x0048AC 02:A89C: 69 04     ADC #$04
C - - - - - 0x0048AE 02:A89E: A8        TAY
C - - - - - 0x0048AF 02:A89F: C9 28     CMP #$28
C - - - - - 0x0048B1 02:A8A1: 90 F0     BCC bra_A893_loop
loc_A8A3_запись_расстановки:
C D - - - - 0x0048B3 02:A8A3: BD 47 AA  LDA tbl_AA47_номера_игроков,X
C - - - - - 0x0048B6 02:A8A6: 85 2C     STA ram_расстановка_слева
bra_A8A8_запись_номера_команды:
loc_A8A8_запись_номера_команды:
C D - - - - 0x0048B8 02:A8A8: A6 26     LDX ram_матч
C - - - - - 0x0048BA 02:A8AA: BD 75 AA  LDA tbl_AA75_номер_команды,X
C - - - - - 0x0048BD 02:A8AD: 85 2A     STA ram_твоя_команда
C - - - - - 0x0048BF 02:A8AF: A5 26     LDA ram_матч
C - - - - - 0x0048C1 02:A8B1: 18        CLC
C - - - - - 0x0048C2 02:A8B2: 69 03     ADC #$03
C - - - - - 0x0048C4 02:A8B4: 85 2B     STA ram_команда_соперника
C - - - - - 0x0048C6 02:A8B6: 60        RTS



sub_A8B7_запись_номеров:
C - - - - - 0x0048C7 02:A8B7: A9 0B     LDA #$0B
C - - - - - 0x0048C9 02:A8B9: 85 ED     STA ram_00ED
C - - - - - 0x0048CB 02:A8BB: A0 00     LDY #$00
bra_A8BD_loop:
C - - - - - 0x0048CD 02:A8BD: BD 47 AA  LDA tbl_AA47_номера_игроков,X
C - - - - - 0x0048D0 02:A8C0: 99 00 03  STA ram_номер_игрока,Y
C - - - - - 0x0048D3 02:A8C3: E8        INX
C - - - - - 0x0048D4 02:A8C4: 98        TYA
C - - - - - 0x0048D5 02:A8C5: 18        CLC
C - - - - - 0x0048D6 02:A8C6: 69 0C     ADC #$0C
C - - - - - 0x0048D8 02:A8C8: A8        TAY
C - - - - - 0x0048D9 02:A8C9: C9 84     CMP #$84
C - - - - - 0x0048DB 02:A8CB: 90 F0     BCC bra_A8BD_loop
C - - - - - 0x0048DD 02:A8CD: 60        RTS



sub_0x0048DE:
C D - - - - 0x0048DE 02:A8CE: A9 01     LDA #$01
C - - - - - 0x0048E0 02:A8D0: 20 A8 9F  JSR sub_0x001FB8_задержка_кадра
C - - - - - 0x0048E3 02:A8D3: A0 00     LDY #$00
bra_A8D5_loop_копирования:
C - - - - - 0x0048E8 02:A8D8: B9 6A 04  LDA ram_copy_spr_A,Y
C - - - - - 0x0048EB 02:A8DB: 29 0C     AND #$0C
C - - - - - 0x0048ED 02:A8DD: F0 02     BEQ bra_A8E1_не_скрывать_спрайт
C - - - - - 0x0048EF 02:A8DF: A2 F8     LDA #$F8
C - - - - - 0x0048F2 02:A8E2: 99 00 02  STA ram_spr_Y,Y
                                        BNE bra_A8F7_пропустить_копирование_ненужных_атрибутов
bra_A8E1_не_скрывать_спрайт:
C - - - - - 0x0048E5 02:A8D5: BE 68 04  LDA ram_copy_spr_Y,Y
C - - - - - 0x0048F2 02:A8E2: 99 00 02  STA ram_spr_Y,Y
C - - - - - 0x0048F5 02:A8E5: B9 69 04  LDA ram_copy_spr_T,Y
C - - - - - 0x0048F8 02:A8E8: 99 01 02  STA ram_spr_T,Y
C - - - - - 0x0048FB 02:A8EB: B9 6A 04  LDA ram_copy_spr_A,Y
C - - - - - 0x0048FE 02:A8EE: 99 02 02  STA ram_spr_A,Y
C - - - - - 0x004901 02:A8F1: B9 6B 04  LDA ram_copy_spr_X,Y
C - - - - - 0x004904 02:A8F4: 99 03 02  STA ram_spr_X,Y
bra_A8F7_пропустить_копирование_ненужных_атрибутов:
C - - - - - 0x004907 02:A8F7: C8        INY
C - - - - - 0x004908 02:A8F8: C8        INY
C - - - - - 0x004909 02:A8F9: C8        INY
C - - - - - 0x00490A 02:A8FA: C8        INY
C - - - - - 0x00490B 02:A8FB: D0 D8     BNE bra_A8D5_loop_копирования
C - - - - - 0x00490D 02:A8FD: 60        RTS



sub_AA06_очистить_0468_06FF:
; 0x004A16
; свободные адреса 00EC 00ED
                                        LDA #$00
                                        LDY #$68
@loop_0468_04FF:
                                        STA ram_0468,Y
                                        INY
                                        BNE @loop_0468_04FF
; Y = 00
@loop_0500_06FF:
                                        STA ram_0500,Y
                                        STA ram_0600,Y
                                        INY
                                        BNE @loop_0500_06FF
                                        RTS



sub_AA20_проверка_нажатий_вверх_вниз:
C - - - - - 0x004A30 02:AA20: A5 1C     LDA ram_btn_hold
C - - - - - 0x004A32 02:AA22: 29 08     AND #con_btn_Up
C - - - - - 0x004A34 02:AA24: F0 04     BEQ bra_AA2A_вверх_не_нажато
C - - - - - 0x004A36 02:AA26: A9 01     LDA #$01
C - - - - - 0x004A38 02:AA28: 38        SEC
C - - - - - 0x004A39 02:AA29: 60        RTS
bra_AA2A_вверх_не_нажато:
C - - - - - 0x004A3A 02:AA2A: A5 1C     LDA ram_btn_hold
C - - - - - 0x004A3C 02:AA2C: 29 04     AND #con_btn_Down
C - - - - - 0x004A3E 02:AA2E: F0 04     BEQ bra_AA34_вниз_не_нажато
C - - - - - 0x004A40 02:AA30: A9 FF     LDA #$FF
C - - - - - 0x004A42 02:AA32: 38        SEC
C - - - - - 0x004A43 02:AA33: 60        RTS
bra_AA34_вниз_не_нажато:
C - - - - - 0x004A44 02:AA34: 18        CLC
C - - - - - 0x004A45 02:AA35: 60        RTS



tbl_AA47_номера_игроков:
    .byte $02   ; GK
    .byte $03   ; 02
    .byte $04   ; 03
    .byte $05   ; 04
    .byte $06   ; 05
    .byte $07   ; 06
    .byte $08   ; 07
    .byte $09   ; 08
    .byte $0A   ; 09
    .byte $01   ; 10
    .byte $0B   ; 11
    .byte $00   ; расстановка
    
    .byte $0F   ; GK
    .byte $0D   ; 02
    .byte $0E   ; 03
    .byte $14   ; 04
    .byte $10   ; 05
    .byte $0C   ; 06
    .byte $13   ; 07
    .byte $12   ; 08
    .byte $15   ; 09
    .byte $11   ; 10
    .byte $16   ; 11
    .byte $00   ; расстановка
    
    .byte $22   ; GK
    .byte $1B   ; 02
    .byte $1C   ; 03
    .byte $14   ; 04
    .byte $1D   ; 05
    .byte $17   ; 06
    .byte $18   ; 07
    .byte $11   ; 08
    .byte $1A   ; 09
    .byte $01   ; 10
    .byte $15   ; 11
    .byte $19   ; резерв 1
    .byte $1F   ; резерв 2
    .byte $10   ; резерв 3
    .byte $12   ; резерв 4
    .byte $13   ; резерв 5
    .byte $16   ; резерв 6
    .byte $1E   ; резерв 7
    .byte $20   ; резерв 8
    .byte $21   ; резерв GK 1
    .byte $0F   ; резерв GK 2
    .byte $01   ; расстановка



tbl_AA75_номер_команды:
    .byte $00, $00, $00, $00, $00, $00
    .byte $01, $01, $01, $01, $01, $01
    .byte $00, $00, $00, $00
    .byte $02, $02, $02, $02, $02, $02
    .byte $02, $02, $02, $02, $02
    .byte $02, $02, $02, $02, $02, $02

tbl_AA97_параметры_очистки_буфера:
; первый байт = ??? + флаг
    ; +00 = прочитать следующие 3 байта после очистки
    ; +40 = подождать 2 кадра и прочитать следующие 3 байта после очистки
    ; +80 = выход после очистки
; второй байт = ???
; третий байт = выделенное количество записией в буфер
- D - - - - 0x004AA7 02:AA97: 20        .byte $20
- D - - - - 0x004AA8 02:AA98: 00        .byte $00
- D - - - - 0x004AA9 02:AA99: 20        .byte $20

- D - - - - 0x004AAA 02:AA9A: 20        .byte $20
- D - - - - 0x004AAB 02:AA9B: 20        .byte $20
- D - - - - 0x004AAC 02:AA9C: 8F        .byte $8F

- D - - - - 0x004AAD 02:AA9D: 60        .byte $60
- D - - - - 0x004AAE 02:AA9E: 3F        .byte $3F
- D - - - - 0x004AAF 02:AA9F: 8F        .byte $8F

- D - - - - 0x004AB0 02:AAA0: 20        .byte $20
- D - - - - 0x004AB1 02:AAA1: 21        .byte $21
- D - - - - 0x004AB2 02:AAA2: 1E        .byte $1E

- D - - - - 0x004AB3 02:AAA3: 20        .byte $20
- D - - - - 0x004AB4 02:AAA4: 41        .byte $41
- D - - - - 0x004AB5 02:AAA5: 8E        .byte $8E

- D - - - - 0x004AB6 02:AAA6: 60        .byte $60
- D - - - - 0x004AB7 02:AAA7: 5E        .byte $5E
- D - - - - 0x004AB8 02:AAA8: 8E        .byte $8E

- D - - - - 0x004AB9 02:AAA9: 20        .byte $20
- D - - - - 0x004ABA 02:AAAA: 42        .byte $42
- D - - - - 0x004ABB 02:AAAB: 1C        .byte $1C

- D - - - - 0x004ABC 02:AAAC: 20        .byte $20
- D - - - - 0x004ABD 02:AAAD: 62        .byte $62
- D - - - - 0x004ABE 02:AAAE: 8D        .byte $8D

- D - - - - 0x004ABF 02:AAAF: 60        .byte $60
- D - - - - 0x004AC0 02:AAB0: 7D        .byte $7D
- D - - - - 0x004AC1 02:AAB1: 8D        .byte $8D

- D - - - - 0x004AC2 02:AAB2: 20        .byte $20
- D - - - - 0x004AC3 02:AAB3: 63        .byte $63
- D - - - - 0x004AC4 02:AAB4: 1A        .byte $1A

- D - - - - 0x004AC5 02:AAB5: 20        .byte $20
- D - - - - 0x004AC6 02:AAB6: 83        .byte $83
- D - - - - 0x004AC7 02:AAB7: 8C        .byte $8C

- D - - - - 0x004AC8 02:AAB8: 60        .byte $60
- D - - - - 0x004AC9 02:AAB9: 9C        .byte $9C
- D - - - - 0x004ACA 02:AABA: 8C        .byte $8C

- D - - - - 0x004ACB 02:AABB: 20        .byte $20
- D - - - - 0x004ACC 02:AABC: 84        .byte $84
- D - - - - 0x004ACD 02:AABD: 18        .byte $18

- D - - - - 0x004ACE 02:AABE: 20        .byte $20
- D - - - - 0x004ACF 02:AABF: A4        .byte $A4
- D - - - - 0x004AD0 02:AAC0: 8B        .byte $8B

- D - - - - 0x004AD1 02:AAC1: 60        .byte $60
- D - - - - 0x004AD2 02:AAC2: BB        .byte $BB
- D - - - - 0x004AD3 02:AAC3: 8B        .byte $8B

- D - - - - 0x004AD4 02:AAC4: 20        .byte $20
- D - - - - 0x004AD5 02:AAC5: A5        .byte $A5
- D - - - - 0x004AD6 02:AAC6: 16        .byte $16

- D - - - - 0x004AD7 02:AAC7: 20        .byte $20
- D - - - - 0x004AD8 02:AAC8: C5        .byte $C5
- D - - - - 0x004AD9 02:AAC9: 8A        .byte $8A

- D - - - - 0x004ADA 02:AACA: 60        .byte $60
- D - - - - 0x004ADB 02:AACB: DA        .byte $DA
- D - - - - 0x004ADC 02:AACC: 8A        .byte $8A

- D - - - - 0x004ADD 02:AACD: 20        .byte $20
- D - - - - 0x004ADE 02:AACE: C6        .byte $C6
- D - - - - 0x004ADF 02:AACF: 14        .byte $14

- D - - - - 0x004AE0 02:AAD0: 20        .byte $20
- D - - - - 0x004AE1 02:AAD1: E6        .byte $E6
- D - - - - 0x004AE2 02:AAD2: 89        .byte $89

- D - - - - 0x004AE3 02:AAD3: 60        .byte $60
- D - - - - 0x004AE4 02:AAD4: F9        .byte $F9
- D - - - - 0x004AE5 02:AAD5: 89        .byte $89

- D - - - - 0x004AE6 02:AAD6: 20        .byte $20
- D - - - - 0x004AE7 02:AAD7: E7        .byte $E7
- D - - - - 0x004AE8 02:AAD8: 12        .byte $12

- D - - - - 0x004AE9 02:AAD9: 20        .byte $20
- D - - - - 0x004AEA 02:AADA: 07        .byte $07
- D - - - - 0x004AEB 02:AADB: 88        .byte $88

- D - - - - 0x004AEC 02:AADC: E0        .byte $E0
- D - - - - 0x004AED 02:AADD: 18        .byte $18
- D - - - - 0x004AEE 02:AADE: 88        .byte $88



tbl_AADF:
; возможно какие-то скорости
- D - - - - 0x004AEF 02:AADF: 10 00     .word $0010 ; 
- D - - - - 0x004AF1 02:AAE1: 10 00     .word $0010 ; 
- D - - - - 0x004AF3 02:AAE3: 40 00     .word $0040 ; 
- D - - - - 0x004AF5 02:AAE5: 00 00     .word $0000 ; 
- D - - - - 0x004AF7 02:AAE7: 00 00     .word $0000 ; 
- - - - - - 0x004AF9 02:AAE9: 00 00     .word $0000 ; 
- - - - - - 0x004AFB 02:AAEB: 00 00     .word $0000 ; 
- - - - - - 0x004AFD 02:AAED: 00 00     .word $0000 ; 
- D - - - - 0x004AFF 02:AAEF: 00 00     .word $0000 ; 
- D - - - - 0x004B01 02:AAF1: 04 00     .word $0004 ; 
- D - - - - 0x004B03 02:AAF3: 0E 00     .word $000E ; 
- D - - - - 0x004B05 02:AAF5: 1C 00     .word $001C ; 
- D - - - - 0x004B07 02:AAF7: 80 00     .word $0080 ; 
- - - - - - 0x004B09 02:AAF9: 00 00     .word $0000 ; 
- - - - - - 0x004B0B 02:AAFB: 00 00     .word $0000 ; 
- - - - - - 0x004B0D 02:AAFD: 00 00     .word $0000 ; 
- D - - - - 0x004B0F 02:AAFF: 00 00     .word $0000 ; 
- D - - - - 0x004B11 02:AB01: F0 FF     .word $FFF0 ; 
- D - - - - 0x004B13 02:AB03: E0 FF     .word $FFE0 ; 
- D - - - - 0x004B15 02:AB05: 80 FF     .word $FF80 ; 
- D - - - - 0x004B17 02:AB07: 00 00     .word $0000 ; 
- - - - - - 0x004B19 02:AB09: 00 00     .word $0000 ; 
- - - - - - 0x004B1B 02:AB0B: 00 00     .word $0000 ; 
- - - - - - 0x004B1D 02:AB0D: 00 00     .word $0000 ; 
- D - - - - 0x004B1F 02:AB0F: 00 00     .word $0000 ; 
- D - - - - 0x004B21 02:AB11: 04 00     .word $0004 ; 
- D - - - - 0x004B23 02:AB13: 0E 00     .word $000E ; 
- D - - - - 0x004B25 02:AB15: 1C 00     .word $001C ; 
- D - - - - 0x004B27 02:AB17: 00 00     .word $0000 ; 
- - - - - - 0x004B29 02:AB19: 00 00     .word $0000 ; 
- - - - - - 0x004B2B 02:AB1B: 00 00     .word $0000 ; 
- - - - - - 0x004B2D 02:AB1D: 00 00     .word $0000 ; 



; bzk optimize, второй байт из четырех не используется, не экономично
; третий байт начинается с 04 и увеличивается на 01
tbl_AB1F:
- D - - - - 0x004B2F 02:AB1F: 6C        .byte $6C
- - - - - - 0x004B30 02:AB20: 00        .byte $00   ; placeholder
- D - - - - 0x004B31 02:AB21: 04        .byte $04
- D - - - - 0x004B32 02:AB22: FC        .byte $FC

- D - - - - 0x004B33 02:AB23: 6E        .byte $6E
- - - - - - 0x004B34 02:AB24: 00        .byte $00   ; placeholder
- D - - - - 0x004B35 02:AB25: 05        .byte $05
- D - - - - 0x004B36 02:AB26: FC        .byte $FC

- D - - - - 0x004B37 02:AB27: 70        .byte $70
- - - - - - 0x004B38 02:AB28: 00        .byte $00   ; placeholder
- D - - - - 0x004B39 02:AB29: 06        .byte $06
- D - - - - 0x004B3A 02:AB2A: FA        .byte $FA

- D - - - - 0x004B3B 02:AB2B: 74        .byte $74
- - - - - - 0x004B3C 02:AB2C: 00        .byte $00   ; placeholder
- D - - - - 0x004B3D 02:AB2D: 07        .byte $07
- D - - - - 0x004B3E 02:AB2E: FA        .byte $FA



tbl_AB2F_номера_звуков_для_музыкального_экрана:
    .byte $58, $45, $51, $55, $53, $47, $46, $52, $54, $57, $5A, $48, $49, $4B, $4C, $4D
    .byte $4E, $4F, $50, $59, $56, $44, $32, $33, $41, $42, $43, $3C, $39, $3F, $40, $37
    .byte $38, $3E, $35, $34, $3B, $3A, $36, $3D, $03, $04, $05, $06, $07, $08, $09, $0A
    .byte $0B, $0C, $0D, $0E, $0F, $10, $11, $12, $13, $14, $15, $16, $17, $18, $19, $1A
    .byte $1B, $1C, $1D, $1E, $1F, $22, $23, $24, $25, $26, $27, $28, $29, $2A, $2B, $2C
    .byte $2D, $2E, $2F, $30, $5F, $60, $61, $62, $63, $64, $65, $66, $68, $69, $6A, $6B
    .byte $6C, $6D, $6E, $6F, $70



sub_AC6D:
C - - - - - 0x004C7D 02:AC6D: 4A        LSR
C - - - - - 0x004C7E 02:AC6E: 4A        LSR
C - - - - - 0x004C7F 02:AC6F: 4A        LSR
C - - - - - 0x004C80 02:AC70: 4A        LSR
sub_AC71:
C - - - - - 0x004C81 02:AC71: 29 0F     AND #$0F
C - - - - - 0x004C83 02:AC73: 18        CLC
C - - - - - 0x004C84 02:AC74: 69 33     ADC #$33
C - - - - - 0x004C86 02:AC76: C9 3D     CMP #$3D
C - - - - - 0x004C88 02:AC78: 90 03     BCC bra_AC7D_RTS
- - - - - - 0x004C8A 02:AC7A: 18        CLC
- - - - - - 0x004C8B 02:AC7B: 69 44     ADC #$44
bra_AC7D_RTS:
C - - - - - 0x004C8D 02:AC7D: 60        RTS



