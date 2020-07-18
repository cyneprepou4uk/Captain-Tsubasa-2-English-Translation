.segment "BANK_25"
.include "copy_bank_ram.inc"
; таблицы VS экрана

.export tbl_0x040003_vs_экран
tbl_0x040003_vs_экран:
	.word off_матч_01
	.word off_матч_02
	.word off_матч_03
	.word off_матч_04
	.word off_матч_05
	.word off_матч_06
	.word off_матч_07
	.word off_матч_08
	.word off_матч_09
	.word off_матч_10
	.word off_матч_11
	.word off_матч_12
	.word off_матч_13
	.word off_матч_14
	.word off_матч_15
	.word off_матч_16
	.word off_матч_17
	.word off_матч_18
	.word off_матч_19
	.word off_матч_20
	.word off_матч_21
	.word off_матч_22
	.word off_матч_23
	.word off_матч_24
	.word off_матч_25
	.word off_матч_26
	.word off_матч_27
	.word off_матч_28
	.word off_матч_29
	.word off_матч_30
	.word off_матч_31
	.word off_матч_32
	.word off_матч_33






off_матч_01:
; очистить nametable
	.byte $0D
; верхняя горизонтальная линия
	.byte $05
	.word $2145
	.byte $16
	.byte $8E
; центральная горизонтальная линия
	.byte $05
	.word $21A5
	.byte $16
	.byte $BA
; нижняя горизонтальная линия
	.byte $05
	.word $22A5
	.byte $16
	.byte $8E
; левая вертикальная линия
	.byte $04
	.word $2164
	.byte $0A
	.byte $8F
; центральная вертикальная линия
	.byte $04
	.word $21CE
	.byte $07
	.byte $BB
; правая вертикальная линия
	.byte $04
	.word $217B
	.byte $0A
	.byte $8F
	
	.byte $00
	.word @углы
	
	.byte $00
	.word @текст
; закончить
	.byte $0F



@углы:
; левый верхний угол
	.byte $01
	.word $2144
	.byte $90
; правый верхний угол
	.byte $01
	.word $215B
	.byte $91
; правый нижний угол
	.byte $01
	.word $22A4
	.byte $92
; левый нижний угол
	.byte $41
	.word $22BB
	.byte $93



@текст:
	.byte $09
	.word $206B
	.text "Episode 1"
	
	.byte $1C
	.word $20A2
	.byte $7B
	.text "#10,Sao Paulo's Lucky Star"
	.byte $7B
	
	.byte $0E
	.word $2189
	.text "Rio Cup,Brazil"
	
	.byte $05
	.word $2207
	.text "1/32-"
	
	.byte $05
	.word $2247
	.text "Final"
	
	.byte $09
	.word $21F0
	.text "Sao Paulo"
	
	.byte $04
	.word $2232
	.text "~VS~"
	
	.byte $4A
	.word $2270
	.text "Fluminence"






off_матч_02:
; очистить nametable
	.byte $0D
; верхняя горизонтальная линия
	.byte $05
	.word $2145
	.byte $16
	.byte $8E
; центральная горизонтальная линия
	.byte $05
	.word $21A5
	.byte $16
	.byte $BA
; нижняя горизонтальная линия
	.byte $05
	.word $22A5
	.byte $16
	.byte $8E
; левая вертикальная линия
	.byte $04
	.word $2164
	.byte $0A
	.byte $8F
; центральная вертикальная линия
	.byte $04
	.word $21CE
	.byte $07
	.byte $BB
; правая вертикальная линия
	.byte $04
	.word $217B
	.byte $0A
	.byte $8F
	
	.byte $00
	.word @углы
	
	.byte $00
	.word @текст
; закончить
	.byte $0F



@углы:
; левый верхний угол
	.byte $01
	.word $2144
	.byte $90
; правый верхний угол
	.byte $01
	.word $215B
	.byte $91
; правый нижний угол
	.byte $01
	.word $22A4
	.byte $92
; левый нижний угол
	.byte $41
	.word $22BB
	.byte $93



@текст:
	.byte $09
	.word $206B
	.text "Episode 2"
	
	.byte $1C
	.word $20A2
	.byte $7B
	.text "                          "
	.byte $7B
	
	.byte $0E
	.word $2189
	.text "Rio Cup,Brazil"
	
	.byte $05
	.word $2207
	.text "1/16-"
	
	.byte $05
	.word $2247
	.text "Final"
	
	.byte $09
	.word $21F0
	.text "Sao Paulo"
	
	.byte $04
	.word $2232
	.text "~VS~"
	
	.byte $4B
	.word $226F
	.text "Corinthians"






off_матч_03:
; очистить nametable
	.byte $0D
; верхняя горизонтальная линия
	.byte $05
	.word $2145
	.byte $16
	.byte $8E
; центральная горизонтальная линия
	.byte $05
	.word $21A5
	.byte $16
	.byte $BA
; нижняя горизонтальная линия
	.byte $05
	.word $22A5
	.byte $16
	.byte $8E
; левая вертикальная линия
	.byte $04
	.word $2164
	.byte $0A
	.byte $8F
; центральная вертикальная линия
	.byte $04
	.word $21CE
	.byte $07
	.byte $BB
; правая вертикальная линия
	.byte $04
	.word $217B
	.byte $0A
	.byte $8F
	
	.byte $00
	.word @углы
	
	.byte $00
	.word @текст
; закончить
	.byte $0F



@углы:
; левый верхний угол
	.byte $01
	.word $2144
	.byte $90
; правый верхний угол
	.byte $01
	.word $215B
	.byte $91
; правый нижний угол
	.byte $01
	.word $22A4
	.byte $92
; левый нижний угол
	.byte $41
	.word $22BB
	.byte $93



@текст:
	.byte $09
	.word $206B
	.text "Episode 3"
	
	.byte $1C
	.word $20A2
	.byte $7B
	.text "                          "
	.byte $7B
	
	.byte $0E
	.word $2189
	.text "Rio Cup,Brazil"
	
	.byte $04
	.word $2207
	.text "1/8-"
	
	.byte $05
	.word $2247
	.text "Final"
	
	.byte $09
	.word $21F0
	.text "Sao Paulo"
	
	.byte $04
	.word $2232
	.text "~VS~"
	
	.byte $46
	.word $2271
	.text "Gremio"






off_матч_04:
; очистить nametable
	.byte $0D
; верхняя горизонтальная линия
	.byte $05
	.word $2145
	.byte $16
	.byte $8E
; центральная горизонтальная линия
	.byte $05
	.word $21A5
	.byte $16
	.byte $BA
; нижняя горизонтальная линия
	.byte $05
	.word $22A5
	.byte $16
	.byte $8E
; левая вертикальная линия
	.byte $04
	.word $2164
	.byte $0A
	.byte $8F
; центральная вертикальная линия
	.byte $04
	.word $21CE
	.byte $07
	.byte $BB
; правая вертикальная линия
	.byte $04
	.word $217B
	.byte $0A
	.byte $8F
	
	.byte $00
	.word @углы
	
	.byte $00
	.word @текст
; закончить
	.byte $0F



@углы:
; левый верхний угол
	.byte $01
	.word $2144
	.byte $90
; правый верхний угол
	.byte $01
	.word $215B
	.byte $91
; правый нижний угол
	.byte $01
	.word $22A4
	.byte $92
; левый нижний угол
	.byte $41
	.word $22BB
	.byte $93



