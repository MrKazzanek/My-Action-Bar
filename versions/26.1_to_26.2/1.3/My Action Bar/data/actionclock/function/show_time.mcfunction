# My Action Bar | Stworzony przez MrKazanek 

# Sprawdzanie czy bylo wykonany pierwsze ustawienie
execute unless score @s action_pack_notice matches 1 run function actionclock:first_setup

# Wlaczenie dostepu do triggerow #Kazanek
execute unless score @s show = @s show run scoreboard players set @s show 1
execute unless score @s show_clock = @s show_clock run scoreboard players set @s show_clock 1
execute unless score @s default = @s default run scoreboard players set @s default 0
execute unless score @s set_color = @s set_color run scoreboard players set @s set_color 0
execute unless score @s dynamic_clock_color = @s dynamic_clock_color run scoreboard players set @s dynamic_clock_color 1
execute unless score @s show_weather_info = @s show_weather_info run scoreboard players set @s show_weather_info 1
execute unless score @s show_days = @s show_days run scoreboard players set @s show_days 1
execute unless score @s show_days_prefix = @s show_days_prefix run scoreboard players set @s show_days_prefix 1
execute unless score @s show_cordinates = @s show_cordinates run scoreboard players set @s show_cordinates 0
execute unless score @s show_cordinates_prefix = @s show_cordinates_prefix run scoreboard players set @s show_cordinates_prefix 1
execute unless score @s separators = @s separators run scoreboard players set @s separators 0
execute unless score @s external_separators = @s external_separators run scoreboard players set @s external_separators 0
execute unless score @s display_order = @s display_order run scoreboard players set @s display_order 0
execute unless score @s weather_info_type = @s weather_info_type run scoreboard players set @s weather_info_type 0
execute unless score @s time_format = @s time_format run scoreboard players set @s time_format 0
execute unless score @s text_style = @s text_style run scoreboard players set @s text_style 0
execute unless score @s show_facing_direction = @s show_facing_direction run scoreboard players set @s show_facing_direction 0
execute unless score @s facing_direction_type = @s facing_direction_type run scoreboard players set @s facing_direction_type 0
execute unless score @s facing_direction_advanced = @s facing_direction_advanced run scoreboard players set @s facing_direction_advanced 0
execute unless score @s show_player_head = @s show_player_head run scoreboard players set @s show_player_head 0
execute unless score @s language = @s language run scoreboard players set @s language 0

# Resetowanie do #Kazanek domyslnych ustawien - /trigger reset
execute if score @s default matches 1.. run scoreboard players set @s show 1
execute if score @s default matches 1.. run scoreboard players set @s show_clock 1
execute if score @s default matches 1.. run scoreboard players set @s set_color 0
execute if score @s default matches 1.. run scoreboard players set @s dynamic_clock_color 1
execute if score @s default matches 1.. run scoreboard players set @s show_weather_info 1
execute if score @s default matches 1.. run scoreboard players set @s show_days 1
execute if score @s default matches 1.. run scoreboard players set @s show_days_prefix 1
execute if score @s default matches 1.. run scoreboard players set @s show_cordinates 0
execute if score @s default matches 1.. run scoreboard players set @s show_cordinates_prefix 1
execute if score @s default matches 1.. run scoreboard players set @s separators 0
execute if score @s default matches 1.. run scoreboard players set @s external_separators 0
execute if score @s default matches 1.. run scoreboard players set @s display_order 0
execute if score @s default matches 1.. run scoreboard players set @s weather_info_type 0
execute if score @s default matches 1.. run scoreboard players set @s time_format 0
execute if score @s default matches 1.. run scoreboard players set @s text_style 0
execute if score @s default matches 1.. run scoreboard players set @s show_facing_direction 0
execute if score @s default matches 1.. run scoreboard players set @s facing_direction_type 0
execute if score @s default matches 1.. run scoreboard players set @s facing_direction_advanced 0
execute if score @s default matches 1.. run scoreboard players set @s show_player_head 0
execute if score @s default matches 1.. run scoreboard players set @s language 0
execute if score @s default matches 1.. run tellraw @s {"text":"[My Action Bar] Settings reset to default!","color":"green"}
execute if score @s default matches 1.. run scoreboard players set @s default 0

