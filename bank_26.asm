.segment "BANK_26"
.include "copy_bank_ram.inc"
.include "copy_bank_val.inc"
.org $C000



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
; заставить игру читать имя из RAM
    LDA #< $7FE0
    STA ram_0030
    LDA #> $7FE0
    STA ram_0031
    RTS



tbl_teams_with_clones:
; запасные бразильские имена https://captaintsubasa.fandom.com/wiki/Category:Brazil%27s_clubs
; запасные арабские имена https://parenting.firstcry.com/articles/100-unique-arabic-baby-names-for-boys/
    .word _team_Fluminense
    .word _team_Corinthians
    .word _team_Gremio
    .word _team_Palmeiras
    .word _team_Santos
    .word _team_Flamengo
    .word _team_Kunimi
    .word _team_Akita
    .word _team_Tatsunami
    .word _team_Musashi
    .word _team_Furano
    .word _team_Toho
    .word _team_AS_Roma
    .word _team_Uruguay
    .word _team_Hamburger_SV
    .word _team_Japan
    .word _team_Syria
    .word _team_China
    .word _team_Iran
    .word _team_North_Korea
    .word _team_Saudi_Arabia
    .word _team_South_Korea
    .word _team_Turkey
    .word _team_Poland
    .word _team_England
    .word _team_Soviet_Union
    .word _team_France
    .word _team_Mexico
    .word _team_Italy
    .word _team_Netherlands
    .word _team_Argentina
    .word _team_West_Germany
    .word _team_Brazil



_team_Fluminense:
; https://captaintsubasa.fandom.com/wiki/Fluminense_(Tecmo)
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

_team_Corinthians:
; https://captaintsubasa.fandom.com/wiki/Corinthians_Youth_(Tecmo)
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

_team_Gremio:
; https://captaintsubasa.fandom.com/wiki/Gremio_Youth_(Tecmo)
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

_team_Palmeiras:
; https://tsubasa.im/global/en/npc_deck/?id=160211&event_type=1&world=16&stage=16021
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

_team_Santos:
; https://captaintsubasa.fandom.com/wiki/Barcelona_(Tecmo)
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

_team_Flamengo:
; https://tsubasa.im/global/en/npc_deck/?id=71611&event_type=1&world=7&stage=7161
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

_team_Kunimi:
; https://tsubasa.im/global/en/npc_deck/?id=80911&event_type=1&world=8&stage=8091
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

_team_Akita:
; https://tsubasa.im/global/en/npc_deck/?id=80211&event_type=1&world=8&stage=8021
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

_team_Tatsunami:
; https://tsubasa.im/global/en/npc_deck/?id=80411&event_type=1&world=8&stage=8041
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

_team_Musashi:
; https://tsubasa.im/global/en/npc_deck/?id=11111&event_type=1&world=1&stage=1111
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

_team_Furano:
; https://tsubasa.im/global/en/npc_deck/?id=41311&event_type=1&world=4&stage=4131
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

_team_Toho:
; https://tsubasa.im/global/en/npc_deck/?id=30911&event_type=1&world=3&stage=3091
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

_team_AS_Roma:
; https://captaintsubasa.fandom.com/wiki/Roma_(Tecmo)
    .word AS_Roma_clone_01
    .word AS_Roma_clone_02
    .word AS_Roma_clone_03
    .word AS_Roma_clone_04
    .word AS_Roma_clone_05
    .word AS_Roma_clone_06
    .word AS_Roma_clone_07
    .word AS_Roma_clone_08
    .word $0000
    .word AS_Roma_clone_10
    .word AS_Roma_clone_11

_team_Uruguay:
; https://tsubasa.im/global/en/npc_deck/?id=130711&event_type=1&world=13&stage=13071
    .word Uruguay_clone_01
    .word Uruguay_clone_02
    .word Uruguay_clone_03
    .word Uruguay_clone_04
    .word Uruguay_clone_05
    .word Uruguay_clone_06
    .word Uruguay_clone_07
    .word Uruguay_clone_08
    .word $0000
    .word Uruguay_clone_10
    .word $0000

_team_Hamburger_SV:
; https://tsubasa.im/global/en/npc_deck/?id=180911&event_type=1&world=18&stage=18091
    .word $0000
    .word Hamburger_SV_clone_02
    .word Hamburger_SV_clone_03
    .word Hamburger_SV_clone_04
    .word Hamburger_SV_clone_05
    .word $0000
    .word $0000
    .word Hamburger_SV_clone_08
    .word Hamburger_SV_clone_09
    .word $0000
    .word Hamburger_SV_clone_11

_team_Japan:
    .word $0000
    .word $0000
    .word $0000
    .word $0000
    .word $0000
    .word $0000
    .word $0000
    .word $0000
    .word $0000
    .word $0000
    .word $0000

_team_Syria:
; http://www.firstnamesbaby.com/Names-By-Country/Syrian/Boy/
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

_team_China:
; https://tsubasa.im/global/en/npc_deck/?id=111011&event_type=1&world=11&stage=11101
    .word China_clone_01
    .word China_clone_02
    .word China_clone_03
    .word China_clone_04
    .word China_clone_05
    .word China_clone_06
    .word China_clone_07
    .word China_clone_08
    .word $0000
    .word China_clone_10
    .word $0000

_team_Iran:
; https://www.behindthename.com/names/gender/masculine/usage/persian
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

_team_North_Korea:
; https://captaintsubasa.fandom.com/wiki/South_Korea_(Tecmo)
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

_team_Saudi_Arabia:
; https://tsubasa.im/global/en/npc_deck/?id=110411&event_type=1&world=11&stage=11041
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

_team_South_Korea:
; https://tsubasa.im/global/en/npc_deck/?id=120411&event_type=1&world=12&stage=12041
    .word South_Korea_clone_01
    .word South_Korea_clone_02
    .word South_Korea_clone_03
    .word South_Korea_clone_04
    .word South_Korea_clone_05
    .word South_Korea_clone_06
    .word South_Korea_clone_07
    .word South_Korea_clone_08
    .word $0000
    .word $0000
    .word South_Korea_clone_11

_team_Turkey:
; https://parenting.firstcry.com/articles/50-turkish-baby-names-for-boys/
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

