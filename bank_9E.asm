.segment "BANK_9E"
.include "copy_bank_ram.inc"
.include "copy_bank_val.inc"
.org $C000  ; for listing file
; 0x03C010-0x03E00F



; таблицы VS экрана



.export tbl_0x040003_vs_экран



tbl_0x040003_vs_экран:
    .word _off015_матч_00 ; 01
    .word _off015_матч_01 ; 02
    .word _off015_матч_02 ; 03
    .word _off015_матч_03 ; 04
    .word _off015_матч_04 ; 05
    .word _off015_матч_05 ; 06
    .word _off015_матч_06 ; 07
    .word _off015_матч_07 ; 08
    .word _off015_матч_08 ; 09
    .word _off015_матч_09 ; 10
    .word _off015_матч_0A ; 11
    .word _off015_матч_0B ; 12
    .word _off015_матч_0C ; 13
    .word _off015_матч_0D ; 14
    .word _off015_матч_0E ; 15
    .word _off015_матч_0F ; 16
    .word _off015_матч_10 ; 17
    .word _off015_матч_11 ; 18
    .word _off015_матч_12 ; 19
    .word _off015_матч_13 ; 20
    .word _off015_матч_14 ; 21
    .word _off015_матч_15 ; 22
    .word _off015_матч_16 ; 23
    .word _off015_матч_17 ; 24
    .word _off015_матч_18 ; 25
    .word _off015_матч_19 ; 26
    .word _off015_матч_1A ; 27
    .word _off015_матч_1B ; 28
    .word _off015_матч_1C ; 29
    .word _off015_матч_1D ; 30
    .word _off015_матч_1E ; 31
    .word _off015_матч_1F ; 32
    .word _off015_матч_20 ; 33






_off015_матч_00:
; очистить nametable
    .byte $0D   ; 
; верхняя горизонтальная линия
    .byte $05   ; 
    .word $2145 ; ppu address
    .byte $16   ; 
    .byte $8E   ; 
; центральная горизонтальная линия
    .byte $05   ; 
    .word $21A5 ; ppu address
    .byte $16   ; 
    .byte $BA   ; 
; нижняя горизонтальная линия
    .byte $05   ; 
    .word $22A5 ; ppu address
    .byte $16   ; 
    .byte $8E   ; 
; левая вертикальная линия
    .byte $04   ; 
    .word $2164 ; ppu address
    .byte $0A   ; 
    .byte $8F   ; 
; центральная вертикальная линия
    .byte $04   ; 
    .word $21CE ; ppu address
    .byte $07   ; 
    .byte $BB   ; 
; правая вертикальная линия
    .byte $04   ; 
    .word $217B ; ppu address
    .byte $0A   ; 
    .byte $8F   ; 
    
    .byte $00   ; 
    .word @углы
    
    .byte $00   ; 
    .word @текст
; закончить
    .byte $0F   ; end token



@углы:
; левый верхний угол
    .byte $01   ; 
    .word $2144 ; ppu address
    .byte $90   ; 
; правый верхний угол
    .byte $01   ; 
    .word $215B ; ppu address
    .byte $91   ; 
; правый нижний угол
    .byte $01   ; 
    .word $22A4 ; ppu address
    .byte $92   ; 
; левый нижний угол
    .byte $01 + $40   ; 
    .word $22BB ; ppu address
    .byte $93   ; 



@текст:
    .byte $09   ; 
    .word $206B ; ppu address
    .text "Episode 1"
    
    .byte $1D   ; 
    .word $20A1 ; ppu address
    .text "@#10, Sao Paulo's Lucky Star@"
    
    .byte $0F   ; 
    .word $2188 ; ppu address
    .text "Rio Cup, Brazil"
    
    .byte $04   ; 
    .word $2207 ; ppu address
    .text "1/32"
    
    .byte $05   ; 
    .word $2247 ; ppu address
    .text "Final"
    
    .byte $09   ; 
    .word $21F0 ; ppu address
    .text "Sao Paulo"
    
    .byte $04   ; 
    .word $2232 ; ppu address
    .text "~VS~"
    
    .byte $0A + $40   ; 
    .word $2270 ; ppu address
    .text "Fluminense"






_off015_матч_01:
; очистить nametable
    .byte $0D   ; 
; верхняя горизонтальная линия
    .byte $05   ; 
    .word $2145 ; ppu address
    .byte $16   ; 
    .byte $8E   ; 
; центральная горизонтальная линия
    .byte $05   ; 
    .word $21A5 ; ppu address
    .byte $16   ; 
    .byte $BA   ; 
; нижняя горизонтальная линия
    .byte $05   ; 
    .word $22A5 ; ppu address
    .byte $16   ; 
    .byte $8E   ; 
; левая вертикальная линия
    .byte $04   ; 
    .word $2164 ; ppu address
    .byte $0A   ; 
    .byte $8F   ; 
; центральная вертикальная линия
    .byte $04   ; 
    .word $21CE ; ppu address
    .byte $07   ; 
    .byte $BB   ; 
; правая вертикальная линия
    .byte $04   ; 
    .word $217B ; ppu address
    .byte $0A   ; 
    .byte $8F   ; 
    
    .byte $00   ; 
    .word @углы
    
    .byte $00   ; 
    .word @текст
; закончить
    .byte $0F   ; end token



@углы:
; левый верхний угол
    .byte $01   ; 
    .word $2144 ; ppu address
    .byte $90   ; 
; правый верхний угол
    .byte $01   ; 
    .word $215B ; ppu address
    .byte $91   ; 
; правый нижний угол
    .byte $01   ; 
    .word $22A4 ; ppu address
    .byte $92   ; 
; левый нижний угол
    .byte $01 + $40   ; 
    .word $22BB ; ppu address
    .byte $93   ; 



@текст:
    .byte $09   ; 
    .word $206B ; ppu address
    .text "Episode 2"
    
    .byte $16   ; 
    .word $20A5 ; ppu address
    .text "@Kickoff for Tomorrow@"
    
    .byte $0F   ; 
    .word $2188 ; ppu address
    .text "Rio Cup, Brazil"
    
    .byte $04   ; 
    .word $2207 ; ppu address
    .text "1/16"
    
    .byte $05   ; 
    .word $2247 ; ppu address
    .text "Final"
    
    .byte $09   ; 
    .word $21F0 ; ppu address
    .text "Sao Paulo"
    
    .byte $04   ; 
    .word $2232 ; ppu address
    .text "~VS~"
    
    .byte $0B + $40   ; 
    .word $226F ; ppu address
    .text "Corinthians"






_off015_матч_02:
; очистить nametable
    .byte $0D   ; 
; верхняя горизонтальная линия
    .byte $05   ; 
    .word $2145 ; ppu address
    .byte $16   ; 
    .byte $8E   ; 
; центральная горизонтальная линия
    .byte $05   ; 
    .word $21A5 ; ppu address
    .byte $16   ; 
    .byte $BA   ; 
; нижняя горизонтальная линия
    .byte $05   ; 
    .word $22A5 ; ppu address
    .byte $16   ; 
    .byte $8E   ; 
; левая вертикальная линия
    .byte $04   ; 
    .word $2164 ; ppu address
    .byte $0A   ; 
    .byte $8F   ; 
; центральная вертикальная линия
    .byte $04   ; 
    .word $21CE ; ppu address
    .byte $07   ; 
    .byte $BB   ; 
; правая вертикальная линия
    .byte $04   ; 
    .word $217B ; ppu address
    .byte $0A   ; 
    .byte $8F   ; 
    
    .byte $00   ; 
    .word @углы
    
    .byte $00   ; 
    .word @текст
; закончить
    .byte $0F   ; end token



@углы:
; левый верхний угол
    .byte $01   ; 
    .word $2144 ; ppu address
    .byte $90   ; 
; правый верхний угол
    .byte $01   ; 
    .word $215B ; ppu address
    .byte $91   ; 
; правый нижний угол
    .byte $01   ; 
    .word $22A4 ; ppu address
    .byte $92   ; 
; левый нижний угол
    .byte $01 + $40   ; 
    .word $22BB ; ppu address
    .byte $93   ; 



@текст:
    .byte $09   ; 
    .word $206B ; ppu address
    .text "Episode 3"
    
    .byte $14   ; 
    .word $20A6 ; ppu address
    .text "@Settling the Score@"
    
    .byte $0F   ; 
    .word $2188 ; ppu address
    .text "Rio Cup, Brazil"
    
    .byte $03   ; 
    .word $2208 ; ppu address
    .text "1/8"
    
    .byte $05   ; 
    .word $2247 ; ppu address
    .text "Final"
    
    .byte $09   ; 
    .word $21F0 ; ppu address
    .text "Sao Paulo"
    
    .byte $04   ; 
    .word $2232 ; ppu address
    .text "~VS~"
    
    .byte $06 + $40   ; 
    .word $2271 ; ppu address
    .text "Gremio"






_off015_матч_03:
; очистить nametable
    .byte $0D   ; 
; верхняя горизонтальная линия
    .byte $05   ; 
    .word $2145 ; ppu address
    .byte $16   ; 
    .byte $8E   ; 
; центральная горизонтальная линия
    .byte $05   ; 
    .word $21A5 ; ppu address
    .byte $16   ; 
    .byte $BA   ; 
; нижняя горизонтальная линия
    .byte $05   ; 
    .word $22A5 ; ppu address
    .byte $16   ; 
    .byte $8E   ; 
; левая вертикальная линия
    .byte $04   ; 
    .word $2164 ; ppu address
    .byte $0A   ; 
    .byte $8F   ; 
; центральная вертикальная линия
    .byte $04   ; 
    .word $21CE ; ppu address
    .byte $07   ; 
    .byte $BB   ; 
; правая вертикальная линия
    .byte $04   ; 
    .word $217B ; ppu address
    .byte $0A   ; 
    .byte $8F   ; 
    
    .byte $00   ; 
    .word @углы
    
    .byte $00   ; 
    .word @текст
; закончить
    .byte $0F   ; end token



@углы:
; левый верхний угол
    .byte $01   ; 
    .word $2144 ; ppu address
    .byte $90   ; 
; правый верхний угол
    .byte $01   ; 
    .word $215B ; ppu address
    .byte $91   ; 
; правый нижний угол
    .byte $01   ; 
    .word $22A4 ; ppu address
    .byte $92   ; 
