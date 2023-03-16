.segment "BANK_13"
.include "copy_bank_ram.inc"
.include "copy_bank_val.inc"
.org $A000
; 0x026010-0x02800F



; в середине есть немного кода начиная с 0x027010, используется при отображении финальных титров после самолета



.export loc_0x027010
.export tbl_0x02745E_финальная_надпись_TECMO



; 0x026010 блоки с тайлами 32x32 для сценариев
    ; поинтеры в 0x01667A (старший байт A0)
    ; атрибуты блоков в 0x017BF4

; 200
    .byte $00, $00, $00, $00
    .byte $00, $00, $00, $00
    .byte $00, $00, $00, $00
    .byte $00, $00, $00, $00
; 201
    .byte $01, $01, $01, $01
    .byte $01, $01, $01, $01
    .byte $01, $01, $01, $01
    .byte $01, $01, $01, $01
; 202
    .byte $01, $01, $5F, $75
    .byte $01, $01, $5F, $75
    .byte $01, $01, $5F, $75
    .byte $01, $01, $5F, $75
; 203
    .byte $77, $7D, $77, $7D
    .byte $7D, $77, $7D, $77
    .byte $77, $7D, $77, $7D
    .byte $7D, $77, $7D, $77
; 204
    .byte $7E, $7C, $7E, $7C
    .byte $7C, $7E, $7C, $7E
    .byte $7E, $7C, $7E, $7C
    .byte $7C, $7E, $7C, $7E
; 205
    .byte $76, $74, $01, $01
    .byte $76, $74, $01, $01
    .byte $76, $74, $01, $01
    .byte $76, $74, $01, $01
; 206
    .byte $01, $01, $C0, $00
    .byte $01, $01, $01, $83
    .byte $01, $01, $01, $01
    .byte $01, $01, $01, $01
; 207
    .byte $84, $85, $90, $91
    .byte $86, $87, $92, $93
    .byte $8C, $8D, $98, $99
    .byte $8E, $8F, $9A, $9B
; 208
    .byte $94, $95, $C2, $C1
    .byte $96, $C2, $C2, $C1
    .byte $99, $9D, $9D, $C9
    .byte $9B, $9F, $CA, $CB
; 209
    .byte $01, $A5, $B0, $B1
    .byte $01, $01, $B2, $B3
    .byte $01, $01, $01, $B9
    .byte $01, $01, $01, $01
; 20A
    .byte $B4, $B5, $E0, $E1
    .byte $B6, $B7, $E2, $E3
    .byte $BC, $BD, $E8, $E9
    .byte $BE, $BF, $EA, $EB
; 20B
    .byte $97, $C3, $9C, $9C
    .byte $97, $C3, $9C, $9C
    .byte $97, $C3, $9C, $9C
    .byte $BA, $BB, $BB, $BB
; 20C
    .byte $C8, $82, $8A, $8A
    .byte $9E, $88, $A0, $A0
    .byte $00, $00, $00, $00
    .byte $00, $00, $00, $00
; 20D
    .byte $C4, $C5, $D0, $D1
    .byte $C4, $C5, $C5, $D3
    .byte $CC, $CD, $CD, $D9
    .byte $CE, $CF, $DA, $DB
; 20E
    .byte $D4, $D5, $89, $8B
    .byte $D6, $D7, $A4, $A2
    .byte $D9, $DD, $A6, $A7
    .byte $DB, $DF, $A8, $A9
; 20F
    .byte $00, $A1, $01, $01
    .byte $A3, $01, $01, $01
    .byte $01, $01, $01, $01
    .byte $01, $01, $01, $01
; 210
    .byte $01, $01, $01, $01
    .byte $01, $01, $01, $01
    .byte $01, $01, $01, $01
    .byte $0D, $0D, $0D, $0D
; 211
    .byte $11, $10, $3C, $18
    .byte $13, $12, $0A, $0B
    .byte $00, $00, $00, $00
    .byte $00, $00, $00, $00
; 212
    .byte $19, $10, $3C, $10
    .byte $0E, $12, $0A, $12
    .byte $00, $00, $00, $00
    .byte $00, $00, $00, $00
; 213
    .byte $3C, $3C, $18, $19
    .byte $0A, $12, $0B, $0E
    .byte $18, $19, $3C, $10
    .byte $0B, $0E, $12, $0A
; 214
    .byte $3C, $3C, $10, $11
    .byte $12, $0A, $0A, $13
    .byte $11, $10, $3C, $3C
    .byte $13, $0A, $0A, $12
; 215
    .byte $01, $01, $01, $01
    .byte $01, $01, $01, $01
    .byte $01, $01, $01, $01
    .byte $01, $01, $01, $01
; 216
    .byte $50, $51, $54, $55
    .byte $52, $53, $56, $57
    .byte $01, $01, $01, $01
    .byte $01, $01, $01, $01
; 217
    .byte $52, $53, $56, $57
    .byte $01, $01, $01, $01
    .byte $01, $01, $01, $01
    .byte $01, $01, $01, $01
; 218
    .byte $50, $54, $55, $01
    .byte $52, $56, $57, $01
    .byte $01, $01, $01, $01
    .byte $01, $01, $01, $01
; 219
    .byte $01, $01, $01, $01
    .byte $01, $01, $01, $01
    .byte $01, $01, $01, $01
    .byte $0D, $0D, $0D, $0D
; 21A
    .byte $01, $01, $01, $01
    .byte $01, $01, $01, $01
    .byte $50, $51, $54, $55
    .byte $52, $53, $56, $57
; 21B
    .byte $01, $01, $01, $01
    .byte $58, $59, $5C, $01
    .byte $5A, $5B, $5E, $5F
    .byte $0F, $0F, $0F, $0F
; 21C
    .byte $01, $01, $01, $01
    .byte $01, $01, $01, $01
    .byte $00, $00, $00, $00
    .byte $00, $00, $00, $00
; 21D
    .byte $E4, $E5, $F0, $F1
    .byte $E6, $E7, $F2, $F3
    .byte $EC, $ED, $F8, $F9
    .byte $EE, $EF, $FA, $FB
; 21E
    .byte $F4, $F5, $FD, $01
    .byte $F6, $F7, $01, $01
    .byte $FC, $01, $01, $01
    .byte $01, $01, $01, $01
; 21F
    .byte $9C, $9C, $FE, $FF
    .byte $9C, $9C, $FE, $FF
    .byte $9C, $9C, $FE, $FF
    .byte $22, $22, $DE, $DC
; 220
    .byte $8A, $8A, $C6, $C7
    .byte $A0, $A0, $D2, $D8
    .byte $00, $00, $00, $00
    .byte $00, $00, $00, $00
