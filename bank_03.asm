.segment "BANK_03"
.include "copy_bank_ram.inc"

.export sub_0x004010
sub_0x004010:
C D - - - 0x004010 03:A000: A9 00     LDA #$00
C - - - - 0x004012 03:A002: 8D 03 20  STA $2003
C - - - - 0x004015 03:A005: A9 02     LDA #$02
C - - - - 0x004017 03:A007: 8D 14 40  STA $4014
C - - - - 0x00401A 03:A00A: AD 28 06  LDA $0628
C - - - - 0x00401D 03:A00D: F0 4E     BEQ bra_A05D
C - - - - 0x00401F 03:A00F: 2C 29 06  BIT $0629
C - - - - 0x004022 03:A012: 70 49     BVS bra_A05D
C - - - - 0x004024 03:A014: A9 00     LDA #$00
C - - - - 0x004026 03:A016: 8D 01 20  STA $2001
C - - - - 0x004029 03:A019: A2 00     LDX #$00
bra_A01B:
C - - - - 0x00402B 03:A01B: A0 80     LDY #$80
C - - - - 0x00402D 03:A01D: BD E8 05  LDA $05E8,X
C - - - - 0x004030 03:A020: 10 04     BPL bra_A026
C - - - - 0x004032 03:A022: 29 3F     AND #$3F
C - - - - 0x004034 03:A024: A0 84     LDY #$84
bra_A026:
C - - - - 0x004036 03:A026: 8C 00 20  STY $2000
C - - - - 0x004039 03:A029: A8        TAY
C - - - - 0x00403A 03:A02A: BD EA 05  LDA $05EA,X
C - - - - 0x00403D 03:A02D: 8D 06 20  STA $2006
C - - - - 0x004040 03:A030: BD E9 05  LDA $05E9,X
C - - - - 0x004043 03:A033: 8D 06 20  STA $2006
bra_A036:
C - - - - 0x004046 03:A036: BD EB 05  LDA $05EB,X
C - - - - 0x004049 03:A039: 8D 07 20  STA $2007
C - - - - 0x00404C 03:A03C: E8        INX
C - - - - 0x00404D 03:A03D: 88        DEY
C - - - - 0x00404E 03:A03E: D0 F6     BNE bra_A036
C - - - - 0x004050 03:A040: E8        INX
C - - - - 0x004051 03:A041: E8        INX
C - - - - 0x004052 03:A042: E8        INX
C - - - - 0x004053 03:A043: BD E8 05  LDA $05E8,X
C - - - - 0x004056 03:A046: D0 D3     BNE bra_A01B
C - - - - 0x004058 03:A048: A9 00     LDA #$00
C - - - - 0x00405A 03:A04A: 8D 28 06  STA $0628
C - - - - 0x00405D 03:A04D: A9 3F     LDA #$3F
C - - - - 0x00405F 03:A04F: 8D 06 20  STA $2006
C - - - - 0x004062 03:A052: A9 00     LDA #$00
C - - - - 0x004064 03:A054: 8D 06 20  STA $2006
C - - - - 0x004067 03:A057: 8D 06 20  STA $2006
C - - - - 0x00406A 03:A05A: 8D 06 20  STA $2006
bra_A05D:
C - - - - 0x00406D 03:A05D: A5 21     LDA ram_0021
C - - - - 0x00406F 03:A05F: 8D 01 20  STA $2001
C - - - - 0x004072 03:A062: A5 79     LDA ram_0079
C - - - - 0x004074 03:A064: 10 0D     BPL bra_A073
- - - - - 0x004076 03:A066: A5 7B     LDA ram_007B
- - - - - 0x004078 03:A068: 8D 06 20  STA $2006
- - - - - 0x00407B 03:A06B: A5 7A     LDA ram_007A
- - - - - 0x00407D 03:A06D: 8D 06 20  STA $2006
- - - - - 0x004080 03:A070: 4C 91 A0  JMP loc_A091
bra_A073:
C - - - - 0x004083 03:A073: 46 20     LSR ram_0020
C - - - - 0x004085 03:A075: 46 20     LSR ram_0020
C - - - - 0x004087 03:A077: A5 45     LDA ram_0045
C - - - - 0x004089 03:A079: 4A        LSR
C - - - - 0x00408A 03:A07A: 26 20     ROL ram_0020
C - - - - 0x00408C 03:A07C: A5 7B     LDA ram_007B
C - - - - 0x00408E 03:A07E: 4A        LSR
C - - - - 0x00408F 03:A07F: 26 20     ROL ram_0020
C - - - - 0x004091 03:A081: A5 20     LDA ram_0020
C - - - - 0x004093 03:A083: 8D 00 20  STA $2000
C - - - - 0x004096 03:A086: A5 7A     LDA ram_007A
C - - - - 0x004098 03:A088: 8D 05 20  STA $2005
C - - - - 0x00409B 03:A08B: A6 44     LDX ram_0044
C - - - - 0x00409D 03:A08D: CA        DEX
C - - - - 0x00409E 03:A08E: 8E 05 20  STX $2005
loc_A091:
C - - - - 0x0040A1 03:A091: A0 16     LDY #$16
C - - - - 0x0040A3 03:A093: 20 CB A1  JSR sub_A1CB
C - - - - 0x0040A6 03:A096: A5 79     LDA ram_0079
C - - - - 0x0040A8 03:A098: F0 10     BEQ bra_A0AA
C - - - - 0x0040AA 03:A09A: 0A        ASL
C - - - - 0x0040AB 03:A09B: 8D 00 C0  STA $C000
C - - - - 0x0040AE 03:A09E: 8D 01 C0  STA $C001
C - - - - 0x0040B1 03:A0A1: 8D 01 E0  STA $E001
C - - - - 0x0040B4 03:A0A4: A9 04     LDA #$04
C - - - - 0x0040B6 03:A0A6: 85 78     STA ram_0078
C - - - - 0x0040B8 03:A0A8: 10 05     BPL bra_A0AF
bra_A0AA:
C - - - - 0x0040BA 03:A0AA: 8D 00 E0  STA $E000
C - - - - 0x0040BD 03:A0AD: 85 78     STA ram_0078
bra_A0AF:
C - - - - 0x0040BF 03:A0AF: A9 02     LDA #$02
C - - - - 0x0040C1 03:A0B1: 8D 00 80  STA $8000
C - - - - 0x0040C4 03:A0B4: A5 9E     LDA ram_009E
C - - - - 0x0040C6 03:A0B6: 8D 01 80  STA $8001
C - - - - 0x0040C9 03:A0B9: A9 03     LDA #$03
C - - - - 0x0040CB 03:A0BB: 8D 00 80  STA $8000
C - - - - 0x0040CE 03:A0BE: A5 9F     LDA ram_009F
C - - - - 0x0040D0 03:A0C0: 8D 01 80  STA $8001
C - - - - 0x0040D3 03:A0C3: A9 04     LDA #$04
C - - - - 0x0040D5 03:A0C5: 8D 00 80  STA $8000
C - - - - 0x0040D8 03:A0C8: A5 A0     LDA ram_00A0
C - - - - 0x0040DA 03:A0CA: 8D 01 80  STA $8001
C - - - - 0x0040DD 03:A0CD: A9 05     LDA #$05
C - - - - 0x0040DF 03:A0CF: 8D 00 80  STA $8000
C - - - - 0x0040E2 03:A0D2: A5 A1     LDA ram_00A1
C - - - - 0x0040E4 03:A0D4: 8D 01 80  STA $8001
C - - - - 0x0040E7 03:A0D7: A2 02     LDX #$01
C - - - - 0x0040E9 03:A0D9: A9 04     LDA #$04
C - - - - 0x0040EB 03:A0DB: 85 40     STA ram_0040
bra_A0DD:
C - - - - 0x0040ED 03:A0DD: B5 1B     LDA ram_удержанные,X
bra_A0DF:
C - - - - 0x0040EF 03:A0DF: 85 41     STA ram_0041
C - - - - 0x0040F1 03:A0E1: A9 01     LDA #$01
C - - - - 0x0040F3 03:A0E3: 8D 16 40  STA $4016
C - - - - 0x0040F6 03:A0E6: A9 00     LDA #$00
C - - - - 0x0040F8 03:A0E8: 8D 16 40  STA $4016
C - - - - 0x0040FB 03:A0EB: A0 08     LDY #$08
bra_A0ED:
C - - - - 0x0040FD 03:A0ED: BD 15 40  LDA $4016,X
C - - - - 0x004100 03:A0F0: 4A        LSR
C - - - - 0x004101 03:A0F1: 26 3F     ROL ram_003F
C - - - - 0x004103 03:A0F3: 29 01     AND #$01
C - - - - 0x004105 03:A0F5: 05 3F     ORA ram_003F
C - - - - 0x004107 03:A0F7: 85 3F     STA ram_003F
C - - - - 0x004109 03:A0F9: 88        DEY
C - - - - 0x00410A 03:A0FA: D0 F1     BNE bra_A0ED
C - - - - 0x00410C 03:A0FC: C5 41     CMP ram_0041
C - - - - 0x00410E 03:A0FE: F0 07     BEQ bra_A107
C - - - - 0x004110 03:A100: C6 40     DEC ram_0040
C - - - - 0x004112 03:A102: D0 DB     BNE bra_A0DF
- - - - - 0x004114 03:A104: 4C 13 A1  JMP loc_A113
bra_A107:
C - - - - 0x004117 03:A107: B5 1B     LDA ram_удержанные,X
C - - - - 0x004119 03:A109: 45 3F     EOR ram_003F
C - - - - 0x00411B 03:A10B: 25 3F     AND ram_003F
C - - - - 0x00411D 03:A10D: 95 1D     STA ram_одноразовые,X
C - - - - 0x00411F 03:A10F: A5 3F     LDA ram_003F
C - - - - 0x004121 03:A111: 95 1B     STA ram_удержанные,X
loc_A113:
C - - - - 0x004123 03:A113: CA        DEX
C - - - - 0x004124 03:A114: D0 C7     BPL bra_A0DD
C - - - - 0x004126 03:A116: 18        CLC
C - - - - 0x004127 03:A117: A5 E1     LDA ram_рандом_1
C - - - - 0x004129 03:A119: 69 83     ADC #$83
C - - - - 0x00412B 03:A11B: 85 E1     STA ram_рандом_1
C - - - - 0x00412D 03:A11D: A5 E2     LDA ram_рандом_2
C - - - - 0x00412F 03:A11F: 69 0D     ADC #$0D
C - - - - 0x004131 03:A121: 85 E2     STA ram_рандом_2
C - - - - 0x004133 03:A123: A5 E3     LDA ram_рандом_3
C - - - - 0x004135 03:A125: 69 11     ADC #$11
C - - - - 0x004137 03:A127: 85 E3     STA ram_рандом_3
C - - - - 0x004139 03:A129: A9 00     LDA #$00
C - - - - 0x00413B 03:A12B: 85 46     STA ram_0046
C - - - - 0x00413D 03:A12D: 85 47     STA ram_0047
C - - - - 0x00413F 03:A12F: A5 1B     LDA ram_001B
C - - - - 0x004141 03:A131: 09 80     ORA #$80
C - - - - 0x004143 03:A133: 85 1B     STA ram_001B
C - - - - 0x004145 03:A135: E6 3A     INC ram_003A
C - - - - 0x004147 03:A137: 60        RTS

.export sub_0x004170
sub_0x004170:
C - - - - 0x004170 03:A160: 8D 00 E0  STA $E000
C - - - - 0x004173 03:A163: 8D 01 E0  STA $E001
C - - - - 0x004176 03:A166: A6 78     LDX ram_0078
C - - - - 0x004178 03:A168: B5 78     LDA ram_0078,X
C - - - - 0x00417A 03:A16A: 10 21     BPL bra_A18D
C - - - - 0x00417C 03:A16C: A0 06     LDY #$06
bra_A16E:
C - - - - 0x00417E 03:A16E: 88        DEY
C - - - - 0x00417F 03:A16F: D0 FD     BNE bra_A16E
C - - - - 0x004181 03:A171: B5 79     LDA ram_0079,X
C - - - - 0x004183 03:A173: B4 7A     LDY ram_007A,X
C - - - - 0x004185 03:A175: 8C 06 20  STY $2006
C - - - - 0x004188 03:A178: 8D 06 20  STA $2006
C - - - - 0x00418B 03:A17B: A5 20     LDA ram_0020
C - - - - 0x00418D 03:A17D: 29 FC     AND #$FC
C - - - - 0x00418F 03:A17F: 8D 00 20  STA $2000
C - - - - 0x004192 03:A182: A9 00     LDA #$00
C - - - - 0x004194 03:A184: 8D 05 20  STA $2005
C - - - - 0x004197 03:A187: 8D 05 20  STA $2005
C - - - - 0x00419A 03:A18A: 4C A8 A1  JMP loc_A1A8
bra_A18D:
C - - - - 0x00419D 03:A18D: A0 02     LDY #$02
bra_A18F:
C - - - - 0x00419F 03:A18F: 88        DEY
C - - - - 0x0041A0 03:A190: D0 FD     BNE bra_A18F
C - - - - 0x0041A2 03:A192: 46 20     LSR ram_0020
C - - - - 0x0041A4 03:A194: B5 7A     LDA ram_007A,X
C - - - - 0x0041A6 03:A196: 4A        LSR
C - - - - 0x0041A7 03:A197: 26 20     ROL ram_0020
C - - - - 0x0041A9 03:A199: A5 20     LDA ram_0020
C - - - - 0x0041AB 03:A19B: 8D 00 20  STA $2000
C - - - - 0x0041AE 03:A19E: B5 79     LDA ram_0079,X
C - - - - 0x0041B0 03:A1A0: 8D 05 20  STA $2005
C - - - - 0x0041B3 03:A1A3: A9 00     LDA #$00
C - - - - 0x0041B5 03:A1A5: 8D 05 20  STA $2005
loc_A1A8:
C D - - - 0x0041B8 03:A1A8: B5 78     LDA ram_0078,X
C - - - - 0x0041BA 03:A1AA: 29 7F     AND #$7F
C - - - - 0x0041BC 03:A1AC: F0 12     BEQ bra_A1C0
C - - - - 0x0041BE 03:A1AE: E0 13     CPX #$13
C - - - - 0x0041C0 03:A1B0: F0 0E     BEQ bra_A1C0
C - - - - 0x0041C2 03:A1B2: E6 78     INC ram_0078
C - - - - 0x0041C4 03:A1B4: E6 78     INC ram_0078
C - - - - 0x0041C6 03:A1B6: E6 78     INC ram_0078
C - - - - 0x0041C8 03:A1B8: 0A        ASL
C - - - - 0x0041C9 03:A1B9: 8D 00 C0  STA $C000
C - - - - 0x0041CC 03:A1BC: 8D 01 C0  STA $C001
C - - - - 0x0041CF 03:A1BF: 60        RTS
bra_A1C0:
C - - - - 0x0041D0 03:A1C0: 8D 00 E0  STA $E000
C - - - - 0x0041D3 03:A1C3: 85 78     STA ram_0078
C - - - - 0x0041D5 03:A1C5: A0 18     LDY #$18
C - - - - 0x0041D7 03:A1C7: 20 CB A1  JSR sub_A1CB
C - - - - 0x0041DA 03:A1CA: 60        RTS

