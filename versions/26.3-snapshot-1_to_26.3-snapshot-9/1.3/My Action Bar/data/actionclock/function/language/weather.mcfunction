# My Action Bar | Stworzony przez MrKazanek 
execute if score @s language matches 0 run data modify storage actionclock:player prefix set from storage actionclock:display prefix_text
execute if score @s language matches 1 if data storage actionclock:display {prefix_emoji:"☀"} run data modify storage actionclock:player prefix set value "Słońce"
execute if score @s language matches 1 if data storage actionclock:display {prefix_emoji:"🌧"} run data modify storage actionclock:player prefix set value "Deszcz"
execute if score @s language matches 1 if data storage actionclock:display {prefix_emoji:"⚡"} run data modify storage actionclock:player prefix set value "Burza"
execute if score @s language matches 1 if data storage actionclock:display {prefix_emoji:"❄"} run data modify storage actionclock:player prefix set value "Śnieg"
execute if score @s language matches 1 if data storage actionclock:display {prefix_emoji:"❄⚡"} run data modify storage actionclock:player prefix set value "Śnieżyca"