_team_Poland:
; https://www.behindthename.com/names/gender/masculine/usage/polish
    .word $0000
    .word Poland_clone_02
    .word Poland_clone_03
    .word Poland_clone_04
    .word Poland_clone_05
    .word Poland_clone_06
    .word Poland_clone_07
    .word Poland_clone_08
    .word Poland_clone_09
    .word Poland_clone_10
    .word $0000

_team_England:
; https://tsubasa.im/global/en/npc_deck/?id=51311&event_type=1&world=5&stage=5131
    .word England_clone_01
    .word England_clone_02
    .word England_clone_03
    .word $0000
    .word England_clone_05
    .word England_clone_06
    .word England_clone_07
    .word England_clone_08
    .word $0000
    .word England_clone_10
    .word England_clone_11

_team_Soviet_Union:
; https://en.wikipedia.org/wiki/List_of_surnames_in_Russia
    .word $0000
    .word Soviet_Union_clone_02
    .word Soviet_Union_clone_03
    .word Soviet_Union_clone_04
    .word Soviet_Union_clone_05
    .word Soviet_Union_clone_06
    .word Soviet_Union_clone_07
    .word Soviet_Union_clone_08
    .word $0000
    .word Soviet_Union_clone_10
    .word Soviet_Union_clone_11

_team_France:
; https://tsubasa.im/global/en/npc_deck/?id=121011&event_type=1&world=12&stage=12101
    .word France_clone_01
    .word France_clone_02
    .word France_clone_03
    .word France_clone_04
    .word France_clone_05
    .word France_clone_06
    .word France_clone_07
    .word France_clone_08
    .word $0000
    .word $0000
    .word France_clone_11

_team_Mexico:
; https://tsubasa.im/global/en/npc_deck/?id=130611&event_type=1&world=13&stage=13061
    .word Mexico_clone_01
    .word Mexico_clone_02
    .word Mexico_clone_03
    .word Mexico_clone_04
    .word Mexico_clone_05
    .word Mexico_clone_06
    .word Mexico_clone_07
    .word Mexico_clone_08
    .word Mexico_clone_09
    .word $0000
    .word Mexico_clone_11

_team_Italy:
; https://tsubasa.im/global/en/npc_deck/?id=51011&event_type=1&world=5&stage=5101
    .word $0000
    .word Italy_clone_02
    .word Italy_clone_03
    .word Italy_clone_04
    .word Italy_clone_05
    .word Italy_clone_06
    .word Italy_clone_07
    .word Italy_clone_08
    .word $0000
    .word Italy_clone_10
    .word Italy_clone_11

_team_Netherlands:
; https://tsubasa.im/global/en/npc_deck/?id=140911&event_type=1&world=14&stage=14091
    .word Netherlands_clone_01
    .word Netherlands_clone_02
    .word Netherlands_clone_03
    .word $0000
    .word Netherlands_clone_05
    .word Netherlands_clone_06
    .word Netherlands_clone_07
    .word Netherlands_clone_08
    .word $0000
    .word Netherlands_clone_10
    .word Netherlands_clone_11

_team_Argentina:
; https://tsubasa.im/global/en/npc_deck/?id=131211&event_type=1&world=13&stage=13121
    .word Argentina_clone_01
    .word Argentina_clone_02
    .word Argentina_clone_03
    .word $0000
    .word Argentina_clone_05
    .word Argentina_clone_06
    .word Argentina_clone_07
    .word $0000
    .word $0000
    .word $0000
    .word $0000

_team_West_Germany:
; https://tsubasa.im/global/en/npc_deck/?id=131411&event_type=1&world=13&stage=13141
    .word $0000
    .word West_Germany_clone_02
    .word West_Germany_clone_03
    .word West_Germany_clone_04
    .word $0000
    .word West_Germany_clone_06
    .word $0000
    .word $0000
    .word $0000
    .word $0000
    .word $0000

_team_Brazil:
    .word $0000
    .word $0000
    .word $0000
    .word $0000
    .word $0000
    .word $0000
    .word $0000
    .word $0000
    .word $0000
    .word $0000
    .word $0000



tbl_dictionary:
    .word $0000
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
    .word txt_1B_our_player_Soda
    .word txt_1C_our_player_Jito
    .word txt_1D_our_player_Matsuyama
    .word txt_1E_our_player_Sorimachi
    .word txt_1F_our_player_Sawada
    .word txt_20_our_player_Misugi
    .word txt_21_our_player_Wakabayashi
    .word txt_22_our_player_Wakashimazu
    
    .word txt_23_opponent_player_Satrustegui
    .word txt_24_opponent_player_Ribeiro
    .word txt_25_opponent_player_Da_Silva
    .word txt_26_opponent_player_Meon
    .word txt_27_opponent_player_Toninho
    .word txt_28_opponent_player_Nei
    .word txt_29_opponent_player_Zagallo
    .word txt_2A_opponent_player_Dirceu
    .word txt_2B_opponent_player_Carlos
    .word txt_2C_opponent_player_Santamaria
    .word txt_2D_opponent_player_Jetorio
    .word txt_2E_opponent_player_Jito
    .word txt_2F_opponent_player_Sano
    .word txt_30_opponent_player_Masao
    .word txt_31_opponent_player_Kazuo
    .word txt_32_opponent_player_Soda
    .word txt_33_opponent_player_Nakanishi
    .word txt_34_opponent_player_Misugi
    .word txt_35_opponent_player_Matsuyama
    .word txt_36_opponent_player_Hyuga
    .word txt_37_opponent_player_Sorimachi
    .word txt_38_opponent_player_Sawada
    .word txt_39_opponent_player_Wakashimazu
    .word txt_3A_opponent_player_Rampion_
    .word txt_3B_opponent_player_Victorino
    .word txt_3C_opponent_player_Da_Silva
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
    .word txt_48_opponent_player_Jito
    .word txt_49_opponent_player_Ishizaki
    .word txt_4A_opponent_player_Soda
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
    .word txt_55_opponent_player_Belyaev
    .word txt_56_opponent_player_Rashin
    .word txt_57_opponent_player_Napoleon
    .word txt_58_opponent_player_Pierre
    .word txt_59_opponent_player_Espana
    .word txt_5A_opponent_player_Rampion_
    .word txt_5B_opponent_player_Hernandez
    .word txt_5C_opponent_player_Islas
    .word txt_5D_opponent_player_Libuta
    .word txt_5E_opponent_player_Pascal
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

