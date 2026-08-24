# My Action Bar | Stworzony przez MrKazanek 

# Scoreboardy do obliczen
scoreboard objectives add actionclock_time dummy
scoreboard objectives add actionclock_hours dummy
scoreboard objectives add actionclock_minutes dummy
scoreboard objectives add action_pack_notice dummy

# Stale zmienne
scoreboard players set #day_length actionclock_time 24000
scoreboard players set #hour_ticks actionclock_time 1000
scoreboard players set #const60 actionclock_time 60
scoreboard players set #timer actionclock_time 0

# Triggery od ustawien graczy
scoreboard objectives add show trigger "Action Bar Visibility"
scoreboard objectives add show_clock trigger "Clock Visibility"
scoreboard objectives add default trigger "Default Settings"
scoreboard objectives add set_color trigger "Action Bar Text Color"
scoreboard objectives add dynamic_clock_color trigger "Dynamic color"
scoreboard objectives add show_weather_info trigger "Weather Info Visibility"
scoreboard objectives add show_days trigger "Days Visibility"
scoreboard objectives add show_days_prefix trigger "Days Prefix"
scoreboard objectives add show_cordinates trigger "Cordinates Visibility"
scoreboard objectives add show_cordinates_prefix trigger "Cordinates Prefix"
scoreboard objectives add separators trigger "Decoration"
scoreboard objectives add external_separators trigger "External Decoration"
scoreboard objectives add display_order trigger "Display Order"
scoreboard objectives add weather_info_type trigger "Icon or Full Name"
scoreboard objectives add time_format trigger "12h or 24h"
scoreboard objectives add text_style trigger "Action Bar Text Formating"
scoreboard objectives add show_facing_direction trigger "Facing Direction Visibility"
scoreboard objectives add facing_direction_type trigger "Short or Full Name of Facing Direction"
scoreboard objectives add facing_direction_advanced trigger "Advanced Facing Directions"
scoreboard objectives add show_player_head trigger "Player Head Visibility"
scoreboard objectives add language trigger "Action Bar Language"
scoreboard objectives add version trigger "My Action Bar Version"
scoreboard objectives add random trigger "Randomize Actionbar Settings"

# triggery odblokowane dla gracza
scoreboard players enable @a show
scoreboard players enable @a show_clock
scoreboard players enable @a default
scoreboard players enable @a set_color
scoreboard players enable @a dynamic_clock_color
scoreboard players enable @a show_weather_info
scoreboard players enable @a show_days
scoreboard players enable @a show_days_prefix
scoreboard players enable @a show_cordinates
scoreboard players enable @a show_cordinates_prefix
scoreboard players enable @a separators
scoreboard players enable @a external_separators
scoreboard players enable @a display_order
scoreboard players enable @a weather_info_type
scoreboard players enable @a time_format
scoreboard players enable @a text_style
scoreboard players enable @a show_facing_direction
scoreboard players enable @a facing_direction_type
scoreboard players enable @a facing_direction_advanced
scoreboard players enable @a show_player_head
scoreboard players enable @a language

execute as @a unless score @s action_pack_notice matches 1 run function actionclock:first_setup

# Testowe


# execute as @a run scoreboard players set @s dynamic_clock_color 1
# execute as @a run scoreboard players set @s show_weather_info 1
# execute as @a run scoreboard players set @s show_days 1
# execute as @a run scoreboard players set @s show_days_prefix 0
# execute as @a run scoreboard players set @s show_cordinates 0
# execute as @a run scoreboard players set @s show_cordinates_prefix 0



# Do rozszerzen
function #actionclock:api/setup

# say [ActionClock] Zaladowany!