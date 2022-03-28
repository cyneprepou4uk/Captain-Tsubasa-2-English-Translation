.segment "BANK_13"
.include "copy_bank_ram.inc"
.include "copy_bank_val.inc"
; в середине есть немного кода начиная с 0x027010, используется при отображении финальных титров после самолета



.export loc_0x027010
.export tbl_0x02745E_финальная_надпись_TECMO



; поинтеры в 0x01667A (старший байт A0)
- D - - - - 0x026010 13:A000: 00        .byte $00
- D - I - - 0x026011 13:A001: 00        .byte $00
- D - I - - 0x026012 13:A002: 00        .byte $00
- D - I - - 0x026013 13:A003: 00        .byte $00
- D - I - - 0x026014 13:A004: 00        .byte $00
- D - I - - 0x026015 13:A005: 00        .byte $00
- D - I - - 0x026016 13:A006: 00        .byte $00
- D - I - - 0x026017 13:A007: 00        .byte $00
- D - I - - 0x026018 13:A008: 00        .byte $00
- D - I - - 0x026019 13:A009: 00        .byte $00
- D - I - - 0x02601A 13:A00A: 00        .byte $00
- D - I - - 0x02601B 13:A00B: 00        .byte $00
- D - I - - 0x02601C 13:A00C: 00        .byte $00
- D - I - - 0x02601D 13:A00D: 00        .byte $00
- D - I - - 0x02601E 13:A00E: 00        .byte $00
- D - I - - 0x02601F 13:A00F: 00        .byte $00
- D - I - - 0x026020 13:A010: 01        .byte $01   ; <あ>
- D - I - - 0x026021 13:A011: 01        .byte $01   ; <あ>
- D - I - - 0x026022 13:A012: 01        .byte $01   ; <あ>
- D - I - - 0x026023 13:A013: 01        .byte $01   ; <あ>
- D - I - - 0x026024 13:A014: 01        .byte $01   ; <あ>
- D - I - - 0x026025 13:A015: 01        .byte $01   ; <あ>
- D - I - - 0x026026 13:A016: 01        .byte $01   ; <あ>
- D - I - - 0x026027 13:A017: 01        .byte $01   ; <あ>
- D - I - - 0x026028 13:A018: 01        .byte $01   ; <あ>
- D - I - - 0x026029 13:A019: 01        .byte $01   ; <あ>
- D - I - - 0x02602A 13:A01A: 01        .byte $01   ; <あ>
- D - I - - 0x02602B 13:A01B: 01        .byte $01   ; <あ>
- D - I - - 0x02602C 13:A01C: 01        .byte $01   ; <あ>
- D - I - - 0x02602D 13:A01D: 01        .byte $01   ; <あ>
- D - I - - 0x02602E 13:A01E: 01        .byte $01   ; <あ>
- D - I - - 0x02602F 13:A01F: 01        .byte $01   ; <あ>
- D - I - - 0x026030 13:A020: 01        .byte $01   ; <あ>
- D - I - - 0x026031 13:A021: 01        .byte $01   ; <あ>
- D - I - - 0x026032 13:A022: 5F        .byte $5F   ; <マ>
- D - I - - 0x026033 13:A023: 75        .byte $75   ; <ェ>
- D - I - - 0x026034 13:A024: 01        .byte $01   ; <あ>
- D - I - - 0x026035 13:A025: 01        .byte $01   ; <あ>
- D - I - - 0x026036 13:A026: 5F        .byte $5F   ; <マ>
- D - I - - 0x026037 13:A027: 75        .byte $75   ; <ェ>
- D - I - - 0x026038 13:A028: 01        .byte $01   ; <あ>
- D - I - - 0x026039 13:A029: 01        .byte $01   ; <あ>
- D - I - - 0x02603A 13:A02A: 5F        .byte $5F   ; <マ>
- D - I - - 0x02603B 13:A02B: 75        .byte $75   ; <ェ>
- D - I - - 0x02603C 13:A02C: 01        .byte $01   ; <あ>
- D - I - - 0x02603D 13:A02D: 01        .byte $01   ; <あ>
- D - I - - 0x02603E 13:A02E: 5F        .byte $5F   ; <マ>
- D - I - - 0x02603F 13:A02F: 75        .byte $75   ; <ェ>
- D - I - - 0x026040 13:A030: 77        .byte $77   ; <:>
- D - I - - 0x026041 13:A031: 7D        .byte $7D   ; <ー>
- D - I - - 0x026042 13:A032: 77        .byte $77   ; <:>
- D - I - - 0x026043 13:A033: 7D        .byte $7D   ; <ー>
- D - I - - 0x026044 13:A034: 7D        .byte $7D   ; <ー>
- D - I - - 0x026045 13:A035: 77        .byte $77   ; <:>
- D - I - - 0x026046 13:A036: 7D        .byte $7D   ; <ー>
- D - I - - 0x026047 13:A037: 77        .byte $77   ; <:>
- D - I - - 0x026048 13:A038: 77        .byte $77   ; <:>
- D - I - - 0x026049 13:A039: 7D        .byte $7D   ; <ー>
- D - I - - 0x02604A 13:A03A: 77        .byte $77   ; <:>
- D - I - - 0x02604B 13:A03B: 7D        .byte $7D   ; <ー>
- D - I - - 0x02604C 13:A03C: 7D        .byte $7D   ; <ー>
- D - I - - 0x02604D 13:A03D: 77        .byte $77   ; <:>
- D - I - - 0x02604E 13:A03E: 7D        .byte $7D   ; <ー>
- D - I - - 0x02604F 13:A03F: 77        .byte $77   ; <:>
- D - I - - 0x026050 13:A040: 7E        .byte $7E   ; <.>
- D - I - - 0x026051 13:A041: 7C        .byte $7C   ; <~>
- D - I - - 0x026052 13:A042: 7E        .byte $7E   ; <.>
- D - I - - 0x026053 13:A043: 7C        .byte $7C   ; <~>
- D - I - - 0x026054 13:A044: 7C        .byte $7C   ; <~>
- D - I - - 0x026055 13:A045: 7E        .byte $7E   ; <.>
- D - I - - 0x026056 13:A046: 7C        .byte $7C   ; <~>
- D - I - - 0x026057 13:A047: 7E        .byte $7E   ; <.>
- D - I - - 0x026058 13:A048: 7E        .byte $7E   ; <.>
- D - I - - 0x026059 13:A049: 7C        .byte $7C   ; <~>
- D - I - - 0x02605A 13:A04A: 7E        .byte $7E   ; <.>
- D - I - - 0x02605B 13:A04B: 7C        .byte $7C   ; <~>
- D - I - - 0x02605C 13:A04C: 7C        .byte $7C   ; <~>
- D - I - - 0x02605D 13:A04D: 7E        .byte $7E   ; <.>
- D - I - - 0x02605E 13:A04E: 7C        .byte $7C   ; <~>
- D - I - - 0x02605F 13:A04F: 7E        .byte $7E   ; <.>
- D - I - - 0x026060 13:A050: 76        .byte $76   ; <ォ>
- D - I - - 0x026061 13:A051: 74        .byte $74   ; <ィ>
- D - I - - 0x026062 13:A052: 01        .byte $01   ; <あ>
- D - I - - 0x026063 13:A053: 01        .byte $01   ; <あ>
- D - I - - 0x026064 13:A054: 76        .byte $76   ; <ォ>
- D - I - - 0x026065 13:A055: 74        .byte $74   ; <ィ>
- D - I - - 0x026066 13:A056: 01        .byte $01   ; <あ>
- D - I - - 0x026067 13:A057: 01        .byte $01   ; <あ>
- D - I - - 0x026068 13:A058: 76        .byte $76   ; <ォ>
- D - I - - 0x026069 13:A059: 74        .byte $74   ; <ィ>
- D - I - - 0x02606A 13:A05A: 01        .byte $01   ; <あ>
- D - I - - 0x02606B 13:A05B: 01        .byte $01   ; <あ>
- D - I - - 0x02606C 13:A05C: 76        .byte $76   ; <ォ>
- D - I - - 0x02606D 13:A05D: 74        .byte $74   ; <ィ>
- D - I - - 0x02606E 13:A05E: 01        .byte $01   ; <あ>
- D - I - - 0x02606F 13:A05F: 01        .byte $01   ; <あ>
- D - I - - 0x026070 13:A060: 01        .byte $01   ; <あ>
- D - I - - 0x026071 13:A061: 01        .byte $01   ; <あ>
- D - I - - 0x026072 13:A062: C0        .byte $C0   ; <ヅ>
- D - I - - 0x026073 13:A063: 00        .byte $00
- D - I - - 0x026074 13:A064: 01        .byte $01   ; <あ>
- D - I - - 0x026075 13:A065: 01        .byte $01   ; <あ>
- D - I - - 0x026076 13:A066: 01        .byte $01   ; <あ>
- D - I - - 0x026077 13:A067: 83        .byte $83   ; <C>
- D - I - - 0x026078 13:A068: 01        .byte $01   ; <あ>
- D - I - - 0x026079 13:A069: 01        .byte $01   ; <あ>
- D - I - - 0x02607A 13:A06A: 01        .byte $01   ; <あ>
- D - I - - 0x02607B 13:A06B: 01        .byte $01   ; <あ>
- D - I - - 0x02607C 13:A06C: 01        .byte $01   ; <あ>
- D - I - - 0x02607D 13:A06D: 01        .byte $01   ; <あ>
- D - I - - 0x02607E 13:A06E: 01        .byte $01   ; <あ>
- D - I - - 0x02607F 13:A06F: 01        .byte $01   ; <あ>
- D - I - - 0x026080 13:A070: 84        .byte $84   ; <D>
- D - I - - 0x026081 13:A071: 85        .byte $85   ; <E>
- D - I - - 0x026082 13:A072: 90        .byte $90   ; <U>
- D - I - - 0x026083 13:A073: 91        .byte $91   ; <V>
- D - I - - 0x026084 13:A074: 86        .byte $86   ; <F>
- D - I - - 0x026085 13:A075: 87        .byte $87   ; <G>
- D - I - - 0x026086 13:A076: 92        .byte $92   ; <W>
- D - I - - 0x026087 13:A077: 93        .byte $93   ; <Y>
- D - I - - 0x026088 13:A078: 8C        .byte $8C   ; <M>
- D - I - - 0x026089 13:A079: 8D        .byte $8D   ; <P>
- D - I - - 0x02608A 13:A07A: 98        .byte $98
- D - I - - 0x02608B 13:A07B: 99        .byte $99
- D - I - - 0x02608C 13:A07C: 8E        .byte $8E   ; <L>
- D - I - - 0x02608D 13:A07D: 8F        .byte $8F   ; <S>
- D - I - - 0x02608E 13:A07E: 9A        .byte $9A
- D - I - - 0x02608F 13:A07F: 9B        .byte $9B
- D - I - - 0x026090 13:A080: 94        .byte $94
- D - I - - 0x026091 13:A081: 95        .byte $95
- D - I - - 0x026092 13:A082: C2        .byte $C2   ; <ド>
- D - I - - 0x026093 13:A083: C1        .byte $C1   ; <デ>
- D - I - - 0x026094 13:A084: 96        .byte $96
- D - I - - 0x026095 13:A085: C2        .byte $C2   ; <ド>
- D - I - - 0x026096 13:A086: C2        .byte $C2   ; <ド>
- D - I - - 0x026097 13:A087: C1        .byte $C1   ; <デ>
- D - I - - 0x026098 13:A088: 99        .byte $99
- D - I - - 0x026099 13:A089: 9D        .byte $9D
- D - I - - 0x02609A 13:A08A: 9D        .byte $9D
- D - I - - 0x02609B 13:A08B: C9        .byte $C9   ; <ぴ>
- D - I - - 0x02609C 13:A08C: 9B        .byte $9B
- D - I - - 0x02609D 13:A08D: 9F        .byte $9F
- D - I - - 0x02609E 13:A08E: CA        .byte $CA   ; <ぷ>
- D - I - - 0x02609F 13:A08F: CB        .byte $CB   ; <ぺ>
- D - I - - 0x0260A0 13:A090: 01        .byte $01   ; <あ>
- D - I - - 0x0260A1 13:A091: A5        .byte $A5   ; <ざ>
- D - I - - 0x0260A2 13:A092: B0        .byte $B0   ; <び>
- D - I - - 0x0260A3 13:A093: B1        .byte $B1   ; <ぶ>
- D - I - - 0x0260A4 13:A094: 01        .byte $01   ; <あ>
- D - I - - 0x0260A5 13:A095: 01        .byte $01   ; <あ>
- D - I - - 0x0260A6 13:A096: B2        .byte $B2   ; <べ>
- D - I - - 0x0260A7 13:A097: B3        .byte $B3   ; <ぼ>
- D - I - - 0x0260A8 13:A098: 01        .byte $01   ; <あ>
- D - I - - 0x0260A9 13:A099: 01        .byte $01   ; <あ>
- D - I - - 0x0260AA 13:A09A: 01        .byte $01   ; <あ>
- D - I - - 0x0260AB 13:A09B: B9        .byte $B9   ; <ザ>
- D - I - - 0x0260AC 13:A09C: 01        .byte $01   ; <あ>
- D - I - - 0x0260AD 13:A09D: 01        .byte $01   ; <あ>
- D - I - - 0x0260AE 13:A09E: 01        .byte $01   ; <あ>
- D - I - - 0x0260AF 13:A09F: 01        .byte $01   ; <あ>
- D - I - - 0x0260B0 13:A0A0: B4        .byte $B4   ; <ガ>
- D - I - - 0x0260B1 13:A0A1: B5        .byte $B5   ; <ギ>
- D - I - - 0x0260B2 13:A0A2: E0        .byte $E0
- D - I - - 0x0260B3 13:A0A3: E1        .byte $E1
- D - I - - 0x0260B4 13:A0A4: B6        .byte $B6   ; <グ>
- D - I - - 0x0260B5 13:A0A5: B7        .byte $B7   ; <ゲ>
- D - I - - 0x0260B6 13:A0A6: E2        .byte $E2
- D - I - - 0x0260B7 13:A0A7: E3        .byte $E3
- D - I - - 0x0260B8 13:A0A8: BC        .byte $BC   ; <ゼ>
- D - I - - 0x0260B9 13:A0A9: BD        .byte $BD   ; <ゾ>
- D - I - - 0x0260BA 13:A0AA: E8        .byte $E8
- D - I - - 0x0260BB 13:A0AB: E9        .byte $E9
- D - I - - 0x0260BC 13:A0AC: BE        .byte $BE   ; <ダ>
- D - I - - 0x0260BD 13:A0AD: BF        .byte $BF   ; <ヂ>
- D - I - - 0x0260BE 13:A0AE: EA        .byte $EA
- D - I - - 0x0260BF 13:A0AF: EB        .byte $EB
- D - I - - 0x0260C0 13:A0B0: 97        .byte $97
- D - I - - 0x0260C1 13:A0B1: C3        .byte $C3   ; <バ>
- D - I - - 0x0260C2 13:A0B2: 9C        .byte $9C
- D - I - - 0x0260C3 13:A0B3: 9C        .byte $9C
- D - I - - 0x0260C4 13:A0B4: 97        .byte $97
- D - I - - 0x0260C5 13:A0B5: C3        .byte $C3   ; <バ>
- D - I - - 0x0260C6 13:A0B6: 9C        .byte $9C
- D - I - - 0x0260C7 13:A0B7: 9C        .byte $9C
- D - I - - 0x0260C8 13:A0B8: 97        .byte $97
- D - I - - 0x0260C9 13:A0B9: C3        .byte $C3   ; <バ>
- D - I - - 0x0260CA 13:A0BA: 9C        .byte $9C
- D - I - - 0x0260CB 13:A0BB: 9C        .byte $9C
- D - I - - 0x0260CC 13:A0BC: BA        .byte $BA   ; <ジ>
- D - I - - 0x0260CD 13:A0BD: BB        .byte $BB   ; <ズ>
- D - I - - 0x0260CE 13:A0BE: BB        .byte $BB   ; <ズ>
- D - I - - 0x0260CF 13:A0BF: BB        .byte $BB   ; <ズ>
- D - I - - 0x0260D0 13:A0C0: C8        .byte $C8   ; <ぱ>
- D - I - - 0x0260D1 13:A0C1: 82        .byte $82   ; <B>
- D - I - - 0x0260D2 13:A0C2: 8A        .byte $8A   ; <N>
- D - I - - 0x0260D3 13:A0C3: 8A        .byte $8A   ; <N>
- D - I - - 0x0260D4 13:A0C4: 9E        .byte $9E
- D - I - - 0x0260D5 13:A0C5: 88        .byte $88   ; <H>
- D - I - - 0x0260D6 13:A0C6: A0        .byte $A0   ; <が>
- D - I - - 0x0260D7 13:A0C7: A0        .byte $A0   ; <が>
- D - I - - 0x0260D8 13:A0C8: 00        .byte $00
- D - I - - 0x0260D9 13:A0C9: 00        .byte $00
- D - I - - 0x0260DA 13:A0CA: 00        .byte $00
- D - I - - 0x0260DB 13:A0CB: 00        .byte $00
- D - I - - 0x0260DC 13:A0CC: 00        .byte $00
- D - I - - 0x0260DD 13:A0CD: 00        .byte $00
- D - I - - 0x0260DE 13:A0CE: 00        .byte $00
- D - I - - 0x0260DF 13:A0CF: 00        .byte $00
- D - I - - 0x0260E0 13:A0D0: C4        .byte $C4   ; <ビ>
- D - I - - 0x0260E1 13:A0D1: C5        .byte $C5   ; <ブ>
- D - I - - 0x0260E2 13:A0D2: D0        .byte $D0   ; <ペ>
- D - I - - 0x0260E3 13:A0D3: D1        .byte $D1   ; <ポ>
- D - I - - 0x0260E4 13:A0D4: C4        .byte $C4   ; <ビ>
- D - I - - 0x0260E5 13:A0D5: C5        .byte $C5   ; <ブ>
- D - I - - 0x0260E6 13:A0D6: C5        .byte $C5   ; <ブ>
- D - I - - 0x0260E7 13:A0D7: D3        .byte $D3
- D - I - - 0x0260E8 13:A0D8: CC        .byte $CC   ; <ぽ>
- D - I - - 0x0260E9 13:A0D9: CD        .byte $CD   ; <パ>
- D - I - - 0x0260EA 13:A0DA: CD        .byte $CD   ; <パ>
- D - I - - 0x0260EB 13:A0DB: D9        .byte $D9
- D - I - - 0x0260EC 13:A0DC: CE        .byte $CE   ; <ピ>
- D - I - - 0x0260ED 13:A0DD: CF        .byte $CF   ; <プ>
- D - I - - 0x0260EE 13:A0DE: DA        .byte $DA
- D - I - - 0x0260EF 13:A0DF: DB        .byte $DB
- D - I - - 0x0260F0 13:A0E0: D4        .byte $D4
- D - I - - 0x0260F1 13:A0E1: D5        .byte $D5
- D - I - - 0x0260F2 13:A0E2: 89        .byte $89   ; <I>
- D - I - - 0x0260F3 13:A0E3: 8B        .byte $8B   ; <K>
- D - I - - 0x0260F4 13:A0E4: D6        .byte $D6
- D - I - - 0x0260F5 13:A0E5: D7        .byte $D7
- D - I - - 0x0260F6 13:A0E6: A4        .byte $A4   ; <ご>
- D - I - - 0x0260F7 13:A0E7: A2        .byte $A2   ; <ぐ>
- D - I - - 0x0260F8 13:A0E8: D9        .byte $D9
- D - I - - 0x0260F9 13:A0E9: DD        .byte $DD
- D - I - - 0x0260FA 13:A0EA: A6        .byte $A6   ; <じ>
- D - I - - 0x0260FB 13:A0EB: A7        .byte $A7   ; <ず>
- D - I - - 0x0260FC 13:A0EC: DB        .byte $DB
- D - I - - 0x0260FD 13:A0ED: DF        .byte $DF
- D - I - - 0x0260FE 13:A0EE: A8        .byte $A8   ; <ぜ>
- D - I - - 0x0260FF 13:A0EF: A9        .byte $A9   ; <ぞ>
- D - I - - 0x026100 13:A0F0: 00        .byte $00
- D - I - - 0x026101 13:A0F1: A1        .byte $A1   ; <ぎ>
- D - I - - 0x026102 13:A0F2: 01        .byte $01   ; <あ>
- D - I - - 0x026103 13:A0F3: 01        .byte $01   ; <あ>
- D - I - - 0x026104 13:A0F4: A3        .byte $A3   ; <げ>
- D - I - - 0x026105 13:A0F5: 01        .byte $01   ; <あ>
- D - I - - 0x026106 13:A0F6: 01        .byte $01   ; <あ>
- D - I - - 0x026107 13:A0F7: 01        .byte $01   ; <あ>
- D - I - - 0x026108 13:A0F8: 01        .byte $01   ; <あ>
- D - I - - 0x026109 13:A0F9: 01        .byte $01   ; <あ>
- D - I - - 0x02610A 13:A0FA: 01        .byte $01   ; <あ>
- D - I - - 0x02610B 13:A0FB: 01        .byte $01   ; <あ>
- D - I - - 0x02610C 13:A0FC: 01        .byte $01   ; <あ>
- D - I - - 0x02610D 13:A0FD: 01        .byte $01   ; <あ>
- D - I - - 0x02610E 13:A0FE: 01        .byte $01   ; <あ>
- D - I - - 0x02610F 13:A0FF: 01        .byte $01   ; <あ>
- D - I - - 0x026110 13:A100: 01        .byte $01   ; <あ>
- D - I - - 0x026111 13:A101: 01        .byte $01   ; <あ>
- D - I - - 0x026112 13:A102: 01        .byte $01   ; <あ>
- D - I - - 0x026113 13:A103: 01        .byte $01   ; <あ>
- D - I - - 0x026114 13:A104: 01        .byte $01   ; <あ>
- D - I - - 0x026115 13:A105: 01        .byte $01   ; <あ>
- D - I - - 0x026116 13:A106: 01        .byte $01   ; <あ>
- D - I - - 0x026117 13:A107: 01        .byte $01   ; <あ>
- D - I - - 0x026118 13:A108: 01        .byte $01   ; <あ>
- D - I - - 0x026119 13:A109: 01        .byte $01   ; <あ>
- D - I - - 0x02611A 13:A10A: 01        .byte $01   ; <あ>
- D - I - - 0x02611B 13:A10B: 01        .byte $01   ; <あ>
- D - I - - 0x02611C 13:A10C: 0D        .byte $0D   ; <す>
- D - I - - 0x02611D 13:A10D: 0D        .byte $0D   ; <す>
- D - I - - 0x02611E 13:A10E: 0D        .byte $0D   ; <す>
- D - I - - 0x02611F 13:A10F: 0D        .byte $0D   ; <す>
- D - I - - 0x026120 13:A110: 11        .byte $11   ; <ち>
- D - I - - 0x026121 13:A111: 10        .byte $10   ; <た>
- D - I - - 0x026122 13:A112: 3C        .byte $3C   ; <9>
- D - I - - 0x026123 13:A113: 18        .byte $18   ; <ね>
- D - I - - 0x026124 13:A114: 13        .byte $13   ; <て>
- D - I - - 0x026125 13:A115: 12        .byte $12   ; <つ>
- D - I - - 0x026126 13:A116: 0A        .byte $0A   ; <こ>
- D - I - - 0x026127 13:A117: 0B        .byte $0B   ; <さ>
- D - I - - 0x026128 13:A118: 00        .byte $00
- D - I - - 0x026129 13:A119: 00        .byte $00
- D - I - - 0x02612A 13:A11A: 00        .byte $00
- D - I - - 0x02612B 13:A11B: 00        .byte $00
- D - I - - 0x02612C 13:A11C: 00        .byte $00
- D - I - - 0x02612D 13:A11D: 00        .byte $00
- D - I - - 0x02612E 13:A11E: 00        .byte $00
- D - I - - 0x02612F 13:A11F: 00        .byte $00
- D - I - - 0x026130 13:A120: 19        .byte $19   ; <の>
- D - I - - 0x026131 13:A121: 10        .byte $10   ; <た>
- D - I - - 0x026132 13:A122: 3C        .byte $3C   ; <9>
- D - I - - 0x026133 13:A123: 10        .byte $10   ; <た>
- D - I - - 0x026134 13:A124: 0E        .byte $0E   ; <せ>
- D - I - - 0x026135 13:A125: 12        .byte $12   ; <つ>
- D - I - - 0x026136 13:A126: 0A        .byte $0A   ; <こ>
- D - I - - 0x026137 13:A127: 12        .byte $12   ; <つ>
- D - I - - 0x026138 13:A128: 00        .byte $00
- D - I - - 0x026139 13:A129: 00        .byte $00
- D - I - - 0x02613A 13:A12A: 00        .byte $00
- D - I - - 0x02613B 13:A12B: 00        .byte $00
- D - I - - 0x02613C 13:A12C: 00        .byte $00
- D - I - - 0x02613D 13:A12D: 00        .byte $00
- D - I - - 0x02613E 13:A12E: 00        .byte $00
- D - I - - 0x02613F 13:A12F: 00        .byte $00
- D - I - - 0x026140 13:A130: 3C        .byte $3C   ; <9>
- D - I - - 0x026141 13:A131: 3C        .byte $3C   ; <9>
- D - I - - 0x026142 13:A132: 18        .byte $18   ; <ね>
- D - I - - 0x026143 13:A133: 19        .byte $19   ; <の>
- D - I - - 0x026144 13:A134: 0A        .byte $0A   ; <こ>
- D - I - - 0x026145 13:A135: 12        .byte $12   ; <つ>
- D - I - - 0x026146 13:A136: 0B        .byte $0B   ; <さ>
- D - I - - 0x026147 13:A137: 0E        .byte $0E   ; <せ>
- D - I - - 0x026148 13:A138: 18        .byte $18   ; <ね>
- D - I - - 0x026149 13:A139: 19        .byte $19   ; <の>
- D - I - - 0x02614A 13:A13A: 3C        .byte $3C   ; <9>
- D - I - - 0x02614B 13:A13B: 10        .byte $10   ; <た>
- D - I - - 0x02614C 13:A13C: 0B        .byte $0B   ; <さ>
- D - I - - 0x02614D 13:A13D: 0E        .byte $0E   ; <せ>
- D - I - - 0x02614E 13:A13E: 12        .byte $12   ; <つ>
- D - I - - 0x02614F 13:A13F: 0A        .byte $0A   ; <こ>
- D - I - - 0x026150 13:A140: 3C        .byte $3C   ; <9>
- D - I - - 0x026151 13:A141: 3C        .byte $3C   ; <9>
- D - I - - 0x026152 13:A142: 10        .byte $10   ; <た>
- D - I - - 0x026153 13:A143: 11        .byte $11   ; <ち>
- D - I - - 0x026154 13:A144: 12        .byte $12   ; <つ>
- D - I - - 0x026155 13:A145: 0A        .byte $0A   ; <こ>
- D - I - - 0x026156 13:A146: 0A        .byte $0A   ; <こ>
- D - I - - 0x026157 13:A147: 13        .byte $13   ; <て>
- D - I - - 0x026158 13:A148: 11        .byte $11   ; <ち>
- D - I - - 0x026159 13:A149: 10        .byte $10   ; <た>
- D - I - - 0x02615A 13:A14A: 3C        .byte $3C   ; <9>
- D - I - - 0x02615B 13:A14B: 3C        .byte $3C   ; <9>
- D - I - - 0x02615C 13:A14C: 13        .byte $13   ; <て>
- D - I - - 0x02615D 13:A14D: 0A        .byte $0A   ; <こ>
- D - I - - 0x02615E 13:A14E: 0A        .byte $0A   ; <こ>
- D - I - - 0x02615F 13:A14F: 12        .byte $12   ; <つ>
- D - I - - 0x026160 13:A150: 01        .byte $01   ; <あ>
- D - I - - 0x026161 13:A151: 01        .byte $01   ; <あ>
- D - I - - 0x026162 13:A152: 01        .byte $01   ; <あ>
- D - I - - 0x026163 13:A153: 01        .byte $01   ; <あ>
- D - I - - 0x026164 13:A154: 01        .byte $01   ; <あ>
- D - I - - 0x026165 13:A155: 01        .byte $01   ; <あ>
- D - I - - 0x026166 13:A156: 01        .byte $01   ; <あ>
- D - I - - 0x026167 13:A157: 01        .byte $01   ; <あ>
- D - I - - 0x026168 13:A158: 01        .byte $01   ; <あ>
- D - I - - 0x026169 13:A159: 01        .byte $01   ; <あ>
- D - I - - 0x02616A 13:A15A: 01        .byte $01   ; <あ>
- D - I - - 0x02616B 13:A15B: 01        .byte $01   ; <あ>
- D - I - - 0x02616C 13:A15C: 01        .byte $01   ; <あ>
- D - I - - 0x02616D 13:A15D: 01        .byte $01   ; <あ>
- D - I - - 0x02616E 13:A15E: 01        .byte $01   ; <あ>
- D - I - - 0x02616F 13:A15F: 01        .byte $01   ; <あ>
- D - I - - 0x026170 13:A160: 50        .byte $50   ; <タ>
- D - I - - 0x026171 13:A161: 51        .byte $51   ; <チ>
- D - I - - 0x026172 13:A162: 54        .byte $54   ; <ト>
- D - I - - 0x026173 13:A163: 55        .byte $55   ; <ナ>
- D - I - - 0x026174 13:A164: 52        .byte $52   ; <ツ>
- D - I - - 0x026175 13:A165: 53        .byte $53   ; <テ>
- D - I - - 0x026176 13:A166: 56        .byte $56   ; <ニ>
- D - I - - 0x026177 13:A167: 57        .byte $57   ; <ヌ>
- D - I - - 0x026178 13:A168: 01        .byte $01   ; <あ>
- D - I - - 0x026179 13:A169: 01        .byte $01   ; <あ>
- D - I - - 0x02617A 13:A16A: 01        .byte $01   ; <あ>
- D - I - - 0x02617B 13:A16B: 01        .byte $01   ; <あ>
- D - I - - 0x02617C 13:A16C: 01        .byte $01   ; <あ>
- D - I - - 0x02617D 13:A16D: 01        .byte $01   ; <あ>
- D - I - - 0x02617E 13:A16E: 01        .byte $01   ; <あ>
- D - I - - 0x02617F 13:A16F: 01        .byte $01   ; <あ>
- D - I - - 0x026180 13:A170: 52        .byte $52   ; <ツ>
- D - I - - 0x026181 13:A171: 53        .byte $53   ; <テ>
- D - I - - 0x026182 13:A172: 56        .byte $56   ; <ニ>
- D - I - - 0x026183 13:A173: 57        .byte $57   ; <ヌ>
- D - I - - 0x026184 13:A174: 01        .byte $01   ; <あ>
- D - I - - 0x026185 13:A175: 01        .byte $01   ; <あ>
- D - I - - 0x026186 13:A176: 01        .byte $01   ; <あ>
- D - I - - 0x026187 13:A177: 01        .byte $01   ; <あ>
- D - I - - 0x026188 13:A178: 01        .byte $01   ; <あ>
- D - I - - 0x026189 13:A179: 01        .byte $01   ; <あ>
- D - I - - 0x02618A 13:A17A: 01        .byte $01   ; <あ>
- D - I - - 0x02618B 13:A17B: 01        .byte $01   ; <あ>
- D - I - - 0x02618C 13:A17C: 01        .byte $01   ; <あ>
- D - I - - 0x02618D 13:A17D: 01        .byte $01   ; <あ>
- D - I - - 0x02618E 13:A17E: 01        .byte $01   ; <あ>
- D - I - - 0x02618F 13:A17F: 01        .byte $01   ; <あ>
- D - I - - 0x026190 13:A180: 50        .byte $50   ; <タ>
- D - I - - 0x026191 13:A181: 54        .byte $54   ; <ト>
- D - I - - 0x026192 13:A182: 55        .byte $55   ; <ナ>
- D - I - - 0x026193 13:A183: 01        .byte $01   ; <あ>
- D - I - - 0x026194 13:A184: 52        .byte $52   ; <ツ>
- D - I - - 0x026195 13:A185: 56        .byte $56   ; <ニ>
- D - I - - 0x026196 13:A186: 57        .byte $57   ; <ヌ>
- D - I - - 0x026197 13:A187: 01        .byte $01   ; <あ>
- D - I - - 0x026198 13:A188: 01        .byte $01   ; <あ>
- D - I - - 0x026199 13:A189: 01        .byte $01   ; <あ>
- D - I - - 0x02619A 13:A18A: 01        .byte $01   ; <あ>
- D - I - - 0x02619B 13:A18B: 01        .byte $01   ; <あ>
- D - I - - 0x02619C 13:A18C: 01        .byte $01   ; <あ>
- D - I - - 0x02619D 13:A18D: 01        .byte $01   ; <あ>
- D - I - - 0x02619E 13:A18E: 01        .byte $01   ; <あ>
- D - I - - 0x02619F 13:A18F: 01        .byte $01   ; <あ>
- D - I - - 0x0261A0 13:A190: 01        .byte $01   ; <あ>
- D - I - - 0x0261A1 13:A191: 01        .byte $01   ; <あ>
- D - I - - 0x0261A2 13:A192: 01        .byte $01   ; <あ>
- D - I - - 0x0261A3 13:A193: 01        .byte $01   ; <あ>
- D - I - - 0x0261A4 13:A194: 01        .byte $01   ; <あ>
- D - I - - 0x0261A5 13:A195: 01        .byte $01   ; <あ>
- D - I - - 0x0261A6 13:A196: 01        .byte $01   ; <あ>
- D - I - - 0x0261A7 13:A197: 01        .byte $01   ; <あ>
- D - I - - 0x0261A8 13:A198: 01        .byte $01   ; <あ>
- D - I - - 0x0261A9 13:A199: 01        .byte $01   ; <あ>
- D - I - - 0x0261AA 13:A19A: 01        .byte $01   ; <あ>
- D - I - - 0x0261AB 13:A19B: 01        .byte $01   ; <あ>
- D - I - - 0x0261AC 13:A19C: 0D        .byte $0D   ; <す>
- D - I - - 0x0261AD 13:A19D: 0D        .byte $0D   ; <す>
- D - I - - 0x0261AE 13:A19E: 0D        .byte $0D   ; <す>
- D - I - - 0x0261AF 13:A19F: 0D        .byte $0D   ; <す>
- D - I - - 0x0261B0 13:A1A0: 01        .byte $01   ; <あ>
- D - I - - 0x0261B1 13:A1A1: 01        .byte $01   ; <あ>
- D - I - - 0x0261B2 13:A1A2: 01        .byte $01   ; <あ>
- D - I - - 0x0261B3 13:A1A3: 01        .byte $01   ; <あ>
- D - I - - 0x0261B4 13:A1A4: 01        .byte $01   ; <あ>
- D - I - - 0x0261B5 13:A1A5: 01        .byte $01   ; <あ>
- D - I - - 0x0261B6 13:A1A6: 01        .byte $01   ; <あ>
- D - I - - 0x0261B7 13:A1A7: 01        .byte $01   ; <あ>
- D - I - - 0x0261B8 13:A1A8: 50        .byte $50   ; <タ>
- D - I - - 0x0261B9 13:A1A9: 51        .byte $51   ; <チ>
- D - I - - 0x0261BA 13:A1AA: 54        .byte $54   ; <ト>
- D - I - - 0x0261BB 13:A1AB: 55        .byte $55   ; <ナ>
- D - I - - 0x0261BC 13:A1AC: 52        .byte $52   ; <ツ>
- D - I - - 0x0261BD 13:A1AD: 53        .byte $53   ; <テ>
- D - I - - 0x0261BE 13:A1AE: 56        .byte $56   ; <ニ>
- D - I - - 0x0261BF 13:A1AF: 57        .byte $57   ; <ヌ>
- D - I - - 0x0261C0 13:A1B0: 01        .byte $01   ; <あ>
- D - I - - 0x0261C1 13:A1B1: 01        .byte $01   ; <あ>
- D - I - - 0x0261C2 13:A1B2: 01        .byte $01   ; <あ>
- D - I - - 0x0261C3 13:A1B3: 01        .byte $01   ; <あ>
- D - I - - 0x0261C4 13:A1B4: 58        .byte $58   ; <ネ>
- D - I - - 0x0261C5 13:A1B5: 59        .byte $59   ; <ノ>
- D - I - - 0x0261C6 13:A1B6: 5C        .byte $5C   ; <フ>
- D - I - - 0x0261C7 13:A1B7: 01        .byte $01   ; <あ>
- D - I - - 0x0261C8 13:A1B8: 5A        .byte $5A   ; <ハ>
- D - I - - 0x0261C9 13:A1B9: 5B        .byte $5B   ; <ヒ>
- D - I - - 0x0261CA 13:A1BA: 5E        .byte $5E   ; <ホ>
- D - I - - 0x0261CB 13:A1BB: 5F        .byte $5F   ; <マ>
- D - I - - 0x0261CC 13:A1BC: 0F        .byte $0F   ; <そ>
- D - I - - 0x0261CD 13:A1BD: 0F        .byte $0F   ; <そ>
- D - I - - 0x0261CE 13:A1BE: 0F        .byte $0F   ; <そ>
- D - I - - 0x0261CF 13:A1BF: 0F        .byte $0F   ; <そ>
- D - I - - 0x0261D0 13:A1C0: 01        .byte $01   ; <あ>
- D - I - - 0x0261D1 13:A1C1: 01        .byte $01   ; <あ>
- D - I - - 0x0261D2 13:A1C2: 01        .byte $01   ; <あ>
- D - I - - 0x0261D3 13:A1C3: 01        .byte $01   ; <あ>
- D - I - - 0x0261D4 13:A1C4: 01        .byte $01   ; <あ>
- D - I - - 0x0261D5 13:A1C5: 01        .byte $01   ; <あ>
- D - I - - 0x0261D6 13:A1C6: 01        .byte $01   ; <あ>
- D - I - - 0x0261D7 13:A1C7: 01        .byte $01   ; <あ>
- D - I - - 0x0261D8 13:A1C8: 00        .byte $00
- D - I - - 0x0261D9 13:A1C9: 00        .byte $00
- D - I - - 0x0261DA 13:A1CA: 00        .byte $00
- D - I - - 0x0261DB 13:A1CB: 00        .byte $00
- D - I - - 0x0261DC 13:A1CC: 00        .byte $00
- D - I - - 0x0261DD 13:A1CD: 00        .byte $00
- D - I - - 0x0261DE 13:A1CE: 00        .byte $00
- D - I - - 0x0261DF 13:A1CF: 00        .byte $00
- D - I - - 0x0261E0 13:A1D0: E4        .byte $E4
- D - I - - 0x0261E1 13:A1D1: E5        .byte $E5
- D - I - - 0x0261E2 13:A1D2: F0        .byte $F0
- D - I - - 0x0261E3 13:A1D3: F1        .byte $F1
- D - I - - 0x0261E4 13:A1D4: E6        .byte $E6
- D - I - - 0x0261E5 13:A1D5: E7        .byte $E7
- D - I - - 0x0261E6 13:A1D6: F2        .byte $F2
- D - I - - 0x0261E7 13:A1D7: F3        .byte $F3
- D - I - - 0x0261E8 13:A1D8: EC        .byte $EC
- D - I - - 0x0261E9 13:A1D9: ED        .byte $ED
- D - I - - 0x0261EA 13:A1DA: F8        .byte $F8
- D - I - - 0x0261EB 13:A1DB: F9        .byte $F9
- D - I - - 0x0261EC 13:A1DC: EE        .byte $EE
- D - I - - 0x0261ED 13:A1DD: EF        .byte $EF
- D - I - - 0x0261EE 13:A1DE: FA        .byte $FA
- D - I - - 0x0261EF 13:A1DF: FB        .byte $FB
- D - I - - 0x0261F0 13:A1E0: F4        .byte $F4
- D - I - - 0x0261F1 13:A1E1: F5        .byte $F5
- D - I - - 0x0261F2 13:A1E2: FD        .byte $FD
- D - I - - 0x0261F3 13:A1E3: 01        .byte $01   ; <あ>
- D - I - - 0x0261F4 13:A1E4: F6        .byte $F6
- D - I - - 0x0261F5 13:A1E5: F7        .byte $F7
- D - I - - 0x0261F6 13:A1E6: 01        .byte $01   ; <あ>
- D - I - - 0x0261F7 13:A1E7: 01        .byte $01   ; <あ>
- D - I - - 0x0261F8 13:A1E8: FC        .byte $FC
- D - I - - 0x0261F9 13:A1E9: 01        .byte $01   ; <あ>
- D - I - - 0x0261FA 13:A1EA: 01        .byte $01   ; <あ>
- D - I - - 0x0261FB 13:A1EB: 01        .byte $01   ; <あ>
- D - I - - 0x0261FC 13:A1EC: 01        .byte $01   ; <あ>
- D - I - - 0x0261FD 13:A1ED: 01        .byte $01   ; <あ>
- D - I - - 0x0261FE 13:A1EE: 01        .byte $01   ; <あ>
- D - I - - 0x0261FF 13:A1EF: 01        .byte $01   ; <あ>
- D - I - - 0x026200 13:A1F0: 9C        .byte $9C
- D - I - - 0x026201 13:A1F1: 9C        .byte $9C
- D - I - - 0x026202 13:A1F2: FE        .byte $FE
- D - I - - 0x026203 13:A1F3: FF        .byte $FF
- D - I - - 0x026204 13:A1F4: 9C        .byte $9C
- D - I - - 0x026205 13:A1F5: 9C        .byte $9C
- D - I - - 0x026206 13:A1F6: FE        .byte $FE
- D - I - - 0x026207 13:A1F7: FF        .byte $FF
- D - I - - 0x026208 13:A1F8: 9C        .byte $9C
- D - I - - 0x026209 13:A1F9: 9C        .byte $9C
- D - I - - 0x02620A 13:A1FA: FE        .byte $FE
- D - I - - 0x02620B 13:A1FB: FF        .byte $FF
- D - I - - 0x02620C 13:A1FC: 22        .byte $22   ; <め>
- D - I - - 0x02620D 13:A1FD: 22        .byte $22   ; <め>
- D - I - - 0x02620E 13:A1FE: DE        .byte $DE
- D - I - - 0x02620F 13:A1FF: DC        .byte $DC
- D - I - - 0x026210 13:A200: 8A        .byte $8A   ; <N>
- D - I - - 0x026211 13:A201: 8A        .byte $8A   ; <N>
- D - I - - 0x026212 13:A202: C6        .byte $C6   ; <ベ>
- D - I - - 0x026213 13:A203: C7        .byte $C7   ; <ボ>
- D - I - - 0x026214 13:A204: A0        .byte $A0   ; <が>
- D - I - - 0x026215 13:A205: A0        .byte $A0   ; <が>
- D - I - - 0x026216 13:A206: D2        .byte $D2
- D - I - - 0x026217 13:A207: D8        .byte $D8
- D - I - - 0x026218 13:A208: 00        .byte $00
- D - I - - 0x026219 13:A209: 00        .byte $00
- D - I - - 0x02621A 13:A20A: 00        .byte $00
- D - I - - 0x02621B 13:A20B: 00        .byte $00
- D - I - - 0x02621C 13:A20C: 00        .byte $00
- D - I - - 0x02621D 13:A20D: 00        .byte $00
- D - I - - 0x02621E 13:A20E: 00        .byte $00
- D - I - - 0x02621F 13:A20F: 00        .byte $00
- D - I - - 0x026220 13:A210: DD        .byte $DD
- D - I - - 0x026221 13:A211: DD        .byte $DD
- D - I - - 0x026222 13:A212: DD        .byte $DD
- D - I - - 0x026223 13:A213: DD        .byte $DD
- D - I - - 0x026224 13:A214: D5        .byte $D5
- D - I - - 0x026225 13:A215: D5        .byte $D5
- D - I - - 0x026226 13:A216: D5        .byte $D5
- D - I - - 0x026227 13:A217: D5        .byte $D5
- D - I - - 0x026228 13:A218: DF        .byte $DF
- D - I - - 0x026229 13:A219: DF        .byte $DF
- D - I - - 0x02622A 13:A21A: DF        .byte $DF
- D - I - - 0x02622B 13:A21B: DF        .byte $DF
- D - I - - 0x02622C 13:A21C: D6        .byte $D6
- D - I - - 0x02622D 13:A21D: D6        .byte $D6
- D - I - - 0x02622E 13:A21E: D6        .byte $D6
- D - I - - 0x02622F 13:A21F: D6        .byte $D6
- D - I - - 0x026230 13:A220: DD        .byte $DD
- D - I - - 0x026231 13:A221: D4        .byte $D4
- D - I - - 0x026232 13:A222: D1        .byte $D1   ; <ポ>
- D - I - - 0x026233 13:A223: 01        .byte $01   ; <あ>
- D - I - - 0x026234 13:A224: D5        .byte $D5
- D - I - - 0x026235 13:A225: D5        .byte $D5
- D - I - - 0x026236 13:A226: D4        .byte $D4
- D - I - - 0x026237 13:A227: D3        .byte $D3
- D - I - - 0x026238 13:A228: DF        .byte $DF
- D - I - - 0x026239 13:A229: DF        .byte $DF
- D - I - - 0x02623A 13:A22A: DF        .byte $DF
- D - I - - 0x02623B 13:A22B: D9        .byte $D9
- D - I - - 0x02623C 13:A22C: D6        .byte $D6
- D - I - - 0x02623D 13:A22D: D6        .byte $D6
- D - I - - 0x02623E 13:A22E: D6        .byte $D6
- D - I - - 0x02623F 13:A22F: D0        .byte $D0   ; <ペ>
- D - I - - 0x026240 13:A230: CC        .byte $CC   ; <ぽ>
- D - I - - 0x026241 13:A231: CC        .byte $CC   ; <ぽ>
- D - I - - 0x026242 13:A232: CC        .byte $CC   ; <ぽ>
- D - I - - 0x026243 13:A233: D2        .byte $D2
- D - I - - 0x026244 13:A234: CE        .byte $CE   ; <ピ>
- D - I - - 0x026245 13:A235: CE        .byte $CE   ; <ピ>
- D - I - - 0x026246 13:A236: CE        .byte $CE   ; <ピ>
- D - I - - 0x026247 13:A237: D8        .byte $D8
- D - I - - 0x026248 13:A238: CC        .byte $CC   ; <ぽ>
- D - I - - 0x026249 13:A239: CC        .byte $CC   ; <ぽ>
- D - I - - 0x02624A 13:A23A: CC        .byte $CC   ; <ぽ>
- D - I - - 0x02624B 13:A23B: D2        .byte $D2
- D - I - - 0x02624C 13:A23C: CE        .byte $CE   ; <ピ>
- D - I - - 0x02624D 13:A23D: CE        .byte $CE   ; <ピ>
- D - I - - 0x02624E 13:A23E: CE        .byte $CE   ; <ピ>
- D - I - - 0x02624F 13:A23F: D8        .byte $D8
- D - I - - 0x026250 13:A240: CB        .byte $CB   ; <ぺ>
- D - I - - 0x026251 13:A241: CB        .byte $CB   ; <ぺ>
- D - I - - 0x026252 13:A242: CB        .byte $CB   ; <ぺ>
- D - I - - 0x026253 13:A243: DA        .byte $DA
- D - I - - 0x026254 13:A244: CB        .byte $CB   ; <ぺ>
- D - I - - 0x026255 13:A245: CB        .byte $CB   ; <ぺ>
- D - I - - 0x026256 13:A246: CB        .byte $CB   ; <ぺ>
- D - I - - 0x026257 13:A247: DA        .byte $DA
- D - I - - 0x026258 13:A248: CB        .byte $CB   ; <ぺ>
- D - I - - 0x026259 13:A249: CB        .byte $CB   ; <ぺ>
- D - I - - 0x02625A 13:A24A: CB        .byte $CB   ; <ぺ>
- D - I - - 0x02625B 13:A24B: DA        .byte $DA
- D - I - - 0x02625C 13:A24C: CB        .byte $CB   ; <ぺ>
- D - I - - 0x02625D 13:A24D: CB        .byte $CB   ; <ぺ>
- D - I - - 0x02625E 13:A24E: CB        .byte $CB   ; <ぺ>
- D - I - - 0x02625F 13:A24F: E5        .byte $E5
- D - I - - 0x026260 13:A250: F3        .byte $F3
- D - I - - 0x026261 13:A251: F3        .byte $F3
- D - I - - 0x026262 13:A252: EC        .byte $EC
- D - I - - 0x026263 13:A253: E7        .byte $E7
- D - I - - 0x026264 13:A254: 01        .byte $01   ; <あ>
- D - I - - 0x026265 13:A255: EF        .byte $EF
- D - I - - 0x026266 13:A256: EE        .byte $EE
- D - I - - 0x026267 13:A257: 01        .byte $01   ; <あ>
- D - I - - 0x026268 13:A258: 00        .byte $00
- D - I - - 0x026269 13:A259: 00        .byte $00
- D - I - - 0x02626A 13:A25A: 00        .byte $00
- D - I - - 0x02626B 13:A25B: 00        .byte $00
- D - I - - 0x02626C 13:A25C: 00        .byte $00
- D - I - - 0x02626D 13:A25D: 00        .byte $00
- D - I - - 0x02626E 13:A25E: 00        .byte $00
- D - I - - 0x02626F 13:A25F: 00        .byte $00
- D - I - - 0x026270 13:A260: F1        .byte $F1
- D - I - - 0x026271 13:A261: E0        .byte $E0
- D - I - - 0x026272 13:A262: 01        .byte $01   ; <あ>
- D - I - - 0x026273 13:A263: 01        .byte $01   ; <あ>
- D - I - - 0x026274 13:A264: F2        .byte $F2
- D - I - - 0x026275 13:A265: 4D        .byte $4D   ; <ス>
- D - I - - 0x026276 13:A266: E0        .byte $E0
- D - I - - 0x026277 13:A267: 01        .byte $01   ; <あ>
- D - I - - 0x026278 13:A268: 01        .byte $01   ; <あ>
- D - I - - 0x026279 13:A269: 01        .byte $01   ; <あ>
- D - I - - 0x02627A 13:A26A: E2        .byte $E2
- D - I - - 0x02627B 13:A26B: E0        .byte $E0
- D - I - - 0x02627C 13:A26C: 01        .byte $01   ; <あ>
- D - I - - 0x02627D 13:A26D: 01        .byte $01   ; <あ>
- D - I - - 0x02627E 13:A26E: 01        .byte $01   ; <あ>
- D - I - - 0x02627F 13:A26F: E2        .byte $E2
- D - I - - 0x026280 13:A270: F2        .byte $F2
- D - I - - 0x026281 13:A271: F2        .byte $F2
- D - I - - 0x026282 13:A272: F2        .byte $F2
- D - I - - 0x026283 13:A273: F2        .byte $F2
- D - I - - 0x026284 13:A274: F2        .byte $F2
- D - I - - 0x026285 13:A275: F2        .byte $F2
- D - I - - 0x026286 13:A276: F2        .byte $F2
- D - I - - 0x026287 13:A277: F2        .byte $F2
- D - I - - 0x026288 13:A278: 01        .byte $01   ; <あ>
- D - I - - 0x026289 13:A279: 01        .byte $01   ; <あ>
- D - I - - 0x02628A 13:A27A: 01        .byte $01   ; <あ>
- D - I - - 0x02628B 13:A27B: 01        .byte $01   ; <あ>
- D - I - - 0x02628C 13:A27C: 01        .byte $01   ; <あ>
- D - I - - 0x02628D 13:A27D: 01        .byte $01   ; <あ>
- D - I - - 0x02628E 13:A27E: 01        .byte $01   ; <あ>
- D - I - - 0x02628F 13:A27F: 01        .byte $01   ; <あ>
- D - I - - 0x026290 13:A280: 01        .byte $01   ; <あ>
- D - I - - 0x026291 13:A281: 01        .byte $01   ; <あ>
- D - I - - 0x026292 13:A282: E4        .byte $E4
- D - I - - 0x026293 13:A283: F0        .byte $F0
- D - I - - 0x026294 13:A284: 01        .byte $01   ; <あ>
- D - I - - 0x026295 13:A285: E4        .byte $E4
- D - I - - 0x026296 13:A286: 4C        .byte $4C   ; <シ>
- D - I - - 0x026297 13:A287: F2        .byte $F2
- D - I - - 0x026298 13:A288: E4        .byte $E4
- D - I - - 0x026299 13:A289: E6        .byte $E6
- D - I - - 0x02629A 13:A28A: 01        .byte $01   ; <あ>
- D - I - - 0x02629B 13:A28B: 01        .byte $01   ; <あ>
- D - I - - 0x02629C 13:A28C: E6        .byte $E6
- D - I - - 0x02629D 13:A28D: 01        .byte $01   ; <あ>
- D - I - - 0x02629E 13:A28E: 01        .byte $01   ; <あ>
- D - I - - 0x02629F 13:A28F: 01        .byte $01   ; <あ>
- D - I - - 0x0262A0 13:A290: 50        .byte $50   ; <タ>
- D - I - - 0x0262A1 13:A291: 51        .byte $51   ; <チ>
- D - I - - 0x0262A2 13:A292: 54        .byte $54   ; <ト>
- D - I - - 0x0262A3 13:A293: 55        .byte $55   ; <ナ>
- D - I - - 0x0262A4 13:A294: 52        .byte $52   ; <ツ>
- D - I - - 0x0262A5 13:A295: 53        .byte $53   ; <テ>
- D - I - - 0x0262A6 13:A296: 56        .byte $56   ; <ニ>
- D - I - - 0x0262A7 13:A297: 57        .byte $57   ; <ヌ>
- D - I - - 0x0262A8 13:A298: 01        .byte $01   ; <あ>
- D - I - - 0x0262A9 13:A299: 01        .byte $01   ; <あ>
- D - I - - 0x0262AA 13:A29A: 01        .byte $01   ; <あ>
- D - I - - 0x0262AB 13:A29B: 01        .byte $01   ; <あ>
- D - I - - 0x0262AC 13:A29C: 0D        .byte $0D   ; <す>
- D - I - - 0x0262AD 13:A29D: 0D        .byte $0D   ; <す>
- D - I - - 0x0262AE 13:A29E: 0D        .byte $0D   ; <す>
- D - I - - 0x0262AF 13:A29F: 0D        .byte $0D   ; <す>
- D - I - - 0x0262B0 13:A2A0: CC        .byte $CC   ; <ぽ>
- D - I - - 0x0262B1 13:A2A1: CC        .byte $CC   ; <ぽ>
- D - I - - 0x0262B2 13:A2A2: CC        .byte $CC   ; <ぽ>
- D - I - - 0x0262B3 13:A2A3: CC        .byte $CC   ; <ぽ>
- D - I - - 0x0262B4 13:A2A4: CE        .byte $CE   ; <ピ>
- D - I - - 0x0262B5 13:A2A5: CE        .byte $CE   ; <ピ>
- D - I - - 0x0262B6 13:A2A6: CE        .byte $CE   ; <ピ>
- D - I - - 0x0262B7 13:A2A7: CE        .byte $CE   ; <ピ>
- D - I - - 0x0262B8 13:A2A8: CC        .byte $CC   ; <ぽ>
- D - I - - 0x0262B9 13:A2A9: CC        .byte $CC   ; <ぽ>
- D - I - - 0x0262BA 13:A2AA: CC        .byte $CC   ; <ぽ>
- D - I - - 0x0262BB 13:A2AB: CC        .byte $CC   ; <ぽ>
- D - I - - 0x0262BC 13:A2AC: CE        .byte $CE   ; <ピ>
- D - I - - 0x0262BD 13:A2AD: CE        .byte $CE   ; <ピ>
- D - I - - 0x0262BE 13:A2AE: CE        .byte $CE   ; <ピ>
- D - I - - 0x0262BF 13:A2AF: CE        .byte $CE   ; <ピ>
- D - I - - 0x0262C0 13:A2B0: CB        .byte $CB   ; <ぺ>
- D - I - - 0x0262C1 13:A2B1: CB        .byte $CB   ; <ぺ>
- D - I - - 0x0262C2 13:A2B2: CB        .byte $CB   ; <ぺ>
- D - I - - 0x0262C3 13:A2B3: CB        .byte $CB   ; <ぺ>
- D - I - - 0x0262C4 13:A2B4: CB        .byte $CB   ; <ぺ>
- D - I - - 0x0262C5 13:A2B5: CB        .byte $CB   ; <ぺ>
- D - I - - 0x0262C6 13:A2B6: CB        .byte $CB   ; <ぺ>
- D - I - - 0x0262C7 13:A2B7: CB        .byte $CB   ; <ぺ>
- D - I - - 0x0262C8 13:A2B8: CB        .byte $CB   ; <ぺ>
- D - I - - 0x0262C9 13:A2B9: CB        .byte $CB   ; <ぺ>
- D - I - - 0x0262CA 13:A2BA: CB        .byte $CB   ; <ぺ>
- D - I - - 0x0262CB 13:A2BB: CB        .byte $CB   ; <ぺ>
- D - I - - 0x0262CC 13:A2BC: CB        .byte $CB   ; <ぺ>
- D - I - - 0x0262CD 13:A2BD: CB        .byte $CB   ; <ぺ>
- D - I - - 0x0262CE 13:A2BE: CB        .byte $CB   ; <ぺ>
- D - I - - 0x0262CF 13:A2BF: CB        .byte $CB   ; <ぺ>
- D - I - - 0x0262D0 13:A2C0: F3        .byte $F3
- D - I - - 0x0262D1 13:A2C1: F3        .byte $F3
- D - I - - 0x0262D2 13:A2C2: F3        .byte $F3
- D - I - - 0x0262D3 13:A2C3: F3        .byte $F3
- D - I - - 0x0262D4 13:A2C4: 01        .byte $01   ; <あ>
- D - I - - 0x0262D5 13:A2C5: 01        .byte $01   ; <あ>
- D - I - - 0x0262D6 13:A2C6: 01        .byte $01   ; <あ>
- D - I - - 0x0262D7 13:A2C7: 01        .byte $01   ; <あ>
- D - I - - 0x0262D8 13:A2C8: 00        .byte $00
- D - I - - 0x0262D9 13:A2C9: 00        .byte $00
- D - I - - 0x0262DA 13:A2CA: 00        .byte $00
- D - I - - 0x0262DB 13:A2CB: 00        .byte $00
- D - I - - 0x0262DC 13:A2CC: 00        .byte $00
- D - I - - 0x0262DD 13:A2CD: 00        .byte $00
- D - I - - 0x0262DE 13:A2CE: 00        .byte $00
- D - I - - 0x0262DF 13:A2CF: 00        .byte $00
- D - I - - 0x0262E0 13:A2D0: 01        .byte $01   ; <あ>
- D - I - - 0x0262E1 13:A2D1: C1        .byte $C1   ; <デ>
- D - I - - 0x0262E2 13:A2D2: C4        .byte $C4   ; <ビ>
- D - I - - 0x0262E3 13:A2D3: CD        .byte $CD   ; <パ>
- D - I - - 0x0262E4 13:A2D4: C3        .byte $C3   ; <バ>
- D - I - - 0x0262E5 13:A2D5: C4        .byte $C4   ; <ビ>
- D - I - - 0x0262E6 13:A2D6: C5        .byte $C5   ; <ブ>
- D - I - - 0x0262E7 13:A2D7: C5        .byte $C5   ; <ブ>
- D - I - - 0x0262E8 13:A2D8: C9        .byte $C9   ; <ぴ>
- D - I - - 0x0262E9 13:A2D9: CF        .byte $CF   ; <プ>
- D - I - - 0x0262EA 13:A2DA: CF        .byte $CF   ; <プ>
- D - I - - 0x0262EB 13:A2DB: CF        .byte $CF   ; <プ>
- D - I - - 0x0262EC 13:A2DC: C0        .byte $C0   ; <ヅ>
- D - I - - 0x0262ED 13:A2DD: C6        .byte $C6   ; <ベ>
- D - I - - 0x0262EE 13:A2DE: C6        .byte $C6   ; <ベ>
- D - I - - 0x0262EF 13:A2DF: C6        .byte $C6   ; <ベ>
- D - I - - 0x0262F0 13:A2E0: CD        .byte $CD   ; <パ>
- D - I - - 0x0262F1 13:A2E1: CD        .byte $CD   ; <パ>
- D - I - - 0x0262F2 13:A2E2: CD        .byte $CD   ; <パ>
- D - I - - 0x0262F3 13:A2E3: CD        .byte $CD   ; <パ>
- D - I - - 0x0262F4 13:A2E4: C5        .byte $C5   ; <ブ>
- D - I - - 0x0262F5 13:A2E5: C5        .byte $C5   ; <ブ>
- D - I - - 0x0262F6 13:A2E6: C5        .byte $C5   ; <ブ>
- D - I - - 0x0262F7 13:A2E7: C5        .byte $C5   ; <ブ>
- D - I - - 0x0262F8 13:A2E8: CF        .byte $CF   ; <プ>
- D - I - - 0x0262F9 13:A2E9: CF        .byte $CF   ; <プ>
- D - I - - 0x0262FA 13:A2EA: CF        .byte $CF   ; <プ>
- D - I - - 0x0262FB 13:A2EB: CF        .byte $CF   ; <プ>
- D - I - - 0x0262FC 13:A2EC: C6        .byte $C6   ; <ベ>
- D - I - - 0x0262FD 13:A2ED: C6        .byte $C6   ; <ベ>
- D - I - - 0x0262FE 13:A2EE: C6        .byte $C6   ; <ベ>
- D - I - - 0x0262FF 13:A2EF: C6        .byte $C6   ; <ベ>
- D - I - - 0x026300 13:A2F0: C2        .byte $C2   ; <ド>
- D - I - - 0x026301 13:A2F1: CC        .byte $CC   ; <ぽ>
- D - I - - 0x026302 13:A2F2: CC        .byte $CC   ; <ぽ>
- D - I - - 0x026303 13:A2F3: CC        .byte $CC   ; <ぽ>
- D - I - - 0x026304 13:A2F4: C8        .byte $C8   ; <ぱ>
- D - I - - 0x026305 13:A2F5: CE        .byte $CE   ; <ピ>
- D - I - - 0x026306 13:A2F6: CE        .byte $CE   ; <ピ>
- D - I - - 0x026307 13:A2F7: CE        .byte $CE   ; <ピ>
- D - I - - 0x026308 13:A2F8: C2        .byte $C2   ; <ド>
- D - I - - 0x026309 13:A2F9: CC        .byte $CC   ; <ぽ>
- D - I - - 0x02630A 13:A2FA: CC        .byte $CC   ; <ぽ>
- D - I - - 0x02630B 13:A2FB: CC        .byte $CC   ; <ぽ>
- D - I - - 0x02630C 13:A2FC: C8        .byte $C8   ; <ぱ>
- D - I - - 0x02630D 13:A2FD: CE        .byte $CE   ; <ピ>
- D - I - - 0x02630E 13:A2FE: CE        .byte $CE   ; <ピ>
- D - I - - 0x02630F 13:A2FF: CE        .byte $CE   ; <ピ>
- D - I - - 0x026310 13:A300: CA        .byte $CA   ; <ぷ>
- D - I - - 0x026311 13:A301: CB        .byte $CB   ; <ぺ>
- D - I - - 0x026312 13:A302: CB        .byte $CB   ; <ぺ>
- D - I - - 0x026313 13:A303: CB        .byte $CB   ; <ぺ>
- D - I - - 0x026314 13:A304: CA        .byte $CA   ; <ぷ>
- D - I - - 0x026315 13:A305: CB        .byte $CB   ; <ぺ>
- D - I - - 0x026316 13:A306: CB        .byte $CB   ; <ぺ>
- D - I - - 0x026317 13:A307: CB        .byte $CB   ; <ぺ>
- D - I - - 0x026318 13:A308: CA        .byte $CA   ; <ぷ>
- D - I - - 0x026319 13:A309: CB        .byte $CB   ; <ぺ>
- D - I - - 0x02631A 13:A30A: CB        .byte $CB   ; <ぺ>
- D - I - - 0x02631B 13:A30B: CB        .byte $CB   ; <ぺ>
- D - I - - 0x02631C 13:A30C: E1        .byte $E1
- D - I - - 0x02631D 13:A30D: CB        .byte $CB   ; <ぺ>
- D - I - - 0x02631E 13:A30E: CB        .byte $CB   ; <ぺ>
- D - I - - 0x02631F 13:A30F: CB        .byte $CB   ; <ぺ>
- D - I - - 0x026320 13:A310: E3        .byte $E3
- D - I - - 0x026321 13:A311: E8        .byte $E8
- D - I - - 0x026322 13:A312: F3        .byte $F3
- D - I - - 0x026323 13:A313: F3        .byte $F3
- D - I - - 0x026324 13:A314: 01        .byte $01   ; <あ>
- D - I - - 0x026325 13:A315: EA        .byte $EA
- D - I - - 0x026326 13:A316: EB        .byte $EB
- D - I - - 0x026327 13:A317: 01        .byte $01   ; <あ>
- D - I - - 0x026328 13:A318: 00        .byte $00
- D - I - - 0x026329 13:A319: 00        .byte $00
- D - I - - 0x02632A 13:A31A: 00        .byte $00
- D - I - - 0x02632B 13:A31B: 00        .byte $00
- D - I - - 0x02632C 13:A31C: 00        .byte $00
- D - I - - 0x02632D 13:A31D: 00        .byte $00
- D - I - - 0x02632E 13:A31E: 00        .byte $00
- D - I - - 0x02632F 13:A31F: 00        .byte $00
- D - I - - 0x026330 13:A320: 2A        .byte $2A   ; <れ>
- D - I - - 0x026331 13:A321: 2B        .byte $2B   ; <ろ>
- D - I - - 0x026332 13:A322: 2A        .byte $2A   ; <れ>
- D - I - - 0x026333 13:A323: 2B        .byte $2B   ; <ろ>
- D - I - - 0x026334 13:A324: 2B        .byte $2B   ; <ろ>
- D - I - - 0x026335 13:A325: 2A        .byte $2A   ; <れ>
- D - I - - 0x026336 13:A326: 2B        .byte $2B   ; <ろ>
- D - I - - 0x026337 13:A327: 2A        .byte $2A   ; <れ>
- D - I - - 0x026338 13:A328: 2A        .byte $2A   ; <れ>
- D - I - - 0x026339 13:A329: 2B        .byte $2B   ; <ろ>
- D - I - - 0x02633A 13:A32A: 2A        .byte $2A   ; <れ>
- D - I - - 0x02633B 13:A32B: 2B        .byte $2B   ; <ろ>
- D - I - - 0x02633C 13:A32C: 2B        .byte $2B   ; <ろ>
- D - I - - 0x02633D 13:A32D: 2C        .byte $2C   ; <わ>
- D - I - - 0x02633E 13:A32E: 2D        .byte $2D   ; <を>
- D - I - - 0x02633F 13:A32F: 38        .byte $38   ; <5>
- D - I - - 0x026340 13:A330: 2A        .byte $2A   ; <れ>
- D - I - - 0x026341 13:A331: 2B        .byte $2B   ; <ろ>
- D - I - - 0x026342 13:A332: 2A        .byte $2A   ; <れ>
- D - I - - 0x026343 13:A333: 2B        .byte $2B   ; <ろ>
- D - I - - 0x026344 13:A334: 2B        .byte $2B   ; <ろ>
- D - I - - 0x026345 13:A335: 2A        .byte $2A   ; <れ>
- D - I - - 0x026346 13:A336: 2B        .byte $2B   ; <ろ>
- D - I - - 0x026347 13:A337: 2A        .byte $2A   ; <れ>
- D - I - - 0x026348 13:A338: 2A        .byte $2A   ; <れ>
- D - I - - 0x026349 13:A339: 2B        .byte $2B   ; <ろ>
- D - I - - 0x02634A 13:A33A: 2A        .byte $2A   ; <れ>
- D - I - - 0x02634B 13:A33B: 2B        .byte $2B   ; <ろ>
- D - I - - 0x02634C 13:A33C: 00        .byte $00
- D - I - - 0x02634D 13:A33D: 2E        .byte $2E   ; <ん>
- D - I - - 0x02634E 13:A33E: 2F        .byte $2F   ; <っ>
- D - I - - 0x02634F 13:A33F: 2A        .byte $2A   ; <れ>
- - - - - - 0x026350 13:A340: CA        .byte $CA   ; <ぷ>
- - - - - - 0x026351 13:A341: CB        .byte $CB   ; <ぺ>
- - - - - - 0x026352 13:A342: CB        .byte $CB   ; <ぺ>
- - - - - - 0x026353 13:A343: CB        .byte $CB   ; <ぺ>
- - - - - - 0x026354 13:A344: CA        .byte $CA   ; <ぷ>
- - - - - - 0x026355 13:A345: CB        .byte $CB   ; <ぺ>
- - - - - - 0x026356 13:A346: CB        .byte $CB   ; <ぺ>
- - - - - - 0x026357 13:A347: CB        .byte $CB   ; <ぺ>
- - - - - - 0x026358 13:A348: 00        .byte $00
- - - - - - 0x026359 13:A349: 00        .byte $00
- - - - - - 0x02635A 13:A34A: 00        .byte $00
- - - - - - 0x02635B 13:A34B: 00        .byte $00
- - - - - - 0x02635C 13:A34C: 00        .byte $00
- - - - - - 0x02635D 13:A34D: 00        .byte $00
- - - - - - 0x02635E 13:A34E: 00        .byte $00
- - - - - - 0x02635F 13:A34F: 00        .byte $00
- - - - - - 0x026360 13:A350: CB        .byte $CB   ; <ぺ>
- - - - - - 0x026361 13:A351: CB        .byte $CB   ; <ぺ>
- - - - - - 0x026362 13:A352: CB        .byte $CB   ; <ぺ>
- - - - - - 0x026363 13:A353: CB        .byte $CB   ; <ぺ>
- - - - - - 0x026364 13:A354: CB        .byte $CB   ; <ぺ>
- - - - - - 0x026365 13:A355: CB        .byte $CB   ; <ぺ>
- - - - - - 0x026366 13:A356: CB        .byte $CB   ; <ぺ>
- - - - - - 0x026367 13:A357: CB        .byte $CB   ; <ぺ>
- - - - - - 0x026368 13:A358: 00        .byte $00
- - - - - - 0x026369 13:A359: 00        .byte $00
- - - - - - 0x02636A 13:A35A: 00        .byte $00
- - - - - - 0x02636B 13:A35B: 00        .byte $00
- - - - - - 0x02636C 13:A35C: 00        .byte $00
- - - - - - 0x02636D 13:A35D: 00        .byte $00
- - - - - - 0x02636E 13:A35E: 00        .byte $00
- - - - - - 0x02636F 13:A35F: 00        .byte $00
- - - - - - 0x026370 13:A360: CB        .byte $CB   ; <ぺ>
- - - - - - 0x026371 13:A361: CB        .byte $CB   ; <ぺ>
- - - - - - 0x026372 13:A362: CB        .byte $CB   ; <ぺ>
- - - - - - 0x026373 13:A363: DA        .byte $DA
- - - - - - 0x026374 13:A364: CB        .byte $CB   ; <ぺ>
- - - - - - 0x026375 13:A365: CB        .byte $CB   ; <ぺ>
- - - - - - 0x026376 13:A366: CB        .byte $CB   ; <ぺ>
- - - - - - 0x026377 13:A367: DA        .byte $DA
- - - - - - 0x026378 13:A368: 00        .byte $00
- - - - - - 0x026379 13:A369: 00        .byte $00
- - - - - - 0x02637A 13:A36A: 00        .byte $00
- - - - - - 0x02637B 13:A36B: 00        .byte $00
- - - - - - 0x02637C 13:A36C: 00        .byte $00
- - - - - - 0x02637D 13:A36D: 00        .byte $00
- - - - - - 0x02637E 13:A36E: 00        .byte $00
- - - - - - 0x02637F 13:A36F: 00        .byte $00
- - - - - - 0x026380 13:A370: C9        .byte $C9   ; <ぴ>
- - - - - - 0x026381 13:A371: CF        .byte $CF   ; <プ>
- - - - - - 0x026382 13:A372: CF        .byte $CF   ; <プ>
- - - - - - 0x026383 13:A373: CF        .byte $CF   ; <プ>
- - - - - - 0x026384 13:A374: C9        .byte $C9   ; <ぴ>
- - - - - - 0x026385 13:A375: CF        .byte $CF   ; <プ>
- - - - - - 0x026386 13:A376: CF        .byte $CF   ; <プ>
- - - - - - 0x026387 13:A377: CF        .byte $CF   ; <プ>
- - - - - - 0x026388 13:A378: C9        .byte $C9   ; <ぴ>
- - - - - - 0x026389 13:A379: CF        .byte $CF   ; <プ>
- - - - - - 0x02638A 13:A37A: CF        .byte $CF   ; <プ>
- - - - - - 0x02638B 13:A37B: CF        .byte $CF   ; <プ>
- - - - - - 0x02638C 13:A37C: C0        .byte $C0   ; <ヅ>
- - - - - - 0x02638D 13:A37D: C6        .byte $C6   ; <ベ>
- - - - - - 0x02638E 13:A37E: C6        .byte $C6   ; <ベ>
- - - - - - 0x02638F 13:A37F: C6        .byte $C6   ; <ベ>
- - - - - - 0x026390 13:A380: CF        .byte $CF   ; <プ>
- - - - - - 0x026391 13:A381: CF        .byte $CF   ; <プ>
- - - - - - 0x026392 13:A382: CF        .byte $CF   ; <プ>
- - - - - - 0x026393 13:A383: CF        .byte $CF   ; <プ>
- - - - - - 0x026394 13:A384: CF        .byte $CF   ; <プ>
- - - - - - 0x026395 13:A385: CF        .byte $CF   ; <プ>
- - - - - - 0x026396 13:A386: CF        .byte $CF   ; <プ>
- - - - - - 0x026397 13:A387: CF        .byte $CF   ; <プ>
- - - - - - 0x026398 13:A388: CF        .byte $CF   ; <プ>
- - - - - - 0x026399 13:A389: CF        .byte $CF   ; <プ>
- - - - - - 0x02639A 13:A38A: CF        .byte $CF   ; <プ>
- - - - - - 0x02639B 13:A38B: CF        .byte $CF   ; <プ>
- - - - - - 0x02639C 13:A38C: C6        .byte $C6   ; <ベ>
- - - - - - 0x02639D 13:A38D: C6        .byte $C6   ; <ベ>
- - - - - - 0x02639E 13:A38E: C6        .byte $C6   ; <ベ>
- - - - - - 0x02639F 13:A38F: C6        .byte $C6   ; <ベ>
- - - - - - 0x0263A0 13:A390: CF        .byte $CF   ; <プ>
- - - - - - 0x0263A1 13:A391: CF        .byte $CF   ; <プ>
- - - - - - 0x0263A2 13:A392: CF        .byte $CF   ; <プ>
- - - - - - 0x0263A3 13:A393: D9        .byte $D9
- - - - - - 0x0263A4 13:A394: CF        .byte $CF   ; <プ>
- - - - - - 0x0263A5 13:A395: CF        .byte $CF   ; <プ>
- - - - - - 0x0263A6 13:A396: CF        .byte $CF   ; <プ>
- - - - - - 0x0263A7 13:A397: D9        .byte $D9
- - - - - - 0x0263A8 13:A398: CF        .byte $CF   ; <プ>
- - - - - - 0x0263A9 13:A399: CF        .byte $CF   ; <プ>
- - - - - - 0x0263AA 13:A39A: CF        .byte $CF   ; <プ>
- - - - - - 0x0263AB 13:A39B: D9        .byte $D9
- - - - - - 0x0263AC 13:A39C: C6        .byte $C6   ; <ベ>
- - - - - - 0x0263AD 13:A39D: C6        .byte $C6   ; <ベ>
- - - - - - 0x0263AE 13:A39E: C6        .byte $C6   ; <ベ>
- - - - - - 0x0263AF 13:A39F: D0        .byte $D0   ; <ペ>
- - - - - - 0x0263B0 13:A3A0: D5        .byte $D5
- - - - - - 0x0263B1 13:A3A1: D5        .byte $D5
- - - - - - 0x0263B2 13:A3A2: D5        .byte $D5
- - - - - - 0x0263B3 13:A3A3: D4        .byte $D4
- - - - - - 0x0263B4 13:A3A4: D7        .byte $D7
- - - - - - 0x0263B5 13:A3A5: D7        .byte $D7
- - - - - - 0x0263B6 13:A3A6: D7        .byte $D7
- - - - - - 0x0263B7 13:A3A7: D7        .byte $D7
- - - - - - 0x0263B8 13:A3A8: DD        .byte $DD
- - - - - - 0x0263B9 13:A3A9: DD        .byte $DD
- - - - - - 0x0263BA 13:A3AA: DD        .byte $DD
- - - - - - 0x0263BB 13:A3AB: DD        .byte $DD
- - - - - - 0x0263BC 13:A3AC: D5        .byte $D5
- - - - - - 0x0263BD 13:A3AD: D5        .byte $D5
- - - - - - 0x0263BE 13:A3AE: D5        .byte $D5
- - - - - - 0x0263BF 13:A3AF: D5        .byte $D5
- - - - - - 0x0263C0 13:A3B0: D1        .byte $D1   ; <ポ>
- - - - - - 0x0263C1 13:A3B1: 01        .byte $01   ; <あ>
- - - - - - 0x0263C2 13:A3B2: 01        .byte $01   ; <あ>
- - - - - - 0x0263C3 13:A3B3: 01        .byte $01   ; <あ>
- - - - - - 0x0263C4 13:A3B4: D4        .byte $D4
- - - - - - 0x0263C5 13:A3B5: D1        .byte $D1   ; <ポ>
- - - - - - 0x0263C6 13:A3B6: 01        .byte $01   ; <あ>
- - - - - - 0x0263C7 13:A3B7: 01        .byte $01   ; <あ>
- - - - - - 0x0263C8 13:A3B8: DD        .byte $DD
- - - - - - 0x0263C9 13:A3B9: D4        .byte $D4
- - - - - - 0x0263CA 13:A3BA: D1        .byte $D1   ; <ポ>
- - - - - - 0x0263CB 13:A3BB: 01        .byte $01   ; <あ>
- - - - - - 0x0263CC 13:A3BC: D5        .byte $D5
- - - - - - 0x0263CD 13:A3BD: D5        .byte $D5
- - - - - - 0x0263CE 13:A3BE: D4        .byte $D4
- - - - - - 0x0263CF 13:A3BF: D3        .byte $D3
- - - - - - 0x0263D0 13:A3C0: 01        .byte $01   ; <あ>
- - - - - - 0x0263D1 13:A3C1: 01        .byte $01   ; <あ>
- - - - - - 0x0263D2 13:A3C2: 01        .byte $01   ; <あ>
- - - - - - 0x0263D3 13:A3C3: C1        .byte $C1   ; <デ>
- - - - - - 0x0263D4 13:A3C4: 01        .byte $01   ; <あ>
- - - - - - 0x0263D5 13:A3C5: 01        .byte $01   ; <あ>
- - - - - - 0x0263D6 13:A3C6: C1        .byte $C1   ; <デ>
- - - - - - 0x0263D7 13:A3C7: C4        .byte $C4   ; <ビ>
- - - - - - 0x0263D8 13:A3C8: 01        .byte $01   ; <あ>
- - - - - - 0x0263D9 13:A3C9: C1        .byte $C1   ; <デ>
- - - - - - 0x0263DA 13:A3CA: C4        .byte $C4   ; <ビ>
- - - - - - 0x0263DB 13:A3CB: CD        .byte $CD   ; <パ>
- - - - - - 0x0263DC 13:A3CC: C3        .byte $C3   ; <バ>
- - - - - - 0x0263DD 13:A3CD: C4        .byte $C4   ; <ビ>
- - - - - - 0x0263DE 13:A3CE: C5        .byte $C5   ; <ブ>
- - - - - - 0x0263DF 13:A3CF: C5        .byte $C5   ; <ブ>
- - - - - - 0x0263E0 13:A3D0: C4        .byte $C4   ; <ビ>
- - - - - - 0x0263E1 13:A3D1: C5        .byte $C5   ; <ブ>
- - - - - - 0x0263E2 13:A3D2: C5        .byte $C5   ; <ブ>
- - - - - - 0x0263E3 13:A3D3: C5        .byte $C5   ; <ブ>
- - - - - - 0x0263E4 13:A3D4: C7        .byte $C7   ; <ボ>
- - - - - - 0x0263E5 13:A3D5: C7        .byte $C7   ; <ボ>
- - - - - - 0x0263E6 13:A3D6: C7        .byte $C7   ; <ボ>
- - - - - - 0x0263E7 13:A3D7: C7        .byte $C7   ; <ボ>
- - - - - - 0x0263E8 13:A3D8: CD        .byte $CD   ; <パ>
- - - - - - 0x0263E9 13:A3D9: CD        .byte $CD   ; <パ>
- - - - - - 0x0263EA 13:A3DA: CD        .byte $CD   ; <パ>
- - - - - - 0x0263EB 13:A3DB: CD        .byte $CD   ; <パ>
- - - - - - 0x0263EC 13:A3DC: C5        .byte $C5   ; <ブ>
- - - - - - 0x0263ED 13:A3DD: C5        .byte $C5   ; <ブ>
- - - - - - 0x0263EE 13:A3DE: C5        .byte $C5   ; <ブ>
- - - - - - 0x0263EF 13:A3DF: C5        .byte $C5   ; <ブ>
- D - I - - 0x0263F0 13:A3E0: 01        .byte $01   ; <あ>
- D - I - - 0x0263F1 13:A3E1: 01        .byte $01   ; <あ>
- D - I - - 0x0263F2 13:A3E2: 01        .byte $01   ; <あ>
- D - I - - 0x0263F3 13:A3E3: 01        .byte $01   ; <あ>
- D - I - - 0x0263F4 13:A3E4: 01        .byte $01   ; <あ>
- D - I - - 0x0263F5 13:A3E5: 01        .byte $01   ; <あ>
- D - I - - 0x0263F6 13:A3E6: 01        .byte $01   ; <あ>
- D - I - - 0x0263F7 13:A3E7: 01        .byte $01   ; <あ>
- D - I - - 0x0263F8 13:A3E8: 00        .byte $00
- D - I - - 0x0263F9 13:A3E9: 00        .byte $00
- D - I - - 0x0263FA 13:A3EA: 00        .byte $00
- D - I - - 0x0263FB 13:A3EB: 00        .byte $00
- D - I - - 0x0263FC 13:A3EC: 00        .byte $00
- D - I - - 0x0263FD 13:A3ED: 00        .byte $00
- D - I - - 0x0263FE 13:A3EE: 00        .byte $00
- D - I - - 0x0263FF 13:A3EF: 00        .byte $00
- D - I - - 0x026400 13:A3F0: 01        .byte $01   ; <あ>
- D - I - - 0x026401 13:A3F1: 01        .byte $01   ; <あ>
- D - I - - 0x026402 13:A3F2: 01        .byte $01   ; <あ>
- D - I - - 0x026403 13:A3F3: C5        .byte $C5   ; <ブ>
- D - I - - 0x026404 13:A3F4: 01        .byte $01   ; <あ>
- D - I - - 0x026405 13:A3F5: C5        .byte $C5   ; <ブ>
- D - I - - 0x026406 13:A3F6: D0        .byte $D0   ; <ペ>
- D - I - - 0x026407 13:A3F7: D1        .byte $D1   ; <ポ>
- D - I - - 0x026408 13:A3F8: 00        .byte $00
- D - I - - 0x026409 13:A3F9: 00        .byte $00
- D - I - - 0x02640A 13:A3FA: 00        .byte $00
- D - I - - 0x02640B 13:A3FB: 00        .byte $00
- D - I - - 0x02640C 13:A3FC: 00        .byte $00
- D - I - - 0x02640D 13:A3FD: 00        .byte $00
- D - I - - 0x02640E 13:A3FE: 00        .byte $00
- D - I - - 0x02640F 13:A3FF: 00        .byte $00
- D - I - - 0x026410 13:A400: 01        .byte $01   ; <あ>
- D - I - - 0x026411 13:A401: 01        .byte $01   ; <あ>
- D - I - - 0x026412 13:A402: 01        .byte $01   ; <あ>
- D - I - - 0x026413 13:A403: 01        .byte $01   ; <あ>
- D - I - - 0x026414 13:A404: 01        .byte $01   ; <あ>
- D - I - - 0x026415 13:A405: 01        .byte $01   ; <あ>
- D - I - - 0x026416 13:A406: 01        .byte $01   ; <あ>
- D - I - - 0x026417 13:A407: 01        .byte $01   ; <あ>
- D - I - - 0x026418 13:A408: 01        .byte $01   ; <あ>
- D - I - - 0x026419 13:A409: 01        .byte $01   ; <あ>
- D - I - - 0x02641A 13:A40A: 01        .byte $01   ; <あ>
- D - I - - 0x02641B 13:A40B: C5        .byte $C5   ; <ブ>
- D - I - - 0x02641C 13:A40C: 01        .byte $01   ; <あ>
- D - I - - 0x02641D 13:A40D: C5        .byte $C5   ; <ブ>
- D - I - - 0x02641E 13:A40E: D0        .byte $D0   ; <ペ>
- D - I - - 0x02641F 13:A40F: D1        .byte $D1   ; <ポ>
- D - I - - 0x026420 13:A410: 01        .byte $01   ; <あ>
- D - I - - 0x026421 13:A411: 01        .byte $01   ; <あ>
- D - I - - 0x026422 13:A412: 01        .byte $01   ; <あ>
- D - I - - 0x026423 13:A413: C5        .byte $C5   ; <ブ>
- D - I - - 0x026424 13:A414: 01        .byte $01   ; <あ>
- D - I - - 0x026425 13:A415: C5        .byte $C5   ; <ブ>
- D - I - - 0x026426 13:A416: D0        .byte $D0   ; <ペ>
- D - I - - 0x026427 13:A417: D1        .byte $D1   ; <ポ>
- D - I - - 0x026428 13:A418: D0        .byte $D0   ; <ペ>
- D - I - - 0x026429 13:A419: D1        .byte $D1   ; <ポ>
- D - I - - 0x02642A 13:A41A: D4        .byte $D4
- D - I - - 0x02642B 13:A41B: CD        .byte $CD   ; <パ>
- D - I - - 0x02642C 13:A41C: D4        .byte $D4
- D - I - - 0x02642D 13:A41D: CD        .byte $CD   ; <パ>
- D - I - - 0x02642E 13:A41E: CD        .byte $CD   ; <パ>
- D - I - - 0x02642F 13:A41F: CD        .byte $CD   ; <パ>
- D - I - - 0x026430 13:A420: D0        .byte $D0   ; <ペ>
- D - I - - 0x026431 13:A421: D1        .byte $D1   ; <ポ>
- D - I - - 0x026432 13:A422: D4        .byte $D4
- D - I - - 0x026433 13:A423: CD        .byte $CD   ; <パ>
- D - I - - 0x026434 13:A424: D4        .byte $D4
- D - I - - 0x026435 13:A425: CD        .byte $CD   ; <パ>
- D - I - - 0x026436 13:A426: CD        .byte $CD   ; <パ>
- D - I - - 0x026437 13:A427: CD        .byte $CD   ; <パ>
- D - I - - 0x026438 13:A428: CD        .byte $CD   ; <パ>
- D - I - - 0x026439 13:A429: CD        .byte $CD   ; <パ>
- D - I - - 0x02643A 13:A42A: CD        .byte $CD   ; <パ>
- D - I - - 0x02643B 13:A42B: CD        .byte $CD   ; <パ>
- D - I - - 0x02643C 13:A42C: CD        .byte $CD   ; <パ>
- D - I - - 0x02643D 13:A42D: CD        .byte $CD   ; <パ>
- D - I - - 0x02643E 13:A42E: CD        .byte $CD   ; <パ>
- D - I - - 0x02643F 13:A42F: CD        .byte $CD   ; <パ>
- D - I - - 0x026440 13:A430: CD        .byte $CD   ; <パ>
- D - I - - 0x026441 13:A431: CD        .byte $CD   ; <パ>
- D - I - - 0x026442 13:A432: CD        .byte $CD   ; <パ>
- D - I - - 0x026443 13:A433: CD        .byte $CD   ; <パ>
- D - I - - 0x026444 13:A434: CD        .byte $CD   ; <パ>
- D - I - - 0x026445 13:A435: CD        .byte $CD   ; <パ>
- D - I - - 0x026446 13:A436: CD        .byte $CD   ; <パ>
- D - I - - 0x026447 13:A437: CD        .byte $CD   ; <パ>
- D - I - - 0x026448 13:A438: CD        .byte $CD   ; <パ>
- D - I - - 0x026449 13:A439: CD        .byte $CD   ; <パ>
- D - I - - 0x02644A 13:A43A: CD        .byte $CD   ; <パ>
- D - I - - 0x02644B 13:A43B: CD        .byte $CD   ; <パ>
- D - I - - 0x02644C 13:A43C: CD        .byte $CD   ; <パ>
- D - I - - 0x02644D 13:A43D: CD        .byte $CD   ; <パ>
- D - I - - 0x02644E 13:A43E: CD        .byte $CD   ; <パ>
- D - I - - 0x02644F 13:A43F: CD        .byte $CD   ; <パ>
- D - I - - 0x026450 13:A440: CD        .byte $CD   ; <パ>
- D - I - - 0x026451 13:A441: CD        .byte $CD   ; <パ>
- D - I - - 0x026452 13:A442: CD        .byte $CD   ; <パ>
- D - I - - 0x026453 13:A443: CD        .byte $CD   ; <パ>
- D - I - - 0x026454 13:A444: CD        .byte $CD   ; <パ>
- D - I - - 0x026455 13:A445: CD        .byte $CD   ; <パ>
- D - I - - 0x026456 13:A446: CD        .byte $CD   ; <パ>
- D - I - - 0x026457 13:A447: CD        .byte $CD   ; <パ>
- D - I - - 0x026458 13:A448: 00        .byte $00
- D - I - - 0x026459 13:A449: 00        .byte $00
- D - I - - 0x02645A 13:A44A: 00        .byte $00
- D - I - - 0x02645B 13:A44B: 00        .byte $00
- D - I - - 0x02645C 13:A44C: 00        .byte $00
- D - I - - 0x02645D 13:A44D: 00        .byte $00
- D - I - - 0x02645E 13:A44E: 00        .byte $00
- D - I - - 0x02645F 13:A44F: 00        .byte $00
- D - I - - 0x026460 13:A450: D0        .byte $D0   ; <ペ>
- D - I - - 0x026461 13:A451: D1        .byte $D1   ; <ポ>
- D - I - - 0x026462 13:A452: D4        .byte $D4
- D - I - - 0x026463 13:A453: CD        .byte $CD   ; <パ>
- D - I - - 0x026464 13:A454: D4        .byte $D4
- D - I - - 0x026465 13:A455: CD        .byte $CD   ; <パ>
- D - I - - 0x026466 13:A456: CD        .byte $CD   ; <パ>
- D - I - - 0x026467 13:A457: CD        .byte $CD   ; <パ>
- D - I - - 0x026468 13:A458: 00        .byte $00
- D - I - - 0x026469 13:A459: 00        .byte $00
- D - I - - 0x02646A 13:A45A: 00        .byte $00
- D - I - - 0x02646B 13:A45B: 00        .byte $00
- D - I - - 0x02646C 13:A45C: 00        .byte $00
- D - I - - 0x02646D 13:A45D: 00        .byte $00
- D - I - - 0x02646E 13:A45E: 00        .byte $00
- D - I - - 0x02646F 13:A45F: 00        .byte $00
- D - I - - 0x026470 13:A460: D8        .byte $D8
- D - I - - 0x026471 13:A461: C7        .byte $C7   ; <ボ>
- D - I - - 0x026472 13:A462: D2        .byte $D2
- D - I - - 0x026473 13:A463: D3        .byte $D3
- D - I - - 0x026474 13:A464: D8        .byte $D8
- D - I - - 0x026475 13:A465: D8        .byte $D8
- D - I - - 0x026476 13:A466: D8        .byte $D8
- D - I - - 0x026477 13:A467: C7        .byte $C7   ; <ボ>
- D - I - - 0x026478 13:A468: 00        .byte $00
- D - I - - 0x026479 13:A469: 00        .byte $00
- D - I - - 0x02647A 13:A46A: 00        .byte $00
- D - I - - 0x02647B 13:A46B: 00        .byte $00
- D - I - - 0x02647C 13:A46C: 00        .byte $00
- D - I - - 0x02647D 13:A46D: 00        .byte $00
- D - I - - 0x02647E 13:A46E: 00        .byte $00
- D - I - - 0x02647F 13:A46F: 00        .byte $00
- D - I - - 0x026480 13:A470: D6        .byte $D6
- D - I - - 0x026481 13:A471: 01        .byte $01   ; <あ>
- D - I - - 0x026482 13:A472: 01        .byte $01   ; <あ>
- D - I - - 0x026483 13:A473: 01        .byte $01   ; <あ>
- D - I - - 0x026484 13:A474: D2        .byte $D2
- D - I - - 0x026485 13:A475: D3        .byte $D3
- D - I - - 0x026486 13:A476: D6        .byte $D6
- D - I - - 0x026487 13:A477: 01        .byte $01   ; <あ>
- D - I - - 0x026488 13:A478: 00        .byte $00
- D - I - - 0x026489 13:A479: 00        .byte $00
- D - I - - 0x02648A 13:A47A: 00        .byte $00
- D - I - - 0x02648B 13:A47B: 00        .byte $00
- D - I - - 0x02648C 13:A47C: 00        .byte $00
- D - I - - 0x02648D 13:A47D: 00        .byte $00
- D - I - - 0x02648E 13:A47E: 00        .byte $00
- D - I - - 0x02648F 13:A47F: 00        .byte $00
- D - I - - 0x026490 13:A480: D8        .byte $D8
- D - I - - 0x026491 13:A481: C7        .byte $C7   ; <ボ>
- D - I - - 0x026492 13:A482: D2        .byte $D2
- D - I - - 0x026493 13:A483: D3        .byte $D3
- D - I - - 0x026494 13:A484: D8        .byte $D8
- D - I - - 0x026495 13:A485: D8        .byte $D8
- D - I - - 0x026496 13:A486: D8        .byte $D8
- D - I - - 0x026497 13:A487: C7        .byte $C7   ; <ボ>
- D - I - - 0x026498 13:A488: D8        .byte $D8
- D - I - - 0x026499 13:A489: D8        .byte $D8
- D - I - - 0x02649A 13:A48A: D8        .byte $D8
- D - I - - 0x02649B 13:A48B: D8        .byte $D8
- D - I - - 0x02649C 13:A48C: D8        .byte $D8
- D - I - - 0x02649D 13:A48D: D8        .byte $D8
- D - I - - 0x02649E 13:A48E: D8        .byte $D8
- D - I - - 0x02649F 13:A48F: D8        .byte $D8
- D - I - - 0x0264A0 13:A490: D6        .byte $D6
- D - I - - 0x0264A1 13:A491: 01        .byte $01   ; <あ>
- D - I - - 0x0264A2 13:A492: 01        .byte $01   ; <あ>
- D - I - - 0x0264A3 13:A493: 01        .byte $01   ; <あ>
- D - I - - 0x0264A4 13:A494: D2        .byte $D2
- D - I - - 0x0264A5 13:A495: D3        .byte $D3
- D - I - - 0x0264A6 13:A496: D6        .byte $D6
- D - I - - 0x0264A7 13:A497: 01        .byte $01   ; <あ>
- D - I - - 0x0264A8 13:A498: D8        .byte $D8
- D - I - - 0x0264A9 13:A499: C7        .byte $C7   ; <ボ>
- D - I - - 0x0264AA 13:A49A: D2        .byte $D2
- D - I - - 0x0264AB 13:A49B: D3        .byte $D3
- D - I - - 0x0264AC 13:A49C: D8        .byte $D8
- D - I - - 0x0264AD 13:A49D: D8        .byte $D8
- D - I - - 0x0264AE 13:A49E: D8        .byte $D8
- D - I - - 0x0264AF 13:A49F: C7        .byte $C7   ; <ボ>
- D - I - - 0x0264B0 13:A4A0: 01        .byte $01   ; <あ>
- D - I - - 0x0264B1 13:A4A1: 01        .byte $01   ; <あ>
- D - I - - 0x0264B2 13:A4A2: 01        .byte $01   ; <あ>
- D - I - - 0x0264B3 13:A4A3: 01        .byte $01   ; <あ>
- D - I - - 0x0264B4 13:A4A4: 01        .byte $01   ; <あ>
- D - I - - 0x0264B5 13:A4A5: 01        .byte $01   ; <あ>
- D - I - - 0x0264B6 13:A4A6: 01        .byte $01   ; <あ>
- D - I - - 0x0264B7 13:A4A7: 01        .byte $01   ; <あ>
- D - I - - 0x0264B8 13:A4A8: D6        .byte $D6
- D - I - - 0x0264B9 13:A4A9: 01        .byte $01   ; <あ>
- D - I - - 0x0264BA 13:A4AA: 01        .byte $01   ; <あ>
- D - I - - 0x0264BB 13:A4AB: 01        .byte $01   ; <あ>
- D - I - - 0x0264BC 13:A4AC: D2        .byte $D2
- D - I - - 0x0264BD 13:A4AD: D3        .byte $D3
- D - I - - 0x0264BE 13:A4AE: D6        .byte $D6
- D - I - - 0x0264BF 13:A4AF: 01        .byte $01   ; <あ>
- D - I - - 0x0264C0 13:A4B0: D8        .byte $D8
- D - I - - 0x0264C1 13:A4B1: D8        .byte $D8
- D - I - - 0x0264C2 13:A4B2: D8        .byte $D8
- D - I - - 0x0264C3 13:A4B3: D8        .byte $D8
- D - I - - 0x0264C4 13:A4B4: D8        .byte $D8
- D - I - - 0x0264C5 13:A4B5: D8        .byte $D8
- D - I - - 0x0264C6 13:A4B6: D8        .byte $D8
- D - I - - 0x0264C7 13:A4B7: D8        .byte $D8
- D - I - - 0x0264C8 13:A4B8: 00        .byte $00
- D - I - - 0x0264C9 13:A4B9: 00        .byte $00
- D - I - - 0x0264CA 13:A4BA: 00        .byte $00
- D - I - - 0x0264CB 13:A4BB: 00        .byte $00
- D - I - - 0x0264CC 13:A4BC: 00        .byte $00
- D - I - - 0x0264CD 13:A4BD: 00        .byte $00
- D - I - - 0x0264CE 13:A4BE: 00        .byte $00
- D - I - - 0x0264CF 13:A4BF: 00        .byte $00
- D - I - - 0x0264D0 13:A4C0: D8        .byte $D8
- D - I - - 0x0264D1 13:A4C1: D8        .byte $D8
- D - I - - 0x0264D2 13:A4C2: D8        .byte $D8
- D - I - - 0x0264D3 13:A4C3: D8        .byte $D8
- D - I - - 0x0264D4 13:A4C4: D8        .byte $D8
- D - I - - 0x0264D5 13:A4C5: D8        .byte $D8
- D - I - - 0x0264D6 13:A4C6: D8        .byte $D8
- D - I - - 0x0264D7 13:A4C7: D8        .byte $D8
- D - I - - 0x0264D8 13:A4C8: D8        .byte $D8
- D - I - - 0x0264D9 13:A4C9: D8        .byte $D8
- D - I - - 0x0264DA 13:A4CA: D8        .byte $D8
- D - I - - 0x0264DB 13:A4CB: D8        .byte $D8
- D - I - - 0x0264DC 13:A4CC: D8        .byte $D8
- D - I - - 0x0264DD 13:A4CD: D8        .byte $D8
- D - I - - 0x0264DE 13:A4CE: D8        .byte $D8
- D - I - - 0x0264DF 13:A4CF: D8        .byte $D8
- D - I - - 0x0264E0 13:A4D0: 7B        .byte $7B   ; <。>
- D - I - - 0x0264E1 13:A4D1: 79        .byte $79   ; <!>
- D - I - - 0x0264E2 13:A4D2: 01        .byte $01   ; <あ>
- D - I - - 0x0264E3 13:A4D3: 01        .byte $01   ; <あ>
- D - I - - 0x0264E4 13:A4D4: 01        .byte $01   ; <あ>
- D - I - - 0x0264E5 13:A4D5: 7B        .byte $7B   ; <。>
- D - I - - 0x0264E6 13:A4D6: 79        .byte $79   ; <!>
- D - I - - 0x0264E7 13:A4D7: 01        .byte $01   ; <あ>
- D - I - - 0x0264E8 13:A4D8: 01        .byte $01   ; <あ>
- D - I - - 0x0264E9 13:A4D9: 01        .byte $01   ; <あ>
- D - I - - 0x0264EA 13:A4DA: 7B        .byte $7B   ; <。>
- D - I - - 0x0264EB 13:A4DB: 79        .byte $79   ; <!>
- D - I - - 0x0264EC 13:A4DC: 01        .byte $01   ; <あ>
- D - I - - 0x0264ED 13:A4DD: 01        .byte $01   ; <あ>
- D - I - - 0x0264EE 13:A4DE: 01        .byte $01   ; <あ>
- D - I - - 0x0264EF 13:A4DF: 7B        .byte $7B   ; <。>
- D - I - - 0x0264F0 13:A4E0: 01        .byte $01   ; <あ>
- D - I - - 0x0264F1 13:A4E1: 01        .byte $01   ; <あ>
- D - I - - 0x0264F2 13:A4E2: 01        .byte $01   ; <あ>
- D - I - - 0x0264F3 13:A4E3: 01        .byte $01   ; <あ>
- D - I - - 0x0264F4 13:A4E4: 01        .byte $01   ; <あ>
- D - I - - 0x0264F5 13:A4E5: 01        .byte $01   ; <あ>
- D - I - - 0x0264F6 13:A4E6: 01        .byte $01   ; <あ>
- D - I - - 0x0264F7 13:A4E7: 01        .byte $01   ; <あ>
- D - I - - 0x0264F8 13:A4E8: 01        .byte $01   ; <あ>
- D - I - - 0x0264F9 13:A4E9: 01        .byte $01   ; <あ>
- D - I - - 0x0264FA 13:A4EA: 01        .byte $01   ; <あ>
- D - I - - 0x0264FB 13:A4EB: 01        .byte $01   ; <あ>
- D - I - - 0x0264FC 13:A4EC: 79        .byte $79   ; <!>
- D - I - - 0x0264FD 13:A4ED: 01        .byte $01   ; <あ>
- D - I - - 0x0264FE 13:A4EE: 01        .byte $01   ; <あ>
- D - I - - 0x0264FF 13:A4EF: 01        .byte $01   ; <あ>
- D - I - - 0x026500 13:A4F0: 7B        .byte $7B   ; <。>
- D - I - - 0x026501 13:A4F1: 79        .byte $79   ; <!>
- D - I - - 0x026502 13:A4F2: 01        .byte $01   ; <あ>
- D - I - - 0x026503 13:A4F3: 01        .byte $01   ; <あ>
- D - I - - 0x026504 13:A4F4: 01        .byte $01   ; <あ>
- D - I - - 0x026505 13:A4F5: 7B        .byte $7B   ; <。>
- D - I - - 0x026506 13:A4F6: 79        .byte $79   ; <!>
- D - I - - 0x026507 13:A4F7: 01        .byte $01   ; <あ>
- D - I - - 0x026508 13:A4F8: 00        .byte $00
- D - I - - 0x026509 13:A4F9: 00        .byte $00
- D - I - - 0x02650A 13:A4FA: 00        .byte $00
- D - I - - 0x02650B 13:A4FB: 00        .byte $00
- D - I - - 0x02650C 13:A4FC: 00        .byte $00
- D - I - - 0x02650D 13:A4FD: 00        .byte $00
- D - I - - 0x02650E 13:A4FE: 00        .byte $00
- D - I - - 0x02650F 13:A4FF: 00        .byte $00
- D - I - - 0x026510 13:A500: 6F        .byte $6F   ; <ッ>
- D - I - - 0x026511 13:A501: 74        .byte $74   ; <ィ>
- D - I - - 0x026512 13:A502: 01        .byte $01   ; <あ>
- D - I - - 0x026513 13:A503: 01        .byte $01   ; <あ>
- D - I - - 0x026514 13:A504: 76        .byte $76   ; <ォ>
- D - I - - 0x026515 13:A505: 77        .byte $77   ; <:>
- D - I - - 0x026516 13:A506: 7C        .byte $7C   ; <~>
- D - I - - 0x026517 13:A507: 01        .byte $01   ; <あ>
- D - I - - 0x026518 13:A508: 01        .byte $01   ; <あ>
- D - I - - 0x026519 13:A509: 15        .byte $15   ; <な>
- D - I - - 0x02651A 13:A50A: 14        .byte $14   ; <と>
- D - I - - 0x02651B 13:A50B: 01        .byte $01   ; <あ>
- D - I - - 0x02651C 13:A50C: 01        .byte $01   ; <あ>
- D - I - - 0x02651D 13:A50D: 01        .byte $01   ; <あ>
- D - I - - 0x02651E 13:A50E: 01        .byte $01   ; <あ>
- D - I - - 0x02651F 13:A50F: 01        .byte $01   ; <あ>
- D - I - - 0x026520 13:A510: 01        .byte $01   ; <あ>
- D - I - - 0x026521 13:A511: 73        .byte $73   ; <ヮ>
- D - I - - 0x026522 13:A512: 71        .byte $71   ; <ュ>
- D - I - - 0x026523 13:A513: 7B        .byte $7B   ; <。>
- D - I - - 0x026524 13:A514: 01        .byte $01   ; <あ>
- D - I - - 0x026525 13:A515: 01        .byte $01   ; <あ>
- D - I - - 0x026526 13:A516: 73        .byte $73   ; <ヮ>
- D - I - - 0x026527 13:A517: 71        .byte $71   ; <ュ>
- D - I - - 0x026528 13:A518: 00        .byte $00
- D - I - - 0x026529 13:A519: 00        .byte $00
- D - I - - 0x02652A 13:A51A: 00        .byte $00
- D - I - - 0x02652B 13:A51B: 00        .byte $00
- D - I - - 0x02652C 13:A51C: 00        .byte $00
- D - I - - 0x02652D 13:A51D: 00        .byte $00
- D - I - - 0x02652E 13:A51E: 00        .byte $00
- D - I - - 0x02652F 13:A51F: 00        .byte $00
- D - I - - 0x026530 13:A520: 79        .byte $79   ; <!>
- D - I - - 0x026531 13:A521: 01        .byte $01   ; <あ>
- D - I - - 0x026532 13:A522: 7A        .byte $7A   ; <、>
- D - I - - 0x026533 13:A523: 78        .byte $78   ; <?>
- D - I - - 0x026534 13:A524: 7B        .byte $7B   ; <。>
- D - I - - 0x026535 13:A525: 79        .byte $79   ; <!>
- D - I - - 0x026536 13:A526: 01        .byte $01   ; <あ>
- D - I - - 0x026537 13:A527: 7A        .byte $7A   ; <、>
- D - I - - 0x026538 13:A528: 00        .byte $00
- D - I - - 0x026539 13:A529: 00        .byte $00
- D - I - - 0x02653A 13:A52A: 00        .byte $00
- D - I - - 0x02653B 13:A52B: 00        .byte $00
- D - I - - 0x02653C 13:A52C: 00        .byte $00
- D - I - - 0x02653D 13:A52D: 00        .byte $00
- D - I - - 0x02653E 13:A52E: 00        .byte $00
- D - I - - 0x02653F 13:A52F: 00        .byte $00
- D - I - - 0x026540 13:A530: 01        .byte $01   ; <あ>
- D - I - - 0x026541 13:A531: 73        .byte $73   ; <ヮ>
- D - I - - 0x026542 13:A532: 71        .byte $71   ; <ュ>
- D - I - - 0x026543 13:A533: 7B        .byte $7B   ; <。>
- D - I - - 0x026544 13:A534: 01        .byte $01   ; <あ>
- D - I - - 0x026545 13:A535: 01        .byte $01   ; <あ>
- D - I - - 0x026546 13:A536: 73        .byte $73   ; <ヮ>
- D - I - - 0x026547 13:A537: 71        .byte $71   ; <ュ>
- D - I - - 0x026548 13:A538: 01        .byte $01   ; <あ>
- D - I - - 0x026549 13:A539: 01        .byte $01   ; <あ>
- D - I - - 0x02654A 13:A53A: 01        .byte $01   ; <あ>
- D - I - - 0x02654B 13:A53B: 73        .byte $73   ; <ヮ>
- D - I - - 0x02654C 13:A53C: 01        .byte $01   ; <あ>
- D - I - - 0x02654D 13:A53D: 01        .byte $01   ; <あ>
- D - I - - 0x02654E 13:A53E: 01        .byte $01   ; <あ>
- D - I - - 0x02654F 13:A53F: 01        .byte $01   ; <あ>
- D - I - - 0x026550 13:A540: 79        .byte $79   ; <!>
- D - I - - 0x026551 13:A541: 01        .byte $01   ; <あ>
- D - I - - 0x026552 13:A542: 7A        .byte $7A   ; <、>
- D - I - - 0x026553 13:A543: 78        .byte $78   ; <?>
- D - I - - 0x026554 13:A544: 7B        .byte $7B   ; <。>
- D - I - - 0x026555 13:A545: 79        .byte $79   ; <!>
- D - I - - 0x026556 13:A546: 01        .byte $01   ; <あ>
- D - I - - 0x026557 13:A547: 7A        .byte $7A   ; <、>
- D - I - - 0x026558 13:A548: 71        .byte $71   ; <ュ>
- D - I - - 0x026559 13:A549: 7B        .byte $7B   ; <。>
- D - I - - 0x02655A 13:A54A: 79        .byte $79   ; <!>
- D - I - - 0x02655B 13:A54B: 01        .byte $01   ; <あ>
- D - I - - 0x02655C 13:A54C: 73        .byte $73   ; <ヮ>
- D - I - - 0x02655D 13:A54D: 71        .byte $71   ; <ュ>
- D - I - - 0x02655E 13:A54E: 7B        .byte $7B   ; <。>
- D - I - - 0x02655F 13:A54F: 79        .byte $79   ; <!>
- D - I - - 0x026560 13:A550: 72        .byte $72   ; <ョ>
- D - I - - 0x026561 13:A551: 70        .byte $70   ; <ャ>
- D - I - - 0x026562 13:A552: 70        .byte $70   ; <ャ>
- D - I - - 0x026563 13:A553: 70        .byte $70   ; <ャ>
- D - I - - 0x026564 13:A554: 78        .byte $78   ; <?>
- D - I - - 0x026565 13:A555: 72        .byte $72   ; <ョ>
- D - I - - 0x026566 13:A556: 70        .byte $70   ; <ャ>
- D - I - - 0x026567 13:A557: 70        .byte $70   ; <ャ>
- D - I - - 0x026568 13:A558: 7A        .byte $7A   ; <、>
- D - I - - 0x026569 13:A559: 78        .byte $78   ; <?>
- D - I - - 0x02656A 13:A55A: 72        .byte $72   ; <ョ>
- D - I - - 0x02656B 13:A55B: 70        .byte $70   ; <ャ>
- D - I - - 0x02656C 13:A55C: 01        .byte $01   ; <あ>
- D - I - - 0x02656D 13:A55D: 7A        .byte $7A   ; <、>
- D - I - - 0x02656E 13:A55E: 78        .byte $78   ; <?>
- D - I - - 0x02656F 13:A55F: 72        .byte $72   ; <ョ>
- D - I - - 0x026570 13:A560: 70        .byte $70   ; <ャ>
- D - I - - 0x026571 13:A561: 70        .byte $70   ; <ャ>
- D - I - - 0x026572 13:A562: 70        .byte $70   ; <ャ>
- D - I - - 0x026573 13:A563: 70        .byte $70   ; <ャ>
- D - I - - 0x026574 13:A564: 70        .byte $70   ; <ャ>
- D - I - - 0x026575 13:A565: 70        .byte $70   ; <ャ>
- D - I - - 0x026576 13:A566: 70        .byte $70   ; <ャ>
- D - I - - 0x026577 13:A567: 70        .byte $70   ; <ャ>
- D - I - - 0x026578 13:A568: 70        .byte $70   ; <ャ>
- D - I - - 0x026579 13:A569: 70        .byte $70   ; <ャ>
- D - I - - 0x02657A 13:A56A: 70        .byte $70   ; <ャ>
- D - I - - 0x02657B 13:A56B: 70        .byte $70   ; <ャ>
- D - I - - 0x02657C 13:A56C: 70        .byte $70   ; <ャ>
- D - I - - 0x02657D 13:A56D: 70        .byte $70   ; <ャ>
- D - I - - 0x02657E 13:A56E: 70        .byte $70   ; <ャ>
- D - I - - 0x02657F 13:A56F: 70        .byte $70   ; <ャ>
- D - I - - 0x026580 13:A570: 01        .byte $01   ; <あ>
- D - I - - 0x026581 13:A571: 01        .byte $01   ; <あ>
- D - I - - 0x026582 13:A572: 64        .byte $64   ; <ヤ>
- D - I - - 0x026583 13:A573: 65        .byte $65   ; <ユ>
- D - I - - 0x026584 13:A574: 01        .byte $01   ; <あ>
- D - I - - 0x026585 13:A575: 66        .byte $66   ; <ヨ>
- D - I - - 0x026586 13:A576: 67        .byte $67   ; <ラ>
- D - I - - 0x026587 13:A577: 6C        .byte $6C   ; <ワ>
- D - I - - 0x026588 13:A578: 01        .byte $01   ; <あ>
- D - I - - 0x026589 13:A579: 6D        .byte $6D   ; <ヲ>
- D - I - - 0x02658A 13:A57A: 6E        .byte $6E   ; <ン>
- D - I - - 0x02658B 13:A57B: 01        .byte $01   ; <あ>
- D - I - - 0x02658C 13:A57C: 01        .byte $01   ; <あ>
- D - I - - 0x02658D 13:A57D: 01        .byte $01   ; <あ>
- D - I - - 0x02658E 13:A57E: 01        .byte $01   ; <あ>
- D - I - - 0x02658F 13:A57F: 01        .byte $01   ; <あ>
- D - I - - 0x026590 13:A580: 01        .byte $01   ; <あ>
- D - I - - 0x026591 13:A581: 01        .byte $01   ; <あ>
- D - I - - 0x026592 13:A582: 68        .byte $68   ; <リ>
- D - I - - 0x026593 13:A583: 6A        .byte $6A   ; <レ>
- D - I - - 0x026594 13:A584: 01        .byte $01   ; <あ>
- D - I - - 0x026595 13:A585: 68        .byte $68   ; <リ>
- D - I - - 0x026596 13:A586: 6A        .byte $6A   ; <レ>
- D - I - - 0x026597 13:A587: 01        .byte $01   ; <あ>
- D - I - - 0x026598 13:A588: 00        .byte $00
- D - I - - 0x026599 13:A589: 00        .byte $00
- D - I - - 0x02659A 13:A58A: 00        .byte $00
- D - I - - 0x02659B 13:A58B: 00        .byte $00
- D - I - - 0x02659C 13:A58C: 00        .byte $00
- D - I - - 0x02659D 13:A58D: 00        .byte $00
- D - I - - 0x02659E 13:A58E: 00        .byte $00
- D - I - - 0x02659F 13:A58F: 00        .byte $00
- D - I - - 0x0265A0 13:A590: 01        .byte $01   ; <あ>
- D - I - - 0x0265A1 13:A591: 01        .byte $01   ; <あ>
- D - I - - 0x0265A2 13:A592: 01        .byte $01   ; <あ>
- D - I - - 0x0265A3 13:A593: 01        .byte $01   ; <あ>
- D - I - - 0x0265A4 13:A594: 01        .byte $01   ; <あ>
- D - I - - 0x0265A5 13:A595: 01        .byte $01   ; <あ>
- D - I - - 0x0265A6 13:A596: 01        .byte $01   ; <あ>
- D - I - - 0x0265A7 13:A597: 01        .byte $01   ; <あ>
- D - I - - 0x0265A8 13:A598: 01        .byte $01   ; <あ>
- D - I - - 0x0265A9 13:A599: 01        .byte $01   ; <あ>
- D - I - - 0x0265AA 13:A59A: 01        .byte $01   ; <あ>
- D - I - - 0x0265AB 13:A59B: 01        .byte $01   ; <あ>
- D - I - - 0x0265AC 13:A59C: 01        .byte $01   ; <あ>
- D - I - - 0x0265AD 13:A59D: 01        .byte $01   ; <あ>
- D - I - - 0x0265AE 13:A59E: 01        .byte $01   ; <あ>
- D - I - - 0x0265AF 13:A59F: 68        .byte $68   ; <リ>
- D - I - - 0x0265B0 13:A5A0: 01        .byte $01   ; <あ>
- D - I - - 0x0265B1 13:A5A1: 01        .byte $01   ; <あ>
- D - I - - 0x0265B2 13:A5A2: 68        .byte $68   ; <リ>
- D - I - - 0x0265B3 13:A5A3: 6A        .byte $6A   ; <レ>
- D - I - - 0x0265B4 13:A5A4: 01        .byte $01   ; <あ>
- D - I - - 0x0265B5 13:A5A5: 68        .byte $68   ; <リ>
- D - I - - 0x0265B6 13:A5A6: 6A        .byte $6A   ; <レ>
- D - I - - 0x0265B7 13:A5A7: 01        .byte $01   ; <あ>
- D - I - - 0x0265B8 13:A5A8: 68        .byte $68   ; <リ>
- D - I - - 0x0265B9 13:A5A9: 6A        .byte $6A   ; <レ>
- D - I - - 0x0265BA 13:A5AA: 01        .byte $01   ; <あ>
- D - I - - 0x0265BB 13:A5AB: 01        .byte $01   ; <あ>
- D - I - - 0x0265BC 13:A5AC: 6A        .byte $6A   ; <レ>
- D - I - - 0x0265BD 13:A5AD: 01        .byte $01   ; <あ>
- D - I - - 0x0265BE 13:A5AE: 01        .byte $01   ; <あ>
- D - I - - 0x0265BF 13:A5AF: 01        .byte $01   ; <あ>
- D - I - - 0x0265C0 13:A5B0: 62        .byte $62   ; <メ>
- D - I - - 0x0265C1 13:A5B1: 63        .byte $63   ; <モ>
- D - I - - 0x0265C2 13:A5B2: 01        .byte $01   ; <あ>
- D - I - - 0x0265C3 13:A5B3: 68        .byte $68   ; <リ>
- D - I - - 0x0265C4 13:A5B4: 63        .byte $63   ; <モ>
- D - I - - 0x0265C5 13:A5B5: 01        .byte $01   ; <あ>
- D - I - - 0x0265C6 13:A5B6: 68        .byte $68   ; <リ>
- D - I - - 0x0265C7 13:A5B7: 6A        .byte $6A   ; <レ>
- D - I - - 0x0265C8 13:A5B8: 00        .byte $00
- D - I - - 0x0265C9 13:A5B9: 00        .byte $00
- D - I - - 0x0265CA 13:A5BA: 00        .byte $00
- D - I - - 0x0265CB 13:A5BB: 00        .byte $00
- D - I - - 0x0265CC 13:A5BC: 00        .byte $00
- D - I - - 0x0265CD 13:A5BD: 00        .byte $00
- D - I - - 0x0265CE 13:A5BE: 00        .byte $00
- D - I - - 0x0265CF 13:A5BF: 00        .byte $00
- D - I - - 0x0265D0 13:A5C0: 6A        .byte $6A   ; <レ>
- D - I - - 0x0265D1 13:A5C1: 69        .byte $69   ; <ル>
- D - I - - 0x0265D2 13:A5C2: 6B        .byte $6B   ; <ロ>
- D - I - - 0x0265D3 13:A5C3: 01        .byte $01   ; <あ>
- D - I - - 0x0265D4 13:A5C4: 69        .byte $69   ; <ル>
- D - I - - 0x0265D5 13:A5C5: 6B        .byte $6B   ; <ロ>
- D - I - - 0x0265D6 13:A5C6: 01        .byte $01   ; <あ>
- D - I - - 0x0265D7 13:A5C7: 01        .byte $01   ; <あ>
- D - I - - 0x0265D8 13:A5C8: 00        .byte $00
- D - I - - 0x0265D9 13:A5C9: 00        .byte $00
- D - I - - 0x0265DA 13:A5CA: 00        .byte $00
- D - I - - 0x0265DB 13:A5CB: 00        .byte $00
- D - I - - 0x0265DC 13:A5CC: 00        .byte $00
- D - I - - 0x0265DD 13:A5CD: 00        .byte $00
- D - I - - 0x0265DE 13:A5CE: 00        .byte $00
- D - I - - 0x0265DF 13:A5CF: 00        .byte $00
- D - I - - 0x0265E0 13:A5D0: 60        .byte $60   ; <ミ>
- D - I - - 0x0265E1 13:A5D1: 60        .byte $60   ; <ミ>
- D - I - - 0x0265E2 13:A5D2: 60        .byte $60   ; <ミ>
- D - I - - 0x0265E3 13:A5D3: 61        .byte $61   ; <ム>
- D - I - - 0x0265E4 13:A5D4: 60        .byte $60   ; <ミ>
- D - I - - 0x0265E5 13:A5D5: 60        .byte $60   ; <ミ>
- D - I - - 0x0265E6 13:A5D6: 61        .byte $61   ; <ム>
- D - I - - 0x0265E7 13:A5D7: 62        .byte $62   ; <メ>
- D - I - - 0x0265E8 13:A5D8: 60        .byte $60   ; <ミ>
- D - I - - 0x0265E9 13:A5D9: 61        .byte $61   ; <ム>
- D - I - - 0x0265EA 13:A5DA: 62        .byte $62   ; <メ>
- D - I - - 0x0265EB 13:A5DB: 63        .byte $63   ; <モ>
- D - I - - 0x0265EC 13:A5DC: 61        .byte $61   ; <ム>
- D - I - - 0x0265ED 13:A5DD: 62        .byte $62   ; <メ>
- D - I - - 0x0265EE 13:A5DE: 63        .byte $63   ; <モ>
- D - I - - 0x0265EF 13:A5DF: 01        .byte $01   ; <あ>
- D - I - - 0x0265F0 13:A5E0: 62        .byte $62   ; <メ>
- D - I - - 0x0265F1 13:A5E1: 63        .byte $63   ; <モ>
- D - I - - 0x0265F2 13:A5E2: 01        .byte $01   ; <あ>
- D - I - - 0x0265F3 13:A5E3: 68        .byte $68   ; <リ>
- D - I - - 0x0265F4 13:A5E4: 63        .byte $63   ; <モ>
- D - I - - 0x0265F5 13:A5E5: 01        .byte $01   ; <あ>
- D - I - - 0x0265F6 13:A5E6: 68        .byte $68   ; <リ>
- D - I - - 0x0265F7 13:A5E7: 6A        .byte $6A   ; <レ>
- D - I - - 0x0265F8 13:A5E8: 01        .byte $01   ; <あ>
- D - I - - 0x0265F9 13:A5E9: 68        .byte $68   ; <リ>
- D - I - - 0x0265FA 13:A5EA: 6A        .byte $6A   ; <レ>
- D - I - - 0x0265FB 13:A5EB: 69        .byte $69   ; <ル>
- D - I - - 0x0265FC 13:A5EC: 68        .byte $68   ; <リ>
- D - I - - 0x0265FD 13:A5ED: 6A        .byte $6A   ; <レ>
- D - I - - 0x0265FE 13:A5EE: 69        .byte $69   ; <ル>
- D - I - - 0x0265FF 13:A5EF: 6B        .byte $6B   ; <ロ>
- D - I - - 0x026600 13:A5F0: 6A        .byte $6A   ; <レ>
- D - I - - 0x026601 13:A5F1: 69        .byte $69   ; <ル>
- D - I - - 0x026602 13:A5F2: 6B        .byte $6B   ; <ロ>
- D - I - - 0x026603 13:A5F3: 01        .byte $01   ; <あ>
- D - I - - 0x026604 13:A5F4: 69        .byte $69   ; <ル>
- D - I - - 0x026605 13:A5F5: 6B        .byte $6B   ; <ロ>
- D - I - - 0x026606 13:A5F6: 01        .byte $01   ; <あ>
- D - I - - 0x026607 13:A5F7: 01        .byte $01   ; <あ>
- D - I - - 0x026608 13:A5F8: 6B        .byte $6B   ; <ロ>
- D - I - - 0x026609 13:A5F9: 01        .byte $01   ; <あ>
- D - I - - 0x02660A 13:A5FA: 01        .byte $01   ; <あ>
- D - I - - 0x02660B 13:A5FB: 01        .byte $01   ; <あ>
- D - I - - 0x02660C 13:A5FC: 01        .byte $01   ; <あ>
- D - I - - 0x02660D 13:A5FD: 01        .byte $01   ; <あ>
- D - I - - 0x02660E 13:A5FE: 01        .byte $01   ; <あ>
- D - I - - 0x02660F 13:A5FF: 01        .byte $01   ; <あ>
- D - I - - 0x026610 13:A600: 60        .byte $60   ; <ミ>
- D - I - - 0x026611 13:A601: 60        .byte $60   ; <ミ>
- D - I - - 0x026612 13:A602: 60        .byte $60   ; <ミ>
- D - I - - 0x026613 13:A603: 60        .byte $60   ; <ミ>
- D - I - - 0x026614 13:A604: 60        .byte $60   ; <ミ>
- D - I - - 0x026615 13:A605: 60        .byte $60   ; <ミ>
- D - I - - 0x026616 13:A606: 60        .byte $60   ; <ミ>
- D - I - - 0x026617 13:A607: 60        .byte $60   ; <ミ>
- D - I - - 0x026618 13:A608: 60        .byte $60   ; <ミ>
- D - I - - 0x026619 13:A609: 60        .byte $60   ; <ミ>
- D - I - - 0x02661A 13:A60A: 60        .byte $60   ; <ミ>
- D - I - - 0x02661B 13:A60B: 60        .byte $60   ; <ミ>
- D - I - - 0x02661C 13:A60C: 60        .byte $60   ; <ミ>
- D - I - - 0x02661D 13:A60D: 60        .byte $60   ; <ミ>
- D - I - - 0x02661E 13:A60E: 60        .byte $60   ; <ミ>
- D - I - - 0x02661F 13:A60F: 60        .byte $60   ; <ミ>
- D - I - - 0x026620 13:A610: 01        .byte $01   ; <あ>
- D - I - - 0x026621 13:A611: 01        .byte $01   ; <あ>
- D - I - - 0x026622 13:A612: 01        .byte $01   ; <あ>
- D - I - - 0x026623 13:A613: 01        .byte $01   ; <あ>
- D - I - - 0x026624 13:A614: 01        .byte $01   ; <あ>
- D - I - - 0x026625 13:A615: 01        .byte $01   ; <あ>
- D - I - - 0x026626 13:A616: 01        .byte $01   ; <あ>
- D - I - - 0x026627 13:A617: 01        .byte $01   ; <あ>
- D - I - - 0x026628 13:A618: 01        .byte $01   ; <あ>
- D - I - - 0x026629 13:A619: 01        .byte $01   ; <あ>
- D - I - - 0x02662A 13:A61A: 51        .byte $51   ; <チ>
- D - I - - 0x02662B 13:A61B: 01        .byte $01   ; <あ>
- D - I - - 0x02662C 13:A61C: 01        .byte $01   ; <あ>
- D - I - - 0x02662D 13:A61D: 01        .byte $01   ; <あ>
- D - I - - 0x02662E 13:A61E: 45        .byte $45   ; <オ>
- D - I - - 0x02662F 13:A61F: 50        .byte $50   ; <タ>
- D - I - - 0x026630 13:A620: 01        .byte $01   ; <あ>
- D - I - - 0x026631 13:A621: 01        .byte $01   ; <あ>
- D - I - - 0x026632 13:A622: 01        .byte $01   ; <あ>
- D - I - - 0x026633 13:A623: 01        .byte $01   ; <あ>
- D - I - - 0x026634 13:A624: 01        .byte $01   ; <あ>
- D - I - - 0x026635 13:A625: 01        .byte $01   ; <あ>
- D - I - - 0x026636 13:A626: 01        .byte $01   ; <あ>
- D - I - - 0x026637 13:A627: 01        .byte $01   ; <あ>
- D - I - - 0x026638 13:A628: 45        .byte $45   ; <オ>
- D - I - - 0x026639 13:A629: 50        .byte $50   ; <タ>
- D - I - - 0x02663A 13:A62A: 51        .byte $51   ; <チ>
- D - I - - 0x02663B 13:A62B: 01        .byte $01   ; <あ>
- D - I - - 0x02663C 13:A62C: 51        .byte $51   ; <チ>
- D - I - - 0x02663D 13:A62D: 01        .byte $01   ; <あ>
- D - I - - 0x02663E 13:A62E: 45        .byte $45   ; <オ>
- D - I - - 0x02663F 13:A62F: 50        .byte $50   ; <タ>
- D - I - - 0x026640 13:A630: 01        .byte $01   ; <あ>
- D - I - - 0x026641 13:A631: 01        .byte $01   ; <あ>
- D - I - - 0x026642 13:A632: 01        .byte $01   ; <あ>
- D - I - - 0x026643 13:A633: 01        .byte $01   ; <あ>
- D - I - - 0x026644 13:A634: 01        .byte $01   ; <あ>
- D - I - - 0x026645 13:A635: 01        .byte $01   ; <あ>
- D - I - - 0x026646 13:A636: 01        .byte $01   ; <あ>
- D - I - - 0x026647 13:A637: 01        .byte $01   ; <あ>
- D - I - - 0x026648 13:A638: 45        .byte $45   ; <オ>
- D - I - - 0x026649 13:A639: 05        .byte $05   ; <お>
- D - I - - 0x02664A 13:A63A: 58        .byte $58   ; <ネ>
- D - I - - 0x02664B 13:A63B: 54        .byte $54   ; <ト>
- D - I - - 0x02664C 13:A63C: 51        .byte $51   ; <チ>
- D - I - - 0x02664D 13:A63D: 05        .byte $05   ; <お>
- D - I - - 0x02664E 13:A63E: 58        .byte $58   ; <ネ>
- D - I - - 0x02664F 13:A63F: 54        .byte $54   ; <ト>
- D - I - - 0x026650 13:A640: 01        .byte $01   ; <あ>
- D - I - - 0x026651 13:A641: 01        .byte $01   ; <あ>
- D - I - - 0x026652 13:A642: 01        .byte $01   ; <あ>
- D - I - - 0x026653 13:A643: 01        .byte $01   ; <あ>
- D - I - - 0x026654 13:A644: 01        .byte $01   ; <あ>
- D - I - - 0x026655 13:A645: 01        .byte $01   ; <あ>
- D - I - - 0x026656 13:A646: 01        .byte $01   ; <あ>
- D - I - - 0x026657 13:A647: 01        .byte $01   ; <あ>
- D - I - - 0x026658 13:A648: 01        .byte $01   ; <あ>
- D - I - - 0x026659 13:A649: 01        .byte $01   ; <あ>
- D - I - - 0x02665A 13:A64A: 01        .byte $01   ; <あ>
- D - I - - 0x02665B 13:A64B: 01        .byte $01   ; <あ>
- D - I - - 0x02665C 13:A64C: 01        .byte $01   ; <あ>
- D - I - - 0x02665D 13:A64D: 01        .byte $01   ; <あ>
- D - I - - 0x02665E 13:A64E: 01        .byte $01   ; <あ>
- D - I - - 0x02665F 13:A64F: 01        .byte $01   ; <あ>
- D - I - - 0x026660 13:A650: 01        .byte $01   ; <あ>
- D - I - - 0x026661 13:A651: 01        .byte $01   ; <あ>
- D - I - - 0x026662 13:A652: 51        .byte $51   ; <チ>
- D - I - - 0x026663 13:A653: 01        .byte $01   ; <あ>
- D - I - - 0x026664 13:A654: 01        .byte $01   ; <あ>
- D - I - - 0x026665 13:A655: 01        .byte $01   ; <あ>
- D - I - - 0x026666 13:A656: 45        .byte $45   ; <オ>
- D - I - - 0x026667 13:A657: 50        .byte $50   ; <タ>
- D - I - - 0x026668 13:A658: 01        .byte $01   ; <あ>
- D - I - - 0x026669 13:A659: 01        .byte $01   ; <あ>
- D - I - - 0x02666A 13:A65A: 51        .byte $51   ; <チ>
- D - I - - 0x02666B 13:A65B: 01        .byte $01   ; <あ>
- D - I - - 0x02666C 13:A65C: 01        .byte $01   ; <あ>
- D - I - - 0x02666D 13:A65D: 01        .byte $01   ; <あ>
- D - I - - 0x02666E 13:A65E: 45        .byte $45   ; <オ>
- D - I - - 0x02666F 13:A65F: 50        .byte $50   ; <タ>
- D - I - - 0x026670 13:A660: 45        .byte $45   ; <オ>
- D - I - - 0x026671 13:A661: 50        .byte $50   ; <タ>
- D - I - - 0x026672 13:A662: 51        .byte $51   ; <チ>
- D - I - - 0x026673 13:A663: 01        .byte $01   ; <あ>
- D - I - - 0x026674 13:A664: 51        .byte $51   ; <チ>
- D - I - - 0x026675 13:A665: 01        .byte $01   ; <あ>
- D - I - - 0x026676 13:A666: 45        .byte $45   ; <オ>
- D - I - - 0x026677 13:A667: 50        .byte $50   ; <タ>
- D - I - - 0x026678 13:A668: 45        .byte $45   ; <オ>
- D - I - - 0x026679 13:A669: 50        .byte $50   ; <タ>
- D - I - - 0x02667A 13:A66A: 51        .byte $51   ; <チ>
- D - I - - 0x02667B 13:A66B: 01        .byte $01   ; <あ>
- D - I - - 0x02667C 13:A66C: 51        .byte $51   ; <チ>
- D - I - - 0x02667D 13:A66D: 01        .byte $01   ; <あ>
- D - I - - 0x02667E 13:A66E: 45        .byte $45   ; <オ>
- D - I - - 0x02667F 13:A66F: 50        .byte $50   ; <タ>
- D - I - - 0x026680 13:A670: 45        .byte $45   ; <オ>
- D - I - - 0x026681 13:A671: 05        .byte $05   ; <お>
- D - I - - 0x026682 13:A672: 58        .byte $58   ; <ネ>
- D - I - - 0x026683 13:A673: 54        .byte $54   ; <ト>
- D - I - - 0x026684 13:A674: 51        .byte $51   ; <チ>
- D - I - - 0x026685 13:A675: 05        .byte $05   ; <お>
- D - I - - 0x026686 13:A676: 58        .byte $58   ; <ネ>
- D - I - - 0x026687 13:A677: 54        .byte $54   ; <ト>
- D - I - - 0x026688 13:A678: 45        .byte $45   ; <オ>
- D - I - - 0x026689 13:A679: 05        .byte $05   ; <お>
- D - I - - 0x02668A 13:A67A: 58        .byte $58   ; <ネ>
- D - I - - 0x02668B 13:A67B: 54        .byte $54   ; <ト>
- D - I - - 0x02668C 13:A67C: 51        .byte $51   ; <チ>
- D - I - - 0x02668D 13:A67D: 05        .byte $05   ; <お>
- D - I - - 0x02668E 13:A67E: 58        .byte $58   ; <ネ>
- D - I - - 0x02668F 13:A67F: 54        .byte $54   ; <ト>
- D - I - - 0x026690 13:A680: 01        .byte $01   ; <あ>
- D - I - - 0x026691 13:A681: 01        .byte $01   ; <あ>
- D - I - - 0x026692 13:A682: 01        .byte $01   ; <あ>
- D - I - - 0x026693 13:A683: 01        .byte $01   ; <あ>
- D - I - - 0x026694 13:A684: 01        .byte $01   ; <あ>
- D - I - - 0x026695 13:A685: 01        .byte $01   ; <あ>
- D - I - - 0x026696 13:A686: 01        .byte $01   ; <あ>
- D - I - - 0x026697 13:A687: 01        .byte $01   ; <あ>
- D - I - - 0x026698 13:A688: 01        .byte $01   ; <あ>
- D - I - - 0x026699 13:A689: 01        .byte $01   ; <あ>
- D - I - - 0x02669A 13:A68A: 01        .byte $01   ; <あ>
- D - I - - 0x02669B 13:A68B: 01        .byte $01   ; <あ>
- D - I - - 0x02669C 13:A68C: 01        .byte $01   ; <あ>
- D - I - - 0x02669D 13:A68D: 01        .byte $01   ; <あ>
- D - I - - 0x02669E 13:A68E: 01        .byte $01   ; <あ>
- D - I - - 0x02669F 13:A68F: 01        .byte $01   ; <あ>
- D - I - - 0x0266A0 13:A690: 01        .byte $01   ; <あ>
- D - I - - 0x0266A1 13:A691: 01        .byte $01   ; <あ>
- D - I - - 0x0266A2 13:A692: 01        .byte $01   ; <あ>
- D - I - - 0x0266A3 13:A693: 01        .byte $01   ; <あ>
- D - I - - 0x0266A4 13:A694: 01        .byte $01   ; <あ>
- D - I - - 0x0266A5 13:A695: 01        .byte $01   ; <あ>
- D - I - - 0x0266A6 13:A696: 01        .byte $01   ; <あ>
- D - I - - 0x0266A7 13:A697: 01        .byte $01   ; <あ>
- D - I - - 0x0266A8 13:A698: 01        .byte $01   ; <あ>
- D - I - - 0x0266A9 13:A699: 01        .byte $01   ; <あ>
- D - I - - 0x0266AA 13:A69A: 01        .byte $01   ; <あ>
- D - I - - 0x0266AB 13:A69B: 01        .byte $01   ; <あ>
- D - I - - 0x0266AC 13:A69C: 01        .byte $01   ; <あ>
- D - I - - 0x0266AD 13:A69D: 01        .byte $01   ; <あ>
- D - I - - 0x0266AE 13:A69E: 01        .byte $01   ; <あ>
- D - I - - 0x0266AF 13:A69F: 01        .byte $01   ; <あ>
- D - I - - 0x0266B0 13:A6A0: 01        .byte $01   ; <あ>
- D - I - - 0x0266B1 13:A6A1: 01        .byte $01   ; <あ>
- D - I - - 0x0266B2 13:A6A2: 01        .byte $01   ; <あ>
- D - I - - 0x0266B3 13:A6A3: 01        .byte $01   ; <あ>
- D - I - - 0x0266B4 13:A6A4: 01        .byte $01   ; <あ>
- D - I - - 0x0266B5 13:A6A5: 01        .byte $01   ; <あ>
- D - I - - 0x0266B6 13:A6A6: 01        .byte $01   ; <あ>
- D - I - - 0x0266B7 13:A6A7: 01        .byte $01   ; <あ>
- D - I - - 0x0266B8 13:A6A8: 47        .byte $47   ; <キ>
- D - I - - 0x0266B9 13:A6A9: 58        .byte $58   ; <ネ>
- D - I - - 0x0266BA 13:A6AA: 05        .byte $05   ; <お>
- D - I - - 0x0266BB 13:A6AB: 56        .byte $56   ; <ニ>
- D - I - - 0x0266BC 13:A6AC: 47        .byte $47   ; <キ>
- D - I - - 0x0266BD 13:A6AD: 58        .byte $58   ; <ネ>
- D - I - - 0x0266BE 13:A6AE: 05        .byte $05   ; <お>
- D - I - - 0x0266BF 13:A6AF: 52        .byte $52   ; <ツ>
- D - I - - 0x0266C0 13:A6B0: 01        .byte $01   ; <あ>
- D - I - - 0x0266C1 13:A6B1: 01        .byte $01   ; <あ>
- D - I - - 0x0266C2 13:A6B2: 01        .byte $01   ; <あ>
- D - I - - 0x0266C3 13:A6B3: 01        .byte $01   ; <あ>
- D - I - - 0x0266C4 13:A6B4: 01        .byte $01   ; <あ>
- D - I - - 0x0266C5 13:A6B5: 01        .byte $01   ; <あ>
- D - I - - 0x0266C6 13:A6B6: 01        .byte $01   ; <あ>
- D - I - - 0x0266C7 13:A6B7: 01        .byte $01   ; <あ>
- D - I - - 0x0266C8 13:A6B8: 01        .byte $01   ; <あ>
- D - I - - 0x0266C9 13:A6B9: 52        .byte $52   ; <ツ>
- D - I - - 0x0266CA 13:A6BA: 53        .byte $53   ; <テ>
- D - I - - 0x0266CB 13:A6BB: 56        .byte $56   ; <ニ>
- D - I - - 0x0266CC 13:A6BC: 53        .byte $53   ; <テ>
- D - I - - 0x0266CD 13:A6BD: 56        .byte $56   ; <ニ>
- D - I - - 0x0266CE 13:A6BE: 01        .byte $01   ; <あ>
- D - I - - 0x0266CF 13:A6BF: 52        .byte $52   ; <ツ>
- D - I - - 0x0266D0 13:A6C0: 01        .byte $01   ; <あ>
- D - I - - 0x0266D1 13:A6C1: 01        .byte $01   ; <あ>
- D - I - - 0x0266D2 13:A6C2: 01        .byte $01   ; <あ>
- D - I - - 0x0266D3 13:A6C3: 01        .byte $01   ; <あ>
- D - I - - 0x0266D4 13:A6C4: 01        .byte $01   ; <あ>
- D - I - - 0x0266D5 13:A6C5: 01        .byte $01   ; <あ>
- D - I - - 0x0266D6 13:A6C6: 01        .byte $01   ; <あ>
- D - I - - 0x0266D7 13:A6C7: 01        .byte $01   ; <あ>
- D - I - - 0x0266D8 13:A6C8: 01        .byte $01   ; <あ>
- D - I - - 0x0266D9 13:A6C9: 52        .byte $52   ; <ツ>
- D - I - - 0x0266DA 13:A6CA: 01        .byte $01   ; <あ>
- D - I - - 0x0266DB 13:A6CB: 01        .byte $01   ; <あ>
- D - I - - 0x0266DC 13:A6CC: 53        .byte $53   ; <テ>
- D - I - - 0x0266DD 13:A6CD: 56        .byte $56   ; <ニ>
- D - I - - 0x0266DE 13:A6CE: 01        .byte $01   ; <あ>
- D - I - - 0x0266DF 13:A6CF: 01        .byte $01   ; <あ>
- D - I - - 0x0266E0 13:A6D0: 47        .byte $47   ; <キ>
- D - I - - 0x0266E1 13:A6D1: 58        .byte $58   ; <ネ>
- D - I - - 0x0266E2 13:A6D2: 05        .byte $05   ; <お>
- D - I - - 0x0266E3 13:A6D3: 56        .byte $56   ; <ニ>
- D - I - - 0x0266E4 13:A6D4: 47        .byte $47   ; <キ>
- D - I - - 0x0266E5 13:A6D5: 58        .byte $58   ; <ネ>
- D - I - - 0x0266E6 13:A6D6: 05        .byte $05   ; <お>
- D - I - - 0x0266E7 13:A6D7: 52        .byte $52   ; <ツ>
- D - I - - 0x0266E8 13:A6D8: 47        .byte $47   ; <キ>
- D - I - - 0x0266E9 13:A6D9: 58        .byte $58   ; <ネ>
- D - I - - 0x0266EA 13:A6DA: 05        .byte $05   ; <お>
- D - I - - 0x0266EB 13:A6DB: 56        .byte $56   ; <ニ>
- D - I - - 0x0266EC 13:A6DC: 47        .byte $47   ; <キ>
- D - I - - 0x0266ED 13:A6DD: 58        .byte $58   ; <ネ>
- D - I - - 0x0266EE 13:A6DE: 05        .byte $05   ; <お>
- D - I - - 0x0266EF 13:A6DF: 52        .byte $52   ; <ツ>
- D - I - - 0x0266F0 13:A6E0: 01        .byte $01   ; <あ>
- D - I - - 0x0266F1 13:A6E1: 52        .byte $52   ; <ツ>
- D - I - - 0x0266F2 13:A6E2: 53        .byte $53   ; <テ>
- D - I - - 0x0266F3 13:A6E3: 56        .byte $56   ; <ニ>
- D - I - - 0x0266F4 13:A6E4: 53        .byte $53   ; <テ>
- D - I - - 0x0266F5 13:A6E5: 56        .byte $56   ; <ニ>
- D - I - - 0x0266F6 13:A6E6: 01        .byte $01   ; <あ>
- D - I - - 0x0266F7 13:A6E7: 52        .byte $52   ; <ツ>
- D - I - - 0x0266F8 13:A6E8: 01        .byte $01   ; <あ>
- D - I - - 0x0266F9 13:A6E9: 52        .byte $52   ; <ツ>
- D - I - - 0x0266FA 13:A6EA: 53        .byte $53   ; <テ>
- D - I - - 0x0266FB 13:A6EB: 56        .byte $56   ; <ニ>
- D - I - - 0x0266FC 13:A6EC: 53        .byte $53   ; <テ>
- D - I - - 0x0266FD 13:A6ED: 56        .byte $56   ; <ニ>
- D - I - - 0x0266FE 13:A6EE: 01        .byte $01   ; <あ>
- D - I - - 0x0266FF 13:A6EF: 52        .byte $52   ; <ツ>
- D - I - - 0x026700 13:A6F0: 01        .byte $01   ; <あ>
- D - I - - 0x026701 13:A6F1: 52        .byte $52   ; <ツ>
- D - I - - 0x026702 13:A6F2: 01        .byte $01   ; <あ>
- D - I - - 0x026703 13:A6F3: 01        .byte $01   ; <あ>
- D - I - - 0x026704 13:A6F4: 53        .byte $53   ; <テ>
- D - I - - 0x026705 13:A6F5: 56        .byte $56   ; <ニ>
- D - I - - 0x026706 13:A6F6: 01        .byte $01   ; <あ>
- D - I - - 0x026707 13:A6F7: 01        .byte $01   ; <あ>
- D - I - - 0x026708 13:A6F8: 01        .byte $01   ; <あ>
- D - I - - 0x026709 13:A6F9: 52        .byte $52   ; <ツ>
- D - I - - 0x02670A 13:A6FA: 01        .byte $01   ; <あ>
- D - I - - 0x02670B 13:A6FB: 01        .byte $01   ; <あ>
- D - I - - 0x02670C 13:A6FC: 53        .byte $53   ; <テ>
- D - I - - 0x02670D 13:A6FD: 56        .byte $56   ; <ニ>
- D - I - - 0x02670E 13:A6FE: 01        .byte $01   ; <あ>
- D - I - - 0x02670F 13:A6FF: 01        .byte $01   ; <あ>
- D - I - - 0x026710 13:A700: 01        .byte $01   ; <あ>
- D - I - - 0x026711 13:A701: 01        .byte $01   ; <あ>
- D - I - - 0x026712 13:A702: 01        .byte $01   ; <あ>
- D - I - - 0x026713 13:A703: 01        .byte $01   ; <あ>
- D - I - - 0x026714 13:A704: 01        .byte $01   ; <あ>
- D - I - - 0x026715 13:A705: 01        .byte $01   ; <あ>
- D - I - - 0x026716 13:A706: 01        .byte $01   ; <あ>
- D - I - - 0x026717 13:A707: 01        .byte $01   ; <あ>
- D - I - - 0x026718 13:A708: 01        .byte $01   ; <あ>
- D - I - - 0x026719 13:A709: 01        .byte $01   ; <あ>
- D - I - - 0x02671A 13:A70A: 01        .byte $01   ; <あ>
- D - I - - 0x02671B 13:A70B: 01        .byte $01   ; <あ>
- D - I - - 0x02671C 13:A70C: 01        .byte $01   ; <あ>
- D - I - - 0x02671D 13:A70D: 01        .byte $01   ; <あ>
- D - I - - 0x02671E 13:A70E: 01        .byte $01   ; <あ>
- D - I - - 0x02671F 13:A70F: 01        .byte $01   ; <あ>


; миникарта во время паса/перепасовки
- D - I - - 0x026720 13:A710: 00        .byte $00
- D - I - - 0x026721 13:A711: 00        .byte $00
- D - I - - 0x026722 13:A712: 00        .byte $00
- D - I - - 0x026723 13:A713: 00        .byte $00
- D - I - - 0x026724 13:A714: 00        .byte $00
- D - I - - 0x026725 13:A715: 00        .byte $00
- D - I - - 0x026726 13:A716: 00        .byte $00
- D - I - - 0x026727 13:A717: 00        .byte $00
- D - I - - 0x026728 13:A718: 00        .byte $00
- D - I - - 0x026729 13:A719: 00        .byte $00
- D - I - - 0x02672A 13:A71A: C9        .byte $C9   ; <ぴ>
- D - I - - 0x02672B 13:A71B: D2        .byte $D2
- D - I - - 0x02672C 13:A71C: 00        .byte $00
- D - I - - 0x02672D 13:A71D: 00        .byte $00
- D - I - - 0x02672E 13:A71E: CC        .byte $CC   ; <ぽ>
- D - I - - 0x02672F 13:A71F: FF        .byte $FF
- D - I - - 0x026730 13:A720: 00        .byte $00
- D - I - - 0x026731 13:A721: 00        .byte $00
- D - I - - 0x026732 13:A722: 00        .byte $00
- D - I - - 0x026733 13:A723: 00        .byte $00
- D - I - - 0x026734 13:A724: 00        .byte $00
- D - I - - 0x026735 13:A725: 00        .byte $00
- D - I - - 0x026736 13:A726: 00        .byte $00
- D - I - - 0x026737 13:A727: 00        .byte $00
- D - I - - 0x026738 13:A728: D2        .byte $D2
- D - I - - 0x026739 13:A729: D2        .byte $D2
- D - I - - 0x02673A 13:A72A: D2        .byte $D2
- D - I - - 0x02673B 13:A72B: D2        .byte $D2
- D - I - - 0x02673C 13:A72C: FF        .byte $FF
- D - I - - 0x02673D 13:A72D: FF        .byte $FF
- D - I - - 0x02673E 13:A72E: FF        .byte $FF
- D - I - - 0x02673F 13:A72F: FF        .byte $FF
- D - I - - 0x026740 13:A730: 00        .byte $00
- D - I - - 0x026741 13:A731: 00        .byte $00
- D - I - - 0x026742 13:A732: 00        .byte $00
- D - I - - 0x026743 13:A733: 00        .byte $00
- D - I - - 0x026744 13:A734: 00        .byte $00
- D - I - - 0x026745 13:A735: 00        .byte $00
- D - I - - 0x026746 13:A736: 00        .byte $00
- D - I - - 0x026747 13:A737: 00        .byte $00
- D - I - - 0x026748 13:A738: C9        .byte $C9   ; <ぴ>
- D - I - - 0x026749 13:A739: D2        .byte $D2
- D - I - - 0x02674A 13:A73A: D2        .byte $D2
- D - I - - 0x02674B 13:A73B: D2        .byte $D2
- D - I - - 0x02674C 13:A73C: CC        .byte $CC   ; <ぽ>
- D - I - - 0x02674D 13:A73D: FF        .byte $FF
- D - I - - 0x02674E 13:A73E: FF        .byte $FF
- D - I - - 0x02674F 13:A73F: FF        .byte $FF
- D - I - - 0x026750 13:A740: 00        .byte $00
- D - I - - 0x026751 13:A741: 00        .byte $00
- D - I - - 0x026752 13:A742: 00        .byte $00
- D - I - - 0x026753 13:A743: 00        .byte $00
- D - I - - 0x026754 13:A744: 00        .byte $00
- D - I - - 0x026755 13:A745: 00        .byte $00
- D - I - - 0x026756 13:A746: 00        .byte $00
- D - I - - 0x026757 13:A747: 00        .byte $00
- D - I - - 0x026758 13:A748: D2        .byte $D2
- D - I - - 0x026759 13:A749: D2        .byte $D2
- D - I - - 0x02675A 13:A74A: D0        .byte $D0   ; <ペ>
- D - I - - 0x02675B 13:A74B: 00        .byte $00
- D - I - - 0x02675C 13:A74C: FF        .byte $FF
- D - I - - 0x02675D 13:A74D: FF        .byte $FF
- D - I - - 0x02675E 13:A74E: D0        .byte $D0   ; <ペ>
- D - I - - 0x02675F 13:A74F: 00        .byte $00
- D - I - - 0x026760 13:A750: 00        .byte $00
- D - I - - 0x026761 13:A751: 00        .byte $00
- D - I - - 0x026762 13:A752: C9        .byte $C9   ; <ぴ>
- D - I - - 0x026763 13:A753: D2        .byte $D2
- D - I - - 0x026764 13:A754: 00        .byte $00
- D - I - - 0x026765 13:A755: 00        .byte $00
- D - I - - 0x026766 13:A756: CC        .byte $CC   ; <ぽ>
- D - I - - 0x026767 13:A757: FF        .byte $FF
- D - I - - 0x026768 13:A758: 00        .byte $00
- D - I - - 0x026769 13:A759: 00        .byte $00
- D - I - - 0x02676A 13:A75A: C9        .byte $C9   ; <ぴ>
- D - I - - 0x02676B 13:A75B: D2        .byte $D2
- D - I - - 0x02676C 13:A75C: 00        .byte $00
- D - I - - 0x02676D 13:A75D: C9        .byte $C9   ; <ぴ>
- D - I - - 0x02676E 13:A75E: CC        .byte $CC   ; <ぽ>
- D - I - - 0x02676F 13:A75F: FF        .byte $FF
- D - I - - 0x026770 13:A760: D2        .byte $D2
- D - I - - 0x026771 13:A761: D2        .byte $D2
- D - I - - 0x026772 13:A762: CC        .byte $CC   ; <ぽ>
- D - I - - 0x026773 13:A763: FF        .byte $FF
- D - I - - 0x026774 13:A764: FF        .byte $FF
- D - I - - 0x026775 13:A765: FF        .byte $FF
- D - I - - 0x026776 13:A766: CC        .byte $CC   ; <ぽ>
- D - I - - 0x026777 13:A767: FF        .byte $FF
- D - I - - 0x026778 13:A768: CC        .byte $CC   ; <ぽ>
- D - I - - 0x026779 13:A769: FF        .byte $FF
- D - I - - 0x02677A 13:A76A: CC        .byte $CC   ; <ぽ>
- D - I - - 0x02677B 13:A76B: FF        .byte $FF
- D - I - - 0x02677C 13:A76C: CC        .byte $CC   ; <ぽ>
- D - I - - 0x02677D 13:A76D: FF        .byte $FF
- D - I - - 0x02677E 13:A76E: CC        .byte $CC   ; <ぽ>
- D - I - - 0x02677F 13:A76F: FF        .byte $FF
- D - I - - 0x026780 13:A770: FF        .byte $FF
- D - I - - 0x026781 13:A771: FF        .byte $FF
- D - I - - 0x026782 13:A772: FF        .byte $FF
- D - I - - 0x026783 13:A773: FF        .byte $FF
- D - I - - 0x026784 13:A774: FF        .byte $FF
- D - I - - 0x026785 13:A775: FF        .byte $FF
- D - I - - 0x026786 13:A776: FF        .byte $FF
- D - I - - 0x026787 13:A777: FF        .byte $FF
- D - I - - 0x026788 13:A778: FF        .byte $FF
- D - I - - 0x026789 13:A779: FF        .byte $FF
- D - I - - 0x02678A 13:A77A: C0        .byte $C0   ; <ヅ>
- D - I - - 0x02678B 13:A77B: C1        .byte $C1   ; <デ>
- D - I - - 0x02678C 13:A77C: FF        .byte $FF
- D - I - - 0x02678D 13:A77D: FF        .byte $FF
- D - I - - 0x02678E 13:A77E: C2        .byte $C2   ; <ド>
- D - I - - 0x02678F 13:A77F: FF        .byte $FF
- D - I - - 0x026790 13:A780: CC        .byte $CC   ; <ぽ>
- D - I - - 0x026791 13:A781: FF        .byte $FF
- D - I - - 0x026792 13:A782: FF        .byte $FF
- D - I - - 0x026793 13:A783: FF        .byte $FF
- D - I - - 0x026794 13:A784: CC        .byte $CC   ; <ぽ>
- D - I - - 0x026795 13:A785: FF        .byte $FF
- D - I - - 0x026796 13:A786: FF        .byte $FF
- D - I - - 0x026797 13:A787: FF        .byte $FF
- D - I - - 0x026798 13:A788: C4        .byte $C4   ; <ビ>
- D - I - - 0x026799 13:A789: C5        .byte $C5   ; <ブ>
- D - I - - 0x02679A 13:A78A: FF        .byte $FF
- D - I - - 0x02679B 13:A78B: FF        .byte $FF
- D - I - - 0x02679C 13:A78C: CC        .byte $CC   ; <ぽ>
- D - I - - 0x02679D 13:A78D: C7        .byte $C7   ; <ボ>
- D - I - - 0x02679E 13:A78E: FF        .byte $FF
- D - I - - 0x02679F 13:A78F: FF        .byte $FF
- D - I - - 0x0267A0 13:A790: FF        .byte $FF
- D - I - - 0x0267A1 13:A791: FF        .byte $FF
- D - I - - 0x0267A2 13:A792: C9        .byte $C9   ; <ぴ>
- D - I - - 0x0267A3 13:A793: D2        .byte $D2
- D - I - - 0x0267A4 13:A794: FF        .byte $FF
- D - I - - 0x0267A5 13:A795: FF        .byte $FF
- D - I - - 0x0267A6 13:A796: CC        .byte $CC   ; <ぽ>
- D - I - - 0x0267A7 13:A797: FF        .byte $FF
- D - I - - 0x0267A8 13:A798: FF        .byte $FF
- D - I - - 0x0267A9 13:A799: FF        .byte $FF
- D - I - - 0x0267AA 13:A79A: CC        .byte $CC   ; <ぽ>
- D - I - - 0x0267AB 13:A79B: FF        .byte $FF
- D - I - - 0x0267AC 13:A79C: FF        .byte $FF
- D - I - - 0x0267AD 13:A79D: FF        .byte $FF
- D - I - - 0x0267AE 13:A79E: CC        .byte $CC   ; <ぽ>
- D - I - - 0x0267AF 13:A79F: FF        .byte $FF
- D - I - - 0x0267B0 13:A7A0: D2        .byte $D2
- D - I - - 0x0267B1 13:A7A1: D2        .byte $D2
- D - I - - 0x0267B2 13:A7A2: D0        .byte $D0   ; <ペ>
- D - I - - 0x0267B3 13:A7A3: 00        .byte $00
- D - I - - 0x0267B4 13:A7A4: FF        .byte $FF
- D - I - - 0x0267B5 13:A7A5: FF        .byte $FF
- D - I - - 0x0267B6 13:A7A6: D0        .byte $D0   ; <ペ>
- D - I - - 0x0267B7 13:A7A7: 00        .byte $00
- D - I - - 0x0267B8 13:A7A8: C9        .byte $C9   ; <ぴ>
- D - I - - 0x0267B9 13:A7A9: D2        .byte $D2
- D - I - - 0x0267BA 13:A7AA: D0        .byte $D0   ; <ペ>
- D - I - - 0x0267BB 13:A7AB: 00        .byte $00
- D - I - - 0x0267BC 13:A7AC: CC        .byte $CC   ; <ぽ>
- D - I - - 0x0267BD 13:A7AD: FF        .byte $FF
- D - I - - 0x0267BE 13:A7AE: C9        .byte $C9   ; <ぴ>
- D - I - - 0x0267BF 13:A7AF: D0        .byte $D0   ; <ペ>
- D - I - - 0x0267C0 13:A7B0: 00        .byte $00
- D - I - - 0x0267C1 13:A7B1: C6        .byte $C6   ; <ベ>
- D - I - - 0x0267C2 13:A7B2: CC        .byte $CC   ; <ぽ>
- D - I - - 0x0267C3 13:A7B3: FF        .byte $FF
- D - I - - 0x0267C4 13:A7B4: 00        .byte $00
- D - I - - 0x0267C5 13:A7B5: 00        .byte $00
- D - I - - 0x0267C6 13:A7B6: C6        .byte $C6   ; <ベ>
- D - I - - 0x0267C7 13:A7B7: C3        .byte $C3   ; <バ>
- D - I - - 0x0267C8 13:A7B8: 00        .byte $00
- D - I - - 0x0267C9 13:A7B9: 00        .byte $00
- D - I - - 0x0267CA 13:A7BA: CC        .byte $CC   ; <ぽ>
- D - I - - 0x0267CB 13:A7BB: FF        .byte $FF
- D - I - - 0x0267CC 13:A7BC: 00        .byte $00
- D - I - - 0x0267CD 13:A7BD: 00        .byte $00
- D - I - - 0x0267CE 13:A7BE: C6        .byte $C6   ; <ベ>
- D - I - - 0x0267CF 13:A7BF: C3        .byte $C3   ; <バ>
- D - I - - 0x0267D0 13:A7C0: CC        .byte $CC   ; <ぽ>
- D - I - - 0x0267D1 13:A7C1: FF        .byte $FF
- D - I - - 0x0267D2 13:A7C2: CC        .byte $CC   ; <ぽ>
- D - I - - 0x0267D3 13:A7C3: FF        .byte $FF
- D - I - - 0x0267D4 13:A7C4: CC        .byte $CC   ; <ぽ>
- D - I - - 0x0267D5 13:A7C5: FF        .byte $FF
- D - I - - 0x0267D6 13:A7C6: CC        .byte $CC   ; <ぽ>
- D - I - - 0x0267D7 13:A7C7: FF        .byte $FF
- D - I - - 0x0267D8 13:A7C8: FF        .byte $FF
- D - I - - 0x0267D9 13:A7C9: FF        .byte $FF
- D - I - - 0x0267DA 13:A7CA: CC        .byte $CC   ; <ぽ>
- D - I - - 0x0267DB 13:A7CB: FF        .byte $FF
- D - I - - 0x0267DC 13:A7CC: C3        .byte $C3   ; <バ>
- D - I - - 0x0267DD 13:A7CD: C3        .byte $C3   ; <バ>
- D - I - - 0x0267DE 13:A7CE: CC        .byte $CC   ; <ぽ>
- D - I - - 0x0267DF 13:A7CF: FF        .byte $FF
- D - I - - 0x0267E0 13:A7D0: FF        .byte $FF
- D - I - - 0x0267E1 13:A7D1: FF        .byte $FF
- D - I - - 0x0267E2 13:A7D2: C8        .byte $C8   ; <ぱ>
- D - I - - 0x0267E3 13:A7D3: FF        .byte $FF
- D - I - - 0x0267E4 13:A7D4: FF        .byte $FF
- D - I - - 0x0267E5 13:A7D5: FF        .byte $FF
- D - I - - 0x0267E6 13:A7D6: CA        .byte $CA   ; <ぷ>
- D - I - - 0x0267E7 13:A7D7: CB        .byte $CB   ; <ぺ>
- D - I - - 0x0267E8 13:A7D8: FF        .byte $FF
- D - I - - 0x0267E9 13:A7D9: FF        .byte $FF
- D - I - - 0x0267EA 13:A7DA: FF        .byte $FF
- D - I - - 0x0267EB 13:A7DB: FF        .byte $FF
- D - I - - 0x0267EC 13:A7DC: FF        .byte $FF
- D - I - - 0x0267ED 13:A7DD: FF        .byte $FF
- D - I - - 0x0267EE 13:A7DE: FF        .byte $FF
- D - I - - 0x0267EF 13:A7DF: FF        .byte $FF
- D - I - - 0x0267F0 13:A7E0: CC        .byte $CC   ; <ぽ>
- D - I - - 0x0267F1 13:A7E1: CD        .byte $CD   ; <パ>
- D - I - - 0x0267F2 13:A7E2: FF        .byte $FF
- D - I - - 0x0267F3 13:A7E3: FF        .byte $FF
- D - I - - 0x0267F4 13:A7E4: CE        .byte $CE   ; <ピ>
- D - I - - 0x0267F5 13:A7E5: CF        .byte $CF   ; <プ>
- D - I - - 0x0267F6 13:A7E6: FF        .byte $FF
- D - I - - 0x0267F7 13:A7E7: FF        .byte $FF
- D - I - - 0x0267F8 13:A7E8: CC        .byte $CC   ; <ぽ>
- D - I - - 0x0267F9 13:A7E9: FF        .byte $FF
- D - I - - 0x0267FA 13:A7EA: FF        .byte $FF
- D - I - - 0x0267FB 13:A7EB: FF        .byte $FF
- D - I - - 0x0267FC 13:A7EC: CC        .byte $CC   ; <ぽ>
- D - I - - 0x0267FD 13:A7ED: FF        .byte $FF
- D - I - - 0x0267FE 13:A7EE: FF        .byte $FF
- D - I - - 0x0267FF 13:A7EF: FF        .byte $FF
- D - I - - 0x026800 13:A7F0: FF        .byte $FF
- D - I - - 0x026801 13:A7F1: FF        .byte $FF
- D - I - - 0x026802 13:A7F2: CC        .byte $CC   ; <ぽ>
- D - I - - 0x026803 13:A7F3: FF        .byte $FF
- D - I - - 0x026804 13:A7F4: FF        .byte $FF
- D - I - - 0x026805 13:A7F5: FF        .byte $FF
- D - I - - 0x026806 13:A7F6: CC        .byte $CC   ; <ぽ>
- D - I - - 0x026807 13:A7F7: FF        .byte $FF
- D - I - - 0x026808 13:A7F8: FF        .byte $FF
- D - I - - 0x026809 13:A7F9: FF        .byte $FF
- D - I - - 0x02680A 13:A7FA: CC        .byte $CC   ; <ぽ>
- D - I - - 0x02680B 13:A7FB: FF        .byte $FF
- D - I - - 0x02680C 13:A7FC: FF        .byte $FF
- D - I - - 0x02680D 13:A7FD: FF        .byte $FF
- D - I - - 0x02680E 13:A7FE: C6        .byte $C6   ; <ベ>
- D - I - - 0x02680F 13:A7FF: C3        .byte $C3   ; <バ>
- D - I - - 0x026810 13:A800: CC        .byte $CC   ; <ぽ>
- D - I - - 0x026811 13:A801: FF        .byte $FF
- D - I - - 0x026812 13:A802: C6        .byte $C6   ; <ベ>
- D - I - - 0x026813 13:A803: D0        .byte $D0   ; <ペ>
- D - I - - 0x026814 13:A804: C6        .byte $C6   ; <ベ>
- D - I - - 0x026815 13:A805: C3        .byte $C3   ; <バ>
- D - I - - 0x026816 13:A806: D0        .byte $D0   ; <ペ>
- D - I - - 0x026817 13:A807: 00        .byte $00
- D - I - - 0x026818 13:A808: FF        .byte $FF
- D - I - - 0x026819 13:A809: FF        .byte $FF
- D - I - - 0x02681A 13:A80A: D0        .byte $D0   ; <ペ>
- D - I - - 0x02681B 13:A80B: 00        .byte $00
- D - I - - 0x02681C 13:A80C: C3        .byte $C3   ; <バ>
- D - I - - 0x02681D 13:A80D: C3        .byte $C3   ; <バ>
- D - I - - 0x02681E 13:A80E: D0        .byte $D0   ; <ペ>
- D - I - - 0x02681F 13:A80F: 00        .byte $00
- D - I - - 0x026820 13:A810: 00        .byte $00
- D - I - - 0x026821 13:A811: 00        .byte $00
- D - I - - 0x026822 13:A812: CC        .byte $CC   ; <ぽ>
- D - I - - 0x026823 13:A813: FF        .byte $FF
- D - I - - 0x026824 13:A814: 00        .byte $00
- D - I - - 0x026825 13:A815: 00        .byte $00
- D - I - - 0x026826 13:A816: C6        .byte $C6   ; <ベ>
- D - I - - 0x026827 13:A817: C3        .byte $C3   ; <バ>
- D - I - - 0x026828 13:A818: 00        .byte $00
- D - I - - 0x026829 13:A819: 00        .byte $00
- D - I - - 0x02682A 13:A81A: 00        .byte $00
- D - I - - 0x02682B 13:A81B: 00        .byte $00
- D - I - - 0x02682C 13:A81C: 00        .byte $00
- D - I - - 0x02682D 13:A81D: 00        .byte $00
- D - I - - 0x02682E 13:A81E: 00        .byte $00
- D - I - - 0x02682F 13:A81F: 00        .byte $00
- D - I - - 0x026830 13:A820: FF        .byte $FF
- D - I - - 0x026831 13:A821: FF        .byte $FF
- D - I - - 0x026832 13:A822: FF        .byte $FF
- D - I - - 0x026833 13:A823: FF        .byte $FF
- D - I - - 0x026834 13:A824: C3        .byte $C3   ; <バ>
- D - I - - 0x026835 13:A825: C3        .byte $C3   ; <バ>
- D - I - - 0x026836 13:A826: C3        .byte $C3   ; <バ>
- D - I - - 0x026837 13:A827: C3        .byte $C3   ; <バ>
- D - I - - 0x026838 13:A828: 00        .byte $00
- D - I - - 0x026839 13:A829: 00        .byte $00
- D - I - - 0x02683A 13:A82A: 00        .byte $00
- D - I - - 0x02683B 13:A82B: 00        .byte $00
- D - I - - 0x02683C 13:A82C: 00        .byte $00
- D - I - - 0x02683D 13:A82D: 00        .byte $00
- D - I - - 0x02683E 13:A82E: 00        .byte $00
- D - I - - 0x02683F 13:A82F: 00        .byte $00
- D - I - - 0x026840 13:A830: CC        .byte $CC   ; <ぽ>
- D - I - - 0x026841 13:A831: FF        .byte $FF
- D - I - - 0x026842 13:A832: FF        .byte $FF
- D - I - - 0x026843 13:A833: FF        .byte $FF
- D - I - - 0x026844 13:A834: C6        .byte $C6   ; <ベ>
- D - I - - 0x026845 13:A835: C3        .byte $C3   ; <バ>
- D - I - - 0x026846 13:A836: C3        .byte $C3   ; <バ>
- D - I - - 0x026847 13:A837: C3        .byte $C3   ; <バ>
- D - I - - 0x026848 13:A838: 00        .byte $00
- D - I - - 0x026849 13:A839: 00        .byte $00
- D - I - - 0x02684A 13:A83A: 00        .byte $00
- D - I - - 0x02684B 13:A83B: 00        .byte $00
- D - I - - 0x02684C 13:A83C: 00        .byte $00
- D - I - - 0x02684D 13:A83D: 00        .byte $00
- D - I - - 0x02684E 13:A83E: 00        .byte $00
- D - I - - 0x02684F 13:A83F: 00        .byte $00
- D - I - - 0x026850 13:A840: FF        .byte $FF
- D - I - - 0x026851 13:A841: FF        .byte $FF
- D - I - - 0x026852 13:A842: D0        .byte $D0   ; <ペ>
- D - I - - 0x026853 13:A843: 00        .byte $00
- D - I - - 0x026854 13:A844: C3        .byte $C3   ; <バ>
- D - I - - 0x026855 13:A845: C3        .byte $C3   ; <バ>
- D - I - - 0x026856 13:A846: D0        .byte $D0   ; <ペ>
- D - I - - 0x026857 13:A847: 00        .byte $00
- D - I - - 0x026858 13:A848: 00        .byte $00
- D - I - - 0x026859 13:A849: 00        .byte $00
- D - I - - 0x02685A 13:A84A: 00        .byte $00
- D - I - - 0x02685B 13:A84B: 00        .byte $00
- D - I - - 0x02685C 13:A84C: 00        .byte $00
- D - I - - 0x02685D 13:A84D: 00        .byte $00
- D - I - - 0x02685E 13:A84E: 00        .byte $00
- D - I - - 0x02685F 13:A84F: 00        .byte $00
- D - I - - 0x026860 13:A850: 01        .byte $01   ; <あ>
- D - I - - 0x026861 13:A851: 01        .byte $01   ; <あ>
- D - I - - 0x026862 13:A852: 81        .byte $81   ; <A>
- D - I - - 0x026863 13:A853: 82        .byte $82   ; <B>
- D - I - - 0x026864 13:A854: 01        .byte $01   ; <あ>
- D - I - - 0x026865 13:A855: 01        .byte $01   ; <あ>
- D - I - - 0x026866 13:A856: 81        .byte $81   ; <A>
- D - I - - 0x026867 13:A857: 81        .byte $81   ; <A>
- D - I - - 0x026868 13:A858: 01        .byte $01   ; <あ>
- D - I - - 0x026869 13:A859: 01        .byte $01   ; <あ>
- D - I - - 0x02686A 13:A85A: 81        .byte $81   ; <A>
- D - I - - 0x02686B 13:A85B: 81        .byte $81   ; <A>
- D - I - - 0x02686C 13:A85C: 01        .byte $01   ; <あ>
- D - I - - 0x02686D 13:A85D: 01        .byte $01   ; <あ>
- D - I - - 0x02686E 13:A85E: 0D        .byte $0D   ; <す>
- D - I - - 0x02686F 13:A85F: 0D        .byte $0D   ; <す>
- D - I - - 0x026870 13:A860: 83        .byte $83   ; <C>
- D - I - - 0x026871 13:A861: 86        .byte $86   ; <F>
- D - I - - 0x026872 13:A862: 87        .byte $87   ; <G>
- D - I - - 0x026873 13:A863: 81        .byte $81   ; <A>
- D - I - - 0x026874 13:A864: 81        .byte $81   ; <A>
- D - I - - 0x026875 13:A865: 8C        .byte $8C   ; <M>
- D - I - - 0x026876 13:A866: 8D        .byte $8D   ; <P>
- D - I - - 0x026877 13:A867: A0        .byte $A0   ; <が>
- D - I - - 0x026878 13:A868: 81        .byte $81   ; <A>
- D - I - - 0x026879 13:A869: 8E        .byte $8E   ; <L>
- D - I - - 0x02687A 13:A86A: 8F        .byte $8F   ; <S>
- D - I - - 0x02687B 13:A86B: 81        .byte $81   ; <A>
- D - I - - 0x02687C 13:A86C: 0D        .byte $0D   ; <す>
- D - I - - 0x02687D 13:A86D: A4        .byte $A4   ; <ご>
- D - I - - 0x02687E 13:A86E: 0D        .byte $0D   ; <す>
- D - I - - 0x02687F 13:A86F: 0D        .byte $0D   ; <す>
- D - I - - 0x026880 13:A870: 81        .byte $81   ; <A>
- D - I - - 0x026881 13:A871: 81        .byte $81   ; <A>
- D - I - - 0x026882 13:A872: 84        .byte $84   ; <D>
- D - I - - 0x026883 13:A873: 85        .byte $85   ; <E>
- D - I - - 0x026884 13:A874: A1        .byte $A1   ; <ぎ>
- D - I - - 0x026885 13:A875: A2        .byte $A2   ; <ぐ>
- D - I - - 0x026886 13:A876: A3        .byte $A3   ; <げ>
- D - I - - 0x026887 13:A877: 81        .byte $81   ; <A>
- D - I - - 0x026888 13:A878: 81        .byte $81   ; <A>
- D - I - - 0x026889 13:A879: A8        .byte $A8   ; <ぜ>
- D - I - - 0x02688A 13:A87A: 90        .byte $90   ; <U>
- D - I - - 0x02688B 13:A87B: 91        .byte $91   ; <V>
- D - I - - 0x02688C 13:A87C: 0D        .byte $0D   ; <す>
- D - I - - 0x02688D 13:A87D: 0D        .byte $0D   ; <す>
- D - I - - 0x02688E 13:A87E: 92        .byte $92   ; <W>
- D - I - - 0x02688F 13:A87F: 0D        .byte $0D   ; <す>
- D - I - - 0x026890 13:A880: 01        .byte $01   ; <あ>
- D - I - - 0x026891 13:A881: 01        .byte $01   ; <あ>
- D - I - - 0x026892 13:A882: 19        .byte $19   ; <の>
- D - I - - 0x026893 13:A883: 3C        .byte $3C   ; <9>
- D - I - - 0x026894 13:A884: 01        .byte $01   ; <あ>
- D - I - - 0x026895 13:A885: 01        .byte $01   ; <あ>
- D - I - - 0x026896 13:A886: 0E        .byte $0E   ; <せ>
- D - I - - 0x026897 13:A887: 0A        .byte $0A   ; <こ>
- D - I - - 0x026898 13:A888: 01        .byte $01   ; <あ>
- D - I - - 0x026899 13:A889: 01        .byte $01   ; <あ>
- D - I - - 0x02689A 13:A88A: 10        .byte $10   ; <た>
- D - I - - 0x02689B 13:A88B: AA        .byte $AA   ; <だ>
- D - I - - 0x02689C 13:A88C: 01        .byte $01   ; <あ>
- D - I - - 0x02689D 13:A88D: 01        .byte $01   ; <あ>
- D - I - - 0x02689E 13:A88E: 88        .byte $88   ; <H>
- D - I - - 0x02689F 13:A88F: 89        .byte $89   ; <I>
- D - I - - 0x0268A0 13:A890: 10        .byte $10   ; <た>
- D - I - - 0x0268A1 13:A891: A6        .byte $A6   ; <じ>
- D - I - - 0x0268A2 13:A892: 3C        .byte $3C   ; <9>
- D - I - - 0x0268A3 13:A893: 18        .byte $18   ; <ね>
- D - I - - 0x0268A4 13:A894: A9        .byte $A9   ; <ぞ>
- D - I - - 0x0268A5 13:A895: AC        .byte $AC   ; <づ>
- D - I - - 0x0268A6 13:A896: 0A        .byte $0A   ; <こ>
- D - I - - 0x0268A7 13:A897: 0B        .byte $0B   ; <さ>
- D - I - - 0x0268A8 13:A898: AB        .byte $AB   ; <ぢ>
- D - I - - 0x0268A9 13:A899: AE        .byte $AE   ; <ど>
- D - I - - 0x0268AA 13:A89A: 8B        .byte $8B   ; <K>
- D - I - - 0x0268AB 13:A89B: AD        .byte $AD   ; <で>
- D - I - - 0x0268AC 13:A89C: 8A        .byte $8A   ; <N>
- D - I - - 0x0268AD 13:A89D: 0B        .byte $0B   ; <さ>
- D - I - - 0x0268AE 13:A89E: 0E        .byte $0E   ; <せ>
- D - I - - 0x0268AF 13:A89F: AF        .byte $AF   ; <ば>
- D - I - - 0x0268B0 13:A8A0: 19        .byte $19   ; <の>
- D - I - - 0x0268B1 13:A8A1: B1        .byte $B1   ; <ぶ>
- D - I - - 0x0268B2 13:A8A2: 98        .byte $98
- D - I - - 0x0268B3 13:A8A3: 11        .byte $11   ; <ち>
- D - I - - 0x0268B4 13:A8A4: B2        .byte $B2   ; <べ>
- D - I - - 0x0268B5 13:A8A5: B3        .byte $B3   ; <ぼ>
- D - I - - 0x0268B6 13:A8A6: 9A        .byte $9A
- D - I - - 0x0268B7 13:A8A7: 93        .byte $93   ; <Y>
- D - I - - 0x0268B8 13:A8A8: B8        .byte $B8   ; <ゴ>
- D - I - - 0x0268B9 13:A8A9: B9        .byte $B9   ; <ザ>
- D - I - - 0x0268BA 13:A8AA: 3C        .byte $3C   ; <9>
- D - I - - 0x0268BB 13:A8AB: 99        .byte $99
- D - I - - 0x0268BC 13:A8AC: BA        .byte $BA   ; <ジ>
- D - I - - 0x0268BD 13:A8AD: 13        .byte $13   ; <て>
- D - I - - 0x0268BE 13:A8AE: B0        .byte $B0   ; <び>
- D - I - - 0x0268BF 13:A8AF: 9B        .byte $9B
- D - I - - 0x0268C0 13:A8B0: 3C        .byte $3C   ; <9>
- D - I - - 0x0268C1 13:A8B1: 3C        .byte $3C   ; <9>
- D - I - - 0x0268C2 13:A8B2: 01        .byte $01   ; <あ>
- D - I - - 0x0268C3 13:A8B3: 01        .byte $01   ; <あ>
- D - I - - 0x0268C4 13:A8B4: 0A        .byte $0A   ; <こ>
- D - I - - 0x0268C5 13:A8B5: 12        .byte $12   ; <つ>
- D - I - - 0x0268C6 13:A8B6: 01        .byte $01   ; <あ>
- D - I - - 0x0268C7 13:A8B7: 01        .byte $01   ; <あ>
- D - I - - 0x0268C8 13:A8B8: 18        .byte $18   ; <ね>
- D - I - - 0x0268C9 13:A8B9: 19        .byte $19   ; <の>
- D - I - - 0x0268CA 13:A8BA: 01        .byte $01   ; <あ>
- D - I - - 0x0268CB 13:A8BB: 01        .byte $01   ; <あ>
- D - I - - 0x0268CC 13:A8BC: 0B        .byte $0B   ; <さ>
- D - I - - 0x0268CD 13:A8BD: 0E        .byte $0E   ; <せ>
- D - I - - 0x0268CE 13:A8BE: 01        .byte $01   ; <あ>
- D - I - - 0x0268CF 13:A8BF: 01        .byte $01   ; <あ>
- D - I - - 0x0268D0 13:A8C0: 01        .byte $01   ; <あ>
- D - I - - 0x0268D1 13:A8C1: 01        .byte $01   ; <あ>
- D - I - - 0x0268D2 13:A8C2: 01        .byte $01   ; <あ>
- D - I - - 0x0268D3 13:A8C3: 01        .byte $01   ; <あ>
- D - I - - 0x0268D4 13:A8C4: 01        .byte $01   ; <あ>
- D - I - - 0x0268D5 13:A8C5: 01        .byte $01   ; <あ>
- D - I - - 0x0268D6 13:A8C6: 01        .byte $01   ; <あ>
- D - I - - 0x0268D7 13:A8C7: 01        .byte $01   ; <あ>
- D - I - - 0x0268D8 13:A8C8: 01        .byte $01   ; <あ>
- D - I - - 0x0268D9 13:A8C9: 01        .byte $01   ; <あ>
- D - I - - 0x0268DA 13:A8CA: 01        .byte $01   ; <あ>
- D - I - - 0x0268DB 13:A8CB: 01        .byte $01   ; <あ>
- D - I - - 0x0268DC 13:A8CC: 0D        .byte $0D   ; <す>
- D - I - - 0x0268DD 13:A8CD: 0D        .byte $0D   ; <す>
- D - I - - 0x0268DE 13:A8CE: 01        .byte $01   ; <あ>
- D - I - - 0x0268DF 13:A8CF: 01        .byte $01   ; <あ>
- D - I - - 0x0268E0 13:A8D0: 94        .byte $94
- D - I - - 0x0268E1 13:A8D1: 95        .byte $95
- D - I - - 0x0268E2 13:A8D2: 01        .byte $01   ; <あ>
- D - I - - 0x0268E3 13:A8D3: 01        .byte $01   ; <あ>
- D - I - - 0x0268E4 13:A8D4: 01        .byte $01   ; <あ>
- D - I - - 0x0268E5 13:A8D5: 97        .byte $97
- D - I - - 0x0268E6 13:A8D6: A5        .byte $A5   ; <ざ>
- D - I - - 0x0268E7 13:A8D7: BB        .byte $BB   ; <ズ>
- D - I - - 0x0268E8 13:A8D8: 9C        .byte $9C
- D - I - - 0x0268E9 13:A8D9: 9D        .byte $9D
- D - I - - 0x0268EA 13:A8DA: A7        .byte $A7   ; <ず>
- D - I - - 0x0268EB 13:A8DB: 01        .byte $01   ; <あ>
- D - I - - 0x0268EC 13:A8DC: 0D        .byte $0D   ; <す>
- D - I - - 0x0268ED 13:A8DD: 9F        .byte $9F
- D - I - - 0x0268EE 13:A8DE: 0D        .byte $0D   ; <す>
- D - I - - 0x0268EF 13:A8DF: 0D        .byte $0D   ; <す>
- D - I - - 0x0268F0 13:A8E0: 01        .byte $01   ; <あ>
- D - I - - 0x0268F1 13:A8E1: C0        .byte $C0   ; <ヅ>
- D - I - - 0x0268F2 13:A8E2: C1        .byte $C1   ; <デ>
- D - I - - 0x0268F3 13:A8E3: EA        .byte $EA
- D - I - - 0x0268F4 13:A8E4: BD        .byte $BD   ; <ゾ>
- D - I - - 0x0268F5 13:A8E5: C2        .byte $C2   ; <ド>
- D - I - - 0x0268F6 13:A8E6: C3        .byte $C3   ; <バ>
- D - I - - 0x0268F7 13:A8E7: 01        .byte $01   ; <あ>
- D - I - - 0x0268F8 13:A8E8: 01        .byte $01   ; <あ>
- D - I - - 0x0268F9 13:A8E9: C8        .byte $C8   ; <ぱ>
- D - I - - 0x0268FA 13:A8EA: C9        .byte $C9   ; <ぴ>
- D - I - - 0x0268FB 13:A8EB: 01        .byte $01   ; <あ>
- D - I - - 0x0268FC 13:A8EC: 0D        .byte $0D   ; <す>
- D - I - - 0x0268FD 13:A8ED: 0D        .byte $0D   ; <す>
- D - I - - 0x0268FE 13:A8EE: CB        .byte $CB   ; <ぺ>
- D - I - - 0x0268FF 13:A8EF: 0D        .byte $0D   ; <す>
- D - I - - 0x026900 13:A8F0: EB        .byte $EB
- D - I - - 0x026901 13:A8F1: 01        .byte $01   ; <あ>
- D - I - - 0x026902 13:A8F2: 01        .byte $01   ; <あ>
- D - I - - 0x026903 13:A8F3: 01        .byte $01   ; <あ>
- D - I - - 0x026904 13:A8F4: 01        .byte $01   ; <あ>
- D - I - - 0x026905 13:A8F5: 01        .byte $01   ; <あ>
- D - I - - 0x026906 13:A8F6: 01        .byte $01   ; <あ>
- D - I - - 0x026907 13:A8F7: 01        .byte $01   ; <あ>
- D - I - - 0x026908 13:A8F8: 01        .byte $01   ; <あ>
- D - I - - 0x026909 13:A8F9: 01        .byte $01   ; <あ>
- D - I - - 0x02690A 13:A8FA: 01        .byte $01   ; <あ>
- D - I - - 0x02690B 13:A8FB: 01        .byte $01   ; <あ>
- D - I - - 0x02690C 13:A8FC: 0D        .byte $0D   ; <す>
- D - I - - 0x02690D 13:A8FD: 0D        .byte $0D   ; <す>
- D - I - - 0x02690E 13:A8FE: 01        .byte $01   ; <あ>
- D - I - - 0x02690F 13:A8FF: 01        .byte $01   ; <あ>
- D - I - - 0x026910 13:A900: 01        .byte $01   ; <あ>
- D - I - - 0x026911 13:A901: 01        .byte $01   ; <あ>
- D - I - - 0x026912 13:A902: 10        .byte $10   ; <た>
- D - I - - 0x026913 13:A903: 11        .byte $11   ; <ち>
- D - I - - 0x026914 13:A904: 01        .byte $01   ; <あ>
- D - I - - 0x026915 13:A905: 01        .byte $01   ; <あ>
- D - I - - 0x026916 13:A906: 0A        .byte $0A   ; <こ>
- D - I - - 0x026917 13:A907: 13        .byte $13   ; <て>
- D - I - - 0x026918 13:A908: 01        .byte $01   ; <あ>
- D - I - - 0x026919 13:A909: 01        .byte $01   ; <あ>
- D - I - - 0x02691A 13:A90A: 3C        .byte $3C   ; <9>
- D - I - - 0x02691B 13:A90B: 3C        .byte $3C   ; <9>
- D - I - - 0x02691C 13:A90C: 01        .byte $01   ; <あ>
- D - I - - 0x02691D 13:A90D: 01        .byte $01   ; <あ>
- D - I - - 0x02691E 13:A90E: 0A        .byte $0A   ; <こ>
- D - I - - 0x02691F 13:A90F: 12        .byte $12   ; <つ>
- D - I - - 0x026920 13:A910: 10        .byte $10   ; <た>
- D - I - - 0x026921 13:A911: B5        .byte $B5   ; <ギ>
- D - I - - 0x026922 13:A912: 96        .byte $96
- D - I - - 0x026923 13:A913: 10        .byte $10   ; <た>
- D - I - - 0x026924 13:A914: B6        .byte $B6   ; <グ>
- D - I - - 0x026925 13:A915: B7        .byte $B7   ; <ゲ>
- D - I - - 0x026926 13:A916: 9E        .byte $9E
- D - I - - 0x026927 13:A917: 12        .byte $12   ; <つ>
- D - I - - 0x026928 13:A918: BC        .byte $BC   ; <ゼ>
- D - I - - 0x026929 13:A919: 10        .byte $10   ; <た>
- D - I - - 0x02692A 13:A91A: B4        .byte $B4   ; <ガ>
- D - I - - 0x02692B 13:A91B: E0        .byte $E0
- D - I - - 0x02692C 13:A91C: BE        .byte $BE   ; <ダ>
- D - I - - 0x02692D 13:A91D: BF        .byte $BF   ; <ヂ>
- D - I - - 0x02692E 13:A91E: 12        .byte $12   ; <つ>
- D - I - - 0x02692F 13:A91F: E2        .byte $E2
- D - I - - 0x026930 13:A920: 10        .byte $10   ; <た>
- D - I - - 0x026931 13:A921: 11        .byte $11   ; <ち>
- D - I - - 0x026932 13:A922: E1        .byte $E1
- D - I - - 0x026933 13:A923: 18        .byte $18   ; <ね>
- D - I - - 0x026934 13:A924: 12        .byte $12   ; <つ>
- D - I - - 0x026935 13:A925: 13        .byte $13   ; <て>
- D - I - - 0x026936 13:A926: E3        .byte $E3
- D - I - - 0x026937 13:A927: C4        .byte $C4   ; <ビ>
- D - I - - 0x026938 13:A928: C5        .byte $C5   ; <ブ>
- D - I - - 0x026939 13:A929: D0        .byte $D0   ; <ペ>
- D - I - - 0x02693A 13:A92A: E9        .byte $E9
- D - I - - 0x02693B 13:A92B: C6        .byte $C6   ; <ベ>
- D - I - - 0x02693C 13:A92C: E8        .byte $E8
- D - I - - 0x02693D 13:A92D: 0B        .byte $0B   ; <さ>
- D - I - - 0x02693E 13:A92E: 0E        .byte $0E   ; <せ>
- D - I - - 0x02693F 13:A92F: CC        .byte $CC   ; <ぽ>
- D - I - - 0x026940 13:A930: 19        .byte $19   ; <の>
- D - I - - 0x026941 13:A931: 3C        .byte $3C   ; <9>
- D - I - - 0x026942 13:A932: 01        .byte $01   ; <あ>
- D - I - - 0x026943 13:A933: 01        .byte $01   ; <あ>
- D - I - - 0x026944 13:A934: 0E        .byte $0E   ; <せ>
- D - I - - 0x026945 13:A935: 0A        .byte $0A   ; <こ>
- D - I - - 0x026946 13:A936: 01        .byte $01   ; <あ>
- D - I - - 0x026947 13:A937: 01        .byte $01   ; <あ>
- D - I - - 0x026948 13:A938: C7        .byte $C7   ; <ボ>
- D - I - - 0x026949 13:A939: 11        .byte $11   ; <ち>
- D - I - - 0x02694A 13:A93A: 01        .byte $01   ; <あ>
- D - I - - 0x02694B 13:A93B: 01        .byte $01   ; <あ>
- D - I - - 0x02694C 13:A93C: CD        .byte $CD   ; <パ>
- D - I - - 0x02694D 13:A93D: D2        .byte $D2
- D - I - - 0x02694E 13:A93E: 01        .byte $01   ; <あ>
- D - I - - 0x02694F 13:A93F: 01        .byte $01   ; <あ>
- D - I - - 0x026950 13:A940: 01        .byte $01   ; <あ>
- D - I - - 0x026951 13:A941: 01        .byte $01   ; <あ>
- D - I - - 0x026952 13:A942: 01        .byte $01   ; <あ>
- D - I - - 0x026953 13:A943: 01        .byte $01   ; <あ>
- D - I - - 0x026954 13:A944: 01        .byte $01   ; <あ>
- D - I - - 0x026955 13:A945: 01        .byte $01   ; <あ>
- D - I - - 0x026956 13:A946: 01        .byte $01   ; <あ>
- D - I - - 0x026957 13:A947: 01        .byte $01   ; <あ>
- D - I - - 0x026958 13:A948: 01        .byte $01   ; <あ>
- D - I - - 0x026959 13:A949: 01        .byte $01   ; <あ>
- D - I - - 0x02695A 13:A94A: 01        .byte $01   ; <あ>
- D - I - - 0x02695B 13:A94B: 01        .byte $01   ; <あ>
- D - I - - 0x02695C 13:A94C: 01        .byte $01   ; <あ>
- D - I - - 0x02695D 13:A94D: 01        .byte $01   ; <あ>
- D - I - - 0x02695E 13:A94E: 0D        .byte $0D   ; <す>
- D - I - - 0x02695F 13:A94F: 0D        .byte $0D   ; <す>
- D - I - - 0x026960 13:A950: FA        .byte $FA
- D - I - - 0x026961 13:A951: 01        .byte $01   ; <あ>
- D - I - - 0x026962 13:A952: 01        .byte $01   ; <あ>
- D - I - - 0x026963 13:A953: 01        .byte $01   ; <あ>
- D - I - - 0x026964 13:A954: FA        .byte $FA
- D - I - - 0x026965 13:A955: 01        .byte $01   ; <あ>
- D - I - - 0x026966 13:A956: 01        .byte $01   ; <あ>
- D - I - - 0x026967 13:A957: 01        .byte $01   ; <あ>
- D - I - - 0x026968 13:A958: FA        .byte $FA
- D - I - - 0x026969 13:A959: 01        .byte $01   ; <あ>
- D - I - - 0x02696A 13:A95A: 01        .byte $01   ; <あ>
- D - I - - 0x02696B 13:A95B: 01        .byte $01   ; <あ>
- D - I - - 0x02696C 13:A95C: F7        .byte $F7
- D - I - - 0x02696D 13:A95D: FC        .byte $FC
- D - I - - 0x02696E 13:A95E: 01        .byte $01   ; <あ>
- D - I - - 0x02696F 13:A95F: 01        .byte $01   ; <あ>
- D - I - - 0x026970 13:A960: 3C        .byte $3C   ; <9>
- D - I - - 0x026971 13:A961: 3C        .byte $3C   ; <9>
- D - I - - 0x026972 13:A962: 18        .byte $18   ; <ね>
- D - I - - 0x026973 13:A963: 19        .byte $19   ; <の>
- D - I - - 0x026974 13:A964: 0A        .byte $0A   ; <こ>
- D - I - - 0x026975 13:A965: 12        .byte $12   ; <つ>
- D - I - - 0x026976 13:A966: 0B        .byte $0B   ; <さ>
- D - I - - 0x026977 13:A967: 0E        .byte $0E   ; <せ>
- D - I - - 0x026978 13:A968: F2        .byte $F2
- D - I - - 0x026979 13:A969: 19        .byte $19   ; <の>
- D - I - - 0x02697A 13:A96A: 10        .byte $10   ; <た>
- D - I - - 0x02697B 13:A96B: 3C        .byte $3C   ; <9>
- D - I - - 0x02697C 13:A96C: F8        .byte $F8
- D - I - - 0x02697D 13:A96D: F9        .byte $F9
- D - I - - 0x02697E 13:A96E: 0A        .byte $0A   ; <こ>
- D - I - - 0x02697F 13:A96F: 12        .byte $12   ; <つ>
- D - I - - 0x026980 13:A970: 01        .byte $01   ; <あ>
- D - I - - 0x026981 13:A971: 01        .byte $01   ; <あ>
- D - I - - 0x026982 13:A972: F5        .byte $F5
- D - I - - 0x026983 13:A973: 01        .byte $01   ; <あ>
- D - I - - 0x026984 13:A974: 01        .byte $01   ; <あ>
- D - I - - 0x026985 13:A975: 01        .byte $01   ; <あ>
- D - I - - 0x026986 13:A976: 01        .byte $01   ; <あ>
- D - I - - 0x026987 13:A977: F5        .byte $F5
- D - I - - 0x026988 13:A978: 00        .byte $00
- D - I - - 0x026989 13:A979: 00        .byte $00
- D - I - - 0x02698A 13:A97A: 00        .byte $00
- D - I - - 0x02698B 13:A97B: 00        .byte $00
- D - I - - 0x02698C 13:A97C: 00        .byte $00
- D - I - - 0x02698D 13:A97D: 00        .byte $00
- D - I - - 0x02698E 13:A97E: 00        .byte $00
- D - I - - 0x02698F 13:A97F: 00        .byte $00
- D - I - - 0x026990 13:A980: 01        .byte $01   ; <あ>
- D - I - - 0x026991 13:A981: 01        .byte $01   ; <あ>
- D - I - - 0x026992 13:A982: 01        .byte $01   ; <あ>
- D - I - - 0x026993 13:A983: 01        .byte $01   ; <あ>
- D - I - - 0x026994 13:A984: 01        .byte $01   ; <あ>
- D - I - - 0x026995 13:A985: 01        .byte $01   ; <あ>
- D - I - - 0x026996 13:A986: 01        .byte $01   ; <あ>
- D - I - - 0x026997 13:A987: 01        .byte $01   ; <あ>
- D - I - - 0x026998 13:A988: 01        .byte $01   ; <あ>
- D - I - - 0x026999 13:A989: 01        .byte $01   ; <あ>
- D - I - - 0x02699A 13:A98A: 01        .byte $01   ; <あ>
- D - I - - 0x02699B 13:A98B: 01        .byte $01   ; <あ>
- D - I - - 0x02699C 13:A98C: FB        .byte $FB
- D - I - - 0x02699D 13:A98D: FB        .byte $FB
- D - I - - 0x02699E 13:A98E: FB        .byte $FB
- D - I - - 0x02699F 13:A98F: FB        .byte $FB
- D - I - - 0x0269A0 13:A990: 01        .byte $01   ; <あ>
- D - I - - 0x0269A1 13:A991: B2        .byte $B2   ; <べ>
- D - I - - 0x0269A2 13:A992: 00        .byte $00
- D - I - - 0x0269A3 13:A993: 00        .byte $00
- D - I - - 0x0269A4 13:A994: 01        .byte $01   ; <あ>
- D - I - - 0x0269A5 13:A995: B8        .byte $B8   ; <ゴ>
- D - I - - 0x0269A6 13:A996: 00        .byte $00
- D - I - - 0x0269A7 13:A997: B4        .byte $B4   ; <ガ>
- D - I - - 0x0269A8 13:A998: 01        .byte $01   ; <あ>
- D - I - - 0x0269A9 13:A999: BA        .byte $BA   ; <ジ>
- D - I - - 0x0269AA 13:A99A: 00        .byte $00
- D - I - - 0x0269AB 13:A99B: B6        .byte $B6   ; <グ>
- D - I - - 0x0269AC 13:A99C: 01        .byte $01   ; <あ>
- D - I - - 0x0269AD 13:A99D: 01        .byte $01   ; <あ>
- D - I - - 0x0269AE 13:A99E: F8        .byte $F8
- D - I - - 0x0269AF 13:A99F: B3        .byte $B3   ; <ぼ>
- D - I - - 0x0269B0 13:A9A0: 00        .byte $00
- D - I - - 0x0269B1 13:A9A1: BD        .byte $BD   ; <ゾ>
- D - I - - 0x0269B2 13:A9A2: 00        .byte $00
- D - I - - 0x0269B3 13:A9A3: C0        .byte $C0   ; <ヅ>
- D - I - - 0x0269B4 13:A9A4: B5        .byte $B5   ; <ギ>
- D - I - - 0x0269B5 13:A9A5: BF        .byte $BF   ; <ヂ>
- D - I - - 0x0269B6 13:A9A6: C1        .byte $C1   ; <デ>
- D - I - - 0x0269B7 13:A9A7: C2        .byte $C2   ; <ド>
- D - I - - 0x0269B8 13:A9A8: B7        .byte $B7   ; <ゲ>
- D - I - - 0x0269B9 13:A9A9: 03        .byte $03   ; <う>
- D - I - - 0x0269BA 13:A9AA: 03        .byte $03   ; <う>
- D - I - - 0x0269BB 13:A9AB: 03        .byte $03   ; <う>
- D - I - - 0x0269BC 13:A9AC: 03        .byte $03   ; <う>
- D - I - - 0x0269BD 13:A9AD: 03        .byte $03   ; <う>
- D - I - - 0x0269BE 13:A9AE: 03        .byte $03   ; <う>
- D - I - - 0x0269BF 13:A9AF: 03        .byte $03   ; <う>
- D - I - - 0x0269C0 13:A9B0: 00        .byte $00
- D - I - - 0x0269C1 13:A9B1: C0        .byte $C0   ; <ヅ>
- D - I - - 0x0269C2 13:A9B2: 00        .byte $00
- D - I - - 0x0269C3 13:A9B3: C0        .byte $C0   ; <ヅ>
- D - I - - 0x0269C4 13:A9B4: C3        .byte $C3   ; <バ>
- D - I - - 0x0269C5 13:A9B5: C2        .byte $C2   ; <ド>
- D - I - - 0x0269C6 13:A9B6: C3        .byte $C3   ; <バ>
- D - I - - 0x0269C7 13:A9B7: E2        .byte $E2
- D - I - - 0x0269C8 13:A9B8: 03        .byte $03   ; <う>
- D - I - - 0x0269C9 13:A9B9: 03        .byte $03   ; <う>
- D - I - - 0x0269CA 13:A9BA: 03        .byte $03   ; <う>
- D - I - - 0x0269CB 13:A9BB: 03        .byte $03   ; <う>
- D - I - - 0x0269CC 13:A9BC: 03        .byte $03   ; <う>
- D - I - - 0x0269CD 13:A9BD: 03        .byte $03   ; <う>
- D - I - - 0x0269CE 13:A9BE: 03        .byte $03   ; <う>
- D - I - - 0x0269CF 13:A9BF: 03        .byte $03   ; <う>
- D - I - - 0x0269D0 13:A9C0: C0        .byte $C0   ; <ヅ>
- D - I - - 0x0269D1 13:A9C1: C5        .byte $C5   ; <ブ>
- D - I - - 0x0269D2 13:A9C2: C5        .byte $C5   ; <ブ>
- D - I - - 0x0269D3 13:A9C3: 00        .byte $00
- D - I - - 0x0269D4 13:A9C4: 3C        .byte $3C   ; <9>
- D - I - - 0x0269D5 13:A9C5: C6        .byte $C6   ; <ベ>
- D - I - - 0x0269D6 13:A9C6: C7        .byte $C7   ; <ボ>
- D - I - - 0x0269D7 13:A9C7: 00        .byte $00
- D - I - - 0x0269D8 13:A9C8: 03        .byte $03   ; <う>
- D - I - - 0x0269D9 13:A9C9: 02        .byte $02   ; <い>
- D - I - - 0x0269DA 13:A9CA: 02        .byte $02   ; <い>
- D - I - - 0x0269DB 13:A9CB: E9        .byte $E9
- D - I - - 0x0269DC 13:A9CC: 03        .byte $03   ; <う>
- D - I - - 0x0269DD 13:A9CD: 03        .byte $03   ; <う>
- D - I - - 0x0269DE 13:A9CE: 02        .byte $02   ; <い>
- D - I - - 0x0269DF 13:A9CF: EB        .byte $EB
- D - I - - 0x0269E0 13:A9D0: 00        .byte $00
- D - I - - 0x0269E1 13:A9D1: 00        .byte $00
- D - I - - 0x0269E2 13:A9D2: 00        .byte $00
- D - I - - 0x0269E3 13:A9D3: 00        .byte $00
- D - I - - 0x0269E4 13:A9D4: 00        .byte $00
- D - I - - 0x0269E5 13:A9D5: 00        .byte $00
- D - I - - 0x0269E6 13:A9D6: 00        .byte $00
- D - I - - 0x0269E7 13:A9D7: 00        .byte $00
- D - I - - 0x0269E8 13:A9D8: D0        .byte $D0   ; <ペ>
- D - I - - 0x0269E9 13:A9D9: D1        .byte $D1   ; <ポ>
- D - I - - 0x0269EA 13:A9DA: 00        .byte $00
- D - I - - 0x0269EB 13:A9DB: 00        .byte $00
- D - I - - 0x0269EC 13:A9DC: D2        .byte $D2
- D - I - - 0x0269ED 13:A9DD: D3        .byte $D3
- D - I - - 0x0269EE 13:A9DE: 00        .byte $00
- D - I - - 0x0269EF 13:A9DF: 00        .byte $00
- D - I - - 0x0269F0 13:A9E0: D4        .byte $D4
- D - I - - 0x0269F1 13:A9E1: 01        .byte $01   ; <あ>
- D - I - - 0x0269F2 13:A9E2: 01        .byte $01   ; <あ>
- D - I - - 0x0269F3 13:A9E3: 01        .byte $01   ; <あ>
- D - I - - 0x0269F4 13:A9E4: D6        .byte $D6
- D - I - - 0x0269F5 13:A9E5: D7        .byte $D7
- D - I - - 0x0269F6 13:A9E6: 01        .byte $01   ; <あ>
- D - I - - 0x0269F7 13:A9E7: 01        .byte $01   ; <あ>
- D - I - - 0x0269F8 13:A9E8: 00        .byte $00
- D - I - - 0x0269F9 13:A9E9: 00        .byte $00
- D - I - - 0x0269FA 13:A9EA: D5        .byte $D5
- D - I - - 0x0269FB 13:A9EB: 01        .byte $01   ; <あ>
- D - I - - 0x0269FC 13:A9EC: 00        .byte $00
- D - I - - 0x0269FD 13:A9ED: DE        .byte $DE
- D - I - - 0x0269FE 13:A9EE: DC        .byte $DC
- D - I - - 0x0269FF 13:A9EF: DD        .byte $DD
- D - I - - 0x026A00 13:A9F0: 01        .byte $01   ; <あ>
- D - I - - 0x026A01 13:A9F1: 01        .byte $01   ; <あ>
- D - I - - 0x026A02 13:A9F2: 01        .byte $01   ; <あ>
- D - I - - 0x026A03 13:A9F3: B9        .byte $B9   ; <ザ>
- D - I - - 0x026A04 13:A9F4: 01        .byte $01   ; <あ>
- D - I - - 0x026A05 13:A9F5: 01        .byte $01   ; <あ>
- D - I - - 0x026A06 13:A9F6: 01        .byte $01   ; <あ>
- D - I - - 0x026A07 13:A9F7: BB        .byte $BB   ; <ズ>
- D - I - - 0x026A08 13:A9F8: 01        .byte $01   ; <あ>
- D - I - - 0x026A09 13:A9F9: 01        .byte $01   ; <あ>
- D - I - - 0x026A0A 13:A9FA: 01        .byte $01   ; <あ>
- D - I - - 0x026A0B 13:A9FB: BC        .byte $BC   ; <ゼ>
- D - I - - 0x026A0C 13:A9FC: 01        .byte $01   ; <あ>
- D - I - - 0x026A0D 13:A9FD: 01        .byte $01   ; <あ>
- D - I - - 0x026A0E 13:A9FE: 01        .byte $01   ; <あ>
- D - I - - 0x026A0F 13:A9FF: BE        .byte $BE   ; <ダ>
- D - I - - 0x026A10 13:AA00: 03        .byte $03   ; <う>
- D - I - - 0x026A11 13:AA01: C8        .byte $C8   ; <ぱ>
- D - I - - 0x026A12 13:AA02: C9        .byte $C9   ; <ぴ>
- D - I - - 0x026A13 13:AA03: E3        .byte $E3
- D - I - - 0x026A14 13:AA04: 03        .byte $03   ; <う>
- D - I - - 0x026A15 13:AA05: CA        .byte $CA   ; <ぷ>
- D - I - - 0x026A16 13:AA06: CB        .byte $CB   ; <ぺ>
- D - I - - 0x026A17 13:AA07: E6        .byte $E6
- D - I - - 0x026A18 13:AA08: 03        .byte $03   ; <う>
- D - I - - 0x026A19 13:AA09: E0        .byte $E0
- D - I - - 0x026A1A 13:AA0A: E1        .byte $E1
- D - I - - 0x026A1B 13:AA0B: 03        .byte $03   ; <う>
- D - I - - 0x026A1C 13:AA0C: 03        .byte $03   ; <う>
- D - I - - 0x026A1D 13:AA0D: 03        .byte $03   ; <う>
- D - I - - 0x026A1E 13:AA0E: 03        .byte $03   ; <う>
- D - I - - 0x026A1F 13:AA0F: 03        .byte $03   ; <う>
- D - I - - 0x026A20 13:AA10: 03        .byte $03   ; <う>
- D - I - - 0x026A21 13:AA11: 03        .byte $03   ; <う>
- D - I - - 0x026A22 13:AA12: 03        .byte $03   ; <う>
- D - I - - 0x026A23 13:AA13: 03        .byte $03   ; <う>
- D - I - - 0x026A24 13:AA14: 03        .byte $03   ; <う>
- D - I - - 0x026A25 13:AA15: 03        .byte $03   ; <う>
- D - I - - 0x026A26 13:AA16: 03        .byte $03   ; <う>
- D - I - - 0x026A27 13:AA17: 03        .byte $03   ; <う>
- D - I - - 0x026A28 13:AA18: E8        .byte $E8
- D - I - - 0x026A29 13:AA19: 03        .byte $03   ; <う>
- D - I - - 0x026A2A 13:AA1A: 03        .byte $03   ; <う>
- D - I - - 0x026A2B 13:AA1B: 03        .byte $03   ; <う>
- D - I - - 0x026A2C 13:AA1C: EA        .byte $EA
- D - I - - 0x026A2D 13:AA1D: 03        .byte $03   ; <う>
- D - I - - 0x026A2E 13:AA1E: 03        .byte $03   ; <う>
- D - I - - 0x026A2F 13:AA1F: 03        .byte $03   ; <う>
- D - I - - 0x026A30 13:AA20: CC        .byte $CC   ; <ぽ>
- D - I - - 0x026A31 13:AA21: CD        .byte $CD   ; <パ>
- D - I - - 0x026A32 13:AA22: E7        .byte $E7
- D - I - - 0x026A33 13:AA23: EC        .byte $EC
- D - I - - 0x026A34 13:AA24: CE        .byte $CE   ; <ピ>
- D - I - - 0x026A35 13:AA25: CF        .byte $CF   ; <プ>
- D - I - - 0x026A36 13:AA26: C4        .byte $C4   ; <ビ>
- D - I - - 0x026A37 13:AA27: EE        .byte $EE
- D - I - - 0x026A38 13:AA28: E4        .byte $E4
- D - I - - 0x026A39 13:AA29: E5        .byte $E5
- D - I - - 0x026A3A 13:AA2A: 02        .byte $02   ; <い>
- D - I - - 0x026A3B 13:AA2B: 02        .byte $02   ; <い>
- D - I - - 0x026A3C 13:AA2C: 03        .byte $03   ; <う>
- D - I - - 0x026A3D 13:AA2D: 03        .byte $03   ; <う>
- D - I - - 0x026A3E 13:AA2E: 02        .byte $02   ; <い>
- D - I - - 0x026A3F 13:AA2F: 02        .byte $02   ; <い>
- D - I - - 0x026A40 13:AA30: D8        .byte $D8
- D - I - - 0x026A41 13:AA31: D9        .byte $D9
- D - I - - 0x026A42 13:AA32: 00        .byte $00
- D - I - - 0x026A43 13:AA33: 00        .byte $00
- D - I - - 0x026A44 13:AA34: DA        .byte $DA
- D - I - - 0x026A45 13:AA35: DB        .byte $DB
- D - I - - 0x026A46 13:AA36: 00        .byte $00
- D - I - - 0x026A47 13:AA37: 00        .byte $00
- D - I - - 0x026A48 13:AA38: F0        .byte $F0
- D - I - - 0x026A49 13:AA39: F1        .byte $F1
- D - I - - 0x026A4A 13:AA3A: 00        .byte $00
- D - I - - 0x026A4B 13:AA3B: 00        .byte $00
- D - I - - 0x026A4C 13:AA3C: F2        .byte $F2
- D - I - - 0x026A4D 13:AA3D: F3        .byte $F3
- D - I - - 0x026A4E 13:AA3E: 00        .byte $00
- D - I - - 0x026A4F 13:AA3F: 00        .byte $00
- D - I - - 0x026A50 13:AA40: 00        .byte $00
- D - I - - 0x026A51 13:AA41: 00        .byte $00
- D - I - - 0x026A52 13:AA42: 00        .byte $00
- D - I - - 0x026A53 13:AA43: DF        .byte $DF
- D - I - - 0x026A54 13:AA44: 00        .byte $00
- D - I - - 0x026A55 13:AA45: F4        .byte $F4
- D - I - - 0x026A56 13:AA46: F5        .byte $F5
- D - I - - 0x026A57 13:AA47: 01        .byte $01   ; <あ>
- D - I - - 0x026A58 13:AA48: F6        .byte $F6
- D - I - - 0x026A59 13:AA49: F7        .byte $F7
- D - I - - 0x026A5A 13:AA4A: 01        .byte $01   ; <あ>
- D - I - - 0x026A5B 13:AA4B: 01        .byte $01   ; <あ>
- D - I - - 0x026A5C 13:AA4C: ED        .byte $ED
- D - I - - 0x026A5D 13:AA4D: 01        .byte $01   ; <あ>
- D - I - - 0x026A5E 13:AA4E: 01        .byte $01   ; <あ>
- D - I - - 0x026A5F 13:AA4F: 01        .byte $01   ; <あ>
- D - I - - 0x026A60 13:AA50: 61        .byte $61   ; <ム>
- D - I - - 0x026A61 13:AA51: 61        .byte $61   ; <ム>
- D - I - - 0x026A62 13:AA52: 61        .byte $61   ; <ム>
- D - I - - 0x026A63 13:AA53: 61        .byte $61   ; <ム>
- D - I - - 0x026A64 13:AA54: 63        .byte $63   ; <モ>
- D - I - - 0x026A65 13:AA55: 63        .byte $63   ; <モ>
- D - I - - 0x026A66 13:AA56: 63        .byte $63   ; <モ>
- D - I - - 0x026A67 13:AA57: 63        .byte $63   ; <モ>
- D - I - - 0x026A68 13:AA58: 69        .byte $69   ; <ル>
- D - I - - 0x026A69 13:AA59: 69        .byte $69   ; <ル>
- D - I - - 0x026A6A 13:AA5A: 69        .byte $69   ; <ル>
- D - I - - 0x026A6B 13:AA5B: 69        .byte $69   ; <ル>
- D - I - - 0x026A6C 13:AA5C: 6B        .byte $6B   ; <ロ>
- D - I - - 0x026A6D 13:AA5D: 6B        .byte $6B   ; <ロ>
- D - I - - 0x026A6E 13:AA5E: 6B        .byte $6B   ; <ロ>
- D - I - - 0x026A6F 13:AA5F: 6B        .byte $6B   ; <ロ>
- D - I - - 0x026A70 13:AA60: 69        .byte $69   ; <ル>
- D - I - - 0x026A71 13:AA61: 69        .byte $69   ; <ル>
- D - I - - 0x026A72 13:AA62: 69        .byte $69   ; <ル>
- D - I - - 0x026A73 13:AA63: 69        .byte $69   ; <ル>
- D - I - - 0x026A74 13:AA64: F5        .byte $F5
- D - I - - 0x026A75 13:AA65: F5        .byte $F5
- D - I - - 0x026A76 13:AA66: F5        .byte $F5
- D - I - - 0x026A77 13:AA67: F5        .byte $F5
- D - I - - 0x026A78 13:AA68: F7        .byte $F7
- D - I - - 0x026A79 13:AA69: F7        .byte $F7
- D - I - - 0x026A7A 13:AA6A: F7        .byte $F7
- D - I - - 0x026A7B 13:AA6B: F7        .byte $F7
- D - I - - 0x026A7C 13:AA6C: FD        .byte $FD
- D - I - - 0x026A7D 13:AA6D: FD        .byte $FD
- D - I - - 0x026A7E 13:AA6E: FD        .byte $FD
- D - I - - 0x026A7F 13:AA6F: FD        .byte $FD
- D - I - - 0x026A80 13:AA70: FF        .byte $FF
- D - I - - 0x026A81 13:AA71: FF        .byte $FF
- D - I - - 0x026A82 13:AA72: FF        .byte $FF
- D - I - - 0x026A83 13:AA73: FF        .byte $FF
- D - I - - 0x026A84 13:AA74: FC        .byte $FC
- D - I - - 0x026A85 13:AA75: FC        .byte $FC
- D - I - - 0x026A86 13:AA76: FC        .byte $FC
- D - I - - 0x026A87 13:AA77: FC        .byte $FC
- D - I - - 0x026A88 13:AA78: FE        .byte $FE
- D - I - - 0x026A89 13:AA79: FE        .byte $FE
- D - I - - 0x026A8A 13:AA7A: FE        .byte $FE
- D - I - - 0x026A8B 13:AA7B: FE        .byte $FE
- D - I - - 0x026A8C 13:AA7C: FF        .byte $FF
- D - I - - 0x026A8D 13:AA7D: FF        .byte $FF
- D - I - - 0x026A8E 13:AA7E: FF        .byte $FF
- D - I - - 0x026A8F 13:AA7F: FF        .byte $FF
- D - I - - 0x026A90 13:AA80: FB        .byte $FB
- D - I - - 0x026A91 13:AA81: FB        .byte $FB
- D - I - - 0x026A92 13:AA82: FB        .byte $FB
- D - I - - 0x026A93 13:AA83: FB        .byte $FB
- D - I - - 0x026A94 13:AA84: F6        .byte $F6
- D - I - - 0x026A95 13:AA85: F6        .byte $F6
- D - I - - 0x026A96 13:AA86: F6        .byte $F6
- D - I - - 0x026A97 13:AA87: F6        .byte $F6
- D - I - - 0x026A98 13:AA88: 00        .byte $00
- D - I - - 0x026A99 13:AA89: 00        .byte $00
- D - I - - 0x026A9A 13:AA8A: 00        .byte $00
- D - I - - 0x026A9B 13:AA8B: 00        .byte $00
- D - I - - 0x026A9C 13:AA8C: 00        .byte $00
- D - I - - 0x026A9D 13:AA8D: 00        .byte $00
- D - I - - 0x026A9E 13:AA8E: 00        .byte $00
- D - I - - 0x026A9F 13:AA8F: 00        .byte $00
- D - I - - 0x026AA0 13:AA90: FC        .byte $FC
- D - I - - 0x026AA1 13:AA91: FE        .byte $FE
- D - I - - 0x026AA2 13:AA92: FE        .byte $FE
- D - I - - 0x026AA3 13:AA93: FE        .byte $FE
- D - I - - 0x026AA4 13:AA94: FE        .byte $FE
- D - I - - 0x026AA5 13:AA95: FC        .byte $FC
- D - I - - 0x026AA6 13:AA96: FE        .byte $FE
- D - I - - 0x026AA7 13:AA97: FE        .byte $FE
- D - I - - 0x026AA8 13:AA98: FE        .byte $FE
- D - I - - 0x026AA9 13:AA99: FE        .byte $FE
- D - I - - 0x026AAA 13:AA9A: FC        .byte $FC
- D - I - - 0x026AAB 13:AA9B: FE        .byte $FE
- D - I - - 0x026AAC 13:AA9C: FE        .byte $FE
- D - I - - 0x026AAD 13:AA9D: FE        .byte $FE
- D - I - - 0x026AAE 13:AA9E: FE        .byte $FE
- D - I - - 0x026AAF 13:AA9F: FC        .byte $FC
- D - I - - 0x026AB0 13:AAA0: FC        .byte $FC
- D - I - - 0x026AB1 13:AAA1: FE        .byte $FE
- D - I - - 0x026AB2 13:AAA2: FE        .byte $FE
- D - I - - 0x026AB3 13:AAA3: FE        .byte $FE
- D - I - - 0x026AB4 13:AAA4: FE        .byte $FE
- D - I - - 0x026AB5 13:AAA5: FC        .byte $FC
- D - I - - 0x026AB6 13:AAA6: FE        .byte $FE
- D - I - - 0x026AB7 13:AAA7: FE        .byte $FE
- D - I - - 0x026AB8 13:AAA8: 00        .byte $00
- D - I - - 0x026AB9 13:AAA9: 00        .byte $00
- D - I - - 0x026ABA 13:AAAA: 00        .byte $00
- D - I - - 0x026ABB 13:AAAB: 00        .byte $00
- D - I - - 0x026ABC 13:AAAC: 00        .byte $00
- D - I - - 0x026ABD 13:AAAD: 00        .byte $00
- D - I - - 0x026ABE 13:AAAE: 00        .byte $00
- D - I - - 0x026ABF 13:AAAF: 00        .byte $00
- D - I - - 0x026AC0 13:AAB0: FE        .byte $FE
- D - I - - 0x026AC1 13:AAB1: FE        .byte $FE
- D - I - - 0x026AC2 13:AAB2: FE        .byte $FE
- D - I - - 0x026AC3 13:AAB3: FE        .byte $FE
- D - I - - 0x026AC4 13:AAB4: FE        .byte $FE
- D - I - - 0x026AC5 13:AAB5: FE        .byte $FE
- D - I - - 0x026AC6 13:AAB6: FE        .byte $FE
- D - I - - 0x026AC7 13:AAB7: FE        .byte $FE
- D - I - - 0x026AC8 13:AAB8: FE        .byte $FE
- D - I - - 0x026AC9 13:AAB9: FE        .byte $FE
- D - I - - 0x026ACA 13:AABA: FE        .byte $FE
- D - I - - 0x026ACB 13:AABB: FE        .byte $FE
- D - I - - 0x026ACC 13:AABC: FE        .byte $FE
- D - I - - 0x026ACD 13:AABD: FE        .byte $FE
- D - I - - 0x026ACE 13:AABE: FE        .byte $FE
- D - I - - 0x026ACF 13:AABF: FE        .byte $FE
- D - I - - 0x026AD0 13:AAC0: FE        .byte $FE
- D - I - - 0x026AD1 13:AAC1: FE        .byte $FE
- D - I - - 0x026AD2 13:AAC2: FE        .byte $FE
- D - I - - 0x026AD3 13:AAC3: FE        .byte $FE
- D - I - - 0x026AD4 13:AAC4: FE        .byte $FE
- D - I - - 0x026AD5 13:AAC5: FE        .byte $FE
- D - I - - 0x026AD6 13:AAC6: FE        .byte $FE
- D - I - - 0x026AD7 13:AAC7: FE        .byte $FE
- D - I - - 0x026AD8 13:AAC8: 00        .byte $00
- D - I - - 0x026AD9 13:AAC9: 00        .byte $00
- D - I - - 0x026ADA 13:AACA: 00        .byte $00
- D - I - - 0x026ADB 13:AACB: 00        .byte $00
- D - I - - 0x026ADC 13:AACC: 00        .byte $00
- D - I - - 0x026ADD 13:AACD: 00        .byte $00
- D - I - - 0x026ADE 13:AACE: 00        .byte $00
- D - I - - 0x026ADF 13:AACF: 00        .byte $00
- D - I - - 0x026AE0 13:AAD0: 01        .byte $01   ; <あ>
- D - I - - 0x026AE1 13:AAD1: 01        .byte $01   ; <あ>
- D - I - - 0x026AE2 13:AAD2: 01        .byte $01   ; <あ>
- D - I - - 0x026AE3 13:AAD3: 01        .byte $01   ; <あ>
- D - I - - 0x026AE4 13:AAD4: 01        .byte $01   ; <あ>
- D - I - - 0x026AE5 13:AAD5: 01        .byte $01   ; <あ>
- D - I - - 0x026AE6 13:AAD6: 01        .byte $01   ; <あ>
- D - I - - 0x026AE7 13:AAD7: 01        .byte $01   ; <あ>
- D - I - - 0x026AE8 13:AAD8: 60        .byte $60   ; <ミ>
- D - I - - 0x026AE9 13:AAD9: 60        .byte $60   ; <ミ>
- D - I - - 0x026AEA 13:AADA: 60        .byte $60   ; <ミ>
- D - I - - 0x026AEB 13:AADB: 60        .byte $60   ; <ミ>
- D - I - - 0x026AEC 13:AADC: 62        .byte $62   ; <メ>
- D - I - - 0x026AED 13:AADD: 62        .byte $62   ; <メ>
- D - I - - 0x026AEE 13:AADE: 62        .byte $62   ; <メ>
- D - I - - 0x026AEF 13:AADF: 62        .byte $62   ; <メ>
- D - I - - 0x026AF0 13:AAE0: 68        .byte $68   ; <リ>
- D - I - - 0x026AF1 13:AAE1: 68        .byte $68   ; <リ>
- D - I - - 0x026AF2 13:AAE2: 68        .byte $68   ; <リ>
- D - I - - 0x026AF3 13:AAE3: 68        .byte $68   ; <リ>
- D - I - - 0x026AF4 13:AAE4: 6A        .byte $6A   ; <レ>
- D - I - - 0x026AF5 13:AAE5: 6A        .byte $6A   ; <レ>
- D - I - - 0x026AF6 13:AAE6: 6A        .byte $6A   ; <レ>
- D - I - - 0x026AF7 13:AAE7: 6A        .byte $6A   ; <レ>
- D - I - - 0x026AF8 13:AAE8: 61        .byte $61   ; <ム>
- D - I - - 0x026AF9 13:AAE9: 61        .byte $61   ; <ム>
- D - I - - 0x026AFA 13:AAEA: 61        .byte $61   ; <ム>
- D - I - - 0x026AFB 13:AAEB: 61        .byte $61   ; <ム>
- D - I - - 0x026AFC 13:AAEC: 63        .byte $63   ; <モ>
- D - I - - 0x026AFD 13:AAED: 63        .byte $63   ; <モ>
- D - I - - 0x026AFE 13:AAEE: 63        .byte $63   ; <モ>
- D - I - - 0x026AFF 13:AAEF: 63        .byte $63   ; <モ>
- D - I - - 0x026B00 13:AAF0: 69        .byte $69   ; <ル>
- D - I - - 0x026B01 13:AAF1: 69        .byte $69   ; <ル>
- D - I - - 0x026B02 13:AAF2: 69        .byte $69   ; <ル>
- D - I - - 0x026B03 13:AAF3: 69        .byte $69   ; <ル>
- D - I - - 0x026B04 13:AAF4: 6B        .byte $6B   ; <ロ>
- D - I - - 0x026B05 13:AAF5: 6B        .byte $6B   ; <ロ>
- D - I - - 0x026B06 13:AAF6: 6B        .byte $6B   ; <ロ>
- D - I - - 0x026B07 13:AAF7: 6B        .byte $6B   ; <ロ>
- D - I - - 0x026B08 13:AAF8: 00        .byte $00
- D - I - - 0x026B09 13:AAF9: 00        .byte $00
- D - I - - 0x026B0A 13:AAFA: 00        .byte $00
- D - I - - 0x026B0B 13:AAFB: 00        .byte $00
- D - I - - 0x026B0C 13:AAFC: 00        .byte $00
- D - I - - 0x026B0D 13:AAFD: 00        .byte $00
- D - I - - 0x026B0E 13:AAFE: 00        .byte $00
- D - I - - 0x026B0F 13:AAFF: 00        .byte $00
- D - I - - 0x026B10 13:AB00: 01        .byte $01   ; <あ>
- D - I - - 0x026B11 13:AB01: 01        .byte $01   ; <あ>
- D - I - - 0x026B12 13:AB02: 01        .byte $01   ; <あ>
- D - I - - 0x026B13 13:AB03: 01        .byte $01   ; <あ>
- D - I - - 0x026B14 13:AB04: 01        .byte $01   ; <あ>
- D - I - - 0x026B15 13:AB05: 01        .byte $01   ; <あ>
- D - I - - 0x026B16 13:AB06: 01        .byte $01   ; <あ>
- D - I - - 0x026B17 13:AB07: 01        .byte $01   ; <あ>
- D - I - - 0x026B18 13:AB08: 01        .byte $01   ; <あ>
- D - I - - 0x026B19 13:AB09: 01        .byte $01   ; <あ>
- D - I - - 0x026B1A 13:AB0A: 01        .byte $01   ; <あ>
- D - I - - 0x026B1B 13:AB0B: 01        .byte $01   ; <あ>
- D - I - - 0x026B1C 13:AB0C: 0D        .byte $0D   ; <す>
- D - I - - 0x026B1D 13:AB0D: 0D        .byte $0D   ; <す>
- D - I - - 0x026B1E 13:AB0E: 01        .byte $01   ; <あ>
- D - I - - 0x026B1F 13:AB0F: 1A        .byte $1A   ; <は>
- D - I - - 0x026B20 13:AB10: 01        .byte $01   ; <あ>
- D - I - - 0x026B21 13:AB11: 01        .byte $01   ; <あ>
- D - I - - 0x026B22 13:AB12: 01        .byte $01   ; <あ>
- D - I - - 0x026B23 13:AB13: 01        .byte $01   ; <あ>
- D - I - - 0x026B24 13:AB14: 01        .byte $01   ; <あ>
- D - I - - 0x026B25 13:AB15: 01        .byte $01   ; <あ>
- D - I - - 0x026B26 13:AB16: 01        .byte $01   ; <あ>
- D - I - - 0x026B27 13:AB17: 01        .byte $01   ; <あ>
- D - I - - 0x026B28 13:AB18: 01        .byte $01   ; <あ>
- D - I - - 0x026B29 13:AB19: 01        .byte $01   ; <あ>
- D - I - - 0x026B2A 13:AB1A: 1A        .byte $1A   ; <は>
- D - I - - 0x026B2B 13:AB1B: 1A        .byte $1A   ; <は>
- D - I - - 0x026B2C 13:AB1C: 1A        .byte $1A   ; <は>
- D - I - - 0x026B2D 13:AB1D: 01        .byte $01   ; <あ>
- D - I - - 0x026B2E 13:AB1E: 02        .byte $02   ; <い>
- D - I - - 0x026B2F 13:AB1F: 04        .byte $04   ; <え>
- D - I - - 0x026B30 13:AB20: 01        .byte $01   ; <あ>
- D - I - - 0x026B31 13:AB21: 01        .byte $01   ; <あ>
- D - I - - 0x026B32 13:AB22: 01        .byte $01   ; <あ>
- D - I - - 0x026B33 13:AB23: 01        .byte $01   ; <あ>
- D - I - - 0x026B34 13:AB24: 01        .byte $01   ; <あ>
- D - I - - 0x026B35 13:AB25: 01        .byte $01   ; <あ>
- D - I - - 0x026B36 13:AB26: 01        .byte $01   ; <あ>
- D - I - - 0x026B37 13:AB27: 01        .byte $01   ; <あ>
- D - I - - 0x026B38 13:AB28: 1A        .byte $1A   ; <は>
- D - I - - 0x026B39 13:AB29: 1A        .byte $1A   ; <は>
- D - I - - 0x026B3A 13:AB2A: 01        .byte $01   ; <あ>
- D - I - - 0x026B3B 13:AB2B: 01        .byte $01   ; <あ>
- D - I - - 0x026B3C 13:AB2C: 04        .byte $04   ; <え>
- D - I - - 0x026B3D 13:AB2D: 05        .byte $05   ; <お>
- D - I - - 0x026B3E 13:AB2E: 01        .byte $01   ; <あ>
- D - I - - 0x026B3F 13:AB2F: 1A        .byte $1A   ; <は>
- D - I - - 0x026B40 13:AB30: 01        .byte $01   ; <あ>
- D - I - - 0x026B41 13:AB31: 01        .byte $01   ; <あ>
- D - I - - 0x026B42 13:AB32: 01        .byte $01   ; <あ>
- D - I - - 0x026B43 13:AB33: 01        .byte $01   ; <あ>
- D - I - - 0x026B44 13:AB34: 01        .byte $01   ; <あ>
- D - I - - 0x026B45 13:AB35: 01        .byte $01   ; <あ>
- D - I - - 0x026B46 13:AB36: 01        .byte $01   ; <あ>
- D - I - - 0x026B47 13:AB37: 01        .byte $01   ; <あ>
- D - I - - 0x026B48 13:AB38: 01        .byte $01   ; <あ>
- D - I - - 0x026B49 13:AB39: 01        .byte $01   ; <あ>
- D - I - - 0x026B4A 13:AB3A: 01        .byte $01   ; <あ>
- D - I - - 0x026B4B 13:AB3B: 01        .byte $01   ; <あ>
- D - I - - 0x026B4C 13:AB3C: 1A        .byte $1A   ; <は>
- D - I - - 0x026B4D 13:AB3D: 01        .byte $01   ; <あ>
- D - I - - 0x026B4E 13:AB3E: 0D        .byte $0D   ; <す>
- D - I - - 0x026B4F 13:AB3F: 0D        .byte $0D   ; <す>
- D - I - - 0x026B50 13:AB40: 3C        .byte $3C   ; <9>
- D - I - - 0x026B51 13:AB41: 3C        .byte $3C   ; <9>
- D - I - - 0x026B52 13:AB42: 08        .byte $08   ; <く>
- D - I - - 0x026B53 13:AB43: 09        .byte $09   ; <け>
- D - I - - 0x026B54 13:AB44: 0A        .byte $0A   ; <こ>
- D - I - - 0x026B55 13:AB45: 12        .byte $12   ; <つ>
- D - I - - 0x026B56 13:AB46: 12        .byte $12   ; <つ>
- D - I - - 0x026B57 13:AB47: 0B        .byte $0B   ; <さ>
- D - I - - 0x026B58 13:AB48: 18        .byte $18   ; <ね>
- D - I - - 0x026B59 13:AB49: 19        .byte $19   ; <の>
- D - I - - 0x026B5A 13:AB4A: 10        .byte $10   ; <た>
- D - I - - 0x026B5B 13:AB4B: 3C        .byte $3C   ; <9>
- D - I - - 0x026B5C 13:AB4C: 0B        .byte $0B   ; <さ>
- D - I - - 0x026B5D 13:AB4D: 0E        .byte $0E   ; <せ>
- D - I - - 0x026B5E 13:AB4E: 12        .byte $12   ; <つ>
- D - I - - 0x026B5F 13:AB4F: 0A        .byte $0A   ; <こ>
- D - I - - 0x026B60 13:AB50: 0C        .byte $0C   ; <し>
- D - I - - 0x026B61 13:AB51: 08        .byte $08   ; <く>
- D - I - - 0x026B62 13:AB52: 03        .byte $03   ; <う>
- D - I - - 0x026B63 13:AB53: 06        .byte $06   ; <か>
- D - I - - 0x026B64 13:AB54: 0E        .byte $0E   ; <せ>
- D - I - - 0x026B65 13:AB55: 0A        .byte $0A   ; <こ>
- D - I - - 0x026B66 13:AB56: 17        .byte $17   ; <ぬ>
- D - I - - 0x026B67 13:AB57: 17        .byte $17   ; <ぬ>
- D - I - - 0x026B68 13:AB58: 11        .byte $11   ; <ち>
- D - I - - 0x026B69 13:AB59: 10        .byte $10   ; <た>
- D - I - - 0x026B6A 13:AB5A: 3C        .byte $3C   ; <9>
- D - I - - 0x026B6B 13:AB5B: 3C        .byte $3C   ; <9>
- D - I - - 0x026B6C 13:AB5C: 13        .byte $13   ; <て>
- D - I - - 0x026B6D 13:AB5D: 12        .byte $12   ; <つ>
- D - I - - 0x026B6E 13:AB5E: 71        .byte $71   ; <ュ>
- D - I - - 0x026B6F 13:AB5F: 74        .byte $74   ; <ィ>
- D - I - - 0x026B70 13:AB60: 06        .byte $06   ; <か>
- D - I - - 0x026B71 13:AB61: 07        .byte $07   ; <き>
- D - I - - 0x026B72 13:AB62: 09        .byte $09   ; <け>
- D - I - - 0x026B73 13:AB63: 0C        .byte $0C   ; <し>
- D - I - - 0x026B74 13:AB64: 17        .byte $17   ; <ぬ>
- D - I - - 0x026B75 13:AB65: 17        .byte $17   ; <ぬ>
- D - I - - 0x026B76 13:AB66: 0B        .byte $0B   ; <さ>
- D - I - - 0x026B77 13:AB67: 0E        .byte $0E   ; <せ>
- D - I - - 0x026B78 13:AB68: 18        .byte $18   ; <ね>
- D - I - - 0x026B79 13:AB69: 19        .byte $19   ; <の>
- D - I - - 0x026B7A 13:AB6A: 3C        .byte $3C   ; <9>
- D - I - - 0x026B7B 13:AB6B: 10        .byte $10   ; <た>
- D - I - - 0x026B7C 13:AB6C: 75        .byte $75   ; <ェ>
- D - I - - 0x026B7D 13:AB6D: 0E        .byte $0E   ; <せ>
- D - I - - 0x026B7E 13:AB6E: 12        .byte $12   ; <つ>
- D - I - - 0x026B7F 13:AB6F: 0A        .byte $0A   ; <こ>
- D - I - - 0x026B80 13:AB70: 08        .byte $08   ; <く>
- D - I - - 0x026B81 13:AB71: 08        .byte $08   ; <く>
- D - I - - 0x026B82 13:AB72: 3C        .byte $3C   ; <9>
- D - I - - 0x026B83 13:AB73: 11        .byte $11   ; <ち>
- D - I - - 0x026B84 13:AB74: 12        .byte $12   ; <つ>
- D - I - - 0x026B85 13:AB75: 0A        .byte $0A   ; <こ>
- D - I - - 0x026B86 13:AB76: 0A        .byte $0A   ; <こ>
- D - I - - 0x026B87 13:AB77: 13        .byte $13   ; <て>
- D - I - - 0x026B88 13:AB78: 11        .byte $11   ; <ち>
- D - I - - 0x026B89 13:AB79: 10        .byte $10   ; <た>
- D - I - - 0x026B8A 13:AB7A: 3C        .byte $3C   ; <9>
- D - I - - 0x026B8B 13:AB7B: 3C        .byte $3C   ; <9>
- D - I - - 0x026B8C 13:AB7C: 13        .byte $13   ; <て>
- D - I - - 0x026B8D 13:AB7D: 0A        .byte $0A   ; <こ>
- D - I - - 0x026B8E 13:AB7E: 12        .byte $12   ; <つ>
- D - I - - 0x026B8F 13:AB7F: 12        .byte $12   ; <つ>
- D - I - - 0x026B90 13:AB80: 01        .byte $01   ; <あ>
- D - I - - 0x026B91 13:AB81: 01        .byte $01   ; <あ>
- D - I - - 0x026B92 13:AB82: 01        .byte $01   ; <あ>
- D - I - - 0x026B93 13:AB83: 01        .byte $01   ; <あ>
- D - I - - 0x026B94 13:AB84: 01        .byte $01   ; <あ>
- D - I - - 0x026B95 13:AB85: 01        .byte $01   ; <あ>
- D - I - - 0x026B96 13:AB86: 01        .byte $01   ; <あ>
- D - I - - 0x026B97 13:AB87: 01        .byte $01   ; <あ>
- D - I - - 0x026B98 13:AB88: 16        .byte $16   ; <に>
- D - I - - 0x026B99 13:AB89: 16        .byte $16   ; <に>
- D - I - - 0x026B9A 13:AB8A: 16        .byte $16   ; <に>
- D - I - - 0x026B9B 13:AB8B: 16        .byte $16   ; <に>
- D - I - - 0x026B9C 13:AB8C: 01        .byte $01   ; <あ>
- D - I - - 0x026B9D 13:AB8D: 01        .byte $01   ; <あ>
- D - I - - 0x026B9E 13:AB8E: 01        .byte $01   ; <あ>
- D - I - - 0x026B9F 13:AB8F: 01        .byte $01   ; <あ>
- - - - - - 0x026BA0 13:AB90: 00        .byte $00
- - - - - - 0x026BA1 13:AB91: 00        .byte $00
- - - - - - 0x026BA2 13:AB92: 00        .byte $00
- - - - - - 0x026BA3 13:AB93: 00        .byte $00
- - - - - - 0x026BA4 13:AB94: 00        .byte $00
- - - - - - 0x026BA5 13:AB95: 00        .byte $00
- - - - - - 0x026BA6 13:AB96: 00        .byte $00
- - - - - - 0x026BA7 13:AB97: 00        .byte $00
- - - - - - 0x026BA8 13:AB98: 00        .byte $00
- - - - - - 0x026BA9 13:AB99: 00        .byte $00
- - - - - - 0x026BAA 13:AB9A: 00        .byte $00
- - - - - - 0x026BAB 13:AB9B: 00        .byte $00
- - - - - - 0x026BAC 13:AB9C: 00        .byte $00
- - - - - - 0x026BAD 13:AB9D: 00        .byte $00
- - - - - - 0x026BAE 13:AB9E: 00        .byte $00
- - - - - - 0x026BAF 13:AB9F: 00        .byte $00
- D - I - - 0x026BB0 13:ABA0: 00        .byte $00
- D - I - - 0x026BB1 13:ABA1: 00        .byte $00
- D - I - - 0x026BB2 13:ABA2: 00        .byte $00
- D - I - - 0x026BB3 13:ABA3: 00        .byte $00
- D - I - - 0x026BB4 13:ABA4: 00        .byte $00
- D - I - - 0x026BB5 13:ABA5: 00        .byte $00
- D - I - - 0x026BB6 13:ABA6: 00        .byte $00
- D - I - - 0x026BB7 13:ABA7: 01        .byte $01   ; <あ>
- D - I - - 0x026BB8 13:ABA8: 00        .byte $00
- D - I - - 0x026BB9 13:ABA9: 00        .byte $00
- D - I - - 0x026BBA 13:ABAA: 00        .byte $00
- D - I - - 0x026BBB 13:ABAB: 01        .byte $01   ; <あ>
- D - I - - 0x026BBC 13:ABAC: 00        .byte $00
- D - I - - 0x026BBD 13:ABAD: 00        .byte $00
- D - I - - 0x026BBE 13:ABAE: 00        .byte $00
- D - I - - 0x026BBF 13:ABAF: 01        .byte $01   ; <あ>
- D - I - - 0x026BC0 13:ABB0: 00        .byte $00
- D - I - - 0x026BC1 13:ABB1: 00        .byte $00
- D - I - - 0x026BC2 13:ABB2: 00        .byte $00
- D - I - - 0x026BC3 13:ABB3: 00        .byte $00
- D - I - - 0x026BC4 13:ABB4: 01        .byte $01   ; <あ>
- D - I - - 0x026BC5 13:ABB5: 00        .byte $00
- D - I - - 0x026BC6 13:ABB6: 00        .byte $00
- D - I - - 0x026BC7 13:ABB7: 00        .byte $00
- D - I - - 0x026BC8 13:ABB8: 01        .byte $01   ; <あ>
- D - I - - 0x026BC9 13:ABB9: 00        .byte $00
- D - I - - 0x026BCA 13:ABBA: 00        .byte $00
- D - I - - 0x026BCB 13:ABBB: 00        .byte $00
- D - I - - 0x026BCC 13:ABBC: 01        .byte $01   ; <あ>
- D - I - - 0x026BCD 13:ABBD: 00        .byte $00
- D - I - - 0x026BCE 13:ABBE: 00        .byte $00
- D - I - - 0x026BCF 13:ABBF: 00        .byte $00
- D - I - - 0x026BD0 13:ABC0: 00        .byte $00
- D - I - - 0x026BD1 13:ABC1: 00        .byte $00
- D - I - - 0x026BD2 13:ABC2: 00        .byte $00
- D - I - - 0x026BD3 13:ABC3: 00        .byte $00
- D - I - - 0x026BD4 13:ABC4: 01        .byte $01   ; <あ>
- D - I - - 0x026BD5 13:ABC5: 01        .byte $01   ; <あ>
- D - I - - 0x026BD6 13:ABC6: 01        .byte $01   ; <あ>
- D - I - - 0x026BD7 13:ABC7: 01        .byte $01   ; <あ>
- D - I - - 0x026BD8 13:ABC8: 01        .byte $01   ; <あ>
- D - I - - 0x026BD9 13:ABC9: 01        .byte $01   ; <あ>
- D - I - - 0x026BDA 13:ABCA: 01        .byte $01   ; <あ>
- D - I - - 0x026BDB 13:ABCB: 01        .byte $01   ; <あ>
- D - I - - 0x026BDC 13:ABCC: 01        .byte $01   ; <あ>
- D - I - - 0x026BDD 13:ABCD: 01        .byte $01   ; <あ>
- D - I - - 0x026BDE 13:ABCE: 01        .byte $01   ; <あ>
- D - I - - 0x026BDF 13:ABCF: 01        .byte $01   ; <あ>
- D - I - - 0x026BE0 13:ABD0: 00        .byte $00
- D - I - - 0x026BE1 13:ABD1: 00        .byte $00
- D - I - - 0x026BE2 13:ABD2: 00        .byte $00
- D - I - - 0x026BE3 13:ABD3: 01        .byte $01   ; <あ>
- D - I - - 0x026BE4 13:ABD4: 00        .byte $00
- D - I - - 0x026BE5 13:ABD5: 00        .byte $00
- D - I - - 0x026BE6 13:ABD6: 00        .byte $00
- D - I - - 0x026BE7 13:ABD7: 78        .byte $78   ; <?>
- D - I - - 0x026BE8 13:ABD8: 00        .byte $00
- D - I - - 0x026BE9 13:ABD9: 00        .byte $00
- D - I - - 0x026BEA 13:ABDA: 00        .byte $00
- D - I - - 0x026BEB 13:ABDB: 7A        .byte $7A   ; <、>
- D - I - - 0x026BEC 13:ABDC: 00        .byte $00
- D - I - - 0x026BED 13:ABDD: 00        .byte $00
- D - I - - 0x026BEE 13:ABDE: 00        .byte $00
- D - I - - 0x026BEF 13:ABDF: 00        .byte $00
- D - I - - 0x026BF0 13:ABE0: 73        .byte $73   ; <ヮ>
- D - I - - 0x026BF1 13:ABE1: 76        .byte $76   ; <ォ>
- D - I - - 0x026BF2 13:ABE2: 01        .byte $01   ; <あ>
- D - I - - 0x026BF3 13:ABE3: 01        .byte $01   ; <あ>
- D - I - - 0x026BF4 13:ABE4: 79        .byte $79   ; <!>
- D - I - - 0x026BF5 13:ABE5: 7C        .byte $7C   ; <~>
- D - I - - 0x026BF6 13:ABE6: 4A        .byte $4A   ; <コ>
- D - I - - 0x026BF7 13:ABE7: 6F        .byte $6F   ; <ッ>
- D - I - - 0x026BF8 13:ABE8: 7B        .byte $7B   ; <。>
- D - I - - 0x026BF9 13:ABE9: 7E        .byte $7E   ; <.>
- D - I - - 0x026BFA 13:ABEA: 70        .byte $70   ; <ャ>
- D - I - - 0x026BFB 13:ABEB: 71        .byte $71   ; <ュ>
- D - I - - 0x026BFC 13:ABEC: 00        .byte $00
- D - I - - 0x026BFD 13:ABED: 00        .byte $00
- D - I - - 0x026BFE 13:ABEE: 00        .byte $00
- D - I - - 0x026BFF 13:ABEF: 00        .byte $00
- D - I - - 0x026C00 13:ABF0: 01        .byte $01   ; <あ>
- D - I - - 0x026C01 13:ABF1: 01        .byte $01   ; <あ>
- D - I - - 0x026C02 13:ABF2: 01        .byte $01   ; <あ>
- D - I - - 0x026C03 13:ABF3: 01        .byte $01   ; <あ>
- D - I - - 0x026C04 13:ABF4: 70        .byte $70   ; <ャ>
- D - I - - 0x026C05 13:ABF5: 74        .byte $74   ; <ィ>
- D - I - - 0x026C06 13:ABF6: 12        .byte $12   ; <つ>
- D - I - - 0x026C07 13:ABF7: 70        .byte $70   ; <ャ>
- D - I - - 0x026C08 13:ABF8: 70        .byte $70   ; <ャ>
- D - I - - 0x026C09 13:ABF9: 74        .byte $74   ; <ィ>
- D - I - - 0x026C0A 13:ABFA: 12        .byte $12   ; <つ>
- D - I - - 0x026C0B 13:ABFB: 70        .byte $70   ; <ャ>
- D - I - - 0x026C0C 13:ABFC: 00        .byte $00
- D - I - - 0x026C0D 13:ABFD: 00        .byte $00
- D - I - - 0x026C0E 13:ABFE: 00        .byte $00
- D - I - - 0x026C0F 13:ABFF: 00        .byte $00
- D - I - - 0x026C10 13:AC00: 77        .byte $77   ; <:>
- D - I - - 0x026C11 13:AC01: 00        .byte $00
- D - I - - 0x026C12 13:AC02: 00        .byte $00
- D - I - - 0x026C13 13:AC03: 00        .byte $00
- D - I - - 0x026C14 13:AC04: 70        .byte $70   ; <ャ>
- D - I - - 0x026C15 13:AC05: 00        .byte $00
- D - I - - 0x026C16 13:AC06: 00        .byte $00
- D - I - - 0x026C17 13:AC07: 00        .byte $00
- D - I - - 0x026C18 13:AC08: 72        .byte $72   ; <ョ>
- D - I - - 0x026C19 13:AC09: 00        .byte $00
- D - I - - 0x026C1A 13:AC0A: 00        .byte $00
- D - I - - 0x026C1B 13:AC0B: 00        .byte $00
- D - I - - 0x026C1C 13:AC0C: 00        .byte $00
- D - I - - 0x026C1D 13:AC0D: 00        .byte $00
- D - I - - 0x026C1E 13:AC0E: 00        .byte $00
- D - I - - 0x026C1F 13:AC0F: 00        .byte $00
- D - I - - 0x026C20 13:AC10: 77        .byte $77   ; <:>
- D - I - - 0x026C21 13:AC11: 00        .byte $00
- D - I - - 0x026C22 13:AC12: 00        .byte $00
- D - I - - 0x026C23 13:AC13: 00        .byte $00
- D - I - - 0x026C24 13:AC14: 7D        .byte $7D   ; <ー>
- D - I - - 0x026C25 13:AC15: 00        .byte $00
- D - I - - 0x026C26 13:AC16: 00        .byte $00
- D - I - - 0x026C27 13:AC17: 00        .byte $00
- D - I - - 0x026C28 13:AC18: 7F        .byte $7F   ; <,>
- D - I - - 0x026C29 13:AC19: 00        .byte $00
- D - I - - 0x026C2A 13:AC1A: 00        .byte $00
- D - I - - 0x026C2B 13:AC1B: 00        .byte $00
- D - I - - 0x026C2C 13:AC1C: 00        .byte $00
- D - I - - 0x026C2D 13:AC1D: 00        .byte $00
- D - I - - 0x026C2E 13:AC1E: 00        .byte $00
- D - I - - 0x026C2F 13:AC1F: 00        .byte $00
- D - I - - 0x026C30 13:AC20: 01        .byte $01   ; <あ>
- D - I - - 0x026C31 13:AC21: 01        .byte $01   ; <あ>
- D - I - - 0x026C32 13:AC22: 01        .byte $01   ; <あ>
- D - I - - 0x026C33 13:AC23: 01        .byte $01   ; <あ>
- D - I - - 0x026C34 13:AC24: 01        .byte $01   ; <あ>
- D - I - - 0x026C35 13:AC25: 01        .byte $01   ; <あ>
- D - I - - 0x026C36 13:AC26: 01        .byte $01   ; <あ>
- D - I - - 0x026C37 13:AC27: 01        .byte $01   ; <あ>
- D - I - - 0x026C38 13:AC28: 01        .byte $01   ; <あ>
- D - I - - 0x026C39 13:AC29: 01        .byte $01   ; <あ>
- D - I - - 0x026C3A 13:AC2A: 01        .byte $01   ; <あ>
- D - I - - 0x026C3B 13:AC2B: 01        .byte $01   ; <あ>
- D - I - - 0x026C3C 13:AC2C: 01        .byte $01   ; <あ>
- D - I - - 0x026C3D 13:AC2D: 01        .byte $01   ; <あ>
- D - I - - 0x026C3E 13:AC2E: 01        .byte $01   ; <あ>
- D - I - - 0x026C3F 13:AC2F: 01        .byte $01   ; <あ>
- D - I - - 0x026C40 13:AC30: 01        .byte $01   ; <あ>
- D - I - - 0x026C41 13:AC31: 01        .byte $01   ; <あ>
- D - I - - 0x026C42 13:AC32: 01        .byte $01   ; <あ>
- D - I - - 0x026C43 13:AC33: 01        .byte $01   ; <あ>
- D - I - - 0x026C44 13:AC34: 01        .byte $01   ; <あ>
- D - I - - 0x026C45 13:AC35: 01        .byte $01   ; <あ>
- D - I - - 0x026C46 13:AC36: 01        .byte $01   ; <あ>
- D - I - - 0x026C47 13:AC37: 01        .byte $01   ; <あ>
- D - I - - 0x026C48 13:AC38: 03        .byte $03   ; <う>
- D - I - - 0x026C49 13:AC39: 01        .byte $01   ; <あ>
- D - I - - 0x026C4A 13:AC3A: 01        .byte $01   ; <あ>
- D - I - - 0x026C4B 13:AC3B: 01        .byte $01   ; <あ>
- D - I - - 0x026C4C 13:AC3C: 03        .byte $03   ; <う>
- D - I - - 0x026C4D 13:AC3D: 03        .byte $03   ; <う>
- D - I - - 0x026C4E 13:AC3E: 01        .byte $01   ; <あ>
- D - I - - 0x026C4F 13:AC3F: 01        .byte $01   ; <あ>
- D - I - - 0x026C50 13:AC40: 01        .byte $01   ; <あ>
- D - I - - 0x026C51 13:AC41: 01        .byte $01   ; <あ>
- D - I - - 0x026C52 13:AC42: 01        .byte $01   ; <あ>
- D - I - - 0x026C53 13:AC43: 01        .byte $01   ; <あ>
- D - I - - 0x026C54 13:AC44: 01        .byte $01   ; <あ>
- D - I - - 0x026C55 13:AC45: 01        .byte $01   ; <あ>
- D - I - - 0x026C56 13:AC46: 01        .byte $01   ; <あ>
- D - I - - 0x026C57 13:AC47: 01        .byte $01   ; <あ>
- D - I - - 0x026C58 13:AC48: 01        .byte $01   ; <あ>
- D - I - - 0x026C59 13:AC49: 01        .byte $01   ; <あ>
- D - I - - 0x026C5A 13:AC4A: 01        .byte $01   ; <あ>
- D - I - - 0x026C5B 13:AC4B: 01        .byte $01   ; <あ>
- D - I - - 0x026C5C 13:AC4C: 01        .byte $01   ; <あ>
- D - I - - 0x026C5D 13:AC4D: 01        .byte $01   ; <あ>
- D - I - - 0x026C5E 13:AC4E: 01        .byte $01   ; <あ>
- D - I - - 0x026C5F 13:AC4F: 01        .byte $01   ; <あ>
- D - I - - 0x026C60 13:AC50: 20        .byte $20   ; <み>
- D - I - - 0x026C61 13:AC51: 21        .byte $21   ; <む>
- D - I - - 0x026C62 13:AC52: 03        .byte $03   ; <う>
- D - I - - 0x026C63 13:AC53: 03        .byte $03   ; <う>
- D - I - - 0x026C64 13:AC54: 22        .byte $22   ; <め>
- D - I - - 0x026C65 13:AC55: 29        .byte $29   ; <る>
- D - I - - 0x026C66 13:AC56: 09        .byte $09   ; <け>
- D - I - - 0x026C67 13:AC57: 09        .byte $09   ; <け>
- D - I - - 0x026C68 13:AC58: 28        .byte $28   ; <り>
- D - I - - 0x026C69 13:AC59: 29        .byte $29   ; <る>
- D - I - - 0x026C6A 13:AC5A: 03        .byte $03   ; <う>
- D - I - - 0x026C6B 13:AC5B: 03        .byte $03   ; <う>
- D - I - - 0x026C6C 13:AC5C: 2A        .byte $2A   ; <れ>
- D - I - - 0x026C6D 13:AC5D: 2B        .byte $2B   ; <ろ>
- D - I - - 0x026C6E 13:AC5E: 03        .byte $03   ; <う>
- D - I - - 0x026C6F 13:AC5F: 03        .byte $03   ; <う>
- D - I - - 0x026C70 13:AC60: 23        .byte $23   ; <も>
- D - I - - 0x026C71 13:AC61: 03        .byte $03   ; <う>
- D - I - - 0x026C72 13:AC62: 01        .byte $01   ; <あ>
- D - I - - 0x026C73 13:AC63: 01        .byte $01   ; <あ>
- D - I - - 0x026C74 13:AC64: 09        .byte $09   ; <け>
- D - I - - 0x026C75 13:AC65: 09        .byte $09   ; <け>
- D - I - - 0x026C76 13:AC66: 27        .byte $27   ; <ら>
- D - I - - 0x026C77 13:AC67: 01        .byte $01   ; <あ>
- D - I - - 0x026C78 13:AC68: 03        .byte $03   ; <う>
- D - I - - 0x026C79 13:AC69: 2C        .byte $2C   ; <わ>
- D - I - - 0x026C7A 13:AC6A: 2D        .byte $2D   ; <を>
- D - I - - 0x026C7B 13:AC6B: 24        .byte $24   ; <や>
- D - I - - 0x026C7C 13:AC6C: 03        .byte $03   ; <う>
- D - I - - 0x026C7D 13:AC6D: 2E        .byte $2E   ; <ん>
- D - I - - 0x026C7E 13:AC6E: 2F        .byte $2F   ; <っ>
- D - I - - 0x026C7F 13:AC6F: 26        .byte $26   ; <よ>
- D - I - - 0x026C80 13:AC70: 01        .byte $01   ; <あ>
- D - I - - 0x026C81 13:AC71: 01        .byte $01   ; <あ>
- D - I - - 0x026C82 13:AC72: 01        .byte $01   ; <あ>
- D - I - - 0x026C83 13:AC73: 01        .byte $01   ; <あ>
- D - I - - 0x026C84 13:AC74: 01        .byte $01   ; <あ>
- D - I - - 0x026C85 13:AC75: 01        .byte $01   ; <あ>
- D - I - - 0x026C86 13:AC76: 01        .byte $01   ; <あ>
- D - I - - 0x026C87 13:AC77: 01        .byte $01   ; <あ>
- D - I - - 0x026C88 13:AC78: 01        .byte $01   ; <あ>
- D - I - - 0x026C89 13:AC79: 01        .byte $01   ; <あ>
- D - I - - 0x026C8A 13:AC7A: 01        .byte $01   ; <あ>
- D - I - - 0x026C8B 13:AC7B: 01        .byte $01   ; <あ>
- D - I - - 0x026C8C 13:AC7C: 25        .byte $25   ; <ゆ>
- D - I - - 0x026C8D 13:AC7D: 0E        .byte $0E   ; <せ>
- D - I - - 0x026C8E 13:AC7E: 01        .byte $01   ; <あ>
- D - I - - 0x026C8F 13:AC7F: 01        .byte $01   ; <あ>
- D - I - - 0x026C90 13:AC80: 01        .byte $01   ; <あ>
- D - I - - 0x026C91 13:AC81: 01        .byte $01   ; <あ>
- D - I - - 0x026C92 13:AC82: 01        .byte $01   ; <あ>
- D - I - - 0x026C93 13:AC83: 01        .byte $01   ; <あ>
- D - I - - 0x026C94 13:AC84: 01        .byte $01   ; <あ>
- D - I - - 0x026C95 13:AC85: 01        .byte $01   ; <あ>
- D - I - - 0x026C96 13:AC86: 01        .byte $01   ; <あ>
- D - I - - 0x026C97 13:AC87: 01        .byte $01   ; <あ>
- D - I - - 0x026C98 13:AC88: 08        .byte $08   ; <く>
- D - I - - 0x026C99 13:AC89: 02        .byte $02   ; <い>
- D - I - - 0x026C9A 13:AC8A: 02        .byte $02   ; <い>
- D - I - - 0x026C9B 13:AC8B: 03        .byte $03   ; <う>
- D - I - - 0x026C9C 13:AC8C: 0A        .byte $0A   ; <こ>
- D - I - - 0x026C9D 13:AC8D: 0B        .byte $0B   ; <さ>
- D - I - - 0x026C9E 13:AC8E: 03        .byte $03   ; <う>
- D - I - - 0x026C9F 13:AC8F: 03        .byte $03   ; <う>
- D - I - - 0x026CA0 13:AC90: 01        .byte $01   ; <あ>
- D - I - - 0x026CA1 13:AC91: 01        .byte $01   ; <あ>
- D - I - - 0x026CA2 13:AC92: 01        .byte $01   ; <あ>
- D - I - - 0x026CA3 13:AC93: 01        .byte $01   ; <あ>
- D - I - - 0x026CA4 13:AC94: 01        .byte $01   ; <あ>
- D - I - - 0x026CA5 13:AC95: 01        .byte $01   ; <あ>
- D - I - - 0x026CA6 13:AC96: 01        .byte $01   ; <あ>
- D - I - - 0x026CA7 13:AC97: 01        .byte $01   ; <あ>
- D - I - - 0x026CA8 13:AC98: 01        .byte $01   ; <あ>
- D - I - - 0x026CA9 13:AC99: 01        .byte $01   ; <あ>
- D - I - - 0x026CAA 13:AC9A: 01        .byte $01   ; <あ>
- D - I - - 0x026CAB 13:AC9B: 03        .byte $03   ; <う>
- D - I - - 0x026CAC 13:AC9C: 01        .byte $01   ; <あ>
- D - I - - 0x026CAD 13:AC9D: 01        .byte $01   ; <あ>
- D - I - - 0x026CAE 13:AC9E: 03        .byte $03   ; <う>
- D - I - - 0x026CAF 13:AC9F: 03        .byte $03   ; <う>
- D - I - - 0x026CB0 13:ACA0: 01        .byte $01   ; <あ>
- D - I - - 0x026CB1 13:ACA1: 01        .byte $01   ; <あ>
- D - I - - 0x026CB2 13:ACA2: 01        .byte $01   ; <あ>
- D - I - - 0x026CB3 13:ACA3: 01        .byte $01   ; <あ>
- D - I - - 0x026CB4 13:ACA4: 01        .byte $01   ; <あ>
- D - I - - 0x026CB5 13:ACA5: 01        .byte $01   ; <あ>
- D - I - - 0x026CB6 13:ACA6: 01        .byte $01   ; <あ>
- D - I - - 0x026CB7 13:ACA7: 01        .byte $01   ; <あ>
- D - I - - 0x026CB8 13:ACA8: 03        .byte $03   ; <う>
- D - I - - 0x026CB9 13:ACA9: 02        .byte $02   ; <い>
- D - I - - 0x026CBA 13:ACAA: 02        .byte $02   ; <い>
- D - I - - 0x026CBB 13:ACAB: 18        .byte $18   ; <ね>
- D - I - - 0x026CBC 13:ACAC: 03        .byte $03   ; <う>
- D - I - - 0x026CBD 13:ACAD: 03        .byte $03   ; <う>
- D - I - - 0x026CBE 13:ACAE: 1B        .byte $1B   ; <ひ>
- D - I - - 0x026CBF 13:ACAF: 1A        .byte $1A   ; <は>
- D - I - - 0x026CC0 13:ACB0: 01        .byte $01   ; <あ>
- D - I - - 0x026CC1 13:ACB1: 01        .byte $01   ; <あ>
- D - I - - 0x026CC2 13:ACB2: 03        .byte $03   ; <う>
- D - I - - 0x026CC3 13:ACB3: 33        .byte $33   ; <0>
- D - I - - 0x026CC4 13:ACB4: 01        .byte $01   ; <あ>
- D - I - - 0x026CC5 13:ACB5: 37        .byte $37   ; <4>
- D - I - - 0x026CC6 13:ACB6: 09        .byte $09   ; <け>
- D - I - - 0x026CC7 13:ACB7: 09        .byte $09   ; <け>
- D - I - - 0x026CC8 13:ACB8: 34        .byte $34   ; <1>
- D - I - - 0x026CC9 13:ACB9: 3D        .byte $3D   ; <+>
- D - I - - 0x026CCA 13:ACBA: 3C        .byte $3C   ; <9>
- D - I - - 0x026CCB 13:ACBB: 03        .byte $03   ; <う>
- D - I - - 0x026CCC 13:ACBC: 36        .byte $36   ; <3>
- D - I - - 0x026CCD 13:ACBD: 3F        .byte $3F   ; <•>
- D - I - - 0x026CCE 13:ACBE: 3E        .byte $3E   ; <Jr>
- D - I - - 0x026CCF 13:ACBF: 03        .byte $03   ; <う>
- D - I - - 0x026CD0 13:ACC0: 03        .byte $03   ; <う>
- D - I - - 0x026CD1 13:ACC1: 03        .byte $03   ; <う>
- D - I - - 0x026CD2 13:ACC2: 31        .byte $31   ; <ゅ>
- D - I - - 0x026CD3 13:ACC3: 30        .byte $30   ; <ゃ>
- D - I - - 0x026CD4 13:ACC4: 09        .byte $09   ; <け>
- D - I - - 0x026CD5 13:ACC5: 09        .byte $09   ; <け>
- D - I - - 0x026CD6 13:ACC6: 39        .byte $39   ; <6>
- D - I - - 0x026CD7 13:ACC7: 32        .byte $32   ; <ょ>
- D - I - - 0x026CD8 13:ACC8: 03        .byte $03   ; <う>
- D - I - - 0x026CD9 13:ACC9: 03        .byte $03   ; <う>
- D - I - - 0x026CDA 13:ACCA: 39        .byte $39   ; <6>
- D - I - - 0x026CDB 13:ACCB: 38        .byte $38   ; <5>
- D - I - - 0x026CDC 13:ACCC: 03        .byte $03   ; <う>
- D - I - - 0x026CDD 13:ACCD: 03        .byte $03   ; <う>
- D - I - - 0x026CDE 13:ACCE: 3B        .byte $3B   ; <8>
- D - I - - 0x026CDF 13:ACCF: 3A        .byte $3A   ; <7>
- D - I - - 0x026CE0 13:ACD0: 01        .byte $01   ; <あ>
- D - I - - 0x026CE1 13:ACD1: 01        .byte $01   ; <あ>
- D - I - - 0x026CE2 13:ACD2: 01        .byte $01   ; <あ>
- D - I - - 0x026CE3 13:ACD3: 01        .byte $01   ; <あ>
- D - I - - 0x026CE4 13:ACD4: 01        .byte $01   ; <あ>
- D - I - - 0x026CE5 13:ACD5: 01        .byte $01   ; <あ>
- D - I - - 0x026CE6 13:ACD6: 01        .byte $01   ; <あ>
- D - I - - 0x026CE7 13:ACD7: 01        .byte $01   ; <あ>
- D - I - - 0x026CE8 13:ACD8: 01        .byte $01   ; <あ>
- D - I - - 0x026CE9 13:ACD9: 01        .byte $01   ; <あ>
- D - I - - 0x026CEA 13:ACDA: 01        .byte $01   ; <あ>
- D - I - - 0x026CEB 13:ACDB: 01        .byte $01   ; <あ>
- D - I - - 0x026CEC 13:ACDC: 01        .byte $01   ; <あ>
- D - I - - 0x026CED 13:ACDD: 01        .byte $01   ; <あ>
- D - I - - 0x026CEE 13:ACDE: 1E        .byte $1E   ; <ほ>
- D - I - - 0x026CEF 13:ACDF: 35        .byte $35   ; <2>
- D - I - - 0x026CF0 13:ACE0: 79        .byte $79   ; <!>
- D - I - - 0x026CF1 13:ACE1: 1C        .byte $1C   ; <ふ>
- D - I - - 0x026CF2 13:ACE2: 56        .byte $56   ; <ニ>
- D - I - - 0x026CF3 13:ACE3: 56        .byte $56   ; <ニ>
- D - I - - 0x026CF4 13:ACE4: 7B        .byte $7B   ; <。>
- D - I - - 0x026CF5 13:ACE5: 56        .byte $56   ; <ニ>
- D - I - - 0x026CF6 13:ACE6: 56        .byte $56   ; <ニ>
- D - I - - 0x026CF7 13:ACE7: 56        .byte $56   ; <ニ>
- D - I - - 0x026CF8 13:ACE8: 00        .byte $00
- D - I - - 0x026CF9 13:ACE9: 00        .byte $00
- D - I - - 0x026CFA 13:ACEA: 00        .byte $00
- D - I - - 0x026CFB 13:ACEB: 00        .byte $00
- D - I - - 0x026CFC 13:ACEC: 00        .byte $00
- D - I - - 0x026CFD 13:ACED: 00        .byte $00
- D - I - - 0x026CFE 13:ACEE: 00        .byte $00
- D - I - - 0x026CFF 13:ACEF: 00        .byte $00
- D - I - - 0x026D00 13:ACF0: 56        .byte $56   ; <ニ>
- D - I - - 0x026D01 13:ACF1: 22        .byte $22   ; <め>
- D - I - - 0x026D02 13:ACF2: 23        .byte $23   ; <も>
- D - I - - 0x026D03 13:ACF3: 26        .byte $26   ; <よ>
- D - I - - 0x026D04 13:ACF4: 56        .byte $56   ; <ニ>
- D - I - - 0x026D05 13:ACF5: 28        .byte $28   ; <り>
- D - I - - 0x026D06 13:ACF6: 29        .byte $29   ; <る>
- D - I - - 0x026D07 13:ACF7: 38        .byte $38   ; <5>
- D - I - - 0x026D08 13:ACF8: 00        .byte $00
- D - I - - 0x026D09 13:ACF9: 00        .byte $00
- D - I - - 0x026D0A 13:ACFA: 00        .byte $00
- D - I - - 0x026D0B 13:ACFB: 00        .byte $00
- D - I - - 0x026D0C 13:ACFC: 00        .byte $00
- D - I - - 0x026D0D 13:ACFD: 00        .byte $00
- D - I - - 0x026D0E 13:ACFE: 00        .byte $00
- D - I - - 0x026D0F 13:ACFF: 00        .byte $00
- D - I - - 0x026D10 13:AD00: 33        .byte $33   ; <0>
- D - I - - 0x026D11 13:AD01: 36        .byte $36   ; <3>
- D - I - - 0x026D12 13:AD02: 5C        .byte $5C   ; <フ>
- D - I - - 0x026D13 13:AD03: 6E        .byte $6E   ; <ン>
- D - I - - 0x026D14 13:AD04: 39        .byte $39   ; <6>
- D - I - - 0x026D15 13:AD05: 5B        .byte $5B   ; <ヒ>
- D - I - - 0x026D16 13:AD06: 5E        .byte $5E   ; <ホ>
- D - I - - 0x026D17 13:AD07: 15        .byte $15   ; <な>
- D - I - - 0x026D18 13:AD08: 00        .byte $00
- D - I - - 0x026D19 13:AD09: 00        .byte $00
- D - I - - 0x026D1A 13:AD0A: 00        .byte $00
- D - I - - 0x026D1B 13:AD0B: 00        .byte $00
- D - I - - 0x026D1C 13:AD0C: 00        .byte $00
- D - I - - 0x026D1D 13:AD0D: 00        .byte $00
- D - I - - 0x026D1E 13:AD0E: 00        .byte $00
- D - I - - 0x026D1F 13:AD0F: 00        .byte $00
- D - I - - 0x026D20 13:AD10: 50        .byte $50   ; <タ>
- D - I - - 0x026D21 13:AD11: 70        .byte $70   ; <ャ>
- D - I - - 0x026D22 13:AD12: 70        .byte $70   ; <ャ>
- D - I - - 0x026D23 13:AD13: 70        .byte $70   ; <ャ>
- D - I - - 0x026D24 13:AD14: 6D        .byte $6D   ; <ヲ>
- D - I - - 0x026D25 13:AD15: 60        .byte $60   ; <ミ>
- D - I - - 0x026D26 13:AD16: 60        .byte $60   ; <ミ>
- D - I - - 0x026D27 13:AD17: 60        .byte $60   ; <ミ>
- D - I - - 0x026D28 13:AD18: 00        .byte $00
- D - I - - 0x026D29 13:AD19: 00        .byte $00
- D - I - - 0x026D2A 13:AD1A: 00        .byte $00
- D - I - - 0x026D2B 13:AD1B: 00        .byte $00
- D - I - - 0x026D2C 13:AD1C: 00        .byte $00
- D - I - - 0x026D2D 13:AD1D: 00        .byte $00
- D - I - - 0x026D2E 13:AD1E: 00        .byte $00
- D - I - - 0x026D2F 13:AD1F: 00        .byte $00
- D - I - - 0x026D30 13:AD20: 01        .byte $01   ; <あ>
- D - I - - 0x026D31 13:AD21: 01        .byte $01   ; <あ>
- D - I - - 0x026D32 13:AD22: 01        .byte $01   ; <あ>
- D - I - - 0x026D33 13:AD23: 01        .byte $01   ; <あ>
- D - I - - 0x026D34 13:AD24: 01        .byte $01   ; <あ>
- D - I - - 0x026D35 13:AD25: 01        .byte $01   ; <あ>
- D - I - - 0x026D36 13:AD26: 01        .byte $01   ; <あ>
- D - I - - 0x026D37 13:AD27: 01        .byte $01   ; <あ>
- D - I - - 0x026D38 13:AD28: 01        .byte $01   ; <あ>
- D - I - - 0x026D39 13:AD29: 01        .byte $01   ; <あ>
- D - I - - 0x026D3A 13:AD2A: 01        .byte $01   ; <あ>
- D - I - - 0x026D3B 13:AD2B: 01        .byte $01   ; <あ>
- D - I - - 0x026D3C 13:AD2C: 01        .byte $01   ; <あ>
- D - I - - 0x026D3D 13:AD2D: 01        .byte $01   ; <あ>
- D - I - - 0x026D3E 13:AD2E: 01        .byte $01   ; <あ>
- D - I - - 0x026D3F 13:AD2F: 01        .byte $01   ; <あ>
- D - I - - 0x026D40 13:AD30: 02        .byte $02   ; <い>
- D - I - - 0x026D41 13:AD31: 03        .byte $03   ; <う>
- D - I - - 0x026D42 13:AD32: 06        .byte $06   ; <か>
- D - I - - 0x026D43 13:AD33: 07        .byte $07   ; <き>
- D - I - - 0x026D44 13:AD34: 08        .byte $08   ; <く>
- D - I - - 0x026D45 13:AD35: 09        .byte $09   ; <け>
- D - I - - 0x026D46 13:AD36: 0C        .byte $0C   ; <し>
- D - I - - 0x026D47 13:AD37: 0D        .byte $0D   ; <す>
- D - I - - 0x026D48 13:AD38: 0A        .byte $0A   ; <こ>
- D - I - - 0x026D49 13:AD39: 0B        .byte $0B   ; <さ>
- D - I - - 0x026D4A 13:AD3A: 0E        .byte $0E   ; <せ>
- D - I - - 0x026D4B 13:AD3B: 0F        .byte $0F   ; <そ>
- D - I - - 0x026D4C 13:AD3C: 20        .byte $20   ; <み>
- D - I - - 0x026D4D 13:AD3D: 20        .byte $20   ; <み>
- D - I - - 0x026D4E 13:AD3E: 24        .byte $24   ; <や>
- D - I - - 0x026D4F 13:AD3F: 25        .byte $25   ; <ゆ>
- D - I - - 0x026D50 13:AD40: 12        .byte $12   ; <つ>
- D - I - - 0x026D51 13:AD41: 13        .byte $13   ; <て>
- D - I - - 0x026D52 13:AD42: 01        .byte $01   ; <あ>
- D - I - - 0x026D53 13:AD43: 01        .byte $01   ; <あ>
- D - I - - 0x026D54 13:AD44: 18        .byte $18   ; <ね>
- D - I - - 0x026D55 13:AD45: 19        .byte $19   ; <の>
- D - I - - 0x026D56 13:AD46: 13        .byte $13   ; <て>
- D - I - - 0x026D57 13:AD47: 01        .byte $01   ; <あ>
- D - I - - 0x026D58 13:AD48: 1A        .byte $1A   ; <は>
- D - I - - 0x026D59 13:AD49: 1B        .byte $1B   ; <ひ>
- D - I - - 0x026D5A 13:AD4A: 1E        .byte $1E   ; <ほ>
- D - I - - 0x026D5B 13:AD4B: 13        .byte $13   ; <て>
- D - I - - 0x026D5C 13:AD4C: 30        .byte $30   ; <ゃ>
- D - I - - 0x026D5D 13:AD4D: 31        .byte $31   ; <ゅ>
- D - I - - 0x026D5E 13:AD4E: 34        .byte $34   ; <1>
- D - I - - 0x026D5F 13:AD4F: 35        .byte $35   ; <2>
- D - I - - 0x026D60 13:AD50: 01        .byte $01   ; <あ>
- D - I - - 0x026D61 13:AD51: 01        .byte $01   ; <あ>
- D - I - - 0x026D62 13:AD52: 01        .byte $01   ; <あ>
- D - I - - 0x026D63 13:AD53: 01        .byte $01   ; <あ>
- D - I - - 0x026D64 13:AD54: 01        .byte $01   ; <あ>
- D - I - - 0x026D65 13:AD55: 01        .byte $01   ; <あ>
- D - I - - 0x026D66 13:AD56: 01        .byte $01   ; <あ>
- D - I - - 0x026D67 13:AD57: 01        .byte $01   ; <あ>
- D - I - - 0x026D68 13:AD58: 01        .byte $01   ; <あ>
- D - I - - 0x026D69 13:AD59: 01        .byte $01   ; <あ>
- D - I - - 0x026D6A 13:AD5A: 01        .byte $01   ; <あ>
- D - I - - 0x026D6B 13:AD5B: 01        .byte $01   ; <あ>
- D - I - - 0x026D6C 13:AD5C: 13        .byte $13   ; <て>
- D - I - - 0x026D6D 13:AD5D: 01        .byte $01   ; <あ>
- D - I - - 0x026D6E 13:AD5E: 01        .byte $01   ; <あ>
- D - I - - 0x026D6F 13:AD5F: 01        .byte $01   ; <あ>
- D - I - - 0x026D70 13:AD60: 22        .byte $22   ; <め>
- D - I - - 0x026D71 13:AD61: 23        .byte $23   ; <も>
- D - I - - 0x026D72 13:AD62: 26        .byte $26   ; <よ>
- D - I - - 0x026D73 13:AD63: 27        .byte $27   ; <ら>
- D - I - - 0x026D74 13:AD64: 28        .byte $28   ; <り>
- D - I - - 0x026D75 13:AD65: 29        .byte $29   ; <る>
- D - I - - 0x026D76 13:AD66: 2C        .byte $2C   ; <わ>
- D - I - - 0x026D77 13:AD67: 2D        .byte $2D   ; <を>
- D - I - - 0x026D78 13:AD68: 2A        .byte $2A   ; <れ>
- D - I - - 0x026D79 13:AD69: 2A        .byte $2A   ; <れ>
- D - I - - 0x026D7A 13:AD6A: 03        .byte $03   ; <う>
- D - I - - 0x026D7B 13:AD6B: 2F        .byte $2F   ; <っ>
- D - I - - 0x026D7C 13:AD6C: 2B        .byte $2B   ; <ろ>
- D - I - - 0x026D7D 13:AD6D: 2B        .byte $2B   ; <ろ>
- D - I - - 0x026D7E 13:AD6E: 2E        .byte $2E   ; <ん>
- D - I - - 0x026D7F 13:AD6F: 78        .byte $78   ; <?>
- D - I - - 0x026D80 13:AD70: 32        .byte $32   ; <ょ>
- D - I - - 0x026D81 13:AD71: 1A        .byte $1A   ; <は>
- D - I - - 0x026D82 13:AD72: 36        .byte $36   ; <3>
- D - I - - 0x026D83 13:AD73: 37        .byte $37   ; <4>
- D - I - - 0x026D84 13:AD74: 38        .byte $38   ; <5>
- D - I - - 0x026D85 13:AD75: 39        .byte $39   ; <6>
- D - I - - 0x026D86 13:AD76: 3C        .byte $3C   ; <9>
- D - I - - 0x026D87 13:AD77: 0F        .byte $0F   ; <そ>
- D - I - - 0x026D88 13:AD78: 3A        .byte $3A   ; <7>
- D - I - - 0x026D89 13:AD79: 3B        .byte $3B   ; <8>
- D - I - - 0x026D8A 13:AD7A: 3E        .byte $3E   ; <Jr>
- D - I - - 0x026D8B 13:AD7B: 3F        .byte $3F   ; <•>
- D - I - - 0x026D8C 13:AD7C: 52        .byte $52   ; <ツ>
- D - I - - 0x026D8D 13:AD7D: 53        .byte $53   ; <テ>
- D - I - - 0x026D8E 13:AD7E: 14        .byte $14   ; <と>
- D - I - - 0x026D8F 13:AD7F: 15        .byte $15   ; <な>
- D - I - - 0x026D90 13:AD80: 62        .byte $62   ; <メ>
- D - I - - 0x026D91 13:AD81: 13        .byte $13   ; <て>
- D - I - - 0x026D92 13:AD82: 01        .byte $01   ; <あ>
- D - I - - 0x026D93 13:AD83: 01        .byte $01   ; <あ>
- D - I - - 0x026D94 13:AD84: 0D        .byte $0D   ; <す>
- D - I - - 0x026D95 13:AD85: 69        .byte $69   ; <ル>
- D - I - - 0x026D96 13:AD86: 6C        .byte $6C   ; <ワ>
- D - I - - 0x026D97 13:AD87: 01        .byte $01   ; <あ>
- D - I - - 0x026D98 13:AD88: 30        .byte $30   ; <ゃ>
- D - I - - 0x026D99 13:AD89: 1A        .byte $1A   ; <は>
- D - I - - 0x026D9A 13:AD8A: 6E        .byte $6E   ; <ン>
- D - I - - 0x026D9B 13:AD8B: 6F        .byte $6F   ; <ッ>
- D - I - - 0x026D9C 13:AD8C: 40        .byte $40   ; <「>
- D - I - - 0x026D9D 13:AD8D: 41        .byte $41   ; <ア>
- D - I - - 0x026D9E 13:AD8E: 44        .byte $44   ; <エ>
- D - I - - 0x026D9F 13:AD8F: 45        .byte $45   ; <オ>
- D - I - - 0x026DA0 13:AD90: 01        .byte $01   ; <あ>
- D - I - - 0x026DA1 13:AD91: 01        .byte $01   ; <あ>
- D - I - - 0x026DA2 13:AD92: 01        .byte $01   ; <あ>
- D - I - - 0x026DA3 13:AD93: 01        .byte $01   ; <あ>
- D - I - - 0x026DA4 13:AD94: 01        .byte $01   ; <あ>
- D - I - - 0x026DA5 13:AD95: 01        .byte $01   ; <あ>
- D - I - - 0x026DA6 13:AD96: 01        .byte $01   ; <あ>
- D - I - - 0x026DA7 13:AD97: 01        .byte $01   ; <あ>
- D - I - - 0x026DA8 13:AD98: 01        .byte $01   ; <あ>
- D - I - - 0x026DA9 13:AD99: 01        .byte $01   ; <あ>
- D - I - - 0x026DAA 13:AD9A: 01        .byte $01   ; <あ>
- D - I - - 0x026DAB 13:AD9B: 01        .byte $01   ; <あ>
- D - I - - 0x026DAC 13:AD9C: 65        .byte $65   ; <ユ>
- D - I - - 0x026DAD 13:AD9D: 01        .byte $01   ; <あ>
- D - I - - 0x026DAE 13:AD9E: 01        .byte $01   ; <あ>
- D - I - - 0x026DAF 13:AD9F: 01        .byte $01   ; <あ>
- D - I - - 0x026DB0 13:ADA0: 02        .byte $02   ; <い>
- D - I - - 0x026DB1 13:ADA1: 02        .byte $02   ; <い>
- D - I - - 0x026DB2 13:ADA2: 04        .byte $04   ; <え>
- D - I - - 0x026DB3 13:ADA3: 7A        .byte $7A   ; <、>
- D - I - - 0x026DB4 13:ADA4: 08        .byte $08   ; <く>
- D - I - - 0x026DB5 13:ADA5: 08        .byte $08   ; <く>
- D - I - - 0x026DB6 13:ADA6: 08        .byte $08   ; <く>
- D - I - - 0x026DB7 13:ADA7: 05        .byte $05   ; <お>
- D - I - - 0x026DB8 13:ADA8: 0A        .byte $0A   ; <こ>
- D - I - - 0x026DB9 13:ADA9: 0A        .byte $0A   ; <こ>
- D - I - - 0x026DBA 13:ADAA: 0A        .byte $0A   ; <こ>
- D - I - - 0x026DBB 13:ADAB: 10        .byte $10   ; <た>
- D - I - - 0x026DBC 13:ADAC: 20        .byte $20   ; <み>
- D - I - - 0x026DBD 13:ADAD: 20        .byte $20   ; <み>
- D - I - - 0x026DBE 13:ADAE: 20        .byte $20   ; <み>
- D - I - - 0x026DBF 13:ADAF: 11        .byte $11   ; <ち>
- D - I - - 0x026DC0 13:ADB0: 58        .byte $58   ; <ネ>
- D - I - - 0x026DC1 13:ADB1: 59        .byte $59   ; <ノ>
- D - I - - 0x026DC2 13:ADB2: 16        .byte $16   ; <に>
- D - I - - 0x026DC3 13:ADB3: 17        .byte $17   ; <ぬ>
- D - I - - 0x026DC4 13:ADB4: 5A        .byte $5A   ; <ハ>
- D - I - - 0x026DC5 13:ADB5: 5B        .byte $5B   ; <ヒ>
- D - I - - 0x026DC6 13:ADB6: 1C        .byte $1C   ; <ふ>
- D - I - - 0x026DC7 13:ADB7: 1D        .byte $1D   ; <へ>
- D - I - - 0x026DC8 13:ADB8: 70        .byte $70   ; <ャ>
- D - I - - 0x026DC9 13:ADB9: 71        .byte $71   ; <ュ>
- D - I - - 0x026DCA 13:ADBA: 33        .byte $33   ; <0>
- D - I - - 0x026DCB 13:ADBB: 1F        .byte $1F   ; <ま>
- D - I - - 0x026DCC 13:ADBC: 72        .byte $72   ; <ョ>
- D - I - - 0x026DCD 13:ADBD: 73        .byte $73   ; <ヮ>
- D - I - - 0x026DCE 13:ADBE: 5E        .byte $5E   ; <ホ>
- D - I - - 0x026DCF 13:ADBF: 21        .byte $21   ; <む>
- D - I - - 0x026DD0 13:ADC0: 42        .byte $42   ; <イ>
- D - I - - 0x026DD1 13:ADC1: 43        .byte $43   ; <ウ>
- D - I - - 0x026DD2 13:ADC2: 46        .byte $46   ; <カ>
- D - I - - 0x026DD3 13:ADC3: 47        .byte $47   ; <キ>
- D - I - - 0x026DD4 13:ADC4: 48        .byte $48   ; <ク>
- D - I - - 0x026DD5 13:ADC5: 49        .byte $49   ; <ケ>
- D - I - - 0x026DD6 13:ADC6: 4C        .byte $4C   ; <シ>
- D - I - - 0x026DD7 13:ADC7: 4D        .byte $4D   ; <ス>
- D - I - - 0x026DD8 13:ADC8: 4A        .byte $4A   ; <コ>
- D - I - - 0x026DD9 13:ADC9: 4B        .byte $4B   ; <サ>
- D - I - - 0x026DDA 13:ADCA: 4E        .byte $4E   ; <セ>
- D - I - - 0x026DDB 13:ADCB: 4F        .byte $4F   ; <ソ>
- D - I - - 0x026DDC 13:ADCC: 60        .byte $60   ; <ミ>
- D - I - - 0x026DDD 13:ADCD: 61        .byte $61   ; <ム>
- D - I - - 0x026DDE 13:ADCE: 64        .byte $64   ; <ヤ>
- D - I - - 0x026DDF 13:ADCF: 4F        .byte $4F   ; <ソ>
- D - I - - 0x026DE0 13:ADD0: 67        .byte $67   ; <ラ>
- D - I - - 0x026DE1 13:ADD1: 6D        .byte $6D   ; <ヲ>
- D - I - - 0x026DE2 13:ADD2: 01        .byte $01   ; <あ>
- D - I - - 0x026DE3 13:ADD3: 01        .byte $01   ; <あ>
- D - I - - 0x026DE4 13:ADD4: 4F        .byte $4F   ; <ソ>
- D - I - - 0x026DE5 13:ADD5: 50        .byte $50   ; <タ>
- D - I - - 0x026DE6 13:ADD6: 01        .byte $01   ; <あ>
- D - I - - 0x026DE7 13:ADD7: 01        .byte $01   ; <あ>
- D - I - - 0x026DE8 13:ADD8: 4F        .byte $4F   ; <ソ>
- D - I - - 0x026DE9 13:ADD9: 51        .byte $51   ; <チ>
- D - I - - 0x026DEA 13:ADDA: 6D        .byte $6D   ; <ヲ>
- D - I - - 0x026DEB 13:ADDB: 01        .byte $01   ; <あ>
- D - I - - 0x026DEC 13:ADDC: 4F        .byte $4F   ; <ソ>
- D - I - - 0x026DED 13:ADDD: 4F        .byte $4F   ; <ソ>
- D - I - - 0x026DEE 13:ADDE: 50        .byte $50   ; <タ>
- D - I - - 0x026DEF 13:ADDF: 01        .byte $01   ; <あ>
- D - I - - 0x026DF0 13:ADE0: 23        .byte $23   ; <も>
- D - I - - 0x026DF1 13:ADE1: 23        .byte $23   ; <も>
- D - I - - 0x026DF2 13:ADE2: 23        .byte $23   ; <も>
- D - I - - 0x026DF3 13:ADE3: 03        .byte $03   ; <う>
- D - I - - 0x026DF4 13:ADE4: 3D        .byte $3D   ; <+>
- D - I - - 0x026DF5 13:ADE5: 3D        .byte $3D   ; <+>
- D - I - - 0x026DF6 13:ADE6: 3D        .byte $3D   ; <+>
- D - I - - 0x026DF7 13:ADE7: 68        .byte $68   ; <リ>
- D - I - - 0x026DF8 13:ADE8: 00        .byte $00
- D - I - - 0x026DF9 13:ADE9: 00        .byte $00
- D - I - - 0x026DFA 13:ADEA: 00        .byte $00
- D - I - - 0x026DFB 13:ADEB: 00        .byte $00
- D - I - - 0x026DFC 13:ADEC: 00        .byte $00
- D - I - - 0x026DFD 13:ADED: 00        .byte $00
- D - I - - 0x026DFE 13:ADEE: 00        .byte $00
- D - I - - 0x026DFF 13:ADEF: 00        .byte $00
- D - I - - 0x026E00 13:ADF0: 78        .byte $78   ; <?>
- D - I - - 0x026E01 13:ADF1: 79        .byte $79   ; <!>
- D - I - - 0x026E02 13:ADF2: 54        .byte $54   ; <ト>
- D - I - - 0x026E03 13:ADF3: 55        .byte $55   ; <ナ>
- D - I - - 0x026E04 13:ADF4: 7A        .byte $7A   ; <、>
- D - I - - 0x026E05 13:ADF5: 7B        .byte $7B   ; <。>
- D - I - - 0x026E06 13:ADF6: 56        .byte $56   ; <ニ>
- D - I - - 0x026E07 13:ADF7: 57        .byte $57   ; <ヌ>
- D - I - - 0x026E08 13:ADF8: 00        .byte $00
- D - I - - 0x026E09 13:ADF9: 00        .byte $00
- D - I - - 0x026E0A 13:ADFA: 00        .byte $00
- D - I - - 0x026E0B 13:ADFB: 00        .byte $00
- D - I - - 0x026E0C 13:ADFC: 00        .byte $00
- D - I - - 0x026E0D 13:ADFD: 00        .byte $00
- D - I - - 0x026E0E 13:ADFE: 00        .byte $00
- D - I - - 0x026E0F 13:ADFF: 00        .byte $00
- D - I - - 0x026E10 13:AE00: 6A        .byte $6A   ; <レ>
- D - I - - 0x026E11 13:AE01: 63        .byte $63   ; <モ>
- D - I - - 0x026E12 13:AE02: 66        .byte $66   ; <ヨ>
- D - I - - 0x026E13 13:AE03: 4F        .byte $4F   ; <ソ>
- D - I - - 0x026E14 13:AE04: 6B        .byte $6B   ; <ロ>
- D - I - - 0x026E15 13:AE05: 5C        .byte $5C   ; <フ>
- D - I - - 0x026E16 13:AE06: 5D        .byte $5D   ; <ヘ>
- D - I - - 0x026E17 13:AE07: 4F        .byte $4F   ; <ソ>
- D - I - - 0x026E18 13:AE08: 00        .byte $00
- D - I - - 0x026E19 13:AE09: 00        .byte $00
- D - I - - 0x026E1A 13:AE0A: 00        .byte $00
- D - I - - 0x026E1B 13:AE0B: 00        .byte $00
- D - I - - 0x026E1C 13:AE0C: 00        .byte $00
- D - I - - 0x026E1D 13:AE0D: 00        .byte $00
- D - I - - 0x026E1E 13:AE0E: 00        .byte $00
- D - I - - 0x026E1F 13:AE0F: 00        .byte $00
- D - I - - 0x026E20 13:AE10: 4F        .byte $4F   ; <ソ>
- D - I - - 0x026E21 13:AE11: 4F        .byte $4F   ; <ソ>
- D - I - - 0x026E22 13:AE12: 51        .byte $51   ; <チ>
- D - I - - 0x026E23 13:AE13: 6D        .byte $6D   ; <ヲ>
- D - I - - 0x026E24 13:AE14: 4F        .byte $4F   ; <ソ>
- D - I - - 0x026E25 13:AE15: 4F        .byte $4F   ; <ソ>
- D - I - - 0x026E26 13:AE16: 4F        .byte $4F   ; <ソ>
- D - I - - 0x026E27 13:AE17: 50        .byte $50   ; <タ>
- D - I - - 0x026E28 13:AE18: 00        .byte $00
- D - I - - 0x026E29 13:AE19: 00        .byte $00
- D - I - - 0x026E2A 13:AE1A: 00        .byte $00
- D - I - - 0x026E2B 13:AE1B: 00        .byte $00
- D - I - - 0x026E2C 13:AE1C: 00        .byte $00
- D - I - - 0x026E2D 13:AE1D: 00        .byte $00
- D - I - - 0x026E2E 13:AE1E: 00        .byte $00
- D - I - - 0x026E2F 13:AE1F: 00        .byte $00
- D - I - - 0x026E30 13:AE20: 01        .byte $01   ; <あ>
- D - I - - 0x026E31 13:AE21: 01        .byte $01   ; <あ>
- D - I - - 0x026E32 13:AE22: 01        .byte $01   ; <あ>
- D - I - - 0x026E33 13:AE23: 01        .byte $01   ; <あ>
- D - I - - 0x026E34 13:AE24: 01        .byte $01   ; <あ>
- D - I - - 0x026E35 13:AE25: 01        .byte $01   ; <あ>
- D - I - - 0x026E36 13:AE26: 01        .byte $01   ; <あ>
- D - I - - 0x026E37 13:AE27: 01        .byte $01   ; <あ>
- D - I - - 0x026E38 13:AE28: 01        .byte $01   ; <あ>
- D - I - - 0x026E39 13:AE29: 01        .byte $01   ; <あ>
- D - I - - 0x026E3A 13:AE2A: 01        .byte $01   ; <あ>
- D - I - - 0x026E3B 13:AE2B: 01        .byte $01   ; <あ>
- D - I - - 0x026E3C 13:AE2C: 01        .byte $01   ; <あ>
- D - I - - 0x026E3D 13:AE2D: 01        .byte $01   ; <あ>
- D - I - - 0x026E3E 13:AE2E: 01        .byte $01   ; <あ>
- D - I - - 0x026E3F 13:AE2F: 2B        .byte $2B   ; <ろ>
- D - I - - 0x026E40 13:AE30: 01        .byte $01   ; <あ>
- D - I - - 0x026E41 13:AE31: 01        .byte $01   ; <あ>
- D - I - - 0x026E42 13:AE32: 01        .byte $01   ; <あ>
- D - I - - 0x026E43 13:AE33: 01        .byte $01   ; <あ>
- D - I - - 0x026E44 13:AE34: 01        .byte $01   ; <あ>
- D - I - - 0x026E45 13:AE35: 01        .byte $01   ; <あ>
- D - I - - 0x026E46 13:AE36: 01        .byte $01   ; <あ>
- D - I - - 0x026E47 13:AE37: 01        .byte $01   ; <あ>
- D - I - - 0x026E48 13:AE38: 01        .byte $01   ; <あ>
- D - I - - 0x026E49 13:AE39: 01        .byte $01   ; <あ>
- D - I - - 0x026E4A 13:AE3A: 01        .byte $01   ; <あ>
- D - I - - 0x026E4B 13:AE3B: 01        .byte $01   ; <あ>
- D - I - - 0x026E4C 13:AE3C: 01        .byte $01   ; <あ>
- D - I - - 0x026E4D 13:AE3D: 01        .byte $01   ; <あ>
- D - I - - 0x026E4E 13:AE3E: 01        .byte $01   ; <あ>
- D - I - - 0x026E4F 13:AE3F: 40        .byte $40   ; <「>
- D - I - - 0x026E50 13:AE40: 01        .byte $01   ; <あ>
- D - I - - 0x026E51 13:AE41: 01        .byte $01   ; <あ>
- D - I - - 0x026E52 13:AE42: 40        .byte $40   ; <「>
- D - I - - 0x026E53 13:AE43: 41        .byte $41   ; <ア>
- D - I - - 0x026E54 13:AE44: 01        .byte $01   ; <あ>
- D - I - - 0x026E55 13:AE45: 40        .byte $40   ; <「>
- D - I - - 0x026E56 13:AE46: 42        .byte $42   ; <イ>
- D - I - - 0x026E57 13:AE47: 43        .byte $43   ; <ウ>
- D - I - - 0x026E58 13:AE48: 40        .byte $40   ; <「>
- D - I - - 0x026E59 13:AE49: 1D        .byte $1D   ; <へ>
- D - I - - 0x026E5A 13:AE4A: 48        .byte $48   ; <ク>
- D - I - - 0x026E5B 13:AE4B: 49        .byte $49   ; <ケ>
- D - I - - 0x026E5C 13:AE4C: 1E        .byte $1E   ; <ほ>
- D - I - - 0x026E5D 13:AE4D: 1F        .byte $1F   ; <ま>
- D - I - - 0x026E5E 13:AE4E: 4A        .byte $4A   ; <コ>
- D - I - - 0x026E5F 13:AE4F: 4B        .byte $4B   ; <サ>
- D - I - - 0x026E60 13:AE50: 44        .byte $44   ; <エ>
- D - I - - 0x026E61 13:AE51: 45        .byte $45   ; <オ>
- D - I - - 0x026E62 13:AE52: 50        .byte $50   ; <タ>
- D - I - - 0x026E63 13:AE53: 51        .byte $51   ; <チ>
- D - I - - 0x026E64 13:AE54: 46        .byte $46   ; <カ>
- D - I - - 0x026E65 13:AE55: 47        .byte $47   ; <キ>
- D - I - - 0x026E66 13:AE56: 52        .byte $52   ; <ツ>
- D - I - - 0x026E67 13:AE57: 53        .byte $53   ; <テ>
- D - I - - 0x026E68 13:AE58: 4C        .byte $4C   ; <シ>
- D - I - - 0x026E69 13:AE59: 4D        .byte $4D   ; <ス>
- D - I - - 0x026E6A 13:AE5A: 58        .byte $58   ; <ネ>
- D - I - - 0x026E6B 13:AE5B: 59        .byte $59   ; <ノ>
- D - I - - 0x026E6C 13:AE5C: 4E        .byte $4E   ; <セ>
- D - I - - 0x026E6D 13:AE5D: 4F        .byte $4F   ; <ソ>
- D - I - - 0x026E6E 13:AE5E: 5A        .byte $5A   ; <ハ>
- D - I - - 0x026E6F 13:AE5F: 5A        .byte $5A   ; <ハ>
- D - I - - 0x026E70 13:AE60: 01        .byte $01   ; <あ>
- D - I - - 0x026E71 13:AE61: 01        .byte $01   ; <あ>
- D - I - - 0x026E72 13:AE62: 40        .byte $40   ; <「>
- D - I - - 0x026E73 13:AE63: 31        .byte $31   ; <ゅ>
- D - I - - 0x026E74 13:AE64: 01        .byte $01   ; <あ>
- D - I - - 0x026E75 13:AE65: 27        .byte $27   ; <ら>
- D - I - - 0x026E76 13:AE66: 32        .byte $32   ; <ょ>
- D - I - - 0x026E77 13:AE67: 46        .byte $46   ; <カ>
- D - I - - 0x026E78 13:AE68: 2C        .byte $2C   ; <わ>
- D - I - - 0x026E79 13:AE69: 2D        .byte $2D   ; <を>
- D - I - - 0x026E7A 13:AE6A: 49        .byte $49   ; <ケ>
- D - I - - 0x026E7B 13:AE6B: 4B        .byte $4B   ; <サ>
- D - I - - 0x026E7C 13:AE6C: 2E        .byte $2E   ; <ん>
- D - I - - 0x026E7D 13:AE6D: 2F        .byte $2F   ; <っ>
- D - I - - 0x026E7E 13:AE6E: 3A        .byte $3A   ; <7>
- D - I - - 0x026E7F 13:AE6F: 3B        .byte $3B   ; <8>
- D - I - - 0x026E80 13:AE70: 34        .byte $34   ; <1>
- D - I - - 0x026E81 13:AE71: 35        .byte $35   ; <2>
- D - I - - 0x026E82 13:AE72: 49        .byte $49   ; <ケ>
- D - I - - 0x026E83 13:AE73: 61        .byte $61   ; <ム>
- D - I - - 0x026E84 13:AE74: 4C        .byte $4C   ; <シ>
- D - I - - 0x026E85 13:AE75: 37        .byte $37   ; <4>
- D - I - - 0x026E86 13:AE76: 62        .byte $62   ; <メ>
- D - I - - 0x026E87 13:AE77: 63        .byte $63   ; <モ>
- D - I - - 0x026E88 13:AE78: 3C        .byte $3C   ; <9>
- D - I - - 0x026E89 13:AE79: 3D        .byte $3D   ; <+>
- D - I - - 0x026E8A 13:AE7A: 68        .byte $68   ; <リ>
- D - I - - 0x026E8B 13:AE7B: 69        .byte $69   ; <ル>
- D - I - - 0x026E8C 13:AE7C: 3E        .byte $3E   ; <Jr>
- D - I - - 0x026E8D 13:AE7D: 3F        .byte $3F   ; <•>
- D - I - - 0x026E8E 13:AE7E: 6A        .byte $6A   ; <レ>
- D - I - - 0x026E8F 13:AE7F: 6B        .byte $6B   ; <ロ>
- D - I - - 0x026E90 13:AE80: 64        .byte $64   ; <ヤ>
- D - I - - 0x026E91 13:AE81: 65        .byte $65   ; <ユ>
- D - I - - 0x026E92 13:AE82: 70        .byte $70   ; <ャ>
- D - I - - 0x026E93 13:AE83: 71        .byte $71   ; <ュ>
- D - I - - 0x026E94 13:AE84: 66        .byte $66   ; <ヨ>
- D - I - - 0x026E95 13:AE85: 67        .byte $67   ; <ラ>
- D - I - - 0x026E96 13:AE86: 72        .byte $72   ; <ョ>
- D - I - - 0x026E97 13:AE87: 73        .byte $73   ; <ヮ>
- D - I - - 0x026E98 13:AE88: 6C        .byte $6C   ; <ワ>
- D - I - - 0x026E99 13:AE89: 50        .byte $50   ; <タ>
- D - I - - 0x026E9A 13:AE8A: 78        .byte $78   ; <?>
- D - I - - 0x026E9B 13:AE8B: 78        .byte $78   ; <?>
- D - I - - 0x026E9C 13:AE8C: 6E        .byte $6E   ; <ン>
- D - I - - 0x026E9D 13:AE8D: 6F        .byte $6F   ; <ッ>
- D - I - - 0x026E9E 13:AE8E: 7A        .byte $7A   ; <、>
- D - I - - 0x026E9F 13:AE8F: 7A        .byte $7A   ; <、>
- D - I - - 0x026EA0 13:AE90: 01        .byte $01   ; <あ>
- D - I - - 0x026EA1 13:AE91: 01        .byte $01   ; <あ>
- D - I - - 0x026EA2 13:AE92: 79        .byte $79   ; <!>
- D - I - - 0x026EA3 13:AE93: 54        .byte $54   ; <ト>
- D - I - - 0x026EA4 13:AE94: 01        .byte $01   ; <あ>
- D - I - - 0x026EA5 13:AE95: 01        .byte $01   ; <あ>
- D - I - - 0x026EA6 13:AE96: 7B        .byte $7B   ; <。>
- D - I - - 0x026EA7 13:AE97: 56        .byte $56   ; <ニ>
- D - I - - 0x026EA8 13:AE98: 01        .byte $01   ; <あ>
- D - I - - 0x026EA9 13:AE99: 79        .byte $79   ; <!>
- D - I - - 0x026EAA 13:AE9A: 1C        .byte $1C   ; <ふ>
- D - I - - 0x026EAB 13:AE9B: 56        .byte $56   ; <ニ>
- D - I - - 0x026EAC 13:AE9C: 01        .byte $01   ; <あ>
- D - I - - 0x026EAD 13:AE9D: 7B        .byte $7B   ; <。>
- D - I - - 0x026EAE 13:AE9E: 56        .byte $56   ; <ニ>
- D - I - - 0x026EAF 13:AE9F: 56        .byte $56   ; <ニ>
- D - I - - 0x026EB0 13:AEA0: 55        .byte $55   ; <ナ>
- D - I - - 0x026EB1 13:AEA1: 02        .byte $02   ; <い>
- D - I - - 0x026EB2 13:AEA2: 02        .byte $02   ; <い>
- D - I - - 0x026EB3 13:AEA3: 06        .byte $06   ; <か>
- D - I - - 0x026EB4 13:AEA4: 57        .byte $57   ; <ヌ>
- D - I - - 0x026EB5 13:AEA5: 08        .byte $08   ; <く>
- D - I - - 0x026EB6 13:AEA6: 09        .byte $09   ; <け>
- D - I - - 0x026EB7 13:AEA7: 0C        .byte $0C   ; <し>
- D - I - - 0x026EB8 13:AEA8: 56        .byte $56   ; <ニ>
- D - I - - 0x026EB9 13:AEA9: 0A        .byte $0A   ; <こ>
- D - I - - 0x026EBA 13:AEAA: 0B        .byte $0B   ; <さ>
- D - I - - 0x026EBB 13:AEAB: 0E        .byte $0E   ; <せ>
- D - I - - 0x026EBC 13:AEAC: 56        .byte $56   ; <ニ>
- D - I - - 0x026EBD 13:AEAD: 20        .byte $20   ; <み>
- D - I - - 0x026EBE 13:AEAE: 21        .byte $21   ; <む>
- D - I - - 0x026EBF 13:AEAF: 24        .byte $24   ; <や>
- D - I - - 0x026EC0 13:AEB0: 07        .byte $07   ; <き>
- D - I - - 0x026EC1 13:AEB1: 12        .byte $12   ; <つ>
- D - I - - 0x026EC2 13:AEB2: 13        .byte $13   ; <て>
- D - I - - 0x026EC3 13:AEB3: 14        .byte $14   ; <と>
- D - I - - 0x026EC4 13:AEB4: 0D        .byte $0D   ; <す>
- D - I - - 0x026EC5 13:AEB5: 18        .byte $18   ; <ね>
- D - I - - 0x026EC6 13:AEB6: 19        .byte $19   ; <の>
- D - I - - 0x026EC7 13:AEB7: 16        .byte $16   ; <に>
- D - I - - 0x026EC8 13:AEB8: 0F        .byte $0F   ; <そ>
- D - I - - 0x026EC9 13:AEB9: 1A        .byte $1A   ; <は>
- D - I - - 0x026ECA 13:AEBA: 1B        .byte $1B   ; <ひ>
- D - I - - 0x026ECB 13:AEBB: 04        .byte $04   ; <え>
- D - I - - 0x026ECC 13:AEBC: 25        .byte $25   ; <ゆ>
- D - I - - 0x026ECD 13:AEBD: 30        .byte $30   ; <ゃ>
- D - I - - 0x026ECE 13:AEBE: 5D        .byte $5D   ; <ヘ>
- D - I - - 0x026ECF 13:AEBF: 10        .byte $10   ; <た>
- D - I - - 0x026ED0 13:AEC0: 15        .byte $15   ; <な>
- D - I - - 0x026ED1 13:AEC1: 2A        .byte $2A   ; <れ>
- D - I - - 0x026ED2 13:AEC2: 51        .byte $51   ; <チ>
- D - I - - 0x026ED3 13:AEC3: 51        .byte $51   ; <チ>
- D - I - - 0x026ED4 13:AEC4: 17        .byte $17   ; <ぬ>
- D - I - - 0x026ED5 13:AEC5: 53        .byte $53   ; <テ>
- D - I - - 0x026ED6 13:AEC6: 53        .byte $53   ; <テ>
- D - I - - 0x026ED7 13:AEC7: 53        .byte $53   ; <テ>
- D - I - - 0x026ED8 13:AEC8: 05        .byte $05   ; <お>
- D - I - - 0x026ED9 13:AEC9: 59        .byte $59   ; <ノ>
- D - I - - 0x026EDA 13:AECA: 59        .byte $59   ; <ノ>
- D - I - - 0x026EDB 13:AECB: 59        .byte $59   ; <ノ>
- D - I - - 0x026EDC 13:AECC: 11        .byte $11   ; <ち>
- D - I - - 0x026EDD 13:AECD: 5A        .byte $5A   ; <ハ>
- D - I - - 0x026EDE 13:AECE: 5A        .byte $5A   ; <ハ>
- D - I - - 0x026EDF 13:AECF: 5A        .byte $5A   ; <ハ>
- D - I - - 0x026EE0 13:AED0: 7F        .byte $7F   ; <,>
- D - I - - 0x026EE1 13:AED1: EF        .byte $EF
- D - I - - 0x026EE2 13:AED2: FA        .byte $FA
- D - I - - 0x026EE3 13:AED3: 01        .byte $01   ; <あ>
- D - I - - 0x026EE4 13:AED4: 7F        .byte $7F   ; <,>
- D - I - - 0x026EE5 13:AED5: 7F        .byte $7F   ; <,>
- D - I - - 0x026EE6 13:AED6: E0        .byte $E0
- D - I - - 0x026EE7 13:AED7: E1        .byte $E1
- D - I - - 0x026EE8 13:AED8: 00        .byte $00
- D - I - - 0x026EE9 13:AED9: 00        .byte $00
- D - I - - 0x026EEA 13:AEDA: 00        .byte $00
- D - I - - 0x026EEB 13:AEDB: 00        .byte $00
- D - I - - 0x026EEC 13:AEDC: 00        .byte $00
- D - I - - 0x026EED 13:AEDD: 00        .byte $00
- D - I - - 0x026EEE 13:AEDE: 00        .byte $00
- D - I - - 0x026EEF 13:AEDF: 00        .byte $00
- D - I - - 0x026EF0 13:AEE0: 01        .byte $01   ; <あ>
- D - I - - 0x026EF1 13:AEE1: E3        .byte $E3
- D - I - - 0x026EF2 13:AEE2: 7F        .byte $7F   ; <,>
- D - I - - 0x026EF3 13:AEE3: 7F        .byte $7F   ; <,>
- D - I - - 0x026EF4 13:AEE4: EA        .byte $EA
- D - I - - 0x026EF5 13:AEE5: EB        .byte $EB
- D - I - - 0x026EF6 13:AEE6: 7F        .byte $7F   ; <,>
- D - I - - 0x026EF7 13:AEE7: 7F        .byte $7F   ; <,>
- D - I - - 0x026EF8 13:AEE8: 00        .byte $00
- D - I - - 0x026EF9 13:AEE9: 00        .byte $00
- D - I - - 0x026EFA 13:AEEA: 00        .byte $00
- D - I - - 0x026EFB 13:AEEB: 00        .byte $00
- D - I - - 0x026EFC 13:AEEC: 00        .byte $00
- D - I - - 0x026EFD 13:AEED: 00        .byte $00
- D - I - - 0x026EFE 13:AEEE: 00        .byte $00
- D - I - - 0x026EFF 13:AEEF: 00        .byte $00
- D - I - - 0x026F00 13:AEF0: 01        .byte $01   ; <あ>
- D - I - - 0x026F01 13:AEF1: 01        .byte $01   ; <あ>
- D - I - - 0x026F02 13:AEF2: 01        .byte $01   ; <あ>
- D - I - - 0x026F03 13:AEF3: 01        .byte $01   ; <あ>
- D - I - - 0x026F04 13:AEF4: 01        .byte $01   ; <あ>
- D - I - - 0x026F05 13:AEF5: 01        .byte $01   ; <あ>
- D - I - - 0x026F06 13:AEF6: 01        .byte $01   ; <あ>
- D - I - - 0x026F07 13:AEF7: 01        .byte $01   ; <あ>
- D - I - - 0x026F08 13:AEF8: F8        .byte $F8
- D - I - - 0x026F09 13:AEF9: F9        .byte $F9
- D - I - - 0x026F0A 13:AEFA: 01        .byte $01   ; <あ>
- D - I - - 0x026F0B 13:AEFB: 01        .byte $01   ; <あ>
- D - I - - 0x026F0C 13:AEFC: 7F        .byte $7F   ; <,>
- D - I - - 0x026F0D 13:AEFD: E9        .byte $E9
- D - I - - 0x026F0E 13:AEFE: 01        .byte $01   ; <あ>
- D - I - - 0x026F0F 13:AEFF: 01        .byte $01   ; <あ>
- D - I - - 0x026F10 13:AF00: 7F        .byte $7F   ; <,>
- D - I - - 0x026F11 13:AF01: 7F        .byte $7F   ; <,>
- D - I - - 0x026F12 13:AF02: 7F        .byte $7F   ; <,>
- D - I - - 0x026F13 13:AF03: E9        .byte $E9
- D - I - - 0x026F14 13:AF04: 7F        .byte $7F   ; <,>
- D - I - - 0x026F15 13:AF05: 7F        .byte $7F   ; <,>
- D - I - - 0x026F16 13:AF06: 7F        .byte $7F   ; <,>
- D - I - - 0x026F17 13:AF07: E1        .byte $E1
- D - I - - 0x026F18 13:AF08: 7F        .byte $7F   ; <,>
- D - I - - 0x026F19 13:AF09: 7F        .byte $7F   ; <,>
- D - I - - 0x026F1A 13:AF0A: 7F        .byte $7F   ; <,>
- D - I - - 0x026F1B 13:AF0B: 7F        .byte $7F   ; <,>
- D - I - - 0x026F1C 13:AF0C: 7F        .byte $7F   ; <,>
- D - I - - 0x026F1D 13:AF0D: 7F        .byte $7F   ; <,>
- D - I - - 0x026F1E 13:AF0E: 7F        .byte $7F   ; <,>
- D - I - - 0x026F1F 13:AF0F: 7F        .byte $7F   ; <,>
- D - I - - 0x026F20 13:AF10: F0        .byte $F0
- D - I - - 0x026F21 13:AF11: F1        .byte $F1
- D - I - - 0x026F22 13:AF12: 01        .byte $01   ; <あ>
- D - I - - 0x026F23 13:AF13: 01        .byte $01   ; <あ>
- D - I - - 0x026F24 13:AF14: ED        .byte $ED
- D - I - - 0x026F25 13:AF15: 7F        .byte $7F   ; <,>
- D - I - - 0x026F26 13:AF16: F4        .byte $F4
- D - I - - 0x026F27 13:AF17: 01        .byte $01   ; <あ>
- D - I - - 0x026F28 13:AF18: 7F        .byte $7F   ; <,>
- D - I - - 0x026F29 13:AF19: 7F        .byte $7F   ; <,>
- D - I - - 0x026F2A 13:AF1A: F2        .byte $F2
- D - I - - 0x026F2B 13:AF1B: FA        .byte $FA
- D - I - - 0x026F2C 13:AF1C: 7F        .byte $7F   ; <,>
- D - I - - 0x026F2D 13:AF1D: 7F        .byte $7F   ; <,>
- D - I - - 0x026F2E 13:AF1E: 7F        .byte $7F   ; <,>
- D - I - - 0x026F2F 13:AF1F: F3        .byte $F3
- D - I - - 0x026F30 13:AF20: 01        .byte $01   ; <あ>
- D - I - - 0x026F31 13:AF21: 01        .byte $01   ; <あ>
- D - I - - 0x026F32 13:AF22: 01        .byte $01   ; <あ>
- D - I - - 0x026F33 13:AF23: 01        .byte $01   ; <あ>
- D - I - - 0x026F34 13:AF24: 01        .byte $01   ; <あ>
- D - I - - 0x026F35 13:AF25: 01        .byte $01   ; <あ>
- D - I - - 0x026F36 13:AF26: 01        .byte $01   ; <あ>
- D - I - - 0x026F37 13:AF27: E8        .byte $E8
- D - I - - 0x026F38 13:AF28: 01        .byte $01   ; <あ>
- D - I - - 0x026F39 13:AF29: 01        .byte $01   ; <あ>
- D - I - - 0x026F3A 13:AF2A: EC        .byte $EC
- D - I - - 0x026F3B 13:AF2B: 7F        .byte $7F   ; <,>
- D - I - - 0x026F3C 13:AF2C: 01        .byte $01   ; <あ>
- D - I - - 0x026F3D 13:AF2D: EA        .byte $EA
- D - I - - 0x026F3E 13:AF2E: 7F        .byte $7F   ; <,>
- D - I - - 0x026F3F 13:AF2F: 7F        .byte $7F   ; <,>
- D - I - - 0x026F40 13:AF30: EA        .byte $EA
- D - I - - 0x026F41 13:AF31: 7F        .byte $7F   ; <,>
- D - I - - 0x026F42 13:AF32: 7F        .byte $7F   ; <,>
- D - I - - 0x026F43 13:AF33: 7F        .byte $7F   ; <,>
- D - I - - 0x026F44 13:AF34: 7F        .byte $7F   ; <,>
- D - I - - 0x026F45 13:AF35: 7F        .byte $7F   ; <,>
- D - I - - 0x026F46 13:AF36: 7F        .byte $7F   ; <,>
- D - I - - 0x026F47 13:AF37: 7F        .byte $7F   ; <,>
- D - I - - 0x026F48 13:AF38: 7F        .byte $7F   ; <,>
- D - I - - 0x026F49 13:AF39: 7F        .byte $7F   ; <,>
- D - I - - 0x026F4A 13:AF3A: 7F        .byte $7F   ; <,>
- D - I - - 0x026F4B 13:AF3B: 7F        .byte $7F   ; <,>
- D - I - - 0x026F4C 13:AF3C: 7F        .byte $7F   ; <,>
- D - I - - 0x026F4D 13:AF3D: 7F        .byte $7F   ; <,>
- D - I - - 0x026F4E 13:AF3E: 7F        .byte $7F   ; <,>
- D - I - - 0x026F4F 13:AF3F: 7F        .byte $7F   ; <,>
- D - I - - 0x026F50 13:AF40: 01        .byte $01   ; <あ>
- D - I - - 0x026F51 13:AF41: 01        .byte $01   ; <あ>
- D - I - - 0x026F52 13:AF42: E6        .byte $E6
- D - I - - 0x026F53 13:AF43: E7        .byte $E7
- D - I - - 0x026F54 13:AF44: 01        .byte $01   ; <あ>
- D - I - - 0x026F55 13:AF45: E4        .byte $E4
- D - I - - 0x026F56 13:AF46: E5        .byte $E5
- D - I - - 0x026F57 13:AF47: 7F        .byte $7F   ; <,>
- D - I - - 0x026F58 13:AF48: EE        .byte $EE
- D - I - - 0x026F59 13:AF49: 7F        .byte $7F   ; <,>
- D - I - - 0x026F5A 13:AF4A: 7F        .byte $7F   ; <,>
- D - I - - 0x026F5B 13:AF4B: 7F        .byte $7F   ; <,>
- D - I - - 0x026F5C 13:AF4C: E3        .byte $E3
- D - I - - 0x026F5D 13:AF4D: 7F        .byte $7F   ; <,>
- D - I - - 0x026F5E 13:AF4E: 7F        .byte $7F   ; <,>
- D - I - - 0x026F5F 13:AF4F: 7F        .byte $7F   ; <,>
- - - - - - 0x026F60 13:AF50: 01        .byte $01   ; <あ>
- - - - - - 0x026F61 13:AF51: 01        .byte $01   ; <あ>
- - - - - - 0x026F62 13:AF52: 01        .byte $01   ; <あ>
- - - - - - 0x026F63 13:AF53: 01        .byte $01   ; <あ>
- - - - - - 0x026F64 13:AF54: 01        .byte $01   ; <あ>
- - - - - - 0x026F65 13:AF55: 01        .byte $01   ; <あ>
- - - - - - 0x026F66 13:AF56: 01        .byte $01   ; <あ>
- - - - - - 0x026F67 13:AF57: 01        .byte $01   ; <あ>
- - - - - - 0x026F68 13:AF58: 00        .byte $00
- - - - - - 0x026F69 13:AF59: 00        .byte $00
- - - - - - 0x026F6A 13:AF5A: 00        .byte $00
- - - - - - 0x026F6B 13:AF5B: 00        .byte $00
- - - - - - 0x026F6C 13:AF5C: 00        .byte $00
- - - - - - 0x026F6D 13:AF5D: 00        .byte $00
- - - - - - 0x026F6E 13:AF5E: 00        .byte $00
- - - - - - 0x026F6F 13:AF5F: 00        .byte $00
- D - I - - 0x026F70 13:AF60: 7F        .byte $7F   ; <,>
- D - I - - 0x026F71 13:AF61: 7F        .byte $7F   ; <,>
- D - I - - 0x026F72 13:AF62: 7F        .byte $7F   ; <,>
- D - I - - 0x026F73 13:AF63: 7F        .byte $7F   ; <,>
- D - I - - 0x026F74 13:AF64: 7F        .byte $7F   ; <,>
- D - I - - 0x026F75 13:AF65: 7F        .byte $7F   ; <,>
- D - I - - 0x026F76 13:AF66: 7F        .byte $7F   ; <,>
- D - I - - 0x026F77 13:AF67: 7F        .byte $7F   ; <,>
- D - I - - 0x026F78 13:AF68: 00        .byte $00
- D - I - - 0x026F79 13:AF69: 00        .byte $00
- D - I - - 0x026F7A 13:AF6A: 00        .byte $00
- D - I - - 0x026F7B 13:AF6B: 00        .byte $00
- D - I - - 0x026F7C 13:AF6C: 00        .byte $00
- D - I - - 0x026F7D 13:AF6D: 00        .byte $00
- D - I - - 0x026F7E 13:AF6E: 00        .byte $00
- D - I - - 0x026F7F 13:AF6F: 00        .byte $00
- D - I - - 0x026F80 13:AF70: 2A        .byte $2A   ; <れ>
- D - I - - 0x026F81 13:AF71: 2B        .byte $2B   ; <ろ>
- D - I - - 0x026F82 13:AF72: 2A        .byte $2A   ; <れ>
- D - I - - 0x026F83 13:AF73: 2B        .byte $2B   ; <ろ>
- D - I - - 0x026F84 13:AF74: 2B        .byte $2B   ; <ろ>
- D - I - - 0x026F85 13:AF75: 2A        .byte $2A   ; <れ>
- D - I - - 0x026F86 13:AF76: 2B        .byte $2B   ; <ろ>
- D - I - - 0x026F87 13:AF77: 2A        .byte $2A   ; <れ>
- D - I - - 0x026F88 13:AF78: 2A        .byte $2A   ; <れ>
- D - I - - 0x026F89 13:AF79: 2B        .byte $2B   ; <ろ>
- D - I - - 0x026F8A 13:AF7A: 2A        .byte $2A   ; <れ>
- D - I - - 0x026F8B 13:AF7B: 2B        .byte $2B   ; <ろ>
- D - I - - 0x026F8C 13:AF7C: 2B        .byte $2B   ; <ろ>
- D - I - - 0x026F8D 13:AF7D: 2A        .byte $2A   ; <れ>
- D - I - - 0x026F8E 13:AF7E: 2B        .byte $2B   ; <ろ>
- D - I - - 0x026F8F 13:AF7F: 2A        .byte $2A   ; <れ>
- D - I - - 0x026F90 13:AF80: 01        .byte $01   ; <あ>
- D - I - - 0x026F91 13:AF81: 01        .byte $01   ; <あ>
- D - I - - 0x026F92 13:AF82: 01        .byte $01   ; <あ>
- D - I - - 0x026F93 13:AF83: 01        .byte $01   ; <あ>
- D - I - - 0x026F94 13:AF84: 01        .byte $01   ; <あ>
- D - I - - 0x026F95 13:AF85: 01        .byte $01   ; <あ>
- D - I - - 0x026F96 13:AF86: 01        .byte $01   ; <あ>
- D - I - - 0x026F97 13:AF87: 01        .byte $01   ; <あ>
- D - I - - 0x026F98 13:AF88: 04        .byte $04   ; <え>
- D - I - - 0x026F99 13:AF89: 05        .byte $05   ; <お>
- D - I - - 0x026F9A 13:AF8A: 02        .byte $02   ; <い>
- D - I - - 0x026F9B 13:AF8B: 03        .byte $03   ; <う>
- D - I - - 0x026F9C 13:AF8C: 06        .byte $06   ; <か>
- D - I - - 0x026F9D 13:AF8D: 07        .byte $07   ; <き>
- D - I - - 0x026F9E 13:AF8E: 03        .byte $03   ; <う>
- D - I - - 0x026F9F 13:AF8F: 03        .byte $03   ; <う>
- D - I - - 0x026FA0 13:AF90: 23        .byte $23   ; <も>
- D - I - - 0x026FA1 13:AF91: 03        .byte $03   ; <う>
- D - I - - 0x026FA2 13:AF92: 01        .byte $01   ; <あ>
- D - I - - 0x026FA3 13:AF93: 01        .byte $01   ; <あ>
- D - I - - 0x026FA4 13:AF94: 09        .byte $09   ; <け>
- D - I - - 0x026FA5 13:AF95: 09        .byte $09   ; <け>
- D - I - - 0x026FA6 13:AF96: 27        .byte $27   ; <ら>
- D - I - - 0x026FA7 13:AF97: 01        .byte $01   ; <あ>
- D - I - - 0x026FA8 13:AF98: 03        .byte $03   ; <う>
- D - I - - 0x026FA9 13:AF99: 2C        .byte $2C   ; <わ>
- D - I - - 0x026FAA 13:AF9A: 2D        .byte $2D   ; <を>
- D - I - - 0x026FAB 13:AF9B: 0D        .byte $0D   ; <す>
- D - I - - 0x026FAC 13:AF9C: 03        .byte $03   ; <う>
- D - I - - 0x026FAD 13:AF9D: 2E        .byte $2E   ; <ん>
- D - I - - 0x026FAE 13:AF9E: 0C        .byte $0C   ; <し>
- D - I - - 0x026FAF 13:AF9F: 0F        .byte $0F   ; <そ>
- D - I - - 0x026FB0 13:AFA0: 01        .byte $01   ; <あ>
- D - I - - 0x026FB1 13:AFA1: 01        .byte $01   ; <あ>
- D - I - - 0x026FB2 13:AFA2: 01        .byte $01   ; <あ>
- D - I - - 0x026FB3 13:AFA3: 01        .byte $01   ; <あ>
- D - I - - 0x026FB4 13:AFA4: 01        .byte $01   ; <あ>
- D - I - - 0x026FB5 13:AFA5: 01        .byte $01   ; <あ>
- D - I - - 0x026FB6 13:AFA6: 01        .byte $01   ; <あ>
- D - I - - 0x026FB7 13:AFA7: 01        .byte $01   ; <あ>
- D - I - - 0x026FB8 13:AFA8: 10        .byte $10   ; <た>
- D - I - - 0x026FB9 13:AFA9: 01        .byte $01   ; <あ>
- D - I - - 0x026FBA 13:AFAA: 01        .byte $01   ; <あ>
- D - I - - 0x026FBB 13:AFAB: 01        .byte $01   ; <あ>
- D - I - - 0x026FBC 13:AFAC: 12        .byte $12   ; <つ>
- D - I - - 0x026FBD 13:AFAD: 01        .byte $01   ; <あ>
- D - I - - 0x026FBE 13:AFAE: 01        .byte $01   ; <あ>
- D - I - - 0x026FBF 13:AFAF: 01        .byte $01   ; <あ>
- D - I - - 0x026FC0 13:AFB0: 01        .byte $01   ; <あ>
- D - I - - 0x026FC1 13:AFB1: 01        .byte $01   ; <あ>
- D - I - - 0x026FC2 13:AFB2: 01        .byte $01   ; <あ>
- D - I - - 0x026FC3 13:AFB3: 01        .byte $01   ; <あ>
- D - I - - 0x026FC4 13:AFB4: 01        .byte $01   ; <あ>
- D - I - - 0x026FC5 13:AFB5: 01        .byte $01   ; <あ>
- D - I - - 0x026FC6 13:AFB6: 01        .byte $01   ; <あ>
- D - I - - 0x026FC7 13:AFB7: 01        .byte $01   ; <あ>
- D - I - - 0x026FC8 13:AFB8: 01        .byte $01   ; <あ>
- D - I - - 0x026FC9 13:AFB9: 01        .byte $01   ; <あ>
- D - I - - 0x026FCA 13:AFBA: 01        .byte $01   ; <あ>
- D - I - - 0x026FCB 13:AFBB: 11        .byte $11   ; <ち>
- D - I - - 0x026FCC 13:AFBC: 01        .byte $01   ; <あ>
- D - I - - 0x026FCD 13:AFBD: 01        .byte $01   ; <あ>
- D - I - - 0x026FCE 13:AFBE: 01        .byte $01   ; <あ>
- D - I - - 0x026FCF 13:AFBF: 13        .byte $13   ; <て>
- D - I - - 0x026FD0 13:AFC0: 01        .byte $01   ; <あ>
- D - I - - 0x026FD1 13:AFC1: 01        .byte $01   ; <あ>
- D - I - - 0x026FD2 13:AFC2: 03        .byte $03   ; <う>
- D - I - - 0x026FD3 13:AFC3: 33        .byte $33   ; <0>
- D - I - - 0x026FD4 13:AFC4: 01        .byte $01   ; <あ>
- D - I - - 0x026FD5 13:AFC5: 37        .byte $37   ; <4>
- D - I - - 0x026FD6 13:AFC6: 09        .byte $09   ; <け>
- D - I - - 0x026FD7 13:AFC7: 09        .byte $09   ; <け>
- D - I - - 0x026FD8 13:AFC8: 1D        .byte $1D   ; <へ>
- D - I - - 0x026FD9 13:AFC9: 3D        .byte $3D   ; <+>
- D - I - - 0x026FDA 13:AFCA: 3C        .byte $3C   ; <9>
- D - I - - 0x026FDB 13:AFCB: 03        .byte $03   ; <う>
- D - I - - 0x026FDC 13:AFCC: 1F        .byte $1F   ; <ま>
- D - I - - 0x026FDD 13:AFCD: 1C        .byte $1C   ; <ふ>
- D - I - - 0x026FDE 13:AFCE: 3E        .byte $3E   ; <Jr>
- D - I - - 0x026FDF 13:AFCF: 03        .byte $03   ; <う>
- D - I - - 0x026FE0 13:AFD0: 01        .byte $01   ; <あ>
- D - I - - 0x026FE1 13:AFD1: 01        .byte $01   ; <あ>
- D - I - - 0x026FE2 13:AFD2: 01        .byte $01   ; <あ>
- D - I - - 0x026FE3 13:AFD3: 01        .byte $01   ; <あ>
- D - I - - 0x026FE4 13:AFD4: 01        .byte $01   ; <あ>
- D - I - - 0x026FE5 13:AFD5: 01        .byte $01   ; <あ>
- D - I - - 0x026FE6 13:AFD6: 01        .byte $01   ; <あ>
- D - I - - 0x026FE7 13:AFD7: 01        .byte $01   ; <あ>
- D - I - - 0x026FE8 13:AFD8: 03        .byte $03   ; <う>
- D - I - - 0x026FE9 13:AFD9: 02        .byte $02   ; <い>
- D - I - - 0x026FEA 13:AFDA: 15        .byte $15   ; <な>
- D - I - - 0x026FEB 13:AFDB: 14        .byte $14   ; <と>
- D - I - - 0x026FEC 13:AFDC: 03        .byte $03   ; <う>
- D - I - - 0x026FED 13:AFDD: 03        .byte $03   ; <う>
- D - I - - 0x026FEE 13:AFDE: 17        .byte $17   ; <ぬ>
- D - I - - 0x026FEF 13:AFDF: 16        .byte $16   ; <に>
- D - I - - 0x026FF0 13:AFE0: 2A        .byte $2A   ; <れ>
- D - I - - 0x026FF1 13:AFE1: 2B        .byte $2B   ; <ろ>
- D - I - - 0x026FF2 13:AFE2: 2A        .byte $2A   ; <れ>
- D - I - - 0x026FF3 13:AFE3: 2B        .byte $2B   ; <ろ>
- D - I - - 0x026FF4 13:AFE4: 2B        .byte $2B   ; <ろ>
- D - I - - 0x026FF5 13:AFE5: 2A        .byte $2A   ; <れ>
- D - I - - 0x026FF6 13:AFE6: 2B        .byte $2B   ; <ろ>
- D - I - - 0x026FF7 13:AFE7: 2A        .byte $2A   ; <れ>
- D - I - - 0x026FF8 13:AFE8: 00        .byte $00
- D - I - - 0x026FF9 13:AFE9: 00        .byte $00
- D - I - - 0x026FFA 13:AFEA: 00        .byte $00
- D - I - - 0x026FFB 13:AFEB: 00        .byte $00
- D - I - - 0x026FFC 13:AFEC: 00        .byte $00
- D - I - - 0x026FFD 13:AFED: 00        .byte $00
- D - I - - 0x026FFE 13:AFEE: 00        .byte $00
- D - I - - 0x026FFF 13:AFEF: 00        .byte $00
- - - - - - 0x027000 13:AFF0: 01        .byte $01   ; <あ>
- - - - - - 0x027001 13:AFF1: 01        .byte $01   ; <あ>
- - - - - - 0x027002 13:AFF2: 01        .byte $01   ; <あ>
- - - - - - 0x027003 13:AFF3: 01        .byte $01   ; <あ>
- - - - - - 0x027004 13:AFF4: 01        .byte $01   ; <あ>
- - - - - - 0x027005 13:AFF5: 01        .byte $01   ; <あ>
- - - - - - 0x027006 13:AFF6: 01        .byte $01   ; <あ>
- - - - - - 0x027007 13:AFF7: 01        .byte $01   ; <あ>
- - - - - - 0x027008 13:AFF8: 01        .byte $01   ; <あ>
- - - - - - 0x027009 13:AFF9: 01        .byte $01   ; <あ>
- - - - - - 0x02700A 13:AFFA: 01        .byte $01   ; <あ>
- - - - - - 0x02700B 13:AFFB: 01        .byte $01   ; <あ>
- - - - - - 0x02700C 13:AFFC: 01        .byte $01   ; <あ>
- - - - - - 0x02700D 13:AFFD: 01        .byte $01   ; <あ>
- - - - - - 0x02700E 13:AFFE: 01        .byte $01   ; <あ>
- - - - - - 0x02700F 13:AFFF: 01        .byte $01   ; <あ>

loc_0x027010:
C D - - - - 0x027010 13:B000: A9 00     LDA #$00
C - - - - - 0x027012 13:B002: 8D 90 04  STA ram_chr_bank
C - - - - - 0x027015 13:B005: A9 02     LDA #$02
C - - - - - 0x027017 13:B007: 8D 91 04  STA ram_chr_bank + 1
C - - - - - 0x02701A 13:B00A: 8D 87 00  STA ram_0087
C - - - - - 0x02701D 13:B00D: A9 67     LDA #< tbl_B467_титры
C - - - - - 0x02701F 13:B00F: 85 88     STA ram_0088
C - - - - - 0x027021 13:B011: A9 B4     LDA #> tbl_B467_титры
C - - - - - 0x027023 13:B013: 85 89     STA ram_0089
C - - - - - 0x027025 13:B015: A9 00     LDA #$00
C - - - - - 0x027027 13:B017: 8D FB 05  STA ram_команда_с_мячом
C - - - - - 0x02702A 13:B01A: A9 09     LDA #$09
C - - - - - 0x02702C 13:B01C: 8D 41 04  STA ram_игрок_с_мячом
C - - - - - 0x02702F 13:B01F: A9 14     LDA #$14
C - - - - - 0x027031 13:B021: 8D 42 04  STA ram_игрок_без_мяча
C - - - - - 0x027034 13:B024: A9 80     LDA #$80
C - - - - - 0x027036 13:B026: 8D 3F 06  STA ram_063F
C - - - - - 0x027039 13:B029: A9 00     LDA #$00
C - - - - - 0x02703B 13:B02B: 85 8A     STA ram_008A
loc_B02D:
C D - - - - 0x02703D 13:B02D: A4 8A     LDY ram_008A
C - - - - - 0x02703F 13:B02F: B1 88     LDA (ram_0088),Y
C - - - - - 0x027041 13:B031: C9 E0     CMP #$E0
C - - - - - 0x027043 13:B033: 90 08     BCC bra_B03D_меньше_E0
C - - - - - 0x027045 13:B035: E6 8A     INC ram_008A
C - - - - - 0x027047 13:B037: 20 5A B1  JSR sub_B15A_управляющие_байты_титров
C - - - - - 0x02704A 13:B03A: 4C 2D B0  JMP loc_B02D
bra_B03D_меньше_E0:
C - - - - - 0x02704D 13:B03D: 20 43 B0  JSR sub_B043
C - - - - - 0x027050 13:B040: 4C 2D B0  JMP loc_B02D

sub_B043:
C - - - - - 0x027053 13:B043: 2C 3F 06  BIT ram_063F
C - - - - - 0x027056 13:B046: 50 03     BVC bra_B04B
C - - - - - 0x027058 13:B048: 4C AF B0  JMP loc_B0AF_скрытие_букв_спрайтами
bra_B04B:
bra_B04B_loop:
C - - - - - 0x02705B 13:B04B: A9 01     LDA #$01
C - - - - - 0x02705D 13:B04D: 20 15 C5  JSR sub_0x03CB1F_задержка
C - - - - - 0x027060 13:B050: AD 15 05  LDA ram_0515
C - - - - - 0x027063 13:B053: D0 F6     BNE bra_B04B_loop
C - - - - - 0x027065 13:B055: A9 01     LDA #$01
C - - - - - 0x027067 13:B057: 8D 15 05  STA ram_0515
C - - - - - 0x02706A 13:B05A: A2 47     LDX #$47
C - - - - - 0x02706C 13:B05C: A9 00     LDA #$00
bra_B05E_очистка_буфера:
C - - - - - 0x02706E 13:B05E: 9D A5 04  STA ram_04A5,X
C - - - - - 0x027071 13:B061: CA        DEX
C - - - - - 0x027072 13:B062: 10 FA     BPL bra_B05E_очистка_буфера
; количество символов в буфере
C - - - - - 0x027074 13:B064: A9 20     LDA #$20
C - - - - - 0x027076 13:B066: 8D A5 04  STA ram_04A5
C - - - - - 0x02707F 13:B06F: A5 8B     LDA ram_008B
C - - - - - 0x02708B 13:B07B: 8D A7 04  STA ram_04A7
C - - - - - 0x02709C 13:B08C: A5 8B     LDA ram_0086
                                        PHA
                                        AND #$E0
                                        STA ram_04A6
                                        PLA
                                        AND #$1F
                                        TAX
bra_B092_запись_текста_в_буфер:
C - - - - - 0x0270A2 13:B092: A4 8A     LDY ram_008A
C - - - - - 0x0270A4 13:B094: B1 88     LDA (ram_0088),Y
C - - - - - 0x0270A6 13:B096: C9 E0     CMP #$E0
C - - - - - 0x0270A8 13:B098: B0 0F     BCS bra_B0A9_E0_и_выше
C - - - - - 0x0270B1 13:B0A1: 9D A8 04  STA ram_04A8,X
C - - - - - 0x0270B4 13:B0A4: E8        INX
C - - - - - 0x0270B5 13:B0A5: E6 8A     INC ram_008A
C - - - - - 0x0270B7 13:B0A7: D0 E9     BNE bra_B092_запись_текста_в_буфер
bra_B0A9_E0_и_выше:
C - - - - - 0x0270B9 13:B0A9: A9 80     LDA #$80
C - - - - - 0x0270BB 13:B0AB: 8D 15 05  STA ram_0515
C - - - - - 0x0270BE 13:B0AE: 60        RTS

loc_B0AF_скрытие_букв_спрайтами:
C D - - - - 0x0270BF 13:B0AF: A4 8A     LDY ram_008A
C - - - - - 0x0270C1 13:B0B1: B1 88     LDA (ram_0088),Y
C - - - - - 0x0270C3 13:B0B3: C9 E0     CMP #$E0
C - - - - - 0x0270C5 13:B0B5: 90 01     BCC bra_B0B8_меньше_E0
C - - - - - 0x0270C7 13:B0B7: 60        RTS
bra_B0B8_меньше_E0:
C - - - - - 0x0270C8 13:B0B8: E6 8A     INC ram_008A
C - - - - - 0x0270CA 13:B0BA: 48        PHA
bra_B0BB_loop:
C - - - - - 0x0270CB 13:B0BB: A9 01     LDA #$01
C - - - - - 0x0270CD 13:B0BD: 20 15 C5  JSR sub_0x03CB1F_задержка
C - - - - - 0x0270D0 13:B0C0: AD 15 05  LDA ram_0515
C - - - - - 0x0270D3 13:B0C3: D0 F6     BNE bra_B0BB_loop
C - - - - - 0x0270D5 13:B0C5: A9 01     LDA #$01
C - - - - - 0x0270D7 13:B0C7: 8D 15 05  STA ram_0515
; закрытие буфера
C - - - - - 0x0270DA 13:B0CA: A2 00     LDX #$00
C - - - - - 0x0270DC 13:B0CC: 8E AD 04  STX ram_04A9
; bzk бесполезный адрес 003A
C - - - - - 0x0270DF 13:B0CF: 86 3A     STX ram_003A
C - - - - - 0x0270E1 13:B0D1: E8        INX
C - - - - - 0x0270E2 13:B0D2: 8E A5 04  STX ram_04A5
C - - - - - 0x0270E8 13:B0D8: A5 8B     LDA ram_008B
C - - - - - 0x0270F4 13:B0E4: 8D A7 04  STA ram_04A7
C - - - - - 0x0270FA 13:B0EA: A5 8B     LDA ram_0086
C - - - - - 0x027102 13:B0F2: 8D A6 04  STA ram_04A6
C - - - - - 0x02710B 13:B0FB: 68        PLA
C - - - - - 0x02710F 13:B0FF: 8D AC 04  STA ram_04A8
C - - - - - 0x027115 13:B105: A9 80     LDA #$80
C - - - - - 0x027117 13:B107: 8D 15 05  STA ram_0515
                                        LDA #$00
bra_B10C_задержка_следующей_буквы:
C - - - - - 0x02711C 13:B10C: 48        PHA
C - - - - - 0x02711D 13:B10D: 20 27 B1  JSR sub_B127_позиция_спрайта_для_скрытия_буквы
C - - - - - 0x027120 13:B110: A9 01     LDA #$01
C - - - - - 0x027122 13:B112: 20 15 C5  JSR sub_0x03CB1F_задержка
C - - - - - 0x027125 13:B115: 68        PLA
C - - - - - 0x027126 13:B116: 18        CLC
C - - - - - 0x027127 13:B117: 69 02     ADC #$04
C - - - - - 0x027129 13:B119: C9 08     CMP #$08
C - - - - - 0x02712B 13:B11B: D0 EF     BNE bra_B10C_задержка_следующей_буквы
C - - - - - 0x02712D 13:B11D: A5 8B     INC ram_0086
C - - - - - 0x027134 13:B124: 4C AF B0  JMP loc_B0AF_скрытие_букв_спрайтами

sub_B127_позиция_спрайта_для_скрытия_буквы:
.scope
ram_temp = ram_003A
                                        STA ram_temp
                                        LDA ram_0086
                                        AND #$1F
                                        ASL
                                        ASL
                                        ASL
                                        CLC
                                        ADC ram_temp
                                        STA ram_spr_X + $FC
                                        LDA #$01
                                        STA ram_spr_T + $FC
                                        LDA #$00
                                        STA ram_spr_A + $FC
                                        LDA ram_0086
                                        AND #$E0
                                        LSR
                                        LSR
                                        SEC
                                        SBC #$10
                                        LDY ram_008B
                                        CPY #$23
                                        BNE @пропуск
                                        CLC
                                        ADC #$40
@пропуск:
                                        CLC
                                        ADC #$88
                                        STA ram_spr_Y + $FC
                                        RTS
.endscope

sub_B15A_управляющие_байты_титров:
C - - - - - 0x02716A 13:B15A: 20 60 B1  JSR sub_B160_управляющие_байты
C D - - - - 0x027349 13:B339: A5 8A     LDA ram_008A
C - - - - - 0x02734B 13:B33B: 18        CLC
C - - - - - 0x02734C 13:B33C: 65 88     ADC ram_0088
C - - - - - 0x02734E 13:B33E: 85 88     STA ram_0088
C - - - - - 0x027350 13:B340: 90 02     BCC bra_B344_not_overflow
C - - - - - 0x027352 13:B342: E6 89     INC ram_0089
bra_B344_not_overflow:
C - - - - - 0x027354 13:B344: A9 00     LDA #$00
C - - - - - 0x027356 13:B346: 85 8A     STA ram_008A
C - - - - - 0x027358 13:B348: 60        RTS

sub_B160_управляющие_байты:
C - - - - - 0x027170 13:B160: 38        SEC
C - - - - - 0x027171 13:B161: E9 E0     SBC #$E0
C - - - - - 0x027173 13:B163: 20 09 C5  JSR sub_0x03CBA9_байты_после_JSR_для_непрямого_прыжка
- D - I - - 0x027176 13:B166: A6 B1     .word ofs_020_B1A6_E0_рожа_игрока_или_фон
- D - I - - 0x027178 13:B168: E0 B1     .word ofs_020_B1E0_E1_таймер_перед_следующим_экраном
- D - I - - 0x02717A 13:B16A: F3 B1     .word ofs_020_B1F3_E2_параметры_игрока
- D - I - - 0x02717C 13:B16C: 18 B2     .word ofs_020_B218_E3_заяц
- D - I - - 0x02717E 13:B16E: 1B B2     .word ofs_020_B21B_E4_смещение_текста
- D - I - - 0x027180 13:B170: 24 B2     .word ofs_020_B224_E5_яркость_и_отображение_текста
- D - I - - 0x027182 13:B172: 35 B2     .word ofs_020_B235_E6_toggle_открывать_текст_движением_спрайта
- D - I - - 0x0271AE 13:B19E: 33 B3     .word ofs_020_B333_E7_закончить_чтение_строки

ofs_020_B1A6_E0_рожа_игрока_или_фон:
.scope
C - J - - - 0x0271B6 13:B1A6: 20 2D C5  JSR sub_очистить_текст
C - - - - - 0x0271B9 13:B1A9: A4 8A     LDY ram_008A
C - - - - - 0x0271BB 13:B1AB: E6 8A     INC ram_008A
C - - - - - 0x0271BD 13:B1AD: B1 88     LDA (ram_0088),Y
C - - - - - 0x0271BF 13:B1AF: 20 4E C5  JSR sub_0x03CBC0_запись_номера_сценария
bra_B1B2_loop:
C - - - - - 0x0271C2 13:B1B2: A9 01     LDA #$01
C - - - - - 0x0271C4 13:B1B4: 20 15 C5  JSR sub_0x03CB1F_задержка
C - - - - - 0x0271C7 13:B1B7: AD 16 05  LDA ram_флаг_сценария_ХЗ
C - - - - - 0x0271CA 13:B1BA: D0 F6     BNE bra_B1B2_loop
C - - - - - 0x0271CC 13:B1BC: A9 00     LDA #$00
C - - - - - 0x0271CE 13:B1BE: 85 11     STA ram_0011
C - - - - - 0x0271D0 13:B1C0: 85 12     STA ram_0012
C - - - - - 0x0271D4 13:B1C4: 85 0D     STA ram_000D
C - - - - - 0x0271D6 13:B1C6: 85 0E     STA ram_000E
C - - - - - 0x0271DA 13:B1CA: 8D D2 05  STA ram_05D2
C - - - - - 0x0271DD 13:B1CD: AA        TAX
bra_B1CE_loop:
C - - - - - 0x0271DE 13:B1CE: A9 FF     LDA #$FF
C - - - - - 0x0271E0 13:B1D0: 9D 58 05  STA ram_0468 + $F0,X
C - - - - - 0x0271E3 13:B1D3: 9D 57 05  STA ram_046B + $EC,X
C - - - - - 0x0271E6 13:B1D6: 8A        TXA
C - - - - - 0x0271E7 13:B1D7: 18        CLC
C - - - - - 0x0271E8 13:B1D8: 69 15     ADC #$15
C - - - - - 0x0271EA 13:B1DA: AA        TAX
C - - - - - 0x0271EB 13:B1DB: E0 7E     CPX #$7E
C - - - - - 0x0271ED 13:B1DD: D0 EF     BNE bra_B1CE_loop
C - - - - - 0x0271EF 13:B1DF: 60        RTS

sub_очистить_текст:
; 04A5 - счетчик тайлов
; 04A6 - 2006 lo
; 04A7 - 2006 hi
; 04A8 - тайл
; 04AD - конец буфера
    LDA #$01
    STA ram_0515
    LDA #$40
    STA ram_04A5
    LDA #$22
    STA ram_04A7
    LDA #$00
    STA ram_04A6
    STA ram_04A8
    STA ram_04A9
    STA ram_05F4       ; bzk возможно не обязательно, было скопировано из 0x03CC56
    LDA #$06        ; счетчик цикла
@цикл_очистки_экрана:
    PHA
@ожидание_очистки:
    LDA #$81
    STA ram_0515
    LDA #$01
    JSR sub_0x03CB1F_задержка
    LDA ram_0515
    BNE @ожидание_очистки
    LDA #$01
    STA ram_0515
    LDA ram_04A6
    CLC
    ADC #$40        ; увеличение адреса на 40, начиная с 2200
    STA ram_04A6
    BCC @пропуск
    INC ram_04A7
@пропуск:
    PLA
    SEC
    SBC #$01
    BPL @цикл_очистки_экрана
    LSR ram_04A5       ; 40 / 2 = 20
    LDA #$E0        ; очистка второй половины атрибутов
    STA ram_04A6
    LDA #$81
    STA ram_0515
    LDA #$01
    JSR sub_0x03CB1F_задержка
    RTS
.endscope

ofs_020_B1E0_E1_таймер_перед_следующим_экраном:
C - J - - - 0x0271F0 13:B1E0: A4 8A     LDY ram_008A
C - - - - - 0x0271F2 13:B1E2: E6 8A     INC ram_008A
C - - - - - 0x0271F4 13:B1E4: B1 88     LDA (ram_0088),Y
bra_B1E6_loop:
C - - - - - 0x0271F6 13:B1E6: 48        PHA
C - - - - - 0x0271F7 13:B1E7: A9 01     LDA #$01
C - - - - - 0x0271F9 13:B1E9: 20 15 C5  JSR sub_0x03CB1F_задержка
C - - - - - 0x0271FC 13:B1EC: 68        PLA
C - - - - - 0x0271FD 13:B1ED: 38        SEC
C - - - - - 0x0271FE 13:B1EE: E9 01     SBC #$01
C - - - - - 0x027200 13:B1F0: D0 F4     BNE bra_B1E6_loop
C - - - - - 0x027202 13:B1F2: 60        RTS

ofs_020_B1F3_E2_параметры_игрока:
C - J - - - 0x027203 13:B1F3: A4 8A     LDY ram_008A
C - - - - - 0x027205 13:B1F5: B1 88     LDA (ram_0088),Y
C - - - - - 0x027207 13:B1F7: AA        TAX
C - - - - - 0x027208 13:B1F8: C8        INY
C - - - - - 0x027209 13:B1F9: B1 88     LDA (ram_0088),Y
C - - - - - 0x02720B 13:B1FB: 48        PHA
C - - - - - 0x02720C 13:B1FC: C8        INY
C - - - - - 0x02720D 13:B1FD: B1 88     LDA (ram_0088),Y
C - - - - - 0x02720F 13:B1FF: C8        INY
C - - - - - 0x027210 13:B200: 84 8A     STY ram_008A
C - - - - - 0x027212 13:B202: C9 0B     CMP #$0B
C - - - - - 0x027214 13:B204: B0 06     BCS bra_B20C
C - - - - - 0x027216 13:B206: 8E 2A 00  STX ram_твоя_команда
C - - - - - 0x027219 13:B209: 4C 0F B2  JMP loc_B20F
bra_B20C:
C - - - - - 0x02721C 13:B20C: 8E 2B 00  STX ram_команда_соперника
loc_B20F:
C D - - - - 0x02721F 13:B20F: 20 0C C5  JSR sub_0x03CD8C_получить_адрес_игрока
C - - - - - 0x027222 13:B212: 68        PLA
C - - - - - 0x027223 13:B213: A0 00     LDY #con_plr_id
C - - - - - 0x027225 13:B215: 91 34     STA (ram_plr_data),Y
C - - - - - 0x027227 13:B217: 60        RTS

ofs_020_B21B_E4_смещение_текста:
C - J - - - 0x02722B 13:B21B: A4 8A     LDY ram_008A
C - - - - - 0x02722F 13:B21F: B1 88     LDA (ram_0088),Y
C - - - - - 0x027231 13:B221: 85 8B     STA ram_0086
                                        INY
                                        LDA (ram_0088),Y
                                        STA ram_008B
                                        INY
                                        STY ram_008A
C - - - - - 0x027233 13:B223: 60        RTS

ofs_020_B224_E5_яркость_и_отображение_текста:
C - J - - - 0x027234 13:B224: A4 8A     LDY ram_008A
C - - - - - 0x027236 13:B226: E6 8A     INC ram_008A
C - - - - - 0x027238 13:B228: B1 88     LDA (ram_0088),Y
C - - - - - 0x02723A 13:B22A: 20 09 C5  JSR sub_0x03CBA9_байты_после_JSR_для_непрямого_прыжка
- D - I - - 0x02723D 13:B22D: 3E B2     .word ofs_021_B23E_00_осветление_экрана
- D - I - - 0x027241 13:B231: A6 B2     .word ofs_021_B2A6_01_затемнение_экрана
- D - I - - 0x027243 13:B233: DB B2     .word ofs_021_B2DB_02_отображение_текста

ofs_020_B235_E6_toggle_открывать_текст_движением_спрайта:
C - J - - - 0x027245 13:B235: AD 3F 06  LDA ram_063F
C - - - - - 0x027248 13:B238: 09 40     ORA #$40
C - - - - - 0x02724A 13:B23A: 8D 3F 06  STA ram_063F
C - - - - - 0x02724D 13:B23D: 60        RTS

ofs_021_B23E_00_осветление_экрана:
C - J - - - 0x02724E 13:B23E: A9 0F     LDA #$0F
C - - - - - 0x027250 13:B240: 8D 72 04  STA ram_046A + 8
C - - - - - 0x027253 13:B243: 4C F7 B2  JMP loc_B2F7

sub_B2A6:
ofs_021_B2A6_01_затемнение_экрана:
C - J - - - 0x0272B6 13:B2A6: A9 30     LDA #$30
bra_B2A8_loop:
C - - - - - 0x0272B8 13:B2A8: 48        PHA
C - - - - - 0x0272B9 13:B2A9: A9 02     LDA #$02
C - - - - - 0x0272BB 13:B2AB: 20 15 C5  JSR sub_0x03CB1F_задержка
C - - - - - 0x0272BE 13:B2AE: 68        PLA
C - - - - - 0x0272BF 13:B2AF: 85 3A     STA ram_003A
C - - - - - 0x0272C1 13:B2B1: A2 00     LDX #$00
bra_B2B3_loop:
C - - - - - 0x0272C3 13:B2B3: 8A        TXA
C - - - - - 0x0272C4 13:B2B4: 29 03     AND #$03
C - - - - - 0x0272C6 13:B2B6: F0 10     BEQ bra_B2C8
C - - - - - 0x0272C8 13:B2B8: BD 6F 04  LDA ram_046B + 4,X
C - - - - - 0x0272CB 13:B2BB: 29 0F     AND #$0F
C - - - - - 0x0272CD 13:B2BD: 05 3A     ORA ram_003A
C - - - - - 0x0272CF 13:B2BF: A4 3A     LDY ram_003A
C - - - - - 0x0272D1 13:B2C1: D0 02     BNE bra_B2C5
C - - - - - 0x0272D3 13:B2C3: A9 0F     LDA #$0F
bra_B2C5:
C - - - - - 0x0272D5 13:B2C5: 9D 6F 04  STA ram_046B + 4,X
bra_B2C8:
C - - - - - 0x0272D8 13:B2C8: E8        INX
C - - - - - 0x0272D9 13:B2C9: E0 20     CPX #$20
C - - - - - 0x0272DB 13:B2CB: D0 E6     BNE bra_B2B3_loop
C - - - - - 0x0272DD 13:B2CD: 20 33 C5  JSR sub_0x03CCE3
C - - - - - 0x0272E3 13:B2D3: A5 3A     LDA ram_003A
C - - - - - 0x0272E5 13:B2D5: 38        SEC
C - - - - - 0x0272E6 13:B2D6: E9 10     SBC #$10
C - - - - - 0x0272E8 13:B2D8: 10 CE     BPL bra_B2A8_loop
C - - - - - 0x0272EA 13:B2DA: 60        RTS

ofs_021_B2DB_02_отображение_текста:
C - J - - - 0x0272EB 13:B2DB: A9 10     LDA #$10
bra_B2DD_loop:
C - - - - - 0x0272ED 13:B2DD: 48        PHA
C - - - - - 0x0272EE 13:B2DE: A9 02     LDA #$02
C - - - - - 0x0272F0 13:B2E0: 20 15 C5  JSR sub_0x03CB1F_задержка
C - - - - - 0x0272F3 13:B2E3: 68        PLA
C - - - - - 0x0272F4 13:B2E4: 48        PHA
C - - - - - 0x0272F5 13:B2E5: 8D 72 04  STA ram_046A + 8
C - - - - - 0x0272F8 13:B2E8: 20 33 C5  JSR sub_0x03CCE3
C - - - - - 0x0272FE 13:B2EE: 68        PLA
C - - - - - 0x0272FF 13:B2EF: 18        CLC
C - - - - - 0x027300 13:B2F0: 69 10     ADC #$10
C - - - - - 0x027302 13:B2F2: C9 40     CMP #$40
C - - - - - 0x027304 13:B2F4: D0 E7     BNE bra_B2DD_loop
C - - - - - 0x027306 13:B2F6: 60        RTS

loc_B2F7:
C D - - - - 0x027307 13:B2F7: A2 00     LDX #$00
bra_B2F9_loop:
C - - - - - 0x027309 13:B2F9: 9D 6F 04  STA ram_046B + 4,X
C - - - - - 0x02730C 13:B2FC: E8        INX
C - - - - - 0x02730D 13:B2FD: E8        INX
C - - - - - 0x02730E 13:B2FE: E8        INX
C - - - - - 0x02730F 13:B2FF: E8        INX
C - - - - - 0x027310 13:B300: E0 20     CPX #$20
C - - - - - 0x027312 13:B302: D0 F5     BNE bra_B2F9_loop
C - - - - - 0x027314 13:B304: 20 33 C5  JSR sub_0x03CCE3
C - - - - - 0x02731A 13:B30A: A9 01     LDA #$01
C - - - - - 0x02731C 13:B30C: 20 15 C5  JSR sub_0x03CB1F_задержка
C - - - - - 0x02731F 13:B30F: 60        RTS

ofs_020_B333_E7_закончить_чтение_строки:
C - J - - - 0x027343 13:B333: A9 80     LDA #$80
C - - - - - 0x027345 13:B335: 8D 15 05  STA ram_0515
C - - - - - 0x027348 13:B338: 60        RTS

ofs_020_B218_E3_заяц:
C D - - - - 0x027359 13:B349: 20 A6 B2  JSR sub_B2A6
C - - - - - 0x02735C 13:B34C: A9 01     LDA #$01
C - - - - - 0x02735E 13:B34E: 8D 6B 04  STA ram_046B
C - - - - - 0x027361 13:B351: A9 00     LDA #$00
C - - - - - 0x027363 13:B353: 85 4B     STA ram_004B
C - - - - - 0x027365 13:B355: 8D 17 05  STA ram_046B + $AC
C - - - - - 0x027368 13:B358: 8D 3C 05  STA ram_номер_анимации
C - - - - - 0x02736B 13:B35B: A9 80     LDA #$80
C - - - - - 0x02736D 13:B35D: 8D 3A 05  STA ram_046A + $D0
C - - - - - 0x027370 13:B360: A9 24     LDA #$24
C - - - - - 0x027372 13:B362: 85 4A     STA ram_004A
C - - - - - 0x027374 13:B364: A9 20     LDA #$20
C - - - - - 0x027376 13:B366: 20 06 B4  JSR sub_B406
C - - - - - 0x027379 13:B369: A9 28     LDA #$28
C - - - - - 0x02737B 13:B36B: 20 06 B4  JSR sub_B406
C - - - - - 0x02737E 13:B36E: A5 20     LDA ram_0020
C - - - - - 0x027380 13:B370: 29 FC     AND #$FC
C - - - - - 0x027382 13:B372: 85 20     STA ram_0020
C - - - - - 0x027384 13:B374: A2 10     LDX #$10    ; палитра спрайтов
C - - - - - 0x027386 13:B376: A9 15     LDA #$15
C - - - - - 0x027388 13:B378: 20 30 C5  JSR sub_0x03CC12_запись_палитры_во_время_матча
C - - - - - 0x02738B 13:B37B: A2 00     LDX #$00    ; палитра фона
C - - - - - 0x02738D 13:B37D: A9 16     LDA #$16
C - - - - - 0x02738F 13:B37F: 20 30 C5  JSR sub_0x03CC12_запись_палитры_во_время_матча
C - - - - - 0x027392 13:B382: 20 33 C5  JSR sub_0x03CCE3
C - - - - - 0x027398 13:B388: A2 03     LDX #$03
bra_B38A_loop:
C - - - - - 0x02739A 13:B38A: BD 02 B4  LDA tbl_B402,X
C - - - - - 0x02739D 13:B38D: 9D 94 04  STA ram_0468 + $2C,X
C - - - - - 0x0273A0 13:B390: CA        DEX
C - - - - - 0x0273A1 13:B391: 10 F7     BPL bra_B38A_loop
C - - - - - 0x0273A3 13:B393: A9 7C     LDA #$7C
C - - - - - 0x0273A5 13:B395: 8D 90 04  STA ram_chr_bank
C - - - - - 0x0273A8 13:B398: A9 7E     LDA #$7E
C - - - - - 0x0273AA 13:B39A: 8D 91 04  STA ram_chr_bank + 1
C - - - - - 0x0273AD 13:B39D: A9 FF     LDA #$FF
C - - - - - 0x0273AF 13:B39F: 8D 57 05  STA ram_046B + $EC
C - - - - - 0x0273B2 13:B3A2: 8D 58 05  STA ram_0468 + $F0
C - - - - - 0x0273B5 13:B3A5: 8D 41 05  STA ram_0469 + $D8
C - - - - - 0x0273BA 13:B3AA: 8D 4F 05  STA ram_046B + $E4
C - - - - - 0x0273BD 13:B3AD: A9 DD     LDA #$DD
C - - - - - 0x0273BF 13:B3AF: 8D 53 05  STA ram_046B + $E8
C - - - - - 0x0273C2 13:B3B2: A9 80     LDA #$80
C - - - - - 0x0273C4 13:B3B4: 8D 47 05  STA ram_046B + $DC
C - - - - - 0x0273C7 13:B3B7: A9 31     LDA #$31
C - - - - - 0x0273C9 13:B3B9: 8D 59 05  STA ram_0469 + $F0
C - - - - - 0x0273CC 13:B3BC: 20 33 C5  JSR sub_0x03CCE2
C - - - - - 0x0273D2 13:B3C2: A9 60     LDA #$60
C - - - - - 0x0273D4 13:B3C4: 20 15 C5  JSR sub_0x03CB1F_задержка
C - - - - - 0x0273D7 13:B3C7: A9 00     LDA #$00
C - - - - - 0x0273D9 13:B3C9: 85 8A     STA ram_008A
bra_B3CB_loop:
loc_B3CB_цикл:
C D - - - - 0x0273DB 13:B3CB: A9 01     LDA #$01
C - - - - - 0x0273DD 13:B3CD: 20 15 C5  JSR sub_0x03CB1F_задержка
C - - - - - 0x0273E0 13:B3D0: A5 8A     LDA ram_008A
C - - - - - 0x0273E2 13:B3D2: 18        CLC
C - - - - - 0x0273E3 13:B3D3: 69 60     ADC #$60
C - - - - - 0x0273E5 13:B3D5: 85 8A     STA ram_008A
C - - - - - 0x0273E7 13:B3D7: 90 F2     BCC bra_B3CB_loop
C - - - - - 0x0273E9 13:B3D9: CE 4F 05  DEC ram_046B + $E4
C - - - - - 0x0273EC 13:B3DC: C6 4A     DEC ram_004A
C - - - - - 0x0273EE 13:B3DE: F0 1A     BEQ bra_B3FA_закончить
C - - - - - 0x0273F0 13:B3E0: A2 06     LDX #$06
C - - - - - 0x0273F2 13:B3E2: A5 4A     LDA ram_004A
C - - - - - 0x0273F4 13:B3E4: C9 14     CMP #$14
C - - - - - 0x0273F6 13:B3E6: F0 06     BEQ bra_B3EE
C - - - - - 0x0273F8 13:B3E8: A2 16     LDX #$16
C - - - - - 0x0273FA 13:B3EA: C9 08     CMP #$08
C - - - - - 0x0273FC 13:B3EC: D0 DD     BNE bra_B3CB_loop
bra_B3EE:
C - - - - - 0x0273FE 13:B3EE: 8E 70 04  STX ram_0468 + 8
C - - - - - 0x027401 13:B3F1: 20 33 C5  JSR sub_0x03CCE3
C - - - - - 0x027407 13:B3F7: 4C CB B3  JMP loc_B3CB_цикл
bra_B3FA_закончить:
loc_B3FA_бесконечная_задержка:
C D - - - - 0x02740A 13:B3FA: A9 01     LDA #$01
C - - - - - 0x02740C 13:B3FC: 20 15 C5  JSR sub_0x03CB1F_задержка
C - - - - - 0x02740F 13:B3FF: 4C FA B3  JMP loc_B3FA_бесконечная_задержка

tbl_B402:
    .byte $7C
    .byte $71
    .byte $52
    .byte $53

sub_B406:
C - - - - - 0x027416 13:B406: 48        PHA
C - - - - - 0x027417 13:B407: A2 00     LDX #$00
C - - - - - 0x027419 13:B409: 86 8B     STX ram_008B
C - - - - - 0x02741B 13:B40B: 86 8A     STX ram_008A
bra_B40D_ожидание_освобождения_буфера:
C - - - - - 0x02741D 13:B40D: A9 01     LDA #$01
C - - - - - 0x02741F 13:B40F: 20 15 C5  JSR sub_0x03CB1F_задержка
C - - - - - 0x027422 13:B412: AD 15 05  LDA ram_0515
C - - - - - 0x027425 13:B415: D0 F6     BNE bra_B40D_ожидание_освобождения_буфера
C - - - - - 0x027427 13:B417: A9 01     LDA #$01
C - - - - - 0x027429 13:B419: 8D 15 05  STA ram_0515
C - - - - - 0x02742C 13:B41C: A2 24     LDX #$24
C - - - - - 0x02742E 13:B41E: A9 00     LDA #$00
bra_B420_loop:
C - - - - - 0x027430 13:B420: 9D A5 04  STA ram_04A5,X
C - - - - - 0x027433 13:B423: CA        DEX
C - - - - - 0x027434 13:B424: 10 FA     BPL bra_B420_loop
C - - - - - 0x027436 13:B426: A9 20     LDA #$20
C - - - - - 0x027438 13:B428: 8D A5 04  STA ram_04A5
C - - - - - 0x02743B 13:B42B: A6 8A     LDX ram_008A
C - - - - - 0x02743D 13:B42D: 8E A6 04  STX ram_04A6
C - - - - - 0x027440 13:B430: 68        PLA
C - - - - - 0x027441 13:B431: 48        PHA
C - - - - - 0x027442 13:B432: 05 8B     ORA ram_008B
C - - - - - 0x027444 13:B434: 8D A7 04  STA ram_04A7
C - - - - - 0x027447 13:B437: A9 80     LDA #$80
C - - - - - 0x027449 13:B439: 8D 15 05  STA ram_0515
C - - - - - 0x02744C 13:B43C: 8A        TXA
C - - - - - 0x02744D 13:B43D: 18        CLC
C - - - - - 0x02744E 13:B43E: 69 20     ADC #$20
C - - - - - 0x027450 13:B440: 85 8A     STA ram_008A
C - - - - - 0x027452 13:B442: A5 8B     LDA ram_008B
C - - - - - 0x027454 13:B444: 69 00     ADC #$00
C - - - - - 0x027456 13:B446: 85 8B     STA ram_008B
C - - - - - 0x027458 13:B448: C9 04     CMP #$04
C - - - - - 0x02745A 13:B44A: 90 C1     BCC bra_B40D_ожидание_освобождения_буфера
C - - - - - 0x02745C 13:B44C: 68        PLA
C - - - - - 0x02745D 13:B44D: 60        RTS



tbl_0x02745E_финальная_надпись_TECMO:
    .byte $09
    .word $216E
    .byte $28, $29, $2C, $2D, $38, $37, $39, $3C, $3D
    
    .byte $09
    .word $218E
    .byte $2A, $2B, $2E, $2F, $3A, $2A, $3B, $3E, $3F
    
    .byte $00



tbl_B467_титры:

con_animation               = $E0   ; номер сценария из банка 10
con_timer                   = $E1   ; задержка перед чтением слеюущюих байтов
con_E2                      = $E2   ; ??? + номер игрока + ???
con_tecmo                   = $E3   ; показать зайца и логотип
con_offset                  = $E4   ; смещение по горизонтали и вертикали
con_brightness              = $E5   ; 00 = осветление экрана, 01 = затемнение экрана, 02 = показать текст
con_hide_letters            = $E6   ; toggle, текст до конца катсцены побуквенно открывается спрайтами
con_endline                 = $E7   ; закончить чтение текста

    .byte con_animation, $5C
    .byte con_brightness, $00
    .byte con_offset, $69, $22
    .text "Carlos Santana"
    .byte con_endline
    .byte con_brightness, $02
    .byte con_timer, $68
    
    
    
    .byte con_brightness, $01
    .byte con_animation, $5D
    .byte con_brightness, $00
    .byte con_offset, $6A, $22
    .text "Claudio Meon"
    .byte con_endline
    .byte con_brightness, $02
    .byte con_timer, $68
    
    
    
    .byte con_brightness, $01
    .byte con_E2, $01, $14, $09
    .byte con_animation, $56
    .byte con_brightness, $00
    .byte con_offset, $6A, $22
    .text "Ishizaki Ryo"
    .byte con_endline
    .byte con_brightness, $02
    .byte con_timer, $68
    
    
    
    .byte con_brightness, $01
    .byte con_animation, $59
    .byte con_brightness, $00
    .byte con_offset, $6A, $22
    .text "Jito Hiroshi"
    .byte con_endline
    .byte con_brightness, $02
    .byte con_timer, $68
    
    
    
    .byte con_brightness, $01
    .byte con_animation, $5A
    .byte con_brightness, $00
    .byte con_offset, $67, $22
    .text "Tachibana brothers"
    .byte con_endline
    .byte con_offset, $A8, $22
    .text "Masao and Kazuo"
    .byte con_endline
    .byte con_brightness, $02
    .byte con_timer, $68
    
    
    
    .byte con_brightness, $01
    .byte con_animation, $57
    .byte con_brightness, $00
    .byte con_offset, $6A, $22
    .text "Soda Makoto"
    .byte con_endline
    .byte con_brightness, $02
    .byte con_timer, $68
    
    
    
    .byte con_brightness, $01
    .byte con_animation, $55
    .byte con_brightness, $00
    .byte con_offset, $6B, $22
    .text "Misugi Jun"
    .byte con_endline
    .byte con_brightness, $02
    .byte con_timer, $68
    
    
    
    .byte con_brightness, $01
    .byte con_animation, $54
    .byte con_brightness, $00
    .byte con_offset, $68, $22
    .text "Matsuyama Hikaru"
    .byte con_endline
    .byte con_brightness, $02
    .byte con_timer, $68
    
    
    
    .byte con_brightness, $01
    .byte con_E2, $01, $15, $09
    .byte con_animation, $58
    .byte con_brightness, $00
    .byte con_offset, $6B, $22
    .text "Nitta Shun"
    .byte con_endline
    .byte con_brightness, $02
    .byte con_timer, $68
    
    
    
    .byte con_brightness, $01
    .byte con_animation, $64
    .byte con_brightness, $00
    .byte con_offset, $68, $22
    .text "Ramon Victorino"
    .byte con_endline
    .byte con_brightness, $02
    .byte con_timer, $68
    
    
    
    .byte con_brightness, $01
    .byte con_animation, $5E
    .byte con_brightness, $00
    .byte con_offset, $69, $22
    .text "Hermann Kaltz"
    .byte con_endline
    .byte con_brightness, $02
    .byte con_timer, $68
    
    
    
    .byte con_brightness, $01
    .byte con_animation, $5F
    .byte con_brightness, $00
    .byte con_offset, $68, $22
    .text "Elle Sid Pierre"
    .byte con_endline
    .byte con_brightness, $02
    .byte con_timer, $68
    
    
    
    .byte con_brightness, $01
    .byte con_animation, $60
    .byte con_brightness, $00
    .byte con_offset, $69, $22
    .text "Louis Napoleon"
    .byte con_endline
    .byte con_brightness, $02
    .byte con_timer, $68
    
    
    
    .byte con_brightness, $01
    .byte con_animation, $61
    .byte con_brightness, $00
    .byte con_offset, $6B, $22
    .text "Juan Diaz"
    .byte con_endline
    .byte con_brightness, $02
    .byte con_timer, $68
    
    
    
    .byte con_brightness, $01
    .byte con_animation, $62
    .byte con_brightness, $00
    .byte con_offset, $6A, $22
    .text "Alan Pascal"
    .byte con_endline
    .byte con_brightness, $02
    .byte con_timer, $68
    
    
    
    .byte con_brightness, $01
    .byte con_animation, $63
    .byte con_brightness, $00
    .byte con_offset, $66, $22
    .text "Karl Heinz Schneider"
    .byte con_endline
    .byte con_brightness, $02
    .byte con_timer, $68
    
    
    
    .byte con_brightness, $01
    .byte con_animation, $65
    .byte con_brightness, $00
    .byte con_offset, $65, $22
    .text "Arthur Antines Coimbra"
    .byte con_endline
    .byte con_brightness, $02
    .byte con_timer, $68
    
    
    
    .byte con_brightness, $01
    .byte con_animation, $51
    .byte con_brightness, $00
    .byte con_offset, $6A, $22
    .text "Misaki Taro"
    .byte con_endline
    .byte con_brightness, $02
    .byte con_timer, $68
    
    
    
    .byte con_brightness, $01
    .byte con_animation, $5B
    .byte con_brightness, $00
    .byte con_offset, $69, $22
    .text "Wakashimazu Ken"
    .byte con_endline
    .byte con_brightness, $02
    .byte con_timer, $68
    
    
    
    .byte con_brightness, $01
    .byte con_animation, $52
    .byte con_brightness, $00
    .byte con_offset, $6A, $22
    .text "Hyuga Kojiro"
    .byte con_endline
    .byte con_brightness, $02
    .byte con_timer, $68
    
    
    
    .byte con_brightness, $01
    .byte con_animation, $53
    .byte con_brightness, $00
    .byte con_offset, $68, $22
    .text "Wakabayashi Genzo"
    .byte con_endline
    .byte con_brightness, $02
    .byte con_timer, $68
    
    
    
    .byte con_brightness, $01
    .byte con_E2, $02, $01, $09
    .byte con_animation, $50
    .byte con_brightness, $00
    .byte con_offset, $69, $22
    .text "Ozora Tsubasa"
    .byte con_endline
    .byte con_brightness, $02
    .byte con_timer, $68
    
    
    
    .byte con_brightness, $01
    .byte con_E2, $00, $58, $09
    .byte con_animation, $66
    .byte con_offset, $6D, $22
    .text "STAFF"
    .byte con_endline
    .byte con_timer, $A0
    
    
    
    .byte con_hide_letters
    .byte con_E2, $02, $01, $09
    .byte con_animation, $69
    .byte con_offset, $64, $22
    .text "Director"
    .byte con_endline
    .byte con_timer, $20
    
    .byte con_offset, $EF, $22
    .text "Fighter Otomi"
    .byte con_endline
    .byte con_timer, $50
    
    
    
    .byte con_E2, $01, $15, $14
    .byte con_animation, $78
    .byte con_offset, $64, $22
    .text "In-Game Programming"
    .byte con_endline
    .byte con_timer, $20
    
    .byte con_offset, $F6, $22
    .text "Yochin"
    .byte con_endline
    .byte con_timer, $50
    
    
    
    .byte con_E2, $0B, $32, $14
    .byte con_animation, $6B
    .byte con_offset, $64, $22
    .text "Out-Game Programming"
    .byte con_endline
    .byte con_timer, $20
    
    .byte con_offset, $F5, $22
    .text "Akihiko"
    .byte con_endline
    .byte con_timer, $50
    
    
    
    .byte con_E2, $01, $14, $14
    .byte con_animation, $6C
    .byte con_offset, $64, $22
    .text "Planning"
    .byte con_endline
    .byte con_timer, $20
    
    .byte con_offset, $F5, $22
    .text "Red Fox"
    .byte con_endline
    .byte con_timer, $50
    
    
    
    .byte con_E2, $02, $01, $09
    .byte con_animation, $6D
    .byte con_offset, $64, $22
    .text "Out-Game Director"
    .byte con_endline
    .byte con_timer, $20
    
    .byte con_offset, $F7, $22
    .text "Horse"
    .byte con_endline
    .byte con_timer, $50
    
    
    
    .byte con_E2, $0A, $30, $09
    .byte con_animation, $6E
    .byte con_offset, $64, $22
    .text "Animation Director"
    .byte con_endline
    .byte con_timer, $20
    
    .byte con_offset, $F1, $22
    .text "Niwaka Maru"
    .byte con_endline
    .byte con_timer, $50
    
    
    
    .byte con_E2, $0E, $39, $0B
    .byte con_animation, $6F
    .byte con_offset, $64, $22
    .text "Composers"
    .byte con_endline
    .byte con_timer, $20
    
    .byte con_offset, $F1, $22
    .text "Yama-san"
    .byte con_endline
    
    .byte con_offset, $31, $23
    .text "Metal Yuhki"
    .byte con_endline
    
    .byte con_offset, $71, $23
    .text "Mayu"
    .byte con_endline
    .byte con_timer, $50
    
    
    
    .byte con_E2, $01, $0C, $09
    .byte con_animation, $70
    .byte con_offset, $64, $22
    .text "Sprite Animation"
    .byte con_endline
    .byte con_timer, $20
    
    .byte con_offset, $ED, $22
    .text "Super Gonta-kun"
    .byte con_endline
    .byte con_timer, $50
    
    
    
    .byte con_E2, $0D, $00, $0B
    .byte con_E2, $0D, $35, $14
    .byte con_animation, $71
    .byte con_offset, $64, $22
    .text "Maintenence"
    .byte con_endline
    .byte con_timer, $20
    
    .byte con_offset, $F5, $22
    .text "Mashian"
    .byte con_endline
    .byte con_timer, $50
    
    
    
    .byte con_E2, $09, $2E, $14
    .byte con_animation, $72
    .byte con_offset, $64, $22
    .text "Graphic Team #1"
    .byte con_endline
    .byte con_timer, $20
    
    .byte con_offset, $F0, $22
    .text "Kena"
    .byte con_endline
    
    .byte con_offset, $30, $23
    .text "Perco"
    .byte con_endline
    
    .byte con_offset, $70, $23
    .text "Shinpero Ace"
    .byte con_endline
    
    .byte con_timer, $50
    
    
    
    .byte con_E2, $02, $01, $09
    .byte con_animation, $6A
    .byte con_offset, $64, $22
    .text "Graphic Team #2"
    .byte con_endline
    .byte con_timer, $20
    
    .byte con_offset, $F4, $22
    .text "Purple"
    .byte con_endline
    
    .byte con_offset, $34, $23
    .text "Zu"
    .byte con_endline
    
    .byte con_offset, $74, $23
    .text "Fuyufuyu"
    .byte con_endline
    .byte con_timer, $50
    
    
    
    .byte con_E2, $02, $21, $0B
    .byte con_animation, $73
    .byte con_offset, $64, $22
    .text "Data Work"
    .byte con_endline
    .byte con_timer, $20
    
    .byte con_offset, $F0, $22
    .text "Sugar Radish"
    .byte con_endline
    
    .byte con_offset, $30, $23
    .text "Yahemi"
    .byte con_endline
    .byte con_timer, $50
    
    
    
    .byte con_E2, $0E, $36, $09
    .byte con_E2, $01, $00, $14
    .byte con_E2, $01, $0F, $0B
    .byte con_animation, $74
    .byte con_offset, $64, $22
    .text "Chief Debugger"
    .byte con_endline
    .byte con_timer, $20
    
    .byte con_offset, $F1, $22
    .text "Today Jubei"
    .byte con_endline
    .byte con_timer, $50
    
    
    
    .byte con_E2, $02, $11, $09
    .byte con_animation, $75
    .byte con_offset, $64, $22
    .text "Out-Game Advisor"
    .byte con_endline
    .byte con_timer, $20
    
    .byte con_offset, $EE, $22
    .text "Cherry Blossom"
    .byte con_endline
    .byte con_timer, $50
    
    
    
    .byte con_E2, $12, $44, $09
    .byte con_animation, $76
    .byte con_offset, $64, $22
    .text "Manual Design"
    .byte con_endline
    .byte con_timer, $20
    
    .byte con_offset, $EC, $22
    .text "Mondo Eco"
    .byte con_endline
    
    .byte con_offset, $2C, $23
    .text "Pancho Taka-chan"
    .byte con_endline
    .byte con_timer, $50
    
    
    
    .byte con_animation, $77
    .byte con_offset, $64, $22
    .text "Original"
    .byte con_endline
    .byte con_timer, $20
    
    .byte con_offset, $EC, $22
    .text "Yoichi Takahashi"
    .byte con_endline
    .byte con_timer, $80
    
    
    
    .byte con_brightness, $01
    .byte con_tecmo