txt_02_our_player_Renato:               ; 01
    .text "Renato"
    .byte $FC

txt_03_our_player_Lima:                 ; 02
    .text "Lima"
    .byte $FC

txt_04_our_player_Marini:               ; 03
    .text "Marini"
    .byte $FC

txt_05_our_player_Amaral:               ; 04
    .text "Amaral"
    .byte $FC

txt_06_our_player_Dotor:                ; 05
    .text "Dotor"
    .byte $FC

txt_07_our_player_Batista:              ; 06
    .text "Batista"
    .byte $FC

txt_08_our_player_Tahamata:             ; 07
    .text "Tahamata"
    .byte $FC

txt_09_our_player_Babington:            ; 08
    .byte $28, $29, $2A, $2B, $2C, $2D, $2E, $2F
    .byte $FC

txt_0A_our_player_Gil:                  ; 09
    .text "Gil"
    .byte $FC

txt_01_our_player_Tsubasa:              ; 10
    .text "Tsubasa"
    .byte $FC

txt_0B_our_player_Platon:               ; 11
    .text "Platon"
    .byte $FC






txt_77_our_team_Nankatsu:
    .text "Nankatsu"
    .byte $FC

txt_0F_our_player_Morisaki:             ; 01
    .text "Morisaki"
    .byte $FC

txt_0D_our_player_Kishida:              ; 02
    .text "Kishida"
    .byte $FC

txt_0E_our_player_Nakayama:             ; 03
    .text "Nakayama"
    .byte $FC

txt_14_our_player_Ishizaki:             ; 04
    .text "Ishizaki"
    .byte $FC

txt_10_our_player_Takasugi:             ; 05
    .text "Takasugi"
    .byte $FC

txt_0C_our_player_Urabe:                ; 06
    .text "Urabe"
    .byte $FC

txt_13_our_player_Taki:                 ; 07
    .text "Taki"
    .byte $FC

txt_12_our_player_Izawa:                ; 08
    .text "Izawa"
    .byte $FC

txt_15_our_player_Nitta:                ; 09
    .text "Nitta"
    .byte $FC

txt_11_our_player_Misaki:               ; 10
    .text "Misaki"
    .byte $FC

txt_16_our_player_Kisugi:               ; 11
    .text "Kisugi"
    .byte $FC






txt_78_our_team_Japan:
    .text "Japan"
    .byte $FC

txt_22_our_player_Wakashimazu:          ; 01
    .byte $60, $21, $22, $23, $24, $25, $26, $27
    .byte $FC

txt_1B_our_player_Soda:                ; 02
    .text "Soda"
    .byte $FC

txt_1C_our_player_Jito:                ; 03
    .text "Jito"
    .byte $FC

; txt_14_our_player_Ishizaki:           ; 04
;     .text "Ishizaki"
;     .byte $FC

txt_1D_our_player_Matsuyama:            ; 05
    .byte $10, $11, $12, $13, $14, $15, $16, $17
    .byte $FC

txt_17_our_player_Masao:                ; 06
    .text "Masao"
    .byte $FC

txt_18_our_player_Kazuo:                ; 07
    .text "Kazuo"
    .byte $FC

; txt_11_our_player_Misaki:             ; 08
;     .text "Misaki"
;     .byte $FC

txt_1A_our_player_Hyuga:                ; 09
    .text "Hyuga"
    .byte $FC

; txt_01_our_player_Tsubasa:            ; 10
;     .text "Tsubasa"
;     .byte $FC

; txt_15_our_player_Nitta:              ; 11
;     .text "Nitta"
;     .byte $FC

txt_19_our_player_Sano:                 ; sub
    .text "Sano"
    .byte $FC

txt_1F_our_player_Sawada:               ; sub
    .text "Sawada"
    .byte $FC

; txt_10_our_player_Takasugi:           ; sub
;     .text "Takasugi"
;     .byte $FC

; txt_12_our_player_Izawa:              ; sub
;     .text "Izawa"
;     .byte $FC

; txt_13_our_player_Taki:               ; sub
;     .text "Taki"
;     .byte $FC

; txt_16_our_player_Kisugi:             ; sub
;     .text "Kisugi"
;     .byte $FC

txt_1E_our_player_Sorimachi:            ; sub
    .byte $28, $29, $2A, $2B, $2C, $2D, $2E, $2F
    .byte $FC

txt_20_our_player_Misugi:               ; sub
    .text "Misugi"
    .byte $FC

txt_21_our_player_Wakabayashi:          ; sub
    .byte $40, $01, $02, $03, $04, $05, $06, $07
    .byte $FC

; txt_0F_our_player_Morisaki:           ; sub
;     .text "Morisaki"
;     .byte $FC






txt_79_opponent_team_Fluminense:
    .text "Fluminense"
    .byte $FC

Fluminense_clone_01:
    .text $08, $09, $0A, $0B, $0C, $0D, $0E, $0F    ; Lampedosa
    .byte $FC

Fluminense_clone_02:
    .text "Enrique"
    .byte $FC

Fluminense_clone_03:
    .text $18, $19, $1A, $1B, $1C, $1D, $1E, $1F    ; Contreras
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
    .byte $08, $09, $0A, $0B, $0C, $0D, $0E, $0F
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

txt_26_opponent_player_Meon:            ; 01
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

txt_25_opponent_player_Da_Silva:     ; 09
    .byte "Da Silva"
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
    .text "Jaigo"
    .byte $FC

Palmeiras_clone_02:
    .text "Felipe"
    .byte $FC

Palmeiras_clone_03:
    .text "Fabricio"
    .byte $FC

Palmeiras_clone_04:
    .text "Tiego"
    .byte $FC

Palmeiras_clone_05:
    .text "Eduardo"
    .byte $FC

Palmeiras_clone_06:
    .text "Tadeu"
    .byte $FC

Palmeiras_clone_07:
    .text "Euller"
    .byte $FC

Palmeiras_clone_08:
    .text "Oliveira"
    .byte $FC

txt_27_opponent_player_Toninho:         ; 09
    .text "Toninho"
    .byte $FC

Palmeiras_clone_10:
    .text "Fefeu"
    .byte $FC

txt_28_opponent_player_Nei:             ; 11
    .text "Nei"
    .byte $FC






