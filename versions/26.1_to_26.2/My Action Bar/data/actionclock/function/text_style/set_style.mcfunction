# My Action Bar | Stworzony przez MrKazanek 

# Domyslne wartosci
data modify storage actionclock:player bold set value "false"
data modify storage actionclock:player underlined set value "false"
data modify storage actionclock:player italic set value "false"
data modify storage actionclock:player strikethrough set value "false"

# Podkreslenie - 1
execute if score @s text_style matches 1 run data modify storage actionclock:player underlined set value "true"

# Pogrubienie - 2
execute if score @s text_style matches 2 run data modify storage actionclock:player bold set value "true"

# Podkreslenie i Pogrubienie - 3
execute if score @s text_style matches 3 run data modify storage actionclock:player underlined set value "true"
execute if score @s text_style matches 3 run data modify storage actionclock:player bold set value "true"

# Kursywa - 4
execute if score @s text_style matches 4 run data modify storage actionclock:player italic set value "true"

# Kursywa i Pogrubienie - 5
execute if score @s text_style matches 5 run data modify storage actionclock:player italic set value "true"
execute if score @s text_style matches 5 run data modify storage actionclock:player bold set value "true"

# Kursywa i Podkreslenie - 6
execute if score @s text_style matches 6 run data modify storage actionclock:player italic set value "true"
execute if score @s text_style matches 6 run data modify storage actionclock:player underlined set value "true"

# Kursywa, Podkreslenie i Pogrubienie - 7
execute if score @s text_style matches 7 run data modify storage actionclock:player italic set value "true"
execute if score @s text_style matches 7 run data modify storage actionclock:player underlined set value "true"
execute if score @s text_style matches 7 run data modify storage actionclock:player bold set value "true"

# Przekreslenie - 8
execute if score @s text_style matches 8 run data modify storage actionclock:player strikethrough set value "true"

# Przekreslenie i Pogrubienie - 9
execute if score @s text_style matches 9 run data modify storage actionclock:player strikethrough set value "true"
execute if score @s text_style matches 9 run data modify storage actionclock:player bold set value "true"

# Przekreslenie i Podkreslenie - 10
execute if score @s text_style matches 10 run data modify storage actionclock:player strikethrough set value "true"
execute if score @s text_style matches 10 run data modify storage actionclock:player underlined set value "true"

# Przekreslenie i Kursywa - 11
execute if score @s text_style matches 11 run data modify storage actionclock:player strikethrough set value "true"
execute if score @s text_style matches 11 run data modify storage actionclock:player italic set value "true"

# Wszystko naraz - 12
execute if score @s text_style matches 12 run data modify storage actionclock:player bold set value "true"
execute if score @s text_style matches 12 run data modify storage actionclock:player underlined set value "true"
execute if score @s text_style matches 12 run data modify storage actionclock:player italic set value "true"
execute if score @s text_style matches 12 run data modify storage actionclock:player strikethrough set value "true"



