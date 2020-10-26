.segment "BANK_33"
.include "copy_bank_ram.inc"
; имена игроков, команды, спешалы, словарь

.export sub_0x40005_таблица_слов
sub_0x40005_таблица_слов:
    TYA
    BNE @это_не_клон
    LDA #< tbl_teams_with_clones
    STA ram_0030
    LDA #> tbl_teams_with_clones
    STA ram_0031
    LDA ram_команда_соперника
    SEC
    SBC #$03
    ASL
    TAY
    LDA (ram_0030),Y
    PHA
    INY
    LDA (ram_0030),Y
    STA ram_0031
    PLA
    STA ram_0030
    LDA ram_копия_номера_игрока
    SEC
    SBC #$0B
    ASL
    TAY
    LDA (ram_0030),Y
    PHA
    INY
    LDA (ram_0030),Y
    STA ram_0031
    PLA
    STA ram_0030
    JMP loc_копирование_текста
@это_не_клон:
    LDY #< tbl_dictionary
    STY ram_0030
    LDY #> tbl_dictionary
    STY ram_0031
    ASL
    BCC @не_увеличивать_старший_байт
    INC ram_0031
@не_увеличивать_старший_байт:
    TAY
    LDA (ram_0030),Y
    PHA
    INY
    LDA (ram_0030),Y
    STA ram_0031
    PLA
    STA ram_0030
loc_копирование_текста:
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

tbl_teams_with_clones:
    .word team_Fluminense
    .word team_Corinthians
    .word team_Gremio
    .word team_Palmeiras
    .word team_Santos
    .word team_Flamengo
    .word team_Kunimi
    .word team_Akita
    .word team_Tatsunami
    .word team_Musashi
    .word team_Furano
    .word team_Toho
    .word team_AS_Roma
    .word team_Uruguay
    .word team_Hamburger_SV
    .word team_Japan
    .word team_Syria
    .word team_China
    .word team_Iran
    .word team_North_Korea
    .word team_Saudi_Arabia
    .word team_South_Korea
    .word team_Turkey
    .word team_Poland
    .word team_England
    .word team_Soviet_Union
    .word team_France
    .word team_Mexico
    .word team_Italy
    .word team_Netherlands
    .word team_Argentina
    .word team_West_Germany
    .word team_Brazil

team_Fluminense:        ; https://captaintsubasa.fandom.com/wiki/Fluminense_(Tecmo)
    .word Fluminense_clone_01
    .word Fluminense_clone_02
    .word Fluminense_clone_03
    .word Fluminense_clone_04
    .word Fluminense_clone_05
    .word Fluminense_clone_06
    .word Fluminense_clone_07
    .word Fluminense_clone_08
    .word Fluminense_clone_09
    .word Fluminense_clone_10
    .word Fluminense_clone_11

team_Corinthians:       ; https://captaintsubasa.fandom.com/wiki/Corinthians_Youth_(Tecmo)
    .word Corinthians_clone_01
    .word Corinthians_clone_02
    .word Corinthians_clone_03
    .word Corinthians_clone_04
    .word Corinthians_clone_05
    .word Corinthians_clone_06
    .word Corinthians_clone_07
    .word Corinthians_clone_08
    .word $0000
    .word $0000
    .word Corinthians_clone_11

team_Gremio:            ; https://captaintsubasa.fandom.com/wiki/Gremio_Youth_(Tecmo)
    .word $0000
    .word Gremio_clone_02
    .word Gremio_clone_03
    .word Gremio_clone_04
    .word Gremio_clone_05
    .word Gremio_clone_06
    .word Gremio_clone_07
    .word Gremio_clone_08
    .word $0000
    .word Gremio_clone_10
    .word Gremio_clone_11

team_Palmeiras:
    .word Palmeiras_clone_01
    .word Palmeiras_clone_02
    .word Palmeiras_clone_03
    .word Palmeiras_clone_04
    .word Palmeiras_clone_05
    .word Palmeiras_clone_06
    .word Palmeiras_clone_07
    .word Palmeiras_clone_08
    .word $0000
    .word Palmeiras_clone_10
    .word $0000

team_Santos:
    .word Santos_clone_01
    .word Santos_clone_02
    .word Santos_clone_03
    .word $0000
    .word Santos_clone_05
    .word Santos_clone_06
    .word Santos_clone_07
    .word Santos_clone_08
    .word $0000
    .word Santos_clone_10
    .word Santos_clone_11

team_Flamengo:
    .word Flamengo_clone_01
    .word $0000
    .word Flamengo_clone_03
    .word Flamengo_clone_04
    .word Flamengo_clone_05
    .word $0000
    .word Flamengo_clone_07
    .word Flamengo_clone_08
    .word Flamengo_clone_09
    .word $0000
    .word Flamengo_clone_11

team_Kunimi:
    .word Kunimi_clone_01
    .word Kunimi_clone_02
    .word Kunimi_clone_03
    .word $0000
    .word Kunimi_clone_05
    .word Kunimi_clone_06
    .word Kunimi_clone_07
    .word Kunimi_clone_08
    .word $0000
    .word Kunimi_clone_10
    .word Kunimi_clone_11

team_Akita:
    .word Akita_clone_01
    .word Akita_clone_02
    .word Akita_clone_03
    .word Akita_clone_04
    .word Akita_clone_05
    .word Akita_clone_06
    .word Akita_clone_07
    .word Akita_clone_08
    .word $0000
    .word Akita_clone_10
    .word $0000

team_Tatsunami:
    .word $0000
    .word Tatsunami_clone_02
    .word Tatsunami_clone_03
    .word $0000
    .word Tatsunami_clone_05
    .word Tatsunami_clone_06
    .word Tatsunami_clone_07
    .word Tatsunami_clone_08
    .word Tatsunami_clone_09
    .word Tatsunami_clone_10
    .word Tatsunami_clone_11

team_Musashi:           ; https://captaintsubasa.fandom.com/wiki/Musashi_FC
    .word Musashi_clone_01
    .word Musashi_clone_02
    .word Musashi_clone_03
    .word Musashi_clone_04
    .word Musashi_clone_05
    .word Musashi_clone_06
    .word Musashi_clone_07
    .word Musashi_clone_08
    .word Musashi_clone_09
    .word Musashi_clone_10
    .word Musashi_clone_11