; 221
    .byte $DD, $DD, $DD, $DD
    .byte $D5, $D5, $D5, $D5
    .byte $DF, $DF, $DF, $DF
    .byte $D6, $D6, $D6, $D6
; 222
    .byte $DD, $D4, $D1, $01
    .byte $D5, $D5, $D4, $D3
    .byte $DF, $DF, $DF, $D9
    .byte $D6, $D6, $D6, $D0
; 223
    .byte $CC, $CC, $CC, $D2
    .byte $CE, $CE, $CE, $D8
    .byte $CC, $CC, $CC, $D2
    .byte $CE, $CE, $CE, $D8
; 224
    .byte $CB, $CB, $CB, $DA
    .byte $CB, $CB, $CB, $DA
    .byte $CB, $CB, $CB, $DA
    .byte $CB, $CB, $CB, $E5
; 225
    .byte $F3, $F3, $EC, $E7
    .byte $01, $EF, $EE, $01
    .byte $00, $00, $00, $00
    .byte $00, $00, $00, $00
; 226
    .byte $F1, $E0, $01, $01
    .byte $F2, $4D, $E0, $01
    .byte $01, $01, $E2, $E0
    .byte $01, $01, $01, $E2
; 227
    .byte $F2, $F2, $F2, $F2
    .byte $F2, $F2, $F2, $F2
    .byte $01, $01, $01, $01
    .byte $01, $01, $01, $01
; 228
    .byte $01, $01, $E4, $F0
    .byte $01, $E4, $4C, $F2
    .byte $E4, $E6, $01, $01
    .byte $E6, $01, $01, $01
; 229
    .byte $50, $51, $54, $55
    .byte $52, $53, $56, $57
    .byte $01, $01, $01, $01
    .byte $0D, $0D, $0D, $0D
; 22A
    .byte $CC, $CC, $CC, $CC
    .byte $CE, $CE, $CE, $CE
    .byte $CC, $CC, $CC, $CC
    .byte $CE, $CE, $CE, $CE
; 22B
    .byte $CB, $CB, $CB, $CB
    .byte $CB, $CB, $CB, $CB
    .byte $CB, $CB, $CB, $CB
    .byte $CB, $CB, $CB, $CB
; 22C
    .byte $F3, $F3, $F3, $F3
    .byte $01, $01, $01, $01
    .byte $00, $00, $00, $00
    .byte $00, $00, $00, $00
; 22D
    .byte $01, $C1, $C4, $CD
    .byte $C3, $C4, $C5, $C5
    .byte $C9, $CF, $CF, $CF
    .byte $C0, $C6, $C6, $C6
; 22E
    .byte $CD, $CD, $CD, $CD
    .byte $C5, $C5, $C5, $C5
    .byte $CF, $CF, $CF, $CF
    .byte $C6, $C6, $C6, $C6
; 22F
    .byte $C2, $CC, $CC, $CC
    .byte $C8, $CE, $CE, $CE
    .byte $C2, $CC, $CC, $CC
    .byte $C8, $CE, $CE, $CE
; 230
    .byte $CA, $CB, $CB, $CB
    .byte $CA, $CB, $CB, $CB
    .byte $CA, $CB, $CB, $CB
    .byte $E1, $CB, $CB, $CB
; 231
    .byte $E3, $E8, $F3, $F3
    .byte $01, $EA, $EB, $01
    .byte $00, $00, $00, $00
    .byte $00, $00, $00, $00
; 232
    .byte $2A, $2B, $2A, $2B
    .byte $2B, $2A, $2B, $2A
    .byte $2A, $2B, $2A, $2B
    .byte $2B, $2C, $2D, $38
; 233
    .byte $2A, $2B, $2A, $2B
    .byte $2B, $2A, $2B, $2A
    .byte $2A, $2B, $2A, $2B
    .byte $00, $2E, $2F, $2A
; 234
    .byte $CA, $CB, $CB, $CB
    .byte $CA, $CB, $CB, $CB
    .byte $00, $00, $00, $00
    .byte $00, $00, $00, $00
; 235
    .byte $CB, $CB, $CB, $CB
    .byte $CB, $CB, $CB, $CB
    .byte $00, $00, $00, $00
    .byte $00, $00, $00, $00
; 236
    .byte $CB, $CB, $CB, $DA
    .byte $CB, $CB, $CB, $DA
    .byte $00, $00, $00, $00
    .byte $00, $00, $00, $00
; 237
    .byte $C9, $CF, $CF, $CF
    .byte $C9, $CF, $CF, $CF
    .byte $C9, $CF, $CF, $CF
    .byte $C0, $C6, $C6, $C6
; 238
    .byte $CF, $CF, $CF, $CF
    .byte $CF, $CF, $CF, $CF
    .byte $CF, $CF, $CF, $CF
    .byte $C6, $C6, $C6, $C6
; 239
    .byte $CF, $CF, $CF, $D9
    .byte $CF, $CF, $CF, $D9
    .byte $CF, $CF, $CF, $D9
    .byte $C6, $C6, $C6, $D0
; 23A
    .byte $D5, $D5, $D5, $D4
    .byte $D7, $D7, $D7, $D7
    .byte $DD, $DD, $DD, $DD
    .byte $D5, $D5, $D5, $D5
; 23B
    .byte $D1, $01, $01, $01
    .byte $D4, $D1, $01, $01
    .byte $DD, $D4, $D1, $01
    .byte $D5, $D5, $D4, $D3
; 23C
    .byte $01, $01, $01, $C1
    .byte $01, $01, $C1, $C4
    .byte $01, $C1, $C4, $CD
    .byte $C3, $C4, $C5, $C5
; 23D
    .byte $C4, $C5, $C5, $C5
    .byte $C7, $C7, $C7, $C7
    .byte $CD, $CD, $CD, $CD
    .byte $C5, $C5, $C5, $C5
; 23E
    .byte $01, $01, $01, $01
    .byte $01, $01, $01, $01
    .byte $00, $00, $00, $00
    .byte $00, $00, $00, $00
; 23F
    .byte $01, $01, $01, $C5
    .byte $01, $C5, $D0, $D1
    .byte $00, $00, $00, $00
    .byte $00, $00, $00, $00
; 240
    .byte $01, $01, $01, $01
    .byte $01, $01, $01, $01
    .byte $01, $01, $01, $C5
    .byte $01, $C5, $D0, $D1
; 241
    .byte $01, $01, $01, $C5
    .byte $01, $C5, $D0, $D1
    .byte $D0, $D1, $D4, $CD
    .byte $D4, $CD, $CD, $CD
; 242
    .byte $D0, $D1, $D4, $CD
    .byte $D4, $CD, $CD, $CD
    .byte $CD, $CD, $CD, $CD
    .byte $CD, $CD, $CD, $CD