; левый нижний угол
    .byte $01 + $40   ; 
    .word $22BB ; ppu address
    .byte $93   ; 



@текст:
    .byte $09   ; 
    .word $206B ; ppu address
    .text "Episode 4"
    
    .byte $10   ; 
    .word $20A7 ; ppu address
    .text "@The Deadly Duo@"
    
    .byte $0F   ; 
    .word $2188 ; ppu address
    .text "Rio Cup, Brazil"
    
    .byte $07   ; 
    .word $2206 ; ppu address
    .text "Quarter"
    
    .byte $05   ; 
    .word $2247 ; ppu address
    .text "Final"
    
    .byte $09   ; 
    .word $21F0 ; ppu address
    .text "Sao Paulo"
    
    .byte $04   ; 
    .word $2232 ; ppu address
    .text "~VS~"
    
    .byte $09 + $40   ; 
    .word $2270 ; ppu address
    .text "Palmeiras"






_off015_матч_04:
; очистить nametable
    .byte $0D   ; 
; верхняя горизонтальная линия
    .byte $05   ; 
    .word $2145 ; ppu address
    .byte $16   ; 
    .byte $8E   ; 
; центральная горизонтальная линия
    .byte $05   ; 
    .word $21A5 ; ppu address
    .byte $16   ; 
    .byte $BA   ; 
; нижняя горизонтальная линия
    .byte $05   ; 
    .word $22A5 ; ppu address
    .byte $16   ; 
    .byte $8E   ; 
; левая вертикальная линия
    .byte $04   ; 
    .word $2164 ; ppu address
    .byte $0A   ; 
    .byte $8F   ; 
; центральная вертикальная линия
    .byte $04   ; 
    .word $21CE ; ppu address
    .byte $07   ; 
    .byte $BB   ; 
; правая вертикальная линия
    .byte $04   ; 
    .word $217B ; ppu address
    .byte $0A   ; 
    .byte $8F   ; 
    
    .byte $00   ; 
    .word @углы
    
    .byte $00   ; 
    .word @текст
; закончить
    .byte $0F   ; end token



@углы:
; левый верхний угол
    .byte $01   ; 
    .word $2144 ; ppu address
    .byte $90   ; 
; правый верхний угол
    .byte $01   ; 
    .word $215B ; ppu address
    .byte $91   ; 
; правый нижний угол
    .byte $01   ; 
    .word $22A4 ; ppu address
    .byte $92   ; 
; левый нижний угол
    .byte $01 + $40   ; 
    .word $22BB ; ppu address
    .byte $93   ; 



@текст:
    .byte $09   ; 
    .word $206B ; ppu address
    .text "Episode 5"
    
    .byte $1A   ; 
    .word $20A3 ; ppu address
    .text "@The Eel and the Dynamite@"
    
    .byte $0F   ; 
    .word $2188 ; ppu address
    .text "Rio Cup, Brazil"
    
    .byte $04   ; 
    .word $2207 ; ppu address
    .text "Semi"
    
    .byte $05   ; 
    .word $2247 ; ppu address
    .text "Final"
    
    .byte $09   ; 
    .word $21F0 ; ppu address
    .text "Sao Paulo"
    
    .byte $04   ; 
    .word $2232 ; ppu address
    .text "~VS~"
    
    .byte $06 + $40   ; 
    .word $2271 ; ppu address
    .text "Santos"






_off015_матч_05:
; очистить nametable
    .byte $0D   ; 
; верхняя горизонтальная линия
    .byte $05   ; 
    .word $2145 ; ppu address
    .byte $16   ; 
    .byte $8E   ; 
; центральная горизонтальная линия
    .byte $05   ; 
    .word $21A5 ; ppu address
    .byte $16   ; 
    .byte $BA   ; 
; нижняя горизонтальная линия
    .byte $05   ; 
    .word $22A5 ; ppu address
    .byte $16   ; 
    .byte $8E   ; 
; левая вертикальная линия
    .byte $04   ; 
    .word $2164 ; ppu address
    .byte $0A   ; 
    .byte $8F   ; 
; центральная вертикальная линия
    .byte $04   ; 
    .word $21CE ; ppu address
    .byte $07   ; 
    .byte $BB   ; 
; правая вертикальная линия
    .byte $04   ; 
    .word $217B ; ppu address
    .byte $0A   ; 
    .byte $8F   ; 
    
    .byte $00   ; 
    .word @углы
    
    .byte $00   ; 
    .word @текст
; закончить
    .byte $0F   ; end token



@углы:
; левый верхний угол
    .byte $01   ; 
    .word $2144 ; ppu address
    .byte $90   ; 
; правый верхний угол
    .byte $01   ; 
    .word $215B ; ppu address
    .byte $91   ; 
; правый нижний угол
    .byte $01   ; 
    .word $22A4 ; ppu address
    .byte $92   ; 
; левый нижний угол
    .byte $01 + $40   ; 
    .word $22BB ; ppu address
    .byte $93   ; 



@текст:
    .byte $09   ; 
    .word $206B ; ppu address
    .text "Episode 6"
    
    .byte $19   ; 
    .word $20A3 ; ppu address
    .text "@Son of the Football God@"
    
    .byte $0F   ; 
    .word $2188 ; ppu address
    .text "Rio Cup, Brazil"
    
    .byte $05   ; 
    .word $2227 ; ppu address
    .text "Final"
    
    .byte $09   ; 
    .word $21F0 ; ppu address
    .text "Sao Paulo"
    
    .byte $04   ; 
    .word $2232 ; ppu address
    .text "~VS~"
    
    .byte $08 + $40   ; 
    .word $2270 ; ppu address
    .text "Flamengo"






_off015_матч_06:
; очистить nametable
    .byte $0D   ; 
; верхняя горизонтальная линия
    .byte $05   ; 
    .word $2102 ; ppu address
    .byte $1C   ; 
    .byte $8E   ; 
; центральная горизонтальная линия
    .byte $05   ; 
    .word $21A2 ; ppu address
    .byte $1C   ; 
    .byte $BA   ; 
; нижняя горизонтальная линия
    .byte $05   ; 
    .word $22E2 ; ppu address
    .byte $1C   ; 
    .byte $8E   ; 
; левая вертикальная линия
    .byte $04   ; 
    .word $2121 ; ppu address
    .byte $0E   ; 
    .byte $8F   ; 
; центральная вертикальная линия
    .byte $04   ; 
    .word $21CE ; ppu address
    .byte $09   ; 
    .byte $BB   ; 
; правая вертикальная линия
    .byte $04   ; 
    .word $213E ; ppu address
    .byte $0E   ; 
    .byte $8F   ; 
    
    .byte $00   ; 
    .word @углы
    
    .byte $00   ; 
    .word @текст
; закончить
    .byte $0F   ; end token



@углы:
; левый верхний угол
    .byte $01   ; 
    .word $2101 ; ppu address
    .byte $90   ; 
; правый верхний угол
    .byte $01   ; 
    .word $211E ; ppu address
    .byte $91   ; 
; правый нижний угол
    .byte $01   ; 
    .word $22E1 ; ppu address
    .byte $92   ; 
; левый нижний угол
    .byte $01 + $40   ; 
    .word $22FE ; ppu address
    .byte $93   ; 



@текст:
    .byte $09   ; 
    .word $206B ; ppu address
    .text "Episode 7"
    
    .byte $18   ; 
    .word $20A4 ; ppu address
    .text "@The Source of Strength@"
    
    .byte $14   ; 
    .word $2146 ; ppu address
    .text "National High School"
    
    .byte $1A   ; 
    .word $2183 ; ppu address
    .text "Football Tournament, Japan"
    
    .byte $05   ; 
    .word $2205 ; ppu address
    .text "Group"
    
    .byte $06   ; 
    .word $2245 ; ppu address
    .text "Stage,"
    
    .byte $09   ; 
    .word $2283 ; ppu address
    .text "1st Round"
    
    .byte $08   ; 
    .word $21F2 ; ppu address
    .text "Nankatsu"
    
    .byte $0B   ; 
    .word $2231 ; ppu address
    .text "Public High"
    
    .byte $04   ; 
    .word $2274 ; ppu address
    .text "~VS~"
    
    .byte $0E + $40   ; 
    .word $22AF ; ppu address
    .text "Kunimi Academy"






_off015_матч_07:
; очистить nametable
    .byte $0D   ; 
; верхняя горизонтальная линия
    .byte $05   ; 
    .word $2102 ; ppu address
    .byte $1C   ; 
    .byte $8E   ; 
; центральная горизонтальная линия
    .byte $05   ; 
    .word $21A2 ; ppu address
    .byte $1C   ; 
    .byte $BA   ; 
; нижняя горизонтальная линия
    .byte $05   ; 
    .word $2362 ; ppu address
    .byte $1C   ; 
    .byte $8E   ; 
; левая вертикальная линия
    .byte $04   ; 
    .word $2121 ; ppu address
    .byte $12   ; 
    .byte $8F   ; 
; центральная вертикальная линия
    .byte $04   ; 
    .word $21CE ; ppu address
    .byte $0D   ; 
    .byte $BB   ; 
; правая вертикальная линия
    .byte $04   ; 
    .word $213E ; ppu address
    .byte $12   ; 
    .byte $8F   ; 
    
    .byte $00   ; 
    .word @углы
    
    .byte $00   ; 
    .word @текст
; закончить
    .byte $0F   ; end token



@углы:
; левый верхний угол
    .byte $01   ; 
    .word $2101 ; ppu address
    .byte $90   ; 
; правый верхний угол
    .byte $01   ; 
    .word $211E ; ppu address
    .byte $91   ; 
; правый нижний угол
    .byte $01   ; 
    .word $2361 ; ppu address
    .byte $92   ; 
; левый нижний угол
    .byte $01 + $40   ; 
    .word $237E ; ppu address
    .byte $93   ; 



