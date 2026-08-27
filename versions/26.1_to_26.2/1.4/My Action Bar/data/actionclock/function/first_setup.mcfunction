# My Action Bar | Stworzony przez MrKazanek 

# Domyslne ustawienia przy pierwszym zaladowaniu - Stara wersja
# execute as @a at @s unless score @s action_pack_notice matches 1 run scoreboard players set @s show 1
# execute as @a at @s unless score @s action_pack_notice matches 1 run scoreboard players set @s show_clock 1
# execute as @a at @s unless score @s action_pack_notice matches 1 run scoreboard players set @s default 0
# execute as @a at @s unless score @s action_pack_notice matches 1 run scoreboard players set @s set_color 0
# execute as @a at @s unless score @s action_pack_notice matches 1 run scoreboard players set @s dynamic_clock_color 1
# execute as @a at @s unless score @s action_pack_notice matches 1 run scoreboard players set @s show_weather_info 1
# execute as @a at @s unless score @s action_pack_notice matches 1 run scoreboard players set @s show_days 1
# execute as @a at @s unless score @s action_pack_notice matches 1 run scoreboard players set @s show_days_prefix 1
# execute as @a at @s unless score @s action_pack_notice matches 1 run scoreboard players set @s show_cordinates 0
# execute as @a at @s unless score @s action_pack_notice matches 1 run scoreboard players set @s show_cordinates_prefix 1
# execute as @a at @s unless score @s action_pack_notice matches 1 run scoreboard players set @s separators 0
# execute as @a at @s unless score @s action_pack_notice matches 1 run scoreboard players set @s weather_info_type 0
# execute as @a at @s unless score @s action_pack_notice matches 1 run scoreboard players set @s time_format 0
# execute as @a at @s unless score @s action_pack_notice matches 1 run scoreboard players set @s action_pack_notice 1

# Domyslne ustawienia przy pierwszym zaladowaniu - Nowa wersja
scoreboard players set @s show 1
scoreboard players set @s show_clock 1
scoreboard players set @s default 0
scoreboard players set @s set_color 0
scoreboard players set @s dynamic_clock_color 1
scoreboard players set @s show_weather_info 1
scoreboard players set @s show_days 1
scoreboard players set @s show_days_prefix 1
scoreboard players set @s show_cordinates 0
scoreboard players set @s show_cordinates_prefix 1
scoreboard players set @s separators 0
scoreboard players set @s external_separators 0
scoreboard players set @s display_order 0
scoreboard players set @s weather_info_type 0
scoreboard players set @s time_format 0
scoreboard players set @s text_style 0
scoreboard players set @s show_facing_direction 0
scoreboard players set @s facing_direction_type 0
scoreboard players set @s facing_direction_advanced 0
scoreboard players set @s show_player_head 0
scoreboard players set @s language 0
scoreboard players enable @s version
scoreboard players enable @s random
scoreboard players enable @s language
scoreboard players set @s action_pack_notice 1


# Do rozszerzen #Kazanek
function #actionclock:api/first_setup