; 243
    .byte $CD, $CD, $CD, $CD
    .byte $CD, $CD, $CD, $CD
    .byte $CD, $CD, $CD, $CD
    .byte $CD, $CD, $CD, $CD
; 244
    .byte $CD, $CD, $CD, $CD
    .byte $CD, $CD, $CD, $CD
    .byte $00, $00, $00, $00
    .byte $00, $00, $00, $00
; 245
    .byte $D0, $D1, $D4, $CD
    .byte $D4, $CD, $CD, $CD
    .byte $00, $00, $00, $00
    .byte $00, $00, $00, $00
; 246
    .byte $D8, $C7, $D2, $D3
    .byte $D8, $D8, $D8, $C7
    .byte $00, $00, $00, $00
    .byte $00, $00, $00, $00
; 247
    .byte $D6, $01, $01, $01
    .byte $D2, $D3, $D6, $01
    .byte $00, $00, $00, $00
    .byte $00, $00, $00, $00
; 248
    .byte $D8, $C7, $D2, $D3
    .byte $D8, $D8, $D8, $C7
    .byte $D8, $D8, $D8, $D8
    .byte $D8, $D8, $D8, $D8
; 249
    .byte $D6, $01, $01, $01
    .byte $D2, $D3, $D6, $01
    .byte $D8, $C7, $D2, $D3
    .byte $D8, $D8, $D8, $C7
; 24A
    .byte $01, $01, $01, $01
    .byte $01, $01, $01, $01
    .byte $D6, $01, $01, $01
    .byte $D2, $D3, $D6, $01
; 24B
    .byte $D8, $D8, $D8, $D8
    .byte $D8, $D8, $D8, $D8
    .byte $00, $00, $00, $00
    .byte $00, $00, $00, $00
; 24C
    .byte $D8, $D8, $D8, $D8
    .byte $D8, $D8, $D8, $D8
    .byte $D8, $D8, $D8, $D8
    .byte $D8, $D8, $D8, $D8
; 24D
    .byte $7B, $79, $01, $01
    .byte $01, $7B, $79, $01
    .byte $01, $01, $7B, $79
    .byte $01, $01, $01, $7B
; 24E
    .byte $01, $01, $01, $01
    .byte $01, $01, $01, $01
    .byte $01, $01, $01, $01
    .byte $79, $01, $01, $01
; 24F
    .byte $7B, $79, $01, $01
    .byte $01, $7B, $79, $01
    .byte $00, $00, $00, $00
    .byte $00, $00, $00, $00
; 250
    .byte $6F, $74, $01, $01
    .byte $76, $77, $7C, $01
    .byte $01, $15, $14, $01
    .byte $01, $01, $01, $01
; 251
    .byte $01, $73, $71, $7B
    .byte $01, $01, $73, $71
    .byte $00, $00, $00, $00
    .byte $00, $00, $00, $00
; 252
    .byte $79, $01, $7A, $78
    .byte $7B, $79, $01, $7A
    .byte $00, $00, $00, $00
    .byte $00, $00, $00, $00
; 253
    .byte $01, $73, $71, $7B
    .byte $01, $01, $73, $71
    .byte $01, $01, $01, $73
    .byte $01, $01, $01, $01
; 254
    .byte $79, $01, $7A, $78
    .byte $7B, $79, $01, $7A
    .byte $71, $7B, $79, $01
    .byte $73, $71, $7B, $79
; 255
    .byte $72, $70, $70, $70
    .byte $78, $72, $70, $70
    .byte $7A, $78, $72, $70
    .byte $01, $7A, $78, $72
; 256
    .byte $70, $70, $70, $70
    .byte $70, $70, $70, $70
    .byte $70, $70, $70, $70
    .byte $70, $70, $70, $70
; 257
    .byte $01, $01, $64, $65
    .byte $01, $66, $67, $6C
    .byte $01, $6D, $6E, $01
    .byte $01, $01, $01, $01
; 258
    .byte $01, $01, $68, $6A
    .byte $01, $68, $6A, $01
    .byte $00, $00, $00, $00
    .byte $00, $00, $00, $00
; 259
    .byte $01, $01, $01, $01
    .byte $01, $01, $01, $01
    .byte $01, $01, $01, $01
    .byte $01, $01, $01, $68
; 25A
    .byte $01, $01, $68, $6A
    .byte $01, $68, $6A, $01
    .byte $68, $6A, $01, $01
    .byte $6A, $01, $01, $01
; 25B
    .byte $62, $63, $01, $68
    .byte $63, $01, $68, $6A
    .byte $00, $00, $00, $00
    .byte $00, $00, $00, $00
; 25C
    .byte $6A, $69, $6B, $01
    .byte $69, $6B, $01, $01
    .byte $00, $00, $00, $00
    .byte $00, $00, $00, $00
; 25D
    .byte $60, $60, $60, $61
    .byte $60, $60, $61, $62
    .byte $60, $61, $62, $63
    .byte $61, $62, $63, $01
; 25E
    .byte $62, $63, $01, $68
    .byte $63, $01, $68, $6A
    .byte $01, $68, $6A, $69
    .byte $68, $6A, $69, $6B
; 25F
    .byte $6A, $69, $6B, $01
    .byte $69, $6B, $01, $01
    .byte $6B, $01, $01, $01
    .byte $01, $01, $01, $01
; 260
    .byte $60, $60, $60, $60
    .byte $60, $60, $60, $60
    .byte $60, $60, $60, $60
    .byte $60, $60, $60, $60
; 261
    .byte $01, $01, $01, $01
    .byte $01, $01, $01, $01
    .byte $01, $01, $51, $01
    .byte $01, $01, $45, $50
; 262
    .byte $01, $01, $01, $01
    .byte $01, $01, $01, $01
    .byte $45, $50, $51, $01
    .byte $51, $01, $45, $50
; 263
    .byte $01, $01, $01, $01
    .byte $01, $01, $01, $01
    .byte $45, $05, $58, $54
    .byte $51, $05, $58, $54
; 264
    .byte $01, $01, $01, $01
    .byte $01, $01, $01, $01
    .byte $01, $01, $01, $01
    .byte $01, $01, $01, $01
; 265
    .byte $01, $01, $51, $01
    .byte $01, $01, $45, $50
    .byte $01, $01, $51, $01
    .byte $01, $01, $45, $50
; 266
    .byte $45, $50, $51, $01
    .byte $51, $01, $45, $50
    .byte $45, $50, $51, $01
    .byte $51, $01, $45, $50
; 267
    .byte $45, $05, $58, $54
    .byte $51, $05, $58, $54
    .byte $45, $05, $58, $54
    .byte $51, $05, $58, $54
; 268
    .byte $01, $01, $01, $01
    .byte $01, $01, $01, $01
    .byte $01, $01, $01, $01
    .byte $01, $01, $01, $01