@текст:
    .byte $09   ; 
    .word $206B ; ppu address
    .text "Episode 8"
    
    .byte $12   ; 
    .word $20A7 ; ppu address
    .text "@The Flying Twins@"
    
    .byte $14   ; 
    .word $2146 ; ppu address
    .text "National High School"
    
    .byte $1A   ; 
    .word $2183 ; ppu address
    .text "Football Tournament, Japan"
    
    .byte $05   ; 
    .word $2245 ; ppu address
    .text "Group"
    
    .byte $06   ; 
    .word $2285 ; ppu address
    .text "Stage,"
    
    .byte $09   ; 
    .word $22C3 ; ppu address
    .text "2nd Round"
    
    .byte $08   ; 
    .word $21F2 ; ppu address
    .text "Nankatsu"
    
    .byte $0B   ; 
    .word $2231 ; ppu address
    .text "Public High"
    
    .byte $04   ; 
    .word $2274 ; ppu address
    .text "~VS~"
    
    .byte $05   ; 
    .word $22B3 ; ppu address
    .text "Akita"
    
    .byte $0A   ; 
    .word $22F1 ; ppu address
    .text "Commercial"
    
    .byte $06 + $40   ; 
    .word $2333 ; ppu address
    .text "School"






_off015_матч_08:
; очистить nametable
    .byte $0D   ; 
; верхняя горизонтальная линия
    .byte $05   ; 
    .word $2102 ; ppu address
    .byte $1C   ; 
    .byte $8E   ; 
; центральная горизонтальная линия
    .byte $05   ; 
    .word $21A2 ; ppu address
    .byte $1C   ; 
    .byte $BA   ; 
; нижняя горизонтальная линия
    .byte $05   ; 
    .word $22E2 ; ppu address
    .byte $1C   ; 
    .byte $8E   ; 
; левая вертикальная линия
    .byte $04   ; 
    .word $2121 ; ppu address
    .byte $0E   ; 
    .byte $8F   ; 
; центральная вертикальная линия
    .byte $04   ; 
    .word $21CE ; ppu address
    .byte $09   ; 
    .byte $BB   ; 
; правая вертикальная линия
    .byte $04   ; 
    .word $213E ; ppu address
    .byte $0E   ; 
    .byte $8F   ; 
    
    .byte $00   ; 
    .word @углы
    
    .byte $00   ; 
    .word @текст
; закончить
    .byte $0F   ; end token



@углы:
; левый верхний угол
    .byte $01   ; 
    .word $2101 ; ppu address
    .byte $90   ; 
; правый верхний угол
    .byte $01   ; 
    .word $211E ; ppu address
    .byte $91   ; 
; правый нижний угол
    .byte $01   ; 
    .word $22E1 ; ppu address
    .byte $92   ; 
; левый нижний угол
    .byte $01 + $40   ; 
    .word $22FE ; ppu address
    .byte $93   ; 



@текст:
    .byte $09   ; 
    .word $206B ; ppu address
    .text "Episode 9"
    
    .byte $0C   ; 
    .word $20A9 ; ppu address
    .text "@Ace Killer@"
    
    .byte $14   ; 
    .word $2146 ; ppu address
    .text "National High School"
    
    .byte $1A   ; 
    .word $2183 ; ppu address
    .text "Football Tournament, Japan"
    
    .byte $05   ; 
    .word $2205 ; ppu address
    .text "Group"
    
    .byte $06   ; 
    .word $2245 ; ppu address
    .text "Stage,"
    
    .byte $09   ; 
    .word $2283 ; ppu address
    .text "3rd Round"
    
    .byte $08   ; 
    .word $21F2 ; ppu address
    .text "Nankatsu"
    
    .byte $0B   ; 
    .word $2231 ; ppu address
    .text "Public High"
    
    .byte $04   ; 
    .word $2274 ; ppu address
    .text "~VS~"
    
    .byte $0E + $40   ; 
    .word $22AF ; ppu address
    .text "Tatsunami High"






_off015_матч_09:
; очистить nametable
    .byte $0D   ; 
; верхняя горизонтальная линия
    .byte $05   ; 
    .word $2102 ; ppu address
    .byte $1C   ; 
    .byte $8E   ; 
; центральная горизонтальная линия
    .byte $05   ; 
    .word $21A2 ; ppu address
    .byte $1C   ; 
    .byte $BA   ; 
; нижняя горизонтальная линия
    .byte $05   ; 
    .word $2322 ; ppu address
    .byte $1C   ; 
    .byte $8E   ; 
; левая вертикальная линия
    .byte $04   ; 
    .word $2121 ; ppu address
    .byte $10   ; 
    .byte $8F   ; 
; центральная вертикальная линия
    .byte $04   ; 
    .word $21CE ; ppu address
    .byte $0B   ; 
    .byte $BB   ; 
; правая вертикальная линия
    .byte $04   ; 
    .word $213E ; ppu address
    .byte $10   ; 
    .byte $8F   ; 
    
    .byte $00   ; 
    .word @углы
    
    .byte $00   ; 
    .word @текст
; закончить
    .byte $0F   ; end token



@углы:
; левый верхний угол
    .byte $01   ; 
    .word $2101 ; ppu address
    .byte $90   ; 
; правый верхний угол
    .byte $01   ; 
    .word $211E ; ppu address
    .byte $91   ; 
; правый нижний угол
    .byte $01   ; 
    .word $2321 ; ppu address
    .byte $92   ; 
; левый нижний угол
    .byte $01 + $40   ; 
    .word $233E ; ppu address
    .byte $93   ; 



@текст:
    .byte $0A   ; 
    .word $206B ; ppu address
    .text "Episode 10"
    
    .byte $13   ; 
    .word $20A7 ; ppu address
    .text "@Heart of the Game@"
    
    .byte $14   ; 
    .word $2146 ; ppu address
    .text "National High School"
    
    .byte $1A   ; 
    .word $2183 ; ppu address
    .text "Football Tournament, Japan"
    
    .byte $05   ; 
    .word $2225 ; ppu address
    .text "Group"
    
    .byte $06   ; 
    .word $2265 ; ppu address
    .text "Stage,"
    
    .byte $09   ; 
    .word $22A3 ; ppu address
    .text "4th Round"
    
    .byte $08   ; 
    .word $21F2 ; ppu address
    .text "Nankatsu"
    
    .byte $0B   ; 
    .word $2231 ; ppu address
    .text "Public High"
    
    .byte $04   ; 
    .word $2274 ; ppu address
    .text "~VS~"
    
    .byte $07   ; 
    .word $22B3 ; ppu address
    .text "Musashi"
    
    .byte $0E + $40   ; 
    .word $22EF ; ppu address
    .text "Medical School"






_off015_матч_0A:
; очистить nametable
    .byte $0D   ; 
; верхняя горизонтальная линия
    .byte $05   ; 
    .word $2102 ; ppu address
    .byte $1C   ; 
    .byte $8E   ; 
; центральная горизонтальная линия
    .byte $05   ; 
    .word $21A2 ; ppu address
    .byte $1C   ; 
    .byte $BA   ; 
; нижняя горизонтальная линия
    .byte $05   ; 
    .word $2322 ; ppu address
    .byte $1C   ; 
    .byte $8E   ; 
; левая вертикальная линия
    .byte $04   ; 
    .word $2121 ; ppu address
    .byte $10   ; 
    .byte $8F   ; 
; центральная вертикальная линия
    .byte $04   ; 
    .word $21CE ; ppu address
    .byte $0B   ; 
    .byte $BB   ; 
; правая вертикальная линия
    .byte $04   ; 
    .word $213E ; ppu address
    .byte $10   ; 
    .byte $8F   ; 
    
    .byte $00   ; 
    .word @углы
    
    .byte $00   ; 
    .word @текст
; закончить
    .byte $0F   ; end token



@углы:
; левый верхний угол
    .byte $01   ; 
    .word $2101 ; ppu address
    .byte $90   ; 
; правый верхний угол
    .byte $01   ; 
    .word $211E ; ppu address
    .byte $91   ; 
; правый нижний угол
    .byte $01   ; 
    .word $2321 ; ppu address
    .byte $92   ; 
; левый нижний угол
    .byte $01 + $40   ; 
    .word $233E ; ppu address
    .byte $93   ; 



@текст:
    .byte $0A   ; 
    .word $206B ; ppu address
    .text "Episode 11"
    
    .byte $1E   ; 
    .word $20A1 ; ppu address
    .text "@Hot #10 from a Snowy Country@"
    
    .byte $14   ; 
    .word $2146 ; ppu address
    .text "National High School"
    
    .byte $1A   ; 
    .word $2183 ; ppu address
    .text "Football Tournament, Japan"
    
    .byte $09   ; 
    .word $2263 ; ppu address
    .text "Semifinal"
    
    .byte $08   ; 
    .word $21F2 ; ppu address
    .text "Nankatsu"
    
    .byte $0B   ; 
    .word $2231 ; ppu address
    .text "Public High"
    
    .byte $04   ; 
    .word $2274 ; ppu address
    .text "~VS~"
    
    .byte $06   ; 
    .word $22B3 ; ppu address
    .text "Furano"
    
    .byte $0B + $40   ; 
    .word $22F1 ; ppu address
    .text "Public High"






_off015_матч_0B:
; очистить nametable
    .byte $0D   ; 
; верхняя горизонтальная линия
    .byte $05   ; 
    .word $2102 ; ppu address
    .byte $1C   ; 
    .byte $8E   ; 
; центральная горизонтальная линия
    .byte $05   ; 
    .word $21A2 ; ppu address
    .byte $1C   ; 
    .byte $BA   ; 
; нижняя горизонтальная линия
    .byte $05   ; 
    .word $22E2 ; ppu address
    .byte $1C   ; 
    .byte $8E   ; 
; левая вертикальная линия
    .byte $04   ; 
    .word $2121 ; ppu address
    .byte $0E   ; 
    .byte $8F   ; 
; центральная вертикальная линия
    .byte $04   ; 
    .word $21CE ; ppu address
    .byte $09   ; 
    .byte $BB   ; 
; правая вертикальная линия
    .byte $04   ; 
    .word $213E ; ppu address
    .byte $0E   ; 
    .byte $8F   ; 
    
    .byte $00   ; 
    .word @углы
    
    .byte $00   ; 
    .word @текст
; закончить
    .byte $0F   ; end token



@углы:
; левый верхний угол
    .byte $01   ; 
    .word $2101 ; ppu address
    .byte $90   ; 
; правый верхний угол
    .byte $01   ; 
    .word $211E ; ppu address
    .byte $91   ; 
; правый нижний угол
    .byte $01   ; 
    .word $22E1 ; ppu address
    .byte $92   ; 
; левый нижний угол
    .byte $01 + $40   ; 
    .word $22FE ; ppu address
    .byte $93   ; 



