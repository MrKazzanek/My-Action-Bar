# My Action Bar | Stworzony przez MrKazanek 

# Przeliczanie 24h na 12h
scoreboard players operation #hours12 actionclock_time = #hours actionclock_time


execute if score #hours actionclock_time matches 13..23 run scoreboard players remove #hours12 actionclock_time 12


execute if score #hours actionclock_time matches 0 run scoreboard players set #hours12 actionclock_time 12


execute store result storage actionclock:player hours12 int 1 run scoreboard players get #hours12 actionclock_time


data modify storage actionclock:player ampm set value "AM"
execute if score #hours actionclock_time matches 12..23 run data modify storage actionclock:player ampm set value "PM"

# Wyswietlenie
execute if score #minutes actionclock_time matches 10..59 run function actionclock:clock/format_12h_mm with storage actionclock:player
execute if score #minutes actionclock_time matches 0..9 run function actionclock:clock/format_12h_0m with storage actionclock:player