sub_A1CB:
C - - - - 0x0041DB 03:A1CB: B6 78     LDX ram_0078,Y
C - - - - 0x0041DD 03:A1CD: A9 00     LDA #$00
C - - - - 0x0041DF 03:A1CF: 05 22     ORA ram_0022
C - - - - 0x0041E1 03:A1D1: 8D 00 80  STA $8000
C - - - - 0x0041E4 03:A1D4: 8E 01 80  STX $8001
C - - - - 0x0041E7 03:A1D7: B6 79     LDX ram_0079,Y
C - - - - 0x0041E9 03:A1D9: A9 01     LDA #$01
C - - - - 0x0041EB 03:A1DB: 05 22     ORA ram_0022
C - - - - 0x0041ED 03:A1DD: 8D 00 80  STA $8000
C - - - - 0x0041F0 03:A1E0: 8E 01 80  STX $8001
C - - - - 0x0041F3 03:A1E3: 60        RTS

.export loc_0x004210
loc_0x004210:
C D - - - 0x004210 03:A200: 4C 1B A2  JMP loc_A21B

.export loc_0x004213
loc_0x004213:
C D - - - 0x004213 03:A203: 4C AF A2  JMP loc_A2AF

.export loc_0x004216
loc_0x004216:
C D - - - 0x004216 03:A206: 4C E8 A2  JMP loc_A2E8

.export loc_0x004219_управление_музыкальным_экраном
loc_0x004219_управление_музыкальным_экраном:
C D - - - 0x004219 03:A209: 4C D8 A3  JMP loc_A3D8_управление_музыкальным_экраном

.export sub_0x00421C
sub_0x00421C:
C - - - - 0x00421C 03:A20C: 4C 55 A8  JMP loc_A855

.export sub_0x00421F
sub_0x00421F:
C - - - - 0x00421F 03:A20F: 4C 6E A8  JMP loc_A86E

.export sub_0x004222
sub_0x004222:
C - - - - 0x004222 03:A212: 4C 84 A4  JMP loc_A484

.export sub_0x004225
sub_0x004225:
C - - - - 0x004225 03:A215: 4C CE A8  JMP loc_A8CE

loc_A21B:
C D - - - 0x00422B 03:A21B: A2 FF     LDX #$FF
C - - - - 0x00422D 03:A21D: 9A        TXS
C - - - - 0x00422E 03:A21E: 48        PHA
C - - - - 0x00422F 03:A21F: A9 00     LDA #$00
C - - - - 0x004231 03:A221: 8D 00 A0  STA $A000
C - - - - 0x004234 03:A224: A5 1B     LDA ram_001B
C - - - - 0x004236 03:A226: 09 40     ORA #$40
C - - - - 0x004238 03:A228: 85 1B     STA ram_001B
C - - - - 0x00423A 03:A22A: A9 00     LDA #$00
C - - - - 0x00423C 03:A22C: A0 E8     LDY #$E8
bra_A22E:
; bzk это адреса оперативки 0001-0018
C - - - - 0x00423E 03:A22E: 99 19 FF  STA $FF19,Y
C - - - - 0x004241 03:A231: C8        INY
C - - - - 0x004242 03:A232: D0 FA     BNE bra_A22E
C - - - - 0x004244 03:A234: A9 00     LDA #$00
C - - - - 0x004246 03:A236: A0 5A     LDY #$5A
bra_A238:
; bzk это адреса оперативки 003A-00DF
C - - - - 0x004248 03:A238: 99 E0 FF  STA $FFE0,Y
C - - - - 0x00424B 03:A23B: C8        INY
C - - - - 0x00424C 03:A23C: D0 FA     BNE bra_A238
C - - - - 0x00424E 03:A23E: A9 98     LDA #$98
C - - - - 0x004250 03:A240: A2 02     LDX #$02
C - - - - 0x004252 03:A242: A0 68     LDY #$68
C - - - - 0x004254 03:A244: 84 EC     STY ram_00EC
C - - - - 0x004256 03:A246: A0 04     LDY #$04
C - - - - 0x004258 03:A248: 20 06 AA  JSR sub_AA06
C - - - - 0x00425B 03:A24B: A9 0F     LDA #$0F
C - - - - 0x00425D 03:A24D: A0 E0     LDY #$E0
bra_A24F:
C - - - - 0x00425F 03:A24F: 99 4A 05  STA $054A,Y
C - - - - 0x004262 03:A252: C8        INY
C - - - - 0x004263 03:A253: D0 FA     BNE bra_A24F
C - - - - 0x004265 03:A255: 20 43 9A  JSR sub_0x001A53
C - - - - 0x004268 03:A258: A9 00     LDA #$00
C - - - - 0x00426A 03:A25A: 85 4A     STA ram_004A
C - - - - 0x00426C 03:A25C: 85 4B     STA ram_004B
C - - - - 0x00426E 03:A25E: 20 A0 98  JSR sub_0x0018B0
C - - - - 0x004271 03:A261: 20 7F 9B  JSR sub_0x001B8F
C - - - - 0x004274 03:A264: A9 02     LDA #$02
C - - - - 0x004276 03:A266: 85 8F     STA ram_008F
C - - - - 0x004278 03:A268: 85 91     STA ram_0091
C - - - - 0x00427A 03:A26A: 68        PLA
C - - - - 0x00427B 03:A26B: F0 14     BEQ bra_A281
; срабатывает в перерыве после первого тайма
C - - - - 0x00427D 03:A26D: A2 01     LDX #$01
C - - - - 0x00427F 03:A26F: A9 FF     LDA #< ofs_0x000010_действие_после_конца_тайма
C - - - - 0x004281 03:A271: 95 00     STA ram_0000,X
C - - - - 0x004283 03:A273: A9 7F     LDA #> ofs_0x000010_действие_после_конца_тайма
C - - - - 0x004285 03:A275: 95 01     STA ram_0001,X
C - - - - 0x004287 03:A277: A0 28     LDY #$28
C - - - - 0x004289 03:A279: A9 00     LDA #$00
C - - - - 0x00428B 03:A27B: 20 69 9F  JSR sub_0x001F79
C - - - - 0x00428E 03:A27E: 4C 92 A2  JMP loc_A292
bra_A281:
C - - - - 0x004291 03:A281: A2 01     LDX #$01
C - - - - 0x004293 03:A283: A9 1E     LDA #< ofs_0x00002F
C - - - - 0x004295 03:A285: 95 00     STA ram_0000,X
C - - - - 0x004297 03:A287: A9 80     LDA #> ofs_0x00002F
C - - - - 0x004299 03:A289: 95 01     STA ram_0001,X
C - - - - 0x00429B 03:A28B: A0 28     LDY #$28
C - - - - 0x00429D 03:A28D: A9 00     LDA #$00
C - - - - 0x00429F 03:A28F: 20 69 9F  JSR sub_0x001F79
loc_A292:
C D - - - 0x0042A2 03:A292: A2 15     LDX #$15
C - - - - 0x0042A4 03:A294: A9 EC     LDA #< ofs_0x0002FD
C - - - - 0x0042A6 03:A296: 95 00     STA ram_0000,X
C - - - - 0x0042A8 03:A298: A9 82     LDA #> ofs_0x0002FD
C - - - - 0x0042AA 03:A29A: 95 01     STA ram_0001,X
C - - - - 0x0042AC 03:A29C: A0 F0     LDY #$F0
C - - - - 0x0042AE 03:A29E: A9 00     LDA #$00
C - - - - 0x0042B0 03:A2A0: 20 69 9F  JSR sub_0x001F79
C - - - - 0x0042B3 03:A2A3: A5 20     LDA ram_0020
C - - - - 0x0042B5 03:A2A5: 09 80     ORA #$80
C - - - - 0x0042B7 03:A2A7: 85 20     STA ram_0020
C - - - - 0x0042B9 03:A2A9: 8D 00 20  STA $2000
C - - - - 0x0042BC 03:A2AC: 4C ED 9E  JMP loc_0x001EFD

loc_A2AF:
C D - - - 0x0042BF 03:A2AF: 20 F0 99  JSR sub_0x001A00
C - - - - 0x0042C2 03:A2B2: 20 A0 98  JSR sub_0x0018B0
C - - - - 0x0042C5 03:A2B5: 20 7F 9B  JSR sub_0x001B8F
C - - - - 0x0042C8 03:A2B8: A5 20     LDA ram_0020
C - - - - 0x0042CA 03:A2BA: 29 7F     AND #$7F
C - - - - 0x0042CC 03:A2BC: 8D 00 20  STA $2000
C - - - - 0x0042CF 03:A2BF: 85 20     STA ram_0020
C - - - - 0x0042D1 03:A2C1: 8D 00 E0  STA $E000
C - - - - 0x0042D4 03:A2C4: A9 00     LDA #$00
C - - - - 0x0042D6 03:A2C6: A0 E8     LDY #$E8
; сработало перед появлением экрана с разводкой
bra_A2C8:
; bzk это адреса оперативки 0001-0018
C - - - - 0x0042D8 03:A2C8: 99 19 FF  STA $FF19,Y
C - - - - 0x0042DB 03:A2CB: C8        INY
C - - - - 0x0042DC 03:A2CC: D0 FA     BNE bra_A2C8
C - - - - 0x0042DE 03:A2CE: A9 00     LDA #$00
C - - - - 0x0042E0 03:A2D0: A0 5A     LDY #$5A
bra_A2D2:
; bzk это адреса оперативки 003A-00DF
C - - - - 0x0042E2 03:A2D2: 99 E0 FF  STA $FFE0,Y
C - - - - 0x0042E5 03:A2D5: C8        INY
C - - - - 0x0042E6 03:A2D6: D0 FA     BNE bra_A2D2
C - - - - 0x0042E8 03:A2D8: A9 98     LDA #$98
C - - - - 0x0042EA 03:A2DA: A2 02     LDX #$02
C - - - - 0x0042EC 03:A2DC: A0 68     LDY #$68
C - - - - 0x0042EE 03:A2DE: 84 EC     STY ram_00EC
C - - - - 0x0042F0 03:A2E0: A0 04     LDY #$04
C - - - - 0x0042F2 03:A2E2: 20 06 AA  JSR sub_AA06
C - - - - 0x0042F5 03:A2E5: 4C 57 C5  JMP loc_0x03C567

