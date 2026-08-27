# My Action Bar | Stworzony przez MrKazanek 

# Pobieranie i formatowanie kordow gracza
data modify storage actionclock:player coords_text set value ""

execute if score @s show_cordinates matches 1 run execute store result storage actionclock:player x int 1 run data get entity @s Pos[0]
execute if score @s show_cordinates matches 1 run execute store result storage actionclock:player y int 1 run data get entity @s Pos[1]
execute if score @s show_cordinates matches 1 run execute store result storage actionclock:player z int 1 run data get entity @s Pos[2]

execute if score @s show_cordinates matches 1 if score @s show_cordinates_prefix matches 0 run function actionclock:coords/simple with storage actionclock:player
execute if score @s show_cordinates matches 1 if score @s show_cordinates_prefix matches 1 if score @s language matches 0 run function actionclock:coords/prefix with storage actionclock:player
execute if score @s show_cordinates matches 1 if score @s show_cordinates_prefix matches 1 if score @s language matches 1 run function actionclock:language/coords_polish with storage actionclock:player