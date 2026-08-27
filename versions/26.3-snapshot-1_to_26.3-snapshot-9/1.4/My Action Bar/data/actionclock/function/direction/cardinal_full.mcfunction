# My Action Bar | Stworzony przez MrKazanek 

execute if entity @s[y_rotation=-45..45] run data modify storage actionclock:player facing_text set value "South"
execute if entity @s[y_rotation=45..135] run data modify storage actionclock:player facing_text set value "West"
execute if entity @s[y_rotation=135..180] run data modify storage actionclock:player facing_text set value "North"
execute if entity @s[y_rotation=-180..-135] run data modify storage actionclock:player facing_text set value "North"
execute if entity @s[y_rotation=-135..-45] run data modify storage actionclock:player facing_text set value "East"