loc_A2E8:
C D - - - 0x0042F8 03:A2E8: A5 57     LDA ram_0057
C - - - - 0x0042FA 03:A2EA: 30 4C     BMI bra_A338
C - - - - 0x0042FC 03:A2EC: 85 ED     STA ram_00ED
C - - - - 0x0042FE 03:A2EE: A9 00     LDA #$00
C - - - - 0x004300 03:A2F0: A0 FA     LDY #$FA
bra_A2F2:
; bzk это адреса оперативки 00E6-00EB
C - - - - 0x004302 03:A2F2: 99 EC FF  STA $FFEC,Y
C - - - - 0x004305 03:A2F5: C8        INY
C - - - - 0x004306 03:A2F6: D0 FA     BNE bra_A2F2
loc_A2F8:
C D - - - 0x004308 03:A2F8: A9 01     LDA #$01
C - - - - 0x00430A 03:A2FA: 20 A8 9F  JSR sub_0x001FB8
C - - - - 0x00430D 03:A2FD: A4 ED     LDY ram_00ED
C - - - - 0x00430F 03:A2FF: A9 00     LDA #$00
C - - - - 0x004311 03:A301: 85 EC     STA ram_00EC
bra_A303:
C - - - - 0x004313 03:A303: 98        TYA
C - - - - 0x004314 03:A304: 29 0F     AND #$0F
C - - - - 0x004316 03:A306: 4A        LSR
C - - - - 0x004317 03:A307: AA        TAX
C - - - - 0x004318 03:A308: B9 DF AA  LDA tbl_AADF,Y
C - - - - 0x00431B 03:A30B: 18        CLC
C - - - - 0x00431C 03:A30C: 75 E6     ADC ram_00E6,X
C - - - - 0x00431E 03:A30E: 95 E6     STA ram_00E6,X
C - - - - 0x004320 03:A310: A6 EC     LDX ram_00EC
C - - - - 0x004322 03:A312: B9 E0 AA  LDA tbl_AADF + 1,Y
C - - - - 0x004325 03:A315: 75 7A     ADC ram_007A,X
C - - - - 0x004327 03:A317: 95 7A     STA ram_007A,X
C - - - - 0x004329 03:A319: B9 E0 AA  LDA tbl_AADF + 1,Y
C - - - - 0x00432C 03:A31C: 10 04     BPL bra_A322
C - - - - 0x00432E 03:A31E: A9 FF     LDA #$FF
C - - - - 0x004330 03:A320: D0 02     BNE bra_A324
bra_A322:
C - - - - 0x004332 03:A322: A9 00     LDA #$00
bra_A324:
C - - - - 0x004334 03:A324: 75 7B     ADC ram_007B,X
C - - - - 0x004336 03:A326: 95 7B     STA ram_007B,X
C - - - - 0x004338 03:A328: C8        INY
C - - - - 0x004339 03:A329: C8        INY
C - - - - 0x00433A 03:A32A: A5 EC     LDA ram_00EC
C - - - - 0x00433C 03:A32C: 18        CLC
C - - - - 0x00433D 03:A32D: 69 03     ADC #$03
C - - - - 0x00433F 03:A32F: 85 EC     STA ram_00EC
C - - - - 0x004341 03:A331: C9 0F     CMP #$0F
C - - - - 0x004343 03:A333: D0 CE     BNE bra_A303
C - - - - 0x004345 03:A335: 4C F8 A2  JMP loc_A2F8
bra_A338:
C - - - - 0x004348 03:A338: C9 81     CMP #$81
C - - - - 0x00434A 03:A33A: F0 67     BEQ bra_A3A3
C - - - - 0x00434C 03:A33C: A2 67     LDX #$67
C - - - - 0x00434E 03:A33E: A9 05     LDA #$05
C - - - - 0x004350 03:A340: 20 BD C4  JSR sub_0x03C4CD
C - - - - 0x004353 03:A343: A9 00     LDA #$00
C - - - - 0x004355 03:A345: 85 ED     STA ram_00ED
C - - - - 0x004357 03:A347: A8        TAY
C - - - - 0x004358 03:A348: A2 78     LDX #$78
bra_A34A:
C - - - - 0x00435A 03:A34A: A5 EC     LDA ram_00EC
C - - - - 0x00435C 03:A34C: 29 01     AND #$01
C - - - - 0x00435E 03:A34E: 09 F2     ORA #$F2
C - - - - 0x004360 03:A350: 9D 69 04  STA ram_копия_спрайт_тайл,X
C - - - - 0x004363 03:A353: A9 03     LDA #$03
C - - - - 0x004365 03:A355: 9D 6A 04  STA ram_копия_спрайт_атрибут,X
C - - - - 0x004368 03:A358: 98        TYA
C - - - - 0x004369 03:A359: 9D 68 04  STA ram_копия_спрайт_Y,X
C - - - - 0x00436C 03:A35C: 18        CLC
C - - - - 0x00436D 03:A35D: 69 03     ADC #$03
C - - - - 0x00436F 03:A35F: A8        TAY
C - - - - 0x004370 03:A360: A5 EC     LDA ram_00EC
C - - - - 0x004372 03:A362: 9D 6B 04  STA ram_копия_спрайт_X,X
C - - - - 0x004375 03:A365: 18        CLC
C - - - - 0x004376 03:A366: 69 0D     ADC #$0D
C - - - - 0x004378 03:A368: 85 EC     STA ram_00EC
C - - - - 0x00437A 03:A36A: E8        INX
C - - - - 0x00437B 03:A36B: E8        INX
C - - - - 0x00437C 03:A36C: E8        INX
C - - - - 0x00437D 03:A36D: E8        INX
C - - - - 0x00437E 03:A36E: E0 FC     CPX #$FC
C - - - - 0x004380 03:A370: D0 D8     BNE bra_A34A
loc_A372:
C D - - - 0x004382 03:A372: A9 01     LDA #$01
C - - - - 0x004384 03:A374: 20 A8 9F  JSR sub_0x001FB8
C - - - - 0x004387 03:A377: A2 78     LDX #$78
bra_A379:
C - - - - 0x004389 03:A379: 8A        TXA
C - - - - 0x00438A 03:A37A: 29 0C     AND #$0C
C - - - - 0x00438C 03:A37C: A8        TAY
C - - - - 0x00438D 03:A37D: BD 68 04  LDA ram_копия_спрайт_Y,X
C - - - - 0x004390 03:A380: D9 1F AB  CMP tbl_AB1F,Y
C - - - - 0x004393 03:A383: 90 02     BCC bra_A387
C - - - - 0x004395 03:A385: A9 00     LDA #$00
bra_A387:
C - - - - 0x004397 03:A387: 18        CLC
C - - - - 0x004398 03:A388: 79 21 AB  ADC tbl_AB1F + 2,Y
C - - - - 0x00439B 03:A38B: 9D 68 04  STA ram_копия_спрайт_Y,X
C - - - - 0x00439E 03:A38E: BD 6B 04  LDA ram_копия_спрайт_X,X
C - - - - 0x0043A1 03:A391: 18        CLC
C - - - - 0x0043A2 03:A392: 79 22 AB  ADC tbl_AB1F + 3,Y
C - - - - 0x0043A5 03:A395: 9D 6B 04  STA ram_копия_спрайт_X,X
C - - - - 0x0043A8 03:A398: E8        INX
C - - - - 0x0043A9 03:A399: E8        INX
C - - - - 0x0043AA 03:A39A: E8        INX
C - - - - 0x0043AB 03:A39B: E8        INX
C - - - - 0x0043AC 03:A39C: E0 FC     CPX #$FC
C - - - - 0x0043AE 03:A39E: D0 D9     BNE bra_A379
C - - - - 0x0043B0 03:A3A0: 4C 72 A3  JMP loc_A372
bra_A3A3:
C - - - - 0x0043B3 03:A3A3: AD 68 05  LDA $0568
C - - - - 0x0043B6 03:A3A6: 09 10     ORA #$10
C - - - - 0x0043B8 03:A3A8: 8D 68 05  STA $0568
loc_A3AB:
C D - - - 0x0043BB 03:A3AB: A9 04     LDA #$04
C - - - - 0x0043BD 03:A3AD: 20 A8 9F  JSR sub_0x001FB8
C - - - - 0x0043C0 03:A3B0: A9 08     LDA #$08
C - - - - 0x0043C2 03:A3B2: 85 44     STA ram_0044
C - - - - 0x0043C4 03:A3B4: 85 46     STA ram_0046
C - - - - 0x0043C6 03:A3B6: AD 6D 05  LDA $056D
C - - - - 0x0043C9 03:A3B9: 38        SEC
C - - - - 0x0043CA 03:A3BA: E9 04     SBC #$04
C - - - - 0x0043CC 03:A3BC: 8D 6D 05  STA $056D
C - - - - 0x0043CF 03:A3BF: A9 04     LDA #$04
C - - - - 0x0043D1 03:A3C1: 20 A8 9F  JSR sub_0x001FB8
C - - - - 0x0043D4 03:A3C4: A9 00     LDA #$00
C - - - - 0x0043D6 03:A3C6: 85 44     STA ram_0044
C - - - - 0x0043D8 03:A3C8: A9 F8     LDA #$F8
C - - - - 0x0043DA 03:A3CA: 85 46     STA ram_0046
C - - - - 0x0043DC 03:A3CC: AD 6D 05  LDA $056D
C - - - - 0x0043DF 03:A3CF: 18        CLC
C - - - - 0x0043E0 03:A3D0: 69 04     ADC #$04
C - - - - 0x0043E2 03:A3D2: 8D 6D 05  STA $056D
C - - - - 0x0043E5 03:A3D5: 4C AB A3  JMP loc_A3AB

loc_A3D8_управление_музыкальным_экраном:
; в 00E7 хранится порядковый номер счетчика звука
C D - - - 0x0043E8 03:A3D8: 20 F0 99  JSR sub_0x001A00
C - - - - 0x0043EB 03:A3DB: A9 61     LDA #$61
C - - - - 0x0043ED 03:A3DD: 20 64 84  JSR sub_0x000474
C - - - - 0x0043F0 03:A3E0: 20 A9 82  JSR sub_0x0002B9
C - - - - 0x0043F3 03:A3E3: A0 F8     LDY #$F8
bra_A3E5_цикл:
C - - - - 0x0043F5 03:A3E5: B9 84 A3  LDA tbl_A47C - $F8,Y
C - - - - 0x0043F8 03:A3E8: 99 60 04  STA $0460,Y
C - - - - 0x0043FB 03:A3EB: C8        INY
C - - - - 0x0043FC 03:A3EC: D0 F7     BNE bra_A3E5_цикл
C - - - - 0x0043FE 03:A3EE: A9 00     LDA #$00
C - - - - 0x004400 03:A3F0: 85 E7     STA ram_00E7
C - - - - 0x004402 03:A3F2: 20 54 A4  JSR sub_A456_выбрать_тайлы_цифр
bra_A3F5_вверх_вниз_не_нажаты:
C - - - - 0x004405 03:A3F5: A9 01     LDA #$01
C - - - - 0x004407 03:A3F7: 20 A8 9F  JSR sub_0x001FB8
C - - - - 0x00440A 03:A3FA: A5 1E     LDA ram_одноразовые
C - - - - 0x00440C 03:A3FC: 29 10     AND #con_btn_Start
C - - - - 0x00440E 03:A3FE: D0 45     BNE bra_A445_выход_из_музыкального_экрана
C - - - - 0x004410 03:A400: 24 1E     BIT ram_одноразовые
; con_btn_A
C - - - - 0x004412 03:A402: 30 07     BMI bra_A40B_воспроизвести_звук
C - - - - 0x004414 03:A404: A9 01     LDA #$01
; con_btn_B
C - - - - 0x004416 03:A406: 70 08     BVS bra_A410_выключить_звук
C - - - - 0x004418 03:A408: 4C 13 A4  JMP loc_A413_кнопки_не_нажаты
bra_A40B_воспроизвести_звук:
C - - - - 0x00441B 03:A40B: A6 E7     LDX ram_00E7
C - - - - 0x00441D 03:A40D: BD 2F AB  LDA tbl_AB2F_номера_звуков_для_музыкального_экрана,X
bra_A410_выключить_звук:
C - - - - 0x004420 03:A410: 8D 00 07  STA ram_звук
loc_A413_кнопки_не_нажаты:
C D - - - 0x004423 03:A413: 20 20 AA  JSR sub_AA20_проверка_нажатий_вверх_вниз
C - - - - 0x004426 03:A416: 90 DD     BCC bra_A3F5_вверх_вниз_не_нажаты
C - - - - 0x004428 03:A418: A2 10     LDX #$10
loc_A41A:
C D - - - 0x00442A 03:A41A: 86 E6     STX ram_00E6
C - - - - 0x00442C 03:A41C: A8        TAY
C - - - - 0x00442D 03:A41D: 18        CLC
C - - - - 0x00442E 03:A41E: 65 E7     ADC ram_00E7
C - - - - 0x004430 03:A420: C9 64     CMP #$64
C - - - - 0x004432 03:A422: 90 09     BCC bra_A42D_запись_номера
- - - - - 0x004434 03:A424: 98        TYA
- - - - - 0x004435 03:A425: 30 04     BMI bra_A42B_было_нажато_вниз
- - - - - 0x004437 03:A427: A9 00     LDA #$00
- - - - - 0x004439 03:A429: F0 02     BEQ bra_A42D_запись_номера
bra_A42B_было_нажато_вниз:
- - - - - 0x00443B 03:A42B: A9 63     LDA #$63
bra_A42D_запись_номера:
C - - - - 0x00443F 03:A42F: 20 54 A4  JSR sub_A454_выбрать_тайлы_цифр
bra_A432:
C - - - - 0x004442 03:A432: A9 01     LDA #$01
C - - - - 0x004444 03:A434: 20 A8 9F  JSR sub_0x001FB8
C - - - - 0x004447 03:A437: 20 20 AA  JSR sub_AA20_проверка_нажатий_вверх_вниз
C - - - - 0x00444A 03:A43A: 90 B9     BCC bra_A3F5_вверх_вниз_не_нажаты
C - - - - 0x00444C 03:A43C: C6 E6     DEC ram_00E6
C - - - - 0x00444E 03:A43E: D0 F2     BNE bra_A432
C - - - - 0x004450 03:A440: A2 04     LDX #$04
C - - - - 0x004452 03:A442: 4C 1A A4  JMP loc_A41A
bra_A445_выход_из_музыкального_экрана:
C - - - - 0x004455 03:A445: A9 01     LDA #$01
C - - - - 0x004457 03:A447: 8D 00 07  STA ram_звук
C - - - - 0x00445A 03:A44A: A9 00     LDA #$00
C - - - - 0x00445C 03:A44C: 85 4C     STA ram_004C
C - - - - 0x00445E 03:A44E: 20 F0 99  JSR sub_0x001A00
C - - - - 0x004461 03:A451: 4C 53 80  JMP loc_0x000063

sub_A454_выбрать_тайлы_цифр:
C - - - - 0x004464 03:A454: A5 E7     STA ram_00E7
sub_A456_выбрать_тайлы_цифр:
C - - - - 0x004466 03:A456: 20 7C 9E  JSR sub_0x001E8C
C - - - - 0x004469 03:A459: A5 EC     LDA ram_00EC
; деление на #10
C - - - - 0x00446B 03:A45B: 4A        LSR
C - - - - 0x00446C 03:A45C: 4A        LSR
C - - - - 0x00446D 03:A45D: 4A        LSR
C - - - - 0x00446E 03:A45E: 4A        LSR
C - - - - 0x00446F 03:A45F: A8        TAY
C - - - - 0x004470 03:A460: B9 72 A4  LDA tbl_A472_номера_тайлов_цифр,Y
C - - - - 0x004473 03:A463: 8D 59 05  STA $0559
C - - - - 0x004476 03:A466: A5 EC     LDA ram_00EC
C - - - - 0x004478 03:A468: 29 0F     AND #$0F
C - - - - 0x00447A 03:A46A: A8        TAY
C - - - - 0x00447B 03:A46B: B9 72 A4  LDA tbl_A472_номера_тайлов_цифр,Y
C - - - - 0x00447E 03:A46E: 8D 5D 05  STA $055D
C - - - - 0x004481 03:A471: 60        RTS

tbl_A472_номера_тайлов_цифр:
- D - - - 0x004482 03:A472: 10        .byte $10	; <た>
- D - - - 0x004483 03:A473: 18        .byte $18	; <ね>
- D - - - 0x004484 03:A474: 19        .byte $19	; <の>
- D - - - 0x004485 03:A475: 1A        .byte $1A	; <は>
- D - - - 0x004486 03:A476: 1B        .byte $1B	; <ひ>
- D - - - 0x004487 03:A477: 1C        .byte $1C	; <ふ>
- D - - - 0x004488 03:A478: 1D        .byte $1D	; <へ>
- D - - - 0x004489 03:A479: 1E        .byte $1E	; <ほ>
- D - - - 0x00448A 03:A47A: 1F        .byte $1F	; <ま>
- D - - - 0x00448B 03:A47B: 20        .byte $20	; <み>

tbl_A47C:
- D - - - 0x00448C 03:A47C: 80        .byte $80
- D - - - 0x00448D 03:A47D: 10        .byte $10	; <た>
- D - - - 0x00448E 03:A47E: 03        .byte $03	; <う>
- D - - - 0x00448F 03:A47F: 90        .byte $90	; <U>
- D - - - 0x004490 03:A480: 80        .byte $80
- D - - - 0x004491 03:A481: 10        .byte $10	; <た>
- D - - - 0x004492 03:A482: 03        .byte $03	; <う>
- D - - - 0x004493 03:A483: 98        .byte $98

loc_A484:
C D - - - 0x004494 03:A484: A5 ED     LDA ram_00ED
C - - - - 0x004496 03:A486: 0A        ASL
C - - - - 0x004497 03:A487: AA        TAX
C - - - - 0x004498 03:A488: BD 92 A4  LDA tbl_A491 + 1,X
C - - - - 0x00449B 03:A48B: 48        PHA
C - - - - 0x00449C 03:A48C: BD 91 A4  LDA tbl_A491,X
C - - - - 0x00449F 03:A48F: 48        PHA
C - - - - 0x0044A0 03:A490: 60        RTS

