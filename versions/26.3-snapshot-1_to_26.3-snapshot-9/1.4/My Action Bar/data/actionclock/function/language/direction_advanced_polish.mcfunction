# My Action Bar | Stworzony przez MrKazanek 

execute if entity @s[y_rotation=-22.5..22.5] run data modify storage actionclock:player facing_text set value "Południe"
execute if entity @s[y_rotation=22.5..67.5] run data modify storage actionclock:player facing_text set value "Południowy-Zachód"
execute if entity @s[y_rotation=67.5..112.5] run data modify storage actionclock:player facing_text set value "Zachód"
execute if entity @s[y_rotation=112.5..157.5] run data modify storage actionclock:player facing_text set value "Północny-Zachód"
execute if entity @s[y_rotation=157.5..180] run data modify storage actionclock:player facing_text set value "Północ"
execute if entity @s[y_rotation=-180..-157.5] run data modify storage actionclock:player facing_text set value "Północ"
execute if entity @s[y_rotation=-157.5..-112.5] run data modify storage actionclock:player facing_text set value "Północny-Wschód"
execute if entity @s[y_rotation=-112.5..-67.5] run data modify storage actionclock:player facing_text set value "Wschód"
execute if entity @s[y_rotation=-67.5..-22.5] run data modify storage actionclock:player facing_text set value "Południowy-Wschód"