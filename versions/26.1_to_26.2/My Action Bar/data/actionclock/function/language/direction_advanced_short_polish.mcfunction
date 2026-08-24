# My Action Bar | Stworzony przez MrKazanek 

execute if entity @s[y_rotation=-22.5..22.5] run data modify storage actionclock:player facing_text set value "Pd"
execute if entity @s[y_rotation=22.5..67.5] run data modify storage actionclock:player facing_text set value "Pd-Z"
execute if entity @s[y_rotation=67.5..112.5] run data modify storage actionclock:player facing_text set value "Z"
execute if entity @s[y_rotation=112.5..157.5] run data modify storage actionclock:player facing_text set value "Pn-Z"
execute if entity @s[y_rotation=157.5..180] run data modify storage actionclock:player facing_text set value "Pn"
execute if entity @s[y_rotation=-180..-157.5] run data modify storage actionclock:player facing_text set value "Pn"
execute if entity @s[y_rotation=-157.5..-112.5] run data modify storage actionclock:player facing_text set value "Pn-W"
execute if entity @s[y_rotation=-112.5..-67.5] run data modify storage actionclock:player facing_text set value "W"
execute if entity @s[y_rotation=-67.5..-22.5] run data modify storage actionclock:player facing_text set value "Pd-W"