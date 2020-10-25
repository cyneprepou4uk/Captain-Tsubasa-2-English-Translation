.segment "BANK_33"
.include "copy_bank_ram.inc"

.export sub_0x40005_таблица_слов
sub_0x40005_таблица_слов:
    TYA
    BNE @это_не_клон
    LDA #$EB
    STA ram_0030
    LDA #$05
    STA ram_0031
    RTS
@это_не_клон:
    LDY #< tbl_F329_слова
    STY ram_0030
    LDY #> tbl_F329_слова
    STY ram_0031
    ASL
    BCC bra_F31C_не_увеличивать_старший_байт
    INC ram_0031
bra_F31C_не_увеличивать_старший_байт:
    TAY
    LDA (ram_0030),Y
    PHA
    INY
    LDA (ram_0030),Y
    STA ram_0031
    PLA
    STA ram_0030
    LDY #$00
@цикл_копирования_текста:
    LDA (ram_0030),Y
    STA $7FE0,Y
    INY
    CMP #$FC
    BNE @цикл_копирования_текста
    LDA #$E0
    STA ram_0030
    LDA #$7F
    STA ram_0031
    RTS



tbl_F329_слова:         ; таблица с именами игроков, командами, спешалами и сокращений текста
    .word ram_имя_клона
    .word txt_01_our_player_Tsubasa
    .word txt_02_our_player_Renato
    .word txt_03_our_player_Lima
    .word txt_04_our_player_Marini
    .word txt_05_our_player_Amaral
    .word txt_06_our_player_Dotor
    .word txt_07_our_player_Batista
    .word txt_08_our_player_Tahamata
    .word txt_09_our_player_Babington
    .word txt_0A_our_player_Gil
    .word txt_0B_our_player_Platon
    .word txt_0C_our_player_Urabe
    .word txt_0D_our_player_Kishida
    .word txt_0E_our_player_Nakayama
    .word txt_0F_our_player_Morisaki
    .word txt_10_our_player_Takasugi
    .word txt_11_our_player_Misaki
    .word txt_12_our_player_Izawa
    .word txt_13_our_player_Taki
    .word txt_14_our_player_Ishizaki
    .word txt_15_our_player_Nitta
    .word txt_16_our_player_Kisugi
    .word txt_17_our_player_Masao
    .word txt_18_our_player_Kazuo
    .word txt_19_our_player_Sano
    .word txt_1A_our_player_Hyuga
    .word txt_1B_our_player_Souda
    .word txt_1C_our_player_Jitou
    .word txt_1D_our_player_Matsuyama
    .word txt_1E_our_player_Sorimachi
    .word txt_1F_our_player_Sawada
    .word txt_20_our_player_Misugi
    .word txt_21_our_player_Wakabayashi
    .word txt_22_our_player_Wakashimazu
    .word txt_23_opponent_player_Satrustegui
    .word txt_24_opponent_player_Ribeiro
    .word txt_25_opponent_player_Danil_Silva
    .word txt_26_opponent_player_Meon
    .word txt_27_opponent_player_Toninho
    .word txt_28_opponent_player_Nei
    .word txt_29_opponent_player_Zagallo
    .word txt_2A_opponent_player_Dirceu
    .word txt_2B_opponent_player_Carlos
    .word txt_2C_opponent_player_Santamaria
    .word txt_2D_opponent_player_Jetorio
    .word txt_2E_opponent_player_Jitou
    .word txt_2F_opponent_player_Sano
    .word txt_30_opponent_player_Masao
    .word txt_31_opponent_player_Kazuo
    .word txt_32_opponent_player_Souda
    .word txt_33_opponent_player_Nakanishi
    .word txt_34_opponent_player_Misugi
    .word txt_35_opponent_player_Matsuyama
    .word txt_36_opponent_player_Hyuga
    .word txt_37_opponent_player_Sorimachi
    .word txt_38_opponent_player_Sawada
    .word txt_39_opponent_player_Wakashimazu
    .word txt_3A_opponent_player_Rampion
    .word txt_3B_opponent_player_Victorino
    .word txt_3C_opponent_player_Danil_Silva
    .word txt_3D_opponent_player_Kappelman
    .word txt_3E_opponent_player_Kaltz
    .word txt_3F_opponent_player_Metza
    .word txt_40_opponent_player_Wakabayashi
    .word txt_41_opponent_player_Hyuga
    .word txt_42_opponent_player_Nitta
    .word txt_43_opponent_player_Sano
    .word txt_44_opponent_player_Misaki
    .word txt_45_opponent_player_Misugi
    .word txt_46_opponent_player_Masao
    .word txt_47_opponent_player_Kazuo
    .word txt_48_opponent_player_Jitou
    .word txt_49_opponent_player_Ishizaki
    .word txt_4A_opponent_player_Souda
    .word txt_4B_opponent_player_Matsuyama
    .word txt_4C_opponent_player_Wakashimazu
    .word txt_4D_opponent_player_Li_Han_ne
    .word txt_4E_opponent_player_Li_Ban_kun
    .word txt_4F_opponent_player_Sha
    .word txt_50_opponent_player_Kim
    .word txt_51_opponent_player_Macher
    .word txt_52_opponent_player_Djazic
    .word txt_53_opponent_player_Lorimar
    .word txt_54_opponent_player_Robson
    .word txt_55_opponent_player_Belaev
    .word txt_56_opponent_player_Rashin
    .word txt_57_opponent_player_Napoleon
    .word txt_58_opponent_player_Pierre
    .word txt_59_opponent_player_Espana
    .word txt_5A_opponent_player_Rampion
    .word txt_5B_opponent_player_Hernandez
    .word txt_5C_opponent_player_Islas
    .word txt_5D_opponent_player_Libuta
    .word txt_5E_opponent_player_Pasqal
    .word txt_5F_opponent_player_Satrustegui
    .word txt_60_opponent_player_Diaz
    .word txt_61_opponent_player_Babington
    .word txt_62_opponent_player_Galvan
    .word txt_63_opponent_player_Schneider
    .word txt_64_opponent_player_Margus
    .word txt_65_opponent_player_Kaltz
    .word txt_66_opponent_player_Metza
    .word txt_67_opponent_player_Schester
    .word txt_68_opponent_player_Kappelman
    .word txt_69_opponent_player_Muller
    .word txt_6A_opponent_player_Carlos
    .word txt_6B_opponent_player_Zagallo
    .word txt_6C_opponent_player_Ribeiro
    .word txt_6D_opponent_player_Nei
    .word txt_6E_opponent_player_Santamaria
    .word txt_6F_opponent_player_Toninho
    .word txt_70_opponent_player_Dotor
    .word txt_71_opponent_player_Amaral
    .word txt_72_opponent_player_Dirceu
    .word txt_73_opponent_player_Jetorio
    .word txt_74_opponent_player_Gertise
    .word txt_75_opponent_player_Coimbra
    .word txt_76_our_team_sao_paulo
    .word txt_77_our_team_nankatsu
    .word txt_78_our_team_japan
    .word txt_79_opponent_team_fluminense
    .word txt_7A_opponent_team_corinthians
    .word txt_7B_opponent_team_gremio
    .word txt_7C_opponent_team_palmeiras
    .word txt_7D_opponent_team_santos
    .word txt_7E_opponent_team_flamengo
    .word txt_7F_opponent_team_kunimi
    .word txt_80_opponent_team_akita
    .word txt_81_opponent_team_tatsunami
    .word txt_82_opponent_team_musashi
    .word txt_83_opponent_team_furano
    .word txt_84_opponent_team_toho
    .word txt_85_opponent_team_as_roma
    .word txt_86_opponent_team_uruguay
    .word txt_87_opponent_team_hamburger_sv
    .word txt_88_opponent_team_japan
    .word txt_89_opponent_team_syria
    .word txt_8A_opponent_team_china
    .word txt_8B_opponent_team_iran
    .word txt_8C_opponent_team_north_korea
    .word txt_8D_opponent_team_saudi_arabia
    .word txt_8E_opponent_team_south_korea
    .word txt_8F_opponent_team_turkey
    .word txt_90_opponent_team_poland
    .word txt_91_opponent_team_england
    .word txt_92_opponent_team_soviet_union
    .word txt_93_opponent_team_france
    .word txt_94_opponent_team_mexico
    .word txt_95_opponent_team_italy
    .word txt_96_opponent_team_netherlands
    .word txt_97_opponent_team_argentina
    .word txt_98_opponent_team_west_germany
    .word txt_99_opponent_team_brazil
    .word off_F813_9A
    .word off_F818_9B
    .word off_F820_9C
    .word off_F826_9D
    .word off_F82F_9E
    .word off_F83B_9F
    .word off_F844_A0
    .word off_F850_A1
    .word off_F859_A2
    .word off_F864_A3
    .word off_F86C_A4
    .word off_F879_A5
    .word off_F882_A6
    .word off_F88B_A7
    .word off_F897_A8
    .word off_F8A2_A9
    .word off_F8AE_AA
    .word off_F8BC_AB
    .word off_F8C5_AC
    .word off_F8CB_AD
    .word off_F8D6_AE
    .word off_F8DE_AF
    .word off_F8E8_B0
    .word off_F8F2_B1
    .word off_F8FA_B2
    .word off_F903_B3
    .word off_F90D_B4
    .word off_F916_B5
    .word off_F920_B6
    .word off_F92A_B7       ; unused
    .word off_F932_B8
    .word off_F93A_B9
    .word off_F944_BA
    .word off_F94D_BB
    .word off_F957_BC
    .word off_F95E_BD
    .word off_F963_BE
    .word off_F96A_BF
    .word off_F974_C0
    .word off_F97D_C1
    .word off_F986_C2
    .word off_F98F_C3
    .word off_F999_C4
    .word off_F99C_C5
    .word off_F9A3_C6
    .word off_F9AA_C7
    .word off_F9B3_C8
    .word off_F9BC_C9
    .word off_F9C5_CA
    .word off_F9CD_CB
    .word off_F9D6_CC       ; unused
    .word off_F9E0_CD
    .word off_F9E5_CE
    .word off_F9EE_CF
    .word off_F9F8_D0
    .word off_FA00_D1
    .word off_FA05_D2
    .word off_FA0F_D3
    .word off_FA18_D4
    .word off_FA20_D5
    .word off_FA29_D6       ; unused
    .word off_FA2E_D7
    .word off_FA34_D8
    .word off_FA3F_D9
    .word off_FA44_DA
    .word off_FA48_DB
    .word off_FA4D_DC       ; unused
    .word off_FA52_DD       ; unused
    .word off_FA57_DE       ; unused
    .word off_FA5C_DF       ; unused
    .word off_FA61_E0
    .word off_FA68_E1       ; unused
    .word off_FA71_E2       ; unused
    .word off_FA79_E3       ; unused
    .word off_FA83_E4
    .word off_FA89_E5
    .word off_FA90_E6
    .word off_FA96_E7
    .word off_FA9C_E8
    .word off_FAA4_E9
    .word off_FAA9_EA
    .word off_FAB0_EB
    .word off_FAB7_EC
    .word off_FAC0_ED
    .word off_FAC4_EE
    .word off_FAC8_EF