@текст:
    .byte $0A   ; 
    .word $206B ; ppu address
    .text "Episode 12"
    
    .byte $1A   ; 
    .word $20A3 ; ppu address
    .text "@Ultimate Offensive Style@"
    
    .byte $14   ; 
    .word $2146 ; ppu address
    .text "National High School"
    
    .byte $1A   ; 
    .word $2183 ; ppu address
    .text "Football Tournament, Japan"
    
    .byte $05   ; 
    .word $2245 ; ppu address
    .text "Final"
    
    .byte $08   ; 
    .word $21F2 ; ppu address
    .text "Nankatsu"
    
    .byte $0B   ; 
    .word $2231 ; ppu address
    .text "Public High"
    
    .byte $04   ; 
    .word $2274 ; ppu address
    .text "~VS~"
    
    .byte $0C + $40   ; 
    .word $22B0 ; ppu address
    .text "Toho Academy"






_off015_матч_0C:
; очистить nametable
    .byte $0D   ; 
; верхняя горизонтальная линия
    .byte $05   ; 
    .word $2145 ; ppu address
    .byte $16   ; 
    .byte $8E   ; 
; центральная горизонтальная линия
    .byte $05   ; 
    .word $21A5 ; ppu address
    .byte $16   ; 
    .byte $BA   ; 
; нижняя горизонтальная линия
    .byte $05   ; 
    .word $22A5 ; ppu address
    .byte $16   ; 
    .byte $8E   ; 
; левая вертикальная линия
    .byte $04   ; 
    .word $2164 ; ppu address
    .byte $0A   ; 
    .byte $8F   ; 
; центральная вертикальная линия
    .byte $04   ; 
    .word $21CE ; ppu address
    .byte $07   ; 
    .byte $BB   ; 
; правая вертикальная линия
    .byte $04   ; 
    .word $217B ; ppu address
    .byte $0A   ; 
    .byte $8F   ; 
    
    .byte $00   ; 
    .word @углы
    
    .byte $00   ; 
    .word @текст
; закончить
    .byte $0F   ; end token



@углы:
; левый верхний угол
    .byte $01   ; 
    .word $2144 ; ppu address
    .byte $90   ; 
; правый верхний угол
    .byte $01   ; 
    .word $215B ; ppu address
    .byte $91   ; 
; правый нижний угол
    .byte $01   ; 
    .word $22A4 ; ppu address
    .byte $92   ; 
; левый нижний угол
    .byte $01 + $40   ; 
    .word $22BB ; ppu address
    .byte $93   ; 



@текст:
    .byte $0A   ; 
    .word $206B ; ppu address
    .text "Episode 13"
    
    .byte $18   ; 
    .word $20A4 ; ppu address
    .text "@Entering the Colosseum@"
    
    .byte $09   ; 
    .word $218B ; ppu address
    .text "Japan Cup"
    
    .byte $03   ; 
    .word $2208 ; ppu address
    .text "1/8"
    
    .byte $05   ; 
    .word $2247 ; ppu address
    .text "Final"
    
    .byte $09   ; 
    .word $21F0 ; ppu address
    .text "Sao Paulo"
    
    .byte $04   ; 
    .word $2232 ; ppu address
    .text "~VS~"
    
    .byte $07 + $40   ; 
    .word $2271 ; ppu address
    .text "AS Roma"






_off015_матч_0D:
; очистить nametable
    .byte $0D   ; 
; верхняя горизонтальная линия
    .byte $05   ; 
    .word $2145 ; ppu address
    .byte $16   ; 
    .byte $8E   ; 
; центральная горизонтальная линия
    .byte $05   ; 
    .word $21A5 ; ppu address
    .byte $16   ; 
    .byte $BA   ; 
; нижняя горизонтальная линия
    .byte $05   ; 
    .word $22A5 ; ppu address
    .byte $16   ; 
    .byte $8E   ; 
; левая вертикальная линия
    .byte $04   ; 
    .word $2164 ; ppu address
    .byte $0A   ; 
    .byte $8F   ; 
; центральная вертикальная линия
    .byte $04   ; 
    .word $21CE ; ppu address
    .byte $07   ; 
    .byte $BB   ; 
; правая вертикальная линия
    .byte $04   ; 
    .word $217B ; ppu address
    .byte $0A   ; 
    .byte $8F   ; 
    
    .byte $00   ; 
    .word @углы
    
    .byte $00   ; 
    .word @текст
; закончить
    .byte $0F   ; end token



@углы:
; левый верхний угол
    .byte $01   ; 
    .word $2144 ; ppu address
    .byte $90   ; 
; правый верхний угол
    .byte $01   ; 
    .word $215B ; ppu address
    .byte $91   ; 
; правый нижний угол
    .byte $01   ; 
    .word $22A4 ; ppu address
    .byte $92   ; 
; левый нижний угол
    .byte $01 + $40   ; 
    .word $22BB ; ppu address
    .byte $93   ; 



@текст:
    .byte $0A   ; 
    .word $206B ; ppu address
    .text "Episode 14"
    
    .byte $20   ; 
    .word $20A0 ; ppu address
    .text "@Black Panther of South America@"
    
    .byte $09   ; 
    .word $218B ; ppu address
    .text "Japan Cup"
    
    .byte $07   ; 
    .word $2206 ; ppu address
    .text "Quarter"
    
    .byte $05   ; 
    .word $2247 ; ppu address
    .text "Final"
    
    .byte $09   ; 
    .word $21F0 ; ppu address
    .text "Sao Paulo"
    
    .byte $04   ; 
    .word $2232 ; ppu address
    .text "~VS~"
    
    .byte $07 + $40   ; 
    .word $2271 ; ppu address
    .text "Uruguay"






_off015_матч_0E:
; очистить nametable
    .byte $0D   ; 
; верхняя горизонтальная линия
    .byte $05   ; 
    .word $2145 ; ppu address
    .byte $16   ; 
    .byte $8E   ; 
; центральная горизонтальная линия
    .byte $05   ; 
    .word $21A5 ; ppu address
    .byte $16   ; 
    .byte $BA   ; 
; нижняя горизонтальная линия
    .byte $05   ; 
    .word $22A5 ; ppu address
    .byte $16   ; 
    .byte $8E   ; 
; левая вертикальная линия
    .byte $04   ; 
    .word $2164 ; ppu address
    .byte $0A   ; 
    .byte $8F   ; 
; центральная вертикальная линия
    .byte $04   ; 
    .word $21CD ; ppu address
    .byte $07   ; 
    .byte $BB   ; 
; правая вертикальная линия
    .byte $04   ; 
    .word $217B ; ppu address
    .byte $0A   ; 
    .byte $8F   ; 
    
    .byte $00   ; 
    .word @углы
    
    .byte $00   ; 
    .word @текст
; закончить
    .byte $0F   ; end token



@углы:
; левый верхний угол
    .byte $01   ; 
    .word $2144 ; ppu address
    .byte $90   ; 
; правый верхний угол
    .byte $01   ; 
    .word $215B ; ppu address
    .byte $91   ; 
; правый нижний угол
    .byte $01   ; 
    .word $22A4 ; ppu address
    .byte $92   ; 
; левый нижний угол
    .byte $01 + $40   ; 
    .word $22BB ; ppu address
    .byte $93   ; 



@текст:
    .byte $0A   ; 
    .word $206B ; ppu address
    .text "Episode 15"
    
    .byte $1F   ; 
    .word $20A0 ; ppu address
    .text "@The Guardian Deity of the Net@"
    
    .byte $09   ; 
    .word $218B ; ppu address
    .text "Japan Cup"
    
    .byte $04   ; 
    .word $2206 ; ppu address
    .text "Semi"
    
    .byte $05   ; 
    .word $2246 ; ppu address
    .text "Final"
    
    .byte $09   ; 
    .word $21F0 ; ppu address
    .text "Sao Paulo"
    
    .byte $04   ; 
    .word $2232 ; ppu address
    .text "~VS~"
    
    .byte $0C + $40   ; 
    .word $226E ; ppu address
    .text "Hamburger SV"






_off015_матч_0F:
; очистить nametable
    .byte $0D   ; 
; верхняя горизонтальная линия
    .byte $05   ; 
    .word $2145 ; ppu address
    .byte $16   ; 
    .byte $8E   ; 
; центральная горизонтальная линия
    .byte $05   ; 
    .word $21A5 ; ppu address
    .byte $16   ; 
    .byte $BA   ; 
; нижняя горизонтальная линия
    .byte $05   ; 
    .word $22A5 ; ppu address
    .byte $16   ; 
    .byte $8E   ; 
; левая вертикальная линия
    .byte $04   ; 
    .word $2164 ; ppu address
    .byte $0A   ; 
    .byte $8F   ; 
; центральная вертикальная линия
    .byte $04   ; 
    .word $21CE ; ppu address
    .byte $07   ; 
    .byte $BB   ; 
; правая вертикальная линия
    .byte $04   ; 
    .word $217B ; ppu address
    .byte $0A   ; 
    .byte $8F   ; 
    
    .byte $00   ; 
    .word @углы
    
    .byte $00   ; 
    .word @текст
; закончить
    .byte $0F   ; end token



@углы:
; левый верхний угол
    .byte $01   ; 
    .word $2144 ; ppu address
    .byte $90   ; 
; правый верхний угол
    .byte $01   ; 
    .word $215B ; ppu address
    .byte $91   ; 
; правый нижний угол
    .byte $01   ; 
    .word $22A4 ; ppu address
    .byte $92   ; 
; левый нижний угол
    .byte $01 + $40   ; 
    .word $22BB ; ppu address
    .byte $93   ; 



@текст:
    .byte $0A   ; 
    .word $206B ; ppu address
    .text "Episode 16"
    
    .byte $15   ; 
    .word $20A5 ; ppu address
    .text "@Sayonara, Sao Paulo@"
    
    .byte $09   ; 
    .word $218B ; ppu address
    .text "Japan Cup"
    
    .byte $05   ; 
    .word $2227 ; ppu address
    .text "Final"
    
    .byte $09   ; 
    .word $21F0 ; ppu address
    .text "Sao Paulo"
    
    .byte $04   ; 
    .word $2232 ; ppu address
    .text "~VS~"
    
    .byte $05 + $40   ; 
    .word $2272 ; ppu address
    .text "Japan"






_off015_матч_10:
; очистить nametable
    .byte $0D   ; 