txt_7D_opponent_team_Santos:
    .text "Santos"
    .byte $FC

Santos_clone_01:
    .text "Jose"
    .byte $FC

Santos_clone_02:
    .text "Emilio"
    .byte $FC

Santos_clone_03:
    .text "Gonzales"
    .byte $FC

txt_2A_opponent_player_Dirceu:          ; 04
    .text "Dirceu"
    .byte $FC

Santos_clone_05:
    .text "Protasos"
    .byte $FC

Santos_clone_06:
    .text "Fleming"
    .byte $FC

Santos_clone_07:
    .text "Cesar"
    .byte $FC

Santos_clone_08:
    .text "Franco"
    .byte $FC

txt_29_opponent_player_Zagallo:         ; 09
    .text "Zagallo"
    .byte $FC

Santos_clone_10:
    .text "Ludovico"
    .byte $FC

Santos_clone_11:
    .text "Zamora"
    .byte $FC






txt_7E_opponent_team_Flamengo:
    .text "Flamengo"
    .byte $FC

Flamengo_clone_01:
    .text "Joan"
    .byte $FC

txt_2D_opponent_player_Jetorio:         ; 02
    .text "Jetorio"
    .byte $FC

Flamengo_clone_03:
    .text "Louis"
    .byte $FC

Flamengo_clone_04:
    .text "Emerson"
    .byte $FC

Flamengo_clone_05:
    .text "Fabiana"
    .byte $FC

txt_2C_opponent_player_Santamaria:      ; 06
    .byte $08, $09, $0A, $0B, $0C, $0D, $0E, $0F
    .byte $FC

Flamengo_clone_07:
    .text "Paulo"
    .byte $FC

Flamengo_clone_08:
    .text "Fabio"
    .byte $FC

Flamengo_clone_09:
    .text "Mario"
    .byte $FC

txt_2B_opponent_player_Carlos:          ; 10
    .text "Carlos"
    .byte $FC

Flamengo_clone_11:
    .text "Marcos"
    .byte $FC






txt_7F_opponent_team_Kunimi:
    .text "Kunimi"
    .byte $FC

Kunimi_clone_01:
    .text $08, $09, $0A, $0B, $0C, $0D, $0E, $0F    ; Takenouchi
    .byte $FC

Kunimi_clone_02:
    .text "Kawanaka"
    .byte $FC

Kunimi_clone_03:
    .text "Koshino"
    .byte $FC

txt_2E_opponent_player_Jito:           ; 04
    .text "Jito"
    .byte $FC

Kunimi_clone_05:
    .text "Fujinami"
    .byte $FC

Kunimi_clone_06:
    .text $18, $19, $1A, $1B, $1C, $1D, $1E, $1F    ; Kobayakawa
    .byte $FC

Kunimi_clone_07:
    .text "Higuchi"
    .byte $FC

Kunimi_clone_08:
    .text $28, $29, $2A, $2B, $2C, $2D, $2E, $2F    ; Hashimoto
    .byte $FC

txt_2F_opponent_player_Sano:            ; 09
    .text "Sano"
    .byte $FC

Kunimi_clone_10:
    .text "Okumura"
    .byte $FC

Kunimi_clone_11:
    .text $10, $11, $12, $13, $14, $15, $16, $17    ; Mizushima
    .byte $FC






txt_80_opponent_team_Akita:
    .text "Akita"
    .byte $FC

Akita_clone_01:
    .text "Kikuchi"
    .byte $FC

Akita_clone_02:
    .text $08, $09, $0A, $0B, $0C, $0D, $0E, $0F    ; Shiraishi
    .byte $FC

Akita_clone_03:
    .text "Harada"
    .byte $FC

Akita_clone_04:
    .text "Kono"
    .byte $FC

Akita_clone_05:
    .text "Taniwaki"
    .byte $FC

Akita_clone_06:
    .text "Ayase"
    .byte $FC

Akita_clone_07:
    .text "Yamada"
    .byte $FC

Akita_clone_08:
    .text "Fukuda"
    .byte $FC

txt_30_opponent_player_Masao:           ; 09
    .text "Masao"
    .byte $FC

Akita_clone_10:
    .text "Uchiyama"
    .byte $FC

txt_31_opponent_player_Kazuo:           ; 11
    .text "Kazuo"
    .byte $FC






txt_81_opponent_team_Tatsunami:
    .text "Tatsunami"
    .byte $FC

txt_33_opponent_player_Nakanishi:       ; 01
    .byte $08, $09, $0A, $0B, $0C, $0D, $0E, $0F
    .byte $FC

Tatsunami_clone_02:
    .text "Kawai"
    .byte $FC

Tatsunami_clone_03:
    .text "Ezaki"
    .byte $FC

txt_32_opponent_player_Soda:           ; 04
    .text "Soda"
    .byte $FC

Tatsunami_clone_05:
    .text "Ito"
    .byte $FC

Tatsunami_clone_06:
    .text "Kitaura"
    .byte $FC

Tatsunami_clone_07:
    .text "Sekizawa"
    .byte $FC

Tatsunami_clone_08:
    .text "Saeki"
    .byte $FC

Tatsunami_clone_09:
    .text $18, $19, $1A, $1B, $1C, $1D, $1E, $1F    ; Yamagishi
    .byte $FC

Tatsunami_clone_10:
    .text "Kanai"
    .byte $FC

Tatsunami_clone_11:
    .text "Ishihara"
    .byte $FC






txt_82_opponent_team_Musashi:
    .text "Musashi"
    .byte $FC

Musashi_clone_01:
    .text "Moriyama"
    .byte $FC

Musashi_clone_02:
    .text "Kido"
    .byte $FC

Musashi_clone_03:
    .text "Mukai"
    .byte $FC

Musashi_clone_04:
    .text "Sano"
    .byte $FC

Musashi_clone_05:
    .text "Suzuki"
    .byte $FC

Musashi_clone_06:
    .text "Yoshida"
    .byte $FC

Musashi_clone_07:
    .text "Takizawa"
    .byte $FC

Musashi_clone_08:
    .text "Inoue"
    .byte $FC

Musashi_clone_09:
    .text "Ichinose"
    .byte $FC

Musashi_clone_10:
    .text "Sanada"
    .byte $FC