; 269
    .byte $01, $01, $01, $01
    .byte $01, $01, $01, $01
    .byte $01, $01, $01, $01
    .byte $01, $01, $01, $01
; 26A
    .byte $01, $01, $01, $01
    .byte $01, $01, $01, $01
    .byte $47, $58, $05, $56
    .byte $47, $58, $05, $52
; 26B
    .byte $01, $01, $01, $01
    .byte $01, $01, $01, $01
    .byte $01, $52, $53, $56
    .byte $53, $56, $01, $52
; 26C
    .byte $01, $01, $01, $01
    .byte $01, $01, $01, $01
    .byte $01, $52, $01, $01
    .byte $53, $56, $01, $01
; 26D
    .byte $47, $58, $05, $56
    .byte $47, $58, $05, $52
    .byte $47, $58, $05, $56
    .byte $47, $58, $05, $52
; 26E
    .byte $01, $52, $53, $56
    .byte $53, $56, $01, $52
    .byte $01, $52, $53, $56
    .byte $53, $56, $01, $52
; 26F
    .byte $01, $52, $01, $01
    .byte $53, $56, $01, $01
    .byte $01, $52, $01, $01
    .byte $53, $56, $01, $01
; 270
    .byte $01, $01, $01, $01
    .byte $01, $01, $01, $01
    .byte $01, $01, $01, $01
    .byte $01, $01, $01, $01
; 271
    .byte $00, $00, $00, $00
    .byte $00, $00, $00, $00
    .byte $00, $00, $C9, $D2
    .byte $00, $00, $CC, $FF
; 272
    .byte $00, $00, $00, $00
    .byte $00, $00, $00, $00
    .byte $D2, $D2, $D2, $D2
    .byte $FF, $FF, $FF, $FF
; 273
    .byte $00, $00, $00, $00
    .byte $00, $00, $00, $00
    .byte $C9, $D2, $D2, $D2
    .byte $CC, $FF, $FF, $FF
; 274
    .byte $00, $00, $00, $00
    .byte $00, $00, $00, $00
    .byte $D2, $D2, $D0, $00
    .byte $FF, $FF, $D0, $00
; 275
    .byte $00, $00, $C9, $D2
    .byte $00, $00, $CC, $FF
    .byte $00, $00, $C9, $D2
    .byte $00, $C9, $CC, $FF
; 276
    .byte $D2, $D2, $CC, $FF
    .byte $FF, $FF, $CC, $FF
    .byte $CC, $FF, $CC, $FF
    .byte $CC, $FF, $CC, $FF
; 277
    .byte $FF, $FF, $FF, $FF
    .byte $FF, $FF, $FF, $FF
    .byte $FF, $FF, $C0, $C1
    .byte $FF, $FF, $C2, $FF
; 278
    .byte $CC, $FF, $FF, $FF
    .byte $CC, $FF, $FF, $FF
    .byte $C4, $C5, $FF, $FF
    .byte $CC, $C7, $FF, $FF
; 279
    .byte $FF, $FF, $C9, $D2
    .byte $FF, $FF, $CC, $FF
    .byte $FF, $FF, $CC, $FF
    .byte $FF, $FF, $CC, $FF
; 27A
    .byte $D2, $D2, $D0, $00
    .byte $FF, $FF, $D0, $00
    .byte $C9, $D2, $D0, $00
    .byte $CC, $FF, $C9, $D0
; 27B
    .byte $00, $C6, $CC, $FF
    .byte $00, $00, $C6, $C3
    .byte $00, $00, $CC, $FF
    .byte $00, $00, $C6, $C3
; 27C
    .byte $CC, $FF, $CC, $FF
    .byte $CC, $FF, $CC, $FF
    .byte $FF, $FF, $CC, $FF
    .byte $C3, $C3, $CC, $FF
; 27D
    .byte $FF, $FF, $C8, $FF
    .byte $FF, $FF, $CA, $CB
    .byte $FF, $FF, $FF, $FF
    .byte $FF, $FF, $FF, $FF
; 27E
    .byte $CC, $CD, $FF, $FF
    .byte $CE, $CF, $FF, $FF
    .byte $CC, $FF, $FF, $FF
    .byte $CC, $FF, $FF, $FF
; 27F
    .byte $FF, $FF, $CC, $FF
    .byte $FF, $FF, $CC, $FF
    .byte $FF, $FF, $CC, $FF
    .byte $FF, $FF, $C6, $C3
; 280
    .byte $CC, $FF, $C6, $D0
    .byte $C6, $C3, $D0, $00
    .byte $FF, $FF, $D0, $00
    .byte $C3, $C3, $D0, $00
; 281
    .byte $00, $00, $CC, $FF
    .byte $00, $00, $C6, $C3
    .byte $00, $00, $00, $00
    .byte $00, $00, $00, $00
; 282
    .byte $FF, $FF, $FF, $FF
    .byte $C3, $C3, $C3, $C3
    .byte $00, $00, $00, $00
    .byte $00, $00, $00, $00
; 283
    .byte $CC, $FF, $FF, $FF
    .byte $C6, $C3, $C3, $C3
    .byte $00, $00, $00, $00
    .byte $00, $00, $00, $00
; 284
    .byte $FF, $FF, $D0, $00
    .byte $C3, $C3, $D0, $00
    .byte $00, $00, $00, $00
    .byte $00, $00, $00, $00
; 285
    .byte $01, $01, $81, $82
    .byte $01, $01, $81, $81
    .byte $01, $01, $81, $81
    .byte $01, $01, $0D, $0D
; 286
    .byte $83, $86, $87, $81
    .byte $81, $8C, $8D, $A0
    .byte $81, $8E, $8F, $81
    .byte $0D, $A4, $0D, $0D
; 287
    .byte $81, $81, $84, $85
    .byte $A1, $A2, $A3, $81
    .byte $81, $A8, $90, $91
    .byte $0D, $0D, $92, $0D
; 288
    .byte $01, $01, $19, $3C
    .byte $01, $01, $0E, $0A
    .byte $01, $01, $10, $AA
    .byte $01, $01, $88, $89
; 289
    .byte $10, $A6, $3C, $18
    .byte $A9, $AC, $0A, $0B
    .byte $AB, $AE, $8B, $AD
    .byte $8A, $0B, $0E, $AF
; 28A
    .byte $19, $B1, $98, $11
    .byte $B2, $B3, $9A, $93
    .byte $B8, $B9, $3C, $99
    .byte $BA, $13, $B0, $9B
; 28B
    .byte $3C, $3C, $01, $01
    .byte $0A, $12, $01, $01
    .byte $18, $19, $01, $01
    .byte $0B, $0E, $01, $01