team_Furano:            ; https://captaintsubasa.fandom.com/wiki/Furano_middle_school
    .word Furano_clone_01
    .word Furano_clone_02
    .word Furano_clone_03
    .word Furano_clone_04
    .word Furano_clone_05
    .word Furano_clone_06
    .word Furano_clone_07
    .word Furano_clone_08
    .word Furano_clone_09
    .word $0000
    .word Furano_clone_11

team_Toho:
    .word $0000
    .word Toho_clone_02
    .word Toho_clone_03
    .word Toho_clone_04
    .word Toho_clone_05
    .word $0000
    .word Toho_clone_07
    .word Toho_clone_08
    .word $0000
    .word $0000
    .word Toho_clone_11

team_AS_Roma:
    .word AS_Roma_clone_01
    .word AS_Roma_clone_02
    .word AS_Roma_clone_03
    .word AS_Roma_clone_04
    .word AS_Roma_clone_05
    .word AS_Roma_clone_06
    .word AS_Roma_clone_07
    .word AS_Roma_clone_08
    .word AS_Roma_clone_09
    .word AS_Roma_clone_10
    .word AS_Roma_clone_11

team_Uruguay:
    .word Uruguay_clone_01
    .word Uruguay_clone_02
    .word Uruguay_clone_03
    .word Uruguay_clone_04
    .word Uruguay_clone_05
    .word Uruguay_clone_06
    .word Uruguay_clone_07
    .word Uruguay_clone_08
    .word Uruguay_clone_09
    .word Uruguay_clone_10
    .word Uruguay_clone_11

team_Hamburger_SV:
    .word Hamburger_SV_clone_01
    .word Hamburger_SV_clone_02
    .word Hamburger_SV_clone_03
    .word Hamburger_SV_clone_04
    .word Hamburger_SV_clone_05
    .word Hamburger_SV_clone_06
    .word Hamburger_SV_clone_07
    .word Hamburger_SV_clone_08
    .word Hamburger_SV_clone_09
    .word Hamburger_SV_clone_10
    .word Hamburger_SV_clone_11

team_Japan:
    .word Japan_clone_01
    .word Japan_clone_02
    .word Japan_clone_03
    .word Japan_clone_04
    .word Japan_clone_05
    .word Japan_clone_06
    .word Japan_clone_07
    .word Japan_clone_08
    .word Japan_clone_09
    .word Japan_clone_10
    .word Japan_clone_11

team_Syria:
    .word Syria_clone_01
    .word Syria_clone_02
    .word Syria_clone_03
    .word Syria_clone_04
    .word Syria_clone_05
    .word Syria_clone_06
    .word Syria_clone_07
    .word Syria_clone_08
    .word Syria_clone_09
    .word Syria_clone_10
    .word Syria_clone_11

team_China:
    .word China_clone_01
    .word China_clone_02
    .word China_clone_03
    .word China_clone_04
    .word China_clone_05
    .word China_clone_06
    .word China_clone_07
    .word China_clone_08
    .word China_clone_09
    .word China_clone_10
    .word China_clone_11

team_Iran:
    .word Iran_clone_01
    .word Iran_clone_02
    .word Iran_clone_03
    .word Iran_clone_04
    .word Iran_clone_05
    .word Iran_clone_06
    .word Iran_clone_07
    .word Iran_clone_08
    .word Iran_clone_09
    .word Iran_clone_10
    .word Iran_clone_11

team_North_Korea:
    .word North_Korea_clone_01
    .word North_Korea_clone_02
    .word North_Korea_clone_03
    .word North_Korea_clone_04
    .word North_Korea_clone_05
    .word North_Korea_clone_06
    .word North_Korea_clone_07
    .word North_Korea_clone_08
    .word North_Korea_clone_09
    .word North_Korea_clone_10
    .word North_Korea_clone_11

team_Saudi_Arabia:
    .word Saudi_Arabia_clone_01
    .word Saudi_Arabia_clone_02
    .word Saudi_Arabia_clone_03
    .word Saudi_Arabia_clone_04
    .word Saudi_Arabia_clone_05
    .word Saudi_Arabia_clone_06
    .word Saudi_Arabia_clone_07
    .word Saudi_Arabia_clone_08
    .word Saudi_Arabia_clone_09
    .word Saudi_Arabia_clone_10
    .word Saudi_Arabia_clone_11

team_South_Korea:
    .word South_Korea_clone_01
    .word South_Korea_clone_02
    .word South_Korea_clone_03
    .word South_Korea_clone_04
    .word South_Korea_clone_05
    .word South_Korea_clone_06
    .word South_Korea_clone_07
    .word South_Korea_clone_08
    .word South_Korea_clone_09
    .word South_Korea_clone_10
    .word South_Korea_clone_11

team_Turkey:
    .word Turkey_clone_01
    .word Turkey_clone_02
    .word Turkey_clone_03
    .word Turkey_clone_04
    .word Turkey_clone_05
    .word Turkey_clone_06
    .word Turkey_clone_07
    .word Turkey_clone_08
    .word Turkey_clone_09
    .word Turkey_clone_10
    .word Turkey_clone_11

team_Poland:
    .word Poland_clone_01
    .word Poland_clone_02
    .word Poland_clone_03
    .word Poland_clone_04
    .word Poland_clone_05
    .word Poland_clone_06
    .word Poland_clone_07
    .word Poland_clone_08
    .word Poland_clone_09
    .word Poland_clone_10
    .word Poland_clone_11

team_England:
    .word England_clone_01
    .word England_clone_02
    .word England_clone_03
    .word England_clone_04
    .word England_clone_05
    .word England_clone_06
    .word England_clone_07
    .word England_clone_08
    .word England_clone_09
    .word England_clone_10
    .word England_clone_11

team_Soviet_Union:
    .word Soviet_Union_clone_01
    .word Soviet_Union_clone_02
    .word Soviet_Union_clone_03
    .word Soviet_Union_clone_04
    .word Soviet_Union_clone_05
    .word Soviet_Union_clone_06
    .word Soviet_Union_clone_07
    .word Soviet_Union_clone_08
    .word Soviet_Union_clone_09
    .word Soviet_Union_clone_10
    .word Soviet_Union_clone_11

team_France:
    .word France_clone_01
    .word France_clone_02
    .word France_clone_03
    .word France_clone_04
    .word France_clone_05
    .word France_clone_06
    .word France_clone_07
    .word France_clone_08
    .word France_clone_09
    .word France_clone_10
    .word France_clone_11