tbl_A491:
- D - - - 0x0044A1 03:A491: C0 A4     .word ofs_A4C1_00 - 1
- D - - - 0x0044A3 03:A493: 59 A5     .word ofs_A55A_01 - 1
- D - - - 0x0044A5 03:A495: 7B A5     .word ofs_A57C_02 - 1
- - - - - 0x0044A7 03:A497: 81 A5     .word ofs_A582_03 - 1
- - - - - 0x0044A9 03:A499: A2 A5     .word ofs_A5A3_04 - 1
- D - - - 0x0044AB 03:A49B: A8 A5     .word ofs_A5A9_05 - 1
- D - - - 0x0044AD 03:A49D: B0 A5     .word ofs_A5B1_06 - 1
- - - - - 0x0044AF 03:A49F: B8 A5     .word ofs_A5B9_07 - 1
- - - - - 0x0044B1 03:A4A1: BF A5     .word ofs_A5C0_08 - 1
- - - - - 0x0044B3 03:A4A3: CD A5     .word ofs_A5CE_09 - 1
- D - - - 0x0044B5 03:A4A5: DB A5     .word ofs_A5DC_0A - 1
- D - - - 0x0044B7 03:A4A7: E8 A5     .word ofs_A5E9_0B - 1
- D - - - 0x0044B9 03:A4A9: 02 A6     .word ofs_A603_0C - 1
- D - - - 0x0044BB 03:A4AB: 1C A6     .word ofs_A61D_0D - 1
- D - - - 0x0044BD 03:A4AD: 29 A6     .word ofs_A62A_0E - 1
- D - - - 0x0044BF 03:A4AF: 50 A6     .word ofs_A651_0F - 1
- D - - - 0x0044C1 03:A4B1: 9C A6     .word ofs_A69D_10 - 1
- D - - - 0x0044C3 03:A4B3: 7A A7     .word ofs_A77B_11 - 1
- D - - - 0x0044C5 03:A4B5: 82 A7     .word ofs_A783_12 - 1
- - - - - 0x0044C7 03:A4B7: 8D A7     .word ofs_A78E_13 - 1
- D - - - 0x0044C9 03:A4B9: BD A7     .word ofs_A7BE_14 - 1
- D - - - 0x0044CB 03:A4BB: CE A7     .word ofs_A7CF_15 - 1
- D - - - 0x0044CD 03:A4BD: D6 A7     .word ofs_A7D7_16 - 1
- D - - - 0x0044CF 03:A4BF: FA A7     .word ofs_A7FB_17 - 1

ofs_A4C1_00:
C - - - - 0x0044D1 03:A4C1: 20 0D 9A  JSR sub_0x001A1D
C - - - - 0x0044D4 03:A4C4: A9 10     LDA #$10
C - - - - 0x0044D6 03:A4C6: 20 A8 9F  JSR sub_0x001FB8
C - - - - 0x0044D9 03:A4C9: A0 30     LDY #$30
bra_A4CB:
C - - - - 0x0044DB 03:A4CB: A9 01     LDA #$01
C - - - - 0x0044DD 03:A4CD: 20 A8 9F  JSR sub_0x001FB8
C - - - - 0x0044E0 03:A4D0: A9 01     LDA #$01
C - - - - 0x0044E2 03:A4D2: 20 0C 89  JSR sub_0x00091C
C - - - - 0x0044E5 03:A4D5: 88        DEY
C - - - - 0x0044E6 03:A4D6: D0 F3     BNE bra_A4CB
C - - - - 0x0044E8 03:A4D8: A9 00     LDA #$00
C - - - - 0x0044EA 03:A4DA: 85 5B     STA ram_005B
C - - - - 0x0044EC 03:A4DC: 85 7B     STA ram_007B
C - - - - 0x0044EE 03:A4DE: A9 17     LDA #$17
C - - - - 0x0044F0 03:A4E0: 20 F7 8A  JSR sub_0x000B07
C - - - - 0x0044F3 03:A4E3: A9 68     LDA #$68
C - - - - 0x0044F5 03:A4E5: 85 44     STA ram_0044
C - - - - 0x0044F7 03:A4E7: A9 03     LDA #$03
C - - - - 0x0044F9 03:A4E9: 20 20 89  JSR sub_0x000930
C - - - - 0x0044FC 03:A4EC: A5 8E     LDA ram_008E
C - - - - 0x0044FE 03:A4EE: 85 90     STA ram_0090
C - - - - 0x004500 03:A4F0: A5 8F     LDA ram_008F
C - - - - 0x004502 03:A4F2: 85 91     STA ram_0091
C - - - - 0x004504 03:A4F4: A9 04     LDA #$04
C - - - - 0x004506 03:A4F6: 20 A8 9F  JSR sub_0x001FB8
C - - - - 0x004509 03:A4F9: 20 35 9A  JSR sub_0x001A45
C - - - - 0x00450C 03:A4FC: 20 FB 88  JSR sub_0x00090B
bra_A4FF:
C - - - - 0x00450F 03:A4FF: A9 01     LDA #$01
C - - - - 0x004511 03:A501: 20 A8 9F  JSR sub_0x001FB8
C - - - - 0x004514 03:A504: E6 79     INC ram_0079
C - - - - 0x004516 03:A506: C6 7C     DEC ram_007C
C - - - - 0x004518 03:A508: C6 7C     DEC ram_007C
C - - - - 0x00451A 03:A50A: A5 44     LDA ram_0044
C - - - - 0x00451C 03:A50C: 38        SEC
C - - - - 0x00451D 03:A50D: E9 02     SBC #$02
C - - - - 0x00451F 03:A50F: 85 44     STA ram_0044
C - - - - 0x004521 03:A511: C9 03     CMP #$03
C - - - - 0x004523 03:A513: B0 EA     BCS bra_A4FF
C - - - - 0x004525 03:A515: A9 00     LDA #$00
C - - - - 0x004527 03:A517: 20 20 89  JSR sub_0x000930
C - - - - 0x00452A 03:A51A: A5 1B     LDA ram_001B
C - - - - 0x00452C 03:A51C: 09 01     ORA #$01
C - - - - 0x00452E 03:A51E: 85 1B     STA ram_001B
C - - - - 0x004530 03:A520: A9 F0     LDA #$F0
C - - - - 0x004532 03:A522: 20 A8 9F  JSR sub_0x001FB8
C - - - - 0x004535 03:A525: A9 3C     LDA #$3C
C - - - - 0x004537 03:A527: 20 A8 9F  JSR sub_0x001FB8
C - - - - 0x00453A 03:A52A: A5 1B     LDA ram_001B
C - - - - 0x00453C 03:A52C: 29 FE     AND #$FE
C - - - - 0x00453E 03:A52E: 85 1B     STA ram_001B
C - - - - 0x004540 03:A530: A9 00     LDA #$00
C - - - - 0x004542 03:A532: 85 90     STA ram_0090
C - - - - 0x004544 03:A534: A9 02     LDA #$02
C - - - - 0x004546 03:A536: 85 91     STA ram_0091
C - - - - 0x004548 03:A538: 20 F0 99  JSR sub_0x001A00
C - - - - 0x00454B 03:A53B: 20 7F 9B  JSR sub_0x001B8F
C - - - - 0x00454E 03:A53E: 20 A0 98  JSR sub_0x0018B0
C - - - - 0x004551 03:A541: A9 C0     LDA #$C0
C - - - - 0x004553 03:A543: 85 E6     STA ram_00E6
C - - - - 0x004555 03:A545: A9 23     LDA #$23
C - - - - 0x004557 03:A547: 85 E7     STA ram_00E7
C - - - - 0x004559 03:A549: A0 02     LDY #$02
C - - - - 0x00455B 03:A54B: A2 20     LDX #$20
C - - - - 0x00455D 03:A54D: A9 55     LDA #$55
C - - - - 0x00455F 03:A54F: 20 EA 98  JSR sub_0x0018FA
C - - - - 0x004562 03:A552: A9 01     LDA #$01
C - - - - 0x004564 03:A554: 20 20 89  JSR sub_0x000930
C - - - - 0x004567 03:A557: A9 02     LDA #$02
C - - - - 0x004569 03:A559: 60        RTS

ofs_A55A_01:
C - - - - 0x00456A 03:A55A: A9 00     LDA #$00
C - - - - 0x00456C 03:A55C: 85 60     STA ram_0060
C - - - - 0x00456E 03:A55E: A5 EC     LDA ram_00EC
C - - - - 0x004570 03:A560: 4A        LSR
C - - - - 0x004571 03:A561: 66 60     ROR ram_0060
C - - - - 0x004573 03:A563: 4A        LSR
C - - - - 0x004574 03:A564: 66 60     ROR ram_0060
C - - - - 0x004576 03:A566: 85 61     STA ram_0061
C - - - - 0x004578 03:A568: 24 62     BIT ram_0062
C - - - - 0x00457A 03:A56A: 30 0D     BMI bra_A579
C - - - - 0x00457C 03:A56C: A9 00     LDA #$00
C - - - - 0x00457E 03:A56E: 38        SEC
C - - - - 0x00457F 03:A56F: E5 60     SBC ram_0060
C - - - - 0x004581 03:A571: 85 60     STA ram_0060
C - - - - 0x004583 03:A573: A9 00     LDA #$00
C - - - - 0x004585 03:A575: E5 61     SBC ram_0061
C - - - - 0x004587 03:A577: 85 61     STA ram_0061
bra_A579:
C - - - - 0x004589 03:A579: A9 03     LDA #$03
C - - - - 0x00458B 03:A57B: 60        RTS

ofs_A57C_02:
C - - - - 0x00458C 03:A57C: 20 91 9B  JSR sub_0x001BA1
C - - - - 0x00458F 03:A57F: A9 02     LDA #$02
C - - - - 0x004591 03:A581: 60        RTS

ofs_A582_03:
- - - - - 0x004592 03:A582: A9 00     LDA #$00
- - - - - 0x004594 03:A584: 85 E6     STA ram_00E6
- - - - - 0x004596 03:A586: A9 20     LDA #$20
- - - - - 0x004598 03:A588: 85 E7     STA ram_00E7
- - - - - 0x00459A 03:A58A: A0 10     LDY #$10
- - - - - 0x00459C 03:A58C: A2 20     LDX #$20
- - - - - 0x00459E 03:A58E: 20 E8 98  JSR sub_0x0018F8
- - - - - 0x0045A1 03:A591: A9 00     LDA #$00
- - - - - 0x0045A3 03:A593: 85 E6     STA ram_00E6
- - - - - 0x0045A5 03:A595: A9 24     LDA #$24
- - - - - 0x0045A7 03:A597: 85 E7     STA ram_00E7
- - - - - 0x0045A9 03:A599: A0 20     LDY #$20
- - - - - 0x0045AB 03:A59B: A2 20     LDX #$20
- - - - - 0x0045AD 03:A59D: 20 E8 98  JSR sub_0x0018F8
- - - - - 0x0045B0 03:A5A0: A9 02     LDA #$02
- - - - - 0x0045B2 03:A5A2: 60        RTS

ofs_A5A3_04:
- - - - - 0x0045B3 03:A5A3: 20 7F 9B  JSR sub_0x001B8F
- - - - - 0x0045B6 03:A5A6: A9 02     LDA #$02
- - - - - 0x0045B8 03:A5A8: 60        RTS

ofs_A5A9_05:
C - - - - 0x0045B9 03:A5A9: A2 09     LDX #$09
C - - - - 0x0045BB 03:A5AB: 20 96 9F  JSR sub_0x001FA6
C - - - - 0x0045BE 03:A5AE: A9 02     LDA #$02
C - - - - 0x0045C0 03:A5B0: 60        RTS

ofs_A5B1_06:
C - - - - 0x0045C1 03:A5B1: A2 09     LDX #$09
C - - - - 0x0045C3 03:A5B3: 20 89 9F  JSR sub_0x001F99
C - - - - 0x0045C6 03:A5B6: A9 02     LDA #$02
C - - - - 0x0045C8 03:A5B8: 60        RTS

ofs_A5B9_07:
- - - - - 0x0045C9 03:A5B9: A9 FF     LDA #$FF
- - - - - 0x0045CB 03:A5BB: 85 99     STA ram_0099
- - - - - 0x0045CD 03:A5BD: A9 02     LDA #$02
- - - - - 0x0045CF 03:A5BF: 60        RTS

ofs_A5C0_08:
- - - - - 0x0045D0 03:A5C0: A9 00     LDA #$00
- - - - - 0x0045D2 03:A5C2: 8D 00 A0  STA $A000
- - - - - 0x0045D5 03:A5C5: A5 1B     LDA ram_001B
- - - - - 0x0045D7 03:A5C7: 29 BF     AND #$BF
- - - - - 0x0045D9 03:A5C9: 85 1B     STA ram_001B
- - - - - 0x0045DB 03:A5CB: A9 02     LDA #$02
- - - - - 0x0045DD 03:A5CD: 60        RTS

ofs_A5CE_09:
- - - - - 0x0045DE 03:A5CE: A9 01     LDA #$01
- - - - - 0x0045E0 03:A5D0: 8D 00 A0  STA $A000
- - - - - 0x0045E3 03:A5D3: A5 1B     LDA ram_001B
- - - - - 0x0045E5 03:A5D5: 09 40     ORA #$40
- - - - - 0x0045E7 03:A5D7: 85 1B     STA ram_001B
- - - - - 0x0045E9 03:A5D9: A9 02     LDA #$02
- - - - - 0x0045EB 03:A5DB: 60        RTS

ofs_A5DC_0A:
C - - - - 0x0045EC 03:A5DC: A9 00     LDA #$00
C - - - - 0x0045EE 03:A5DE: 20 95 88  JSR sub_0x0008A5
C - - - - 0x0045F1 03:A5E1: A9 05     LDA #$05
C - - - - 0x0045F3 03:A5E3: 20 20 89  JSR sub_0x000930
C - - - - 0x0045F6 03:A5E6: A9 02     LDA #$02
C - - - - 0x0045F8 03:A5E8: 60        RTS

ofs_A5E9_0B:
C - - - - 0x0045F9 03:A5E9: A5 0D     LDA ram_000D
C - - - - 0x0045FB 03:A5EB: D0 0D     BNE bra_A5FA
C - - - - 0x0045FD 03:A5ED: A9 10     LDA #$10
C - - - - 0x0045FF 03:A5EF: 20 95 88  JSR sub_0x0008A5
C - - - - 0x004602 03:A5F2: A9 06     LDA #$06
C - - - - 0x004604 03:A5F4: 20 20 89  JSR sub_0x000930
C - - - - 0x004607 03:A5F7: A9 02     LDA #$02
C - - - - 0x004609 03:A5F9: 60        RTS
bra_A5FA:
C - - - - 0x00460A 03:A5FA: A9 00     LDA #$00
C - - - - 0x00460C 03:A5FC: 85 0D     STA ram_000D
C - - - - 0x00460E 03:A5FE: 85 0E     STA ram_000E
C - - - - 0x004610 03:A600: A9 02     LDA #$02
C - - - - 0x004612 03:A602: 60        RTS

ofs_A603_0C:
C - - - - 0x004613 03:A603: A5 0D     LDA ram_000D
C - - - - 0x004615 03:A605: D0 0D     BNE bra_A614
C - - - - 0x004617 03:A607: A9 30     LDA #$30
C - - - - 0x004619 03:A609: 20 95 88  JSR sub_0x0008A5
C - - - - 0x00461C 03:A60C: A9 08     LDA #$08
C - - - - 0x00461E 03:A60E: 20 20 89  JSR sub_0x000930
C - - - - 0x004621 03:A611: A9 02     LDA #$02
C - - - - 0x004623 03:A613: 60        RTS
bra_A614:
C - - - - 0x004624 03:A614: A9 00     LDA #$00
C - - - - 0x004626 03:A616: 85 0D     STA ram_000D
C - - - - 0x004628 03:A618: 85 0E     STA ram_000E
C - - - - 0x00462A 03:A61A: A9 02     LDA #$02
C - - - - 0x00462C 03:A61C: 60        RTS