@текст:
	.byte $09
	.word $206B
	.text "Episode 4"
	
	.byte $1C
	.word $20A2
	.byte $7B
	.text "                          "
	.byte $7B
	
	.byte $0E
	.word $2189
	.text "Rio Cup,Brazil"
	
	.byte $07
	.word $2206
	.text "Quater-"
	
	.byte $05
	.word $2247
	.text "Final"
	
	.byte $09
	.word $21F0
	.text "Sao Paulo"
	
	.byte $04
	.word $2232
	.text "~VS~"
	
	.byte $49
	.word $2270
	.text "Palmeiras"






off_матч_05:
; очистить nametable
	.byte $0D
; верхняя горизонтальная линия
	.byte $05
	.word $2145
	.byte $16
	.byte $8E
; центральная горизонтальная линия
	.byte $05
	.word $21A5
	.byte $16
	.byte $BA
; нижняя горизонтальная линия
	.byte $05
	.word $22A5
	.byte $16
	.byte $8E
; левая вертикальная линия
	.byte $04
	.word $2164
	.byte $0A
	.byte $8F
; центральная вертикальная линия
	.byte $04
	.word $21CE
	.byte $07
	.byte $BB
; правая вертикальная линия
	.byte $04
	.word $217B
	.byte $0A
	.byte $8F
	
	.byte $00
	.word @углы
	
	.byte $00
	.word @текст
; закончить
	.byte $0F



@углы:
; левый верхний угол
	.byte $01
	.word $2144
	.byte $90
; правый верхний угол
	.byte $01
	.word $215B
	.byte $91
; правый нижний угол
	.byte $01
	.word $22A4
	.byte $92
; левый нижний угол
	.byte $41
	.word $22BB
	.byte $93



@текст:
	.byte $09
	.word $206B
	.text "Episode 5"
	
	.byte $1C
	.word $20A2
	.byte $7B
	.text "                          "
	.byte $7B
	
	.byte $0E
	.word $2189
	.text "Rio Cup,Brazil"
	
	.byte $05
	.word $2207
	.text "Semi-"
	
	.byte $05
	.word $2247
	.text "Final"
	
	.byte $09
	.word $21F0
	.text "Sao Paulo"
	
	.byte $04
	.word $2232
	.text "~VS~"
	
	.byte $46
	.word $2271
	.text "Santos"






off_матч_06:
; очистить nametable
	.byte $0D
; верхняя горизонтальная линия
	.byte $05
	.word $2145
	.byte $16
	.byte $8E
; центральная горизонтальная линия
	.byte $05
	.word $21A5
	.byte $16
	.byte $BA
; нижняя горизонтальная линия
	.byte $05
	.word $22A5
	.byte $16
	.byte $8E
; левая вертикальная линия
	.byte $04
	.word $2164
	.byte $0A
	.byte $8F
; центральная вертикальная линия
	.byte $04
	.word $21CE
	.byte $07
	.byte $BB
; правая вертикальная линия
	.byte $04
	.word $217B
	.byte $0A
	.byte $8F
	
	.byte $00
	.word @углы
	
	.byte $00
	.word @текст
; закончить
	.byte $0F



@углы:
; левый верхний угол
	.byte $01
	.word $2144
	.byte $90
; правый верхний угол
	.byte $01
	.word $215B
	.byte $91
; правый нижний угол
	.byte $01
	.word $22A4
	.byte $92
; левый нижний угол
	.byte $41
	.word $22BB
	.byte $93



@текст:
	.byte $09
	.word $206B
	.text "Episode 6"
	
	.byte $19
	.word $20A3
	.byte $7B
	.text "Son of the Football God"
	.byte $7B
	
	.byte $0E
	.word $2189
	.text "Rio Cup,Brazil"
	
	.byte $05
	.word $2227
	.text "Final"
	
	.byte $09
	.word $21F0
	.text "Sao Paulo"
	
	.byte $04
	.word $2232
	.text "~VS~"
	
	.byte $48
	.word $2270
	.text "Flamengo"






off_матч_07:
; очистить nametable
	.byte $0D
; верхняя горизонтальная линия
	.byte $05
	.word $2102
	.byte $1C
	.byte $8E
; центральная горизонтальная линия
	.byte $05
	.word $21A2
	.byte $1C
	.byte $BA
; нижняя горизонтальная линия
	.byte $05
	.word $22E2
	.byte $1C
	.byte $8E
; левая вертикальная линия
	.byte $04
	.word $2121
	.byte $0E
	.byte $8F
; центральная вертикальная линия
	.byte $04
	.word $21CE
	.byte $09
	.byte $BB
; правая вертикальная линия
	.byte $04
	.word $213E
	.byte $0E
	.byte $8F
	
	.byte $00
	.word @углы
	
	.byte $00
	.word @текст
; закончить
	.byte $0F



@углы:
; левый верхний угол
	.byte $01
	.word $2101
	.byte $90
; правый верхний угол
	.byte $01
	.word $211E
	.byte $91
; правый нижний угол
	.byte $01
	.word $22E1
	.byte $92
; левый нижний угол
	.byte $41
	.word $22FE
	.byte $93



@текст:
	.byte $09
	.word $206B
	.text "Episode 7"
	
	.byte $18
	.word $20A4
	.byte $7B
	.text "The Source of Strength"
	.byte $7B
	
	.byte $14
	.word $2146
	.text "National High School"
	
	.byte $19
	.word $2183
	.text "Football Tournament,Japan"
	
	.byte $05
	.word $2205
	.text "Group"
	
	.byte $06
	.word $2245
	.text "Stage,"
	
	.byte $09
	.word $2283
	.text "1st Round"
	
	.byte $08
	.word $21F2
	.text "Nankatsu"
	
	.byte $0B
	.word $2231
	.text "Public High"
	
	.byte $04
	.word $2274
	.text "~VS~"
	
	.byte $4E
	.word $22AF
	.text "Kunimi Academy"






off_матч_08:
; очистить nametable
	.byte $0D
; верхняя горизонтальная линия
	.byte $05
	.word $2102
	.byte $1C
	.byte $8E
; центральная горизонтальная линия
	.byte $05
	.word $21A2
	.byte $1C
	.byte $BA
; нижняя горизонтальная линия
	.byte $05
	.word $2362
	.byte $1C
	.byte $8E
; левая вертикальная линия
	.byte $04
	.word $2121
	.byte $12
	.byte $8F
; центральная вертикальная линия
	.byte $04
	.word $21CE
	.byte $0D
	.byte $BB
; правая вертикальная линия
	.byte $04
	.word $213E
	.byte $12
	.byte $8F
	
	.byte $00
	.word @углы
	
	.byte $00
	.word @текст
; закончить
	.byte $0F



@углы:
; левый верхний угол
	.byte $01
	.word $2101
	.byte $90
; правый верхний угол
	.byte $01
	.word $211E
	.byte $91
; правый нижний угол
	.byte $01
	.word $2361
	.byte $92
; левый нижний угол
	.byte $41
	.word $237E
	.byte $93



@текст:
	.byte $09
	.word $206B
	.text "Episode 8"
	
	.byte $12
	.word $20A7
	.byte $7B
	.text "The Flying Twins"
	.byte $7B
	
	.byte $14
	.word $2146
	.text "National High School"
	
	.byte $19
	.word $2183
	.text "Football Tournament,Japan"
	
	.byte $05
	.word $2245
	.text "Group"
	
	.byte $06
	.word $2285
	.text "Stage,"
	
	.byte $09
	.word $22C3
	.text "2nd Round"
	
	.byte $08
	.word $21F2
	.text "Nankatsu"
	
	.byte $0B
	.word $2231
	.text "Public High"
	
	.byte $04
	.word $2274
	.text "~VS~"
	
	.byte $05
	.word $22B3
	.text "Akita"
	
	.byte $0A
	.word $22F1
	.text "Commercial"
	
	.byte $46
	.word $2333
	.text "School"