team_Mexico:
    .word Mexico_clone_01
    .word Mexico_clone_02
    .word Mexico_clone_03
    .word Mexico_clone_04
    .word Mexico_clone_05
    .word Mexico_clone_06
    .word Mexico_clone_07
    .word Mexico_clone_08
    .word Mexico_clone_09
    .word Mexico_clone_10
    .word Mexico_clone_11

team_Italy:
    .word Italy_clone_01
    .word Italy_clone_02
    .word Italy_clone_03
    .word Italy_clone_04
    .word Italy_clone_05
    .word Italy_clone_06
    .word Italy_clone_07
    .word Italy_clone_08
    .word Italy_clone_09
    .word Italy_clone_10
    .word Italy_clone_11

team_Netherlands:
    .word Netherlands_clone_01
    .word Netherlands_clone_02
    .word Netherlands_clone_03
    .word Netherlands_clone_04
    .word Netherlands_clone_05
    .word Netherlands_clone_06
    .word Netherlands_clone_07
    .word Netherlands_clone_08
    .word Netherlands_clone_09
    .word Netherlands_clone_10
    .word Netherlands_clone_11

team_Argentina:
    .word Argentina_clone_01
    .word Argentina_clone_02
    .word Argentina_clone_03
    .word Argentina_clone_04
    .word Argentina_clone_05
    .word Argentina_clone_06
    .word Argentina_clone_07
    .word Argentina_clone_08
    .word Argentina_clone_09
    .word Argentina_clone_10
    .word Argentina_clone_11

team_West_Germany:
    .word West_Germany_clone_01
    .word West_Germany_clone_02
    .word West_Germany_clone_03
    .word West_Germany_clone_04
    .word West_Germany_clone_05
    .word West_Germany_clone_06
    .word West_Germany_clone_07
    .word West_Germany_clone_08
    .word West_Germany_clone_09
    .word West_Germany_clone_10
    .word West_Germany_clone_11

team_Brazil:
    .word Brazil_clone_01
    .word Brazil_clone_02
    .word Brazil_clone_03
    .word Brazil_clone_04
    .word Brazil_clone_05
    .word Brazil_clone_06
    .word Brazil_clone_07
    .word Brazil_clone_08
    .word Brazil_clone_09
    .word Brazil_clone_10
    .word Brazil_clone_11






tbl_dictionary:
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
    .word txt_3A_opponent_player_Rampion_
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
    .word txt_5A_opponent_player_Rampion_
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
    
    .word txt_76_our_team_Sao_Paulo
    .word txt_77_our_team_Nankatsu
    .word txt_78_our_team_Japan
    
    .word txt_79_opponent_team_Fluminense
    .word txt_7A_opponent_team_Corinthians
    .word txt_7B_opponent_team_Gremio
    .word txt_7C_opponent_team_Palmeiras
    .word txt_7D_opponent_team_Santos
    .word txt_7E_opponent_team_Flamengo
    .word txt_7F_opponent_team_Kunimi
    .word txt_80_opponent_team_Akita
    .word txt_81_opponent_team_Tatsunami
    .word txt_82_opponent_team_Musashi
    .word txt_83_opponent_team_Furano
    .word txt_84_opponent_team_Toho
    .word txt_85_opponent_team_AS_Roma
    .word txt_86_opponent_team_Uruguay
    .word txt_87_opponent_team_Hamburger_SV
    .word txt_88_opponent_team_Japan
    .word txt_89_opponent_team_Syria
    .word txt_8A_opponent_team_China
    .word txt_8B_opponent_team_Iran
    .word txt_8C_opponent_team_North_Korea
    .word txt_8D_opponent_team_Saudi_Arabia
    .word txt_8E_opponent_team_South_Korea
    .word txt_8F_opponent_team_Turkey
    .word txt_90_opponent_team_Poland
    .word txt_91_opponent_team_England
    .word txt_92_opponent_team_Soviet_Union
    .word txt_93_opponent_team_France
    .word txt_94_opponent_team_Mexico
    .word txt_95_opponent_team_Italy
    .word txt_96_opponent_team_Netherlands
    .word txt_97_opponent_team_Argentina
    .word txt_98_opponent_team_West_Germany
    .word txt_99_opponent_team_Brazil
    
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






txt_76_our_team_Sao_Paulo:
    .text "Sao Paulo"
    .byte $FC

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






txt_77_our_team_Nankatsu:
    .text "Nankatsu"
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






txt_78_our_team_Japan:
    .text "Japan"
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






txt_79_opponent_team_Fluminense:
    .text "Fluminense"
    .byte $FC

Fluminense_clone_01:
    .text "Clone 01"
    .byte $FC

Fluminense_clone_02:
    .text "Enrique"
    .byte $FC

Fluminense_clone_03:
    .text "Clone 03"
    .byte $FC

Fluminense_clone_04:
    .text "Adrian"
    .byte $FC

Fluminense_clone_05:
    .text "Barba"
    .byte $FC

Fluminense_clone_06:
    .text "Perez"
    .byte $FC

Fluminense_clone_07:
    .text "Moreras"
    .byte $FC

Fluminense_clone_08:
    .text "Goycoche"
    .byte $FC

Fluminense_clone_09:
    .text "Dragan"
    .byte $FC

Fluminense_clone_10:
    .text "Ongania"
    .byte $FC

Fluminense_clone_11:
    .text "Milla"
    .byte $FC






txt_7A_opponent_team_Corinthians:
    .text "Corinthians"
    .byte $FC

Corinthians_clone_01:
    .text "Pujet"
    .byte $FC

Corinthians_clone_02:
    .text "De Rada"
    .byte $FC

Corinthians_clone_03:
    .text "Vives"
    .byte $FC

Corinthians_clone_04:
    .text "Miyaji"
    .byte $FC

Corinthians_clone_05:
    .text "Nita"
    .byte $FC

Corinthians_clone_06:
    .text "Nabairo"
    .byte $FC

Corinthians_clone_07:
    .text "Genoth"
    .byte $FC

Corinthians_clone_08:
    .text "Magish"
    .byte $FC

txt_23_opponent_player_Satrustegui:     ; 09
    .byte $10, $11, $12, $13, $14, $15, $16, $17
    .byte $FC