txt_01_our_player_Tsubasa:
    .text "Tsubasa"
    .byte $FC

txt_02_our_player_Renato:
    .text "Renato"
    .byte $FC

txt_03_our_player_Lima:
    .text "Lima"
    .byte $FC

txt_04_our_player_Marini:
    .text "Marini"
    .byte $FC

txt_05_our_player_Amaral:
    .text "Amaral"
    .byte $FC

txt_06_our_player_Dotor:
    .text "Dotor"
    .byte $FC

txt_07_our_player_Batista:
    .text "Batista"
    .byte $FC

txt_08_our_player_Tahamata:
    .text "Tahamata"
    .byte $FC

txt_09_our_player_Babington:
    .byte $08, $09, $0A, $0B, $0C, $0D, $0E, $0F
    .byte $FC

txt_0A_our_player_Gil:
    .text "Gil"
    .byte $FC

txt_0B_our_player_Platon:
    .text "Platon"
    .byte $FC

txt_0C_our_player_Urabe:
    .text "Urabe"
    .byte $FC

txt_0D_our_player_Kishida:
    .text "Kishida"
    .byte $FC

txt_0E_our_player_Nakayama:
    .text "Nakayama"
    .byte $FC

txt_0F_our_player_Morisaki:
    .text "Morisaki"
    .byte $FC