execute if score @s default matches ..-1 run scoreboard players set @s show 1
execute if score @s default matches ..-1 run scoreboard players set @s show_clock 1
execute if score @s default matches ..-1 run scoreboard players set @s set_color 0
execute if score @s default matches ..-1 run scoreboard players set @s dynamic_clock_color 1
execute if score @s default matches ..-1 run scoreboard players set @s show_weather_info 1
execute if score @s default matches ..-1 run scoreboard players set @s show_days 1
execute if score @s default matches ..-1 run scoreboard players set @s show_days_prefix 1
execute if score @s default matches ..-1 run scoreboard players set @s show_cordinates 0
execute if score @s default matches ..-1 run scoreboard players set @s show_cordinates_prefix 1
execute if score @s default matches ..-1 run scoreboard players set @s separators 0
execute if score @s default matches ..-1 run scoreboard players set @s external_separators 0
execute if score @s default matches ..-1 run scoreboard players set @s display_order 0
execute if score @s default matches ..-1 run scoreboard players set @s weather_info_type 0
execute if score @s default matches ..-1 run scoreboard players set @s time_format 0
execute if score @s default matches ..-1 run scoreboard players set @s text_style 0
execute if score @s default matches ..-1 run scoreboard players set @s show_facing_direction 0
execute if score @s default matches ..-1 run scoreboard players set @s facing_direction_type 0
execute if score @s default matches ..-1 run scoreboard players set @s facing_direction_advanced 0
execute if score @s default matches ..-1 run scoreboard players set @s show_player_head 0
execute if score @s default matches ..-1 run scoreboard players set @s language 0
execute if score @s default matches ..-1 run tellraw @s {"text":"[My Action Bar] Settings reset to default!","color":"green"}
execute if score @s default matches ..-1 run scoreboard players set @s default 0

execute if score @s version matches 1.. run tellraw @s [{"text":"[My Action Bar] ","color":"#fff04d","bold":true},{"text":"Installed Version: ","color":"gray"},{"text":"v1.3","color":"gold","bold":true}]
execute if score @s version matches 1.. run scoreboard players set @s version 0
execute if score @s version matches ..-1 run scoreboard players set @s version 0


# Losowe ustawienia - /trigger random #Kazanek
execute if score @s random matches 1.. run execute store result score @s set_color run random value 0..64
execute if score @s random matches 1.. run execute store result score @s separators run random value 0..64
execute if score @s random matches 1.. run execute store result score @s external_separators run random value 0..64
execute if score @s random matches 1.. run execute store result score @s display_order run random value 0..719
execute if score @s random matches 1.. run execute store result score @s text_style run random value 0..12
execute if score @s random matches 1.. run execute store result score @s time_format run random value 0..1
execute if score @s random matches 1.. run execute store result score @s show_clock run random value 0..1
execute if score @s random matches 1.. run execute store result score @s show_days run random value 0..1
execute if score @s random matches 1.. run execute store result score @s show_cordinates run random value 0..1
execute if score @s random matches 1.. run execute store result score @s show_weather_info run random value 0..1
execute if score @s random matches 1.. run execute store result score @s show_facing_direction run random value 0..1
execute if score @s random matches 1.. run execute store result score @s show_player_head run random value 0..1
execute if score @s random matches 1.. run execute store result score @s dynamic_clock_color run random value 0..1
execute if score @s random matches 1.. run execute store result score @s facing_direction_advanced run random value 0..1
execute if score @s random matches 1.. run execute store result score @s facing_direction_type run random value 0..1
execute if score @s random matches 1.. run execute store result score @s show_days_prefix run random value 0..1
execute if score @s random matches 1.. run execute store result score @s show_cordinates_prefix run random value 0..1
execute if score @s random matches 1.. run execute store result score @s weather_info_type run random value 0..1
execute if score @s random matches 1.. run execute store result score @s language run random value 0..1