; 28C
    .byte $01, $01, $01, $01
    .byte $01, $01, $01, $01
    .byte $01, $01, $01, $01
    .byte $0D, $0D, $01, $01
; 28D
    .byte $94, $95, $01, $01
    .byte $01, $97, $A5, $BB
    .byte $9C, $9D, $A7, $01
    .byte $0D, $9F, $0D, $0D
; 28E
    .byte $01, $C0, $C1, $EA
    .byte $BD, $C2, $C3, $01
    .byte $01, $C8, $C9, $01
    .byte $0D, $0D, $CB, $0D
; 28F
    .byte $EB, $01, $01, $01
    .byte $01, $01, $01, $01
    .byte $01, $01, $01, $01
    .byte $0D, $0D, $01, $01
; 290
    .byte $01, $01, $10, $11
    .byte $01, $01, $0A, $13
    .byte $01, $01, $3C, $3C
    .byte $01, $01, $0A, $12
; 291
    .byte $10, $B5, $96, $10
    .byte $B6, $B7, $9E, $12
    .byte $BC, $10, $B4, $E0
    .byte $BE, $BF, $12, $E2
; 292
    .byte $10, $11, $E1, $18
    .byte $12, $13, $E3, $C4
    .byte $C5, $D0, $E9, $C6
    .byte $E8, $0B, $0E, $CC
; 293
    .byte $19, $3C, $01, $01
    .byte $0E, $0A, $01, $01
    .byte $C7, $11, $01, $01
    .byte $CD, $D2, $01, $01
; 294
    .byte $01, $01, $01, $01
    .byte $01, $01, $01, $01
    .byte $01, $01, $01, $01
    .byte $01, $01, $0D, $0D
; 295
    .byte $FA, $01, $01, $01
    .byte $FA, $01, $01, $01
    .byte $FA, $01, $01, $01
    .byte $F7, $FC, $01, $01
; 296
    .byte $3C, $3C, $18, $19
    .byte $0A, $12, $0B, $0E
    .byte $F2, $19, $10, $3C
    .byte $F8, $F9, $0A, $12
; 297
    .byte $01, $01, $F5, $01
    .byte $01, $01, $01, $F5
    .byte $00, $00, $00, $00
    .byte $00, $00, $00, $00
; 298
    .byte $01, $01, $01, $01
    .byte $01, $01, $01, $01
    .byte $01, $01, $01, $01
    .byte $FB, $FB, $FB, $FB
; 299
    .byte $01, $B2, $00, $00
    .byte $01, $B8, $00, $B4
    .byte $01, $BA, $00, $B6
    .byte $01, $01, $F8, $B3
; 29A
    .byte $00, $BD, $00, $C0
    .byte $B5, $BF, $C1, $C2
    .byte $B7, $03, $03, $03
    .byte $03, $03, $03, $03
; 29B
    .byte $00, $C0, $00, $C0
    .byte $C3, $C2, $C3, $E2
    .byte $03, $03, $03, $03
    .byte $03, $03, $03, $03
; 29C
    .byte $C0, $C5, $C5, $00
    .byte $3C, $C6, $C7, $00
    .byte $03, $02, $02, $E9
    .byte $03, $03, $02, $EB
; 29D
    .byte $00, $00, $00, $00
    .byte $00, $00, $00, $00
    .byte $D0, $D1, $00, $00
    .byte $D2, $D3, $00, $00
; 29E
    .byte $D4, $01, $01, $01
    .byte $D6, $D7, $01, $01
    .byte $00, $00, $D5, $01
    .byte $00, $DE, $DC, $DD
; 29F
    .byte $01, $01, $01, $B9
    .byte $01, $01, $01, $BB
    .byte $01, $01, $01, $BC
    .byte $01, $01, $01, $BE
; 2A0
    .byte $03, $C8, $C9, $E3
    .byte $03, $CA, $CB, $E6
    .byte $03, $E0, $E1, $03
    .byte $03, $03, $03, $03
; 2A1
    .byte $03, $03, $03, $03
    .byte $03, $03, $03, $03
    .byte $E8, $03, $03, $03
    .byte $EA, $03, $03, $03
; 2A2
    .byte $CC, $CD, $E7, $EC
    .byte $CE, $CF, $C4, $EE
    .byte $E4, $E5, $02, $02
    .byte $03, $03, $02, $02
; 2A3
    .byte $D8, $D9, $00, $00
    .byte $DA, $DB, $00, $00
    .byte $F0, $F1, $00, $00
    .byte $F2, $F3, $00, $00
; 2A4
    .byte $00, $00, $00, $DF
    .byte $00, $F4, $F5, $01
    .byte $F6, $F7, $01, $01
    .byte $ED, $01, $01, $01
; 2A5
    .byte $61, $61, $61, $61
    .byte $63, $63, $63, $63
    .byte $69, $69, $69, $69
    .byte $6B, $6B, $6B, $6B
; 2A6
    .byte $69, $69, $69, $69
    .byte $F5, $F5, $F5, $F5
    .byte $F7, $F7, $F7, $F7
    .byte $FD, $FD, $FD, $FD
; 2A7
    .byte $FF, $FF, $FF, $FF
    .byte $FC, $FC, $FC, $FC
    .byte $FE, $FE, $FE, $FE
    .byte $FF, $FF, $FF, $FF
; 2A8
    .byte $FB, $FB, $FB, $FB
    .byte $F6, $F6, $F6, $F6
    .byte $00, $00, $00, $00
    .byte $00, $00, $00, $00
; 2A9
    .byte $FC, $FE, $FE, $FE
    .byte $FE, $FC, $FE, $FE
    .byte $FE, $FE, $FC, $FE
    .byte $FE, $FE, $FE, $FC
; 2AA
    .byte $FC, $FE, $FE, $FE
    .byte $FE, $FC, $FE, $FE
    .byte $00, $00, $00, $00
    .byte $00, $00, $00, $00
; 2AB
    .byte $FE, $FE, $FE, $FE
    .byte $FE, $FE, $FE, $FE
    .byte $FE, $FE, $FE, $FE
    .byte $FE, $FE, $FE, $FE
; 2AC
    .byte $FE, $FE, $FE, $FE
    .byte $FE, $FE, $FE, $FE
    .byte $00, $00, $00, $00
    .byte $00, $00, $00, $00
; 2AD
    .byte $01, $01, $01, $01
    .byte $01, $01, $01, $01
    .byte $60, $60, $60, $60
    .byte $62, $62, $62, $62
; 2AE
    .byte $68, $68, $68, $68
    .byte $6A, $6A, $6A, $6A
    .byte $61, $61, $61, $61
    .byte $63, $63, $63, $63
; 2AF
    .byte $69, $69, $69, $69
    .byte $6B, $6B, $6B, $6B
    .byte $00, $00, $00, $00
    .byte $00, $00, $00, $00
