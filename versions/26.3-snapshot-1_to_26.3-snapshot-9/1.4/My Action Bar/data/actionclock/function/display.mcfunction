# My Action Bar | Stworzony przez MrKazanek 

# Obliczanie czasu #Kazanek
function actionclock_data:get_time
execute store result storage actionclock:display hours int 1 run scoreboard players get #hours actionclock_time
execute store result storage actionclock:display minutes int 1 run scoreboard players get #minutes actionclock_time

# Pobieranie koloru danej godziny
function actionclock:time_color/get_color

# Pobieranie prefixu pogody
function actionclock:weather/get_prefix

# Sprawdzanie triggerow i wyswietlanie #Kazanek
execute as @a at @s run function actionclock:show_time