off_матч_09:
; очистить nametable
	.byte $0D
; верхняя горизонтальная линия
	.byte $05
	.word $2102
	.byte $1C
	.byte $8E
; центральная горизонтальная линия
	.byte $05
	.word $21A2
	.byte $1C
	.byte $BA
; нижняя горизонтальная линия
	.byte $05
	.word $22E2
	.byte $1C
	.byte $8E
; левая вертикальная линия
	.byte $04
	.word $2121
	.byte $0E
	.byte $8F
; центральная вертикальная линия
	.byte $04
	.word $21CE
	.byte $09
	.byte $BB
; правая вертикальная линия
	.byte $04
	.word $213E
	.byte $0E
	.byte $8F
	
	.byte $00
	.word @углы
	
	.byte $00
	.word @текст
; закончить
	.byte $0F



@углы:
; левый верхний угол
	.byte $01
	.word $2101
	.byte $90
; правый верхний угол
	.byte $01
	.word $211E
	.byte $91
; правый нижний угол
	.byte $01
	.word $22E1
	.byte $92
; левый нижний угол
	.byte $41
	.word $22FE
	.byte $93



@текст:
	.byte $09
	.word $206B
	.text "Episode 9"
	
	.byte $0C
	.word $20A9
	.byte $7B
	.text "Ace Killer"
	.byte $7B
	
	.byte $14
	.word $2146
	.text "National High School"
	
	.byte $19
	.word $2183
	.text "Football Tournament,Japan"
	
	.byte $05
	.word $2205
	.text "Group"
	
	.byte $06
	.word $2245
	.text "Stage,"
	
	.byte $09
	.word $2283
	.text "3rd Round"
	
	.byte $08
	.word $21F2
	.text "Nankatsu"
	
	.byte $0B
	.word $2231
	.text "Public High"
	
	.byte $04
	.word $2274
	.text "~VS~"
	
	.byte $4E
	.word $22AF
	.text "Tatsunami High"






off_матч_10:
; очистить nametable
	.byte $0D
; верхняя горизонтальная линия
	.byte $05
	.word $2102
	.byte $1C
	.byte $8E
; центральная горизонтальная линия
	.byte $05
	.word $21A2
	.byte $1C
	.byte $BA
; нижняя горизонтальная линия
	.byte $05
	.word $2322
	.byte $1C
	.byte $8E
; левая вертикальная линия
	.byte $04
	.word $2121
	.byte $10
	.byte $8F
; центральная вертикальная линия
	.byte $04
	.word $21CE
	.byte $0B
	.byte $BB
; правая вертикальная линия
	.byte $04
	.word $213E
	.byte $10
	.byte $8F
	
	.byte $00
	.word @углы
	
	.byte $00
	.word @текст
; закончить
	.byte $0F



@углы:
; левый верхний угол
	.byte $01
	.word $2101
	.byte $90
; правый верхний угол
	.byte $01
	.word $211E
	.byte $91
; правый нижний угол
	.byte $01
	.word $2321
	.byte $92
; левый нижний угол
	.byte $41
	.word $233E
	.byte $93



@текст:
	.byte $0A
	.word $206B
	.text "Episode 10"
	
	.byte $13
	.word $20A7
	.byte $7B
	.text "Heart of the Game"
	.byte $7B
	
	.byte $14
	.word $2146
	.text "National High School"
	
	.byte $19
	.word $2183
	.text "Football Tournament,Japan"
	
	.byte $05
	.word $2225
	.text "Group"
	
	.byte $06
	.word $2265
	.text "Stage,"
	
	.byte $09
	.word $22A3
	.text "4th Round"
	
	.byte $08
	.word $21F2
	.text "Nankatsu"
	
	.byte $0B
	.word $2231
	.text "Public High"
	
	.byte $04
	.word $2274
	.text "~VS~"
	
	.byte $07
	.word $22B3
	.text "Musashi"
	
	.byte $4E
	.word $22EF
	.text "Medical School"






off_матч_11:
; очистить nametable
	.byte $0D
; верхняя горизонтальная линия
	.byte $05
	.word $2102
	.byte $1C
	.byte $8E
; центральная горизонтальная линия
	.byte $05
	.word $21A2
	.byte $1C
	.byte $BA
; нижняя горизонтальная линия
	.byte $05
	.word $2322
	.byte $1C
	.byte $8E
; левая вертикальная линия
	.byte $04
	.word $2121
	.byte $10
	.byte $8F
; центральная вертикальная линия
	.byte $04
	.word $21CE
	.byte $0B
	.byte $BB
; правая вертикальная линия
	.byte $04
	.word $213E
	.byte $10
	.byte $8F
	
	.byte $00
	.word @углы
	
	.byte $00
	.word @текст
; закончить
	.byte $0F



@углы:
; левый верхний угол
	.byte $01
	.word $2101
	.byte $90
; правый верхний угол
	.byte $01
	.word $211E
	.byte $91
; правый нижний угол
	.byte $01
	.word $2321
	.byte $92
; левый нижний угол
	.byte $41
	.word $233E
	.byte $93



@текст:
	.byte $0A
	.word $206B
	.text "Episode 11"
	
	.byte $1E
	.word $20A1
	.byte $7B
	.text "Hot #10 from a Snowy Country"
	.byte $7B
	
	.byte $14
	.word $2146
	.text "National High School"
	
	.byte $19
	.word $2183
	.text "Football Tournament,Japan"
	
	.byte $09
	.word $2263
	.text "Semifinal"
	
	.byte $08
	.word $21F2
	.text "Nankatsu"
	
	.byte $0B
	.word $2231
	.text "Public High"
	
	.byte $04
	.word $2274
	.text "~VS~"
	
	.byte $06
	.word $22B3
	.text "Furano"
	
	.byte $4B
	.word $22F1
	.text "Public High"






off_матч_12:
; очистить nametable
	.byte $0D
; верхняя горизонтальная линия
	.byte $05
	.word $2102
	.byte $1C
	.byte $8E
; центральная горизонтальная линия
	.byte $05
	.word $21A2
	.byte $1C
	.byte $BA
; нижняя горизонтальная линия
	.byte $05
	.word $22E2
	.byte $1C
	.byte $8E
; левая вертикальная линия
	.byte $04
	.word $2121
	.byte $0E
	.byte $8F
; центральная вертикальная линия
	.byte $04
	.word $21CE
	.byte $09
	.byte $BB
; правая вертикальная линия
	.byte $04
	.word $213E
	.byte $0E
	.byte $8F
	
	.byte $00
	.word @углы
	
	.byte $00
	.word @текст
; закончить
	.byte $0F



@углы:
; левый верхний угол
	.byte $01
	.word $2101
	.byte $90
; правый верхний угол
	.byte $01
	.word $211E
	.byte $91
; правый нижний угол
	.byte $01
	.word $22E1
	.byte $92
; левый нижний угол
	.byte $41
	.word $22FE
	.byte $93