Musashi_clone_11:
    .text "Honma"
    .byte $FC

txt_34_opponent_player_Misugi:          ; bench 10
    .text "Misugi"
    .byte $FC






txt_83_opponent_team_Furano:
    .text "Furano"
    .byte $FC

Furano_clone_01:
    .text "Kato"
    .byte $FC

Furano_clone_02:
    .text "Honda"
    .byte $FC

Furano_clone_03:
    .text "Kondo"
    .byte $FC

Furano_clone_04:
    .text "Sase"
    .byte $FC

Furano_clone_05:
    .text "Matsuda"
    .byte $FC

Furano_clone_06:
    .text "Kaneda"
    .byte $FC

Furano_clone_07:
    .text $08, $09, $0A, $0B, $0C, $0D, $0E, $0F    ; Wakamatsu
    .byte $FC

Furano_clone_08:
    .text "Nakagawa"
    .byte $FC

Furano_clone_09:
    .text "Oda"
    .byte $FC

txt_35_opponent_player_Matsuyama:       ; 10
    .byte $18, $19, $1A, $1B, $1C, $1D, $1E, $1F
    .byte $FC

Furano_clone_11:
    .text "Yamamuro"
    .byte $FC






txt_84_opponent_team_Toho:
    .text "Toho"
    .byte $FC

txt_39_opponent_player_Wakashimazu:     ; 01
    .byte $08, $09, $0A, $0B, $0C, $0D, $0E, $0F
    .byte $FC

Toho_clone_02:
    .text "Furuta"
    .byte $FC

Toho_clone_03:
    .text "Kawabe"
    .byte $FC

Toho_clone_04:
    .text $18, $19, $1A, $1B, $1C, $1D, $1E, $1F    ; Takashima
    .byte $FC

Toho_clone_05:
    .text "Imai"
    .byte $FC

txt_38_opponent_player_Sawada:          ; 06
    .text "Sawada"
    .byte $FC

Toho_clone_07:
    .text "Koike"
    .byte $FC

Toho_clone_08:
    .text "Matsuki"
    .byte $FC

txt_36_opponent_player_Hyuga:           ; 09
    .text "Hyuga"
    .byte $FC

txt_37_opponent_player_Sorimachi:       ; 10
    .byte $28, $29, $2A, $2B, $2C, $2D, $2E, $2F
    .byte $FC

Toho_clone_11:
    .text "Shimano"
    .byte $FC






txt_85_opponent_team_AS_Roma:
    .text "AS Roma"
    .byte $FC

AS_Roma_clone_01:
    .text "Giovanni"
    .byte $FC

AS_Roma_clone_02:
    .text "Gregucci"
    .byte $FC

AS_Roma_clone_03:
    .text "Annoni"
    .byte $FC

AS_Roma_clone_04:
    .text "Mussi"
    .byte $FC

AS_Roma_clone_05:
    .text "Soldo"
    .byte $FC

AS_Roma_clone_06:
    .text "Jarni"
    .byte $FC

AS_Roma_clone_07:
    .text $08, $09, $0A, $0B, $0C, $0D, $0E, $0F    ; Mondonico
    .byte $FC

AS_Roma_clone_08:
    .text "Sinisa"
    .byte $FC

txt_3A_opponent_player_Rampion_:        ; 09
    .text "Rampion"
    .byte $FC

AS_Roma_clone_10:
    .text "Eduardo"
    .byte $FC

AS_Roma_clone_11:
    .text "Luca"
    .byte $FC






txt_86_opponent_team_Uruguay:
    .text "Uruguay"
    .byte $FC

Uruguay_clone_01:
    .text "Conzales"
    .byte $FC

Uruguay_clone_02:
    .text "Amerigo"
    .byte $FC

Uruguay_clone_03:
    .text "Filippo"
    .byte $FC

Uruguay_clone_04:
    .text "Olivares"
    .byte $FC

Uruguay_clone_05:
    .text "Pazu"
    .byte $FC

Uruguay_clone_06:
    .text "Pedro"
    .byte $FC

Uruguay_clone_07:
    .text "Fengas"
    .byte $FC

Uruguay_clone_08:
    .text "Enrico"
    .byte $FC

txt_3C_opponent_player_Da_Silva:     ; 09
    .byte "Da Silva"
    .byte $FC

Uruguay_clone_10:
    .text "Dionigi"
    .byte $FC

txt_3B_opponent_player_Victorino:       ; 11
    .byte $08, $09, $0A, $0B, $0C, $0D, $0E, $0F
    .byte $FC






txt_87_opponent_team_Hamburger_SV:
    .text "Hamburger SV"
    .byte $FC

txt_40_opponent_player_Wakabayashi:     ; 01
    .byte $08, $09, $0A, $0B, $0C, $0D, $0E, $0F
    .byte $FC

Hamburger_SV_clone_02:
    .text "Meier"
    .byte $FC

Hamburger_SV_clone_03:
    .text "Hoeness"
    .byte $FC

Hamburger_SV_clone_04:
    .text "Gongers"
    .byte $FC

Hamburger_SV_clone_05:
    .text "Linz"
    .byte $FC

txt_3F_opponent_player_Metza:           ; 06
    .text "Metza"
    .byte $FC

txt_3D_opponent_player_Kappelman:       ; 07
    .byte $18, $19, $1A, $1B, $1C, $1D, $1E, $1F
    .byte $FC

Hamburger_SV_clone_08:
    .text "Briegel"
    .byte $FC

Hamburger_SV_clone_09:
    .text "Jaller"
    .byte $FC

txt_3E_opponent_player_Kaltz:           ; 10
    .text "Kaltz"
    .byte $FC

Hamburger_SV_clone_11:
    .text "Klaus"
    .byte $FC






txt_88_opponent_team_Japan:
    .text "Japan"
    .byte $FC

txt_4C_opponent_player_Wakashimazu:     ; 01
    .byte $08, $09, $0A, $0B, $0C, $0D, $0E, $0F
    .byte $FC

txt_48_opponent_player_Jito:           ; 02
    .text "Jito"
    .byte $FC

txt_4A_opponent_player_Soda:           ; 03
    .text "Soda"
    .byte $FC

txt_49_opponent_player_Ishizaki:        ; 04
    .text "Ishizaki"
    .byte $FC