; 2B0
    .byte $01, $01, $01, $01
    .byte $01, $01, $01, $01
    .byte $01, $01, $01, $01
    .byte $0D, $0D, $01, $1A
; 2B1
    .byte $01, $01, $01, $01
    .byte $01, $01, $01, $01
    .byte $01, $01, $1A, $1A
    .byte $1A, $01, $02, $04
; 2B2
    .byte $01, $01, $01, $01
    .byte $01, $01, $01, $01
    .byte $1A, $1A, $01, $01
    .byte $04, $05, $01, $1A
; 2B3
    .byte $01, $01, $01, $01
    .byte $01, $01, $01, $01
    .byte $01, $01, $01, $01
    .byte $1A, $01, $0D, $0D
; 2B4
    .byte $3C, $3C, $08, $09
    .byte $0A, $12, $12, $0B
    .byte $18, $19, $10, $3C
    .byte $0B, $0E, $12, $0A
; 2B5
    .byte $0C, $08, $03, $06
    .byte $0E, $0A, $17, $17
    .byte $11, $10, $3C, $3C
    .byte $13, $12, $71, $74
; 2B6
    .byte $06, $07, $09, $0C
    .byte $17, $17, $0B, $0E
    .byte $18, $19, $3C, $10
    .byte $75, $0E, $12, $0A
; 2B7
    .byte $08, $08, $3C, $11
    .byte $12, $0A, $0A, $13
    .byte $11, $10, $3C, $3C
    .byte $13, $0A, $12, $12
; 2B8
    .byte $01, $01, $01, $01
    .byte $01, $01, $01, $01
    .byte $16, $16, $16, $16
    .byte $01, $01, $01, $01
; 2B9
    .byte $00, $00, $00, $00
    .byte $00, $00, $00, $00
    .byte $00, $00, $00, $00
    .byte $00, $00, $00, $00
; 2BA
    .byte $00, $00, $00, $00
    .byte $00, $00, $00, $01
    .byte $00, $00, $00, $01
    .byte $00, $00, $00, $01
; 2BB
    .byte $00, $00, $00, $00
    .byte $01, $00, $00, $00
    .byte $01, $00, $00, $00
    .byte $01, $00, $00, $00
; 2BC
    .byte $00, $00, $00, $00
    .byte $01, $01, $01, $01
    .byte $01, $01, $01, $01
    .byte $01, $01, $01, $01
; 2BD
    .byte $00, $00, $00, $01
    .byte $00, $00, $00, $78
    .byte $00, $00, $00, $7A
    .byte $00, $00, $00, $00
; 2BE
    .byte $73, $76, $01, $01
    .byte $79, $7C, $4A, $6F
    .byte $7B, $7E, $70, $71
    .byte $00, $00, $00, $00
; 2BF
    .byte $01, $01, $01, $01
    .byte $70, $74, $12, $70
    .byte $70, $74, $12, $70
    .byte $00, $00, $00, $00
; 2C0
    .byte $77, $00, $00, $00
    .byte $70, $00, $00, $00
    .byte $72, $00, $00, $00
    .byte $00, $00, $00, $00
; 2C1
    .byte $77, $00, $00, $00
    .byte $7D, $00, $00, $00
    .byte $7F, $00, $00, $00
    .byte $00, $00, $00, $00
; 2C2
    .byte $01, $01, $01, $01
    .byte $01, $01, $01, $01
    .byte $01, $01, $01, $01
    .byte $01, $01, $01, $01
; 2C3
    .byte $01, $01, $01, $01
    .byte $01, $01, $01, $01
    .byte $03, $01, $01, $01
    .byte $03, $03, $01, $01
; 2C4
    .byte $01, $01, $01, $01
    .byte $01, $01, $01, $01
    .byte $01, $01, $01, $01
    .byte $01, $01, $01, $01
; 2C5
    .byte $20, $21, $03, $03
    .byte $22, $29, $09, $09
    .byte $28, $29, $03, $03
    .byte $2A, $2B, $03, $03
; 2C6
    .byte $23, $03, $01, $01
    .byte $09, $09, $27, $01
    .byte $03, $2C, $2D, $24
    .byte $03, $2E, $2F, $26
; 2C7
    .byte $01, $01, $01, $01
    .byte $01, $01, $01, $01
    .byte $01, $01, $01, $01
    .byte $25, $0E, $01, $01
; 2C8
    .byte $01, $01, $01, $01
    .byte $01, $01, $01, $01
    .byte $08, $02, $02, $03
    .byte $0A, $0B, $03, $03
; 2C9
    .byte $01, $01, $01, $01
    .byte $01, $01, $01, $01
    .byte $01, $01, $01, $03
    .byte $01, $01, $03, $03
; 2CA
    .byte $01, $01, $01, $01
    .byte $01, $01, $01, $01
    .byte $03, $02, $02, $18
    .byte $03, $03, $1B, $1A
; 2CB
    .byte $01, $01, $03, $33
    .byte $01, $37, $09, $09
    .byte $34, $3D, $3C, $03
    .byte $36, $3F, $3E, $03
; 2CC
    .byte $03, $03, $31, $30
    .byte $09, $09, $39, $32
    .byte $03, $03, $39, $38
    .byte $03, $03, $3B, $3A
; 2CD
    .byte $01, $01, $01, $01
    .byte $01, $01, $01, $01
    .byte $01, $01, $01, $01
    .byte $01, $01, $1E, $35
; 2CE
    .byte $79, $1C, $56, $56
    .byte $7B, $56, $56, $56
    .byte $00, $00, $00, $00
    .byte $00, $00, $00, $00
; 2CF
    .byte $56, $22, $23, $26
    .byte $56, $28, $29, $38
    .byte $00, $00, $00, $00
    .byte $00, $00, $00, $00
; 2D0
    .byte $33, $36, $5C, $6E
    .byte $39, $5B, $5E, $15
    .byte $00, $00, $00, $00
    .byte $00, $00, $00, $00
; 2D1
    .byte $50, $70, $70, $70
    .byte $6D, $60, $60, $60
    .byte $00, $00, $00, $00
    .byte $00, $00, $00, $00
; 2D2
    .byte $01, $01, $01, $01
    .byte $01, $01, $01, $01
    .byte $01, $01, $01, $01
    .byte $01, $01, $01, $01
; 2D3
    .byte $02, $03, $06, $07
    .byte $08, $09, $0C, $0D
    .byte $0A, $0B, $0E, $0F
    .byte $20, $20, $24, $25
; 2D4
    .byte $12, $13, $01, $01
    .byte $18, $19, $13, $01
    .byte $1A, $1B, $1E, $13
    .byte $30, $31, $34, $35