@текст:
	.byte $0A
	.word $206B
	.text "Episode 12"
	
	.byte $1A
	.word $20A3
	.byte $7B
	.text "Ultimate Offensive Style"
	.byte $7B
	
	.byte $14
	.word $2146
	.text "National High School"
	
	.byte $19
	.word $2183
	.text "Football Tournament,Japan"
	
	.byte $05
	.word $2245
	.text "Final"
	
	.byte $08
	.word $21F2
	.text "Nankatsu"
	
	.byte $0B
	.word $2231
	.text "Public High"
	
	.byte $04
	.word $2274
	.text "~VS~"
	
	.byte $4C
	.word $22B0
	.text "Toho Academy"






off_матч_13:
; очистить nametable
	.byte $0D
; верхняя горизонтальная линия
	.byte $05
	.word $2145
	.byte $16
	.byte $8E
; центральная горизонтальная линия
	.byte $05
	.word $21A5
	.byte $16
	.byte $BA
; нижняя горизонтальная линия
	.byte $05
	.word $22A5
	.byte $16
	.byte $8E
; левая вертикальная линия
	.byte $04
	.word $2164
	.byte $0A
	.byte $8F
; центральная вертикальная линия
	.byte $04
	.word $21CE
	.byte $07
	.byte $BB
; правая вертикальная линия
	.byte $04
	.word $217B
	.byte $0A
	.byte $8F
	
	.byte $00
	.word @углы
	
	.byte $00
	.word @текст
; закончить
	.byte $0F



@углы:
; левый верхний угол
	.byte $01
	.word $2144
	.byte $90
; правый верхний угол
	.byte $01
	.word $215B
	.byte $91
; правый нижний угол
	.byte $01
	.word $22A4
	.byte $92
; левый нижний угол
	.byte $41
	.word $22BB
	.byte $93



@текст:
	.byte $0A
	.word $206B
	.text "Episode 13"
	
	.byte $18
	.word $20A4
	.byte $7B
	.text "Entering the Colosseum"
	.byte $7B
	
	.byte $09
	.word $218B
	.text "Japan Cup"
	
	.byte $04
	.word $2207
	.text "1/8-"
	
	.byte $05
	.word $2247
	.text "Final"
	
	.byte $09
	.word $21F0
	.text "Sao Paulo"
	
	.byte $04
	.word $2232
	.text "~VS~"
	
	.byte $47
	.word $2271
	.text "AS Roma"






off_матч_14:
; очистить nametable
	.byte $0D
; верхняя горизонтальная линия
	.byte $05
	.word $2145
	.byte $16
	.byte $8E
; центральная горизонтальная линия
	.byte $05
	.word $21A5
	.byte $16
	.byte $BA
; нижняя горизонтальная линия
	.byte $05
	.word $22A5
	.byte $16
	.byte $8E
; левая вертикальная линия
	.byte $04
	.word $2164
	.byte $0A
	.byte $8F
; центральная вертикальная линия
	.byte $04
	.word $21CE
	.byte $07
	.byte $BB
; правая вертикальная линия
	.byte $04
	.word $217B
	.byte $0A
	.byte $8F
	
	.byte $00
	.word @углы
	
	.byte $00
	.word @текст
; закончить
	.byte $0F



@углы:
; левый верхний угол
	.byte $01
	.word $2144
	.byte $90
; правый верхний угол
	.byte $01
	.word $215B
	.byte $91
; правый нижний угол
	.byte $01
	.word $22A4
	.byte $92
; левый нижний угол
	.byte $41
	.word $22BB
	.byte $93



@текст:
	.byte $0A
	.word $206B
	.text "Episode 14"
	
	.byte $20
	.word $20A0
	.byte $7B
	.text "Black Panther of South America"
	.byte $7B
	
	.byte $09
	.word $218B
	.text "Japan Cup"
	
	.byte $07
	.word $2206
	.text "Quater-"
	
	.byte $05
	.word $2247
	.text "Final"
	
	.byte $09
	.word $21F0
	.text "Sao Paulo"
	
	.byte $04
	.word $2232
	.text "~VS~"
	
	.byte $47
	.word $2271
	.text "Uruguay"






off_матч_15:
; очистить nametable
	.byte $0D
; верхняя горизонтальная линия
	.byte $05
	.word $2145
	.byte $16
	.byte $8E
; центральная горизонтальная линия
	.byte $05
	.word $21A5
	.byte $16
	.byte $BA
; нижняя горизонтальная линия
	.byte $05
	.word $22A5
	.byte $16
	.byte $8E
; левая вертикальная линия
	.byte $04
	.word $2164
	.byte $0A
	.byte $8F
; центральная вертикальная линия
	.byte $04
	.word $21CD
	.byte $07
	.byte $BB
; правая вертикальная линия
	.byte $04
	.word $217B
	.byte $0A
	.byte $8F
	
	.byte $00
	.word @углы
	
	.byte $00
	.word @текст
; закончить
	.byte $0F



@углы:
; левый верхний угол
	.byte $01
	.word $2144
	.byte $90
; правый верхний угол
	.byte $01
	.word $215B
	.byte $91
; правый нижний угол
	.byte $01
	.word $22A4
	.byte $92
; левый нижний угол
	.byte $41
	.word $22BB
	.byte $93



@текст:
	.byte $0A
	.word $206B
	.text "Episode 15"
	
	.byte $1F
	.word $20A0
	.byte $7B
	.text "The Guardian Deity of the Net"
	.byte $7B
	
	.byte $09
	.word $218B
	.text "Japan Cup"
	
	.byte $05
	.word $2206
	.text "Semi-"
	
	.byte $05
	.word $2246
	.text "Final"
	
	.byte $09
	.word $21F0
	.text "Sao Paulo"
	
	.byte $04
	.word $2232
	.text "~VS~"
	
	.byte $4C
	.word $226E
	.text "Hamburger SV"






off_матч_16:
; очистить nametable
	.byte $0D
; верхняя горизонтальная линия
	.byte $05
	.word $2145
	.byte $16
	.byte $8E
; центральная горизонтальная линия
	.byte $05
	.word $21A5
	.byte $16
	.byte $BA
; нижняя горизонтальная линия
	.byte $05
	.word $22A5
	.byte $16
	.byte $8E
; левая вертикальная линия
	.byte $04
	.word $2164
	.byte $0A
	.byte $8F
; центральная вертикальная линия
	.byte $04
	.word $21CE
	.byte $07
	.byte $BB
; правая вертикальная линия
	.byte $04
	.word $217B
	.byte $0A
	.byte $8F
	
	.byte $00
	.word @углы
	
	.byte $00
	.word @текст
; закончить
	.byte $0F



@углы:
; левый верхний угол
	.byte $01
	.word $2144
	.byte $90
; правый верхний угол
	.byte $01
	.word $215B
	.byte $91
; правый нижний угол
	.byte $01
	.word $22A4
	.byte $92
; левый нижний угол
	.byte $41
	.word $22BB
	.byte $93



@текст:
	.byte $0A
	.word $206B
	.text "Episode 16"
	
	.byte $14
	.word $20A6
	.byte $7B
	.text "Farewell,Sao Paulo"
	.byte $7B
	
	.byte $09
	.word $218B
	.text "Japan Cup"
	
	.byte $05
	.word $2227
	.text "Final"
	
	.byte $09
	.word $21F0
	.text "Sao Paulo"
	
	.byte $04
	.word $2232
	.text "~VS~"
	
	.byte $45
	.word $2272
	.text "Japan"






off_матч_17:
; очистить nametable
	.byte $0D
