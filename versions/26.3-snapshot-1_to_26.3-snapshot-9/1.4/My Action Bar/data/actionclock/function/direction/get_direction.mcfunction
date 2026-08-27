# My Action Bar | Stworzony przez MrKazanek 

# Pobieranie i formatowanie kierunku pgracza #Kazanek
data modify storage actionclock:player facing_text set value ""

execute if score @s show_facing_direction matches 1 if score @s facing_direction_advanced matches 0 if score @s facing_direction_type matches 0 if score @s language matches 0 run function actionclock:direction/cardinal_full
execute if score @s show_facing_direction matches 1 if score @s facing_direction_advanced matches 0 if score @s facing_direction_type matches 0 if score @s language matches 1 run function actionclock:language/direction_cardinal_polish
execute if score @s show_facing_direction matches 1 if score @s facing_direction_advanced matches 0 if score @s facing_direction_type matches 1 if score @s language matches 0 run function actionclock:direction/cardinal_short
execute if score @s show_facing_direction matches 1 if score @s facing_direction_advanced matches 0 if score @s facing_direction_type matches 1 if score @s language matches 1 run function actionclock:language/direction_cardinal_short_polish
execute if score @s show_facing_direction matches 1 if score @s facing_direction_advanced matches 1 if score @s facing_direction_type matches 0 if score @s language matches 0 run function actionclock:direction/advanced_full
execute if score @s show_facing_direction matches 1 if score @s facing_direction_advanced matches 1 if score @s facing_direction_type matches 0 if score @s language matches 1 run function actionclock:language/direction_advanced_polish
execute if score @s show_facing_direction matches 1 if score @s facing_direction_advanced matches 1 if score @s facing_direction_type matches 1 if score @s language matches 0 run function actionclock:direction/advanced_short
execute if score @s show_facing_direction matches 1 if score @s facing_direction_advanced matches 1 if score @s facing_direction_type matches 1 if score @s language matches 1 run function actionclock:language/direction_advanced_short_polish