; 2D5
    .byte $01, $01, $01, $01
    .byte $01, $01, $01, $01
    .byte $01, $01, $01, $01
    .byte $13, $01, $01, $01
; 2D6
    .byte $22, $23, $26, $27
    .byte $28, $29, $2C, $2D
    .byte $2A, $2A, $03, $2F
    .byte $2B, $2B, $2E, $78
; 2D7
    .byte $32, $1A, $36, $37
    .byte $38, $39, $3C, $0F
    .byte $3A, $3B, $3E, $3F
    .byte $52, $53, $14, $15
; 2D8
    .byte $62, $13, $01, $01
    .byte $0D, $69, $6C, $01
    .byte $30, $1A, $6E, $6F
    .byte $40, $41, $44, $45
; 2D9
    .byte $01, $01, $01, $01
    .byte $01, $01, $01, $01
    .byte $01, $01, $01, $01
    .byte $65, $01, $01, $01
; 2DA
    .byte $02, $02, $04, $7A
    .byte $08, $08, $08, $05
    .byte $0A, $0A, $0A, $10
    .byte $20, $20, $20, $11
; 2DB
    .byte $58, $59, $16, $17
    .byte $5A, $5B, $1C, $1D
    .byte $70, $71, $33, $1F
    .byte $72, $73, $5E, $21
; 2DC
    .byte $42, $43, $46, $47
    .byte $48, $49, $4C, $4D
    .byte $4A, $4B, $4E, $4F
    .byte $60, $61, $64, $4F
; 2DD
    .byte $67, $6D, $01, $01
    .byte $4F, $50, $01, $01
    .byte $4F, $51, $6D, $01
    .byte $4F, $4F, $50, $01
; 2DE
    .byte $23, $23, $23, $03
    .byte $3D, $3D, $3D, $68
    .byte $00, $00, $00, $00
    .byte $00, $00, $00, $00
; 2DF
    .byte $78, $79, $54, $55
    .byte $7A, $7B, $56, $57
    .byte $00, $00, $00, $00
    .byte $00, $00, $00, $00
; 2E0
    .byte $6A, $63, $66, $4F
    .byte $6B, $5C, $5D, $4F
    .byte $00, $00, $00, $00
    .byte $00, $00, $00, $00
; 2E1
    .byte $4F, $4F, $51, $6D
    .byte $4F, $4F, $4F, $50
    .byte $00, $00, $00, $00
    .byte $00, $00, $00, $00
; 2E2
    .byte $01, $01, $01, $01
    .byte $01, $01, $01, $01
    .byte $01, $01, $01, $01
    .byte $01, $01, $01, $2B
; 2E3
    .byte $01, $01, $01, $01
    .byte $01, $01, $01, $01
    .byte $01, $01, $01, $01
    .byte $01, $01, $01, $40
; 2E4
    .byte $01, $01, $40, $41
    .byte $01, $40, $42, $43
    .byte $40, $1D, $48, $49
    .byte $1E, $1F, $4A, $4B
; 2E5
    .byte $44, $45, $50, $51
    .byte $46, $47, $52, $53
    .byte $4C, $4D, $58, $59
    .byte $4E, $4F, $5A, $5A
; 2E6
    .byte $01, $01, $40, $31
    .byte $01, $27, $32, $46
    .byte $2C, $2D, $49, $4B
    .byte $2E, $2F, $3A, $3B
; 2E7
    .byte $34, $35, $49, $61
    .byte $4C, $37, $62, $63
    .byte $3C, $3D, $68, $69
    .byte $3E, $3F, $6A, $6B
; 2E8
    .byte $64, $65, $70, $71
    .byte $66, $67, $72, $73
    .byte $6C, $50, $78, $78
    .byte $6E, $6F, $7A, $7A
; 2E9
    .byte $01, $01, $79, $54
    .byte $01, $01, $7B, $56
    .byte $01, $79, $1C, $56
    .byte $01, $7B, $56, $56
; 2EA
    .byte $55, $02, $02, $06
    .byte $57, $08, $09, $0C
    .byte $56, $0A, $0B, $0E
    .byte $56, $20, $21, $24
; 2EB
    .byte $07, $12, $13, $14
    .byte $0D, $18, $19, $16
    .byte $0F, $1A, $1B, $04
    .byte $25, $30, $5D, $10
; 2EC
    .byte $15, $2A, $51, $51
    .byte $17, $53, $53, $53
    .byte $05, $59, $59, $59
    .byte $11, $5A, $5A, $5A
; 2ED
    .byte $7F, $EF, $FA, $01
    .byte $7F, $7F, $E0, $E1
    .byte $00, $00, $00, $00
    .byte $00, $00, $00, $00
; 2EE
    .byte $01, $E3, $7F, $7F
    .byte $EA, $EB, $7F, $7F
    .byte $00, $00, $00, $00
    .byte $00, $00, $00, $00
; 2EF
    .byte $01, $01, $01, $01
    .byte $01, $01, $01, $01
    .byte $F8, $F9, $01, $01
    .byte $7F, $E9, $01, $01
; 2F0
    .byte $7F, $7F, $7F, $E9
    .byte $7F, $7F, $7F, $E1
    .byte $7F, $7F, $7F, $7F
    .byte $7F, $7F, $7F, $7F
; 2F1
    .byte $F0, $F1, $01, $01
    .byte $ED, $7F, $F4, $01
    .byte $7F, $7F, $F2, $FA
    .byte $7F, $7F, $7F, $F3
; 2F2
    .byte $01, $01, $01, $01
    .byte $01, $01, $01, $E8
    .byte $01, $01, $EC, $7F
    .byte $01, $EA, $7F, $7F
; 2F3
    .byte $EA, $7F, $7F, $7F
    .byte $7F, $7F, $7F, $7F
    .byte $7F, $7F, $7F, $7F
    .byte $7F, $7F, $7F, $7F
; 2F4
    .byte $01, $01, $E6, $E7
    .byte $01, $E4, $E5, $7F
    .byte $EE, $7F, $7F, $7F
    .byte $E3, $7F, $7F, $7F
; 2F5
    .byte $01, $01, $01, $01
    .byte $01, $01, $01, $01
    .byte $00, $00, $00, $00
    .byte $00, $00, $00, $00
; 2F6
    .byte $7F, $7F, $7F, $7F
    .byte $7F, $7F, $7F, $7F
    .byte $00, $00, $00, $00
    .byte $00, $00, $00, $00
; 2F7
    .byte $2A, $2B, $2A, $2B
    .byte $2B, $2A, $2B, $2A
    .byte $2A, $2B, $2A, $2B
    .byte $2B, $2A, $2B, $2A
; 2F8
    .byte $01, $01, $01, $01
    .byte $01, $01, $01, $01
    .byte $04, $05, $02, $03
    .byte $06, $07, $03, $03