txt_10_our_player_Takasugi:
    .text "Takasugi"
    .byte $FC

txt_11_our_player_Misaki:
    .text "Misaki"
    .byte $FC

txt_12_our_player_Izawa:
    .text "Izawa"
    .byte $FC

txt_13_our_player_Taki:
    .text "Taki"
    .byte $FC

txt_14_our_player_Ishizaki:
    .text "Ishizaki"
    .byte $FC

txt_15_our_player_Nitta:
    .text "Nitta"
    .byte $FC

txt_16_our_player_Kisugi:
    .text "Kisugi"
    .byte $FC

txt_17_our_player_Masao:
    .text "Masao"
    .byte $FC

txt_18_our_player_Kazuo:
    .text "Kazuo"
    .byte $FC

txt_19_our_player_Sano:
    .text "Sano"
    .byte $FC

txt_1A_our_player_Hyuga:
    .text "Hyuga"
    .byte $FC

txt_1B_our_player_Souda:
    .text "Souda"
    .byte $FC

txt_1C_our_player_Jitou:
    .text "Jitou"
    .byte $FC

txt_1D_our_player_Matsuyama:
    .byte $10, $11, $12, $13, $14, $15, $16, $17
    .byte $FC

txt_1E_our_player_Sorimachi:
    .byte $18, $19, $1A, $1B, $1C, $1D, $1E, $1F
    .byte $FC