txt_4B_opponent_player_Matsuyama:       ; 05
    .byte $18, $19, $1A, $1B, $1C, $1D, $1E, $1F
    .byte $FC

txt_43_opponent_player_Sano:            ; 06
    .text "Sano"
    .byte $FC

txt_47_opponent_player_Kazuo:           ; 07
    .text "Kazuo"
    .byte $FC

txt_46_opponent_player_Masao:           ; 08
    .text "Masao"
    .byte $FC

txt_41_opponent_player_Hyuga:           ; 09
    .text "Hyuga"
    .byte $FC

txt_44_opponent_player_Misaki:          ; 10
    .text "Misaki"
    .byte $FC

txt_42_opponent_player_Nitta:           ; 11
    .text "Nitta"
    .byte $FC

txt_45_opponent_player_Misugi:          ; bench 11
    .text "Misugi"
    .byte $FC






txt_89_opponent_team_Syria:
    .text "Syria"
    .byte $FC

Syria_clone_01:
    .text "Darwish"
    .byte $FC

Syria_clone_02:
    .text "Kareem"
    .byte $FC

Syria_clone_03:
    .text "Nidal"
    .byte $FC

Syria_clone_04:
    .text "Latif"
    .byte $FC

Syria_clone_05:
    .text "Qamar"
    .byte $FC

Syria_clone_06:
    .text "Ghalib"
    .byte $FC

Syria_clone_07:
    .text "Jericho"
    .byte $FC

Syria_clone_08:
    .text "Najjar"
    .byte $FC

Syria_clone_09:
    .text "Xavier"
    .byte $FC

Syria_clone_10:
    .text "Ismael"
    .byte $FC

Syria_clone_11:
    .text "Fahad"
    .byte $FC






txt_8A_opponent_team_China:
    .text "China"
    .byte $FC

China_clone_01:
    .text "Xu"
    .byte $FC

China_clone_02:
    .text "Fan"
    .byte $FC

China_clone_03:
    .text "Cao"
    .byte $FC

China_clone_04:
    .text "Gao"
    .byte $FC

China_clone_05:
    .text "Xie"
    .byte $FC

China_clone_06:
    .text "Jiang"
    .byte $FC

China_clone_07:
    .text "Hu"
    .byte $FC

China_clone_08:
    .text "Wu"
    .byte $FC

txt_4D_opponent_player_Li_Han_ne:
    .byte $08, $09, $0A, $0B, $0C, $0D, $0E             ; 09 Li Han-ne
    .byte $FC

China_clone_10:
    .text "Fei"
    .byte $FC

txt_4E_opponent_player_Li_Ban_kun:
    .byte $18, $19, $1A, $1B, $1C, $1D, $1E, $1F        ; 11 Li Ban-kun
    .byte $FC






txt_8B_opponent_team_Iran:
    .text "Iran"
    .byte $FC

Iran_clone_01:
    .text "Farrokh"
    .byte $FC

Iran_clone_02:
    .text "Esmail"
    .byte $FC

Iran_clone_03:
    .text "Bakhtiar"
    .byte $FC

Iran_clone_04:
    .text "Rostam"
    .byte $FC

Iran_clone_05:
    .text "Golshan"
    .byte $FC

Iran_clone_06:
    .text "Amir"
    .byte $FC

Iran_clone_07:
    .text "Shahram"
    .byte $FC

Iran_clone_08:
    .text "Hassan"
    .byte $FC

Iran_clone_09:
    .text "Dariush"
    .byte $FC

Iran_clone_10:
    .text "Isa"
    .byte $FC

Iran_clone_11:
    .text "Zartosht"
    .byte $FC






txt_8C_opponent_team_North_Korea:
    .text "North Korea"
    .byte $FC

North_Korea_clone_01:
    .text "Bum"
    .byte $FC

North_Korea_clone_02:
    .text "Yun"
    .byte $FC

North_Korea_clone_03:
    .text "Soo"
    .byte $FC

North_Korea_clone_04:
    .text "Yong"
    .byte $FC

North_Korea_clone_05:
    .text "Tae"
    .byte $FC

North_Korea_clone_06:
    .text "Young"
    .byte $FC

North_Korea_clone_07:
    .text "Jung"
    .byte $FC

North_Korea_clone_08:
    .text "Jeo"
    .byte $FC

North_Korea_clone_09:
    .text "Soon"
    .byte $FC

North_Korea_clone_10:
    .text "Byung"
    .byte $FC

North_Korea_clone_11:
    .text "Joon"
    .byte $FC






txt_8D_opponent_team_Saudi_Arabia:
    .text "Saudi Arabia"
    .byte $FC

Saudi_Arabia_clone_01:
    .text "Diahe"
    .byte $FC

Saudi_Arabia_clone_02:
    .text "Amudin"
    .byte $FC

Saudi_Arabia_clone_03:
    .text "Owairan"
    .byte $FC

Saudi_Arabia_clone_04:
    .text "Fatia"
    .byte $FC

Saudi_Arabia_clone_05:
    .text "Halal"
    .byte $FC

Saudi_Arabia_clone_06:
    .text "Jahar"
    .byte $FC

Saudi_Arabia_clone_07:
    .text "Rashid"
    .byte $FC

Saudi_Arabia_clone_08:
    .text "Ibn"
    .byte $FC

Saudi_Arabia_clone_09:
    .text "Nassar"
    .byte $FC

Saudi_Arabia_clone_10:
    .text "Fatara"
    .byte $FC

Saudi_Arabia_clone_11:
    .text "Ruai"
    .byte $FC






txt_8E_opponent_team_South_Korea:
    .text "South Korea"
    .byte $FC

South_Korea_clone_01:
    .text "Hong"
    .byte $FC

South_Korea_clone_02:
    .text "Jang"
    .byte $FC

South_Korea_clone_03:
    .text "Lim"
    .byte $FC

South_Korea_clone_04:
    .text "Ahn"
    .byte $FC

South_Korea_clone_05:
    .text "Mun"
    .byte $FC

South_Korea_clone_06:
    .text "Park"
    .byte $FC

South_Korea_clone_07:
    .text "Choi"
    .byte $FC

South_Korea_clone_08:
    .text "Yoon"
    .byte $FC

txt_4F_opponent_player_Sha:             ; 09
    .text "Sha"
    .byte $FC

