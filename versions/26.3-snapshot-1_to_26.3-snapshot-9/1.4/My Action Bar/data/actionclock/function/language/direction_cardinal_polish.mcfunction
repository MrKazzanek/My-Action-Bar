# My Action Bar | Stworzony przez MrKazanek 

execute if entity @s[y_rotation=-45..45] run data modify storage actionclock:player facing_text set value "Południe"
execute if entity @s[y_rotation=45..135] run data modify storage actionclock:player facing_text set value "Zachód"
execute if entity @s[y_rotation=135..180] run data modify storage actionclock:player facing_text set value "Północ"
execute if entity @s[y_rotation=-180..-135] run data modify storage actionclock:player facing_text set value "Północ"
execute if entity @s[y_rotation=-135..-45] run data modify storage actionclock:player facing_text set value "Wschód"