txt_1F_our_player_Sawada:
    .text "Sawada"
    .byte $FC

txt_20_our_player_Misugi:
    .text "Misugi"
    .byte $FC

txt_21_our_player_Wakabayashi:
    .byte $60, $21, $22, $23, $24, $25, $26, $27
    .byte $FC

txt_22_our_player_Wakashimazu:
    .byte $28, $29, $2A, $2B, $2C, $2D, $2E, $2F
    .byte $FC

txt_23_opponent_player_Satrustegui:
    .byte $10, $11, $12, $13, $14, $15, $16, $17
    .byte $FC

txt_24_opponent_player_Ribeiro:
    .text "Ribeiro"
    .byte $FC

txt_25_opponent_player_Danil_Silva:
    .byte $18, $19, $1A, $1B, $1C, $1D, $1E, $1F
    .byte $FC

txt_26_opponent_player_Meon:
    .text "Meon"
    .byte $FC

txt_27_opponent_player_Toninho:
    .text "Toninho"
    .byte $FC

txt_28_opponent_player_Nei:
    .text "Nei"
    .byte $FC

txt_29_opponent_player_Zagallo:
    .text "Zagallo"
    .byte $FC

txt_2A_opponent_player_Dirceu:
    .text "Dirceu"
    .byte $FC

txt_2B_opponent_player_Carlos:
    .text "Carlos"
    .byte $FC

txt_2C_opponent_player_Santamaria:
    .byte $60, $21, $22, $23, $24, $25, $26, $27
    .byte $FC

txt_2D_opponent_player_Jetorio:
    .text "Jetorio"
    .byte $FC

txt_2E_opponent_player_Jitou:
    .text "Jitou"
    .byte $FC

txt_2F_opponent_player_Sano:
    .text "Sano"
    .byte $FC

txt_30_opponent_player_Masao:
    .text "Masao"
    .byte $FC

txt_31_opponent_player_Kazuo:
    .text "Kazuo"
    .byte $FC

txt_32_opponent_player_Souda:
    .text "Souda"
    .byte $FC

txt_33_opponent_player_Nakanishi:
    .byte $10, $11, $12, $13, $14, $15, $16, $17
    .byte $FC

txt_34_opponent_player_Misugi:
    .text "Misugi"
    .byte $FC

txt_35_opponent_player_Matsuyama:
    .byte $18, $19, $1A, $1B, $1C, $1D, $1E, $1F
    .byte $FC

txt_36_opponent_player_Hyuga:
    .text "Hyuga"
    .byte $FC

txt_37_opponent_player_Sorimachi:
    .byte $60, $21, $22, $23, $24, $25, $26, $27
    .byte $FC

txt_38_opponent_player_Sawada:
    .text "Sawada"
    .byte $FC

txt_39_opponent_player_Wakashimazu:
    .byte $28, $29, $2A, $2B, $2C, $2D, $2E, $2F
    .byte $FC

txt_3A_opponent_player_Rampion:
    .text "Rampion"
    .byte $FC

txt_3B_opponent_player_Victorino:
    .byte $28, $29, $2A, $2B, $2C, $2D, $2E, $2F
    .byte $FC

txt_3C_opponent_player_Danil_Silva:
    .byte $18, $19, $1A, $1B, $1C, $1D, $1E, $1F
    .byte $FC

txt_3D_opponent_player_Kappelman:
    .byte $18, $19, $1A, $1B, $1C, $1D, $1E, $1F
    .byte $FC

txt_3E_opponent_player_Kaltz:
    .text "Kaltz"
    .byte $FC

txt_3F_opponent_player_Metza:
    .text "Metza"
    .byte $FC