txt_50_opponent_player_Kim:             ; 10
    .text "Kim"
    .byte $FC

South_Korea_clone_11:
    .text "Lee"
    .byte $FC






txt_8F_opponent_team_Turkey:
    .text "Turkey"
    .byte $FC

Turkey_clone_01:
    .text "Latafat"
    .byte $FC

Turkey_clone_02:
    .text "Efe"
    .byte $FC

Turkey_clone_03:
    .text "Tabeeb"
    .byte $FC

Turkey_clone_04:
    .text "Yusuf"
    .byte $FC

Turkey_clone_05:
    .text "Demir"
    .byte $FC

Turkey_clone_06:
    .text "Ibrahim"
    .byte $FC

Turkey_clone_07:
    .text "Cetin"
    .byte $FC

Turkey_clone_08:
    .text "Rifaat"
    .byte $FC

Turkey_clone_09:
    .text "Zehab"
    .byte $FC

Turkey_clone_10:
    .text "Burak"
    .byte $FC

Turkey_clone_11:
    .text "Kahraman"
    .byte $FC






txt_90_opponent_team_Poland:
    .text "Poland"
    .byte $FC

txt_52_opponent_player_Djazic:          ; 01
    .text "Djazic"
    .byte $FC

Poland_clone_02:
    .text "Ziemowit"
    .byte $FC

Poland_clone_03:
    .text "Waldek"
    .byte $FC

Poland_clone_04:
    .text "Serafin"
    .byte $FC

Poland_clone_05:
    .text "Radoslaw"
    .byte $FC

Poland_clone_06:
    .text "Szczesny"
    .byte $FC

Poland_clone_07:
    .text "Czeslaw"
    .byte $FC

Poland_clone_08:
    .text "Alojzy"
    .byte $FC

Poland_clone_09:
    .text "Gawel"
    .byte $FC

Poland_clone_10:
    .text "Milosz"
    .byte $FC

txt_51_opponent_player_Macher:          ; 11
    .text "Macher"
    .byte $FC





txt_91_opponent_team_England:
    .text "England"
    .byte $FC

England_clone_01:
    .text "Robinson"
    .byte $FC

England_clone_02:
    .text "Edgar"
    .byte $FC

England_clone_03:
    .text "Lewis"
    .byte $FC

txt_54_opponent_player_Robson:          ; 04
    .text "Robson"
    .byte $FC

England_clone_05:
    .text "Hamann"
    .byte $FC

England_clone_06:
    .text "Alan"
    .byte $FC

England_clone_07:
    .text "Connelly"
    .byte $FC

England_clone_08:
    .text "Aaron"
    .byte $FC

txt_53_opponent_player_Lorimar:         ; 09
    .text "Lorimar"
    .byte $FC

England_clone_10:
    .text "Dean"
    .byte $FC

England_clone_11:
    .text "Wright"
    .byte $FC






txt_92_opponent_team_Soviet_Union:
    .text "Soviet Union"
    .byte $FC

txt_56_opponent_player_Rashin:          ; 01
    .text "Rashin"
    .byte $FC

Soviet_Union_clone_02:
    .text "Sobolev"
    .byte $FC

Soviet_Union_clone_03:
    .text "Kalinin"
    .byte $FC

Soviet_Union_clone_04:
    .text "Rzhevsky"
    .byte $FC

Soviet_Union_clone_05:
    .text "Telitsyn"
    .byte $FC

Soviet_Union_clone_06:
    .text "Aksyonov"
    .byte $FC

Soviet_Union_clone_07:
    .text "Lyutiy"
    .byte $FC

Soviet_Union_clone_08:
    .text "Boykov"
    .byte $FC

txt_55_opponent_player_Belyaev:         ; 09
    .text "Belyaev"
    .byte $FC

Soviet_Union_clone_10:
    .text "Yermakov"
    .byte $FC

Soviet_Union_clone_11:
    .text "Korneyev"
    .byte $FC






txt_93_opponent_team_France:
    .text "France"
    .byte $FC

France_clone_01:
    .text "Amoros"
    .byte $FC

France_clone_02:
    .text "Bergerus"
    .byte $FC

France_clone_03:
    .text "Rust"
    .byte $FC

France_clone_04:
    .text "Degaulle"
    .byte $FC

France_clone_05:
    .text "Ferreri"
    .byte $FC

France_clone_06:
    .text "Marcel"
    .byte $FC

France_clone_07:
    .text "Bravo"
    .byte $FC

France_clone_08:
    .text "Georges"
    .byte $FC

txt_57_opponent_player_Napoleon:        ; 09
    .text "Napoleon"
    .byte $FC

txt_58_opponent_player_Pierre:          ; 10
    .text "Pierre"
    .byte $FC

France_clone_11:
    .text "Bossis"
    .byte $FC






txt_94_opponent_team_Mexico:
    .text "Mexico"
    .byte $FC

Mexico_clone_01:
    .text "Espadas"
    .byte $FC

Mexico_clone_02:
    .text "Gomez"
    .byte $FC

Mexico_clone_03:
    .text "Espino"
    .byte $FC

Mexico_clone_04:
    .text "Medina"
    .byte $FC

Mexico_clone_05:
    .text "Carvajal"
    .byte $FC

Mexico_clone_06:
    .text "Ribera"
    .byte $FC

Mexico_clone_07:
    .text "Garcia"
    .byte $FC

Mexico_clone_08:
    .text "Suarez"
    .byte $FC

Mexico_clone_09:
    .text "Zaragoza"
    .byte $FC

txt_59_opponent_player_Espana:          ; 10
    .text "Espana"
    .byte $FC

Mexico_clone_11:
    .text "Lopez"
    .byte $FC






txt_95_opponent_team_Italy:
    .text "Italy"
    .byte $FC

txt_5B_opponent_player_Hernandez:       ; 01
    .byte $08, $09, $0A, $0B, $0C, $0D, $0E, $0F
    .byte $FC

Italy_clone_02:
    .text "Torino"
    .byte $FC

Italy_clone_03:
    .text "Marinho"
    .byte $FC

Italy_clone_04:
    .text "Golbate"
    .byte $FC

Italy_clone_05:
    .text "Pagotto"
    .byte $FC

Italy_clone_06:
    .text "Federico"
    .byte $FC