; верхняя горизонтальная линия
	.byte $05
	.word $2145
	.byte $16
	.byte $8E
; центральная горизонтальная линия
	.byte $05
	.word $21E5
	.byte $16
	.byte $BA
; нижняя горизонтальная линия
	.byte $05
	.word $22E5
	.byte $16
	.byte $8E
; левая вертикальная линия
	.byte $04
	.word $2164
	.byte $0C
	.byte $8F
; центральная вертикальная линия
	.byte $04
	.word $220E
	.byte $07
	.byte $BB
; правая вертикальная линия
	.byte $04
	.word $217B
	.byte $0C
	.byte $8F
	
	.byte $00
	.word @углы
	
	.byte $00
	.word @текст
; закончить
	.byte $0F



@углы:
; левый верхний угол
	.byte $01
	.word $2144
	.byte $90
; правый верхний угол
	.byte $01
	.word $215B
	.byte $91
; правый нижний угол
	.byte $01
	.word $22E4
	.byte $92
; левый нижний угол
	.byte $41
	.word $22FB
	.byte $93



@текст:
	.byte $0A
	.word $206B
	.text "Episode 17"
	
	.byte $17
	.word $20A4
	.byte $7B
	.text "Road to the World Cup"
	.byte $7B
	
	.byte $0F
	.word $2189
	.text "U-20 World Cup,"
	
	.byte $10
	.word $21C8
	.text "Asian Qualifiers"
	
	.byte $03
	.word $2248
	.text "1st"
	
	.byte $05
	.word $2287
	.text "Round"
	
	.byte $05
	.word $2232
	.text "Japan"
	
	.byte $04
	.word $2272
	.text "~VS~"
	
	.byte $45
	.word $22B2
	.text "Syria"






off_матч_18:
; очистить nametable
	.byte $0D
; верхняя горизонтальная линия
	.byte $05
	.word $2145
	.byte $16
	.byte $8E
; центральная горизонтальная линия
	.byte $05
	.word $21E5
	.byte $16
	.byte $BA
; нижняя горизонтальная линия
	.byte $05
	.word $22E5
	.byte $16
	.byte $8E
; левая вертикальная линия
	.byte $04
	.word $2164
	.byte $0C
	.byte $8F
; центральная вертикальная линия
	.byte $04
	.word $220E
	.byte $07
	.byte $BB
; правая вертикальная линия
	.byte $04
	.word $217B
	.byte $0C
	.byte $8F
	
	.byte $00
	.word @углы
	
	.byte $00
	.word @текст
; закончить
	.byte $0F



@углы:
; левый верхний угол
	.byte $01
	.word $2144
	.byte $90
; правый верхний угол
	.byte $01
	.word $215B
	.byte $91
; правый нижний угол
	.byte $01
	.word $22E4
	.byte $92
; левый нижний угол
	.byte $41
	.word $22FB
	.byte $93



@текст:
	.byte $0A
	.word $206B
	.text "Episode 18"
	
	.byte $17
	.word $20A4
	.byte $7B
	.text "                     "
	.byte $7B
	
	.byte $0F
	.word $2189
	.text "U-20 World Cup,"
	
	.byte $10
	.word $21C8
	.text "Asian Qualifiers"
	
	.byte $03
	.word $2248
	.text "2nd"
	
	.byte $05
	.word $2287
	.text "Round"
	
	.byte $05
	.word $2232
	.text "Japan"
	
	.byte $04
	.word $2272
	.text "~VS~"
	
	.byte $45
	.word $22B2
	.text "China"






off_матч_19:
; очистить nametable
	.byte $0D
; верхняя горизонтальная линия
	.byte $05
	.word $2145
	.byte $16
	.byte $8E
; центральная горизонтальная линия
	.byte $05
	.word $21E5
	.byte $16
	.byte $BA
; нижняя горизонтальная линия
	.byte $05
	.word $22E5
	.byte $16
	.byte $8E
; левая вертикальная линия
	.byte $04
	.word $2164
	.byte $0C
	.byte $8F
; центральная вертикальная линия
	.byte $04
	.word $220E
	.byte $07
	.byte $BB
; правая вертикальная линия
	.byte $04
	.word $217B
	.byte $0C
	.byte $8F
	
	.byte $00
	.word @углы
	
	.byte $00
	.word @текст
; закончить
	.byte $0F



@углы:
; левый верхний угол
	.byte $01
	.word $2144
	.byte $90
; правый верхний угол
	.byte $01
	.word $215B
	.byte $91
; правый нижний угол
	.byte $01
	.word $22E4
	.byte $92
; левый нижний угол
	.byte $41
	.word $22FB
	.byte $93



@текст:
	.byte $0A
	.word $206B
	.text "Episode 19"
	
	.byte $17
	.word $20A4
	.byte $7B
	.text "                     "
	.byte $7B
	
	.byte $0F
	.word $2189
	.text "U-20 World Cup,"
	
	.byte $10
	.word $21C8
	.text "Asian Qualifiers"
	
	.byte $03
	.word $2248
	.text "3rd"
	
	.byte $05
	.word $2287
	.text "Round"
	
	.byte $05
	.word $2232
	.text "Japan"
	
	.byte $04
	.word $2272
	.text "~VS~"
	
	.byte $44
	.word $22B2
	.text "Iran"






off_матч_20:
; очистить nametable
	.byte $0D
; верхняя горизонтальная линия
	.byte $05
	.word $2145
	.byte $16
	.byte $8E
; центральная горизонтальная линия
	.byte $05
	.word $21E5
	.byte $16
	.byte $BA
; нижняя горизонтальная линия
	.byte $05
	.word $22E5
	.byte $16
	.byte $8E
; левая вертикальная линия
	.byte $04
	.word $2164
	.byte $0C
	.byte $8F
; центральная вертикальная линия
	.byte $04
	.word $220E
	.byte $07
	.byte $BB
; правая вертикальная линия
	.byte $04
	.word $217B
	.byte $0C
	.byte $8F
	
	.byte $00
	.word @углы
	
	.byte $00
	.word @текст
; закончить
	.byte $0F



@углы:
; левый верхний угол
	.byte $01
	.word $2144
	.byte $90
; правый верхний угол
	.byte $01
	.word $215B
	.byte $91
; правый нижний угол
	.byte $01
	.word $22E4
	.byte $92
; левый нижний угол
	.byte $41
	.word $22FB
	.byte $93



@текст:
	.byte $0A
	.word $206B
	.text "Episode 20"
	
	.byte $17
	.word $20A4
	.byte $7B
	.text "                     "
	.byte $7B
	
	.byte $0F
	.word $2189
	.text "U-20 World Cup,"
	
	.byte $10
	.word $21C8
	.text "Asian Qualifiers"
	
	.byte $03
	.word $2248
	.text "4th"
	
	.byte $05
	.word $2287
	.text "Round"
	
	.byte $05
	.word $2232
	.text "Japan"
	
	.byte $04
	.word $2272
	.text "~VS~"
	
	.byte $4B
	.word $22AF
	.text "North Korea"






off_матч_21:
; очистить nametable
	.byte $0D
; верхняя горизонтальная линия
	.byte $05
	.word $2145
	.byte $16
	.byte $8E
; центральная горизонтальная линия
	.byte $05
	.word $21E5
	.byte $16
	.byte $BA
; нижняя горизонтальная линия
	.byte $05
	.word $22E5
	.byte $16
	.byte $8E