execute if score @s random matches 1.. run tellraw @s [{"text":"[My Action Bar] ","color":"#fff04d","bold":true},{"text":"Action Bar settings have been randomized! 🎲","color":"green"}]

execute if score @s random matches 1.. run scoreboard players set @s random 0
execute if score @s random matches ..-1 run scoreboard players set @s random 0
scoreboard players enable @s random

# Funkcje triggerow ktore sie przelaczaja np /trigger show_days oraz zmiana ich niepoprawnych wartosci na poprawne
execute if score @s show matches 2.. run scoreboard players set @s show 0
execute if score @s show matches ..-1 run scoreboard players set @s show 0

execute if score @s show_clock matches 2.. run scoreboard players set @s show_clock 0
execute if score @s show_clock matches ..-1 run scoreboard players set @s show_clock 0

execute if score @s set_color matches 65.. run scoreboard players set @s set_color 0
execute if score @s set_color matches ..-1 run scoreboard players set @s set_color 0

execute if score @s dynamic_clock_color matches 2.. run scoreboard players set @s dynamic_clock_color 0
execute if score @s dynamic_clock_color matches ..-1 run scoreboard players set @s dynamic_clock_color 0

execute if score @s show_weather_info matches 2.. run scoreboard players set @s show_weather_info 0
execute if score @s show_weather_info matches ..-1 run scoreboard players set @s show_weather_info 0

execute if score @s show_days matches 2.. run scoreboard players set @s show_days 0
execute if score @s show_days matches ..-1 run scoreboard players set @s show_days 0

execute if score @s show_days_prefix matches 2.. run scoreboard players set @s show_days_prefix 0
execute if score @s show_days_prefix matches ..-1 run scoreboard players set @s show_days_prefix 0

execute if score @s show_cordinates matches 2.. run scoreboard players set @s show_cordinates 0
execute if score @s show_cordinates matches ..-1 run scoreboard players set @s show_cordinates 0

execute if score @s show_cordinates_prefix matches 2.. run scoreboard players set @s show_cordinates_prefix 0
execute if score @s show_cordinates_prefix matches ..-1 run scoreboard players set @s show_cordinates_prefix 0

execute if score @s separators matches 65.. run scoreboard players set @s separators 0
execute if score @s separators matches ..-1 run scoreboard players set @s separators 0

execute if score @s external_separators matches 65.. run scoreboard players set @s external_separators 0
execute if score @s external_separators matches ..-1 run scoreboard players set @s external_separators 0

execute if score @s display_order matches 720.. run scoreboard players set @s display_order 0
execute if score @s display_order matches ..-1 run scoreboard players set @s display_order 0

execute if score @s weather_info_type matches 2.. run scoreboard players set @s weather_info_type 0
execute if score @s weather_info_type matches ..-1 run scoreboard players set @s weather_info_type 0

execute if score @s time_format matches 2.. run scoreboard players set @s time_format 0
execute if score @s time_format matches ..-1 run scoreboard players set @s time_format 0

execute if score @s text_style matches 13.. run scoreboard players set @s text_style 0
execute if score @s text_style matches ..-1 run scoreboard players set @s text_style 0

execute if score @s show_facing_direction matches 2.. run scoreboard players set @s show_facing_direction 0
execute if score @s show_facing_direction matches ..-1 run scoreboard players set @s show_facing_direction 0

execute if score @s facing_direction_type matches 2.. run scoreboard players set @s facing_direction_type 0
execute if score @s facing_direction_type matches ..-1 run scoreboard players set @s facing_direction_type 0

execute if score @s facing_direction_advanced matches 2.. run scoreboard players set @s facing_direction_advanced 0
execute if score @s facing_direction_advanced matches ..-1 run scoreboard players set @s facing_direction_advanced 0

execute if score @s show_player_head matches 2.. run scoreboard players set @s show_player_head 0
execute if score @s show_player_head matches ..-1 run scoreboard players set @s show_player_head 0

# Zmiana jezyka - /trigger language
execute if score @s language matches 2.. run scoreboard players set @s language 0
execute if score @s language matches ..-1 run scoreboard players set @s language 0