Italy_clone_07:
    .text $18, $19, $1A, $1B, $1C, $1D, $1E, $1F    ; Francesco
    .byte $FC

Italy_clone_08:
    .text "Conti"
    .byte $FC

txt_5A_opponent_player_Rampion_:        ; 09
    .text "Rampion"
    .byte $FC

Italy_clone_10:
    .text "Tardelli"
    .byte $FC

Italy_clone_11:
    .text "Andrea"
    .byte $FC






txt_96_opponent_team_Netherlands:
    .text "Netherlands"
    .byte $FC

Netherlands_clone_01:
    .text "Hans"
    .byte $FC

Netherlands_clone_02:
    .text "Nicolaas"
    .byte $FC

Netherlands_clone_03:
    .text "Peter"
    .byte $FC

txt_5D_opponent_player_Libuta:          ; 04
    .text "Libuta"
    .byte $FC

Netherlands_clone_05:
    .text "Hugo"
    .byte $FC

Netherlands_clone_06:
    .text "Leon"
    .byte $FC

Netherlands_clone_07:
    .text "Maurits"
    .byte $FC

Netherlands_clone_08:
    .text "Brian"
    .byte $FC

txt_5C_opponent_player_Islas:           ; 09
    .text "Islas"
    .byte $FC

Netherlands_clone_10:
    .text "Jovan"
    .byte $FC

Netherlands_clone_11:
    .text "Gert"
    .byte $FC






txt_97_opponent_team_Argentina:
    .text "Argentina"
    .byte $FC

Argentina_clone_01:
    .text "Galtoni"
    .byte $FC

Argentina_clone_02:
    .text "Galeya"
    .byte $FC

Argentina_clone_03:
    .text "Sembero"
    .byte $FC

txt_62_opponent_player_Galvan:          ; 04
    .text "Galvan"
    .byte $FC

Argentina_clone_05:
    .text "Pasaro"
    .byte $FC

Argentina_clone_06:
    .text "Ruggeri"
    .byte $FC

Argentina_clone_07:
    .text "Jeites"
    .byte $FC

txt_61_opponent_player_Babington:       ; 08
    .byte $08, $09, $0A, $0B, $0C, $0D, $0E, $0F
    .byte $FC

txt_5F_opponent_player_Satrustegui:     ; 09
    .byte $18, $19, $1A, $1B, $1C, $1D, $1E, $1F
    .byte $FC

txt_60_opponent_player_Diaz:            ; 10
    .text "Diaz"
    .byte $FC

txt_5E_opponent_player_Pascal:          ; 11
    .text "Pascal"
    .byte $FC






txt_98_opponent_team_West_Germany:
    .text "West Germany"
    .byte $FC

txt_69_opponent_player_Muller:          ; 01
    .text "Muller"
    .byte $FC

West_Germany_clone_02:
    .text "Hain"
    .byte $FC

West_Germany_clone_03:
    .text "Mayer"
    .byte $FC

West_Germany_clone_04:
    .text "Magath"
    .byte $FC

txt_66_opponent_player_Metza:           ; 05
    .text "Metza"
    .byte $FC

West_Germany_clone_06:
    .text "Hardwich"
    .byte $FC

txt_68_opponent_player_Kappelman:       ; 07
    .byte $08, $09, $0A, $0B, $0C, $0D, $0E, $0F
    .byte $FC

txt_65_opponent_player_Kaltz:           ; 08
    .text "Kaltz"
    .byte $FC

txt_64_opponent_player_Margus:          ; 09
    .text "Margus"
    .byte $FC

txt_67_opponent_player_Schester:        ; 10
    .text "Schester"
    .byte $FC

txt_63_opponent_player_Schneider:       ; 11
    .byte $18, $19, $1A, $1B, $1C, $1D, $1E, $1F
    .byte $FC






txt_99_opponent_team_Brazil:
    .text "Brazil"
    .byte $FC

txt_74_opponent_player_Gertise:         ; 01
    .text "Gertise"
    .byte $FC

txt_73_opponent_player_Jetorio:         ; 02
    .text "Jetorio"
    .byte $FC

txt_70_opponent_player_Dotor:           ; 03
    .text "Dotor"
    .byte $FC

txt_71_opponent_player_Amaral:          ; 04
    .text "Amaral"
    .byte $FC

txt_72_opponent_player_Dirceu:          ; 05
    .text "Dirceu"
    .byte $FC

txt_6E_opponent_player_Santamaria:      ; 06
    .byte $08, $09, $0A, $0B, $0C, $0D, $0E, $0F
    .byte $FC

txt_6B_opponent_player_Zagallo:         ; 07
    .text "Zagallo"
    .byte $FC

txt_6F_opponent_player_Toninho:         ; 08
    .text "Toninho"
    .byte $FC

txt_6A_opponent_player_Carlos:          ; 09
    .text "Carlos"
    .byte $FC

txt_6C_opponent_player_Ribeiro:         ; 10
    .text "Ribeiro"
    .byte $FC

txt_6D_opponent_player_Nei:             ; 11
    .text "Nei"
    .byte $FC

txt_75_opponent_player_Coimbra:         ; bench 10
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

off_F859_A2:        ; skylab hurricane
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

off_F92A_B7:        ; unused
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

off_F9D6_CC:        ; unused
    .text "CC "     ; <エッフェルこうげき>
    .byte $FC

off_F9E0_CD:        ; block
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

off_FA00_D1:        ; tackle
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

off_FA29_D6:        ; unused
    .text "D6 "     ; <タックル>
    .byte $FC

off_FA2E_D7:        ; パスカット
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

off_FA4D_DC:        ; unused
    .text "DC "     ; <クリアー>
    .byte $FC

off_FA52_DD:        ; unused
    .text "DD "     ; <せりあい>
    .byte $FC

off_FA57_DE:        ; unused
    .text "DE "     ; <せりあい>
    .byte $FC

off_FA5C_DF:        ; unused
    .text "DF "     ; <フォロー>
    .byte $FC

off_FA61_E0:
    .text "E0 "     ; <キャッチング>
    .byte $FC

off_FA68_E1:        ; unused
    .text "E1 "     ; <ローリングセーブ>
    .byte $FC

off_FA71_E2:        ; unused
    .text "E2 "     ; <ぶんしんセーブ>
    .byte $FC

off_FA79_E3:        ; unused
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