txt_24_opponent_player_Ribeiro:         ; 10
    .text "Ribeiro"
    .byte $FC

Corinthians_clone_11:
    .text "Raia"
    .byte $FC






txt_7B_opponent_team_Gremio:
    .text "Gremio"
    .byte $FC

txt_26_opponent_player_Meon:        ; 01
    .text "Meon"
    .byte $FC

Gremio_clone_02:
    .text "Cochran"
    .byte $FC

Gremio_clone_03:
    .text "Dio"
    .byte $FC

Gremio_clone_04:
    .text "Takiha"
    .byte $FC

Gremio_clone_05:
    .text "Jasma"
    .byte $FC

Gremio_clone_06:
    .text "Tapies"
    .byte $FC

Gremio_clone_07:
    .text "Faria"
    .byte $FC

Gremio_clone_08:
    .text "Klimt"
    .byte $FC

txt_25_opponent_player_Danil_Silva:     ; 09
    .byte $18, $19, $1A, $1B, $1C, $1D, $1E, $1F
    .byte $FC

Gremio_clone_10:
    .text "Spinoza"
    .byte $FC

Gremio_clone_11:
    .text "Madero"
    .byte $FC






txt_7C_opponent_team_Palmeiras:
    .text "Palmeiras"
    .byte $FC

Palmeiras_clone_01:
    .text "Clone 01"
    .byte $FC

Palmeiras_clone_02:
    .text "Mira"
    .byte $FC

Palmeiras_clone_03:
    .text "Blanco"
    .byte $FC

Palmeiras_clone_04:
    .text "Keegan"
    .byte $FC

Palmeiras_clone_05:
    .text "Oluges"
    .byte $FC

Palmeiras_clone_06:
    .text "Caceres"
    .byte $FC

Palmeiras_clone_07:
    .text "Buendia"
    .byte $FC

Palmeiras_clone_08:
    .text "Rincon"
    .byte $FC

txt_27_opponent_player_Toninho:     ; 09
    .text "Toninho"
    .byte $FC

Palmeiras_clone_10:
    .text "Guerrero"
    .byte $FC

txt_28_opponent_player_Nei:         ; 11
    .text "Nei"
    .byte $FC






txt_7D_opponent_team_Santos:
    .text "Santos"
    .byte $FC

Santos_clone_01:
    .text "Clone 01"
    .byte $FC

Santos_clone_02:
    .text "Clone 02"
    .byte $FC

Santos_clone_03:
    .text "Clone 03"
    .byte $FC

txt_2A_opponent_player_Dirceu:      ; 04
    .text "Dirceu"
    .byte $FC

Santos_clone_05:
    .text "Clone 05"
    .byte $FC

Santos_clone_06:
    .text "Clone 06"
    .byte $FC

Santos_clone_07:
    .text "Clone 07"
    .byte $FC

Santos_clone_08:
    .text "Clone 08"
    .byte $FC

txt_29_opponent_player_Zagallo:     ; 09
    .text "Zagallo"
    .byte $FC

Santos_clone_10:
    .text "Clone 10"
    .byte $FC

Santos_clone_11:
    .text "Clone 11"
    .byte $FC






txt_7E_opponent_team_Flamengo:
    .text "Flamengo"
    .byte $FC

Flamengo_clone_01:
    .text "Lasley"
    .byte $FC

txt_2D_opponent_player_Jetorio:     ; 02
    .text "Jetorio"
    .byte $FC

Flamengo_clone_03:
    .text "Sanos"
    .byte $FC

Flamengo_clone_04:
    .text "Sorilha"
    .byte $FC

Flamengo_clone_05:
    .text "Biao"
    .byte $FC

txt_2C_opponent_player_Santamaria:
    .byte $60, $21, $22, $23, $24, $25, $26, $27
    .byte $FC

Flamengo_clone_07:
    .text "Tarutz"
    .byte $FC

Flamengo_clone_08:
    .text "Isies"
    .byte $FC

Flamengo_clone_09:
    .text "Wirsen"
    .byte $FC

txt_2B_opponent_player_Carlos:
    .text "Carlos"
    .byte $FC

Flamengo_clone_11:
    .text "Falla"
    .byte $FC






txt_7F_opponent_team_Kunimi:
    .text "Kunimi"
    .byte $FC

Kunimi_clone_01:
    .text "Clone 01"
    .byte $FC

Kunimi_clone_02:
    .text "Clone 02"
    .byte $FC

Kunimi_clone_03:
    .text "Clone 03"
    .byte $FC

txt_2E_opponent_player_Jitou:       ; 04
    .text "Jitou"
    .byte $FC

Kunimi_clone_05:
    .text "Clone 05"
    .byte $FC

Kunimi_clone_06:
    .text "Clone 06"
    .byte $FC

Kunimi_clone_07:
    .text "Clone 07"
    .byte $FC

Kunimi_clone_08:
    .text "Clone 08"
    .byte $FC

txt_2F_opponent_player_Sano:        ; 09
    .text "Sano"
    .byte $FC

Kunimi_clone_10:
    .text "Clone 10"
    .byte $FC

Kunimi_clone_11:
    .text "Clone 11"
    .byte $FC






txt_80_opponent_team_Akita:
    .text "Akita"
    .byte $FC

Akita_clone_01:
    .text "Clone 01"
    .byte $FC

Akita_clone_02:
    .text "Clone 02"
    .byte $FC

Akita_clone_03:
    .text "Clone 03"
    .byte $FC

Akita_clone_04:
    .text "Clone 04"
    .byte $FC

Akita_clone_05:
    .text "Clone 05"
    .byte $FC

Akita_clone_06:
    .text "Clone 06"
    .byte $FC

Akita_clone_07:
    .text "Clone 07"
    .byte $FC

Akita_clone_08:
    .text "Clone 08"
    .byte $FC

txt_30_opponent_player_Masao:       ; 09
    .text "Masao"
    .byte $FC

Akita_clone_10:
    .text "Clone 10"
    .byte $FC

txt_31_opponent_player_Kazuo:       ; 11
    .text "Kazuo"
    .byte $FC






txt_81_opponent_team_Tatsunami:
    .text "Tatsunami"
    .byte $FC

txt_33_opponent_player_Nakanishi:       ; 01
    .byte $10, $11, $12, $13, $14, $15, $16, $17
    .byte $FC