; верхняя горизонтальная линия
    .byte $05   ; 
    .word $2145 ; ppu address
    .byte $16   ; 
    .byte $8E   ; 
; центральная горизонтальная линия
    .byte $05   ; 
    .word $21E5 ; ppu address
    .byte $16   ; 
    .byte $BA   ; 
; нижняя горизонтальная линия
    .byte $05   ; 
    .word $22E5 ; ppu address
    .byte $16   ; 
    .byte $8E   ; 
; левая вертикальная линия
    .byte $04   ; 
    .word $2164 ; ppu address
    .byte $0C   ; 
    .byte $8F   ; 
; центральная вертикальная линия
    .byte $04   ; 
    .word $220E ; ppu address
    .byte $07   ; 
    .byte $BB   ; 
; правая вертикальная линия
    .byte $04   ; 
    .word $217B ; ppu address
    .byte $0C   ; 
    .byte $8F   ; 
    
    .byte $00   ; 
    .word @углы
    
    .byte $00   ; 
    .word @текст
; закончить
    .byte $0F   ; end token



@углы:
; левый верхний угол
    .byte $01   ; 
    .word $2144 ; ppu address
    .byte $90   ; 
; правый верхний угол
    .byte $01   ; 
    .word $215B ; ppu address
    .byte $91   ; 
; правый нижний угол
    .byte $01   ; 
    .word $22E4 ; ppu address
    .byte $92   ; 
; левый нижний угол
    .byte $01 + $40   ; 
    .word $22FB ; ppu address
    .byte $93   ; 



@текст:
    .byte $0A   ; 
    .word $206B ; ppu address
    .text "Episode 17"
    
    .byte $17   ; 
    .word $20A4 ; ppu address
    .text "@Road to the World Cup@"
    
    .byte $0F   ; 
    .word $2189 ; ppu address
    .text "U-20 World Cup,"
    
    .byte $10   ; 
    .word $21C8 ; ppu address
    .text "Asian Qualifiers"
    
    .byte $03   ; 
    .word $2248 ; ppu address
    .text "1st"
    
    .byte $05   ; 
    .word $2287 ; ppu address
    .text "Round"
    
    .byte $05   ; 
    .word $2232 ; ppu address
    .text "Japan"
    
    .byte $04   ; 
    .word $2272 ; ppu address
    .text "~VS~"
    
    .byte $05 + $40   ; 
    .word $22B2 ; ppu address
    .text "Syria"






_off015_матч_11:
; очистить nametable
    .byte $0D   ; 
; верхняя горизонтальная линия
    .byte $05   ; 
    .word $2145 ; ppu address
    .byte $16   ; 
    .byte $8E   ; 
; центральная горизонтальная линия
    .byte $05   ; 
    .word $21E5 ; ppu address
    .byte $16   ; 
    .byte $BA   ; 
; нижняя горизонтальная линия
    .byte $05   ; 
    .word $22E5 ; ppu address
    .byte $16   ; 
    .byte $8E   ; 
; левая вертикальная линия
    .byte $04   ; 
    .word $2164 ; ppu address
    .byte $0C   ; 
    .byte $8F   ; 
; центральная вертикальная линия
    .byte $04   ; 
    .word $220E ; ppu address
    .byte $07   ; 
    .byte $BB   ; 
; правая вертикальная линия
    .byte $04   ; 
    .word $217B ; ppu address
    .byte $0C   ; 
    .byte $8F   ; 
    
    .byte $00   ; 
    .word @углы
    
    .byte $00   ; 
    .word @текст
; закончить
    .byte $0F   ; end token



@углы:
; левый верхний угол
    .byte $01   ; 
    .word $2144 ; ppu address
    .byte $90   ; 
; правый верхний угол
    .byte $01   ; 
    .word $215B ; ppu address
    .byte $91   ; 
; правый нижний угол
    .byte $01   ; 
    .word $22E4 ; ppu address
    .byte $92   ; 
; левый нижний угол
    .byte $01 + $40   ; 
    .word $22FB ; ppu address
    .byte $93   ; 



@текст:
    .byte $0A   ; 
    .word $206B ; ppu address
    .text "Episode 18"
    
    .byte $1A   ; 
    .word $20A3 ; ppu address
    .text "@The East's Rising Dragon@"
    
    .byte $0F   ; 
    .word $2189 ; ppu address
    .text "U-20 World Cup,"
    
    .byte $10   ; 
    .word $21C8 ; ppu address
    .text "Asian Qualifiers"
    
    .byte $03   ; 
    .word $2248 ; ppu address
    .text "2nd"
    
    .byte $05   ; 
    .word $2287 ; ppu address
    .text "Round"
    
    .byte $05   ; 
    .word $2232 ; ppu address
    .text "Japan"
    
    .byte $04   ; 
    .word $2272 ; ppu address
    .text "~VS~"
    
    .byte $05 + $40   ; 
    .word $22B2 ; ppu address
    .text "China"






_off015_матч_12:
; очистить nametable
    .byte $0D   ; 
; верхняя горизонтальная линия
    .byte $05   ; 
    .word $2145 ; ppu address
    .byte $16   ; 
    .byte $8E   ; 
; центральная горизонтальная линия
    .byte $05   ; 
    .word $21E5 ; ppu address
    .byte $16   ; 
    .byte $BA   ; 
; нижняя горизонтальная линия
    .byte $05   ; 
    .word $22E5 ; ppu address
    .byte $16   ; 
    .byte $8E   ; 
; левая вертикальная линия
    .byte $04   ; 
    .word $2164 ; ppu address
    .byte $0C   ; 
    .byte $8F   ; 
; центральная вертикальная линия
    .byte $04   ; 
    .word $220E ; ppu address
    .byte $07   ; 
    .byte $BB   ; 
; правая вертикальная линия
    .byte $04   ; 
    .word $217B ; ppu address
    .byte $0C   ; 
    .byte $8F   ; 
    
    .byte $00   ; 
    .word @углы
    
    .byte $00   ; 
    .word @текст
; закончить
    .byte $0F   ; end token



@углы:
; левый верхний угол
    .byte $01   ; 
    .word $2144 ; ppu address
    .byte $90   ; 
; правый верхний угол
    .byte $01   ; 
    .word $215B ; ppu address
    .byte $91   ; 
; правый нижний угол
    .byte $01   ; 
    .word $22E4 ; ppu address
    .byte $92   ; 
; левый нижний угол
    .byte $01 + $40   ; 
    .word $22FB ; ppu address
    .byte $93   ; 



@текст:
    .byte $0A   ; 
    .word $206B ; ppu address
    .text "Episode 19"
    
    .byte $17   ; 
    .word $20A4 ; ppu address
    .text "@                     @"
    
    .byte $0F   ; 
    .word $2189 ; ppu address
    .text "U-20 World Cup,"
    
    .byte $10   ; 
    .word $21C8 ; ppu address
    .text "Asian Qualifiers"
    
    .byte $03   ; 
    .word $2248 ; ppu address
    .text "3rd"
    
    .byte $05   ; 
    .word $2287 ; ppu address
    .text "Round"
    
    .byte $05   ; 
    .word $2232 ; ppu address
    .text "Japan"
    
    .byte $04   ; 
    .word $2272 ; ppu address
    .text "~VS~"
    
    .byte $04 + $40   ; 
    .word $22B2 ; ppu address
    .text "Iran"






_off015_матч_13:
; очистить nametable
    .byte $0D   ; 
; верхняя горизонтальная линия
    .byte $05   ; 
    .word $2145 ; ppu address
    .byte $16   ; 
    .byte $8E   ; 
; центральная горизонтальная линия
    .byte $05   ; 
    .word $21E5 ; ppu address
    .byte $16   ; 
    .byte $BA   ; 
; нижняя горизонтальная линия
    .byte $05   ; 
    .word $22E5 ; ppu address
    .byte $16   ; 
    .byte $8E   ; 
; левая вертикальная линия
    .byte $04   ; 
    .word $2164 ; ppu address
    .byte $0C   ; 
    .byte $8F   ; 
; центральная вертикальная линия
    .byte $04   ; 
    .word $220E ; ppu address
    .byte $07   ; 
    .byte $BB   ; 
; правая вертикальная линия
    .byte $04   ; 
    .word $217B ; ppu address
    .byte $0C   ; 
    .byte $8F   ; 
    
    .byte $00   ; 
    .word @углы
    
    .byte $00   ; 
    .word @текст
; закончить
    .byte $0F   ; end token



@углы:
; левый верхний угол
    .byte $01   ; 
    .word $2144 ; ppu address
    .byte $90   ; 
; правый верхний угол
    .byte $01   ; 
    .word $215B ; ppu address
    .byte $91   ; 
; правый нижний угол
    .byte $01   ; 
    .word $22E4 ; ppu address
    .byte $92   ; 
; левый нижний угол
    .byte $01 + $40   ; 
    .word $22FB ; ppu address
    .byte $93   ; 



@текст:
    .byte $0A   ; 
    .word $206B ; ppu address
    .text "Episode 20"
    
    .byte $17   ; 
    .word $20A4 ; ppu address
    .text "@                     @"
    
    .byte $0F   ; 
    .word $2189 ; ppu address
    .text "U-20 World Cup,"
    
    .byte $10   ; 
    .word $21C8 ; ppu address
    .text "Asian Qualifiers"
    
    .byte $03   ; 
    .word $2248 ; ppu address
    .text "4th"
    
    .byte $05   ; 
    .word $2287 ; ppu address
    .text "Round"
    
    .byte $05   ; 
    .word $2232 ; ppu address
    .text "Japan"
    
    .byte $04   ; 
    .word $2272 ; ppu address
    .text "~VS~"
    
    .byte $0B + $40   ; 
    .word $22AF ; ppu address
    .text "North Korea"






_off015_матч_14:
; очистить nametable
    .byte $0D   ; 
; верхняя горизонтальная линия
    .byte $05   ; 
    .word $2145 ; ppu address
    .byte $16   ; 
    .byte $8E   ; 
; центральная горизонтальная линия
    .byte $05   ; 
    .word $21E5 ; ppu address
    .byte $16   ; 
    .byte $BA   ; 
; нижняя горизонтальная линия
    .byte $05   ; 
    .word $22E5 ; ppu address
    .byte $16   ; 
    .byte $8E   ; 
