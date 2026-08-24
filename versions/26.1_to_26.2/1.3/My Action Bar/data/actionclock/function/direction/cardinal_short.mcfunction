# My Action Bar | Stworzony przez MrKazanek 

execute if entity @s[y_rotation=-45..45] run data modify storage actionclock:player facing_text set value "S"
execute if entity @s[y_rotation=45..135] run data modify storage actionclock:player facing_text set value "W"
execute if entity @s[y_rotation=135..180] run data modify storage actionclock:player facing_text set value "N"
execute if entity @s[y_rotation=-180..-135] run data modify storage actionclock:player facing_text set value "N"
execute if entity @s[y_rotation=-135..-45] run data modify storage actionclock:player facing_text set value "E"