Tatsunami_clone_02:
    .text "Clone 02"
    .byte $FC

Tatsunami_clone_03:
    .text "Clone 03"
    .byte $FC

txt_32_opponent_player_Souda:
    .text "Souda"
    .byte $FC

Tatsunami_clone_05:
    .text "Clone 05"
    .byte $FC

Tatsunami_clone_06:
    .text "Clone 06"
    .byte $FC

Tatsunami_clone_07:
    .text "Clone 07"
    .byte $FC

Tatsunami_clone_08:
    .text "Clone 08"
    .byte $FC

Tatsunami_clone_09:
    .text "Clone 09"
    .byte $FC

Tatsunami_clone_10:
    .text "Clone 10"
    .byte $FC

Tatsunami_clone_11:
    .text "Clone 11"
    .byte $FC






txt_82_opponent_team_Musashi:
    .text "Musashi"
    .byte $FC

Musashi_clone_01:
    .text "Tazawa"
    .byte $FC

Musashi_clone_02:
    .text "Kanda"
    .byte $FC

Musashi_clone_03:
    .text "Yamamoto"
    .byte $FC

Musashi_clone_04:
    .text "Sano"
    .byte $FC

Musashi_clone_05:
    .text "Kido"
    .byte $FC

Musashi_clone_06:
    .text "Nakajima"
    .byte $FC

Musashi_clone_07:
    .text "Mukai"
    .byte $FC

Musashi_clone_08:
    .text "Ichinose"
    .byte $FC

Musashi_clone_09:
    .text "Honma"
    .byte $FC

Musashi_clone_10:
    .text "Sanada"
    .byte $FC

Musashi_clone_11:
    .text "Kojima"
    .byte $FC

txt_34_opponent_player_Misugi:      ; bench 10
    .text "Misugi"
    .byte $FC






txt_83_opponent_team_Furano:
    .text "Furano"
    .byte $FC

Furano_clone_01:
    .text "Kato"
    .byte $FC

Furano_clone_02:
    .text "Kondo"
    .byte $FC

Furano_clone_03:
    .text "Matsuda"
    .byte $FC

Furano_clone_04:
    .text "Clone 04"
    .byte $FC

Furano_clone_05:
    .text "Sase"
    .byte $FC

Furano_clone_06:
    .text "Honda"
    .byte $FC

Furano_clone_07:
    .text "Nakagawa"
    .byte $FC

Furano_clone_08:
    .text "Yamamuro"
    .byte $FC

Furano_clone_09:
    .text "Kaneda"
    .byte $FC

txt_35_opponent_player_Matsuyama:
    .byte $18, $19, $1A, $1B, $1C, $1D, $1E, $1F
    .byte $FC

Furano_clone_11:
    .text "Oda"
    .byte $FC






txt_84_opponent_team_Toho:
    .text "Toho"
    .byte $FC

txt_39_opponent_player_Wakashimazu:     ; 01
    .byte $28, $29, $2A, $2B, $2C, $2D, $2E, $2F
    .byte $FC

Toho_clone_02:
    .text "Clone 02"
    .byte $FC

Toho_clone_03:
    .text "Clone 03"
    .byte $FC

Toho_clone_04:
    .text "Clone 04"
    .byte $FC

Toho_clone_05:
    .text "Clone 05"
    .byte $FC

txt_38_opponent_player_Sawada:      ; 06
    .text "Sawada"
    .byte $FC

Toho_clone_07:
    .text "Clone 07"
    .byte $FC

Toho_clone_08:
    .text "Clone 08"
    .byte $FC

txt_36_opponent_player_Hyuga:       ; 09
    .text "Hyuga"
    .byte $FC

txt_37_opponent_player_Sorimachi:   ; 10
    .byte $60, $21, $22, $23, $24, $25, $26, $27
    .byte $FC

Toho_clone_11:
    .text "Clone 11"
    .byte $FC






txt_85_opponent_team_AS_Roma:
    .text "AS Roma"
    .byte $FC

AS_Roma_clone_01:
    .text "Clone 01"
    .byte $FC

AS_Roma_clone_02:
    .text "Clone 02"
    .byte $FC

AS_Roma_clone_03:
    .text "Clone 03"
    .byte $FC

AS_Roma_clone_04:
    .text "Clone 04"
    .byte $FC

AS_Roma_clone_05:
    .text "Clone 05"
    .byte $FC

AS_Roma_clone_06:
    .text "Clone 06"
    .byte $FC

AS_Roma_clone_07:
    .text "Clone 07"
    .byte $FC

AS_Roma_clone_08:
    .text "Clone 08"
    .byte $FC

AS_Roma_clone_09:
    .text "Clone 09"
    .byte $FC

AS_Roma_clone_10:
    .text "Clone 10"
    .byte $FC

AS_Roma_clone_11:
    .text "Clone 11"
    .byte $FC

txt_3A_opponent_player_Rampion_:
    .text "Rampion"
    .byte $FC






txt_86_opponent_team_Uruguay:
    .text "Uruguay"
    .byte $FC

Uruguay_clone_01:
    .text "Clone 01"
    .byte $FC

Uruguay_clone_02:
    .text "Clone 02"
    .byte $FC

Uruguay_clone_03:
    .text "Clone 03"
    .byte $FC

Uruguay_clone_04:
    .text "Clone 04"
    .byte $FC

Uruguay_clone_05:
    .text "Clone 05"
    .byte $FC

Uruguay_clone_06:
    .text "Clone 06"
    .byte $FC

Uruguay_clone_07:
    .text "Clone 07"
    .byte $FC

Uruguay_clone_08:
    .text "Clone 08"
    .byte $FC

Uruguay_clone_09:
    .text "Clone 09"
    .byte $FC

Uruguay_clone_10:
    .text "Clone 10"
    .byte $FC

Uruguay_clone_11:
    .text "Clone 11"
    .byte $FC

txt_3B_opponent_player_Victorino:
    .byte $28, $29, $2A, $2B, $2C, $2D, $2E, $2F
    .byte $FC

txt_3C_opponent_player_Danil_Silva:
    .byte $18, $19, $1A, $1B, $1C, $1D, $1E, $1F
    .byte $FC






txt_87_opponent_team_Hamburger_SV:
    .text "Hamburger SV"
    .byte $FC