ofs_A61D_0D:
C - - - - 0x00462D 03:A61D: A9 20     LDA #$20
C - - - - 0x00462F 03:A61F: 20 95 88  JSR sub_0x0008A5
C - - - - 0x004632 03:A622: A9 07     LDA #$07
C - - - - 0x004634 03:A624: 20 20 89  JSR sub_0x000930
C - - - - 0x004637 03:A627: A9 02     LDA #$02
C - - - - 0x004639 03:A629: 60        RTS

ofs_A62A_0E:
C - - - - 0x00463A 03:A62A: A2 BD     LDX #$BD
C - - - - 0x00463C 03:A62C: A0 23     LDY #$23
C - - - - 0x00463E 03:A62E: 20 76 89  JSR sub_0x000986
C - - - - 0x004641 03:A631: 20 35 9A  JSR sub_0x001A45
C - - - - 0x004644 03:A634: A9 01     LDA #$01
C - - - - 0x004646 03:A636: 20 A8 9F  JSR sub_0x001FB8
C - - - - 0x004649 03:A639: AD 8F 05  LDA $058F
C - - - - 0x00464C 03:A63C: 29 7F     AND #$7F
C - - - - 0x00464E 03:A63E: 8D 8F 05  STA $058F
C - - - - 0x004651 03:A641: A9 82     LDA #$82
C - - - - 0x004653 03:A643: 85 4C     STA ram_004C
C - - - - 0x004655 03:A645: A0 28     LDY #$28
C - - - - 0x004657 03:A647: A2 20     LDX #$20
C - - - - 0x004659 03:A649: A9 C8     LDA #$C8
C - - - - 0x00465B 03:A64B: 20 2F A8  JSR sub_A82F
C - - - - 0x00465E 03:A64E: A9 02     LDA #$02
C - - - - 0x004660 03:A650: 60        RTS

loc_A651:
ofs_A651_0F:
C - - - - 0x004661 03:A651: A9 00     LDA #$00
C - - - - 0x004663 03:A653: 85 ED     STA ram_00ED
bra_A655:
loc_A655:
C D - - - 0x004665 03:A655: A4 ED     LDY ram_00ED
C - - - - 0x004667 03:A657: B9 97 AA  LDA tbl_AA97,Y
C - - - - 0x00466A 03:A65A: 85 EA     STA ram_00EA
C - - - - 0x00466C 03:A65C: 29 7F     AND #$7F
C - - - - 0x00466E 03:A65E: 85 EB     STA ram_00EB
C - - - - 0x004670 03:A660: A5 7B     LDA ram_007B
C - - - - 0x004672 03:A662: 29 01     AND #$01
C - - - - 0x004674 03:A664: 0A        ASL
C - - - - 0x004675 03:A665: 0A        ASL
C - - - - 0x004676 03:A666: 05 EB     ORA ram_00EB
C - - - - 0x004678 03:A668: AA        TAX
C - - - - 0x004679 03:A669: C8        INY
C - - - - 0x00467A 03:A66A: B9 97 AA  LDA tbl_AA97,Y
C - - - - 0x00467D 03:A66D: 85 EB     STA ram_00EB
C - - - - 0x00467F 03:A66F: C8        INY
C - - - - 0x004680 03:A670: B9 97 AA  LDA tbl_AA97,Y
C - - - - 0x004683 03:A673: C8        INY
C - - - - 0x004684 03:A674: 84 ED     STY ram_00ED
C - - - - 0x004686 03:A676: A4 EB     LDY ram_00EB
C - - - - 0x004688 03:A678: 20 28 9B  JSR sub_0x001B38
C - - - - 0x00468B 03:A67B: 29 7F     AND #$7F
C - - - - 0x00468D 03:A67D: 85 EB     STA ram_00EB
C - - - - 0x00468F 03:A67F: A9 00     LDA #$00
bra_A681:
C - - - - 0x004691 03:A681: 9D E8 05  STA $05E8,X
C - - - - 0x004694 03:A684: E8        INX
C - - - - 0x004695 03:A685: C6 EB     DEC ram_00EB
C - - - - 0x004697 03:A687: D0 F8     BNE bra_A681
C - - - - 0x004699 03:A689: 20 5E 9B  JSR sub_0x001B6E
C - - - - 0x00469C 03:A68C: 24 EA     BIT ram_00EA
C - - - - 0x00469E 03:A68E: 30 0A     BMI bra_A69A
C - - - - 0x0046A0 03:A690: 50 C3     BVC bra_A655
C - - - - 0x0046A2 03:A692: A9 02     LDA #$02
C - - - - 0x0046A4 03:A694: 20 A8 9F  JSR sub_0x001FB8
C - - - - 0x0046A7 03:A697: 4C 55 A6  JMP loc_A655
bra_A69A:
C - - - - 0x0046AA 03:A69A: A9 02     LDA #$02
C - - - - 0x0046AC 03:A69C: 60        RTS

ofs_A69D_10:
C - - - - 0x0046AD 03:A69D: AD E5 04  LDA $04E5
C - - - - 0x0046B0 03:A6A0: C9 FF     CMP #$FF
C - - - - 0x0046B2 03:A6A2: F0 30     BEQ bra_A6D4
C - - - - 0x0046B4 03:A6A4: 20 67 A7  JSR sub_A767
C - - - - 0x0046B7 03:A6A7: A0 80     LDY #$80
C - - - - 0x0046B9 03:A6A9: A9 00     LDA #$00
C - - - - 0x0046BB 03:A6AB: 85 EA     STA ram_00EA
C - - - - 0x0046BD 03:A6AD: A2 2F     LDX #$2F
C - - - - 0x0046BF 03:A6AF: A9 FF     LDA #$FF
C - - - - 0x0046C1 03:A6B1: 85 ED     STA ram_00ED
C - - - - 0x0046C3 03:A6B3: A9 FE     LDA #$FE
C - - - - 0x0046C5 03:A6B5: 85 EC     STA ram_00EC
C - - - - 0x0046C7 03:A6B7: A9 07     LDA #$07
C - - - - 0x0046C9 03:A6B9: 85 EB     STA ram_00EB
C - - - - 0x0046CB 03:A6BB: A9 F7     LDA #$F7
C - - - - 0x0046CD 03:A6BD: 20 2C A7  JSR sub_A72C
C - - - - 0x0046D0 03:A6C0: A0 D8     LDY #$D8
C - - - - 0x0046D2 03:A6C2: A2 30     LDX #$30
C - - - - 0x0046D4 03:A6C4: A9 01     LDA #$01
C - - - - 0x0046D6 03:A6C6: 85 ED     STA ram_00ED
C - - - - 0x0046D8 03:A6C8: A9 FF     LDA #$FF
C - - - - 0x0046DA 03:A6CA: 85 EC     STA ram_00EC
C - - - - 0x0046DC 03:A6CC: A9 FC     LDA #$FC
C - - - - 0x0046DE 03:A6CE: 20 2C A7  JSR sub_A72C
C - - - - 0x0046E1 03:A6D1: A9 02     LDA #$02
C - - - - 0x0046E3 03:A6D3: 60        RTS
bra_A6D4:
C - - - - 0x0046E4 03:A6D4: 20 67 A7  JSR sub_A767
C - - - - 0x0046E7 03:A6D7: A0 80     LDY #$80
C - - - - 0x0046E9 03:A6D9: A2 2F     LDX #$2F
C - - - - 0x0046EB 03:A6DB: A9 02     LDA #$02
C - - - - 0x0046ED 03:A6DD: 85 EA     STA ram_00EA
C - - - - 0x0046EF 03:A6DF: A9 FF     LDA #$FF
C - - - - 0x0046F1 03:A6E1: 85 ED     STA ram_00ED
C - - - - 0x0046F3 03:A6E3: A9 FE     LDA #$FE
C - - - - 0x0046F5 03:A6E5: 85 EC     STA ram_00EC
C - - - - 0x0046F7 03:A6E7: A9 07     LDA #$07
C - - - - 0x0046F9 03:A6E9: 85 EB     STA ram_00EB
C - - - - 0x0046FB 03:A6EB: A9 F7     LDA #$F7
C - - - - 0x0046FD 03:A6ED: 20 2C A7  JSR sub_A72C
C - - - - 0x004700 03:A6F0: A2 08     LDX #$08
C - - - - 0x004702 03:A6F2: A9 FE     LDA #$FE
C - - - - 0x004704 03:A6F4: 20 2C A7  JSR sub_A72C
C - - - - 0x004707 03:A6F7: A0 FC     LDY #$FC
bra_A6F9:
C - - - - 0x004709 03:A6F9: B9 7B A6  LDA tbl_A777 - $FC,Y
C - - - - 0x00470C 03:A6FC: 99 60 04  STA $0460,Y
C - - - - 0x00470F 03:A6FF: C8        INY
C - - - - 0x004710 03:A700: D0 F7     BNE bra_A6F9
C - - - - 0x004712 03:A702: A0 B8     LDY #$B8
C - - - - 0x004714 03:A704: A2 1C     LDX #$1C
C - - - - 0x004716 03:A706: A9 02     LDA #$02
C - - - - 0x004718 03:A708: 85 ED     STA ram_00ED
C - - - - 0x00471A 03:A70A: A9 FF     LDA #$FF
C - - - - 0x00471C 03:A70C: 85 EC     STA ram_00EC
C - - - - 0x00471E 03:A70E: A9 03     LDA #$03
C - - - - 0x004720 03:A710: 85 EB     STA ram_00EB
C - - - - 0x004722 03:A712: A9 F6     LDA #$F6
C - - - - 0x004724 03:A714: 20 2C A7  JSR sub_A72C
C - - - - 0x004727 03:A717: A0 D8     LDY #$D8
bra_A719:
C - - - - 0x004729 03:A719: B9 6A 04  LDA ram_копия_спрайт_атрибут,Y
C - - - - 0x00472C 03:A71C: 09 02     ORA #$02
C - - - - 0x00472E 03:A71E: 99 6A 04  STA ram_копия_спрайт_атрибут,Y
C - - - - 0x004731 03:A721: C8        INY
C - - - - 0x004732 03:A722: C8        INY
C - - - - 0x004733 03:A723: C8        INY
C - - - - 0x004734 03:A724: C8        INY
C - - - - 0x004735 03:A725: C0 F0     CPY #$F0
C - - - - 0x004737 03:A727: 90 F0     BCC bra_A719
C - - - - 0x004739 03:A729: A9 02     LDA #$02
C - - - - 0x00473B 03:A72B: 60        RTS

sub_A72C:
C - - - - 0x00473C 03:A72C: 85 E9     STA ram_00E9
bra_A72E:
C - - - - 0x00473E 03:A72E: AD E4 04  LDA $04E4
C - - - - 0x004741 03:A731: 18        CLC
C - - - - 0x004742 03:A732: 65 ED     ADC ram_00ED
C - - - - 0x004744 03:A734: 8D E4 04  STA $04E4
C - - - - 0x004747 03:A737: AD E7 04  LDA $04E7
C - - - - 0x00474A 03:A73A: 18        CLC
C - - - - 0x00474B 03:A73B: 65 EC     ADC ram_00EC
C - - - - 0x00474D 03:A73D: 8D E7 04  STA $04E7
C - - - - 0x004750 03:A740: 25 EB     AND ram_00EB
C - - - - 0x004752 03:A742: D0 1A     BNE bra_A75E
C - - - - 0x004754 03:A744: AD E4 04  LDA $04E4
C - - - - 0x004757 03:A747: 99 68 04  STA ram_копия_спрайт_Y,Y
C - - - - 0x00475A 03:A74A: A5 E9     LDA ram_00E9
C - - - - 0x00475C 03:A74C: 99 69 04  STA ram_копия_спрайт_тайл,Y
C - - - - 0x00475F 03:A74F: A5 EA     LDA ram_00EA
C - - - - 0x004761 03:A751: 99 6A 04  STA ram_копия_спрайт_атрибут,Y
C - - - - 0x004764 03:A754: AD E7 04  LDA $04E7
C - - - - 0x004767 03:A757: 99 6B 04  STA ram_копия_спрайт_X,Y
C - - - - 0x00476A 03:A75A: C8        INY
C - - - - 0x00476B 03:A75B: C8        INY
C - - - - 0x00476C 03:A75C: C8        INY
C - - - - 0x00476D 03:A75D: C8        INY
bra_A75E:
C - - - - 0x00476E 03:A75E: A9 01     LDA #$01
C - - - - 0x004770 03:A760: 20 A8 9F  JSR sub_0x001FB8
C - - - - 0x004773 03:A763: CA        DEX
C - - - - 0x004774 03:A764: D0 C8     BNE bra_A72E
C - - - - 0x004776 03:A766: 60        RTS

sub_A767:
C - - - - 0x004777 03:A767: A0 FC     LDY #$FC
bra_A769:
C - - - - 0x004779 03:A769: B9 77 A6  LDA tbl_A773 - $FC,Y
C - - - - 0x00477C 03:A76C: 99 E8 03  STA $03E8,Y
C - - - - 0x00477F 03:A76F: C8        INY
C - - - - 0x004780 03:A770: D0 F7     BNE bra_A769
C - - - - 0x004782 03:A772: 60        RTS

tbl_A773:
- D - - - 0x004783 03:A773: 79        .byte $79	; <!>
- D - - - 0x004784 03:A774: FF        .byte $FF
- D - - - 0x004785 03:A775: 03        .byte $03	; <う>
- D - - - 0x004786 03:A776: C2        .byte $C2	; <ド>

tbl_A777:
- D - - - 0x004787 03:A777: 46        .byte $46	; <カ>
- D - - - 0x004788 03:A778: F6        .byte $F6
- D - - - 0x004789 03:A779: 02        .byte $02	; <い>
- D - - - 0x00478A 03:A77A: 52        .byte $52	; <ツ>

ofs_A77B_11:
C - - - - 0x00478B 03:A77B: A9 80     LDA #$80
C - - - - 0x00478D 03:A77D: 20 95 88  JSR sub_0x0008A5
C - - - - 0x004790 03:A780: A9 02     LDA #$02
C - - - - 0x004792 03:A782: 60        RTS

ofs_A783_12:
C - - - - 0x004793 03:A783: A9 02     LDA #$02
C - - - - 0x004795 03:A785: 20 A8 9F  JSR sub_0x001FB8
C - - - - 0x004798 03:A788: 20 FB 88  JSR sub_0x00090B
C - - - - 0x00479B 03:A78B: A9 02     LDA #$02
C - - - - 0x00479D 03:A78D: 60        RTS