; левая вертикальная линия
    .byte $04   ; 
    .word $2164 ; ppu address
    .byte $0C   ; 
    .byte $8F   ; 
; центральная вертикальная линия
    .byte $04   ; 
    .word $220D ; ppu address
    .byte $07   ; 
    .byte $BB   ; 
; правая вертикальная линия
    .byte $04   ; 
    .word $217B ; ppu address
    .byte $0C   ; 
    .byte $8F   ; 
    
    .byte $00   ; 
    .word @углы
    
    .byte $00   ; 
    .word @текст
; закончить
    .byte $0F   ; end token



@углы:
; левый верхний угол
    .byte $01   ; 
    .word $2144 ; ppu address
    .byte $90   ; 
; правый верхний угол
    .byte $01   ; 
    .word $215B ; ppu address
    .byte $91   ; 
; правый нижний угол
    .byte $01   ; 
    .word $22E4 ; ppu address
    .byte $92   ; 
; левый нижний угол
    .byte $01 + $40   ; 
    .word $22FB ; ppu address
    .byte $93   ; 



@текст:
    .byte $0A   ; 
    .word $206B ; ppu address
    .text "Episode 21"
    
    .byte $17   ; 
    .word $20A4 ; ppu address
    .text "@                     @"
    
    .byte $0F   ; 
    .word $2189 ; ppu address
    .text "U-20 World Cup,"
    
    .byte $10   ; 
    .word $21C8 ; ppu address
    .text "Asian Qualifiers"
    
    .byte $03   ; 
    .word $2247 ; ppu address
    .text "5th"
    
    .byte $05   ; 
    .word $2286 ; ppu address
    .text "Round"
    
    .byte $05   ; 
    .word $2231 ; ppu address
    .text "Japan"
    
    .byte $04   ; 
    .word $2272 ; ppu address
    .text "~VS~"
    
    .byte $0C + $40   ; 
    .word $22AE ; ppu address
    .text "Saudi Arabia"






_off015_матч_15:
; очистить nametable
    .byte $0D   ; 
; верхняя горизонтальная линия
    .byte $05   ; 
    .word $2145 ; ppu address
    .byte $16   ; 
    .byte $8E   ; 
; центральная горизонтальная линия
    .byte $05   ; 
    .word $21E5 ; ppu address
    .byte $16   ; 
    .byte $BA   ; 
; нижняя горизонтальная линия
    .byte $05   ; 
    .word $22E5 ; ppu address
    .byte $16   ; 
    .byte $8E   ; 
; левая вертикальная линия
    .byte $04   ; 
    .word $2164 ; ppu address
    .byte $0C   ; 
    .byte $8F   ; 
; центральная вертикальная линия
    .byte $04   ; 
    .word $220E ; ppu address
    .byte $07   ; 
    .byte $BB   ; 
; правая вертикальная линия
    .byte $04   ; 
    .word $217B ; ppu address
    .byte $0C   ; 
    .byte $8F   ; 
    
    .byte $00   ; 
    .word @углы
    
    .byte $00   ; 
    .word @текст
; закончить
    .byte $0F   ; end token



@углы:
; левый верхний угол
    .byte $01   ; 
    .word $2144 ; ppu address
    .byte $90   ; 
; правый верхний угол
    .byte $01   ; 
    .word $215B ; ppu address
    .byte $91   ; 
; правый нижний угол
    .byte $01   ; 
    .word $22E4 ; ppu address
    .byte $92   ; 
; левый нижний угол
    .byte $01 + $40   ; 
    .word $22FB ; ppu address
    .byte $93   ; 



@текст:
    .byte $0A   ; 
    .word $206B ; ppu address
    .text "Episode 22"
    
    .byte $17   ; 
    .word $20A4 ; ppu address
    .text "@                     @"
    
    .byte $0F   ; 
    .word $2189 ; ppu address
    .text "U-20 World Cup,"
    
    .byte $10   ; 
    .word $21C8 ; ppu address
    .text "Asian Qualifiers"
    
    .byte $03   ; 
    .word $2248 ; ppu address
    .text "6th"
    
    .byte $05   ; 
    .word $2287 ; ppu address
    .text "Round"
    
    .byte $05   ; 
    .word $2232 ; ppu address
    .text "Japan"
    
    .byte $04   ; 
    .word $2272 ; ppu address
    .text "~VS~"
    
    .byte $0B + $40   ; 
    .word $22AF ; ppu address
    .text "South Korea"






_off015_матч_16:
; очистить nametable
    .byte $0D   ; 
; верхняя горизонтальная линия
    .byte $05   ; 
    .word $2144 ; ppu address
    .byte $18   ; 
    .byte $8E   ; 
; центральная горизонтальная линия
    .byte $05   ; 
    .word $21A4 ; ppu address
    .byte $18   ; 
    .byte $BA   ; 
; нижняя горизонтальная линия
    .byte $05   ; 
    .word $22A4 ; ppu address
    .byte $18   ; 
    .byte $8E   ; 
; левая вертикальная линия
    .byte $04   ; 
    .word $2163 ; ppu address
    .byte $0A   ; 
    .byte $8F   ; 
; центральная вертикальная линия
    .byte $04   ; 
    .word $21D0 ; ppu address
    .byte $07   ; 
    .byte $BB   ; 
; правая вертикальная линия
    .byte $04   ; 
    .word $217C ; ppu address
    .byte $0A   ; 
    .byte $8F   ; 
    
    .byte $00   ; 
    .word @углы
    
    .byte $00   ; 
    .word @текст
; закончить
    .byte $0F   ; end token



@углы:
; левый верхний угол
    .byte $01   ; 
    .word $2143 ; ppu address
    .byte $90   ; 
; правый верхний угол
    .byte $01   ; 
    .word $215C ; ppu address
    .byte $91   ; 
; правый нижний угол
    .byte $01   ; 
    .word $22A3 ; ppu address
    .byte $92   ; 
; левый нижний угол
    .byte $01 + $40   ; 
    .word $22BC ; ppu address
    .byte $93   ; 



@текст:
    .byte $0A   ; 
    .word $206B ; ppu address
    .text "Episode 23"
    
    .byte $13   ; 
    .word $20A6 ; ppu address
    .text "@From East to West@"
    
    .byte $10   ; 
    .word $2188 ; ppu address
    .text "Friendlies, Asia"
    
    .byte $07   ; 
    .word $21E6 ; ppu address
    .text "Special"
    
    .byte $0A   ; 
    .word $2225 ; ppu address
    .text "Exhibition"
    
    .byte $05   ; 
    .word $2267 ; ppu address
    .text "Match"
    
    .byte $05   ; 
    .word $21F3 ; ppu address
    .text "Japan"
    
    .byte $04   ; 
    .word $2234 ; ppu address
    .text "~VS~"
    
    .byte $06 + $40   ; 
    .word $2273 ; ppu address
    .text "Turkey"






_off015_матч_17:
; очистить nametable
    .byte $0D   ; 
; верхняя горизонтальная линия
    .byte $05   ; 
    .word $2145 ; ppu address
    .byte $16   ; 
    .byte $8E   ; 
; центральная горизонтальная линия
    .byte $05   ; 
    .word $21A5 ; ppu address
    .byte $16   ; 
    .byte $BA   ; 
; нижняя горизонтальная линия
    .byte $05   ; 
    .word $22A5 ; ppu address
    .byte $16   ; 
    .byte $8E   ; 
; левая вертикальная линия
    .byte $04   ; 
    .word $2164 ; ppu address
    .byte $0A   ; 
    .byte $8F   ; 
; центральная вертикальная линия
    .byte $04   ; 
    .word $21CE ; ppu address
    .byte $07   ; 
    .byte $BB   ; 
; правая вертикальная линия
    .byte $04   ; 
    .word $217B ; ppu address
    .byte $0A   ; 
    .byte $8F   ; 
    
    .byte $00   ; 
    .word @углы
    
    .byte $00   ; 
    .word @текст
; закончить
    .byte $0F   ; end token



@углы:
; левый верхний угол
    .byte $01   ; 
    .word $2144 ; ppu address
    .byte $90   ; 
; правый верхний угол
    .byte $01   ; 
    .word $215B ; ppu address
    .byte $91   ; 
; правый нижний угол
    .byte $01   ; 
    .word $22A4 ; ppu address
    .byte $92   ; 
; левый нижний угол
    .byte $01 + $40   ; 
    .word $22BB ; ppu address
    .byte $93   ; 



@текст:
    .byte $0A   ; 
    .word $206B ; ppu address
    .text "Episode 24"
    
    .byte $0F   ; 
    .word $20A9 ; ppu address
    .text "@Pole Position@"
    
    .byte $12   ; 
    .word $2187 ; ppu address
    .text "Friendlies, Europe"
    
    .byte $03   ; 
    .word $2208 ; ppu address
    .text "1st"
    
    .byte $05   ; 
    .word $2247 ; ppu address
    .text "match"
    
    .byte $05   ; 
    .word $21F2 ; ppu address
    .text "Japan"
    
    .byte $04   ; 
    .word $2232 ; ppu address
    .text "~VS~"
    
    .byte $06 + $40   ; 
    .word $2271 ; ppu address
    .text "Poland"






_off015_матч_18:
; очистить nametable
    .byte $0D   ; 
; верхняя горизонтальная линия
    .byte $05   ; 
    .word $2145 ; ppu address
    .byte $16   ; 
    .byte $8E   ; 
; центральная горизонтальная линия
    .byte $05   ; 
    .word $21A5 ; ppu address
    .byte $16   ; 
    .byte $BA   ; 
; нижняя горизонтальная линия
    .byte $05   ; 
    .word $22A5 ; ppu address
    .byte $16   ; 
    .byte $8E   ; 
; левая вертикальная линия
    .byte $04   ; 
    .word $2164 ; ppu address
    .byte $0A   ; 
    .byte $8F   ; 
; центральная вертикальная линия
    .byte $04   ; 
    .word $21CE ; ppu address
    .byte $07   ; 
    .byte $BB   ; 
; правая вертикальная линия
    .byte $04   ; 
    .word $217B ; ppu address
    .byte $0A   ; 
    .byte $8F   ; 
    
    .byte $00   ; 
    .word @углы
    
    .byte $00   ; 
    .word @текст
; закончить
    .byte $0F   ; end token



@углы:
; левый верхний угол
    .byte $01   ; 
    .word $2144 ; ppu address
    .byte $90   ; 