; левая вертикальная линия
	.byte $04
	.word $2164
	.byte $0C
	.byte $8F
; центральная вертикальная линия
	.byte $04
	.word $220D
	.byte $07
	.byte $BB
; правая вертикальная линия
	.byte $04
	.word $217B
	.byte $0C
	.byte $8F
	
	.byte $00
	.word @углы
	
	.byte $00
	.word @текст
; закончить
	.byte $0F



@углы:
; левый верхний угол
	.byte $01
	.word $2144
	.byte $90
; правый верхний угол
	.byte $01
	.word $215B
	.byte $91
; правый нижний угол
	.byte $01
	.word $22E4
	.byte $92
; левый нижний угол
	.byte $41
	.word $22FB
	.byte $93



@текст:
	.byte $0A
	.word $206B
	.text "Episode 21"
	
	.byte $17
	.word $20A4
	.byte $7B
	.text "                     "
	.byte $7B
	
	.byte $0F
	.word $2189
	.text "U-20 World Cup,"
	
	.byte $10
	.word $21C8
	.text "Asian Qualifiers"
	
	.byte $03
	.word $2247
	.text "5th"
	
	.byte $05
	.word $2286
	.text "Round"
	
	.byte $05
	.word $2231
	.text "Japan"
	
	.byte $04
	.word $2272
	.text "~VS~"
	
	.byte $4C
	.word $22AE
	.text "Saudi Arabia"






off_матч_22:
; очистить nametable
	.byte $0D
; верхняя горизонтальная линия
	.byte $05
	.word $2145
	.byte $16
	.byte $8E
; центральная горизонтальная линия
	.byte $05
	.word $21E5
	.byte $16
	.byte $BA
; нижняя горизонтальная линия
	.byte $05
	.word $22E5
	.byte $16
	.byte $8E
; левая вертикальная линия
	.byte $04
	.word $2164
	.byte $0C
	.byte $8F
; центральная вертикальная линия
	.byte $04
	.word $220E
	.byte $07
	.byte $BB
; правая вертикальная линия
	.byte $04
	.word $217B
	.byte $0C
	.byte $8F
	
	.byte $00
	.word @углы
	
	.byte $00
	.word @текст
; закончить
	.byte $0F



@углы:
; левый верхний угол
	.byte $01
	.word $2144
	.byte $90
; правый верхний угол
	.byte $01
	.word $215B
	.byte $91
; правый нижний угол
	.byte $01
	.word $22E4
	.byte $92
; левый нижний угол
	.byte $41
	.word $22FB
	.byte $93



@текст:
	.byte $0A
	.word $206B
	.text "Episode 22"
	
	.byte $17
	.word $20A4
	.byte $7B
	.text "                     "
	.byte $7B
	
	.byte $0F
	.word $2189
	.text "U-20 World Cup,"
	
	.byte $10
	.word $21C8
	.text "Asian Qualifiers"
	
	.byte $03
	.word $2248
	.text "6th"
	
	.byte $05
	.word $2287
	.text "Round"
	
	.byte $05
	.word $2232
	.text "Japan"
	
	.byte $04
	.word $2272
	.text "~VS~"
	
	.byte $4B
	.word $22AF
	.text "South Korea"






off_матч_23:
; очистить nametable
	.byte $0D
; верхняя горизонтальная линия
	.byte $05
	.word $2145
	.byte $16
	.byte $8E
; центральная горизонтальная линия
	.byte $05
	.word $21A5
	.byte $16
	.byte $BA
; нижняя горизонтальная линия
	.byte $05
	.word $22E5
	.byte $16
	.byte $8E
; левая вертикальная линия
	.byte $04
	.word $2164
	.byte $0C
	.byte $8F
; центральная вертикальная линия
	.byte $04
	.word $21CE
	.byte $09
	.byte $BB
; правая вертикальная линия
	.byte $04
	.word $217B
	.byte $0C
	.byte $8F
	
	.byte $00
	.word @углы
	
	.byte $00
	.word @текст
; закончить
	.byte $0F



@углы:
; левый верхний угол
	.byte $01
	.word $2144
	.byte $90
; правый верхний угол
	.byte $01
	.word $215B
	.byte $91
; правый нижний угол
	.byte $01
	.word $22E4
	.byte $92
; левый нижний угол
	.byte $41
	.word $22FB
	.byte $93



@текст:
	.byte $0A
	.word $206B
	.text "Episode 23"
	
	.byte $13
	.word $20A6
	.byte $7B
	.text "From East to West"
	.byte $7B
	
	.byte $0A
	.word $218B
	.text "Friendlies"
	
	.byte $03
	.word $2228
	.text "1st"
	
	.byte $05
	.word $2267
	.text "match"
	
	.byte $05
	.word $21F2
	.text "Japan"
	
	.byte $04
	.word $2232
	.text "~VS~"
	
	.byte $05
	.word $2272
	.text "Vasco"
	
	.byte $47
	.word $22B1
	.text "da Gama"






off_матч_24:
; очистить nametable
	.byte $0D
; верхняя горизонтальная линия
	.byte $05
	.word $2145
	.byte $16
	.byte $8E
; центральная горизонтальная линия
	.byte $05
	.word $21A5
	.byte $16
	.byte $BA
; нижняя горизонтальная линия
	.byte $05
	.word $22A5
	.byte $16
	.byte $8E
; левая вертикальная линия
	.byte $04
	.word $2164
	.byte $0A
	.byte $8F
; центральная вертикальная линия
	.byte $04
	.word $21CE
	.byte $07
	.byte $BB
; правая вертикальная линия
	.byte $04
	.word $217B
	.byte $0A
	.byte $8F
	
	.byte $00
	.word @углы
	
	.byte $00
	.word @текст
; закончить
	.byte $0F



@углы:
; левый верхний угол
	.byte $01
	.word $2144
	.byte $90
; правый верхний угол
	.byte $01
	.word $215B
	.byte $91
; правый нижний угол
	.byte $01
	.word $22A4
	.byte $92
; левый нижний угол
	.byte $41
	.word $22BB
	.byte $93



@текст:
	.byte $0A
	.word $206B
	.text "Episode 24"
	
	.byte $14
	.word $20A6
	.byte $7B
	.text "Polishing the Play"
	.byte $7B
	
	.byte $0A
	.word $218B
	.text "Friendlies"
	
	.byte $03
	.word $2208
	.text "2nd"
	
	.byte $05
	.word $2247
	.text "match"
	
	.byte $05
	.word $21F2
	.text "Japan"
	
	.byte $04
	.word $2232
	.text "~VS~"
	
	.byte $46
	.word $2271
	.text "Poland"






off_матч_25:
; очистить nametable
	.byte $0D
; верхняя горизонтальная линия
	.byte $05
	.word $2145
	.byte $16
	.byte $8E
; центральная горизонтальная линия
	.byte $05
	.word $21A5
	.byte $16
	.byte $BA
; нижняя горизонтальная линия
	.byte $05
	.word $22A5
	.byte $16
	.byte $8E
; левая вертикальная линия
	.byte $04
	.word $2164
	.byte $0A
	.byte $8F
; центральная вертикальная линия
	.byte $04
	.word $21CE
	.byte $07
	.byte $BB
; правая вертикальная линия
	.byte $04
	.word $217B
	.byte $0A
	.byte $8F
	
	.byte $00
	.word @углы
	
	.byte $00
	.word @текст
; закончить
	.byte $0F



@углы:
; левый верхний угол
	.byte $01
	.word $2144
	.byte $90