ofs_A78E_13:
- - - - - 0x00479E 03:A78E: A0 40     LDY #$40
bra_A790:
- - - - - 0x0047A0 03:A790: A9 01     LDA #$01
- - - - - 0x0047A2 03:A792: 20 A8 9F  JSR sub_0x001FB8
- - - - - 0x0047A5 03:A795: A2 20     LDX #$20
bra_A797:
- - - - - 0x0047A7 03:A797: BD 68 04  LDA ram_копия_спрайт_Y,X
- - - - - 0x0047AA 03:A79A: 10 08     BPL bra_A7A4
- - - - - 0x0047AC 03:A79C: BD 6A 04  LDA ram_копия_спрайт_атрибут,X
- - - - - 0x0047AF 03:A79F: 09 08     ORA #$08
- - - - - 0x0047B1 03:A7A1: 9D 6A 04  STA ram_копия_спрайт_атрибут,X
bra_A7A4:
- - - - - 0x0047B4 03:A7A4: E8        INX
- - - - - 0x0047B5 03:A7A5: E8        INX
- - - - - 0x0047B6 03:A7A6: E8        INX
- - - - - 0x0047B7 03:A7A7: E8        INX
- - - - - 0x0047B8 03:A7A8: E0 C4     CPX #$C4
- - - - - 0x0047BA 03:A7AA: D0 EB     BNE bra_A797
- - - - - 0x0047BC 03:A7AC: 88        DEY
- - - - - 0x0047BD 03:A7AD: D0 E1     BNE bra_A790
- - - - - 0x0047BF 03:A7AF: 20 91 9B  JSR sub_0x001BA1
bra_A7B2:
- - - - - 0x0047C2 03:A7B2: A9 01     LDA #$01
- - - - - 0x0047C4 03:A7B4: 20 A8 9F  JSR sub_0x001FB8
- - - - - 0x0047C7 03:A7B7: A5 09     LDA ram_0009
- - - - - 0x0047C9 03:A7B9: D0 F7     BNE bra_A7B2
- - - - - 0x0047CB 03:A7BB: 4C 51 A6  JMP loc_A651

ofs_A7BE_14:
C - - - - 0x0047CE 03:A7BE: A9 01     LDA #$01
C - - - - 0x0047D0 03:A7C0: 20 A8 9F  JSR sub_0x001FB8
C - - - - 0x0047D3 03:A7C3: A0 28     LDY #$28
C - - - - 0x0047D5 03:A7C5: A2 64     LDX #$64
C - - - - 0x0047D7 03:A7C7: A9 B0     LDA #$B0
C - - - - 0x0047D9 03:A7C9: 20 2F A8  JSR sub_A82F
C - - - - 0x0047DC 03:A7CC: A9 02     LDA #$02
C - - - - 0x0047DE 03:A7CE: 60        RTS

ofs_A7CF_15:
C - - - - 0x0047DF 03:A7CF: A9 81     LDA #$81
C - - - - 0x0047E1 03:A7D1: 20 95 88  JSR sub_0x0008A5
C - - - - 0x0047E4 03:A7D4: A9 02     LDA #$02
C - - - - 0x0047E6 03:A7D6: 60        RTS

ofs_A7D7_16:
C - - - - 0x0047E7 03:A7D7: A0 80     LDY #$80
bra_A7D9:
C - - - - 0x0047E9 03:A7D9: A9 01     LDA #$01
C - - - - 0x0047EB 03:A7DB: 20 A8 9F  JSR sub_0x001FB8
C - - - - 0x0047EE 03:A7DE: A2 20     LDX #$20
bra_A7E0:
C - - - - 0x0047F0 03:A7E0: BD 68 04  LDA ram_копия_спрайт_Y,X
C - - - - 0x0047F3 03:A7E3: 10 08     BPL bra_A7ED
C - - - - 0x0047F5 03:A7E5: BD 6A 04  LDA ram_копия_спрайт_атрибут,X
C - - - - 0x0047F8 03:A7E8: 09 04     ORA #$04
C - - - - 0x0047FA 03:A7EA: 9D 6A 04  STA ram_копия_спрайт_атрибут,X
bra_A7ED:
C - - - - 0x0047FD 03:A7ED: E8        INX
C - - - - 0x0047FE 03:A7EE: E8        INX
C - - - - 0x0047FF 03:A7EF: E8        INX
C - - - - 0x004800 03:A7F0: E8        INX
C - - - - 0x004801 03:A7F1: E0 C4     CPX #$C4
C - - - - 0x004803 03:A7F3: D0 EB     BNE bra_A7E0
C - - - - 0x004805 03:A7F5: 88        DEY
C - - - - 0x004806 03:A7F6: D0 E1     BNE bra_A7D9
C - - - - 0x004808 03:A7F8: A9 02     LDA #$02
C - - - - 0x00480A 03:A7FA: 60        RTS

ofs_A7FB_17:
C - - - - 0x00480B 03:A7FB: A5 28     LDA ram_голы
C - - - - 0x00480D 03:A7FD: 20 7C 9E  JSR sub_0x001E8C
C - - - - 0x004810 03:A800: A5 EC     LDA ram_00EC
C - - - - 0x004812 03:A802: 29 F0     AND #$F0
C - - - - 0x004814 03:A804: F0 11     BEQ bra_A817
C - - - - 0x004816 03:A806: 20 6D AC  JSR sub_AC6D
C - - - - 0x004819 03:A809: A6 52     LDX ram_0052
C - - - - 0x00481B 03:A80B: A4 53     LDY ram_0053
C - - - - 0x00481D 03:A80D: 20 CA 88  JSR sub_0x0008DA
C - - - - 0x004820 03:A810: E6 53     INC ram_0053
C - - - - 0x004822 03:A812: A9 06     LDA #$06
C - - - - 0x004824 03:A814: 20 A8 9F  JSR sub_0x001FB8
bra_A817:
C - - - - 0x004827 03:A817: A5 EC     LDA ram_00EC
C - - - - 0x004829 03:A819: 29 0F     AND #$0F
C - - - - 0x00482B 03:A81B: 20 71 AC  JSR sub_AC71
C - - - - 0x00482E 03:A81E: A6 52     LDX ram_0052
C - - - - 0x004830 03:A820: A4 53     LDY ram_0053
C - - - - 0x004832 03:A822: 20 CA 88  JSR sub_0x0008DA
C - - - - 0x004835 03:A825: E6 53     INC ram_0053
C - - - - 0x004837 03:A827: A9 06     LDA #$06
C - - - - 0x004839 03:A829: 20 A8 9F  JSR sub_0x001FB8
C - - - - 0x00483C 03:A82C: A9 02     LDA #$02
C - - - - 0x00483E 03:A82E: 60        RTS

sub_A82F:
C - - - - 0x00483F 03:A82F: 85 EC     STA ram_00EC
C - - - - 0x004841 03:A831: 86 ED     STX ram_00ED
bra_A833:
C - - - - 0x004843 03:A833: A9 01     LDA #$01
C - - - - 0x004845 03:A835: 20 A8 9F  JSR sub_0x001FB8
C - - - - 0x004848 03:A838: A6 ED     LDX ram_00ED
bra_A83A:
C - - - - 0x00484A 03:A83A: BD 68 04  LDA ram_копия_спрайт_Y,X
C - - - - 0x00484D 03:A83D: C9 82     CMP #$82
C - - - - 0x00484F 03:A83F: B0 08     BCS bra_A849
C - - - - 0x004851 03:A841: BD 6A 04  LDA ram_копия_спрайт_атрибут,X
C - - - - 0x004854 03:A844: 29 F3     AND #$F3
C - - - - 0x004856 03:A846: 9D 6A 04  STA ram_копия_спрайт_атрибут,X
bra_A849:
C - - - - 0x004859 03:A849: E8        INX
C - - - - 0x00485A 03:A84A: E8        INX
C - - - - 0x00485B 03:A84B: E8        INX
C - - - - 0x00485C 03:A84C: E8        INX
C - - - - 0x00485D 03:A84D: E4 EC     CPX ram_00EC
C - - - - 0x00485F 03:A84F: D0 E9     BNE bra_A83A
C - - - - 0x004861 03:A851: 88        DEY
C - - - - 0x004862 03:A852: D0 DF     BNE bra_A833
C - - - - 0x004864 03:A854: 60        RTS

loc_A855:
C D - - - 0x004865 03:A855: A5 E4     LDA ram_00E4
C - - - - 0x004867 03:A857: C5 26     CMP ram_матч
C - - - - 0x004869 03:A859: B0 4D     BCS bra_A8A8
C - - - - 0x00486B 03:A85B: A5 26     LDA ram_матч
C - - - - 0x00486D 03:A85D: F0 1D     BEQ bra_A87C
C - - - - 0x00486F 03:A85F: C9 06     CMP #$06
C - - - - 0x004871 03:A861: F0 21     BEQ bra_A884
C - - - - 0x004873 03:A863: C9 0C     CMP #$0C
C - - - - 0x004875 03:A865: F0 15     BEQ bra_A87C
C - - - - 0x004877 03:A867: C9 10     CMP #$10
C - - - - 0x004879 03:A869: F0 21     BEQ bra_A88C
C - - - - 0x00487B 03:A86B: 4C A8 A8  JMP loc_A8A8

loc_A86E:
C D - - - 0x00487E 03:A86E: A5 26     LDA ram_матч
C - - - - 0x004880 03:A870: C9 06     CMP #$06
C - - - - 0x004882 03:A872: 90 08     BCC bra_A87C
- - - - - 0x004884 03:A874: C9 0C     CMP #$0C
- - - - - 0x004886 03:A876: 90 0C     BCC bra_A884
- - - - - 0x004888 03:A878: C9 10     CMP #$10
- - - - - 0x00488A 03:A87A: B0 10     BCS bra_A88C
bra_A87C:
C - - - - 0x00488C 03:A87C: A2 00     LDX #$00
C - - - - 0x00488E 03:A87E: 20 B7 A8  JSR sub_A8B7
C - - - - 0x004891 03:A881: 4C A3 A8  JMP loc_A8A3
bra_A884:
C - - - - 0x004894 03:A884: A2 0C     LDX #$0C
C - - - - 0x004896 03:A886: 20 B7 A8  JSR sub_A8B7
C - - - - 0x004899 03:A889: 4C A3 A8  JMP loc_A8A3
bra_A88C:
C - - - - 0x00489C 03:A88C: A2 18     LDX #$18
C - - - - 0x00489E 03:A88E: 20 B7 A8  JSR sub_A8B7
C - - - - 0x0048A1 03:A891: A0 00     LDY #$00
bra_A893:
C - - - - 0x0048A3 03:A893: BD 47 AA  LDA tbl_AA47_номера_игроков_твоей_команды,X
C - - - - 0x0048A6 03:A896: 99 08 04  STA $0408,Y
C - - - - 0x0048A9 03:A899: E8        INX
C - - - - 0x0048AA 03:A89A: 98        TYA
C - - - - 0x0048AB 03:A89B: 18        CLC
C - - - - 0x0048AC 03:A89C: 69 04     ADC #$04
C - - - - 0x0048AE 03:A89E: A8        TAY
C - - - - 0x0048AF 03:A89F: C9 28     CMP #$28
C - - - - 0x0048B1 03:A8A1: 90 F0     BCC bra_A893
loc_A8A3:
C D - - - 0x0048B3 03:A8A3: BD 47 AA  LDA tbl_AA47_номера_игроков_твоей_команды,X
C - - - - 0x0048B6 03:A8A6: 85 2C     STA ram_расстановка_слева
bra_A8A8:
loc_A8A8:
C D - - - 0x0048B8 03:A8A8: A6 26     LDX ram_матч
C - - - - 0x0048BA 03:A8AA: BD 75 AA  LDA tbl_AA75_номер_твоей_команды,X
C - - - - 0x0048BD 03:A8AD: 85 2A     STA ram_твоя_команда
C - - - - 0x0048BF 03:A8AF: A5 26     LDA ram_матч
C - - - - 0x0048C1 03:A8B1: 18        CLC
C - - - - 0x0048C2 03:A8B2: 69 03     ADC #$03
C - - - - 0x0048C4 03:A8B4: 85 2B     STA ram_команда_соперника
C - - - - 0x0048C6 03:A8B6: 60        RTS

sub_A8B7:
C - - - - 0x0048C7 03:A8B7: A9 0B     LDA #$0B
C - - - - 0x0048C9 03:A8B9: 85 ED     STA ram_00ED
C - - - - 0x0048CB 03:A8BB: A0 00     LDY #$00
bra_A8BD:
C - - - - 0x0048CD 03:A8BD: BD 47 AA  LDA tbl_AA47_номера_игроков_твоей_команды,X
C - - - - 0x0048D0 03:A8C0: 99 00 03  STA $0300,Y
C - - - - 0x0048D3 03:A8C3: E8        INX
C - - - - 0x0048D4 03:A8C4: 98        TYA
C - - - - 0x0048D5 03:A8C5: 18        CLC
C - - - - 0x0048D6 03:A8C6: 69 0C     ADC #$0C
C - - - - 0x0048D8 03:A8C8: A8        TAY
C - - - - 0x0048D9 03:A8C9: C9 84     CMP #$84
C - - - - 0x0048DB 03:A8CB: 90 F0     BCC bra_A8BD
C - - - - 0x0048DD 03:A8CD: 60        RTS

loc_A8CE:
C D - - - 0x0048DE 03:A8CE: A9 01     LDA #$01
C - - - - 0x0048E0 03:A8D0: 20 A8 9F  JSR sub_0x001FB8
C - - - - 0x0048E3 03:A8D3: A0 00     LDY #$00
bra_A8D5_цикл_копирования:
C - - - - 0x0048E8 03:A8D8: B9 6A 04  LDA ram_копия_спрайт_атрибут,Y
C - - - - 0x0048EB 03:A8DB: 29 0C     AND #$0C
C - - - - 0x0048ED 03:A8DD: F0 02     BEQ bra_A8E1_не_скрывать_спрайт
C - - - - 0x0048EF 03:A8DF: A2 F8     LDA #$F8
C - - - - 0x0048F2 03:A8E2: 99 00 02  STA ram_спрайт_Y,Y
                                      BNE bra_A8F7_пропустить_копирование_ненужных_атрибутов