txt_40_opponent_player_Wakabayashi:
    .byte $10, $11, $12, $13, $14, $15, $16, $17
    .byte $FC

txt_41_opponent_player_Hyuga:
    .text "Hyuga"
    .byte $FC

txt_42_opponent_player_Nitta:
    .text "Nitta"
    .byte $FC

txt_43_opponent_player_Sano:
    .text "Sano"
    .byte $FC

txt_44_opponent_player_Misaki:
    .text "Misaki"
    .byte $FC

txt_45_opponent_player_Misugi:
    .text "Misugi"
    .byte $FC

txt_46_opponent_player_Masao:
    .text "Masao"
    .byte $FC

txt_47_opponent_player_Kazuo:
    .text "Kazuo"
    .byte $FC

txt_48_opponent_player_Jitou:
    .text "Jitou"
    .byte $FC

txt_49_opponent_player_Ishizaki:
    .text "Ishizaki"
    .byte $FC

txt_4A_opponent_player_Souda:
    .text "Souda"
    .byte $FC

txt_4B_opponent_player_Matsuyama:
    .byte $10, $11, $12, $13, $14, $15, $16, $17
    .byte $FC

txt_4C_opponent_player_Wakashimazu:
    .byte $28, $29, $2A, $2B, $2C, $2D, $2E, $2F
    .byte $FC

txt_4D_opponent_player_Li_Han_ne:
    .byte $01, $02, $03, $04, $05, $06, $07             ; Li Han-ne
    .byte $FC

txt_4E_opponent_player_Li_Ban_kun:
    .byte $08, $09, $0A, $0B, $0C, $0D, $0E, $0F        ; Li Ban-kun
    .byte $FC

txt_4F_opponent_player_Sha:
    .text "Sha"
    .byte $FC

txt_50_opponent_player_Kim:
    .text "Kim"
    .byte $FC

txt_51_opponent_player_Macher:
    .text "Macher"
    .byte $FC

txt_52_opponent_player_Djazic:
    .text "Djazic"
    .byte $FC

txt_53_opponent_player_Lorimar:
    .text "Lorimar"
    .byte $FC

txt_54_opponent_player_Robson:
    .text "Robson"
    .byte $FC

txt_55_opponent_player_Belaev:
    .text "Belaev"
    .byte $FC

txt_56_opponent_player_Rashin:
    .text "Rashin"
    .byte $FC

txt_57_opponent_player_Napoleon:
    .text "Napoleon"
    .byte $FC

txt_58_opponent_player_Pierre:
    .text "Pierre"
    .byte $FC

txt_59_opponent_player_Espana:
    .text "Espana"
    .byte $FC

txt_5A_opponent_player_Rampion:
    .text "Rampion"
    .byte $FC

txt_5B_opponent_player_Hernandez:
    .byte $08, $09, $0A, $0B, $0C, $0D, $0E, $0F
    .byte $FC

txt_5C_opponent_player_Islas:
    .text "Islas"
    .byte $FC

txt_5D_opponent_player_Libuta:
    .text "Libuta"
    .byte $FC

txt_5E_opponent_player_Pasqal:
    .text "Pasqal"
    .byte $FC

txt_5F_opponent_player_Satrustegui:
    .byte $40, $01, $02, $03, $04, $05, $06, $07
    .byte $FC

txt_60_opponent_player_Diaz:
    .text "Diaz"
    .byte $FC

txt_61_opponent_player_Babington:
    .byte $08, $09, $0A, $0B, $0C, $0D, $0E, $0F
    .byte $FC

txt_62_opponent_player_Galvan:
    .text "Galvan"
    .byte $FC

txt_63_opponent_player_Schneider:
    .byte $40, $01, $02, $03, $04, $05, $06, $07
    .byte $FC

txt_64_opponent_player_Margus:
    .text "Margus"
    .byte $FC

txt_65_opponent_player_Kaltz:
    .text "Kaltz"
    .byte $FC

txt_66_opponent_player_Metza:
    .text "Metza"
    .byte $FC

txt_67_opponent_player_Schester:
    .text "Schester"
    .byte $FC

txt_68_opponent_player_Kappelman:
    .byte $08, $09, $0A, $0B, $0C, $0D, $0E, $0F
    .byte $FC

txt_69_opponent_player_Muller:
    .text "Muller"
    .byte $FC

txt_6A_opponent_player_Carlos:
    .text "Carlos"
    .byte $FC