; правый верхний угол
    .byte $01   ; 
    .word $215B ; ppu address
    .byte $91   ; 
; правый нижний угол
    .byte $01   ; 
    .word $22A4 ; ppu address
    .byte $92   ; 
; левый нижний угол
    .byte $01 + $40   ; 
    .word $22BB ; ppu address
    .byte $93   ; 



@текст:
    .byte $0A   ; 
    .word $206B ; ppu address
    .text "Episode 25"
    
    .byte $18   ; 
    .word $20A4 ; ppu address
    .text "@Become a Super Striker@"
    
    .byte $12   ; 
    .word $2187 ; ppu address
    .text "Friendlies, Europe"
    
    .byte $03   ; 
    .word $2208 ; ppu address
    .text "2nd"
    
    .byte $05   ; 
    .word $2247 ; ppu address
    .text "match"
    
    .byte $05   ; 
    .word $21F2 ; ppu address
    .text "Japan"
    
    .byte $04   ; 
    .word $2232 ; ppu address
    .text "~VS~"
    
    .byte $07 + $40   ; 
    .word $2271 ; ppu address
    .text "England"






_off015_матч_19:
; очистить nametable
    .byte $0D   ; 
; верхняя горизонтальная линия
    .byte $05   ; 
    .word $2145 ; ppu address
    .byte $16   ; 
    .byte $8E   ; 
; центральная горизонтальная линия
    .byte $05   ; 
    .word $21A5 ; ppu address
    .byte $16   ; 
    .byte $BA   ; 
; нижняя горизонтальная линия
    .byte $05   ; 
    .word $22A5 ; ppu address
    .byte $16   ; 
    .byte $8E   ; 
; левая вертикальная линия
    .byte $04   ; 
    .word $2164 ; ppu address
    .byte $0A   ; 
    .byte $8F   ; 
; центральная вертикальная линия
    .byte $04   ; 
    .word $21CD ; ppu address
    .byte $07   ; 
    .byte $BB   ; 
; правая вертикальная линия
    .byte $04   ; 
    .word $217B ; ppu address
    .byte $0A   ; 
    .byte $8F   ; 
    
    .byte $00   ; 
    .word @углы
    
    .byte $00   ; 
    .word @текст
; закончить
    .byte $0F   ; end token



@углы:
; левый верхний угол
    .byte $01   ; 
    .word $2144 ; ppu address
    .byte $90   ; 
; правый верхний угол
    .byte $01   ; 
    .word $215B ; ppu address
    .byte $91   ; 
; правый нижний угол
    .byte $01   ; 
    .word $22A4 ; ppu address
    .byte $92   ; 
; левый нижний угол
    .byte $01 + $40   ; 
    .word $22BB ; ppu address
    .byte $93   ; 



@текст:
    .byte $0A   ; 
    .word $206B ; ppu address
    .text "Episode 26"
    
    .byte $1A   ; 
    .word $20A3 ; ppu address
    .text "@Through the Iron Curtain@"
    
    .byte $12   ; 
    .word $2187 ; ppu address
    .text "Friendlies, Europe"
    
    .byte $03   ; 
    .word $2207 ; ppu address
    .text "3rd"
    
    .byte $05   ; 
    .word $2246 ; ppu address
    .text "match"
    
    .byte $05   ; 
    .word $21F1 ; ppu address
    .text "Japan"
    
    .byte $04   ; 
    .word $2232 ; ppu address
    .text "~VS~"
    
    .byte $0C + $40   ; 
    .word $226E ; ppu address
    .text "Soviet Union"






_off015_матч_1A:
; очистить nametable
    .byte $0D   ; 
; верхняя горизонтальная линия
    .byte $05   ; 
    .word $2145 ; ppu address
    .byte $16   ; 
    .byte $8E   ; 
; центральная горизонтальная линия
    .byte $05   ; 
    .word $21A5 ; ppu address
    .byte $16   ; 
    .byte $BA   ; 
; нижняя горизонтальная линия
    .byte $05   ; 
    .word $22A5 ; ppu address
    .byte $16   ; 
    .byte $8E   ; 
; левая вертикальная линия
    .byte $04   ; 
    .word $2164 ; ppu address
    .byte $0A   ; 
    .byte $8F   ; 
; центральная вертикальная линия
    .byte $04   ; 
    .word $21CE ; ppu address
    .byte $07   ; 
    .byte $BB   ; 
; правая вертикальная линия
    .byte $04   ; 
    .word $217B ; ppu address
    .byte $0A   ; 
    .byte $8F   ; 
    
    .byte $00   ; 
    .word @углы
    
    .byte $00   ; 
    .word @текст
; закончить
    .byte $0F   ; end token



@углы:
; левый верхний угол
    .byte $01   ; 
    .word $2144 ; ppu address
    .byte $90   ; 
; правый верхний угол
    .byte $01   ; 
    .word $215B ; ppu address
    .byte $91   ; 
; правый нижний угол
    .byte $01   ; 
    .word $22A4 ; ppu address
    .byte $92   ; 
; левый нижний угол
    .byte $01 + $40   ; 
    .word $22BB ; ppu address
    .byte $93   ; 



@текст:
    .byte $0A   ; 
    .word $206B ; ppu address
    .text "Episode 27"
    
    .byte $16   ; 
    .word $20A5 ; ppu address
    .text "@An Elegant Commander@"
    
    .byte $12   ; 
    .word $2187 ; ppu address
    .text "Friendlies, Europe"
    
    .byte $03   ; 
    .word $2208 ; ppu address
    .text "4th"
    
    .byte $05   ; 
    .word $2247 ; ppu address
    .text "match"
    
    .byte $05   ; 
    .word $21F2 ; ppu address
    .text "Japan"
    
    .byte $04   ; 
    .word $2232 ; ppu address
    .text "~VS~"
    
    .byte $06 + $40   ; 
    .word $2271 ; ppu address
    .text "France"






_off015_матч_1B:
; очистить nametable
    .byte $0D   ; 
; верхняя горизонтальная линия
    .byte $05   ; 
    .word $2145 ; ppu address
    .byte $16   ; 
    .byte $8E   ; 
; центральная горизонтальная линия
    .byte $05   ; 
    .word $21E5 ; ppu address
    .byte $16   ; 
    .byte $BA   ; 
; нижняя горизонтальная линия
    .byte $05   ; 
    .word $22E5 ; ppu address
    .byte $16   ; 
    .byte $8E   ; 
; левая вертикальная линия
    .byte $04   ; 
    .word $2164 ; ppu address
    .byte $0C   ; 
    .byte $8F   ; 
; центральная вертикальная линия
    .byte $04   ; 
    .word $220E ; ppu address
    .byte $07   ; 
    .byte $BB   ; 
; правая вертикальная линия
    .byte $04   ; 
    .word $217B ; ppu address
    .byte $0C   ; 
    .byte $8F   ; 
    
    .byte $00   ; 
    .word @углы
    
    .byte $00   ; 
    .word @текст
; закончить
    .byte $0F   ; end token



@углы:
; левый верхний угол
    .byte $01   ; 
    .word $2144 ; ppu address
    .byte $90   ; 
; правый верхний угол
    .byte $01   ; 
    .word $215B ; ppu address
    .byte $91   ; 
; правый нижний угол
    .byte $01   ; 
    .word $22E4 ; ppu address
    .byte $92   ; 
; левый нижний угол
    .byte $01 + $40   ; 
    .word $22FB ; ppu address
    .byte $93   ; 



@текст:
    .byte $0A   ; 
    .word $206B ; ppu address
    .text "Episode 27"
    
    .byte $1A   ; 
    .word $20A3 ; ppu address
    .text "@Rise of the Mexican Hero@"
    
    .byte $0F   ; 
    .word $2189 ; ppu address
    .text "U-20 World Cup,"
    
    .byte $0B   ; 
    .word $21CA ; ppu address
    .text "Group Stage"
    
    .byte $03   ; 
    .word $2248 ; ppu address
    .text "1th"
    
    .byte $05   ; 
    .word $2287 ; ppu address
    .text "Round"
    
    .byte $05   ; 
    .word $2232 ; ppu address
    .text "Japan"
    
    .byte $04   ; 
    .word $2272 ; ppu address
    .text "~VS~"
    
    .byte $06 + $40   ; 
    .word $22B1 ; ppu address
    .text "Mexico"






_off015_матч_1C:
; очистить nametable
    .byte $0D   ; 
; верхняя горизонтальная линия
    .byte $05   ; 
    .word $2145 ; ppu address
    .byte $16   ; 
    .byte $8E   ; 
; центральная горизонтальная линия
    .byte $05   ; 
    .word $21E5 ; ppu address
    .byte $16   ; 
    .byte $BA   ; 
; нижняя горизонтальная линия
    .byte $05   ; 
    .word $22E5 ; ppu address
    .byte $16   ; 
    .byte $8E   ; 
; левая вертикальная линия
    .byte $04   ; 
    .word $2164 ; ppu address
    .byte $0C   ; 
    .byte $8F   ; 
; центральная вертикальная линия
    .byte $04   ; 
    .word $220E ; ppu address
    .byte $07   ; 
    .byte $BB   ; 
; правая вертикальная линия
    .byte $04   ; 
    .word $217B ; ppu address
    .byte $0C   ; 
    .byte $8F   ; 
    
    .byte $00   ; 
    .word @углы
    
    .byte $00   ; 
    .word @текст
; закончить
    .byte $0F   ; end token



@углы:
; левый верхний угол
    .byte $01   ; 
    .word $2144 ; ppu address
    .byte $90   ; 
; правый верхний угол
    .byte $01   ; 
    .word $215B ; ppu address
    .byte $91   ; 
; правый нижний угол
    .byte $01   ; 
    .word $22E4 ; ppu address
    .byte $92   ; 
; левый нижний угол
    .byte $01 + $40   ; 
    .word $22FB ; ppu address
    .byte $93   ; 



@текст:
    .byte $0A   ; 
    .word $206B ; ppu address
    .text "Episode 29"
    
    .byte $18   ; 
    .word $20A4 ; ppu address
    .text "@Italy's God of Defense@"
    
    .byte $0F   ; 
    .word $2189 ; ppu address
    .text "U-20 World Cup,"
    
    .byte $0B   ; 
    .word $21CA ; ppu address
    .text "Group Stage"
    
    .byte $03   ; 
    .word $2248 ; ppu address
    .text "2nd"
    
    .byte $05   ; 
    .word $2287 ; ppu address
    .text "Round"
    
    .byte $05   ; 
    .word $2232 ; ppu address
    .text "Japan"
    
    .byte $04   ; 
    .word $2272 ; ppu address
    .text "~VS~"
    
    .byte $05 + $40   ; 
    .word $22B2 ; ppu address
    .text "Italy"