bra_A8E1_не_скрывать_спрайт:
C - - - - 0x0048E5 03:A8D5: BE 68 04  LDA ram_копия_спрайт_Y,Y
C - - - - 0x0048F2 03:A8E2: 99 00 02  STA ram_спрайт_Y,Y
C - - - - 0x0048F5 03:A8E5: B9 69 04  LDA ram_копия_спрайт_тайл,Y
C - - - - 0x0048F8 03:A8E8: 99 01 02  STA ram_спрайт_тайл,Y
C - - - - 0x0048FB 03:A8EB: B9 6A 04  LDA ram_копия_спрайт_атрибут,Y
C - - - - 0x0048FE 03:A8EE: 99 02 02  STA ram_спрайт_атрибут,Y
C - - - - 0x004901 03:A8F1: B9 6B 04  LDA ram_копия_спрайт_X,Y
C - - - - 0x004904 03:A8F4: 99 03 02  STA ram_спрайт_X,Y
bra_A8F7_пропустить_копирование_ненужных_атрибутов:
C - - - - 0x004907 03:A8F7: C8        INY
C - - - - 0x004908 03:A8F8: C8        INY
C - - - - 0x004909 03:A8F9: C8        INY
C - - - - 0x00490A 03:A8FA: C8        INY
C - - - - 0x00490B 03:A8FB: D0 D8     BNE bra_A8D5_цикл_копирования
C - - - - 0x00490D 03:A8FD: 60        RTS

sub_AA06:
C - - - - 0x004A16 03:AA06: 84 ED     STY ram_00ED
C - - - - 0x004A18 03:AA08: E8        INX
C - - - - 0x004A19 03:AA09: A0 00     LDY #$00
bra_AA0B:
C - - - - 0x004A1B 03:AA0B: 48        PHA
C - - - - 0x004A1C 03:AA0C: A9 00     LDA #$00
C - - - - 0x004A1E 03:AA0E: 91 EC     STA (ram_00EC),Y
C - - - - 0x004A20 03:AA10: E6 EC     INC ram_00EC
C - - - - 0x004A22 03:AA12: D0 02     BNE bra_AA16
C - - - - 0x004A24 03:AA14: E6 ED     INC ram_00ED
bra_AA16:
C - - - - 0x004A26 03:AA16: 68        PLA
C - - - - 0x004A27 03:AA17: 38        SEC
C - - - - 0x004A28 03:AA18: E9 01     SBC #$01
C - - - - 0x004A2A 03:AA1A: D0 EF     BNE bra_AA0B
C - - - - 0x004A2C 03:AA1C: CA        DEX
C - - - - 0x004A2D 03:AA1D: D0 EC     BNE bra_AA0B
C - - - - 0x004A2F 03:AA1F: 60        RTS

sub_AA20_проверка_нажатий_вверх_вниз:
C - - - - 0x004A30 03:AA20: A5 1C     LDA ram_удержанные
C - - - - 0x004A32 03:AA22: 29 08     AND #con_btn_Up
C - - - - 0x004A34 03:AA24: F0 04     BEQ bra_AA2A_не_нажато
C - - - - 0x004A36 03:AA26: A9 01     LDA #$01
C - - - - 0x004A38 03:AA28: 38        SEC
C - - - - 0x004A39 03:AA29: 60        RTS
bra_AA2A_не_нажато:
C - - - - 0x004A3A 03:AA2A: A5 1C     LDA ram_удержанные
C - - - - 0x004A3C 03:AA2C: 29 04     AND #con_btn_Down
C - - - - 0x004A3E 03:AA2E: F0 04     BEQ bra_AA34_не_нажато
C - - - - 0x004A40 03:AA30: A9 FF     LDA #$FF
C - - - - 0x004A42 03:AA32: 38        SEC
C - - - - 0x004A43 03:AA33: 60        RTS
bra_AA34_не_нажато:
C - - - - 0x004A44 03:AA34: 18        CLC
C - - - - 0x004A45 03:AA35: 60        RTS

sub_AA36:
- - - - - 0x004A46 03:AA36: A5 42     LDA ram_0042
- - - - - 0x004A48 03:AA38: 20 6D AC  JSR sub_AC6D
- - - - - 0x004A4B 03:AA3B: 8D 59 05  STA $0559
- - - - - 0x004A4E 03:AA3E: A5 42     LDA ram_0042
- - - - - 0x004A50 03:AA40: 20 71 AC  JSR sub_AC71
- - - - - 0x004A53 03:AA43: 8D 5D 05  STA $055D
- - - - - 0x004A56 03:AA46: 60        RTS



tbl_AA47_номера_игроков_твоей_команды:
- D - - - 0x004A57 03:AA47: 02        .byte $02	; <い>
- D - - - 0x004A58 03:AA48: 03        .byte $03	; <う>
- D - - - 0x004A59 03:AA49: 04        .byte $04	; <え>
- D - - - 0x004A5A 03:AA4A: 05        .byte $05	; <お>
- D - - - 0x004A5B 03:AA4B: 06        .byte $06	; <か>
- D - - - 0x004A5C 03:AA4C: 07        .byte $07	; <き>
- D - - - 0x004A5D 03:AA4D: 08        .byte $08	; <く>
- D - - - 0x004A5E 03:AA4E: 09        .byte $09	; <け>
- D - - - 0x004A5F 03:AA4F: 0A        .byte $0A	; <こ>
- D - - - 0x004A60 03:AA50: 01        .byte $01	; <あ>
- D - - - 0x004A61 03:AA51: 0B        .byte $0B	; <さ>

- D - - - 0x004A62 03:AA52: 00        .byte $00
- D - - - 0x004A63 03:AA53: 0F        .byte $0F	; <そ>
- D - - - 0x004A64 03:AA54: 0D        .byte $0D	; <す>
- D - - - 0x004A65 03:AA55: 0E        .byte $0E	; <せ>
- D - - - 0x004A66 03:AA56: 14        .byte $14	; <と>
- D - - - 0x004A67 03:AA57: 10        .byte $10	; <た>
- D - - - 0x004A68 03:AA58: 0C        .byte $0C	; <し>
- D - - - 0x004A69 03:AA59: 13        .byte $13	; <て>
- D - - - 0x004A6A 03:AA5A: 12        .byte $12	; <つ>
- D - - - 0x004A6B 03:AA5B: 15        .byte $15	; <な>
- D - - - 0x004A6C 03:AA5C: 11        .byte $11	; <ち>
- D - - - 0x004A6D 03:AA5D: 16        .byte $16	; <に>
- D - - - 0x004A6E 03:AA5E: 00        .byte $00
- D - - - 0x004A6F 03:AA5F: 22        .byte $22	; <め>
- D - - - 0x004A70 03:AA60: 1B        .byte $1B	; <ひ>
- D - - - 0x004A71 03:AA61: 1C        .byte $1C	; <ふ>
- D - - - 0x004A72 03:AA62: 14        .byte $14	; <と>
- D - - - 0x004A73 03:AA63: 1D        .byte $1D	; <へ>
- D - - - 0x004A74 03:AA64: 17        .byte $17	; <ぬ>
- D - - - 0x004A75 03:AA65: 18        .byte $18	; <ね>
- D - - - 0x004A76 03:AA66: 11        .byte $11	; <ち>
- D - - - 0x004A77 03:AA67: 1A        .byte $1A	; <は>
- D - - - 0x004A78 03:AA68: 01        .byte $01	; <あ>
- D - - - 0x004A79 03:AA69: 15        .byte $15	; <な>
- D - - - 0x004A7A 03:AA6A: 19        .byte $19	; <の>
- D - - - 0x004A7B 03:AA6B: 1F        .byte $1F	; <ま>
- D - - - 0x004A7C 03:AA6C: 10        .byte $10	; <た>
- D - - - 0x004A7D 03:AA6D: 12        .byte $12	; <つ>
- D - - - 0x004A7E 03:AA6E: 13        .byte $13	; <て>
- D - - - 0x004A7F 03:AA6F: 16        .byte $16	; <に>
- D - - - 0x004A80 03:AA70: 1E        .byte $1E	; <ほ>
- D - - - 0x004A81 03:AA71: 20        .byte $20	; <み>
- D - - - 0x004A82 03:AA72: 21        .byte $21	; <む>
- D - - - 0x004A83 03:AA73: 0F        .byte $0F	; <そ>
- D - - - 0x004A84 03:AA74: 01        .byte $01	; <あ>

tbl_AA75_номер_твоей_команды:
- D - - - 0x004A85 03:AA75: 00        .byte $00
- D - - - 0x004A86 03:AA76: 00        .byte $00
- D - - - 0x004A87 03:AA77: 00        .byte $00
- D - - - 0x004A88 03:AA78: 00        .byte $00
- D - - - 0x004A89 03:AA79: 00        .byte $00
- D - - - 0x004A8A 03:AA7A: 00        .byte $00
- D - - - 0x004A8B 03:AA7B: 01        .byte $01	; <あ>
- D - - - 0x004A8C 03:AA7C: 01        .byte $01	; <あ>
- D - - - 0x004A8D 03:AA7D: 01        .byte $01	; <あ>
- D - - - 0x004A8E 03:AA7E: 01        .byte $01	; <あ>
- D - - - 0x004A8F 03:AA7F: 01        .byte $01	; <あ>
- D - - - 0x004A90 03:AA80: 01        .byte $01	; <あ>
- D - - - 0x004A91 03:AA81: 00        .byte $00
- D - - - 0x004A92 03:AA82: 00        .byte $00
- D - - - 0x004A93 03:AA83: 00        .byte $00
- D - - - 0x004A94 03:AA84: 00        .byte $00
- D - - - 0x004A95 03:AA85: 02        .byte $02	; <い>
- D - - - 0x004A96 03:AA86: 02        .byte $02	; <い>
- D - - - 0x004A97 03:AA87: 02        .byte $02	; <い>
- D - - - 0x004A98 03:AA88: 02        .byte $02	; <い>
- D - - - 0x004A99 03:AA89: 02        .byte $02	; <い>
- D - - - 0x004A9A 03:AA8A: 02        .byte $02	; <い>
- D - - - 0x004A9B 03:AA8B: 02        .byte $02	; <い>
- D - - - 0x004A9C 03:AA8C: 02        .byte $02	; <い>
- D - - - 0x004A9D 03:AA8D: 02        .byte $02	; <い>
- D - - - 0x004A9E 03:AA8E: 02        .byte $02	; <い>
- D - - - 0x004A9F 03:AA8F: 02        .byte $02	; <い>
- D - - - 0x004AA0 03:AA90: 02        .byte $02	; <い>
- D - - - 0x004AA1 03:AA91: 02        .byte $02	; <い>
- D - - - 0x004AA2 03:AA92: 02        .byte $02	; <い>
- D - - - 0x004AA3 03:AA93: 02        .byte $02	; <い>
- D - - - 0x004AA4 03:AA94: 02        .byte $02	; <い>
- D - - - 0x004AA5 03:AA95: 02        .byte $02	; <い>
- - - - - 0x004AA6 03:AA96: 02        .byte $02	; <い>

tbl_AA97:
- D - - - 0x004AA7 03:AA97: 20        .byte $20	; <み>
- D - - - 0x004AA8 03:AA98: 00        .byte $00
- D - - - 0x004AA9 03:AA99: 20        .byte $20	; <み>
- D - - - 0x004AAA 03:AA9A: 20        .byte $20	; <み>
- D - - - 0x004AAB 03:AA9B: 20        .byte $20	; <み>
- D - - - 0x004AAC 03:AA9C: 8F        .byte $8F	; <S>
- D - - - 0x004AAD 03:AA9D: 60        .byte $60	; <ミ>
- D - - - 0x004AAE 03:AA9E: 3F        .byte $3F	; <•>
- D - - - 0x004AAF 03:AA9F: 8F        .byte $8F	; <S>
- D - - - 0x004AB0 03:AAA0: 20        .byte $20	; <み>
- D - - - 0x004AB1 03:AAA1: 21        .byte $21	; <む>
- D - - - 0x004AB2 03:AAA2: 1E        .byte $1E	; <ほ>
- D - - - 0x004AB3 03:AAA3: 20        .byte $20	; <み>
- D - - - 0x004AB4 03:AAA4: 41        .byte $41	; <ア>
- D - - - 0x004AB5 03:AAA5: 8E        .byte $8E	; <L>
- D - - - 0x004AB6 03:AAA6: 60        .byte $60	; <ミ>
- D - - - 0x004AB7 03:AAA7: 5E        .byte $5E	; <ホ>
- D - - - 0x004AB8 03:AAA8: 8E        .byte $8E	; <L>
- D - - - 0x004AB9 03:AAA9: 20        .byte $20	; <み>
- D - - - 0x004ABA 03:AAAA: 42        .byte $42	; <イ>
- D - - - 0x004ABB 03:AAAB: 1C        .byte $1C	; <ふ>
- D - - - 0x004ABC 03:AAAC: 20        .byte $20	; <み>
- D - - - 0x004ABD 03:AAAD: 62        .byte $62	; <メ>
- D - - - 0x004ABE 03:AAAE: 8D        .byte $8D	; <P>
- D - - - 0x004ABF 03:AAAF: 60        .byte $60	; <ミ>
- D - - - 0x004AC0 03:AAB0: 7D        .byte $7D	; <ー>
- D - - - 0x004AC1 03:AAB1: 8D        .byte $8D	; <P>
- D - - - 0x004AC2 03:AAB2: 20        .byte $20	; <み>
- D - - - 0x004AC3 03:AAB3: 63        .byte $63	; <モ>
- D - - - 0x004AC4 03:AAB4: 1A        .byte $1A	; <は>
- D - - - 0x004AC5 03:AAB5: 20        .byte $20	; <み>
- D - - - 0x004AC6 03:AAB6: 83        .byte $83	; <C>
- D - - - 0x004AC7 03:AAB7: 8C        .byte $8C	; <M>
- D - - - 0x004AC8 03:AAB8: 60        .byte $60	; <ミ>
- D - - - 0x004AC9 03:AAB9: 9C        .byte $9C
- D - - - 0x004ACA 03:AABA: 8C        .byte $8C	; <M>
- D - - - 0x004ACB 03:AABB: 20        .byte $20	; <み>
- D - - - 0x004ACC 03:AABC: 84        .byte $84	; <D>
- D - - - 0x004ACD 03:AABD: 18        .byte $18	; <ね>
- D - - - 0x004ACE 03:AABE: 20        .byte $20	; <み>
- D - - - 0x004ACF 03:AABF: A4        .byte $A4	; <ご>
- D - - - 0x004AD0 03:AAC0: 8B        .byte $8B	; <K>
- D - - - 0x004AD1 03:AAC1: 60        .byte $60	; <ミ>
- D - - - 0x004AD2 03:AAC2: BB        .byte $BB	; <ズ>
- D - - - 0x004AD3 03:AAC3: 8B        .byte $8B	; <K>
- D - - - 0x004AD4 03:AAC4: 20        .byte $20	; <み>
- D - - - 0x004AD5 03:AAC5: A5        .byte $A5	; <ざ>
- D - - - 0x004AD6 03:AAC6: 16        .byte $16	; <に>
- D - - - 0x004AD7 03:AAC7: 20        .byte $20	; <み>
- D - - - 0x004AD8 03:AAC8: C5        .byte $C5	; <ブ>
- D - - - 0x004AD9 03:AAC9: 8A        .byte $8A	; <N>
- D - - - 0x004ADA 03:AACA: 60        .byte $60	; <ミ>
- D - - - 0x004ADB 03:AACB: DA        .byte $DA
- D - - - 0x004ADC 03:AACC: 8A        .byte $8A	; <N>
- D - - - 0x004ADD 03:AACD: 20        .byte $20	; <み>
- D - - - 0x004ADE 03:AACE: C6        .byte $C6	; <ベ>
- D - - - 0x004ADF 03:AACF: 14        .byte $14	; <と>
- D - - - 0x004AE0 03:AAD0: 20        .byte $20	; <み>
- D - - - 0x004AE1 03:AAD1: E6        .byte $E6
- D - - - 0x004AE2 03:AAD2: 89        .byte $89	; <I>
- D - - - 0x004AE3 03:AAD3: 60        .byte $60	; <ミ>
- D - - - 0x004AE4 03:AAD4: F9        .byte $F9
- D - - - 0x004AE5 03:AAD5: 89        .byte $89	; <I>
- D - - - 0x004AE6 03:AAD6: 20        .byte $20	; <み>
- D - - - 0x004AE7 03:AAD7: E7        .byte $E7
- D - - - 0x004AE8 03:AAD8: 12        .byte $12	; <つ>
- D - - - 0x004AE9 03:AAD9: 20        .byte $20	; <み>
- D - - - 0x004AEA 03:AADA: 07        .byte $07	; <き>
- D - - - 0x004AEB 03:AADB: 88        .byte $88	; <H>
- D - - - 0x004AEC 03:AADC: E0        .byte $E0
- D - - - 0x004AED 03:AADD: 18        .byte $18	; <ね>
- D - - - 0x004AEE 03:AADE: 88        .byte $88	; <H>