txt_6B_opponent_player_Zagallo:
    .text "Zagallo"
    .byte $FC

txt_6C_opponent_player_Ribeiro:
    .text "Ribeiro"
    .byte $FC

txt_6D_opponent_player_Nei:
    .text "Nei"
    .byte $FC

txt_6E_opponent_player_Santamaria:
    .byte $40, $01, $02, $03, $04, $05, $06, $07
    .byte $FC

txt_6F_opponent_player_Toninho:
    .text "Toninho"
    .byte $FC

txt_70_opponent_player_Dotor:
    .text "Dotor"
    .byte $FC

txt_71_opponent_player_Amaral:
    .text "Amaral"
    .byte $FC

txt_72_opponent_player_Dirceu:
    .text "Dirceu"
    .byte $FC

txt_73_opponent_player_Jetorio:
    .text "Jetorio"
    .byte $FC

txt_74_opponent_player_Gertise:
    .text "Gertise"
    .byte $FC

txt_75_opponent_player_Coimbra:
    .text "Coimbra"
    .byte $FC

txt_76_our_team_sao_paulo:
    .text "Sao Paulo"
    .byte $FC

txt_77_our_team_nankatsu:
    .text "Nankatsu"
    .byte $FC

txt_78_our_team_japan:
    .text "Japan"
    .byte $FC

txt_79_opponent_team_fluminense:
    .text "Fluminense"
    .byte $FC

txt_7A_opponent_team_corinthians:
    .text "Corinthians"
    .byte $FC

txt_7B_opponent_team_gremio:
    .text "Gremio"
    .byte $FC

txt_7C_opponent_team_palmeiras:
    .text "Palmeiras"
    .byte $FC

txt_7D_opponent_team_santos:
    .text "Santos"
    .byte $FC

txt_7E_opponent_team_flamengo:
    .text "Flamengo"
    .byte $FC

txt_7F_opponent_team_kunimi:
    .text "Kunimi"
    .byte $FC

txt_80_opponent_team_akita:
    .text "Akita"
    .byte $FC

txt_81_opponent_team_tatsunami:
    .text "Tatsunami"
    .byte $FC

txt_82_opponent_team_musashi:
    .text "Musashi"
    .byte $FC

txt_83_opponent_team_furano:
    .text "Furano"
    .byte $FC

txt_84_opponent_team_toho:
    .text "Toho"
    .byte $FC

txt_85_opponent_team_as_roma:
    .text "AS Roma"
    .byte $FC

txt_86_opponent_team_uruguay:
    .text "Uruguay"
    .byte $FC

txt_87_opponent_team_hamburger_sv:
    .text "Hamburger SV"
    .byte $FC

txt_88_opponent_team_japan:
    .text "Japan"
    .byte $FC

txt_89_opponent_team_syria:
    .text "Syria"
    .byte $FC

txt_8A_opponent_team_china:
    .text "China"
    .byte $FC

txt_8B_opponent_team_iran:
    .text "Iran"
    .byte $FC

txt_8C_opponent_team_north_korea:
    .text "North Korea"
    .byte $FC

txt_8D_opponent_team_saudi_arabia:
    .text "Saudi Arabia"
    .byte $FC

txt_8E_opponent_team_south_korea:
    .text "South Korea"
    .byte $FC

txt_8F_opponent_team_turkey:
    .text "Turkey"
    .byte $FC

txt_90_opponent_team_poland:
    .text "Poland"
    .byte $FC

txt_91_opponent_team_england:
    .text "England"
    .byte $FC

txt_92_opponent_team_soviet_union:
    .text "Soviet Union"
    .byte $FC

txt_93_opponent_team_france:
    .text "France"
    .byte $FC

txt_94_opponent_team_mexico:
    .text "Mexico"
    .byte $FC

txt_95_opponent_team_italy:
    .text "Italy"
    .byte $FC

txt_96_opponent_team_netherlands:
    .text "Netherlands"
    .byte $FC

txt_97_opponent_team_argentina:
    .text "Argentina"
    .byte $FC

txt_98_opponent_team_west_germany:
    .text "West Germany"
    .byte $FC

txt_99_opponent_team_brazil:
    .text "Brazil"
    .byte $FC

off_F813_9A:        ; shoot
    .text "9A "     ; <シュート>
    .byte $FC

off_F818_9B:
    .text "9B "     ; <ボレーシュート>
    .byte $FC

off_F820_9C:
    .text "9C "     ; <ヘディング>
    .byte $FC