# Ponowne wlaczanie triggerow #Kazanek
scoreboard players enable @s show
scoreboard players enable @s show_clock
scoreboard players enable @s default
scoreboard players enable @s set_color
scoreboard players enable @s dynamic_clock_color
scoreboard players enable @s show_weather_info
scoreboard players enable @s show_days
scoreboard players enable @s show_days_prefix
scoreboard players enable @s show_cordinates
scoreboard players enable @s show_cordinates_prefix
scoreboard players enable @s separators
scoreboard players enable @s external_separators
scoreboard players enable @s display_order
scoreboard players enable @s weather_info_type
scoreboard players enable @s time_format
scoreboard players enable @s text_style
scoreboard players enable @s show_facing_direction
scoreboard players enable @s facing_direction_type
scoreboard players enable @s facing_direction_advanced
scoreboard players enable @s show_player_head
scoreboard players enable @s language
scoreboard players enable @s version


execute if score @s show matches 0 run return 0

# Ustawianie stylu tekstu - /trigger text_style
function actionclock:text_style/set_style

# Przepisanie danych do gracza
data modify storage actionclock:player hours set from storage actionclock:display hours
data modify storage actionclock:player minutes set from storage actionclock:display minutes
data modify storage actionclock:player days set from storage actionclock:display days

# Liczenie dni
data modify storage actionclock:player days_text set value ""
execute if score @s show_days matches 1 if score @s show_days_prefix matches 0 run function actionclock:days/simple with storage actionclock:player
execute if score @s show_days matches 1 if score @s show_days_prefix matches 1 if score @s language matches 0 run function actionclock:days/prefix with storage actionclock:player
execute if score @s show_days matches 1 if score @s show_days_prefix matches 1 if score @s language matches 1 run function actionclock:language/days_polish with storage actionclock:player

# Ustawienie koloru action bara - /trigger set_color
function actionclock:colors/set_player_color

# Pogoda - /trigger show_weather_info oraz /trigger show_weather_info_type
data modify storage actionclock:player prefix set value ""
execute if score @s show_weather_info matches 1 at @s if dimension minecraft:overworld if score @s weather_info_type matches 0 run data modify storage actionclock:player prefix set from storage actionclock:display prefix_emoji
execute if score @s show_weather_info matches 1 at @s if dimension minecraft:overworld if score @s weather_info_type matches 1 run function actionclock:language/weather

# Otrzymanie i formatowanie kordow - /trigger show_cordinates oraz /trigger show_cordinates_prefix
function actionclock:coords/get_coords

# Otrzymanie i formatowanie kierunku - /trigger show_facing_direction, /trigger facing_direction_type oraz /trigger facing_direction_advanced
function actionclock:direction/get_direction

# Formatowanie tekstu zegara - /trigger time_format #Kazanek
data modify storage actionclock:player clock_text set value ""
execute if score @s show_clock matches 1 if score @s time_format matches 0 if score #hours actionclock_time matches 10..23 if score #minutes actionclock_time matches 10..59 run function actionclock:clock/format_24h_hhmm with storage actionclock:player
execute if score @s show_clock matches 1 if score @s time_format matches 0 if score #hours actionclock_time matches 0..9 if score #minutes actionclock_time matches 10..59 run function actionclock:clock/format_24h_0hmm with storage actionclock:player
execute if score @s show_clock matches 1 if score @s time_format matches 0 if score #hours actionclock_time matches 10..23 if score #minutes actionclock_time matches 0..9 run function actionclock:clock/format_24h_hh0m with storage actionclock:player
execute if score @s show_clock matches 1 if score @s time_format matches 0 if score #hours actionclock_time matches 0..9 if score #minutes actionclock_time matches 0..9 run function actionclock:clock/format_24h_0h0m with storage actionclock:player
execute if score @s show_clock matches 1 if score @s time_format matches 1 run function actionclock:clock/format_12h

# Pobranie symboli separatorow wewnetrznych oraz zewnetrznych i ich ustawianie
function actionclock:separators/get_separator
function actionclock:separators/get_external_separator


function actionclock:render/assemble