; возможно какие-то скорости
tbl_AADF:
- D - - - 0x004AEF 03:AADF: 10 00     .word $0010
- D - - - 0x004AF1 03:AAE1: 10 00     .word $0010
- D - - - 0x004AF3 03:AAE3: 40 00     .word $0040
- D - - - 0x004AF5 03:AAE5: 00 00     .word $0000
- D - - - 0x004AF7 03:AAE7: 00 00     .word $0000
- - - - - 0x004AF9 03:AAE9: 00 00     .word $0000
- - - - - 0x004AFB 03:AAEB: 00 00     .word $0000
- - - - - 0x004AFD 03:AAED: 00 00     .word $0000
- D - - - 0x004AFF 03:AAEF: 00 00     .word $0000
- D - - - 0x004B01 03:AAF1: 04 00     .word $0004
- D - - - 0x004B03 03:AAF3: 0E 00     .word $000E
- D - - - 0x004B05 03:AAF5: 1C 00     .word $001C
- D - - - 0x004B07 03:AAF7: 80 00     .word $0080
- - - - - 0x004B09 03:AAF9: 00 00     .word $0000
- - - - - 0x004B0B 03:AAFB: 00 00     .word $0000
- - - - - 0x004B0D 03:AAFD: 00 00     .word $0000
- D - - - 0x004B0F 03:AAFF: 00 00     .word $0000
- D - - - 0x004B11 03:AB01: F0 FF     .word $FFF0
- D - - - 0x004B13 03:AB03: E0 FF     .word $FFE0
- D - - - 0x004B15 03:AB05: 80 FF     .word $FF80
- D - - - 0x004B17 03:AB07: 00 00     .word $0000
- - - - - 0x004B19 03:AB09: 00 00     .word $0000
- - - - - 0x004B1B 03:AB0B: 00 00     .word $0000
- - - - - 0x004B1D 03:AB0D: 00 00     .word $0000
- D - - - 0x004B1F 03:AB0F: 00 00     .word $0000
- D - - - 0x004B21 03:AB11: 04 00     .word $0004
- D - - - 0x004B23 03:AB13: 0E 00     .word $000E
- D - - - 0x004B25 03:AB15: 1C 00     .word $001C
- D - - - 0x004B27 03:AB17: 00 00     .word $0000
- - - - - 0x004B29 03:AB19: 00 00     .word $0000
- - - - - 0x004B2B 03:AB1B: 00 00     .word $0000
- - - - - 0x004B2D 03:AB1D: 00 00     .word $0000



; bzk второй байт из четырех не используется, не экономично
; третий байт начинается с 04 и увеличивается на 01
tbl_AB1F:
- D - - - 0x004B2F 03:AB1F: 6C        .byte $6C	; <ワ>
- - - - - 0x004B30 03:AB20: 00        .byte $00
- D - - - 0x004B31 03:AB21: 04        .byte $04	; <え>
- D - - - 0x004B32 03:AB22: FC        .byte $FC

- D - - - 0x004B33 03:AB23: 6E        .byte $6E	; <ン>
- - - - - 0x004B34 03:AB24: 00        .byte $00
- D - - - 0x004B35 03:AB25: 05        .byte $05	; <お>
- D - - - 0x004B36 03:AB26: FC        .byte $FC

- D - - - 0x004B37 03:AB27: 70        .byte $70	; <ャ>
- - - - - 0x004B38 03:AB28: 00        .byte $00
- D - - - 0x004B39 03:AB29: 06        .byte $06	; <か>
- D - - - 0x004B3A 03:AB2A: FA        .byte $FA

- D - - - 0x004B3B 03:AB2B: 74        .byte $74	; <ィ>
- - - - - 0x004B3C 03:AB2C: 00        .byte $00
- D - - - 0x004B3D 03:AB2D: 07        .byte $07	; <き>
- D - - - 0x004B3E 03:AB2E: FA        .byte $FA



tbl_AB2F_номера_звуков_для_музыкального_экрана:
- D - - - 0x004B3F 03:AB2F: 58        .byte $58	; <ネ>
- D - - - 0x004B40 03:AB30: 45        .byte $45	; <オ>
- D - - - 0x004B41 03:AB31: 51        .byte $51	; <チ>
- D - - - 0x004B42 03:AB32: 55        .byte $55	; <ナ>
- D - - - 0x004B43 03:AB33: 53        .byte $53	; <テ>
- D - - - 0x004B44 03:AB34: 47        .byte $47	; <キ>
- D - - - 0x004B45 03:AB35: 46        .byte $46	; <カ>
- D - - - 0x004B46 03:AB36: 52        .byte $52	; <ツ>
- D - - - 0x004B47 03:AB37: 54        .byte $54	; <ト>
- D - - - 0x004B48 03:AB38: 57        .byte $57	; <ヌ>
- D - - - 0x004B49 03:AB39: 5A        .byte $5A	; <ハ>
- D - - - 0x004B4A 03:AB3A: 48        .byte $48	; <ク>
- D - - - 0x004B4B 03:AB3B: 49        .byte $49	; <ケ>
- D - - - 0x004B4C 03:AB3C: 4B        .byte $4B	; <サ>
- D - - - 0x004B4D 03:AB3D: 4C        .byte $4C	; <シ>
- D - - - 0x004B4E 03:AB3E: 4D        .byte $4D	; <ス>
- D - - - 0x004B4F 03:AB3F: 4E        .byte $4E	; <セ>
- D - - - 0x004B50 03:AB40: 4F        .byte $4F	; <ソ>
- D - - - 0x004B51 03:AB41: 50        .byte $50	; <タ>
- D - - - 0x004B52 03:AB42: 59        .byte $59	; <ノ>
- D - - - 0x004B53 03:AB43: 56        .byte $56	; <ニ>
- D - - - 0x004B54 03:AB44: 44        .byte $44	; <エ>
- D - - - 0x004B55 03:AB45: 32        .byte $32	; <ょ>
- D - - - 0x004B56 03:AB46: 33        .byte $33	; <0>
- D - - - 0x004B57 03:AB47: 41        .byte $41	; <ア>
- D - - - 0x004B58 03:AB48: 42        .byte $42	; <イ>
- D - - - 0x004B59 03:AB49: 43        .byte $43	; <ウ>
- D - - - 0x004B5A 03:AB4A: 3C        .byte $3C	; <9>
- D - - - 0x004B5B 03:AB4B: 39        .byte $39	; <6>
- D - - - 0x004B5C 03:AB4C: 3F        .byte $3F	; <•>
- D - - - 0x004B5D 03:AB4D: 40        .byte $40	; <「>
- D - - - 0x004B5E 03:AB4E: 37        .byte $37	; <4>
- D - - - 0x004B5F 03:AB4F: 38        .byte $38	; <5>
- D - - - 0x004B60 03:AB50: 3E        .byte $3E	; <Jr>
- D - - - 0x004B61 03:AB51: 35        .byte $35	; <2>
- D - - - 0x004B62 03:AB52: 34        .byte $34	; <1>
- D - - - 0x004B63 03:AB53: 3B        .byte $3B	; <8>
- D - - - 0x004B64 03:AB54: 3A        .byte $3A	; <7>
- D - - - 0x004B65 03:AB55: 36        .byte $36	; <3>
- D - - - 0x004B66 03:AB56: 3D        .byte $3D	; <+>
- D - - - 0x004B67 03:AB57: 03        .byte $03	; <う>
- D - - - 0x004B68 03:AB58: 04        .byte $04	; <え>
- D - - - 0x004B69 03:AB59: 05        .byte $05	; <お>
- D - - - 0x004B6A 03:AB5A: 06        .byte $06	; <か>
- D - - - 0x004B6B 03:AB5B: 07        .byte $07	; <き>
- D - - - 0x004B6C 03:AB5C: 08        .byte $08	; <く>
- D - - - 0x004B6D 03:AB5D: 09        .byte $09	; <け>
- D - - - 0x004B6E 03:AB5E: 0A        .byte $0A	; <こ>
- D - - - 0x004B6F 03:AB5F: 0B        .byte $0B	; <さ>
- D - - - 0x004B70 03:AB60: 0C        .byte $0C	; <し>
- D - - - 0x004B71 03:AB61: 0D        .byte $0D	; <す>
- D - - - 0x004B72 03:AB62: 0E        .byte $0E	; <せ>
- D - - - 0x004B73 03:AB63: 0F        .byte $0F	; <そ>
- D - - - 0x004B74 03:AB64: 10        .byte $10	; <た>
- D - - - 0x004B75 03:AB65: 11        .byte $11	; <ち>
- D - - - 0x004B76 03:AB66: 12        .byte $12	; <つ>
- D - - - 0x004B77 03:AB67: 13        .byte $13	; <て>
- D - - - 0x004B78 03:AB68: 14        .byte $14	; <と>
- D - - - 0x004B79 03:AB69: 15        .byte $15	; <な>
- D - - - 0x004B7A 03:AB6A: 16        .byte $16	; <に>
- D - - - 0x004B7B 03:AB6B: 17        .byte $17	; <ぬ>
- D - - - 0x004B7C 03:AB6C: 18        .byte $18	; <ね>
- D - - - 0x004B7D 03:AB6D: 19        .byte $19	; <の>
- D - - - 0x004B7E 03:AB6E: 1A        .byte $1A	; <は>
- D - - - 0x004B7F 03:AB6F: 1B        .byte $1B	; <ひ>
- D - - - 0x004B80 03:AB70: 1C        .byte $1C	; <ふ>
- D - - - 0x004B81 03:AB71: 1D        .byte $1D	; <へ>
- D - - - 0x004B82 03:AB72: 1E        .byte $1E	; <ほ>
- D - - - 0x004B83 03:AB73: 1F        .byte $1F	; <ま>
- D - - - 0x004B84 03:AB74: 22        .byte $22	; <め>
- D - - - 0x004B85 03:AB75: 23        .byte $23	; <も>
- D - - - 0x004B86 03:AB76: 24        .byte $24	; <や>
- D - - - 0x004B87 03:AB77: 25        .byte $25	; <ゆ>
- D - - - 0x004B88 03:AB78: 26        .byte $26	; <よ>
- D - - - 0x004B89 03:AB79: 27        .byte $27	; <ら>
- D - - - 0x004B8A 03:AB7A: 28        .byte $28	; <り>
- D - - - 0x004B8B 03:AB7B: 29        .byte $29	; <る>
- D - - - 0x004B8C 03:AB7C: 2A        .byte $2A	; <れ>
- D - - - 0x004B8D 03:AB7D: 2B        .byte $2B	; <ろ>
- D - - - 0x004B8E 03:AB7E: 2C        .byte $2C	; <わ>
- D - - - 0x004B8F 03:AB7F: 2D        .byte $2D	; <を>
- D - - - 0x004B90 03:AB80: 2E        .byte $2E	; <ん>
- D - - - 0x004B91 03:AB81: 2F        .byte $2F	; <っ>
- D - - - 0x004B92 03:AB82: 30        .byte $30	; <ゃ>
- D - - - 0x004B93 03:AB83: 5F        .byte $5F	; <マ>
- D - - - 0x004B94 03:AB84: 60        .byte $60	; <ミ>
- D - - - 0x004B95 03:AB85: 61        .byte $61	; <ム>
- D - - - 0x004B96 03:AB86: 62        .byte $62	; <メ>
- D - - - 0x004B97 03:AB87: 63        .byte $63	; <モ>
- D - - - 0x004B98 03:AB88: 64        .byte $64	; <ヤ>
- D - - - 0x004B99 03:AB89: 65        .byte $65	; <ユ>
- D - - - 0x004B9A 03:AB8A: 66        .byte $66	; <ヨ>
- D - - - 0x004B9B 03:AB8B: 68        .byte $68	; <リ>
- D - - - 0x004B9C 03:AB8C: 69        .byte $69	; <ル>
- D - - - 0x004B9D 03:AB8D: 6A        .byte $6A	; <レ>
- D - - - 0x004B9E 03:AB8E: 6B        .byte $6B	; <ロ>
- D - - - 0x004B9F 03:AB8F: 6C        .byte $6C	; <ワ>
- D - - - 0x004BA0 03:AB90: 6D        .byte $6D	; <ヲ>
- D - - - 0x004BA1 03:AB91: 6E        .byte $6E	; <ン>
- D - - - 0x004BA2 03:AB92: 6F        .byte $6F	; <ッ>
- - - - - 0x004BA3 03:AB93: 70        .byte $70	; <ャ>

sub_AC6D:
C - - - - 0x004C7D 03:AC6D: 4A        LSR
C - - - - 0x004C7E 03:AC6E: 4A        LSR
C - - - - 0x004C7F 03:AC6F: 4A        LSR
C - - - - 0x004C80 03:AC70: 4A        LSR
sub_AC71:
C - - - - 0x004C81 03:AC71: 29 0F     AND #$0F
C - - - - 0x004C83 03:AC73: 18        CLC
C - - - - 0x004C84 03:AC74: 69 33     ADC #$33
C - - - - 0x004C86 03:AC76: C9 3D     CMP #$3D
C - - - - 0x004C88 03:AC78: 90 03     BCC bra_AC7D_выход
- - - - - 0x004C8A 03:AC7A: 18        CLC
- - - - - 0x004C8B 03:AC7B: 69 44     ADC #$44
bra_AC7D_выход:
C - - - - 0x004C8D 03:AC7D: 60        RTS