Hamburger_SV_clone_01:
    .text "Clone 01"
    .byte $FC

Hamburger_SV_clone_02:
    .text "Clone 02"
    .byte $FC

Hamburger_SV_clone_03:
    .text "Clone 03"
    .byte $FC

Hamburger_SV_clone_04:
    .text "Clone 04"
    .byte $FC

Hamburger_SV_clone_05:
    .text "Clone 05"
    .byte $FC

Hamburger_SV_clone_06:
    .text "Clone 06"
    .byte $FC

Hamburger_SV_clone_07:
    .text "Clone 07"
    .byte $FC

Hamburger_SV_clone_08:
    .text "Clone 08"
    .byte $FC

Hamburger_SV_clone_09:
    .text "Clone 09"
    .byte $FC

Hamburger_SV_clone_10:
    .text "Clone 10"
    .byte $FC

Hamburger_SV_clone_11:
    .text "Clone 11"
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






txt_88_opponent_team_Japan:
    .text "Japan"
    .byte $FC

Japan_clone_01:
    .text "Clone 01"
    .byte $FC

Japan_clone_02:
    .text "Clone 02"
    .byte $FC

Japan_clone_03:
    .text "Clone 03"
    .byte $FC

Japan_clone_04:
    .text "Clone 04"
    .byte $FC

Japan_clone_05:
    .text "Clone 05"
    .byte $FC

Japan_clone_06:
    .text "Clone 06"
    .byte $FC

Japan_clone_07:
    .text "Clone 07"
    .byte $FC

Japan_clone_08:
    .text "Clone 08"
    .byte $FC

Japan_clone_09:
    .text "Clone 09"
    .byte $FC

Japan_clone_10:
    .text "Clone 10"
    .byte $FC

Japan_clone_11:
    .text "Clone 11"
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

txt_45_opponent_player_Misugi:      ; bench player
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






txt_89_opponent_team_Syria:
    .text "Syria"
    .byte $FC

Syria_clone_01:
    .text "Clone 01"
    .byte $FC

Syria_clone_02:
    .text "Clone 02"
    .byte $FC

Syria_clone_03:
    .text "Clone 03"
    .byte $FC

Syria_clone_04:
    .text "Clone 04"
    .byte $FC

Syria_clone_05:
    .text "Clone 05"
    .byte $FC

Syria_clone_06:
    .text "Clone 06"
    .byte $FC

Syria_clone_07:
    .text "Clone 07"
    .byte $FC

Syria_clone_08:
    .text "Clone 08"
    .byte $FC

Syria_clone_09:
    .text "Clone 09"
    .byte $FC

Syria_clone_10:
    .text "Clone 10"
    .byte $FC

Syria_clone_11:
    .text "Clone 11"
    .byte $FC






txt_8A_opponent_team_China:
    .text "China"
    .byte $FC

China_clone_01:
    .text "Clone 01"
    .byte $FC

China_clone_02:
    .text "Clone 02"
    .byte $FC

China_clone_03:
    .text "Clone 03"
    .byte $FC

China_clone_04:
    .text "Clone 04"
    .byte $FC

China_clone_05:
    .text "Clone 05"
    .byte $FC

China_clone_06:
    .text "Clone 06"
    .byte $FC

China_clone_07:
    .text "Clone 07"
    .byte $FC

China_clone_08:
    .text "Clone 08"
    .byte $FC

China_clone_09:
    .text "Clone 09"
    .byte $FC

China_clone_10:
    .text "Clone 10"
    .byte $FC

China_clone_11:
    .text "Clone 11"
    .byte $FC

txt_4D_opponent_player_Li_Han_ne:
    .byte $01, $02, $03, $04, $05, $06, $07             ; Li Han-ne
    .byte $FC

txt_4E_opponent_player_Li_Ban_kun:
    .byte $08, $09, $0A, $0B, $0C, $0D, $0E, $0F        ; Li Ban-kun
    .byte $FC






txt_8B_opponent_team_Iran:
    .text "Iran"
    .byte $FC

Iran_clone_01:
    .text "Clone 01"
    .byte $FC

Iran_clone_02:
    .text "Clone 02"
    .byte $FC

Iran_clone_03:
    .text "Clone 03"
    .byte $FC

Iran_clone_04:
    .text "Clone 04"
    .byte $FC

Iran_clone_05:
    .text "Clone 05"
    .byte $FC

Iran_clone_06:
    .text "Clone 06"
    .byte $FC

Iran_clone_07:
    .text "Clone 07"
    .byte $FC

Iran_clone_08:
    .text "Clone 08"
    .byte $FC

Iran_clone_09:
    .text "Clone 09"
    .byte $FC

Iran_clone_10:
    .text "Clone 10"
    .byte $FC

Iran_clone_11:
    .text "Clone 11"
    .byte $FC






txt_8C_opponent_team_North_Korea:
    .text "North Korea"
    .byte $FC

North_Korea_clone_01:
    .text "Clone 01"
    .byte $FC

North_Korea_clone_02:
    .text "Clone 02"
    .byte $FC

North_Korea_clone_03:
    .text "Clone 03"
    .byte $FC

North_Korea_clone_04:
    .text "Clone 04"
    .byte $FC

North_Korea_clone_05:
    .text "Clone 05"
    .byte $FC

North_Korea_clone_06:
    .text "Clone 06"
    .byte $FC

North_Korea_clone_07:
    .text "Clone 07"
    .byte $FC

North_Korea_clone_08:
    .text "Clone 08"
    .byte $FC

North_Korea_clone_09:
    .text "Clone 09"
    .byte $FC

North_Korea_clone_10:
    .text "Clone 10"
    .byte $FC

North_Korea_clone_11:
    .text "Clone 11"
    .byte $FC






txt_8D_opponent_team_Saudi_Arabia:
    .text "Saudi Arabia"
    .byte $FC

Saudi_Arabia_clone_01:
    .text "Clone 01"
    .byte $FC

Saudi_Arabia_clone_02:
    .text "Clone 02"
    .byte $FC

Saudi_Arabia_clone_03:
    .text "Clone 03"
    .byte $FC

Saudi_Arabia_clone_04:
    .text "Clone 04"
    .byte $FC

Saudi_Arabia_clone_05:
    .text "Clone 05"
    .byte $FC

Saudi_Arabia_clone_06:
    .text "Clone 06"
    .byte $FC