; 2F9
    .byte $23, $03, $01, $01
    .byte $09, $09, $27, $01
    .byte $03, $2C, $2D, $0D
    .byte $03, $2E, $0C, $0F
; 2FA
    .byte $01, $01, $01, $01
    .byte $01, $01, $01, $01
    .byte $10, $01, $01, $01
    .byte $12, $01, $01, $01
; 2FB
    .byte $01, $01, $01, $01
    .byte $01, $01, $01, $01
    .byte $01, $01, $01, $11
    .byte $01, $01, $01, $13
; 2FC
    .byte $01, $01, $03, $33
    .byte $01, $37, $09, $09
    .byte $1D, $3D, $3C, $03
    .byte $1F, $1C, $3E, $03
; 2FD
    .byte $01, $01, $01, $01
    .byte $01, $01, $01, $01
    .byte $03, $02, $15, $14
    .byte $03, $03, $17, $16
; 2FE
    .byte $2A, $2B, $2A, $2B
    .byte $2B, $2A, $2B, $2A
    .byte $00, $00, $00, $00
    .byte $00, $00, $00, $00
; 2FF
    .byte $01, $01, $01, $01
    .byte $01, $01, $01, $01
    .byte $01, $01, $01, $01
    .byte $01, $01, $01, $01



loc_0x027010:
C D - - - - 0x027010 13:B000: A9 00     LDA #$00
C - - - - - 0x027012 13:B002: 8D 90 04  STA ram_chr_bank
C - - - - - 0x027015 13:B005: A9 02     LDA #$02
C - - - - - 0x027017 13:B007: 8D 91 04  STA ram_chr_bank + $01
C - - - - - 0x02701A 13:B00A: 8D 87 00  STA ram_0087
C - - - - - 0x02701D 13:B00D: A9 67     LDA #< tbl_B467_credits
C - - - - - 0x02701F 13:B00F: 85 88     STA ram_0088
C - - - - - 0x027021 13:B011: A9 B4     LDA #> tbl_B467_credits
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
loc_B02D_loop:
C D - - - - 0x02703D 13:B02D: A4 8A     LDY ram_008A
C - - - - - 0x02703F 13:B02F: B1 88     LDA (ram_0088),Y
C - - - - - 0x027041 13:B031: C9 E0     CMP #$E0
C - - - - - 0x027043 13:B033: 90 08     BCC bra_B03D
C - - - - - 0x027045 13:B035: E6 8A     INC ram_008A
C - - - - - 0x027047 13:B037: 20 5A B1  JSR sub_B15A_управляющие_байты_титров_E0_E7
C - - - - - 0x02704A 13:B03A: 4C 2D B0  JMP loc_B02D_loop
bra_B03D:
; 00-DF
C - - - - - 0x02704D 13:B03D: 20 43 B0  JSR sub_B043
C - - - - - 0x027050 13:B040: 4C 2D B0  JMP loc_B02D_loop



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
; bzk optimize, бесполезный адрес 003A
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



sub_B15A_управляющие_байты_титров_E0_E7:
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
C - - - - - 0x027173 13:B163: 20 09 C5  JSR sub_0x03CBA9_поинтеры_после_JSR
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
C - - - - - 0x0271C7 13:B1B7: AD 16 05  LDA ram_флаги_сценария_ХЗ
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
    STA ram_05F4       ; bzk optimize, возможно не обязательно, было скопировано из 0x03CC56
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
C - - - - - 0x027225 13:B215: 91 34     STA (ram_plr_data),Y    ; con_plr_id
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
C - - - - - 0x02723A 13:B22A: 20 09 C5  JSR sub_0x03CBA9_поинтеры_после_JSR
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
C - - - - - 0x027250 13:B240: 8D 72 04  STA ram_046A + $08
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
C - - - - - 0x0272C8 13:B2B8: BD 6F 04  LDA ram_046B + $04,X
C - - - - - 0x0272CB 13:B2BB: 29 0F     AND #$0F
C - - - - - 0x0272CD 13:B2BD: 05 3A     ORA ram_003A
C - - - - - 0x0272CF 13:B2BF: A4 3A     LDY ram_003A
C - - - - - 0x0272D1 13:B2C1: D0 02     BNE bra_B2C5
C - - - - - 0x0272D3 13:B2C3: A9 0F     LDA #$0F
bra_B2C5:
C - - - - - 0x0272D5 13:B2C5: 9D 6F 04  STA ram_046B + $04,X
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
C - - - - - 0x0272F5 13:B2E5: 8D 72 04  STA ram_046A + $08
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
C - - - - - 0x027309 13:B2F9: 9D 6F 04  STA ram_046B + $04,X
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
C - - - - - 0x027386 13:B376: A9 15     LDA #con_FBCC_15
C - - - - - 0x027388 13:B378: 20 30 C5  JSR sub_0x03CC12_запись_палитры_во_время_матча
C - - - - - 0x02738B 13:B37B: A2 00     LDX #$00    ; палитра фона
C - - - - - 0x02738D 13:B37D: A9 16     LDA #con_FBCC_16
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
C - - - - - 0x0273AA 13:B39A: 8D 91 04  STA ram_chr_bank + $01
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
loc_B3CB_loop:
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
C - - - - - 0x0273FE 13:B3EE: 8E 70 04  STX ram_0468 + $08
C - - - - - 0x027401 13:B3F1: 20 33 C5  JSR sub_0x03CCE3
C - - - - - 0x027407 13:B3F7: 4C CB B3  JMP loc_B3CB_loop
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
C - - - - - 0x02744E 13:B43E: 69 20     ADC #< $0020
C - - - - - 0x027450 13:B440: 85 8A     STA ram_008A
C - - - - - 0x027452 13:B442: A5 8B     LDA ram_008B
C - - - - - 0x027454 13:B444: 69 00     ADC #> $0020
C - - - - - 0x027456 13:B446: 85 8B     STA ram_008B
C - - - - - 0x027458 13:B448: C9 04     CMP #$04
C - - - - - 0x02745A 13:B44A: 90 C1     BCC bra_B40D_ожидание_освобождения_буфера
C - - - - - 0x02745C 13:B44C: 68        PLA
C - - - - - 0x02745D 13:B44D: 60        RTS



tbl_0x02745E_финальная_надпись_TECMO:
    .byte $09   ; counter
    .word $216E ; ppu
    .byte $28, $29, $2C, $2D, $38, $37, $39, $3C, $3D
    
    .byte $09   ; counter
    .word $218E ; ppu
    .byte $2A, $2B, $2E, $2F, $3A, $2A, $3B, $3E, $3F
    
    .byte $00   ; end token



tbl_B467_credits:
; 0x027477

con_animation               = $E0   ; номер сценария из банка 10 (0A?)
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