_off015_матч_1D:
; очистить nametable
    .byte $0D   ; 
; верхняя горизонтальная линия
    .byte $05   ; 
    .word $2145 ; ppu address
    .byte $16   ; 
    .byte $8E   ; 
; центральная горизонтальная линия
    .byte $05   ; 
    .word $21E5 ; ppu address
    .byte $16   ; 
    .byte $BA   ; 
; нижняя горизонтальная линия
    .byte $05   ; 
    .word $22E5 ; ppu address
    .byte $16   ; 
    .byte $8E   ; 
; левая вертикальная линия
    .byte $04   ; 
    .word $2164 ; ppu address
    .byte $0C   ; 
    .byte $8F   ; 
; центральная вертикальная линия
    .byte $04   ; 
    .word $220E ; ppu address
    .byte $07   ; 
    .byte $BB   ; 
; правая вертикальная линия
    .byte $04   ; 
    .word $217B ; ppu address
    .byte $0C   ; 
    .byte $8F   ; 
    
    .byte $00   ; 
    .word @углы
    
    .byte $00   ; 
    .word @текст
; закончить
    .byte $0F   ; end token



@углы:
; левый верхний угол
    .byte $01   ; 
    .word $2144 ; ppu address
    .byte $90   ; 
; правый верхний угол
    .byte $01   ; 
    .word $215B ; ppu address
    .byte $91   ; 
; правый нижний угол
    .byte $01   ; 
    .word $22E4 ; ppu address
    .byte $92   ; 
; левый нижний угол
    .byte $01 + $40   ; 
    .word $22FB ; ppu address
    .byte $93   ; 



@текст:
    .byte $0A   ; 
    .word $206B ; ppu address
    .text "Episode 30"
    
    .byte $1E   ; 
    .word $20A1 ; ppu address
    .text "@Legacy of the 1,000-Goal Ace@"
    
    .byte $0F   ; 
    .word $2189 ; ppu address
    .text "U-20 World Cup,"
    
    .byte $0B   ; 
    .word $21CA ; ppu address
    .text "Group Stage"
    
    .byte $03   ; 
    .word $2248 ; ppu address
    .text "3rd"
    
    .byte $05   ; 
    .word $2287 ; ppu address
    .text "Round"
    
    .byte $05   ; 
    .word $2232 ; ppu address
    .text "Japan"
    
    .byte $04   ; 
    .word $2272 ; ppu address
    .text "~VS~"
    
    .byte $0B + $40   ; 
    .word $22AF ; ppu address
    .text "Netherlands"






_off015_матч_1E:
; очистить nametable
    .byte $0D   ; 
; верхняя горизонтальная линия
    .byte $05   ; 
    .word $2145 ; ppu address
    .byte $16   ; 
    .byte $8E   ; 
; центральная горизонтальная линия
    .byte $05   ; 
    .word $21E5 ; ppu address
    .byte $16   ; 
    .byte $BA   ; 
; нижняя горизонтальная линия
    .byte $05   ; 
    .word $22E5 ; ppu address
    .byte $16   ; 
    .byte $8E   ; 
; левая вертикальная линия
    .byte $04   ; 
    .word $2164 ; ppu address
    .byte $0C   ; 
    .byte $8F   ; 
; центральная вертикальная линия
    .byte $04   ; 
    .word $220E ; ppu address
    .byte $07   ; 
    .byte $BB   ; 
; правая вертикальная линия
    .byte $04   ; 
    .word $217B ; ppu address
    .byte $0C   ; 
    .byte $8F   ; 
    
    .byte $00   ; 
    .word @углы
    
    .byte $00   ; 
    .word @текст
; закончить
    .byte $0F   ; end token



@углы:
; левый верхний угол
    .byte $01   ; 
    .word $2144 ; ppu address
    .byte $90   ; 
; правый верхний угол
    .byte $01   ; 
    .word $215B ; ppu address
    .byte $91   ; 
; правый нижний угол
    .byte $01   ; 
    .word $22E4 ; ppu address
    .byte $92   ; 
; левый нижний угол
    .byte $01 + $40   ; 
    .word $22FB ; ppu address
    .byte $93   ; 



@текст:
    .byte $0A   ; 
    .word $206B ; ppu address
    .text "Episode 31"
    
    .byte $14   ; 
    .word $20A6 ; ppu address
    .text "@Pride of Argentina@"
    
    .byte $0F   ; 
    .word $2189 ; ppu address
    .text "U-20 World Cup,"
    
    .byte $0E   ; 
    .word $21C9 ; ppu address
    .text "Knockout Stage"
    
    .byte $07   ; 
    .word $2246 ; ppu address
    .text "Quarter"
    
    .byte $05   ; 
    .word $2287 ; ppu address
    .text "Final"
    
    .byte $05   ; 
    .word $2232 ; ppu address
    .text "Japan"
    
    .byte $04   ; 
    .word $2272 ; ppu address
    .text "~VS~"
    
    .byte $09 + $40   ; 
    .word $22B0 ; ppu address
    .text "Argentina"






_off015_матч_1F:
; очистить nametable
    .byte $0D   ; 
; верхняя горизонтальная линия
    .byte $05   ; 
    .word $2145 ; ppu address
    .byte $16   ; 
    .byte $8E   ; 
; центральная горизонтальная линия
    .byte $05   ; 
    .word $21E5 ; ppu address
    .byte $16   ; 
    .byte $BA   ; 
; нижняя горизонтальная линия
    .byte $05   ; 
    .word $22E5 ; ppu address
    .byte $16   ; 
    .byte $8E   ; 
; левая вертикальная линия
    .byte $04   ; 
    .word $2164 ; ppu address
    .byte $0C   ; 
    .byte $8F   ; 
; центральная вертикальная линия
    .byte $04   ; 
    .word $220D ; ppu address
    .byte $07   ; 
    .byte $BB   ; 
; правая вертикальная линия
    .byte $04   ; 
    .word $217B ; ppu address
    .byte $0C   ; 
    .byte $8F   ; 
    
    .byte $00   ; 
    .word @углы
    
    .byte $00   ; 
    .word @текст
; закончить
    .byte $0F   ; end token



@углы:
; левый верхний угол
    .byte $01   ; 
    .word $2144 ; ppu address
    .byte $90   ; 
; правый верхний угол
    .byte $01   ; 
    .word $215B ; ppu address
    .byte $91   ; 
; правый нижний угол
    .byte $01   ; 
    .word $22E4 ; ppu address
    .byte $92   ; 
; левый нижний угол
    .byte $01 + $40   ; 
    .word $22FB ; ppu address
    .byte $93   ; 



@текст:
    .byte $0A   ; 
    .word $206B ; ppu address
    .text "Episode 32"
    
    .byte $19   ; 
    .word $20A4 ; ppu address
    .text "@Germany's Young Emperor@"
    
    .byte $0F   ; 
    .word $2189 ; ppu address
    .text "U-20 World Cup,"
    
    .byte $0E   ; 
    .word $21C9 ; ppu address
    .text "Knockout Stage"
    
    .byte $04   ; 
    .word $2246 ; ppu address
    .text "Semi"
    
    .byte $05   ; 
    .word $2286 ; ppu address
    .text "Final"
    
    .byte $05   ; 
    .word $2231 ; ppu address
    .text "Japan"
    
    .byte $04   ; 
    .word $2272 ; ppu address
    .text "~VS~"
    
    .byte $0C + $40   ; 
    .word $22AE ; ppu address
    .text "West Germany"






_off015_матч_20:
; очистить nametable
    .byte $0D   ; 
; верхняя горизонтальная линия
    .byte $05   ; 
    .word $2145 ; ppu address
    .byte $16   ; 
    .byte $8E   ; 
; центральная горизонтальная линия
    .byte $05   ; 
    .word $21E5 ; ppu address
    .byte $16   ; 
    .byte $BA   ; 
; нижняя горизонтальная линия
    .byte $05   ; 
    .word $22E5 ; ppu address
    .byte $16   ; 
    .byte $8E   ; 
; левая вертикальная линия
    .byte $04   ; 
    .word $2164 ; ppu address
    .byte $0C   ; 
    .byte $8F   ; 
; центральная вертикальная линия
    .byte $04   ; 
    .word $220E ; ppu address
    .byte $07   ; 
    .byte $BB   ; 
; правая вертикальная линия
    .byte $04   ; 
    .word $217B ; ppu address
    .byte $0C   ; 
    .byte $8F   ; 
    
    .byte $00   ; 
    .word @углы
    
    .byte $00   ; 
    .word @текст
; закончить
    .byte $0F   ; end token



@углы:
; левый верхний угол
    .byte $01   ; 
    .word $2144 ; ppu address
    .byte $90   ; 
; правый верхний угол
    .byte $01   ; 
    .word $215B ; ppu address
    .byte $91   ; 
; правый нижний угол
    .byte $01   ; 
    .word $22E4 ; ppu address
    .byte $92   ; 
; левый нижний угол
    .byte $01 + $40   ; 
    .word $22FB ; ppu address
    .byte $93   ; 



@текст:
    .byte $0A   ; 
    .word $206B ; ppu address
    .text "Episode 33"
    
    .byte $1D   ; 
    .word $20A1 ; ppu address
    .text "@Clash of the Super Strikers@"
    
    .byte $0F   ; 
    .word $2189 ; ppu address
    .text "U-20 World Cup,"
    
    .byte $0E   ; 
    .word $21C9 ; ppu address
    .text "Knockout Stage"
    
    .byte $05   ; 
    .word $2267 ; ppu address
    .text "Final"
    
    .byte $05   ; 
    .word $2232 ; ppu address
    .text "Japan"
    
    .byte $04   ; 
    .word $2272 ; ppu address
    .text "~VS~"
    
    .byte $06 + $40   ; 
    .word $22B1 ; ppu address
    .text "Brazil"



.out .sprintf("Free bytes in bank 9E: 0x%04X [%d]", ($E000 - *), ($E000 - *))



