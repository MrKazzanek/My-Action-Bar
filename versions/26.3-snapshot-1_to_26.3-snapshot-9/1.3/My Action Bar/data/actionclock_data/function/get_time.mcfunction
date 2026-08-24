# My Action Bar | Stworzony przez MrKazanek 

# Pobieranie czasu swiata
execute store result score #raw_time actionclock_time run time query day
execute store result score #days actionclock_time run time query day repetition
execute store result storage actionclock:display days int 1 run scoreboard players get #days actionclock_time



# Surowy czas w tickach
scoreboard players operation #shifted actionclock_time = #raw_time actionclock_time
scoreboard players add #shifted actionclock_time 6000

# Czas brany pod uwage #Kazanek
scoreboard players operation #shifted actionclock_time %= #day_length actionclock_time

# Otrzymanie pelnych godzin
scoreboard players operation #hours actionclock_time = #shifted actionclock_time
scoreboard players operation #hours actionclock_time /= #hour_ticks actionclock_time

# Reszta jaka zostala z godzin
scoreboard players operation #ticks_in_hour actionclock_time = #shifted actionclock_time
scoreboard players operation #ticks_in_hour actionclock_time %= #hour_ticks actionclock_time

# Przeliczanie pozostalych tickow na minuty
scoreboard players operation #minutes actionclock_time = #ticks_in_hour actionclock_time
scoreboard players operation #minutes actionclock_time *= #const60 actionclock_time
scoreboard players operation #minutes actionclock_time /= #hour_ticks actionclock_time