; правый верхний угол
	.byte $01
	.word $215B
	.byte $91
; правый нижний угол
	.byte $01
	.word $22A4
	.byte $92
; левый нижний угол
	.byte $41
	.word $22BB
	.byte $93



@текст:
	.byte $0A
	.word $206B
	.text "Episode 25"
	
	.byte $18
	.word $20A4
	.byte $7B
	.text "Become a Super Striker"
	.byte $7B
	
	.byte $0A
	.word $218B
	.text "Friendlies"
	
	.byte $03
	.word $2208
	.text "3rd"
	
	.byte $05
	.word $2247
	.text "match"
	
	.byte $05
	.word $21F2
	.text "Japan"
	
	.byte $04
	.word $2232
	.text "~VS~"
	
	.byte $47
	.word $2271
	.text "England"






off_матч_26:
; очистить nametable
	.byte $0D
; верхняя горизонтальная линия
	.byte $05
	.word $2145
	.byte $16
	.byte $8E
; центральная горизонтальная линия
	.byte $05
	.word $21A5
	.byte $16
	.byte $BA
; нижняя горизонтальная линия
	.byte $05
	.word $22A5
	.byte $16
	.byte $8E
; левая вертикальная линия
	.byte $04
	.word $2164
	.byte $0A
	.byte $8F
; центральная вертикальная линия
	.byte $04
	.word $21CD
	.byte $07
	.byte $BB
; правая вертикальная линия
	.byte $04
	.word $217B
	.byte $0A
	.byte $8F
	
	.byte $00
	.word @углы
	
	.byte $00
	.word @текст
; закончить
	.byte $0F



@углы:
; левый верхний угол
	.byte $01
	.word $2144
	.byte $90
; правый верхний угол
	.byte $01
	.word $215B
	.byte $91
; правый нижний угол
	.byte $01
	.word $22A4
	.byte $92
; левый нижний угол
	.byte $41
	.word $22BB
	.byte $93



@текст:
	.byte $0A
	.word $206B
	.text "Episode 26"
	
	.byte $1A
	.word $20A3
	.byte $7B
	.text "Through the Iron Curtain"
	.byte $7B
	
	.byte $0A
	.word $218B
	.text "Friendlies"
	
	.byte $03
	.word $2207
	.text "4th"
	
	.byte $05
	.word $2246
	.text "match"
	
	.byte $05
	.word $21F1
	.text "Japan"
	
	.byte $04
	.word $2232
	.text "~VS~"
	
	.byte $4C
	.word $226E
	.text "Soviet Union"






off_матч_27:
; очистить nametable
	.byte $0D
; верхняя горизонтальная линия
	.byte $05
	.word $2145
	.byte $16
	.byte $8E
; центральная горизонтальная линия
	.byte $05
	.word $21A5
	.byte $16
	.byte $BA
; нижняя горизонтальная линия
	.byte $05
	.word $22A5
	.byte $16
	.byte $8E
; левая вертикальная линия
	.byte $04
	.word $2164
	.byte $0A
	.byte $8F
; центральная вертикальная линия
	.byte $04
	.word $21CE
	.byte $07
	.byte $BB
; правая вертикальная линия
	.byte $04
	.word $217B
	.byte $0A
	.byte $8F
	
	.byte $00
	.word @углы
	
	.byte $00
	.word @текст
; закончить
	.byte $0F



@углы:
; левый верхний угол
	.byte $01
	.word $2144
	.byte $90
; правый верхний угол
	.byte $01
	.word $215B
	.byte $91
; правый нижний угол
	.byte $01
	.word $22A4
	.byte $92
; левый нижний угол
	.byte $41
	.word $22BB
	.byte $93



@текст:
	.byte $0A
	.word $206B
	.text "Episode 27"
	
	.byte $16
	.word $20A5
	.byte $7B
	.text "An Elegant Commander"
	.byte $7B
	
	.byte $0A
	.word $218B
	.text "Friendlies"
	
	.byte $03
	.word $2208
	.text "5th"
	
	.byte $05
	.word $2247
	.text "match"
	
	.byte $05
	.word $21F2
	.text "Japan"
	
	.byte $04
	.word $2232
	.text "~VS~"
	
	.byte $46
	.word $2271
	.text "France"






off_матч_28:
; очистить nametable
	.byte $0D
; верхняя горизонтальная линия
	.byte $05
	.word $2145
	.byte $16
	.byte $8E
; центральная горизонтальная линия
	.byte $05
	.word $21E5
	.byte $16
	.byte $BA
; нижняя горизонтальная линия
	.byte $05
	.word $22E5
	.byte $16
	.byte $8E
; левая вертикальная линия
	.byte $04
	.word $2164
	.byte $0C
	.byte $8F
; центральная вертикальная линия
	.byte $04
	.word $220E
	.byte $07
	.byte $BB
; правая вертикальная линия
	.byte $04
	.word $217B
	.byte $0C
	.byte $8F
	
	.byte $00
	.word @углы
	
	.byte $00
	.word @текст
; закончить
	.byte $0F



@углы:
; левый верхний угол
	.byte $01
	.word $2144
	.byte $90
; правый верхний угол
	.byte $01
	.word $215B
	.byte $91
; правый нижний угол
	.byte $01
	.word $22E4
	.byte $92
; левый нижний угол
	.byte $41
	.word $22FB
	.byte $93



@текст:
	.byte $0A
	.word $206B
	.text "Episode 27"
	
	.byte $1A
	.word $20A3
	.byte $7B
	.text "Rise of the Mexican Hero"
	.byte $7B
	
	.byte $0F
	.word $2189
	.text "U-20 World Cup,"
	
	.byte $0B
	.word $21CA
	.text "Group Stage"
	
	.byte $03
	.word $2248
	.text "1th"
	
	.byte $05
	.word $2287
	.text "Round"
	
	.byte $05
	.word $2232
	.text "Japan"
	
	.byte $04
	.word $2272
	.text "~VS~"
	
	.byte $46
	.word $22B1
	.text "Mexico"






off_матч_29:
; очистить nametable
	.byte $0D
; верхняя горизонтальная линия
	.byte $05
	.word $2145
	.byte $16
	.byte $8E
; центральная горизонтальная линия
	.byte $05
	.word $21E5
	.byte $16
	.byte $BA
; нижняя горизонтальная линия
	.byte $05
	.word $22E5
	.byte $16
	.byte $8E
; левая вертикальная линия
	.byte $04
	.word $2164
	.byte $0C
	.byte $8F
; центральная вертикальная линия
	.byte $04
	.word $220E
	.byte $07
	.byte $BB
; правая вертикальная линия
	.byte $04
	.word $217B
	.byte $0C
	.byte $8F
	
	.byte $00
	.word @углы
	
	.byte $00
	.word @текст
; закончить
	.byte $0F



@углы:
; левый верхний угол
	.byte $01
	.word $2144
	.byte $90
; правый верхний угол
	.byte $01
	.word $215B
	.byte $91
; правый нижний угол
	.byte $01
	.word $22E4
	.byte $92
; левый нижний угол
	.byte $41
	.word $22FB
	.byte $93



@текст:
	.byte $0A
	.word $206B
	.text "Episode 29"
	
	.byte $18
	.word $20A4
	.byte $7B
	.text "Italy's God of Defense"
	.byte $7B
	
	.byte $0F
	.word $2189
	.text "U-20 World Cup,"
	
	.byte $0B
	.word $21CA
	.text "Group Stage"
	
	.byte $03
	.word $2248
	.text "2nd"
	
	.byte $05
	.word $2287
	.text "Round"
	
	.byte $05
	.word $2232
	.text "Japan"
	
	.byte $04
	.word $2272
	.text "~VS~"
	
	.byte $45
	.word $22B2
	.text "Italy"