off_F826_9D:        ; drive shot
    .text "9D "     ; <ドライブシュート>
    .byte $FC

off_F82F_9E:        ; drive overhead
    .text "9E "     ; <ドライブオーバーヘッド>
    .byte $FC

off_F83B_9F:        ; falcon shot
    .text "9F "     ; <はやぶさシュート>
    .byte $FC

off_F844_A0:        ; falcon volley
    .text "A0 "     ; <はやぶさボレーシュート>
    .byte $FC

off_F850_A1:        ; razor shot
    .text "A1 "     ; <カミソリシュート>
    .byte $FC

off_F859_A2:        ; skylb hurricane
    .text "A2 "     ; <スカイラブハリケーン>
    .byte $FC

off_F864_A3:        ; twin shot
    .text "A3 "     ; <ツインシュート>
    .byte $FC

off_F86C_A4:        ; skylab twin shot
    .text "A4 "     ; <スカイラブツインシュート>
    .byte $FC

off_F879_A5:        ; eagle shot
    .text "A5 "     ; <イーグルショット>
    .byte $FC

off_F882_A6:        ; tiger shot
    .text "A6 "     ; <タイガーショット>
    .byte $FC

off_F88B_A7:        ; neo-tiger shot
    .text "A7 "     ; <ネオ • タイガーショット>
    .byte $FC

off_F897_A8:        ; overhead kick
    .text "A8 "     ; <オーバーヘッドキック>
    .byte $FC

off_F8A2_A9:        ; hyper overhead
    .text "A9 "     ; <ハイパーオーバーヘッド>
    .byte $FC

off_F8AE_AA:        ; jumping volley
    .text "AA "     ; <ジャンピングボレーシュート>
    .byte $FC

off_F8BC_AB:
    .text "AB "     ; <ドライブタイガー>
    .byte $FC

off_F8C5_AC:        ; cyclone
    .text "AC "     ; <サイクロン>
    .byte $FC

off_F8CB_AD:        ; sano combo
    .text "AD "     ; <さのとのコンビプレイ>
    .byte $FC

off_F8D6_AE:
    .text "AE "     ; <バナナシュート>
    .byte $FC

off_F8DE_AF:
    .text "AF "     ; <ブースターシュート>
    .byte $FC

off_F8E8_B0:
    .text "B0 "     ; <ミラージュシュート>
    .byte $FC

off_F8F2_B1:
    .text "B1 "     ; <マッハシュート>
    .byte $FC

off_F8FA_B2:
    .text "B2 "     ; <サイドワインダー>
    .byte $FC

off_F903_B3:
    .text "B3 "     ; <スライダーシュート>
    .byte $FC

off_F90D_B4:
    .text "B4 "     ; <キャノンシュート>
    .byte $FC

off_F916_B5:
    .text "B5 "     ; <フヮイヤーショット>
    .byte $FC

off_F920_B6:
    .text "B6 "     ; <ダイナマイトヘッド>
    .byte $FC

off_F92A_B7:          ; unused
    .text "B7 "     ; <キャノンヘッド>
    .byte $FC

off_F932_B8:
    .text "B8 "     ; <ロケットヘッド>
    .byte $FC

off_F93A_B9:
    .text "B9 "     ; <しょうりゅうきゃく>
    .byte $FC

off_F944_BA:
    .text "BA "     ; <ぜんてんシュート>
    .byte $FC

off_F94D_BB:
    .text "BB "     ; <スライダーキャノン>
    .byte $FC

off_F957_BC:
    .text "BC "     ; <ダブルイール>
    .byte $FC

off_F95E_BD:
    .text "BD "     ; <ドリブル>
    .byte $FC

off_F963_BE:        ; heel lift
    .text "BE "     ; <ヒールリフト>
    .byte $FC

off_F96A_BF:        ; force dribble
    .text "BF "     ; <ごういんなドリブル>
    .byte $FC

off_F974_C0:
    .text "C0 "     ; <きえるフェイント>
    .byte $FC

off_F97D_C1:
    .text "C1 "     ; <ぶんしんドリブル>
    .byte $FC

off_F986_C2:
    .text "C2 "     ; <こうそくドリブル>
    .byte $FC

off_F98F_C3:
    .text "C3 "     ; <はりねずみドリブル>
    .byte $FC

off_F999_C4:
    .text "C4 "     ; <パス>
    .byte $FC