Saudi_Arabia_clone_07:
    .text "Clone 07"
    .byte $FC

Saudi_Arabia_clone_08:
    .text "Clone 08"
    .byte $FC

Saudi_Arabia_clone_09:
    .text "Clone 09"
    .byte $FC

Saudi_Arabia_clone_10:
    .text "Clone 10"
    .byte $FC

Saudi_Arabia_clone_11:
    .text "Clone 11"
    .byte $FC






txt_8E_opponent_team_South_Korea:
    .text "South Korea"
    .byte $FC

South_Korea_clone_01:
    .text "Clone 01"
    .byte $FC

South_Korea_clone_02:
    .text "Clone 02"
    .byte $FC

South_Korea_clone_03:
    .text "Clone 03"
    .byte $FC

South_Korea_clone_04:
    .text "Clone 04"
    .byte $FC

South_Korea_clone_05:
    .text "Clone 05"
    .byte $FC

South_Korea_clone_06:
    .text "Clone 06"
    .byte $FC

South_Korea_clone_07:
    .text "Clone 07"
    .byte $FC

South_Korea_clone_08:
    .text "Clone 08"
    .byte $FC

South_Korea_clone_09:
    .text "Clone 09"
    .byte $FC

South_Korea_clone_10:
    .text "Clone 10"
    .byte $FC

South_Korea_clone_11:
    .text "Clone 11"
    .byte $FC

txt_4F_opponent_player_Sha:
    .text "Sha"
    .byte $FC

txt_50_opponent_player_Kim:
    .text "Kim"
    .byte $FC






txt_8F_opponent_team_Turkey:
    .text "Turkey"
    .byte $FC

Turkey_clone_01:
    .text "Clone 01"
    .byte $FC

Turkey_clone_02:
    .text "Clone 02"
    .byte $FC

Turkey_clone_03:
    .text "Clone 03"
    .byte $FC

Turkey_clone_04:
    .text "Clone 04"
    .byte $FC

Turkey_clone_05:
    .text "Clone 05"
    .byte $FC

Turkey_clone_06:
    .text "Clone 06"
    .byte $FC

Turkey_clone_07:
    .text "Clone 07"
    .byte $FC

Turkey_clone_08:
    .text "Clone 08"
    .byte $FC

Turkey_clone_09:
    .text "Clone 09"
    .byte $FC

Turkey_clone_10:
    .text "Clone 10"
    .byte $FC

Turkey_clone_11:
    .text "Clone 11"
    .byte $FC






txt_90_opponent_team_Poland:
    .text "Poland"
    .byte $FC

Poland_clone_01:
    .text "Clone 01"
    .byte $FC

Poland_clone_02:
    .text "Clone 02"
    .byte $FC

Poland_clone_03:
    .text "Clone 03"
    .byte $FC

Poland_clone_04:
    .text "Clone 04"
    .byte $FC

Poland_clone_05:
    .text "Clone 05"
    .byte $FC

Poland_clone_06:
    .text "Clone 06"
    .byte $FC

Poland_clone_07:
    .text "Clone 07"
    .byte $FC

Poland_clone_08:
    .text "Clone 08"
    .byte $FC

Poland_clone_09:
    .text "Clone 09"
    .byte $FC

Poland_clone_10:
    .text "Clone 10"
    .byte $FC

Poland_clone_11:
    .text "Clone 11"
    .byte $FC

txt_51_opponent_player_Macher:
    .text "Macher"
    .byte $FC

txt_52_opponent_player_Djazic:
    .text "Djazic"
    .byte $FC





txt_91_opponent_team_England:
    .text "England"
    .byte $FC

England_clone_01:
    .text "Clone 01"
    .byte $FC

England_clone_02:
    .text "Clone 02"
    .byte $FC

England_clone_03:
    .text "Clone 03"
    .byte $FC

England_clone_04:
    .text "Clone 04"
    .byte $FC

England_clone_05:
    .text "Clone 05"
    .byte $FC

England_clone_06:
    .text "Clone 06"
    .byte $FC

England_clone_07:
    .text "Clone 07"
    .byte $FC

England_clone_08:
    .text "Clone 08"
    .byte $FC

England_clone_09:
    .text "Clone 09"
    .byte $FC

England_clone_10:
    .text "Clone 10"
    .byte $FC

England_clone_11:
    .text "Clone 11"
    .byte $FC

txt_53_opponent_player_Lorimar:
    .text "Lorimar"
    .byte $FC

txt_54_opponent_player_Robson:
    .text "Robson"
    .byte $FC






txt_92_opponent_team_Soviet_Union:
    .text "Soviet Union"
    .byte $FC

Soviet_Union_clone_01:
    .text "Clone 01"
    .byte $FC

Soviet_Union_clone_02:
    .text "Clone 02"
    .byte $FC

Soviet_Union_clone_03:
    .text "Clone 03"
    .byte $FC

Soviet_Union_clone_04:
    .text "Clone 04"
    .byte $FC

Soviet_Union_clone_05:
    .text "Clone 05"
    .byte $FC

Soviet_Union_clone_06:
    .text "Clone 06"
    .byte $FC

Soviet_Union_clone_07:
    .text "Clone 07"
    .byte $FC

Soviet_Union_clone_08:
    .text "Clone 08"
    .byte $FC

Soviet_Union_clone_09:
    .text "Clone 09"
    .byte $FC

Soviet_Union_clone_10:
    .text "Clone 10"
    .byte $FC

Soviet_Union_clone_11:
    .text "Clone 11"
    .byte $FC

txt_55_opponent_player_Belaev:
    .text "Belaev"
    .byte $FC

txt_56_opponent_player_Rashin:
    .text "Rashin"
    .byte $FC






txt_93_opponent_team_France:
    .text "France"
    .byte $FC

France_clone_01:
    .text "Clone 01"
    .byte $FC

France_clone_02:
    .text "Clone 02"
    .byte $FC

France_clone_03:
    .text "Clone 03"
    .byte $FC

France_clone_04:
    .text "Clone 04"
    .byte $FC

France_clone_05:
    .text "Clone 05"
    .byte $FC

France_clone_06:
    .text "Clone 06"
    .byte $FC

France_clone_07:
    .text "Clone 07"
    .byte $FC

France_clone_08:
    .text "Clone 08"
    .byte $FC