off_матч_30:
; очистить nametable
	.byte $0D
; верхняя горизонтальная линия
	.byte $05
	.word $2145
	.byte $16
	.byte $8E
; центральная горизонтальная линия
	.byte $05
	.word $21E5
	.byte $16
	.byte $BA
; нижняя горизонтальная линия
	.byte $05
	.word $22E5
	.byte $16
	.byte $8E
; левая вертикальная линия
	.byte $04
	.word $2164
	.byte $0C
	.byte $8F
; центральная вертикальная линия
	.byte $04
	.word $220E
	.byte $07
	.byte $BB
; правая вертикальная линия
	.byte $04
	.word $217B
	.byte $0C
	.byte $8F
	
	.byte $00
	.word @углы
	
	.byte $00
	.word @текст
; закончить
	.byte $0F



@углы:
; левый верхний угол
	.byte $01
	.word $2144
	.byte $90
; правый верхний угол
	.byte $01
	.word $215B
	.byte $91
; правый нижний угол
	.byte $01
	.word $22E4
	.byte $92
; левый нижний угол
	.byte $41
	.word $22FB
	.byte $93



@текст:
	.byte $0A
	.word $206B
	.text "Episode 30"
	
	.byte $1E
	.word $20A1
	.byte $7B
	.text "Legacy of the 1,000-Goal Ace"
	.byte $7B
	
	.byte $0F
	.word $2189
	.text "U-20 World Cup,"
	
	.byte $0B
	.word $21CA
	.text "Group Stage"
	
	.byte $03
	.word $2248
	.text "3rd"
	
	.byte $05
	.word $2287
	.text "Round"
	
	.byte $05
	.word $2232
	.text "Japan"
	
	.byte $04
	.word $2272
	.text "~VS~"
	
	.byte $4B
	.word $22AF
	.text "Netherlands"






off_матч_31:
; очистить nametable
	.byte $0D
; верхняя горизонтальная линия
	.byte $05
	.word $2145
	.byte $16
	.byte $8E
; центральная горизонтальная линия
	.byte $05
	.word $21E5
	.byte $16
	.byte $BA
; нижняя горизонтальная линия
	.byte $05
	.word $22E5
	.byte $16
	.byte $8E
; левая вертикальная линия
	.byte $04
	.word $2164
	.byte $0C
	.byte $8F
; центральная вертикальная линия
	.byte $04
	.word $220E
	.byte $07
	.byte $BB
; правая вертикальная линия
	.byte $04
	.word $217B
	.byte $0C
	.byte $8F
	
	.byte $00
	.word @углы
	
	.byte $00
	.word @текст
; закончить
	.byte $0F



@углы:
; левый верхний угол
	.byte $01
	.word $2144
	.byte $90
; правый верхний угол
	.byte $01
	.word $215B
	.byte $91
; правый нижний угол
	.byte $01
	.word $22E4
	.byte $92
; левый нижний угол
	.byte $41
	.word $22FB
	.byte $93



@текст:
	.byte $0A
	.word $206B
	.text "Episode 31"
	
	.byte $14
	.word $20A6
	.byte $7B
	.text "Pride of Argentina"
	.byte $7B
	
	.byte $0F
	.word $2189
	.text "U-20 World Cup,"
	
	.byte $0E
	.word $21C9
	.text "Knockout Stage"
	
	.byte $07
	.word $2246
	.text "Quater-"
	
	.byte $05
	.word $2287
	.text "Final"
	
	.byte $05
	.word $2232
	.text "Japan"
	
	.byte $04
	.word $2272
	.text "~VS~"
	
	.byte $49
	.word $22B0
	.text "Argentina"






off_матч_32:
; очистить nametable
	.byte $0D
; верхняя горизонтальная линия
	.byte $05
	.word $2145
	.byte $16
	.byte $8E
; центральная горизонтальная линия
	.byte $05
	.word $21E5
	.byte $16
	.byte $BA
; нижняя горизонтальная линия
	.byte $05
	.word $22E5
	.byte $16
	.byte $8E
; левая вертикальная линия
	.byte $04
	.word $2164
	.byte $0C
	.byte $8F
; центральная вертикальная линия
	.byte $04
	.word $220D
	.byte $07
	.byte $BB
; правая вертикальная линия
	.byte $04
	.word $217B
	.byte $0C
	.byte $8F
	
	.byte $00
	.word @углы
	
	.byte $00
	.word @текст
; закончить
	.byte $0F



@углы:
; левый верхний угол
	.byte $01
	.word $2144
	.byte $90
; правый верхний угол
	.byte $01
	.word $215B
	.byte $91
; правый нижний угол
	.byte $01
	.word $22E4
	.byte $92
; левый нижний угол
	.byte $41
	.word $22FB
	.byte $93



@текст:
	.byte $0A
	.word $206B
	.text "Episode 32"
	
	.byte $19
	.word $20A4
	.byte $7B
	.text "Germany's Young Emperor"
	.byte $7B
	
	.byte $0F
	.word $2189
	.text "U-20 World Cup,"
	
	.byte $0E
	.word $21C9
	.text "Knockout Stage"
	
	.byte $05
	.word $2246
	.text "Semi-"
	
	.byte $05
	.word $2286
	.text "Final"
	
	.byte $05
	.word $2231
	.text "Japan"
	
	.byte $04
	.word $2272
	.text "~VS~"
	
	.byte $4C
	.word $22AE
	.text "West Germany"






off_матч_33:
; очистить nametable
	.byte $0D
; верхняя горизонтальная линия
	.byte $05
	.word $2145
	.byte $16
	.byte $8E
; центральная горизонтальная линия
	.byte $05
	.word $21E5
	.byte $16
	.byte $BA
; нижняя горизонтальная линия
	.byte $05
	.word $22E5
	.byte $16
	.byte $8E
; левая вертикальная линия
	.byte $04
	.word $2164
	.byte $0C
	.byte $8F
; центральная вертикальная линия
	.byte $04
	.word $220E
	.byte $07
	.byte $BB
; правая вертикальная линия
	.byte $04
	.word $217B
	.byte $0C
	.byte $8F
	
	.byte $00
	.word @углы
	
	.byte $00
	.word @текст
; закончить
	.byte $0F



@углы:
; левый верхний угол
	.byte $01
	.word $2144
	.byte $90
; правый верхний угол
	.byte $01
	.word $215B
	.byte $91
; правый нижний угол
	.byte $01
	.word $22E4
	.byte $92
; левый нижний угол
	.byte $41
	.word $22FB
	.byte $93



@текст:
	.byte $0A
	.word $206B
	.text "Episode 33"
	
	.byte $1D
	.word $20A2
	.byte $7B
	.text "Clash of the Super Strikers"
	.byte $7B
	
	.byte $0F
	.word $2189
	.text "U-20 World Cup,"
	
	.byte $0E
	.word $21C9
	.text "Knockout Stage"
	
	.byte $05
	.word $2267
	.text "Final"
	
	.byte $05
	.word $2232
	.text "Japan"
	
	.byte $04
	.word $2272
	.text "~VS~"
	
	.byte $46
	.word $22B1
	.text "Brazil"
