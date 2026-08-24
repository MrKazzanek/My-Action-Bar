# My Action Bar | Stworzony przez MrKazanek 

execute if entity @s[y_rotation=-22.5..22.5] run data modify storage actionclock:player facing_text set value "POŁUDNIE"
execute if entity @s[y_rotation=22.5..67.5] run data modify storage actionclock:player facing_text set value "POŁUDNIOWY-ZACHÓD"
execute if entity @s[y_rotation=67.5..112.5] run data modify storage actionclock:player facing_text set value "ZACHÓD"
execute if entity @s[y_rotation=112.5..157.5] run data modify storage actionclock:player facing_text set value "PÓŁNOCNY-ZACHÓD"
execute if entity @s[y_rotation=157.5..180] run data modify storage actionclock:player facing_text set value "PÓŁNOC"
execute if entity @s[y_rotation=-180..-157.5] run data modify storage actionclock:player facing_text set value "PÓŁNOC"
execute if entity @s[y_rotation=-157.5..-112.5] run data modify storage actionclock:player facing_text set value "PÓŁNOCNY-WSCHÓD"
execute if entity @s[y_rotation=-112.5..-67.5] run data modify storage actionclock:player facing_text set value "WSCHÓD"
execute if entity @s[y_rotation=-67.5..-22.5] run data modify storage actionclock:player facing_text set value "POŁUDNIOWY-WSCHÓD"