France_clone_09:
    .text "Clone 09"
    .byte $FC

France_clone_10:
    .text "Clone 10"
    .byte $FC

France_clone_11:
    .text "Clone 11"
    .byte $FC

txt_57_opponent_player_Napoleon:
    .text "Napoleon"
    .byte $FC

txt_58_opponent_player_Pierre:
    .text "Pierre"
    .byte $FC






txt_94_opponent_team_Mexico:
    .text "Mexico"
    .byte $FC

Mexico_clone_01:
    .text "Clone 01"
    .byte $FC

Mexico_clone_02:
    .text "Clone 02"
    .byte $FC

Mexico_clone_03:
    .text "Clone 03"
    .byte $FC

Mexico_clone_04:
    .text "Clone 04"
    .byte $FC

Mexico_clone_05:
    .text "Clone 05"
    .byte $FC

Mexico_clone_06:
    .text "Clone 06"
    .byte $FC

Mexico_clone_07:
    .text "Clone 07"
    .byte $FC

Mexico_clone_08:
    .text "Clone 08"
    .byte $FC

Mexico_clone_09:
    .text "Clone 09"
    .byte $FC

Mexico_clone_10:
    .text "Clone 10"
    .byte $FC

Mexico_clone_11:
    .text "Clone 11"
    .byte $FC

txt_59_opponent_player_Espana:
    .text "Espana"
    .byte $FC






txt_95_opponent_team_Italy:
    .text "Italy"
    .byte $FC

Italy_clone_01:
    .text "Clone 01"
    .byte $FC

Italy_clone_02:
    .text "Clone 02"
    .byte $FC

Italy_clone_03:
    .text "Clone 03"
    .byte $FC

Italy_clone_04:
    .text "Clone 04"
    .byte $FC

Italy_clone_05:
    .text "Clone 05"
    .byte $FC

Italy_clone_06:
    .text "Clone 06"
    .byte $FC

Italy_clone_07:
    .text "Clone 07"
    .byte $FC

Italy_clone_08:
    .text "Clone 08"
    .byte $FC

Italy_clone_09:
    .text "Clone 09"
    .byte $FC

Italy_clone_10:
    .text "Clone 10"
    .byte $FC

Italy_clone_11:
    .text "Clone 11"
    .byte $FC

txt_5A_opponent_player_Rampion_:
    .text "Rampion"
    .byte $FC

txt_5B_opponent_player_Hernandez:
    .byte $08, $09, $0A, $0B, $0C, $0D, $0E, $0F
    .byte $FC






txt_96_opponent_team_Netherlands:
    .text "Netherlands"
    .byte $FC

Netherlands_clone_01:
    .text "Clone 01"
    .byte $FC

Netherlands_clone_02:
    .text "Clone 02"
    .byte $FC

Netherlands_clone_03:
    .text "Clone 03"
    .byte $FC

Netherlands_clone_04:
    .text "Clone 04"
    .byte $FC

Netherlands_clone_05:
    .text "Clone 05"
    .byte $FC

Netherlands_clone_06:
    .text "Clone 06"
    .byte $FC

Netherlands_clone_07:
    .text "Clone 07"
    .byte $FC

Netherlands_clone_08:
    .text "Clone 08"
    .byte $FC

Netherlands_clone_09:
    .text "Clone 09"
    .byte $FC

Netherlands_clone_10:
    .text "Clone 10"
    .byte $FC

Netherlands_clone_11:
    .text "Clone 11"
    .byte $FC

txt_5C_opponent_player_Islas:
    .text "Islas"
    .byte $FC

txt_5D_opponent_player_Libuta:
    .text "Libuta"
    .byte $FC






txt_97_opponent_team_Argentina:
    .text "Argentina"
    .byte $FC

Argentina_clone_01:
    .text "Clone 01"
    .byte $FC

Argentina_clone_02:
    .text "Clone 02"
    .byte $FC

Argentina_clone_03:
    .text "Clone 03"
    .byte $FC

Argentina_clone_04:
    .text "Clone 04"
    .byte $FC

Argentina_clone_05:
    .text "Clone 05"
    .byte $FC

Argentina_clone_06:
    .text "Clone 06"
    .byte $FC

Argentina_clone_07:
    .text "Clone 07"
    .byte $FC

Argentina_clone_08:
    .text "Clone 08"
    .byte $FC

Argentina_clone_09:
    .text "Clone 09"
    .byte $FC

Argentina_clone_10:
    .text "Clone 10"
    .byte $FC

Argentina_clone_11:
    .text "Clone 11"
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






txt_98_opponent_team_West_Germany:
    .text "West Germany"
    .byte $FC

West_Germany_clone_01:
    .text "Clone 01"
    .byte $FC

West_Germany_clone_02:
    .text "Clone 02"
    .byte $FC

West_Germany_clone_03:
    .text "Clone 03"
    .byte $FC

West_Germany_clone_04:
    .text "Clone 04"
    .byte $FC

West_Germany_clone_05:
    .text "Clone 05"
    .byte $FC

West_Germany_clone_06:
    .text "Clone 06"
    .byte $FC

West_Germany_clone_07:
    .text "Clone 07"
    .byte $FC

West_Germany_clone_08:
    .text "Clone 08"
    .byte $FC

West_Germany_clone_09:
    .text "Clone 09"
    .byte $FC

West_Germany_clone_10:
    .text "Clone 10"
    .byte $FC

West_Germany_clone_11:
    .text "Clone 11"
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






txt_99_opponent_team_Brazil:
    .text "Brazil"
    .byte $FC

Brazil_clone_01:
    .text "Clone 01"
    .byte $FC

Brazil_clone_02:
    .text "Clone 02"
    .byte $FC

Brazil_clone_03:
    .text "Clone 03"
    .byte $FC

Brazil_clone_04:
    .text "Clone 04"
    .byte $FC

Brazil_clone_05:
    .text "Clone 05"
    .byte $FC

Brazil_clone_06:
    .text "Clone 06"
    .byte $FC

Brazil_clone_07:
    .text "Clone 07"
    .byte $FC

Brazil_clone_08:
    .text "Clone 08"
    .byte $FC

Brazil_clone_09:
    .text "Clone 09"
    .byte $FC

Brazil_clone_10:
    .text "Clone 10"
    .byte $FC

Brazil_clone_11:
    .text "Clone 11"
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