.segment "BANK_AA"
.include "copy_bank_ram.inc"
.include "copy_bank_val.inc"
.org $8000  ; for listing file
; 0x054010-0x05800F



.out .sprintf("Free bytes in bank AA: 0x%04X [%d]", ($C000 - *), ($C000 - *))



.segment "BANK_AC"
;.include "copy_bank_ram.inc"
;.include "copy_bank_val.inc"
.org $8000  ; for listing file
; 0x058010-0x05C00F



.out .sprintf("Free bytes in bank AC: 0x%04X [%d]", ($C000 - *), ($C000 - *))



.segment "BANK_AE"
;.include "copy_bank_ram.inc"
;.include "copy_bank_val.inc"
.org $8000  ; for listing file
; 0x05C010-0x06000F



.out .sprintf("Free bytes in bank AE: 0x%04X [%d]", ($C000 - *), ($C000 - *))



.segment "BANK_B0"
;.include "copy_bank_ram.inc"
;.include "copy_bank_val.inc"
.org $8000  ; for listing file
; 0x060010-0x06400F



.out .sprintf("Free bytes in bank B0: 0x%04X [%d]", ($C000 - *), ($C000 - *))



.segment "BANK_B2"
;.include "copy_bank_ram.inc"
;.include "copy_bank_val.inc"
.org $8000  ; for listing file
; 0x064010-0x06800F



.out .sprintf("Free bytes in bank B2: 0x%04X [%d]", ($C000 - *), ($C000 - *))



.segment "BANK_B4"
;.include "copy_bank_ram.inc"
;.include "copy_bank_val.inc"
.org $8000  ; for listing file
; 0x068010-0x06C00F



.out .sprintf("Free bytes in bank B4: 0x%04X [%d]", ($C000 - *), ($C000 - *))



.segment "BANK_B6"
;.include "copy_bank_ram.inc"
;.include "copy_bank_val.inc"
.org $8000  ; for listing file
; 0x06C010-0x07000F



.out .sprintf("Free bytes in bank B6: 0x%04X [%d]", ($C000 - *), ($C000 - *))



.segment "BANK_B8"
;.include "copy_bank_ram.inc"
;.include "copy_bank_val.inc"
.org $8000  ; for listing file
; 0x070010-0x07400F



.out .sprintf("Free bytes in bank B8: 0x%04X [%d]", ($C000 - *), ($C000 - *))



.segment "BANK_BA"
;.include "copy_bank_ram.inc"
;.include "copy_bank_val.inc"
.org $8000  ; for listing file
; 0x074010-0x07800F



.out .sprintf("Free bytes in bank BA: 0x%04X [%d]", ($C000 - *), ($C000 - *))



.segment "BANK_BC"
;.include "copy_bank_ram.inc"
;.include "copy_bank_val.inc"
.org $8000  ; for listing file
; 0x078010-0x07C00F



.out .sprintf("Free bytes in bank BC: 0x%04X [%d]", ($C000 - *), ($C000 - *))