off_F99C_C5:        ; drive pass
    .text "C5 "     ; <ドライブパス>
    .byte $FC

off_F9A3_C6:        ; razor pass
    .text "C6 "     ; <カミソリパス>
    .byte $FC

off_F9AA_C7:
    .text "C7 "     ; <トップスピンパス>
    .byte $FC

off_F9B3_C8:
    .text "C8 "     ; <ワンツーリターン>
    .byte $FC

off_F9BC_C9:        ; golden combo
    .text "C9 "     ; <ゴールデンコンビ>
    .byte $FC

off_F9C5_CA:        ; toho combo
    .text "CA "     ; <とうほうコンビ>
    .byte $FC

off_F9CD_CB:        ; gemini attack
    .text "CB "     ; <ジェミニアタック>
    .byte $FC

off_F9D6_CC:          ; unused
    .text "CC "     ; <エッフェルこうげき>
    .byte $FC

off_F9E0_CD:
    .text "CD "     ; <ブロック>
    .byte $FC

off_F9E5_CE:        ; face block
    .text "CE "     ; <がんめんブロック>
    .byte $FC

off_F9EE_CF:        ; skylab block
    .text "CF "     ; <スカイラブブロック>
    .byte $FC

off_F9F8_D0:        ; power block
    .text "D0 "     ; <パワーブロック>
    .byte $FC

off_FA00_D1:
    .text "D1 "     ; <タックル>
    .byte $FC

off_FA05_D2:        ; skylab tackle
    .text "D2 "     ; <スカイラブタックル>
    .byte $FC

off_FA0F_D3:        ; razor tackle
    .text "D3 "     ; <カミソリタックル>
    .byte $FC

off_FA18_D4:        ; power tackle
    .text "D4 "     ; <パワータックル>
    .byte $FC

off_FA20_D5:        ; tiger tackle
    .text "D5 "     ; <タイガータックル>
    .byte $FC

off_FA29_D6:          ; unused
    .text "D6 "     ; <タックル>
    .byte $FC

off_FA2E_D7:
    .text "D7 "     ; <パスカット>
    .byte $FC

off_FA34_D8:        ; skylab pass cut
    .text "D8 "     ; <スカイラブパスカット>
    .byte $FC

off_FA3F_D9:
    .text "D9 "     ; <トラップ>
    .byte $FC

off_FA44_DA:
    .text "DA "     ; <スルー>
    .byte $FC

off_FA48_DB:
    .text "DB "     ; <クリアー>
    .byte $FC

off_FA4D_DC:          ; unused
    .text "DC "     ; <クリアー>
    .byte $FC

off_FA52_DD:          ; unused
    .text "DD "     ; <せりあい>
    .byte $FC

off_FA57_DE:          ; unused
    .text "DE "     ; <せりあい>
    .byte $FC

off_FA5C_DF:          ; unused
    .text "DF "     ; <フォロー>
    .byte $FC

off_FA61_E0:
    .text "E0 "     ; <キャッチング>
    .byte $FC

off_FA68_E1:          ; unused
    .text "E1 "     ; <ローリングセーブ>
    .byte $FC

off_FA71_E2:          ; unused
    .text "E2 "     ; <ぶんしんセーブ>
    .byte $FC

off_FA79_E3:          ; unused
    .text "E3 "     ; <だいかいてんセーブ>
    .byte $FC

off_FA83_E4:
    .text "E4 "     ; <パンチング>
    .byte $FC

off_FA89_E5:        ; triangle jump
    .text "E5 "     ; <さんかくとび>
    .byte $FC

off_FA90_E6:
    .text "E6 "     ; <するどい  >
    .byte $FC

off_FA96_E7:
    .text "E7 "     ; <すばやく  >
    .byte $FC

off_FA9C_E8:
    .text "E8 "     ; <きょうれつな  >
    .byte $FC

off_FAA4_E9:
    .text "E9 "     ; <うまい  >
    .byte $FC

off_FAA9_EA:
    .text "EA "     ; <きょうれつな>
    .byte $FC

off_FAB0_EB:
    .text "EB "     ; <センタリング>
    .byte $FC

off_FAB7_EC:
    .text "EC "     ; <ペナルティキック>
    .byte $FC

off_FAC0_ED:
    .text "ED "     ; <ボール>
    .byte $FC

off_FAC4_EE:
    .text "EE "     ; <ゴール>
    .byte $FC

off_FAC8_EF:
    .text "EF "     ; <タイ!>
    .byte $FC