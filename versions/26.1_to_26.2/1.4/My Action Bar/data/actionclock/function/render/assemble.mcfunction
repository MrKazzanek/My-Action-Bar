# My Action Bar | Stworzony przez MrKazanek 

# Czyszczenie tekstu 
data modify storage actionclock:player item1 set value {text:""}
data modify storage actionclock:player item2 set value {text:""}
data modify storage actionclock:player item3 set value {text:""}
data modify storage actionclock:player item4 set value {text:""}
data modify storage actionclock:player item5 set value {text:""}
data modify storage actionclock:player item6 set value {text:""}
data modify storage actionclock:player sep1 set value {text:""}
data modify storage actionclock:player sep2 set value {text:""}
data modify storage actionclock:player sep3 set value {text:""}
data modify storage actionclock:player sep4 set value {text:""}
data modify storage actionclock:player sep5 set value {text:""}

data modify storage actionclock:player d_val set value {text:""}
data modify storage actionclock:player w_val set value {text:""}
data modify storage actionclock:player c_val set value {text:""}
data modify storage actionclock:player x_val set value {text:""}
data modify storage actionclock:player f_val set value {text:""}
data modify storage actionclock:player h_val set value {text:""}

# Przypisanie tekstu 
execute if score @s show_days matches 1 run data modify storage actionclock:player d_val.text set from storage actionclock:player days_text
execute if score @s show_weather_info matches 1 at @s if dimension minecraft:overworld run data modify storage actionclock:player w_val.text set from storage actionclock:player prefix
execute if score @s show_clock matches 1 run data modify storage actionclock:player c_val.text set from storage actionclock:player clock_text
execute if score @s show_cordinates matches 1 run data modify storage actionclock:player x_val.text set from storage actionclock:player coords_text
execute if score @s show_facing_direction matches 1 run data modify storage actionclock:player f_val.text set from storage actionclock:player facing_text

# Glowka gracza #Kazanek
execute if score @s show_player_head matches 1 run data modify storage actionclock:player h_val set value {object:"player",player:{},color:"white"}
execute if score @s show_player_head matches 1 run data modify storage actionclock:player h_val.player.id set from entity @s UUID

# Rozszerzenie
function #actionclock:api/pre_render

# Separatory zewnetrzne
data modify storage actionclock:player ext_sep_left_comp set value {text:""}
data modify storage actionclock:player ext_sep_left_comp.text set from storage actionclock:player ext_sep_left
data modify storage actionclock:player ext_sep_right_comp set value {text:""}
data modify storage actionclock:player ext_sep_right_comp.text set from storage actionclock:player ext_sep_right

# Reset c1..c6
data modify storage actionclock:player c1 set value {text:""}
data modify storage actionclock:player c2 set value {text:""}
data modify storage actionclock:player c3 set value {text:""}
data modify storage actionclock:player c4 set value {text:""}
data modify storage actionclock:player c5 set value {text:""}
data modify storage actionclock:player c6 set value {text:""}

# Display Order  wygenerowane przez program w pythonie bo recznie bym nie wypisal tego wszystkiego
# 0: Dni -> Pogoda -> Zegar -> Kordy -> Kierunek -> Glowka
execute if score @s display_order matches 0 run data modify storage actionclock:player c1 set from storage actionclock:player d_val
execute if score @s display_order matches 0 run data modify storage actionclock:player c2 set from storage actionclock:player w_val
execute if score @s display_order matches 0 run data modify storage actionclock:player c3 set from storage actionclock:player c_val
execute if score @s display_order matches 0 run data modify storage actionclock:player c4 set from storage actionclock:player x_val
execute if score @s display_order matches 0 run data modify storage actionclock:player c5 set from storage actionclock:player f_val
execute if score @s display_order matches 0 run data modify storage actionclock:player c6 set from storage actionclock:player h_val
# 1: Dni -> Pogoda -> Zegar -> Kordy -> Glowka -> Kierunek
execute if score @s display_order matches 1 run data modify storage actionclock:player c1 set from storage actionclock:player d_val
execute if score @s display_order matches 1 run data modify storage actionclock:player c2 set from storage actionclock:player w_val
execute if score @s display_order matches 1 run data modify storage actionclock:player c3 set from storage actionclock:player c_val
execute if score @s display_order matches 1 run data modify storage actionclock:player c4 set from storage actionclock:player x_val
execute if score @s display_order matches 1 run data modify storage actionclock:player c5 set from storage actionclock:player h_val
execute if score @s display_order matches 1 run data modify storage actionclock:player c6 set from storage actionclock:player f_val
# 2: Dni -> Pogoda -> Zegar -> Kierunek -> Kordy -> Glowka
execute if score @s display_order matches 2 run data modify storage actionclock:player c1 set from storage actionclock:player d_val
execute if score @s display_order matches 2 run data modify storage actionclock:player c2 set from storage actionclock:player w_val
execute if score @s display_order matches 2 run data modify storage actionclock:player c3 set from storage actionclock:player c_val
execute if score @s display_order matches 2 run data modify storage actionclock:player c4 set from storage actionclock:player f_val
execute if score @s display_order matches 2 run data modify storage actionclock:player c5 set from storage actionclock:player x_val
execute if score @s display_order matches 2 run data modify storage actionclock:player c6 set from storage actionclock:player h_val
# 3: Dni -> Pogoda -> Zegar -> Kierunek -> Glowka -> Kordy
execute if score @s display_order matches 3 run data modify storage actionclock:player c1 set from storage actionclock:player d_val
execute if score @s display_order matches 3 run data modify storage actionclock:player c2 set from storage actionclock:player w_val
execute if score @s display_order matches 3 run data modify storage actionclock:player c3 set from storage actionclock:player c_val
execute if score @s display_order matches 3 run data modify storage actionclock:player c4 set from storage actionclock:player f_val
execute if score @s display_order matches 3 run data modify storage actionclock:player c5 set from storage actionclock:player h_val
execute if score @s display_order matches 3 run data modify storage actionclock:player c6 set from storage actionclock:player x_val
# 4: Dni -> Pogoda -> Zegar -> Glowka -> Kordy -> Kierunek
execute if score @s display_order matches 4 run data modify storage actionclock:player c1 set from storage actionclock:player d_val
execute if score @s display_order matches 4 run data modify storage actionclock:player c2 set from storage actionclock:player w_val
execute if score @s display_order matches 4 run data modify storage actionclock:player c3 set from storage actionclock:player c_val
execute if score @s display_order matches 4 run data modify storage actionclock:player c4 set from storage actionclock:player h_val
execute if score @s display_order matches 4 run data modify storage actionclock:player c5 set from storage actionclock:player x_val
execute if score @s display_order matches 4 run data modify storage actionclock:player c6 set from storage actionclock:player f_val
# 5: Dni -> Pogoda -> Zegar -> Glowka -> Kierunek -> Kordy
execute if score @s display_order matches 5 run data modify storage actionclock:player c1 set from storage actionclock:player d_val
execute if score @s display_order matches 5 run data modify storage actionclock:player c2 set from storage actionclock:player w_val
execute if score @s display_order matches 5 run data modify storage actionclock:player c3 set from storage actionclock:player c_val
execute if score @s display_order matches 5 run data modify storage actionclock:player c4 set from storage actionclock:player h_val
execute if score @s display_order matches 5 run data modify storage actionclock:player c5 set from storage actionclock:player f_val
execute if score @s display_order matches 5 run data modify storage actionclock:player c6 set from storage actionclock:player x_val
# 6: Dni -> Pogoda -> Kordy -> Zegar -> Kierunek -> Glowka
execute if score @s display_order matches 6 run data modify storage actionclock:player c1 set from storage actionclock:player d_val
execute if score @s display_order matches 6 run data modify storage actionclock:player c2 set from storage actionclock:player w_val
execute if score @s display_order matches 6 run data modify storage actionclock:player c3 set from storage actionclock:player x_val
execute if score @s display_order matches 6 run data modify storage actionclock:player c4 set from storage actionclock:player c_val
execute if score @s display_order matches 6 run data modify storage actionclock:player c5 set from storage actionclock:player f_val
execute if score @s display_order matches 6 run data modify storage actionclock:player c6 set from storage actionclock:player h_val
# 7: Dni -> Pogoda -> Kordy -> Zegar -> Glowka -> Kierunek
execute if score @s display_order matches 7 run data modify storage actionclock:player c1 set from storage actionclock:player d_val
execute if score @s display_order matches 7 run data modify storage actionclock:player c2 set from storage actionclock:player w_val
execute if score @s display_order matches 7 run data modify storage actionclock:player c3 set from storage actionclock:player x_val
execute if score @s display_order matches 7 run data modify storage actionclock:player c4 set from storage actionclock:player c_val
execute if score @s display_order matches 7 run data modify storage actionclock:player c5 set from storage actionclock:player h_val
execute if score @s display_order matches 7 run data modify storage actionclock:player c6 set from storage actionclock:player f_val
# 8: Dni -> Pogoda -> Kordy -> Kierunek -> Zegar -> Glowka
execute if score @s display_order matches 8 run data modify storage actionclock:player c1 set from storage actionclock:player d_val
execute if score @s display_order matches 8 run data modify storage actionclock:player c2 set from storage actionclock:player w_val
execute if score @s display_order matches 8 run data modify storage actionclock:player c3 set from storage actionclock:player x_val
execute if score @s display_order matches 8 run data modify storage actionclock:player c4 set from storage actionclock:player f_val
execute if score @s display_order matches 8 run data modify storage actionclock:player c5 set from storage actionclock:player c_val
execute if score @s display_order matches 8 run data modify storage actionclock:player c6 set from storage actionclock:player h_val
# 9: Dni -> Pogoda -> Kordy -> Kierunek -> Glowka -> Zegar
execute if score @s display_order matches 9 run data modify storage actionclock:player c1 set from storage actionclock:player d_val
execute if score @s display_order matches 9 run data modify storage actionclock:player c2 set from storage actionclock:player w_val
execute if score @s display_order matches 9 run data modify storage actionclock:player c3 set from storage actionclock:player x_val
execute if score @s display_order matches 9 run data modify storage actionclock:player c4 set from storage actionclock:player f_val
execute if score @s display_order matches 9 run data modify storage actionclock:player c5 set from storage actionclock:player h_val
execute if score @s display_order matches 9 run data modify storage actionclock:player c6 set from storage actionclock:player c_val
# 10: Dni -> Pogoda -> Kordy -> Glowka -> Zegar -> Kierunek
execute if score @s display_order matches 10 run data modify storage actionclock:player c1 set from storage actionclock:player d_val
execute if score @s display_order matches 10 run data modify storage actionclock:player c2 set from storage actionclock:player w_val
execute if score @s display_order matches 10 run data modify storage actionclock:player c3 set from storage actionclock:player x_val
execute if score @s display_order matches 10 run data modify storage actionclock:player c4 set from storage actionclock:player h_val
execute if score @s display_order matches 10 run data modify storage actionclock:player c5 set from storage actionclock:player c_val
execute if score @s display_order matches 10 run data modify storage actionclock:player c6 set from storage actionclock:player f_val
# 11: Dni -> Pogoda -> Kordy -> Glowka -> Kierunek -> Zegar
execute if score @s display_order matches 11 run data modify storage actionclock:player c1 set from storage actionclock:player d_val
execute if score @s display_order matches 11 run data modify storage actionclock:player c2 set from storage actionclock:player w_val
execute if score @s display_order matches 11 run data modify storage actionclock:player c3 set from storage actionclock:player x_val
execute if score @s display_order matches 11 run data modify storage actionclock:player c4 set from storage actionclock:player h_val
execute if score @s display_order matches 11 run data modify storage actionclock:player c5 set from storage actionclock:player f_val
execute if score @s display_order matches 11 run data modify storage actionclock:player c6 set from storage actionclock:player c_val
# 12: #Kazanek Dni -> Pogoda -> Kierunek -> Zegar -> Kordy -> Glowka
execute if score @s display_order matches 12 run data modify storage actionclock:player c1 set from storage actionclock:player d_val
execute if score @s display_order matches 12 run data modify storage actionclock:player c2 set from storage actionclock:player w_val
execute if score @s display_order matches 12 run data modify storage actionclock:player c3 set from storage actionclock:player f_val
execute if score @s display_order matches 12 run data modify storage actionclock:player c4 set from storage actionclock:player c_val
execute if score @s display_order matches 12 run data modify storage actionclock:player c5 set from storage actionclock:player x_val
execute if score @s display_order matches 12 run data modify storage actionclock:player c6 set from storage actionclock:player h_val
# 13: Dni -> Pogoda -> Kierunek -> Zegar -> Glowka -> Kordy
execute if score @s display_order matches 13 run data modify storage actionclock:player c1 set from storage actionclock:player d_val
execute if score @s display_order matches 13 run data modify storage actionclock:player c2 set from storage actionclock:player w_val
execute if score @s display_order matches 13 run data modify storage actionclock:player c3 set from storage actionclock:player f_val
execute if score @s display_order matches 13 run data modify storage actionclock:player c4 set from storage actionclock:player c_val
execute if score @s display_order matches 13 run data modify storage actionclock:player c5 set from storage actionclock:player h_val
execute if score @s display_order matches 13 run data modify storage actionclock:player c6 set from storage actionclock:player x_val
# 14: Dni -> Pogoda -> Kierunek -> Kordy -> Zegar -> Glowka
execute if score @s display_order matches 14 run data modify storage actionclock:player c1 set from storage actionclock:player d_val
execute if score @s display_order matches 14 run data modify storage actionclock:player c2 set from storage actionclock:player w_val
execute if score @s display_order matches 14 run data modify storage actionclock:player c3 set from storage actionclock:player f_val
execute if score @s display_order matches 14 run data modify storage actionclock:player c4 set from storage actionclock:player x_val
execute if score @s display_order matches 14 run data modify storage actionclock:player c5 set from storage actionclock:player c_val
execute if score @s display_order matches 14 run data modify storage actionclock:player c6 set from storage actionclock:player h_val
# 15: Dni -> Pogoda -> Kierunek -> Kordy -> Glowka -> Zegar
execute if score @s display_order matches 15 run data modify storage actionclock:player c1 set from storage actionclock:player d_val
execute if score @s display_order matches 15 run data modify storage actionclock:player c2 set from storage actionclock:player w_val
execute if score @s display_order matches 15 run data modify storage actionclock:player c3 set from storage actionclock:player f_val
execute if score @s display_order matches 15 run data modify storage actionclock:player c4 set from storage actionclock:player x_val
execute if score @s display_order matches 15 run data modify storage actionclock:player c5 set from storage actionclock:player h_val
execute if score @s display_order matches 15 run data modify storage actionclock:player c6 set from storage actionclock:player c_val
# 16: Dni -> Pogoda -> Kierunek -> Glowka -> Zegar -> Kordy
execute if score @s display_order matches 16 run data modify storage actionclock:player c1 set from storage actionclock:player d_val
execute if score @s display_order matches 16 run data modify storage actionclock:player c2 set from storage actionclock:player w_val
execute if score @s display_order matches 16 run data modify storage actionclock:player c3 set from storage actionclock:player f_val
execute if score @s display_order matches 16 run data modify storage actionclock:player c4 set from storage actionclock:player h_val
execute if score @s display_order matches 16 run data modify storage actionclock:player c5 set from storage actionclock:player c_val
execute if score @s display_order matches 16 run data modify storage actionclock:player c6 set from storage actionclock:player x_val
# 17: Dni -> Pogoda -> Kierunek -> Glowka -> Kordy -> Zegar
execute if score @s display_order matches 17 run data modify storage actionclock:player c1 set from storage actionclock:player d_val
execute if score @s display_order matches 17 run data modify storage actionclock:player c2 set from storage actionclock:player w_val
execute if score @s display_order matches 17 run data modify storage actionclock:player c3 set from storage actionclock:player f_val
execute if score @s display_order matches 17 run data modify storage actionclock:player c4 set from storage actionclock:player h_val
execute if score @s display_order matches 17 run data modify storage actionclock:player c5 set from storage actionclock:player x_val
execute if score @s display_order matches 17 run data modify storage actionclock:player c6 set from storage actionclock:player c_val
# 18: Dni -> Pogoda -> Glowka -> Zegar -> Kordy -> Kierunek
execute if score @s display_order matches 18 run data modify storage actionclock:player c1 set from storage actionclock:player d_val
execute if score @s display_order matches 18 run data modify storage actionclock:player c2 set from storage actionclock:player w_val
execute if score @s display_order matches 18 run data modify storage actionclock:player c3 set from storage actionclock:player h_val
execute if score @s display_order matches 18 run data modify storage actionclock:player c4 set from storage actionclock:player c_val
execute if score @s display_order matches 18 run data modify storage actionclock:player c5 set from storage actionclock:player x_val
execute if score @s display_order matches 18 run data modify storage actionclock:player c6 set from storage actionclock:player f_val
# 19: Dni -> Pogoda -> Glowka -> Zegar -> Kierunek -> Kordy
execute if score @s display_order matches 19 run data modify storage actionclock:player c1 set from storage actionclock:player d_val
execute if score @s display_order matches 19 run data modify storage actionclock:player c2 set from storage actionclock:player w_val
execute if score @s display_order matches 19 run data modify storage actionclock:player c3 set from storage actionclock:player h_val
execute if score @s display_order matches 19 run data modify storage actionclock:player c4 set from storage actionclock:player c_val
execute if score @s display_order matches 19 run data modify storage actionclock:player c5 set from storage actionclock:player f_val
execute if score @s display_order matches 19 run data modify storage actionclock:player c6 set from storage actionclock:player x_val
# 20: Dni -> Pogoda -> Glowka -> Kordy -> Zegar -> Kierunek #Kazanek
execute if score @s display_order matches 20 run data modify storage actionclock:player c1 set from storage actionclock:player d_val
execute if score @s display_order matches 20 run data modify storage actionclock:player c2 set from storage actionclock:player w_val
execute if score @s display_order matches 20 run data modify storage actionclock:player c3 set from storage actionclock:player h_val
execute if score @s display_order matches 20 run data modify storage actionclock:player c4 set from storage actionclock:player x_val
execute if score @s display_order matches 20 run data modify storage actionclock:player c5 set from storage actionclock:player c_val
execute if score @s display_order matches 20 run data modify storage actionclock:player c6 set from storage actionclock:player f_val
# 21: Dni -> Pogoda -> Glowka -> Kordy -> Kierunek -> Zegar
execute if score @s display_order matches 21 run data modify storage actionclock:player c1 set from storage actionclock:player d_val
execute if score @s display_order matches 21 run data modify storage actionclock:player c2 set from storage actionclock:player w_val
execute if score @s display_order matches 21 run data modify storage actionclock:player c3 set from storage actionclock:player h_val
execute if score @s display_order matches 21 run data modify storage actionclock:player c4 set from storage actionclock:player x_val
execute if score @s display_order matches 21 run data modify storage actionclock:player c5 set from storage actionclock:player f_val
execute if score @s display_order matches 21 run data modify storage actionclock:player c6 set from storage actionclock:player c_val
# 22: Dni -> Pogoda -> Glowka -> Kierunek -> Zegar -> Kordy
execute if score @s display_order matches 22 run data modify storage actionclock:player c1 set from storage actionclock:player d_val
execute if score @s display_order matches 22 run data modify storage actionclock:player c2 set from storage actionclock:player w_val
execute if score @s display_order matches 22 run data modify storage actionclock:player c3 set from storage actionclock:player h_val
execute if score @s display_order matches 22 run data modify storage actionclock:player c4 set from storage actionclock:player f_val
execute if score @s display_order matches 22 run data modify storage actionclock:player c5 set from storage actionclock:player c_val
execute if score @s display_order matches 22 run data modify storage actionclock:player c6 set from storage actionclock:player x_val
# 23: Dni -> Pogoda -> Glowka -> Kierunek -> Kordy -> Zegar
execute if score @s display_order matches 23 run data modify storage actionclock:player c1 set from storage actionclock:player d_val
execute if score @s display_order matches 23 run data modify storage actionclock:player c2 set from storage actionclock:player w_val
execute if score @s display_order matches 23 run data modify storage actionclock:player c3 set from storage actionclock:player h_val
execute if score @s display_order matches 23 run data modify storage actionclock:player c4 set from storage actionclock:player f_val
execute if score @s display_order matches 23 run data modify storage actionclock:player c5 set from storage actionclock:player x_val
execute if score @s display_order matches 23 run data modify storage actionclock:player c6 set from storage actionclock:player c_val
# 24: Dni -> Zegar -> Pogoda -> Kordy -> Kierunek -> Glowka
execute if score @s display_order matches 24 run data modify storage actionclock:player c1 set from storage actionclock:player d_val
execute if score @s display_order matches 24 run data modify storage actionclock:player c2 set from storage actionclock:player c_val
execute if score @s display_order matches 24 run data modify storage actionclock:player c3 set from storage actionclock:player w_val
execute if score @s display_order matches 24 run data modify storage actionclock:player c4 set from storage actionclock:player x_val
execute if score @s display_order matches 24 run data modify storage actionclock:player c5 set from storage actionclock:player f_val
execute if score @s display_order matches 24 run data modify storage actionclock:player c6 set from storage actionclock:player h_val
# 25: Dni -> Zegar -> Pogoda -> Kordy -> Glowka -> Kierunek
execute if score @s display_order matches 25 run data modify storage actionclock:player c1 set from storage actionclock:player d_val
execute if score @s display_order matches 25 run data modify storage actionclock:player c2 set from storage actionclock:player c_val
execute if score @s display_order matches 25 run data modify storage actionclock:player c3 set from storage actionclock:player w_val
execute if score @s display_order matches 25 run data modify storage actionclock:player c4 set from storage actionclock:player x_val
execute if score @s display_order matches 25 run data modify storage actionclock:player c5 set from storage actionclock:player h_val
execute if score @s display_order matches 25 run data modify storage actionclock:player c6 set from storage actionclock:player f_val
# 26: Dni -> Zegar -> Pogoda -> Kierunek -> Kordy -> Glowka
execute if score @s display_order matches 26 run data modify storage actionclock:player c1 set from storage actionclock:player d_val
execute if score @s display_order matches 26 run data modify storage actionclock:player c2 set from storage actionclock:player c_val
execute if score @s display_order matches 26 run data modify storage actionclock:player c3 set from storage actionclock:player w_val
execute if score @s display_order matches 26 run data modify storage actionclock:player c4 set from storage actionclock:player f_val
execute if score @s display_order matches 26 run data modify storage actionclock:player c5 set from storage actionclock:player x_val
execute if score @s display_order matches 26 run data modify storage actionclock:player c6 set from storage actionclock:player h_val
# 27: Dni -> Zegar -> Pogoda -> Kierunek -> Glowka -> Kordy
execute if score @s display_order matches 27 run data modify storage actionclock:player c1 set from storage actionclock:player d_val
execute if score @s display_order matches 27 run data modify storage actionclock:player c2 set from storage actionclock:player c_val
execute if score @s display_order matches 27 run data modify storage actionclock:player c3 set from storage actionclock:player w_val
execute if score @s display_order matches 27 run data modify storage actionclock:player c4 set from storage actionclock:player f_val
execute if score @s display_order matches 27 run data modify storage actionclock:player c5 set from storage actionclock:player h_val
execute if score @s display_order matches 27 run data modify storage actionclock:player c6 set from storage actionclock:player x_val
# 28: Dni -> Zegar -> Pogoda -> Glowka -> Kordy -> Kierunek
execute if score @s display_order matches 28 run data modify storage actionclock:player c1 set from storage actionclock:player d_val
execute if score @s display_order matches 28 run data modify storage actionclock:player c2 set from storage actionclock:player c_val
execute if score @s display_order matches 28 run data modify storage actionclock:player c3 set from storage actionclock:player w_val
execute if score @s display_order matches 28 run data modify storage actionclock:player c4 set from storage actionclock:player h_val
execute if score @s display_order matches 28 run data modify storage actionclock:player c5 set from storage actionclock:player x_val
execute if score @s display_order matches 28 run data modify storage actionclock:player c6 set from storage actionclock:player f_val
# 29: Dni -> Zegar -> Pogoda -> Glowka -> Kierunek -> Kordy
execute if score @s display_order matches 29 run data modify storage actionclock:player c1 set from storage actionclock:player d_val
execute if score @s display_order matches 29 run data modify storage actionclock:player c2 set from storage actionclock:player c_val
execute if score @s display_order matches 29 run data modify storage actionclock:player c3 set from storage actionclock:player w_val
execute if score @s display_order matches 29 run data modify storage actionclock:player c4 set from storage actionclock:player h_val
execute if score @s display_order matches 29 run data modify storage actionclock:player c5 set from storage actionclock:player f_val
execute if score @s display_order matches 29 run data modify storage actionclock:player c6 set from storage actionclock:player x_val
# 30: Dni -> Zegar -> Kordy -> Pogoda -> Kierunek -> Glowka
execute if score @s display_order matches 30 run data modify storage actionclock:player c1 set from storage actionclock:player d_val
execute if score @s display_order matches 30 run data modify storage actionclock:player c2 set from storage actionclock:player c_val
execute if score @s display_order matches 30 run data modify storage actionclock:player c3 set from storage actionclock:player x_val
execute if score @s display_order matches 30 run data modify storage actionclock:player c4 set from storage actionclock:player w_val
execute if score @s display_order matches 30 run data modify storage actionclock:player c5 set from storage actionclock:player f_val
execute if score @s display_order matches 30 run data modify storage actionclock:player c6 set from storage actionclock:player h_val
# 31: Dni -> Zegar -> Kordy -> Pogoda -> Glowka -> Kierunek
execute if score @s display_order matches 31 run data modify storage actionclock:player c1 set from storage actionclock:player d_val
execute if score @s display_order matches 31 run data modify storage actionclock:player c2 set from storage actionclock:player c_val
execute if score @s display_order matches 31 run data modify storage actionclock:player c3 set from storage actionclock:player x_val
execute if score @s display_order matches 31 run data modify storage actionclock:player c4 set from storage actionclock:player w_val
execute if score @s display_order matches 31 run data modify storage actionclock:player c5 set from storage actionclock:player h_val
execute if score @s display_order matches 31 run data modify storage actionclock:player c6 set from storage actionclock:player f_val
# 32: Dni -> Zegar -> Kordy -> Kierunek -> Pogoda -> Glowka
execute if score @s display_order matches 32 run data modify storage actionclock:player c1 set from storage actionclock:player d_val
execute if score @s display_order matches 32 run data modify storage actionclock:player c2 set from storage actionclock:player c_val
execute if score @s display_order matches 32 run data modify storage actionclock:player c3 set from storage actionclock:player x_val
execute if score @s display_order matches 32 run data modify storage actionclock:player c4 set from storage actionclock:player f_val
execute if score @s display_order matches 32 run data modify storage actionclock:player c5 set from storage actionclock:player w_val
execute if score @s display_order matches 32 run data modify storage actionclock:player c6 set from storage actionclock:player h_val
# 33: Dni -> Zegar -> Kordy -> Kierunek -> Glowka -> Pogoda
execute if score @s display_order matches 33 run data modify storage actionclock:player c1 set from storage actionclock:player d_val
execute if score @s display_order matches 33 run data modify storage actionclock:player c2 set from storage actionclock:player c_val
execute if score @s display_order matches 33 run data modify storage actionclock:player c3 set from storage actionclock:player x_val
execute if score @s display_order matches 33 run data modify storage actionclock:player c4 set from storage actionclock:player f_val
execute if score @s display_order matches 33 run data modify storage actionclock:player c5 set from storage actionclock:player h_val
execute if score @s display_order matches 33 run data modify storage actionclock:player c6 set from storage actionclock:player w_val
# 34: Dni -> Zegar -> Kordy -> Glowka -> Pogoda -> Kierunek
execute if score @s display_order matches 34 run data modify storage actionclock:player c1 set from storage actionclock:player d_val
execute if score @s display_order matches 34 run data modify storage actionclock:player c2 set from storage actionclock:player c_val
execute if score @s display_order matches 34 run data modify storage actionclock:player c3 set from storage actionclock:player x_val
execute if score @s display_order matches 34 run data modify storage actionclock:player c4 set from storage actionclock:player h_val
execute if score @s display_order matches 34 run data modify storage actionclock:player c5 set from storage actionclock:player w_val
execute if score @s display_order matches 34 run data modify storage actionclock:player c6 set from storage actionclock:player f_val
# 35: Dni -> Zegar -> Kordy -> Glowka -> Kierunek -> Pogoda
execute if score @s display_order matches 35 run data modify storage actionclock:player c1 set from storage actionclock:player d_val
execute if score @s display_order matches 35 run data modify storage actionclock:player c2 set from storage actionclock:player c_val
execute if score @s display_order matches 35 run data modify storage actionclock:player c3 set from storage actionclock:player x_val
execute if score @s display_order matches 35 run data modify storage actionclock:player c4 set from storage actionclock:player h_val
execute if score @s display_order matches 35 run data modify storage actionclock:player c5 set from storage actionclock:player f_val
execute if score @s display_order matches 35 run data modify storage actionclock:player c6 set from storage actionclock:player w_val
# 36: Dni -> Zegar -> Kierunek -> Pogoda -> Kordy -> Glowka
execute if score @s display_order matches 36 run data modify storage actionclock:player c1 set from storage actionclock:player d_val
execute if score @s display_order matches 36 run data modify storage actionclock:player c2 set from storage actionclock:player c_val
execute if score @s display_order matches 36 run data modify storage actionclock:player c3 set from storage actionclock:player f_val
execute if score @s display_order matches 36 run data modify storage actionclock:player c4 set from storage actionclock:player w_val
execute if score @s display_order matches 36 run data modify storage actionclock:player c5 set from storage actionclock:player x_val
execute if score @s display_order matches 36 run data modify storage actionclock:player c6 set from storage actionclock:player h_val
# 37: Dni -> Zegar -> Kierunek -> Pogoda -> Glowka -> Kordy
execute if score @s display_order matches 37 run data modify storage actionclock:player c1 set from storage actionclock:player d_val
execute if score @s display_order matches 37 run data modify storage actionclock:player c2 set from storage actionclock:player c_val
execute if score @s display_order matches 37 run data modify storage actionclock:player c3 set from storage actionclock:player f_val
execute if score @s display_order matches 37 run data modify storage actionclock:player c4 set from storage actionclock:player w_val
execute if score @s display_order matches 37 run data modify storage actionclock:player c5 set from storage actionclock:player h_val
execute if score @s display_order matches 37 run data modify storage actionclock:player c6 set from storage actionclock:player x_val
# 38: Dni -> Zegar -> Kierunek -> Kordy -> Pogoda -> Glowka
execute if score @s display_order matches 38 run data modify storage actionclock:player c1 set from storage actionclock:player d_val
execute if score @s display_order matches 38 run data modify storage actionclock:player c2 set from storage actionclock:player c_val
execute if score @s display_order matches 38 run data modify storage actionclock:player c3 set from storage actionclock:player f_val
execute if score @s display_order matches 38 run data modify storage actionclock:player c4 set from storage actionclock:player x_val
execute if score @s display_order matches 38 run data modify storage actionclock:player c5 set from storage actionclock:player w_val
execute if score @s display_order matches 38 run data modify storage actionclock:player c6 set from storage actionclock:player h_val
# 39: Dni -> Zegar -> Kierunek -> Kordy -> Glowka -> Pogoda
execute if score @s display_order matches 39 run data modify storage actionclock:player c1 set from storage actionclock:player d_val
execute if score @s display_order matches 39 run data modify storage actionclock:player c2 set from storage actionclock:player c_val
execute if score @s display_order matches 39 run data modify storage actionclock:player c3 set from storage actionclock:player f_val
execute if score @s display_order matches 39 run data modify storage actionclock:player c4 set from storage actionclock:player x_val
execute if score @s display_order matches 39 run data modify storage actionclock:player c5 set from storage actionclock:player h_val
execute if score @s display_order matches 39 run data modify storage actionclock:player c6 set from storage actionclock:player w_val
# 40: Dni -> Zegar -> Kierunek -> Glowka -> Pogoda -> Kordy
execute if score @s display_order matches 40 run data modify storage actionclock:player c1 set from storage actionclock:player d_val
execute if score @s display_order matches 40 run data modify storage actionclock:player c2 set from storage actionclock:player c_val
execute if score @s display_order matches 40 run data modify storage actionclock:player c3 set from storage actionclock:player f_val
execute if score @s display_order matches 40 run data modify storage actionclock:player c4 set from storage actionclock:player h_val
execute if score @s display_order matches 40 run data modify storage actionclock:player c5 set from storage actionclock:player w_val
execute if score @s display_order matches 40 run data modify storage actionclock:player c6 set from storage actionclock:player x_val
# 41: Dni -> Zegar -> Kierunek -> Glowka -> Kordy -> Pogoda
execute if score @s display_order matches 41 run data modify storage actionclock:player c1 set from storage actionclock:player d_val
execute if score @s display_order matches 41 run data modify storage actionclock:player c2 set from storage actionclock:player c_val
execute if score @s display_order matches 41 run data modify storage actionclock:player c3 set from storage actionclock:player f_val
execute if score @s display_order matches 41 run data modify storage actionclock:player c4 set from storage actionclock:player h_val
execute if score @s display_order matches 41 run data modify storage actionclock:player c5 set from storage actionclock:player x_val
execute if score @s display_order matches 41 run data modify storage actionclock:player c6 set from storage actionclock:player w_val
# 42: Dni -> Zegar -> Glowka -> Pogoda -> Kordy -> Kierunek
execute if score @s display_order matches 42 run data modify storage actionclock:player c1 set from storage actionclock:player d_val
execute if score @s display_order matches 42 run data modify storage actionclock:player c2 set from storage actionclock:player c_val
execute if score @s display_order matches 42 run data modify storage actionclock:player c3 set from storage actionclock:player h_val
execute if score @s display_order matches 42 run data modify storage actionclock:player c4 set from storage actionclock:player w_val
execute if score @s display_order matches 42 run data modify storage actionclock:player c5 set from storage actionclock:player x_val
execute if score @s display_order matches 42 run data modify storage actionclock:player c6 set from storage actionclock:player f_val
# 43: Dni -> Zegar -> Glowka -> Pogoda -> Kierunek -> Kordy
execute if score @s display_order matches 43 run data modify storage actionclock:player c1 set from storage actionclock:player d_val
execute if score @s display_order matches 43 run data modify storage actionclock:player c2 set from storage actionclock:player c_val
execute if score @s display_order matches 43 run data modify storage actionclock:player c3 set from storage actionclock:player h_val
execute if score @s display_order matches 43 run data modify storage actionclock:player c4 set from storage actionclock:player w_val
execute if score @s display_order matches 43 run data modify storage actionclock:player c5 set from storage actionclock:player f_val
execute if score @s display_order matches 43 run data modify storage actionclock:player c6 set from storage actionclock:player x_val
# 44: Dni -> Zegar -> Glowka -> Kordy -> Pogoda -> Kierunek
execute if score @s display_order matches 44 run data modify storage actionclock:player c1 set from storage actionclock:player d_val
execute if score @s display_order matches 44 run data modify storage actionclock:player c2 set from storage actionclock:player c_val
execute if score @s display_order matches 44 run data modify storage actionclock:player c3 set from storage actionclock:player h_val
execute if score @s display_order matches 44 run data modify storage actionclock:player c4 set from storage actionclock:player x_val
execute if score @s display_order matches 44 run data modify storage actionclock:player c5 set from storage actionclock:player w_val
execute if score @s display_order matches 44 run data modify storage actionclock:player c6 set from storage actionclock:player f_val
# 45: Dni -> Zegar -> Glowka -> Kordy -> Kierunek -> Pogoda
execute if score @s display_order matches 45 run data modify storage actionclock:player c1 set from storage actionclock:player d_val
execute if score @s display_order matches 45 run data modify storage actionclock:player c2 set from storage actionclock:player c_val
execute if score @s display_order matches 45 run data modify storage actionclock:player c3 set from storage actionclock:player h_val
execute if score @s display_order matches 45 run data modify storage actionclock:player c4 set from storage actionclock:player x_val
execute if score @s display_order matches 45 run data modify storage actionclock:player c5 set from storage actionclock:player f_val
execute if score @s display_order matches 45 run data modify storage actionclock:player c6 set from storage actionclock:player w_val
# 46: Dni -> Zegar -> Glowka -> Kierunek -> Pogoda -> Kordy
execute if score @s display_order matches 46 run data modify storage actionclock:player c1 set from storage actionclock:player d_val
execute if score @s display_order matches 46 run data modify storage actionclock:player c2 set from storage actionclock:player c_val
execute if score @s display_order matches 46 run data modify storage actionclock:player c3 set from storage actionclock:player h_val
execute if score @s display_order matches 46 run data modify storage actionclock:player c4 set from storage actionclock:player f_val
execute if score @s display_order matches 46 run data modify storage actionclock:player c5 set from storage actionclock:player w_val
execute if score @s display_order matches 46 run data modify storage actionclock:player c6 set from storage actionclock:player x_val
# 47: Dni -> Zegar -> Glowka -> Kierunek -> Kordy -> Pogoda
execute if score @s display_order matches 47 run data modify storage actionclock:player c1 set from storage actionclock:player d_val
execute if score @s display_order matches 47 run data modify storage actionclock:player c2 set from storage actionclock:player c_val
execute if score @s display_order matches 47 run data modify storage actionclock:player c3 set from storage actionclock:player h_val
execute if score @s display_order matches 47 run data modify storage actionclock:player c4 set from storage actionclock:player f_val
execute if score @s display_order matches 47 run data modify storage actionclock:player c5 set from storage actionclock:player x_val
execute if score @s display_order matches 47 run data modify storage actionclock:player c6 set from storage actionclock:player w_val
# 48: Dni -> Kordy -> Pogoda -> Zegar -> Kierunek -> Glowka
execute if score @s display_order matches 48 run data modify storage actionclock:player c1 set from storage actionclock:player d_val
execute if score @s display_order matches 48 run data modify storage actionclock:player c2 set from storage actionclock:player x_val
execute if score @s display_order matches 48 run data modify storage actionclock:player c3 set from storage actionclock:player w_val
execute if score @s display_order matches 48 run data modify storage actionclock:player c4 set from storage actionclock:player c_val
execute if score @s display_order matches 48 run data modify storage actionclock:player c5 set from storage actionclock:player f_val
execute if score @s display_order matches 48 run data modify storage actionclock:player c6 set from storage actionclock:player h_val
# 49: Dni -> Kordy -> Pogoda -> Zegar -> Glowka -> Kierunek
execute if score @s display_order matches 49 run data modify storage actionclock:player c1 set from storage actionclock:player d_val
execute if score @s display_order matches 49 run data modify storage actionclock:player c2 set from storage actionclock:player x_val
execute if score @s display_order matches 49 run data modify storage actionclock:player c3 set from storage actionclock:player w_val
execute if score @s display_order matches 49 run data modify storage actionclock:player c4 set from storage actionclock:player c_val
execute if score @s display_order matches 49 run data modify storage actionclock:player c5 set from storage actionclock:player h_val
execute if score @s display_order matches 49 run data modify storage actionclock:player c6 set from storage actionclock:player f_val
# 50: Dni -> Kordy -> Pogoda -> Kierunek -> Zegar -> Glowka
execute if score @s display_order matches 50 run data modify storage actionclock:player c1 set from storage actionclock:player d_val
execute if score @s display_order matches 50 run data modify storage actionclock:player c2 set from storage actionclock:player x_val
execute if score @s display_order matches 50 run data modify storage actionclock:player c3 set from storage actionclock:player w_val
execute if score @s display_order matches 50 run data modify storage actionclock:player c4 set from storage actionclock:player f_val
execute if score @s display_order matches 50 run data modify storage actionclock:player c5 set from storage actionclock:player c_val
execute if score @s display_order matches 50 run data modify storage actionclock:player c6 set from storage actionclock:player h_val
# 51: Dni -> Kordy -> Pogoda -> Kierunek -> Glowka -> Zegar
execute if score @s display_order matches 51 run data modify storage actionclock:player c1 set from storage actionclock:player d_val
execute if score @s display_order matches 51 run data modify storage actionclock:player c2 set from storage actionclock:player x_val
execute if score @s display_order matches 51 run data modify storage actionclock:player c3 set from storage actionclock:player w_val
execute if score @s display_order matches 51 run data modify storage actionclock:player c4 set from storage actionclock:player f_val
execute if score @s display_order matches 51 run data modify storage actionclock:player c5 set from storage actionclock:player h_val
execute if score @s display_order matches 51 run data modify storage actionclock:player c6 set from storage actionclock:player c_val
# 52: Dni -> Kordy -> Pogoda -> Glowka -> Zegar -> Kierunek
execute if score @s display_order matches 52 run data modify storage actionclock:player c1 set from storage actionclock:player d_val
execute if score @s display_order matches 52 run data modify storage actionclock:player c2 set from storage actionclock:player x_val
execute if score @s display_order matches 52 run data modify storage actionclock:player c3 set from storage actionclock:player w_val
execute if score @s display_order matches 52 run data modify storage actionclock:player c4 set from storage actionclock:player h_val
execute if score @s display_order matches 52 run data modify storage actionclock:player c5 set from storage actionclock:player c_val
execute if score @s display_order matches 52 run data modify storage actionclock:player c6 set from storage actionclock:player f_val
# 53: Dni -> Kordy -> Pogoda -> Glowka -> Kierunek -> Zegar
execute if score @s display_order matches 53 run data modify storage actionclock:player c1 set from storage actionclock:player d_val
execute if score @s display_order matches 53 run data modify storage actionclock:player c2 set from storage actionclock:player x_val
execute if score @s display_order matches 53 run data modify storage actionclock:player c3 set from storage actionclock:player w_val
execute if score @s display_order matches 53 run data modify storage actionclock:player c4 set from storage actionclock:player h_val
execute if score @s display_order matches 53 run data modify storage actionclock:player c5 set from storage actionclock:player f_val
execute if score @s display_order matches 53 run data modify storage actionclock:player c6 set from storage actionclock:player c_val
# 54: Dni -> Kordy -> Zegar -> Pogoda -> Kierunek -> Glowka
execute if score @s display_order matches 54 run data modify storage actionclock:player c1 set from storage actionclock:player d_val
execute if score @s display_order matches 54 run data modify storage actionclock:player c2 set from storage actionclock:player x_val
execute if score @s display_order matches 54 run data modify storage actionclock:player c3 set from storage actionclock:player c_val
execute if score @s display_order matches 54 run data modify storage actionclock:player c4 set from storage actionclock:player w_val
execute if score @s display_order matches 54 run data modify storage actionclock:player c5 set from storage actionclock:player f_val
execute if score @s display_order matches 54 run data modify storage actionclock:player c6 set from storage actionclock:player h_val
# 55: Dni -> Kordy -> Zegar -> Pogoda -> Glowka -> Kierunek
execute if score @s display_order matches 55 run data modify storage actionclock:player c1 set from storage actionclock:player d_val
execute if score @s display_order matches 55 run data modify storage actionclock:player c2 set from storage actionclock:player x_val
execute if score @s display_order matches 55 run data modify storage actionclock:player c3 set from storage actionclock:player c_val
execute if score @s display_order matches 55 run data modify storage actionclock:player c4 set from storage actionclock:player w_val
execute if score @s display_order matches 55 run data modify storage actionclock:player c5 set from storage actionclock:player h_val
execute if score @s display_order matches 55 run data modify storage actionclock:player c6 set from storage actionclock:player f_val
# 56: Dni -> Kordy -> Zegar -> Kierunek -> Pogoda -> Glowka
execute if score @s display_order matches 56 run data modify storage actionclock:player c1 set from storage actionclock:player d_val
execute if score @s display_order matches 56 run data modify storage actionclock:player c2 set from storage actionclock:player x_val
execute if score @s display_order matches 56 run data modify storage actionclock:player c3 set from storage actionclock:player c_val
execute if score @s display_order matches 56 run data modify storage actionclock:player c4 set from storage actionclock:player f_val
execute if score @s display_order matches 56 run data modify storage actionclock:player c5 set from storage actionclock:player w_val
execute if score @s display_order matches 56 run data modify storage actionclock:player c6 set from storage actionclock:player h_val
# 57: Dni -> Kordy -> Zegar -> Kierunek -> Glowka -> Pogoda
execute if score @s display_order matches 57 run data modify storage actionclock:player c1 set from storage actionclock:player d_val
execute if score @s display_order matches 57 run data modify storage actionclock:player c2 set from storage actionclock:player x_val
execute if score @s display_order matches 57 run data modify storage actionclock:player c3 set from storage actionclock:player c_val
execute if score @s display_order matches 57 run data modify storage actionclock:player c4 set from storage actionclock:player f_val
execute if score @s display_order matches 57 run data modify storage actionclock:player c5 set from storage actionclock:player h_val
execute if score @s display_order matches 57 run data modify storage actionclock:player c6 set from storage actionclock:player w_val
# 58: Dni -> Kordy -> Zegar -> Glowka -> Pogoda -> Kierunek
execute if score @s display_order matches 58 run data modify storage actionclock:player c1 set from storage actionclock:player d_val
execute if score @s display_order matches 58 run data modify storage actionclock:player c2 set from storage actionclock:player x_val
execute if score @s display_order matches 58 run data modify storage actionclock:player c3 set from storage actionclock:player c_val
execute if score @s display_order matches 58 run data modify storage actionclock:player c4 set from storage actionclock:player h_val
execute if score @s display_order matches 58 run data modify storage actionclock:player c5 set from storage actionclock:player w_val
execute if score @s display_order matches 58 run data modify storage actionclock:player c6 set from storage actionclock:player f_val
# 59: Dni -> Kordy -> Zegar -> Glowka -> Kierunek -> Pogoda
execute if score @s display_order matches 59 run data modify storage actionclock:player c1 set from storage actionclock:player d_val
execute if score @s display_order matches 59 run data modify storage actionclock:player c2 set from storage actionclock:player x_val
execute if score @s display_order matches 59 run data modify storage actionclock:player c3 set from storage actionclock:player c_val
execute if score @s display_order matches 59 run data modify storage actionclock:player c4 set from storage actionclock:player h_val
execute if score @s display_order matches 59 run data modify storage actionclock:player c5 set from storage actionclock:player f_val
execute if score @s display_order matches 59 run data modify storage actionclock:player c6 set from storage actionclock:player w_val
# 60: Dni -> Kordy -> Kierunek -> Pogoda -> Zegar -> Glowka
execute if score @s display_order matches 60 run data modify storage actionclock:player c1 set from storage actionclock:player d_val
execute if score @s display_order matches 60 run data modify storage actionclock:player c2 set from storage actionclock:player x_val
execute if score @s display_order matches 60 run data modify storage actionclock:player c3 set from storage actionclock:player f_val
execute if score @s display_order matches 60 run data modify storage actionclock:player c4 set from storage actionclock:player w_val
execute if score @s display_order matches 60 run data modify storage actionclock:player c5 set from storage actionclock:player c_val
execute if score @s display_order matches 60 run data modify storage actionclock:player c6 set from storage actionclock:player h_val
# 61: Dni -> Kordy -> Kierunek -> Pogoda -> Glowka -> Zegar
execute if score @s display_order matches 61 run data modify storage actionclock:player c1 set from storage actionclock:player d_val
execute if score @s display_order matches 61 run data modify storage actionclock:player c2 set from storage actionclock:player x_val
execute if score @s display_order matches 61 run data modify storage actionclock:player c3 set from storage actionclock:player f_val
execute if score @s display_order matches 61 run data modify storage actionclock:player c4 set from storage actionclock:player w_val
execute if score @s display_order matches 61 run data modify storage actionclock:player c5 set from storage actionclock:player h_val
execute if score @s display_order matches 61 run data modify storage actionclock:player c6 set from storage actionclock:player c_val
# 62: Dni -> Kordy -> Kierunek -> Zegar -> Pogoda -> Glowka
execute if score @s display_order matches 62 run data modify storage actionclock:player c1 set from storage actionclock:player d_val
execute if score @s display_order matches 62 run data modify storage actionclock:player c2 set from storage actionclock:player x_val
execute if score @s display_order matches 62 run data modify storage actionclock:player c3 set from storage actionclock:player f_val
execute if score @s display_order matches 62 run data modify storage actionclock:player c4 set from storage actionclock:player c_val
execute if score @s display_order matches 62 run data modify storage actionclock:player c5 set from storage actionclock:player w_val
execute if score @s display_order matches 62 run data modify storage actionclock:player c6 set from storage actionclock:player h_val
# 63: Dni -> Kordy -> Kierunek -> Zegar -> Glowka -> Pogoda
execute if score @s display_order matches 63 run data modify storage actionclock:player c1 set from storage actionclock:player d_val
execute if score @s display_order matches 63 run data modify storage actionclock:player c2 set from storage actionclock:player x_val
execute if score @s display_order matches 63 run data modify storage actionclock:player c3 set from storage actionclock:player f_val
execute if score @s display_order matches 63 run data modify storage actionclock:player c4 set from storage actionclock:player c_val
execute if score @s display_order matches 63 run data modify storage actionclock:player c5 set from storage actionclock:player h_val
execute if score @s display_order matches 63 run data modify storage actionclock:player c6 set from storage actionclock:player w_val
# 64: Dni -> Kordy -> Kierunek -> Glowka -> Pogoda -> Zegar
execute if score @s display_order matches 64 run data modify storage actionclock:player c1 set from storage actionclock:player d_val
execute if score @s display_order matches 64 run data modify storage actionclock:player c2 set from storage actionclock:player x_val
execute if score @s display_order matches 64 run data modify storage actionclock:player c3 set from storage actionclock:player f_val
execute if score @s display_order matches 64 run data modify storage actionclock:player c4 set from storage actionclock:player h_val
execute if score @s display_order matches 64 run data modify storage actionclock:player c5 set from storage actionclock:player w_val
execute if score @s display_order matches 64 run data modify storage actionclock:player c6 set from storage actionclock:player c_val
# 65: Dni -> Kordy -> Kierunek -> Glowka -> Zegar -> Pogoda
execute if score @s display_order matches 65 run data modify storage actionclock:player c1 set from storage actionclock:player d_val
execute if score @s display_order matches 65 run data modify storage actionclock:player c2 set from storage actionclock:player x_val
execute if score @s display_order matches 65 run data modify storage actionclock:player c3 set from storage actionclock:player f_val
execute if score @s display_order matches 65 run data modify storage actionclock:player c4 set from storage actionclock:player h_val
execute if score @s display_order matches 65 run data modify storage actionclock:player c5 set from storage actionclock:player c_val
execute if score @s display_order matches 65 run data modify storage actionclock:player c6 set from storage actionclock:player w_val
# 66: Dni -> Kordy -> Glowka -> Pogoda -> Zegar -> Kierunek
execute if score @s display_order matches 66 run data modify storage actionclock:player c1 set from storage actionclock:player d_val
execute if score @s display_order matches 66 run data modify storage actionclock:player c2 set from storage actionclock:player x_val
execute if score @s display_order matches 66 run data modify storage actionclock:player c3 set from storage actionclock:player h_val
execute if score @s display_order matches 66 run data modify storage actionclock:player c4 set from storage actionclock:player w_val
execute if score @s display_order matches 66 run data modify storage actionclock:player c5 set from storage actionclock:player c_val
execute if score @s display_order matches 66 run data modify storage actionclock:player c6 set from storage actionclock:player f_val
# 67: Dni -> Kordy -> Glowka -> Pogoda -> Kierunek -> Zegar
execute if score @s display_order matches 67 run data modify storage actionclock:player c1 set from storage actionclock:player d_val
execute if score @s display_order matches 67 run data modify storage actionclock:player c2 set from storage actionclock:player x_val
execute if score @s display_order matches 67 run data modify storage actionclock:player c3 set from storage actionclock:player h_val
execute if score @s display_order matches 67 run data modify storage actionclock:player c4 set from storage actionclock:player w_val
execute if score @s display_order matches 67 run data modify storage actionclock:player c5 set from storage actionclock:player f_val
execute if score @s display_order matches 67 run data modify storage actionclock:player c6 set from storage actionclock:player c_val
# 68: Dni -> Kordy -> Glowka -> Zegar -> Pogoda -> Kierunek
execute if score @s display_order matches 68 run data modify storage actionclock:player c1 set from storage actionclock:player d_val
execute if score @s display_order matches 68 run data modify storage actionclock:player c2 set from storage actionclock:player x_val
execute if score @s display_order matches 68 run data modify storage actionclock:player c3 set from storage actionclock:player h_val
execute if score @s display_order matches 68 run data modify storage actionclock:player c4 set from storage actionclock:player c_val
execute if score @s display_order matches 68 run data modify storage actionclock:player c5 set from storage actionclock:player w_val
execute if score @s display_order matches 68 run data modify storage actionclock:player c6 set from storage actionclock:player f_val
# 69: Dni -> Kordy -> Glowka -> Zegar -> Kierunek -> Pogoda
execute if score @s display_order matches 69 run data modify storage actionclock:player c1 set from storage actionclock:player d_val
execute if score @s display_order matches 69 run data modify storage actionclock:player c2 set from storage actionclock:player x_val
execute if score @s display_order matches 69 run data modify storage actionclock:player c3 set from storage actionclock:player h_val
execute if score @s display_order matches 69 run data modify storage actionclock:player c4 set from storage actionclock:player c_val
execute if score @s display_order matches 69 run data modify storage actionclock:player c5 set from storage actionclock:player f_val
execute if score @s display_order matches 69 run data modify storage actionclock:player c6 set from storage actionclock:player w_val
# 70: Dni -> Kordy -> Glowka -> Kierunek -> Pogoda -> Zegar
execute if score @s display_order matches 70 run data modify storage actionclock:player c1 set from storage actionclock:player d_val
execute if score @s display_order matches 70 run data modify storage actionclock:player c2 set from storage actionclock:player x_val
execute if score @s display_order matches 70 run data modify storage actionclock:player c3 set from storage actionclock:player h_val
execute if score @s display_order matches 70 run data modify storage actionclock:player c4 set from storage actionclock:player f_val
execute if score @s display_order matches 70 run data modify storage actionclock:player c5 set from storage actionclock:player w_val
execute if score @s display_order matches 70 run data modify storage actionclock:player c6 set from storage actionclock:player c_val
# 71: Dni -> Kordy -> Glowka -> Kierunek -> Zegar -> Pogoda
execute if score @s display_order matches 71 run data modify storage actionclock:player c1 set from storage actionclock:player d_val
execute if score @s display_order matches 71 run data modify storage actionclock:player c2 set from storage actionclock:player x_val
execute if score @s display_order matches 71 run data modify storage actionclock:player c3 set from storage actionclock:player h_val
execute if score @s display_order matches 71 run data modify storage actionclock:player c4 set from storage actionclock:player f_val
execute if score @s display_order matches 71 run data modify storage actionclock:player c5 set from storage actionclock:player c_val
execute if score @s display_order matches 71 run data modify storage actionclock:player c6 set from storage actionclock:player w_val
# 72: Dni -> Kierunek -> Pogoda -> Zegar -> Kordy -> Glowka
execute if score @s display_order matches 72 run data modify storage actionclock:player c1 set from storage actionclock:player d_val
execute if score @s display_order matches 72 run data modify storage actionclock:player c2 set from storage actionclock:player f_val
execute if score @s display_order matches 72 run data modify storage actionclock:player c3 set from storage actionclock:player w_val
execute if score @s display_order matches 72 run data modify storage actionclock:player c4 set from storage actionclock:player c_val
execute if score @s display_order matches 72 run data modify storage actionclock:player c5 set from storage actionclock:player x_val
execute if score @s display_order matches 72 run data modify storage actionclock:player c6 set from storage actionclock:player h_val
# 73: Dni -> Kierunek -> Pogoda -> Zegar -> Glowka -> Kordy
execute if score @s display_order matches 73 run data modify storage actionclock:player c1 set from storage actionclock:player d_val
execute if score @s display_order matches 73 run data modify storage actionclock:player c2 set from storage actionclock:player f_val
execute if score @s display_order matches 73 run data modify storage actionclock:player c3 set from storage actionclock:player w_val
execute if score @s display_order matches 73 run data modify storage actionclock:player c4 set from storage actionclock:player c_val
execute if score @s display_order matches 73 run data modify storage actionclock:player c5 set from storage actionclock:player h_val
execute if score @s display_order matches 73 run data modify storage actionclock:player c6 set from storage actionclock:player x_val
# 74: Dni -> Kierunek -> Pogoda -> Kordy -> Zegar -> Glowka
execute if score @s display_order matches 74 run data modify storage actionclock:player c1 set from storage actionclock:player d_val
execute if score @s display_order matches 74 run data modify storage actionclock:player c2 set from storage actionclock:player f_val
execute if score @s display_order matches 74 run data modify storage actionclock:player c3 set from storage actionclock:player w_val
execute if score @s display_order matches 74 run data modify storage actionclock:player c4 set from storage actionclock:player x_val
execute if score @s display_order matches 74 run data modify storage actionclock:player c5 set from storage actionclock:player c_val
execute if score @s display_order matches 74 run data modify storage actionclock:player c6 set from storage actionclock:player h_val
# 75: Dni -> Kierunek -> Pogoda -> Kordy -> Glowka -> Zegar
execute if score @s display_order matches 75 run data modify storage actionclock:player c1 set from storage actionclock:player d_val
execute if score @s display_order matches 75 run data modify storage actionclock:player c2 set from storage actionclock:player f_val
execute if score @s display_order matches 75 run data modify storage actionclock:player c3 set from storage actionclock:player w_val
execute if score @s display_order matches 75 run data modify storage actionclock:player c4 set from storage actionclock:player x_val
execute if score @s display_order matches 75 run data modify storage actionclock:player c5 set from storage actionclock:player h_val
execute if score @s display_order matches 75 run data modify storage actionclock:player c6 set from storage actionclock:player c_val
# 76: Dni -> Kierunek -> Pogoda -> Glowka -> Zegar -> Kordy
execute if score @s display_order matches 76 run data modify storage actionclock:player c1 set from storage actionclock:player d_val
execute if score @s display_order matches 76 run data modify storage actionclock:player c2 set from storage actionclock:player f_val
execute if score @s display_order matches 76 run data modify storage actionclock:player c3 set from storage actionclock:player w_val
execute if score @s display_order matches 76 run data modify storage actionclock:player c4 set from storage actionclock:player h_val
execute if score @s display_order matches 76 run data modify storage actionclock:player c5 set from storage actionclock:player c_val
execute if score @s display_order matches 76 run data modify storage actionclock:player c6 set from storage actionclock:player x_val
# 77: Dni -> Kierunek -> Pogoda -> Glowka -> Kordy -> Zegar
execute if score @s display_order matches 77 run data modify storage actionclock:player c1 set from storage actionclock:player d_val
execute if score @s display_order matches 77 run data modify storage actionclock:player c2 set from storage actionclock:player f_val
execute if score @s display_order matches 77 run data modify storage actionclock:player c3 set from storage actionclock:player w_val
execute if score @s display_order matches 77 run data modify storage actionclock:player c4 set from storage actionclock:player h_val
execute if score @s display_order matches 77 run data modify storage actionclock:player c5 set from storage actionclock:player x_val
execute if score @s display_order matches 77 run data modify storage actionclock:player c6 set from storage actionclock:player c_val
# 78: Dni -> Kierunek -> Zegar -> Pogoda -> Kordy -> Glowka
execute if score @s display_order matches 78 run data modify storage actionclock:player c1 set from storage actionclock:player d_val
execute if score @s display_order matches 78 run data modify storage actionclock:player c2 set from storage actionclock:player f_val
execute if score @s display_order matches 78 run data modify storage actionclock:player c3 set from storage actionclock:player c_val
execute if score @s display_order matches 78 run data modify storage actionclock:player c4 set from storage actionclock:player w_val
execute if score @s display_order matches 78 run data modify storage actionclock:player c5 set from storage actionclock:player x_val
execute if score @s display_order matches 78 run data modify storage actionclock:player c6 set from storage actionclock:player h_val
# 79: Dni -> Kierunek -> Zegar -> Pogoda -> Glowka -> Kordy
execute if score @s display_order matches 79 run data modify storage actionclock:player c1 set from storage actionclock:player d_val
execute if score @s display_order matches 79 run data modify storage actionclock:player c2 set from storage actionclock:player f_val
execute if score @s display_order matches 79 run data modify storage actionclock:player c3 set from storage actionclock:player c_val
execute if score @s display_order matches 79 run data modify storage actionclock:player c4 set from storage actionclock:player w_val
execute if score @s display_order matches 79 run data modify storage actionclock:player c5 set from storage actionclock:player h_val
execute if score @s display_order matches 79 run data modify storage actionclock:player c6 set from storage actionclock:player x_val
# 80: Dni -> Kierunek -> Zegar -> Kordy -> Pogoda -> Glowka
execute if score @s display_order matches 80 run data modify storage actionclock:player c1 set from storage actionclock:player d_val
execute if score @s display_order matches 80 run data modify storage actionclock:player c2 set from storage actionclock:player f_val
execute if score @s display_order matches 80 run data modify storage actionclock:player c3 set from storage actionclock:player c_val
execute if score @s display_order matches 80 run data modify storage actionclock:player c4 set from storage actionclock:player x_val
execute if score @s display_order matches 80 run data modify storage actionclock:player c5 set from storage actionclock:player w_val
execute if score @s display_order matches 80 run data modify storage actionclock:player c6 set from storage actionclock:player h_val
# 81: Dni -> Kierunek -> Zegar -> Kordy -> Glowka -> Pogoda
execute if score @s display_order matches 81 run data modify storage actionclock:player c1 set from storage actionclock:player d_val
execute if score @s display_order matches 81 run data modify storage actionclock:player c2 set from storage actionclock:player f_val
execute if score @s display_order matches 81 run data modify storage actionclock:player c3 set from storage actionclock:player c_val
execute if score @s display_order matches 81 run data modify storage actionclock:player c4 set from storage actionclock:player x_val
execute if score @s display_order matches 81 run data modify storage actionclock:player c5 set from storage actionclock:player h_val
execute if score @s display_order matches 81 run data modify storage actionclock:player c6 set from storage actionclock:player w_val
# 82: Dni -> Kierunek -> Zegar -> Glowka -> Pogoda -> Kordy
execute if score @s display_order matches 82 run data modify storage actionclock:player c1 set from storage actionclock:player d_val
execute if score @s display_order matches 82 run data modify storage actionclock:player c2 set from storage actionclock:player f_val
execute if score @s display_order matches 82 run data modify storage actionclock:player c3 set from storage actionclock:player c_val
execute if score @s display_order matches 82 run data modify storage actionclock:player c4 set from storage actionclock:player h_val
execute if score @s display_order matches 82 run data modify storage actionclock:player c5 set from storage actionclock:player w_val
execute if score @s display_order matches 82 run data modify storage actionclock:player c6 set from storage actionclock:player x_val
# 83: Dni -> Kierunek -> Zegar -> Glowka -> Kordy -> Pogoda
execute if score @s display_order matches 83 run data modify storage actionclock:player c1 set from storage actionclock:player d_val
execute if score @s display_order matches 83 run data modify storage actionclock:player c2 set from storage actionclock:player f_val
execute if score @s display_order matches 83 run data modify storage actionclock:player c3 set from storage actionclock:player c_val
execute if score @s display_order matches 83 run data modify storage actionclock:player c4 set from storage actionclock:player h_val
execute if score @s display_order matches 83 run data modify storage actionclock:player c5 set from storage actionclock:player x_val
execute if score @s display_order matches 83 run data modify storage actionclock:player c6 set from storage actionclock:player w_val
# 84: Dni -> Kierunek -> Kordy -> Pogoda -> Zegar -> Glowka
execute if score @s display_order matches 84 run data modify storage actionclock:player c1 set from storage actionclock:player d_val
execute if score @s display_order matches 84 run data modify storage actionclock:player c2 set from storage actionclock:player f_val
execute if score @s display_order matches 84 run data modify storage actionclock:player c3 set from storage actionclock:player x_val
execute if score @s display_order matches 84 run data modify storage actionclock:player c4 set from storage actionclock:player w_val
execute if score @s display_order matches 84 run data modify storage actionclock:player c5 set from storage actionclock:player c_val
execute if score @s display_order matches 84 run data modify storage actionclock:player c6 set from storage actionclock:player h_val
# 85: Dni -> Kierunek -> Kordy -> Pogoda -> Glowka -> Zegar
execute if score @s display_order matches 85 run data modify storage actionclock:player c1 set from storage actionclock:player d_val
execute if score @s display_order matches 85 run data modify storage actionclock:player c2 set from storage actionclock:player f_val
execute if score @s display_order matches 85 run data modify storage actionclock:player c3 set from storage actionclock:player x_val
execute if score @s display_order matches 85 run data modify storage actionclock:player c4 set from storage actionclock:player w_val
execute if score @s display_order matches 85 run data modify storage actionclock:player c5 set from storage actionclock:player h_val
execute if score @s display_order matches 85 run data modify storage actionclock:player c6 set from storage actionclock:player c_val
# 86: Dni -> Kierunek -> Kordy -> Zegar -> Pogoda -> Glowka
execute if score @s display_order matches 86 run data modify storage actionclock:player c1 set from storage actionclock:player d_val
execute if score @s display_order matches 86 run data modify storage actionclock:player c2 set from storage actionclock:player f_val
execute if score @s display_order matches 86 run data modify storage actionclock:player c3 set from storage actionclock:player x_val
execute if score @s display_order matches 86 run data modify storage actionclock:player c4 set from storage actionclock:player c_val
execute if score @s display_order matches 86 run data modify storage actionclock:player c5 set from storage actionclock:player w_val
execute if score @s display_order matches 86 run data modify storage actionclock:player c6 set from storage actionclock:player h_val
# 87: Dni -> Kierunek -> Kordy -> Zegar -> Glowka -> Pogoda
execute if score @s display_order matches 87 run data modify storage actionclock:player c1 set from storage actionclock:player d_val
execute if score @s display_order matches 87 run data modify storage actionclock:player c2 set from storage actionclock:player f_val
execute if score @s display_order matches 87 run data modify storage actionclock:player c3 set from storage actionclock:player x_val
execute if score @s display_order matches 87 run data modify storage actionclock:player c4 set from storage actionclock:player c_val
execute if score @s display_order matches 87 run data modify storage actionclock:player c5 set from storage actionclock:player h_val
execute if score @s display_order matches 87 run data modify storage actionclock:player c6 set from storage actionclock:player w_val
# 88: Dni -> Kierunek -> Kordy -> Glowka -> Pogoda -> Zegar
execute if score @s display_order matches 88 run data modify storage actionclock:player c1 set from storage actionclock:player d_val
execute if score @s display_order matches 88 run data modify storage actionclock:player c2 set from storage actionclock:player f_val
execute if score @s display_order matches 88 run data modify storage actionclock:player c3 set from storage actionclock:player x_val
execute if score @s display_order matches 88 run data modify storage actionclock:player c4 set from storage actionclock:player h_val
execute if score @s display_order matches 88 run data modify storage actionclock:player c5 set from storage actionclock:player w_val
execute if score @s display_order matches 88 run data modify storage actionclock:player c6 set from storage actionclock:player c_val
# 89: Dni -> Kierunek -> Kordy -> Glowka -> Zegar -> Pogoda
execute if score @s display_order matches 89 run data modify storage actionclock:player c1 set from storage actionclock:player d_val
execute if score @s display_order matches 89 run data modify storage actionclock:player c2 set from storage actionclock:player f_val
execute if score @s display_order matches 89 run data modify storage actionclock:player c3 set from storage actionclock:player x_val
execute if score @s display_order matches 89 run data modify storage actionclock:player c4 set from storage actionclock:player h_val
execute if score @s display_order matches 89 run data modify storage actionclock:player c5 set from storage actionclock:player c_val
execute if score @s display_order matches 89 run data modify storage actionclock:player c6 set from storage actionclock:player w_val
# 90: Dni -> Kierunek -> Glowka -> Pogoda -> Zegar -> Kordy
execute if score @s display_order matches 90 run data modify storage actionclock:player c1 set from storage actionclock:player d_val
execute if score @s display_order matches 90 run data modify storage actionclock:player c2 set from storage actionclock:player f_val
execute if score @s display_order matches 90 run data modify storage actionclock:player c3 set from storage actionclock:player h_val
execute if score @s display_order matches 90 run data modify storage actionclock:player c4 set from storage actionclock:player w_val
execute if score @s display_order matches 90 run data modify storage actionclock:player c5 set from storage actionclock:player c_val
execute if score @s display_order matches 90 run data modify storage actionclock:player c6 set from storage actionclock:player x_val
# 91: Dni -> Kierunek -> Glowka -> Pogoda -> Kordy -> Zegar
execute if score @s display_order matches 91 run data modify storage actionclock:player c1 set from storage actionclock:player d_val
execute if score @s display_order matches 91 run data modify storage actionclock:player c2 set from storage actionclock:player f_val
execute if score @s display_order matches 91 run data modify storage actionclock:player c3 set from storage actionclock:player h_val
execute if score @s display_order matches 91 run data modify storage actionclock:player c4 set from storage actionclock:player w_val
execute if score @s display_order matches 91 run data modify storage actionclock:player c5 set from storage actionclock:player x_val
execute if score @s display_order matches 91 run data modify storage actionclock:player c6 set from storage actionclock:player c_val
# 92: Dni -> Kierunek -> Glowka -> Zegar -> Pogoda -> Kordy
execute if score @s display_order matches 92 run data modify storage actionclock:player c1 set from storage actionclock:player d_val
execute if score @s display_order matches 92 run data modify storage actionclock:player c2 set from storage actionclock:player f_val
execute if score @s display_order matches 92 run data modify storage actionclock:player c3 set from storage actionclock:player h_val
execute if score @s display_order matches 92 run data modify storage actionclock:player c4 set from storage actionclock:player c_val
execute if score @s display_order matches 92 run data modify storage actionclock:player c5 set from storage actionclock:player w_val
execute if score @s display_order matches 92 run data modify storage actionclock:player c6 set from storage actionclock:player x_val
# 93: Dni -> Kierunek -> Glowka -> Zegar -> Kordy -> Pogoda
execute if score @s display_order matches 93 run data modify storage actionclock:player c1 set from storage actionclock:player d_val
execute if score @s display_order matches 93 run data modify storage actionclock:player c2 set from storage actionclock:player f_val
execute if score @s display_order matches 93 run data modify storage actionclock:player c3 set from storage actionclock:player h_val
execute if score @s display_order matches 93 run data modify storage actionclock:player c4 set from storage actionclock:player c_val
execute if score @s display_order matches 93 run data modify storage actionclock:player c5 set from storage actionclock:player x_val
execute if score @s display_order matches 93 run data modify storage actionclock:player c6 set from storage actionclock:player w_val
# 94: Dni -> Kierunek -> Glowka -> Kordy -> Pogoda -> Zegar
execute if score @s display_order matches 94 run data modify storage actionclock:player c1 set from storage actionclock:player d_val
execute if score @s display_order matches 94 run data modify storage actionclock:player c2 set from storage actionclock:player f_val
execute if score @s display_order matches 94 run data modify storage actionclock:player c3 set from storage actionclock:player h_val
execute if score @s display_order matches 94 run data modify storage actionclock:player c4 set from storage actionclock:player x_val
execute if score @s display_order matches 94 run data modify storage actionclock:player c5 set from storage actionclock:player w_val
execute if score @s display_order matches 94 run data modify storage actionclock:player c6 set from storage actionclock:player c_val
# 95: Dni -> Kierunek -> Glowka -> Kordy -> Zegar -> Pogoda
execute if score @s display_order matches 95 run data modify storage actionclock:player c1 set from storage actionclock:player d_val
execute if score @s display_order matches 95 run data modify storage actionclock:player c2 set from storage actionclock:player f_val
execute if score @s display_order matches 95 run data modify storage actionclock:player c3 set from storage actionclock:player h_val
execute if score @s display_order matches 95 run data modify storage actionclock:player c4 set from storage actionclock:player x_val
execute if score @s display_order matches 95 run data modify storage actionclock:player c5 set from storage actionclock:player c_val
execute if score @s display_order matches 95 run data modify storage actionclock:player c6 set from storage actionclock:player w_val
# 96: Dni -> Glowka -> Pogoda -> Zegar -> Kordy -> Kierunek
execute if score @s display_order matches 96 run data modify storage actionclock:player c1 set from storage actionclock:player d_val
execute if score @s display_order matches 96 run data modify storage actionclock:player c2 set from storage actionclock:player h_val
execute if score @s display_order matches 96 run data modify storage actionclock:player c3 set from storage actionclock:player w_val
execute if score @s display_order matches 96 run data modify storage actionclock:player c4 set from storage actionclock:player c_val
execute if score @s display_order matches 96 run data modify storage actionclock:player c5 set from storage actionclock:player x_val
execute if score @s display_order matches 96 run data modify storage actionclock:player c6 set from storage actionclock:player f_val
# 97: Dni -> Glowka -> Pogoda -> Zegar -> Kierunek -> Kordy
execute if score @s display_order matches 97 run data modify storage actionclock:player c1 set from storage actionclock:player d_val
execute if score @s display_order matches 97 run data modify storage actionclock:player c2 set from storage actionclock:player h_val
execute if score @s display_order matches 97 run data modify storage actionclock:player c3 set from storage actionclock:player w_val
execute if score @s display_order matches 97 run data modify storage actionclock:player c4 set from storage actionclock:player c_val
execute if score @s display_order matches 97 run data modify storage actionclock:player c5 set from storage actionclock:player f_val
execute if score @s display_order matches 97 run data modify storage actionclock:player c6 set from storage actionclock:player x_val
# 98: Dni -> Glowka -> Pogoda -> Kordy -> Zegar -> Kierunek
execute if score @s display_order matches 98 run data modify storage actionclock:player c1 set from storage actionclock:player d_val
execute if score @s display_order matches 98 run data modify storage actionclock:player c2 set from storage actionclock:player h_val
execute if score @s display_order matches 98 run data modify storage actionclock:player c3 set from storage actionclock:player w_val
execute if score @s display_order matches 98 run data modify storage actionclock:player c4 set from storage actionclock:player x_val
execute if score @s display_order matches 98 run data modify storage actionclock:player c5 set from storage actionclock:player c_val
execute if score @s display_order matches 98 run data modify storage actionclock:player c6 set from storage actionclock:player f_val
# 99: Dni -> Glowka -> Pogoda -> Kordy -> Kierunek -> Zegar
execute if score @s display_order matches 99 run data modify storage actionclock:player c1 set from storage actionclock:player d_val
execute if score @s display_order matches 99 run data modify storage actionclock:player c2 set from storage actionclock:player h_val
execute if score @s display_order matches 99 run data modify storage actionclock:player c3 set from storage actionclock:player w_val
execute if score @s display_order matches 99 run data modify storage actionclock:player c4 set from storage actionclock:player x_val
execute if score @s display_order matches 99 run data modify storage actionclock:player c5 set from storage actionclock:player f_val
execute if score @s display_order matches 99 run data modify storage actionclock:player c6 set from storage actionclock:player c_val
# 100: Dni -> Glowka -> Pogoda -> Kierunek -> Zegar -> Kordy
execute if score @s display_order matches 100 run data modify storage actionclock:player c1 set from storage actionclock:player d_val
execute if score @s display_order matches 100 run data modify storage actionclock:player c2 set from storage actionclock:player h_val
execute if score @s display_order matches 100 run data modify storage actionclock:player c3 set from storage actionclock:player w_val
execute if score @s display_order matches 100 run data modify storage actionclock:player c4 set from storage actionclock:player f_val
execute if score @s display_order matches 100 run data modify storage actionclock:player c5 set from storage actionclock:player c_val
execute if score @s display_order matches 100 run data modify storage actionclock:player c6 set from storage actionclock:player x_val
# 101: Dni -> Glowka -> Pogoda -> Kierunek -> Kordy -> Zegar
execute if score @s display_order matches 101 run data modify storage actionclock:player c1 set from storage actionclock:player d_val
execute if score @s display_order matches 101 run data modify storage actionclock:player c2 set from storage actionclock:player h_val
execute if score @s display_order matches 101 run data modify storage actionclock:player c3 set from storage actionclock:player w_val
execute if score @s display_order matches 101 run data modify storage actionclock:player c4 set from storage actionclock:player f_val
execute if score @s display_order matches 101 run data modify storage actionclock:player c5 set from storage actionclock:player x_val
execute if score @s display_order matches 101 run data modify storage actionclock:player c6 set from storage actionclock:player c_val
# 102: Dni -> Glowka -> Zegar -> Pogoda -> Kordy -> Kierunek
execute if score @s display_order matches 102 run data modify storage actionclock:player c1 set from storage actionclock:player d_val
execute if score @s display_order matches 102 run data modify storage actionclock:player c2 set from storage actionclock:player h_val
execute if score @s display_order matches 102 run data modify storage actionclock:player c3 set from storage actionclock:player c_val
execute if score @s display_order matches 102 run data modify storage actionclock:player c4 set from storage actionclock:player w_val
execute if score @s display_order matches 102 run data modify storage actionclock:player c5 set from storage actionclock:player x_val
execute if score @s display_order matches 102 run data modify storage actionclock:player c6 set from storage actionclock:player f_val
# 103: Dni -> Glowka -> Zegar -> Pogoda -> Kierunek -> Kordy
execute if score @s display_order matches 103 run data modify storage actionclock:player c1 set from storage actionclock:player d_val
execute if score @s display_order matches 103 run data modify storage actionclock:player c2 set from storage actionclock:player h_val
execute if score @s display_order matches 103 run data modify storage actionclock:player c3 set from storage actionclock:player c_val
execute if score @s display_order matches 103 run data modify storage actionclock:player c4 set from storage actionclock:player w_val
execute if score @s display_order matches 103 run data modify storage actionclock:player c5 set from storage actionclock:player f_val
execute if score @s display_order matches 103 run data modify storage actionclock:player c6 set from storage actionclock:player x_val
# 104: Dni -> Glowka -> Zegar -> Kordy -> Pogoda -> Kierunek
execute if score @s display_order matches 104 run data modify storage actionclock:player c1 set from storage actionclock:player d_val
execute if score @s display_order matches 104 run data modify storage actionclock:player c2 set from storage actionclock:player h_val
execute if score @s display_order matches 104 run data modify storage actionclock:player c3 set from storage actionclock:player c_val
execute if score @s display_order matches 104 run data modify storage actionclock:player c4 set from storage actionclock:player x_val
execute if score @s display_order matches 104 run data modify storage actionclock:player c5 set from storage actionclock:player w_val
execute if score @s display_order matches 104 run data modify storage actionclock:player c6 set from storage actionclock:player f_val
# 105: Dni -> Glowka -> Zegar -> Kordy -> Kierunek -> Pogoda
execute if score @s display_order matches 105 run data modify storage actionclock:player c1 set from storage actionclock:player d_val
execute if score @s display_order matches 105 run data modify storage actionclock:player c2 set from storage actionclock:player h_val
execute if score @s display_order matches 105 run data modify storage actionclock:player c3 set from storage actionclock:player c_val
execute if score @s display_order matches 105 run data modify storage actionclock:player c4 set from storage actionclock:player x_val
execute if score @s display_order matches 105 run data modify storage actionclock:player c5 set from storage actionclock:player f_val
execute if score @s display_order matches 105 run data modify storage actionclock:player c6 set from storage actionclock:player w_val
# 106: Dni -> Glowka -> Zegar -> Kierunek -> Pogoda -> Kordy
execute if score @s display_order matches 106 run data modify storage actionclock:player c1 set from storage actionclock:player d_val
execute if score @s display_order matches 106 run data modify storage actionclock:player c2 set from storage actionclock:player h_val
execute if score @s display_order matches 106 run data modify storage actionclock:player c3 set from storage actionclock:player c_val
execute if score @s display_order matches 106 run data modify storage actionclock:player c4 set from storage actionclock:player f_val
execute if score @s display_order matches 106 run data modify storage actionclock:player c5 set from storage actionclock:player w_val
execute if score @s display_order matches 106 run data modify storage actionclock:player c6 set from storage actionclock:player x_val
# 107: Dni -> Glowka -> Zegar -> Kierunek -> Kordy -> Pogoda
execute if score @s display_order matches 107 run data modify storage actionclock:player c1 set from storage actionclock:player d_val
execute if score @s display_order matches 107 run data modify storage actionclock:player c2 set from storage actionclock:player h_val
execute if score @s display_order matches 107 run data modify storage actionclock:player c3 set from storage actionclock:player c_val
execute if score @s display_order matches 107 run data modify storage actionclock:player c4 set from storage actionclock:player f_val
execute if score @s display_order matches 107 run data modify storage actionclock:player c5 set from storage actionclock:player x_val
execute if score @s display_order matches 107 run data modify storage actionclock:player c6 set from storage actionclock:player w_val
# 108: Dni -> Glowka -> Kordy -> Pogoda -> Zegar -> Kierunek
execute if score @s display_order matches 108 run data modify storage actionclock:player c1 set from storage actionclock:player d_val
execute if score @s display_order matches 108 run data modify storage actionclock:player c2 set from storage actionclock:player h_val
execute if score @s display_order matches 108 run data modify storage actionclock:player c3 set from storage actionclock:player x_val
execute if score @s display_order matches 108 run data modify storage actionclock:player c4 set from storage actionclock:player w_val
execute if score @s display_order matches 108 run data modify storage actionclock:player c5 set from storage actionclock:player c_val
execute if score @s display_order matches 108 run data modify storage actionclock:player c6 set from storage actionclock:player f_val
# 109: Dni -> Glowka -> Kordy -> Pogoda -> Kierunek -> Zegar
execute if score @s display_order matches 109 run data modify storage actionclock:player c1 set from storage actionclock:player d_val
execute if score @s display_order matches 109 run data modify storage actionclock:player c2 set from storage actionclock:player h_val
execute if score @s display_order matches 109 run data modify storage actionclock:player c3 set from storage actionclock:player x_val
execute if score @s display_order matches 109 run data modify storage actionclock:player c4 set from storage actionclock:player w_val
execute if score @s display_order matches 109 run data modify storage actionclock:player c5 set from storage actionclock:player f_val
execute if score @s display_order matches 109 run data modify storage actionclock:player c6 set from storage actionclock:player c_val
# 110: Dni -> Glowka -> Kordy -> Zegar -> Pogoda -> Kierunek
execute if score @s display_order matches 110 run data modify storage actionclock:player c1 set from storage actionclock:player d_val
execute if score @s display_order matches 110 run data modify storage actionclock:player c2 set from storage actionclock:player h_val
execute if score @s display_order matches 110 run data modify storage actionclock:player c3 set from storage actionclock:player x_val
execute if score @s display_order matches 110 run data modify storage actionclock:player c4 set from storage actionclock:player c_val
execute if score @s display_order matches 110 run data modify storage actionclock:player c5 set from storage actionclock:player w_val
execute if score @s display_order matches 110 run data modify storage actionclock:player c6 set from storage actionclock:player f_val
# 111: Dni -> Glowka -> Kordy -> Zegar -> Kierunek -> Pogoda
execute if score @s display_order matches 111 run data modify storage actionclock:player c1 set from storage actionclock:player d_val
execute if score @s display_order matches 111 run data modify storage actionclock:player c2 set from storage actionclock:player h_val
execute if score @s display_order matches 111 run data modify storage actionclock:player c3 set from storage actionclock:player x_val
execute if score @s display_order matches 111 run data modify storage actionclock:player c4 set from storage actionclock:player c_val
execute if score @s display_order matches 111 run data modify storage actionclock:player c5 set from storage actionclock:player f_val
execute if score @s display_order matches 111 run data modify storage actionclock:player c6 set from storage actionclock:player w_val
# 112: Dni -> Glowka -> Kordy -> Kierunek -> Pogoda -> Zegar
execute if score @s display_order matches 112 run data modify storage actionclock:player c1 set from storage actionclock:player d_val
execute if score @s display_order matches 112 run data modify storage actionclock:player c2 set from storage actionclock:player h_val
execute if score @s display_order matches 112 run data modify storage actionclock:player c3 set from storage actionclock:player x_val
execute if score @s display_order matches 112 run data modify storage actionclock:player c4 set from storage actionclock:player f_val
execute if score @s display_order matches 112 run data modify storage actionclock:player c5 set from storage actionclock:player w_val
execute if score @s display_order matches 112 run data modify storage actionclock:player c6 set from storage actionclock:player c_val
# 113: Dni -> Glowka -> Kordy -> Kierunek -> Zegar -> Pogoda
execute if score @s display_order matches 113 run data modify storage actionclock:player c1 set from storage actionclock:player d_val
execute if score @s display_order matches 113 run data modify storage actionclock:player c2 set from storage actionclock:player h_val
execute if score @s display_order matches 113 run data modify storage actionclock:player c3 set from storage actionclock:player x_val
execute if score @s display_order matches 113 run data modify storage actionclock:player c4 set from storage actionclock:player f_val
execute if score @s display_order matches 113 run data modify storage actionclock:player c5 set from storage actionclock:player c_val
execute if score @s display_order matches 113 run data modify storage actionclock:player c6 set from storage actionclock:player w_val
# 114: Dni -> Glowka -> Kierunek -> Pogoda -> Zegar -> Kordy
execute if score @s display_order matches 114 run data modify storage actionclock:player c1 set from storage actionclock:player d_val
execute if score @s display_order matches 114 run data modify storage actionclock:player c2 set from storage actionclock:player h_val
execute if score @s display_order matches 114 run data modify storage actionclock:player c3 set from storage actionclock:player f_val
execute if score @s display_order matches 114 run data modify storage actionclock:player c4 set from storage actionclock:player w_val
execute if score @s display_order matches 114 run data modify storage actionclock:player c5 set from storage actionclock:player c_val
execute if score @s display_order matches 114 run data modify storage actionclock:player c6 set from storage actionclock:player x_val
# 115: Dni -> Glowka -> Kierunek -> Pogoda -> Kordy -> Zegar
execute if score @s display_order matches 115 run data modify storage actionclock:player c1 set from storage actionclock:player d_val
execute if score @s display_order matches 115 run data modify storage actionclock:player c2 set from storage actionclock:player h_val
execute if score @s display_order matches 115 run data modify storage actionclock:player c3 set from storage actionclock:player f_val
execute if score @s display_order matches 115 run data modify storage actionclock:player c4 set from storage actionclock:player w_val
execute if score @s display_order matches 115 run data modify storage actionclock:player c5 set from storage actionclock:player x_val
execute if score @s display_order matches 115 run data modify storage actionclock:player c6 set from storage actionclock:player c_val
# 116: Dni -> Glowka -> Kierunek -> Zegar -> Pogoda -> Kordy
execute if score @s display_order matches 116 run data modify storage actionclock:player c1 set from storage actionclock:player d_val
execute if score @s display_order matches 116 run data modify storage actionclock:player c2 set from storage actionclock:player h_val
execute if score @s display_order matches 116 run data modify storage actionclock:player c3 set from storage actionclock:player f_val
execute if score @s display_order matches 116 run data modify storage actionclock:player c4 set from storage actionclock:player c_val
execute if score @s display_order matches 116 run data modify storage actionclock:player c5 set from storage actionclock:player w_val
execute if score @s display_order matches 116 run data modify storage actionclock:player c6 set from storage actionclock:player x_val
# 117: Dni -> Glowka -> Kierunek -> Zegar -> Kordy -> Pogoda
execute if score @s display_order matches 117 run data modify storage actionclock:player c1 set from storage actionclock:player d_val
execute if score @s display_order matches 117 run data modify storage actionclock:player c2 set from storage actionclock:player h_val
execute if score @s display_order matches 117 run data modify storage actionclock:player c3 set from storage actionclock:player f_val
execute if score @s display_order matches 117 run data modify storage actionclock:player c4 set from storage actionclock:player c_val
execute if score @s display_order matches 117 run data modify storage actionclock:player c5 set from storage actionclock:player x_val
execute if score @s display_order matches 117 run data modify storage actionclock:player c6 set from storage actionclock:player w_val
# 118: Dni -> Glowka -> Kierunek -> Kordy -> Pogoda -> Zegar
execute if score @s display_order matches 118 run data modify storage actionclock:player c1 set from storage actionclock:player d_val
execute if score @s display_order matches 118 run data modify storage actionclock:player c2 set from storage actionclock:player h_val
execute if score @s display_order matches 118 run data modify storage actionclock:player c3 set from storage actionclock:player f_val
execute if score @s display_order matches 118 run data modify storage actionclock:player c4 set from storage actionclock:player x_val
execute if score @s display_order matches 118 run data modify storage actionclock:player c5 set from storage actionclock:player w_val
execute if score @s display_order matches 118 run data modify storage actionclock:player c6 set from storage actionclock:player c_val
# 119: Dni -> Glowka -> Kierunek -> Kordy -> Zegar -> Pogoda
execute if score @s display_order matches 119 run data modify storage actionclock:player c1 set from storage actionclock:player d_val
execute if score @s display_order matches 119 run data modify storage actionclock:player c2 set from storage actionclock:player h_val
execute if score @s display_order matches 119 run data modify storage actionclock:player c3 set from storage actionclock:player f_val
execute if score @s display_order matches 119 run data modify storage actionclock:player c4 set from storage actionclock:player x_val
execute if score @s display_order matches 119 run data modify storage actionclock:player c5 set from storage actionclock:player c_val
execute if score @s display_order matches 119 run data modify storage actionclock:player c6 set from storage actionclock:player w_val
# 120: Pogoda -> Dni -> Zegar -> Kordy -> Kierunek -> Glowka
execute if score @s display_order matches 120 run data modify storage actionclock:player c1 set from storage actionclock:player w_val
execute if score @s display_order matches 120 run data modify storage actionclock:player c2 set from storage actionclock:player d_val
execute if score @s display_order matches 120 run data modify storage actionclock:player c3 set from storage actionclock:player c_val
execute if score @s display_order matches 120 run data modify storage actionclock:player c4 set from storage actionclock:player x_val
execute if score @s display_order matches 120 run data modify storage actionclock:player c5 set from storage actionclock:player f_val
execute if score @s display_order matches 120 run data modify storage actionclock:player c6 set from storage actionclock:player h_val
# 121: Pogoda -> Dni -> Zegar -> Kordy -> Glowka -> Kierunek
execute if score @s display_order matches 121 run data modify storage actionclock:player c1 set from storage actionclock:player w_val
execute if score @s display_order matches 121 run data modify storage actionclock:player c2 set from storage actionclock:player d_val
execute if score @s display_order matches 121 run data modify storage actionclock:player c3 set from storage actionclock:player c_val
execute if score @s display_order matches 121 run data modify storage actionclock:player c4 set from storage actionclock:player x_val
execute if score @s display_order matches 121 run data modify storage actionclock:player c5 set from storage actionclock:player h_val
execute if score @s display_order matches 121 run data modify storage actionclock:player c6 set from storage actionclock:player f_val
# 122: Pogoda -> Dni -> Zegar -> Kierunek -> Kordy -> Glowka
execute if score @s display_order matches 122 run data modify storage actionclock:player c1 set from storage actionclock:player w_val
execute if score @s display_order matches 122 run data modify storage actionclock:player c2 set from storage actionclock:player d_val
execute if score @s display_order matches 122 run data modify storage actionclock:player c3 set from storage actionclock:player c_val
execute if score @s display_order matches 122 run data modify storage actionclock:player c4 set from storage actionclock:player f_val
execute if score @s display_order matches 122 run data modify storage actionclock:player c5 set from storage actionclock:player x_val
execute if score @s display_order matches 122 run data modify storage actionclock:player c6 set from storage actionclock:player h_val
# 123: Pogoda -> Dni -> Zegar -> Kierunek -> Glowka -> Kordy
execute if score @s display_order matches 123 run data modify storage actionclock:player c1 set from storage actionclock:player w_val
execute if score @s display_order matches 123 run data modify storage actionclock:player c2 set from storage actionclock:player d_val
execute if score @s display_order matches 123 run data modify storage actionclock:player c3 set from storage actionclock:player c_val
execute if score @s display_order matches 123 run data modify storage actionclock:player c4 set from storage actionclock:player f_val
execute if score @s display_order matches 123 run data modify storage actionclock:player c5 set from storage actionclock:player h_val
execute if score @s display_order matches 123 run data modify storage actionclock:player c6 set from storage actionclock:player x_val
# 124: Pogoda -> Dni -> Zegar -> Glowka -> Kordy -> Kierunek
execute if score @s display_order matches 124 run data modify storage actionclock:player c1 set from storage actionclock:player w_val
execute if score @s display_order matches 124 run data modify storage actionclock:player c2 set from storage actionclock:player d_val
execute if score @s display_order matches 124 run data modify storage actionclock:player c3 set from storage actionclock:player c_val
execute if score @s display_order matches 124 run data modify storage actionclock:player c4 set from storage actionclock:player h_val
execute if score @s display_order matches 124 run data modify storage actionclock:player c5 set from storage actionclock:player x_val
execute if score @s display_order matches 124 run data modify storage actionclock:player c6 set from storage actionclock:player f_val
# 125: Pogoda -> Dni -> Zegar -> Glowka -> Kierunek -> Kordy
execute if score @s display_order matches 125 run data modify storage actionclock:player c1 set from storage actionclock:player w_val
execute if score @s display_order matches 125 run data modify storage actionclock:player c2 set from storage actionclock:player d_val
execute if score @s display_order matches 125 run data modify storage actionclock:player c3 set from storage actionclock:player c_val
execute if score @s display_order matches 125 run data modify storage actionclock:player c4 set from storage actionclock:player h_val
execute if score @s display_order matches 125 run data modify storage actionclock:player c5 set from storage actionclock:player f_val
execute if score @s display_order matches 125 run data modify storage actionclock:player c6 set from storage actionclock:player x_val
# 126: Pogoda -> Dni -> Kordy -> Zegar -> Kierunek -> Glowka
execute if score @s display_order matches 126 run data modify storage actionclock:player c1 set from storage actionclock:player w_val
execute if score @s display_order matches 126 run data modify storage actionclock:player c2 set from storage actionclock:player d_val
execute if score @s display_order matches 126 run data modify storage actionclock:player c3 set from storage actionclock:player x_val
execute if score @s display_order matches 126 run data modify storage actionclock:player c4 set from storage actionclock:player c_val
execute if score @s display_order matches 126 run data modify storage actionclock:player c5 set from storage actionclock:player f_val
execute if score @s display_order matches 126 run data modify storage actionclock:player c6 set from storage actionclock:player h_val
# 127: Pogoda -> Dni -> Kordy -> Zegar -> Glowka -> Kierunek
execute if score @s display_order matches 127 run data modify storage actionclock:player c1 set from storage actionclock:player w_val
execute if score @s display_order matches 127 run data modify storage actionclock:player c2 set from storage actionclock:player d_val
execute if score @s display_order matches 127 run data modify storage actionclock:player c3 set from storage actionclock:player x_val
execute if score @s display_order matches 127 run data modify storage actionclock:player c4 set from storage actionclock:player c_val
execute if score @s display_order matches 127 run data modify storage actionclock:player c5 set from storage actionclock:player h_val
execute if score @s display_order matches 127 run data modify storage actionclock:player c6 set from storage actionclock:player f_val
# 128: Pogoda -> Dni -> Kordy -> Kierunek -> Zegar -> Glowka
execute if score @s display_order matches 128 run data modify storage actionclock:player c1 set from storage actionclock:player w_val
execute if score @s display_order matches 128 run data modify storage actionclock:player c2 set from storage actionclock:player d_val
execute if score @s display_order matches 128 run data modify storage actionclock:player c3 set from storage actionclock:player x_val
execute if score @s display_order matches 128 run data modify storage actionclock:player c4 set from storage actionclock:player f_val
execute if score @s display_order matches 128 run data modify storage actionclock:player c5 set from storage actionclock:player c_val
execute if score @s display_order matches 128 run data modify storage actionclock:player c6 set from storage actionclock:player h_val
# 129: Pogoda -> Dni -> Kordy -> Kierunek -> Glowka -> Zegar
execute if score @s display_order matches 129 run data modify storage actionclock:player c1 set from storage actionclock:player w_val
execute if score @s display_order matches 129 run data modify storage actionclock:player c2 set from storage actionclock:player d_val
execute if score @s display_order matches 129 run data modify storage actionclock:player c3 set from storage actionclock:player x_val
execute if score @s display_order matches 129 run data modify storage actionclock:player c4 set from storage actionclock:player f_val
execute if score @s display_order matches 129 run data modify storage actionclock:player c5 set from storage actionclock:player h_val
execute if score @s display_order matches 129 run data modify storage actionclock:player c6 set from storage actionclock:player c_val
# 130: Pogoda -> Dni -> Kordy -> Glowka -> Zegar -> Kierunek
execute if score @s display_order matches 130 run data modify storage actionclock:player c1 set from storage actionclock:player w_val
execute if score @s display_order matches 130 run data modify storage actionclock:player c2 set from storage actionclock:player d_val
execute if score @s display_order matches 130 run data modify storage actionclock:player c3 set from storage actionclock:player x_val
execute if score @s display_order matches 130 run data modify storage actionclock:player c4 set from storage actionclock:player h_val
execute if score @s display_order matches 130 run data modify storage actionclock:player c5 set from storage actionclock:player c_val
execute if score @s display_order matches 130 run data modify storage actionclock:player c6 set from storage actionclock:player f_val
# 131: Pogoda -> Dni -> Kordy -> Glowka -> Kierunek -> Zegar
execute if score @s display_order matches 131 run data modify storage actionclock:player c1 set from storage actionclock:player w_val
execute if score @s display_order matches 131 run data modify storage actionclock:player c2 set from storage actionclock:player d_val
execute if score @s display_order matches 131 run data modify storage actionclock:player c3 set from storage actionclock:player x_val
execute if score @s display_order matches 131 run data modify storage actionclock:player c4 set from storage actionclock:player h_val
execute if score @s display_order matches 131 run data modify storage actionclock:player c5 set from storage actionclock:player f_val
execute if score @s display_order matches 131 run data modify storage actionclock:player c6 set from storage actionclock:player c_val
# 132: Pogoda -> Dni -> Kierunek -> Zegar -> Kordy -> Glowka
execute if score @s display_order matches 132 run data modify storage actionclock:player c1 set from storage actionclock:player w_val
execute if score @s display_order matches 132 run data modify storage actionclock:player c2 set from storage actionclock:player d_val
execute if score @s display_order matches 132 run data modify storage actionclock:player c3 set from storage actionclock:player f_val
execute if score @s display_order matches 132 run data modify storage actionclock:player c4 set from storage actionclock:player c_val
execute if score @s display_order matches 132 run data modify storage actionclock:player c5 set from storage actionclock:player x_val
execute if score @s display_order matches 132 run data modify storage actionclock:player c6 set from storage actionclock:player h_val
# 133: Pogoda -> Dni -> Kierunek -> Zegar -> Glowka -> Kordy
execute if score @s display_order matches 133 run data modify storage actionclock:player c1 set from storage actionclock:player w_val
execute if score @s display_order matches 133 run data modify storage actionclock:player c2 set from storage actionclock:player d_val
execute if score @s display_order matches 133 run data modify storage actionclock:player c3 set from storage actionclock:player f_val
execute if score @s display_order matches 133 run data modify storage actionclock:player c4 set from storage actionclock:player c_val
execute if score @s display_order matches 133 run data modify storage actionclock:player c5 set from storage actionclock:player h_val
execute if score @s display_order matches 133 run data modify storage actionclock:player c6 set from storage actionclock:player x_val
# 134: Pogoda -> Dni -> Kierunek -> Kordy -> Zegar -> Glowka
execute if score @s display_order matches 134 run data modify storage actionclock:player c1 set from storage actionclock:player w_val
execute if score @s display_order matches 134 run data modify storage actionclock:player c2 set from storage actionclock:player d_val
execute if score @s display_order matches 134 run data modify storage actionclock:player c3 set from storage actionclock:player f_val
execute if score @s display_order matches 134 run data modify storage actionclock:player c4 set from storage actionclock:player x_val
execute if score @s display_order matches 134 run data modify storage actionclock:player c5 set from storage actionclock:player c_val
execute if score @s display_order matches 134 run data modify storage actionclock:player c6 set from storage actionclock:player h_val
# 135: Pogoda -> Dni -> Kierunek -> Kordy -> Glowka -> Zegar
execute if score @s display_order matches 135 run data modify storage actionclock:player c1 set from storage actionclock:player w_val
execute if score @s display_order matches 135 run data modify storage actionclock:player c2 set from storage actionclock:player d_val
execute if score @s display_order matches 135 run data modify storage actionclock:player c3 set from storage actionclock:player f_val
execute if score @s display_order matches 135 run data modify storage actionclock:player c4 set from storage actionclock:player x_val
execute if score @s display_order matches 135 run data modify storage actionclock:player c5 set from storage actionclock:player h_val
execute if score @s display_order matches 135 run data modify storage actionclock:player c6 set from storage actionclock:player c_val
# 136: Pogoda -> Dni -> Kierunek -> Glowka -> Zegar -> Kordy
execute if score @s display_order matches 136 run data modify storage actionclock:player c1 set from storage actionclock:player w_val
execute if score @s display_order matches 136 run data modify storage actionclock:player c2 set from storage actionclock:player d_val
execute if score @s display_order matches 136 run data modify storage actionclock:player c3 set from storage actionclock:player f_val
execute if score @s display_order matches 136 run data modify storage actionclock:player c4 set from storage actionclock:player h_val
execute if score @s display_order matches 136 run data modify storage actionclock:player c5 set from storage actionclock:player c_val
execute if score @s display_order matches 136 run data modify storage actionclock:player c6 set from storage actionclock:player x_val
# 137: Pogoda -> Dni -> Kierunek -> Glowka -> Kordy -> Zegar
execute if score @s display_order matches 137 run data modify storage actionclock:player c1 set from storage actionclock:player w_val
execute if score @s display_order matches 137 run data modify storage actionclock:player c2 set from storage actionclock:player d_val
execute if score @s display_order matches 137 run data modify storage actionclock:player c3 set from storage actionclock:player f_val
execute if score @s display_order matches 137 run data modify storage actionclock:player c4 set from storage actionclock:player h_val
execute if score @s display_order matches 137 run data modify storage actionclock:player c5 set from storage actionclock:player x_val
execute if score @s display_order matches 137 run data modify storage actionclock:player c6 set from storage actionclock:player c_val
# 138: Pogoda -> Dni -> Glowka -> Zegar -> Kordy -> Kierunek
execute if score @s display_order matches 138 run data modify storage actionclock:player c1 set from storage actionclock:player w_val
execute if score @s display_order matches 138 run data modify storage actionclock:player c2 set from storage actionclock:player d_val
execute if score @s display_order matches 138 run data modify storage actionclock:player c3 set from storage actionclock:player h_val
execute if score @s display_order matches 138 run data modify storage actionclock:player c4 set from storage actionclock:player c_val
execute if score @s display_order matches 138 run data modify storage actionclock:player c5 set from storage actionclock:player x_val
execute if score @s display_order matches 138 run data modify storage actionclock:player c6 set from storage actionclock:player f_val
# 139: Pogoda -> Dni -> Glowka -> Zegar -> Kierunek -> Kordy
execute if score @s display_order matches 139 run data modify storage actionclock:player c1 set from storage actionclock:player w_val
execute if score @s display_order matches 139 run data modify storage actionclock:player c2 set from storage actionclock:player d_val
execute if score @s display_order matches 139 run data modify storage actionclock:player c3 set from storage actionclock:player h_val
execute if score @s display_order matches 139 run data modify storage actionclock:player c4 set from storage actionclock:player c_val
execute if score @s display_order matches 139 run data modify storage actionclock:player c5 set from storage actionclock:player f_val
execute if score @s display_order matches 139 run data modify storage actionclock:player c6 set from storage actionclock:player x_val
# 140: Pogoda -> Dni -> Glowka -> Kordy -> Zegar -> Kierunek
execute if score @s display_order matches 140 run data modify storage actionclock:player c1 set from storage actionclock:player w_val
execute if score @s display_order matches 140 run data modify storage actionclock:player c2 set from storage actionclock:player d_val
execute if score @s display_order matches 140 run data modify storage actionclock:player c3 set from storage actionclock:player h_val
execute if score @s display_order matches 140 run data modify storage actionclock:player c4 set from storage actionclock:player x_val
execute if score @s display_order matches 140 run data modify storage actionclock:player c5 set from storage actionclock:player c_val
execute if score @s display_order matches 140 run data modify storage actionclock:player c6 set from storage actionclock:player f_val
# 141: Pogoda -> Dni -> Glowka -> Kordy -> Kierunek -> Zegar
execute if score @s display_order matches 141 run data modify storage actionclock:player c1 set from storage actionclock:player w_val
execute if score @s display_order matches 141 run data modify storage actionclock:player c2 set from storage actionclock:player d_val
execute if score @s display_order matches 141 run data modify storage actionclock:player c3 set from storage actionclock:player h_val
execute if score @s display_order matches 141 run data modify storage actionclock:player c4 set from storage actionclock:player x_val
execute if score @s display_order matches 141 run data modify storage actionclock:player c5 set from storage actionclock:player f_val
execute if score @s display_order matches 141 run data modify storage actionclock:player c6 set from storage actionclock:player c_val
# 142: Pogoda -> Dni -> Glowka -> Kierunek -> Zegar -> Kordy
execute if score @s display_order matches 142 run data modify storage actionclock:player c1 set from storage actionclock:player w_val
execute if score @s display_order matches 142 run data modify storage actionclock:player c2 set from storage actionclock:player d_val
execute if score @s display_order matches 142 run data modify storage actionclock:player c3 set from storage actionclock:player h_val
execute if score @s display_order matches 142 run data modify storage actionclock:player c4 set from storage actionclock:player f_val
execute if score @s display_order matches 142 run data modify storage actionclock:player c5 set from storage actionclock:player c_val
execute if score @s display_order matches 142 run data modify storage actionclock:player c6 set from storage actionclock:player x_val
# 143: Pogoda -> Dni -> Glowka -> Kierunek -> Kordy -> Zegar
execute if score @s display_order matches 143 run data modify storage actionclock:player c1 set from storage actionclock:player w_val
execute if score @s display_order matches 143 run data modify storage actionclock:player c2 set from storage actionclock:player d_val
execute if score @s display_order matches 143 run data modify storage actionclock:player c3 set from storage actionclock:player h_val
execute if score @s display_order matches 143 run data modify storage actionclock:player c4 set from storage actionclock:player f_val
execute if score @s display_order matches 143 run data modify storage actionclock:player c5 set from storage actionclock:player x_val
execute if score @s display_order matches 143 run data modify storage actionclock:player c6 set from storage actionclock:player c_val
# 144: Pogoda -> Zegar -> Dni -> Kordy -> Kierunek -> Glowka
execute if score @s display_order matches 144 run data modify storage actionclock:player c1 set from storage actionclock:player w_val
execute if score @s display_order matches 144 run data modify storage actionclock:player c2 set from storage actionclock:player c_val
execute if score @s display_order matches 144 run data modify storage actionclock:player c3 set from storage actionclock:player d_val
execute if score @s display_order matches 144 run data modify storage actionclock:player c4 set from storage actionclock:player x_val
execute if score @s display_order matches 144 run data modify storage actionclock:player c5 set from storage actionclock:player f_val
execute if score @s display_order matches 144 run data modify storage actionclock:player c6 set from storage actionclock:player h_val
# 145: Pogoda -> Zegar -> Dni -> Kordy -> Glowka -> Kierunek
execute if score @s display_order matches 145 run data modify storage actionclock:player c1 set from storage actionclock:player w_val
execute if score @s display_order matches 145 run data modify storage actionclock:player c2 set from storage actionclock:player c_val
execute if score @s display_order matches 145 run data modify storage actionclock:player c3 set from storage actionclock:player d_val
execute if score @s display_order matches 145 run data modify storage actionclock:player c4 set from storage actionclock:player x_val
execute if score @s display_order matches 145 run data modify storage actionclock:player c5 set from storage actionclock:player h_val
execute if score @s display_order matches 145 run data modify storage actionclock:player c6 set from storage actionclock:player f_val
# 146: Pogoda -> Zegar -> Dni -> Kierunek -> Kordy -> Glowka
execute if score @s display_order matches 146 run data modify storage actionclock:player c1 set from storage actionclock:player w_val
execute if score @s display_order matches 146 run data modify storage actionclock:player c2 set from storage actionclock:player c_val
execute if score @s display_order matches 146 run data modify storage actionclock:player c3 set from storage actionclock:player d_val
execute if score @s display_order matches 146 run data modify storage actionclock:player c4 set from storage actionclock:player f_val
execute if score @s display_order matches 146 run data modify storage actionclock:player c5 set from storage actionclock:player x_val
execute if score @s display_order matches 146 run data modify storage actionclock:player c6 set from storage actionclock:player h_val
# 147: Pogoda -> Zegar -> Dni -> Kierunek -> Glowka -> Kordy
execute if score @s display_order matches 147 run data modify storage actionclock:player c1 set from storage actionclock:player w_val
execute if score @s display_order matches 147 run data modify storage actionclock:player c2 set from storage actionclock:player c_val
execute if score @s display_order matches 147 run data modify storage actionclock:player c3 set from storage actionclock:player d_val
execute if score @s display_order matches 147 run data modify storage actionclock:player c4 set from storage actionclock:player f_val
execute if score @s display_order matches 147 run data modify storage actionclock:player c5 set from storage actionclock:player h_val
execute if score @s display_order matches 147 run data modify storage actionclock:player c6 set from storage actionclock:player x_val
# 148: Pogoda -> Zegar -> Dni -> Glowka -> Kordy -> Kierunek
execute if score @s display_order matches 148 run data modify storage actionclock:player c1 set from storage actionclock:player w_val
execute if score @s display_order matches 148 run data modify storage actionclock:player c2 set from storage actionclock:player c_val
execute if score @s display_order matches 148 run data modify storage actionclock:player c3 set from storage actionclock:player d_val
execute if score @s display_order matches 148 run data modify storage actionclock:player c4 set from storage actionclock:player h_val
execute if score @s display_order matches 148 run data modify storage actionclock:player c5 set from storage actionclock:player x_val
execute if score @s display_order matches 148 run data modify storage actionclock:player c6 set from storage actionclock:player f_val
# 149: Pogoda -> Zegar -> Dni -> Glowka -> Kierunek -> Kordy
execute if score @s display_order matches 149 run data modify storage actionclock:player c1 set from storage actionclock:player w_val
execute if score @s display_order matches 149 run data modify storage actionclock:player c2 set from storage actionclock:player c_val
execute if score @s display_order matches 149 run data modify storage actionclock:player c3 set from storage actionclock:player d_val
execute if score @s display_order matches 149 run data modify storage actionclock:player c4 set from storage actionclock:player h_val
execute if score @s display_order matches 149 run data modify storage actionclock:player c5 set from storage actionclock:player f_val
execute if score @s display_order matches 149 run data modify storage actionclock:player c6 set from storage actionclock:player x_val
# 150: Pogoda -> Zegar -> Kordy -> Dni -> Kierunek -> Glowka
execute if score @s display_order matches 150 run data modify storage actionclock:player c1 set from storage actionclock:player w_val
execute if score @s display_order matches 150 run data modify storage actionclock:player c2 set from storage actionclock:player c_val
execute if score @s display_order matches 150 run data modify storage actionclock:player c3 set from storage actionclock:player x_val
execute if score @s display_order matches 150 run data modify storage actionclock:player c4 set from storage actionclock:player d_val
execute if score @s display_order matches 150 run data modify storage actionclock:player c5 set from storage actionclock:player f_val
execute if score @s display_order matches 150 run data modify storage actionclock:player c6 set from storage actionclock:player h_val
# 151: Pogoda -> Zegar -> Kordy -> Dni -> Glowka -> Kierunek
execute if score @s display_order matches 151 run data modify storage actionclock:player c1 set from storage actionclock:player w_val
execute if score @s display_order matches 151 run data modify storage actionclock:player c2 set from storage actionclock:player c_val
execute if score @s display_order matches 151 run data modify storage actionclock:player c3 set from storage actionclock:player x_val
execute if score @s display_order matches 151 run data modify storage actionclock:player c4 set from storage actionclock:player d_val
execute if score @s display_order matches 151 run data modify storage actionclock:player c5 set from storage actionclock:player h_val
execute if score @s display_order matches 151 run data modify storage actionclock:player c6 set from storage actionclock:player f_val
# 152: Pogoda -> Zegar -> Kordy -> Kierunek -> Dni -> Glowka
execute if score @s display_order matches 152 run data modify storage actionclock:player c1 set from storage actionclock:player w_val
execute if score @s display_order matches 152 run data modify storage actionclock:player c2 set from storage actionclock:player c_val
execute if score @s display_order matches 152 run data modify storage actionclock:player c3 set from storage actionclock:player x_val
execute if score @s display_order matches 152 run data modify storage actionclock:player c4 set from storage actionclock:player f_val
execute if score @s display_order matches 152 run data modify storage actionclock:player c5 set from storage actionclock:player d_val
execute if score @s display_order matches 152 run data modify storage actionclock:player c6 set from storage actionclock:player h_val
# 153: Pogoda -> Zegar -> Kordy -> Kierunek -> Glowka -> Dni
execute if score @s display_order matches 153 run data modify storage actionclock:player c1 set from storage actionclock:player w_val
execute if score @s display_order matches 153 run data modify storage actionclock:player c2 set from storage actionclock:player c_val
execute if score @s display_order matches 153 run data modify storage actionclock:player c3 set from storage actionclock:player x_val
execute if score @s display_order matches 153 run data modify storage actionclock:player c4 set from storage actionclock:player f_val
execute if score @s display_order matches 153 run data modify storage actionclock:player c5 set from storage actionclock:player h_val
execute if score @s display_order matches 153 run data modify storage actionclock:player c6 set from storage actionclock:player d_val
# 154: Pogoda -> Zegar -> Kordy -> Glowka -> Dni -> Kierunek
execute if score @s display_order matches 154 run data modify storage actionclock:player c1 set from storage actionclock:player w_val
execute if score @s display_order matches 154 run data modify storage actionclock:player c2 set from storage actionclock:player c_val
execute if score @s display_order matches 154 run data modify storage actionclock:player c3 set from storage actionclock:player x_val
execute if score @s display_order matches 154 run data modify storage actionclock:player c4 set from storage actionclock:player h_val
execute if score @s display_order matches 154 run data modify storage actionclock:player c5 set from storage actionclock:player d_val
execute if score @s display_order matches 154 run data modify storage actionclock:player c6 set from storage actionclock:player f_val
# 155: Pogoda -> Zegar -> Kordy -> Glowka -> Kierunek -> Dni
execute if score @s display_order matches 155 run data modify storage actionclock:player c1 set from storage actionclock:player w_val
execute if score @s display_order matches 155 run data modify storage actionclock:player c2 set from storage actionclock:player c_val
execute if score @s display_order matches 155 run data modify storage actionclock:player c3 set from storage actionclock:player x_val
execute if score @s display_order matches 155 run data modify storage actionclock:player c4 set from storage actionclock:player h_val
execute if score @s display_order matches 155 run data modify storage actionclock:player c5 set from storage actionclock:player f_val
execute if score @s display_order matches 155 run data modify storage actionclock:player c6 set from storage actionclock:player d_val
# 156: Pogoda -> Zegar -> Kierunek -> Dni -> Kordy -> Glowka
execute if score @s display_order matches 156 run data modify storage actionclock:player c1 set from storage actionclock:player w_val
execute if score @s display_order matches 156 run data modify storage actionclock:player c2 set from storage actionclock:player c_val
execute if score @s display_order matches 156 run data modify storage actionclock:player c3 set from storage actionclock:player f_val
execute if score @s display_order matches 156 run data modify storage actionclock:player c4 set from storage actionclock:player d_val
execute if score @s display_order matches 156 run data modify storage actionclock:player c5 set from storage actionclock:player x_val
execute if score @s display_order matches 156 run data modify storage actionclock:player c6 set from storage actionclock:player h_val
# 157: Pogoda -> Zegar -> Kierunek -> Dni -> Glowka -> Kordy
execute if score @s display_order matches 157 run data modify storage actionclock:player c1 set from storage actionclock:player w_val
execute if score @s display_order matches 157 run data modify storage actionclock:player c2 set from storage actionclock:player c_val
execute if score @s display_order matches 157 run data modify storage actionclock:player c3 set from storage actionclock:player f_val
execute if score @s display_order matches 157 run data modify storage actionclock:player c4 set from storage actionclock:player d_val
execute if score @s display_order matches 157 run data modify storage actionclock:player c5 set from storage actionclock:player h_val
execute if score @s display_order matches 157 run data modify storage actionclock:player c6 set from storage actionclock:player x_val
# 158: Pogoda -> Zegar -> Kierunek -> Kordy -> Dni -> Glowka
execute if score @s display_order matches 158 run data modify storage actionclock:player c1 set from storage actionclock:player w_val
execute if score @s display_order matches 158 run data modify storage actionclock:player c2 set from storage actionclock:player c_val
execute if score @s display_order matches 158 run data modify storage actionclock:player c3 set from storage actionclock:player f_val
execute if score @s display_order matches 158 run data modify storage actionclock:player c4 set from storage actionclock:player x_val
execute if score @s display_order matches 158 run data modify storage actionclock:player c5 set from storage actionclock:player d_val
execute if score @s display_order matches 158 run data modify storage actionclock:player c6 set from storage actionclock:player h_val
# 159: Pogoda -> Zegar -> Kierunek -> Kordy -> Glowka -> Dni
execute if score @s display_order matches 159 run data modify storage actionclock:player c1 set from storage actionclock:player w_val
execute if score @s display_order matches 159 run data modify storage actionclock:player c2 set from storage actionclock:player c_val
execute if score @s display_order matches 159 run data modify storage actionclock:player c3 set from storage actionclock:player f_val
execute if score @s display_order matches 159 run data modify storage actionclock:player c4 set from storage actionclock:player x_val
execute if score @s display_order matches 159 run data modify storage actionclock:player c5 set from storage actionclock:player h_val
execute if score @s display_order matches 159 run data modify storage actionclock:player c6 set from storage actionclock:player d_val
# 160: Pogoda -> Zegar -> Kierunek -> Glowka -> Dni -> Kordy
execute if score @s display_order matches 160 run data modify storage actionclock:player c1 set from storage actionclock:player w_val
execute if score @s display_order matches 160 run data modify storage actionclock:player c2 set from storage actionclock:player c_val
execute if score @s display_order matches 160 run data modify storage actionclock:player c3 set from storage actionclock:player f_val
execute if score @s display_order matches 160 run data modify storage actionclock:player c4 set from storage actionclock:player h_val
execute if score @s display_order matches 160 run data modify storage actionclock:player c5 set from storage actionclock:player d_val
execute if score @s display_order matches 160 run data modify storage actionclock:player c6 set from storage actionclock:player x_val
# 161: Pogoda -> Zegar -> Kierunek -> Glowka -> Kordy -> Dni
execute if score @s display_order matches 161 run data modify storage actionclock:player c1 set from storage actionclock:player w_val
execute if score @s display_order matches 161 run data modify storage actionclock:player c2 set from storage actionclock:player c_val
execute if score @s display_order matches 161 run data modify storage actionclock:player c3 set from storage actionclock:player f_val
execute if score @s display_order matches 161 run data modify storage actionclock:player c4 set from storage actionclock:player h_val
execute if score @s display_order matches 161 run data modify storage actionclock:player c5 set from storage actionclock:player x_val
execute if score @s display_order matches 161 run data modify storage actionclock:player c6 set from storage actionclock:player d_val
# 162: Pogoda -> Zegar -> Glowka -> Dni -> Kordy -> Kierunek
execute if score @s display_order matches 162 run data modify storage actionclock:player c1 set from storage actionclock:player w_val
execute if score @s display_order matches 162 run data modify storage actionclock:player c2 set from storage actionclock:player c_val
execute if score @s display_order matches 162 run data modify storage actionclock:player c3 set from storage actionclock:player h_val
execute if score @s display_order matches 162 run data modify storage actionclock:player c4 set from storage actionclock:player d_val
execute if score @s display_order matches 162 run data modify storage actionclock:player c5 set from storage actionclock:player x_val
execute if score @s display_order matches 162 run data modify storage actionclock:player c6 set from storage actionclock:player f_val
# 163: Pogoda -> Zegar -> Glowka -> Dni -> Kierunek -> Kordy
execute if score @s display_order matches 163 run data modify storage actionclock:player c1 set from storage actionclock:player w_val
execute if score @s display_order matches 163 run data modify storage actionclock:player c2 set from storage actionclock:player c_val
execute if score @s display_order matches 163 run data modify storage actionclock:player c3 set from storage actionclock:player h_val
execute if score @s display_order matches 163 run data modify storage actionclock:player c4 set from storage actionclock:player d_val
execute if score @s display_order matches 163 run data modify storage actionclock:player c5 set from storage actionclock:player f_val
execute if score @s display_order matches 163 run data modify storage actionclock:player c6 set from storage actionclock:player x_val
# 164: Pogoda -> Zegar -> Glowka -> Kordy -> Dni -> Kierunek
execute if score @s display_order matches 164 run data modify storage actionclock:player c1 set from storage actionclock:player w_val
execute if score @s display_order matches 164 run data modify storage actionclock:player c2 set from storage actionclock:player c_val
execute if score @s display_order matches 164 run data modify storage actionclock:player c3 set from storage actionclock:player h_val
execute if score @s display_order matches 164 run data modify storage actionclock:player c4 set from storage actionclock:player x_val
execute if score @s display_order matches 164 run data modify storage actionclock:player c5 set from storage actionclock:player d_val
execute if score @s display_order matches 164 run data modify storage actionclock:player c6 set from storage actionclock:player f_val
# 165: Pogoda -> Zegar -> Glowka -> Kordy -> Kierunek -> Dni
execute if score @s display_order matches 165 run data modify storage actionclock:player c1 set from storage actionclock:player w_val
execute if score @s display_order matches 165 run data modify storage actionclock:player c2 set from storage actionclock:player c_val
execute if score @s display_order matches 165 run data modify storage actionclock:player c3 set from storage actionclock:player h_val
execute if score @s display_order matches 165 run data modify storage actionclock:player c4 set from storage actionclock:player x_val
execute if score @s display_order matches 165 run data modify storage actionclock:player c5 set from storage actionclock:player f_val
execute if score @s display_order matches 165 run data modify storage actionclock:player c6 set from storage actionclock:player d_val
# 166: Pogoda -> Zegar -> Glowka -> Kierunek -> Dni -> Kordy
execute if score @s display_order matches 166 run data modify storage actionclock:player c1 set from storage actionclock:player w_val
execute if score @s display_order matches 166 run data modify storage actionclock:player c2 set from storage actionclock:player c_val
execute if score @s display_order matches 166 run data modify storage actionclock:player c3 set from storage actionclock:player h_val
execute if score @s display_order matches 166 run data modify storage actionclock:player c4 set from storage actionclock:player f_val
execute if score @s display_order matches 166 run data modify storage actionclock:player c5 set from storage actionclock:player d_val
execute if score @s display_order matches 166 run data modify storage actionclock:player c6 set from storage actionclock:player x_val
# 167: Pogoda -> Zegar -> Glowka -> Kierunek -> Kordy -> Dni
execute if score @s display_order matches 167 run data modify storage actionclock:player c1 set from storage actionclock:player w_val
execute if score @s display_order matches 167 run data modify storage actionclock:player c2 set from storage actionclock:player c_val
execute if score @s display_order matches 167 run data modify storage actionclock:player c3 set from storage actionclock:player h_val
execute if score @s display_order matches 167 run data modify storage actionclock:player c4 set from storage actionclock:player f_val
execute if score @s display_order matches 167 run data modify storage actionclock:player c5 set from storage actionclock:player x_val
execute if score @s display_order matches 167 run data modify storage actionclock:player c6 set from storage actionclock:player d_val
# 168: Pogoda -> Kordy -> Dni -> Zegar -> Kierunek -> Glowka
execute if score @s display_order matches 168 run data modify storage actionclock:player c1 set from storage actionclock:player w_val
execute if score @s display_order matches 168 run data modify storage actionclock:player c2 set from storage actionclock:player x_val
execute if score @s display_order matches 168 run data modify storage actionclock:player c3 set from storage actionclock:player d_val
execute if score @s display_order matches 168 run data modify storage actionclock:player c4 set from storage actionclock:player c_val
execute if score @s display_order matches 168 run data modify storage actionclock:player c5 set from storage actionclock:player f_val
execute if score @s display_order matches 168 run data modify storage actionclock:player c6 set from storage actionclock:player h_val
# 169: Pogoda -> Kordy -> Dni -> Zegar -> Glowka -> Kierunek
execute if score @s display_order matches 169 run data modify storage actionclock:player c1 set from storage actionclock:player w_val
execute if score @s display_order matches 169 run data modify storage actionclock:player c2 set from storage actionclock:player x_val
execute if score @s display_order matches 169 run data modify storage actionclock:player c3 set from storage actionclock:player d_val
execute if score @s display_order matches 169 run data modify storage actionclock:player c4 set from storage actionclock:player c_val
execute if score @s display_order matches 169 run data modify storage actionclock:player c5 set from storage actionclock:player h_val
execute if score @s display_order matches 169 run data modify storage actionclock:player c6 set from storage actionclock:player f_val
# 170: Pogoda -> Kordy -> Dni -> Kierunek -> Zegar -> Glowka
execute if score @s display_order matches 170 run data modify storage actionclock:player c1 set from storage actionclock:player w_val
execute if score @s display_order matches 170 run data modify storage actionclock:player c2 set from storage actionclock:player x_val
execute if score @s display_order matches 170 run data modify storage actionclock:player c3 set from storage actionclock:player d_val
execute if score @s display_order matches 170 run data modify storage actionclock:player c4 set from storage actionclock:player f_val
execute if score @s display_order matches 170 run data modify storage actionclock:player c5 set from storage actionclock:player c_val
execute if score @s display_order matches 170 run data modify storage actionclock:player c6 set from storage actionclock:player h_val
# 171: Pogoda -> Kordy -> Dni -> Kierunek -> Glowka -> Zegar
execute if score @s display_order matches 171 run data modify storage actionclock:player c1 set from storage actionclock:player w_val
execute if score @s display_order matches 171 run data modify storage actionclock:player c2 set from storage actionclock:player x_val
execute if score @s display_order matches 171 run data modify storage actionclock:player c3 set from storage actionclock:player d_val
execute if score @s display_order matches 171 run data modify storage actionclock:player c4 set from storage actionclock:player f_val
execute if score @s display_order matches 171 run data modify storage actionclock:player c5 set from storage actionclock:player h_val
execute if score @s display_order matches 171 run data modify storage actionclock:player c6 set from storage actionclock:player c_val
# 172: Pogoda -> Kordy -> Dni -> Glowka -> Zegar -> Kierunek
execute if score @s display_order matches 172 run data modify storage actionclock:player c1 set from storage actionclock:player w_val
execute if score @s display_order matches 172 run data modify storage actionclock:player c2 set from storage actionclock:player x_val
execute if score @s display_order matches 172 run data modify storage actionclock:player c3 set from storage actionclock:player d_val
execute if score @s display_order matches 172 run data modify storage actionclock:player c4 set from storage actionclock:player h_val
execute if score @s display_order matches 172 run data modify storage actionclock:player c5 set from storage actionclock:player c_val
execute if score @s display_order matches 172 run data modify storage actionclock:player c6 set from storage actionclock:player f_val
# 173: Pogoda -> Kordy -> Dni -> Glowka -> Kierunek -> Zegar
execute if score @s display_order matches 173 run data modify storage actionclock:player c1 set from storage actionclock:player w_val
execute if score @s display_order matches 173 run data modify storage actionclock:player c2 set from storage actionclock:player x_val
execute if score @s display_order matches 173 run data modify storage actionclock:player c3 set from storage actionclock:player d_val
execute if score @s display_order matches 173 run data modify storage actionclock:player c4 set from storage actionclock:player h_val
execute if score @s display_order matches 173 run data modify storage actionclock:player c5 set from storage actionclock:player f_val
execute if score @s display_order matches 173 run data modify storage actionclock:player c6 set from storage actionclock:player c_val
# 174: Pogoda -> Kordy -> Zegar -> Dni -> Kierunek -> Glowka
execute if score @s display_order matches 174 run data modify storage actionclock:player c1 set from storage actionclock:player w_val
execute if score @s display_order matches 174 run data modify storage actionclock:player c2 set from storage actionclock:player x_val
execute if score @s display_order matches 174 run data modify storage actionclock:player c3 set from storage actionclock:player c_val
execute if score @s display_order matches 174 run data modify storage actionclock:player c4 set from storage actionclock:player d_val
execute if score @s display_order matches 174 run data modify storage actionclock:player c5 set from storage actionclock:player f_val
execute if score @s display_order matches 174 run data modify storage actionclock:player c6 set from storage actionclock:player h_val
# 175: Pogoda -> Kordy -> Zegar -> Dni -> Glowka -> Kierunek
execute if score @s display_order matches 175 run data modify storage actionclock:player c1 set from storage actionclock:player w_val
execute if score @s display_order matches 175 run data modify storage actionclock:player c2 set from storage actionclock:player x_val
execute if score @s display_order matches 175 run data modify storage actionclock:player c3 set from storage actionclock:player c_val
execute if score @s display_order matches 175 run data modify storage actionclock:player c4 set from storage actionclock:player d_val
execute if score @s display_order matches 175 run data modify storage actionclock:player c5 set from storage actionclock:player h_val
execute if score @s display_order matches 175 run data modify storage actionclock:player c6 set from storage actionclock:player f_val
# 176: Pogoda -> Kordy -> Zegar -> Kierunek -> Dni -> Glowka
execute if score @s display_order matches 176 run data modify storage actionclock:player c1 set from storage actionclock:player w_val
execute if score @s display_order matches 176 run data modify storage actionclock:player c2 set from storage actionclock:player x_val
execute if score @s display_order matches 176 run data modify storage actionclock:player c3 set from storage actionclock:player c_val
execute if score @s display_order matches 176 run data modify storage actionclock:player c4 set from storage actionclock:player f_val
execute if score @s display_order matches 176 run data modify storage actionclock:player c5 set from storage actionclock:player d_val
execute if score @s display_order matches 176 run data modify storage actionclock:player c6 set from storage actionclock:player h_val
# 177: Pogoda -> Kordy -> Zegar -> Kierunek -> Glowka -> Dni
execute if score @s display_order matches 177 run data modify storage actionclock:player c1 set from storage actionclock:player w_val
execute if score @s display_order matches 177 run data modify storage actionclock:player c2 set from storage actionclock:player x_val
execute if score @s display_order matches 177 run data modify storage actionclock:player c3 set from storage actionclock:player c_val
execute if score @s display_order matches 177 run data modify storage actionclock:player c4 set from storage actionclock:player f_val
execute if score @s display_order matches 177 run data modify storage actionclock:player c5 set from storage actionclock:player h_val
execute if score @s display_order matches 177 run data modify storage actionclock:player c6 set from storage actionclock:player d_val
# 178: Pogoda -> Kordy -> Zegar -> Glowka -> Dni -> Kierunek
execute if score @s display_order matches 178 run data modify storage actionclock:player c1 set from storage actionclock:player w_val
execute if score @s display_order matches 178 run data modify storage actionclock:player c2 set from storage actionclock:player x_val
execute if score @s display_order matches 178 run data modify storage actionclock:player c3 set from storage actionclock:player c_val
execute if score @s display_order matches 178 run data modify storage actionclock:player c4 set from storage actionclock:player h_val
execute if score @s display_order matches 178 run data modify storage actionclock:player c5 set from storage actionclock:player d_val
execute if score @s display_order matches 178 run data modify storage actionclock:player c6 set from storage actionclock:player f_val
# 179: Pogoda -> Kordy -> Zegar -> Glowka -> Kierunek -> Dni
execute if score @s display_order matches 179 run data modify storage actionclock:player c1 set from storage actionclock:player w_val
execute if score @s display_order matches 179 run data modify storage actionclock:player c2 set from storage actionclock:player x_val
execute if score @s display_order matches 179 run data modify storage actionclock:player c3 set from storage actionclock:player c_val
execute if score @s display_order matches 179 run data modify storage actionclock:player c4 set from storage actionclock:player h_val
execute if score @s display_order matches 179 run data modify storage actionclock:player c5 set from storage actionclock:player f_val
execute if score @s display_order matches 179 run data modify storage actionclock:player c6 set from storage actionclock:player d_val
# 180: Pogoda -> Kordy -> Kierunek -> Dni -> Zegar -> Glowka
execute if score @s display_order matches 180 run data modify storage actionclock:player c1 set from storage actionclock:player w_val
execute if score @s display_order matches 180 run data modify storage actionclock:player c2 set from storage actionclock:player x_val
execute if score @s display_order matches 180 run data modify storage actionclock:player c3 set from storage actionclock:player f_val
execute if score @s display_order matches 180 run data modify storage actionclock:player c4 set from storage actionclock:player d_val
execute if score @s display_order matches 180 run data modify storage actionclock:player c5 set from storage actionclock:player c_val
execute if score @s display_order matches 180 run data modify storage actionclock:player c6 set from storage actionclock:player h_val
# 181: Pogoda -> Kordy -> Kierunek -> Dni -> Glowka -> Zegar
execute if score @s display_order matches 181 run data modify storage actionclock:player c1 set from storage actionclock:player w_val
execute if score @s display_order matches 181 run data modify storage actionclock:player c2 set from storage actionclock:player x_val
execute if score @s display_order matches 181 run data modify storage actionclock:player c3 set from storage actionclock:player f_val
execute if score @s display_order matches 181 run data modify storage actionclock:player c4 set from storage actionclock:player d_val
execute if score @s display_order matches 181 run data modify storage actionclock:player c5 set from storage actionclock:player h_val
execute if score @s display_order matches 181 run data modify storage actionclock:player c6 set from storage actionclock:player c_val
# 182: Pogoda -> Kordy -> Kierunek -> Zegar -> Dni -> Glowka
execute if score @s display_order matches 182 run data modify storage actionclock:player c1 set from storage actionclock:player w_val
execute if score @s display_order matches 182 run data modify storage actionclock:player c2 set from storage actionclock:player x_val
execute if score @s display_order matches 182 run data modify storage actionclock:player c3 set from storage actionclock:player f_val
execute if score @s display_order matches 182 run data modify storage actionclock:player c4 set from storage actionclock:player c_val
execute if score @s display_order matches 182 run data modify storage actionclock:player c5 set from storage actionclock:player d_val
execute if score @s display_order matches 182 run data modify storage actionclock:player c6 set from storage actionclock:player h_val
# 183: Pogoda -> Kordy -> Kierunek -> Zegar -> Glowka -> Dni
execute if score @s display_order matches 183 run data modify storage actionclock:player c1 set from storage actionclock:player w_val
execute if score @s display_order matches 183 run data modify storage actionclock:player c2 set from storage actionclock:player x_val
execute if score @s display_order matches 183 run data modify storage actionclock:player c3 set from storage actionclock:player f_val
execute if score @s display_order matches 183 run data modify storage actionclock:player c4 set from storage actionclock:player c_val
execute if score @s display_order matches 183 run data modify storage actionclock:player c5 set from storage actionclock:player h_val
execute if score @s display_order matches 183 run data modify storage actionclock:player c6 set from storage actionclock:player d_val
# 184: Pogoda -> Kordy -> Kierunek -> Glowka -> Dni -> Zegar
execute if score @s display_order matches 184 run data modify storage actionclock:player c1 set from storage actionclock:player w_val
execute if score @s display_order matches 184 run data modify storage actionclock:player c2 set from storage actionclock:player x_val
execute if score @s display_order matches 184 run data modify storage actionclock:player c3 set from storage actionclock:player f_val
execute if score @s display_order matches 184 run data modify storage actionclock:player c4 set from storage actionclock:player h_val
execute if score @s display_order matches 184 run data modify storage actionclock:player c5 set from storage actionclock:player d_val
execute if score @s display_order matches 184 run data modify storage actionclock:player c6 set from storage actionclock:player c_val
# 185: Pogoda -> Kordy -> Kierunek -> Glowka -> Zegar -> Dni
execute if score @s display_order matches 185 run data modify storage actionclock:player c1 set from storage actionclock:player w_val
execute if score @s display_order matches 185 run data modify storage actionclock:player c2 set from storage actionclock:player x_val
execute if score @s display_order matches 185 run data modify storage actionclock:player c3 set from storage actionclock:player f_val
execute if score @s display_order matches 185 run data modify storage actionclock:player c4 set from storage actionclock:player h_val
execute if score @s display_order matches 185 run data modify storage actionclock:player c5 set from storage actionclock:player c_val
execute if score @s display_order matches 185 run data modify storage actionclock:player c6 set from storage actionclock:player d_val
# 186: Pogoda -> Kordy -> Glowka -> Dni -> Zegar -> Kierunek
execute if score @s display_order matches 186 run data modify storage actionclock:player c1 set from storage actionclock:player w_val
execute if score @s display_order matches 186 run data modify storage actionclock:player c2 set from storage actionclock:player x_val
execute if score @s display_order matches 186 run data modify storage actionclock:player c3 set from storage actionclock:player h_val
execute if score @s display_order matches 186 run data modify storage actionclock:player c4 set from storage actionclock:player d_val
execute if score @s display_order matches 186 run data modify storage actionclock:player c5 set from storage actionclock:player c_val
execute if score @s display_order matches 186 run data modify storage actionclock:player c6 set from storage actionclock:player f_val
# 187: Pogoda -> Kordy -> Glowka -> Dni -> Kierunek -> Zegar
execute if score @s display_order matches 187 run data modify storage actionclock:player c1 set from storage actionclock:player w_val
execute if score @s display_order matches 187 run data modify storage actionclock:player c2 set from storage actionclock:player x_val
execute if score @s display_order matches 187 run data modify storage actionclock:player c3 set from storage actionclock:player h_val
execute if score @s display_order matches 187 run data modify storage actionclock:player c4 set from storage actionclock:player d_val
execute if score @s display_order matches 187 run data modify storage actionclock:player c5 set from storage actionclock:player f_val
execute if score @s display_order matches 187 run data modify storage actionclock:player c6 set from storage actionclock:player c_val
# 188: Pogoda -> Kordy -> Glowka -> Zegar -> Dni -> Kierunek
execute if score @s display_order matches 188 run data modify storage actionclock:player c1 set from storage actionclock:player w_val
execute if score @s display_order matches 188 run data modify storage actionclock:player c2 set from storage actionclock:player x_val
execute if score @s display_order matches 188 run data modify storage actionclock:player c3 set from storage actionclock:player h_val
execute if score @s display_order matches 188 run data modify storage actionclock:player c4 set from storage actionclock:player c_val
execute if score @s display_order matches 188 run data modify storage actionclock:player c5 set from storage actionclock:player d_val
execute if score @s display_order matches 188 run data modify storage actionclock:player c6 set from storage actionclock:player f_val
# 189: Pogoda -> Kordy -> Glowka -> Zegar -> Kierunek -> Dni
execute if score @s display_order matches 189 run data modify storage actionclock:player c1 set from storage actionclock:player w_val
execute if score @s display_order matches 189 run data modify storage actionclock:player c2 set from storage actionclock:player x_val
execute if score @s display_order matches 189 run data modify storage actionclock:player c3 set from storage actionclock:player h_val
execute if score @s display_order matches 189 run data modify storage actionclock:player c4 set from storage actionclock:player c_val
execute if score @s display_order matches 189 run data modify storage actionclock:player c5 set from storage actionclock:player f_val
execute if score @s display_order matches 189 run data modify storage actionclock:player c6 set from storage actionclock:player d_val
# 190: Pogoda -> Kordy -> Glowka -> Kierunek -> Dni -> Zegar
execute if score @s display_order matches 190 run data modify storage actionclock:player c1 set from storage actionclock:player w_val
execute if score @s display_order matches 190 run data modify storage actionclock:player c2 set from storage actionclock:player x_val
execute if score @s display_order matches 190 run data modify storage actionclock:player c3 set from storage actionclock:player h_val
execute if score @s display_order matches 190 run data modify storage actionclock:player c4 set from storage actionclock:player f_val
execute if score @s display_order matches 190 run data modify storage actionclock:player c5 set from storage actionclock:player d_val
execute if score @s display_order matches 190 run data modify storage actionclock:player c6 set from storage actionclock:player c_val
# 191: Pogoda -> Kordy -> Glowka -> Kierunek -> Zegar -> Dni
execute if score @s display_order matches 191 run data modify storage actionclock:player c1 set from storage actionclock:player w_val
execute if score @s display_order matches 191 run data modify storage actionclock:player c2 set from storage actionclock:player x_val
execute if score @s display_order matches 191 run data modify storage actionclock:player c3 set from storage actionclock:player h_val
execute if score @s display_order matches 191 run data modify storage actionclock:player c4 set from storage actionclock:player f_val
execute if score @s display_order matches 191 run data modify storage actionclock:player c5 set from storage actionclock:player c_val
execute if score @s display_order matches 191 run data modify storage actionclock:player c6 set from storage actionclock:player d_val
# 192: Pogoda -> Kierunek -> Dni -> Zegar -> Kordy -> Glowka
execute if score @s display_order matches 192 run data modify storage actionclock:player c1 set from storage actionclock:player w_val
execute if score @s display_order matches 192 run data modify storage actionclock:player c2 set from storage actionclock:player f_val
execute if score @s display_order matches 192 run data modify storage actionclock:player c3 set from storage actionclock:player d_val
execute if score @s display_order matches 192 run data modify storage actionclock:player c4 set from storage actionclock:player c_val
execute if score @s display_order matches 192 run data modify storage actionclock:player c5 set from storage actionclock:player x_val
execute if score @s display_order matches 192 run data modify storage actionclock:player c6 set from storage actionclock:player h_val
# 193: Pogoda -> Kierunek -> Dni -> Zegar -> Glowka -> Kordy
execute if score @s display_order matches 193 run data modify storage actionclock:player c1 set from storage actionclock:player w_val
execute if score @s display_order matches 193 run data modify storage actionclock:player c2 set from storage actionclock:player f_val
execute if score @s display_order matches 193 run data modify storage actionclock:player c3 set from storage actionclock:player d_val
execute if score @s display_order matches 193 run data modify storage actionclock:player c4 set from storage actionclock:player c_val
execute if score @s display_order matches 193 run data modify storage actionclock:player c5 set from storage actionclock:player h_val
execute if score @s display_order matches 193 run data modify storage actionclock:player c6 set from storage actionclock:player x_val
# 194: Pogoda -> Kierunek -> Dni -> Kordy -> Zegar -> Glowka
execute if score @s display_order matches 194 run data modify storage actionclock:player c1 set from storage actionclock:player w_val
execute if score @s display_order matches 194 run data modify storage actionclock:player c2 set from storage actionclock:player f_val
execute if score @s display_order matches 194 run data modify storage actionclock:player c3 set from storage actionclock:player d_val
execute if score @s display_order matches 194 run data modify storage actionclock:player c4 set from storage actionclock:player x_val
execute if score @s display_order matches 194 run data modify storage actionclock:player c5 set from storage actionclock:player c_val
execute if score @s display_order matches 194 run data modify storage actionclock:player c6 set from storage actionclock:player h_val
# 195: Pogoda -> Kierunek -> Dni -> Kordy -> Glowka -> Zegar
execute if score @s display_order matches 195 run data modify storage actionclock:player c1 set from storage actionclock:player w_val
execute if score @s display_order matches 195 run data modify storage actionclock:player c2 set from storage actionclock:player f_val
execute if score @s display_order matches 195 run data modify storage actionclock:player c3 set from storage actionclock:player d_val
execute if score @s display_order matches 195 run data modify storage actionclock:player c4 set from storage actionclock:player x_val
execute if score @s display_order matches 195 run data modify storage actionclock:player c5 set from storage actionclock:player h_val
execute if score @s display_order matches 195 run data modify storage actionclock:player c6 set from storage actionclock:player c_val
# 196: Pogoda -> Kierunek -> Dni -> Glowka -> Zegar -> Kordy
execute if score @s display_order matches 196 run data modify storage actionclock:player c1 set from storage actionclock:player w_val
execute if score @s display_order matches 196 run data modify storage actionclock:player c2 set from storage actionclock:player f_val
execute if score @s display_order matches 196 run data modify storage actionclock:player c3 set from storage actionclock:player d_val
execute if score @s display_order matches 196 run data modify storage actionclock:player c4 set from storage actionclock:player h_val
execute if score @s display_order matches 196 run data modify storage actionclock:player c5 set from storage actionclock:player c_val
execute if score @s display_order matches 196 run data modify storage actionclock:player c6 set from storage actionclock:player x_val
# 197: Pogoda -> Kierunek -> Dni -> Glowka -> Kordy -> Zegar
execute if score @s display_order matches 197 run data modify storage actionclock:player c1 set from storage actionclock:player w_val
execute if score @s display_order matches 197 run data modify storage actionclock:player c2 set from storage actionclock:player f_val
execute if score @s display_order matches 197 run data modify storage actionclock:player c3 set from storage actionclock:player d_val
execute if score @s display_order matches 197 run data modify storage actionclock:player c4 set from storage actionclock:player h_val
execute if score @s display_order matches 197 run data modify storage actionclock:player c5 set from storage actionclock:player x_val
execute if score @s display_order matches 197 run data modify storage actionclock:player c6 set from storage actionclock:player c_val
# 198: Pogoda -> Kierunek -> Zegar -> Dni -> Kordy -> Glowka
execute if score @s display_order matches 198 run data modify storage actionclock:player c1 set from storage actionclock:player w_val
execute if score @s display_order matches 198 run data modify storage actionclock:player c2 set from storage actionclock:player f_val
execute if score @s display_order matches 198 run data modify storage actionclock:player c3 set from storage actionclock:player c_val
execute if score @s display_order matches 198 run data modify storage actionclock:player c4 set from storage actionclock:player d_val
execute if score @s display_order matches 198 run data modify storage actionclock:player c5 set from storage actionclock:player x_val
execute if score @s display_order matches 198 run data modify storage actionclock:player c6 set from storage actionclock:player h_val
# 199: Pogoda -> Kierunek -> Zegar -> Dni -> Glowka -> Kordy
execute if score @s display_order matches 199 run data modify storage actionclock:player c1 set from storage actionclock:player w_val
execute if score @s display_order matches 199 run data modify storage actionclock:player c2 set from storage actionclock:player f_val
execute if score @s display_order matches 199 run data modify storage actionclock:player c3 set from storage actionclock:player c_val
execute if score @s display_order matches 199 run data modify storage actionclock:player c4 set from storage actionclock:player d_val
execute if score @s display_order matches 199 run data modify storage actionclock:player c5 set from storage actionclock:player h_val
execute if score @s display_order matches 199 run data modify storage actionclock:player c6 set from storage actionclock:player x_val
# 200: Pogoda -> Kierunek -> Zegar -> Kordy -> Dni -> Glowka
execute if score @s display_order matches 200 run data modify storage actionclock:player c1 set from storage actionclock:player w_val
execute if score @s display_order matches 200 run data modify storage actionclock:player c2 set from storage actionclock:player f_val
execute if score @s display_order matches 200 run data modify storage actionclock:player c3 set from storage actionclock:player c_val
execute if score @s display_order matches 200 run data modify storage actionclock:player c4 set from storage actionclock:player x_val
execute if score @s display_order matches 200 run data modify storage actionclock:player c5 set from storage actionclock:player d_val
execute if score @s display_order matches 200 run data modify storage actionclock:player c6 set from storage actionclock:player h_val
# 201: Pogoda -> Kierunek -> Zegar -> Kordy -> Glowka -> Dni
execute if score @s display_order matches 201 run data modify storage actionclock:player c1 set from storage actionclock:player w_val
execute if score @s display_order matches 201 run data modify storage actionclock:player c2 set from storage actionclock:player f_val
execute if score @s display_order matches 201 run data modify storage actionclock:player c3 set from storage actionclock:player c_val
execute if score @s display_order matches 201 run data modify storage actionclock:player c4 set from storage actionclock:player x_val
execute if score @s display_order matches 201 run data modify storage actionclock:player c5 set from storage actionclock:player h_val
execute if score @s display_order matches 201 run data modify storage actionclock:player c6 set from storage actionclock:player d_val
# 202: Pogoda -> Kierunek -> Zegar -> Glowka -> Dni -> Kordy
execute if score @s display_order matches 202 run data modify storage actionclock:player c1 set from storage actionclock:player w_val
execute if score @s display_order matches 202 run data modify storage actionclock:player c2 set from storage actionclock:player f_val
execute if score @s display_order matches 202 run data modify storage actionclock:player c3 set from storage actionclock:player c_val
execute if score @s display_order matches 202 run data modify storage actionclock:player c4 set from storage actionclock:player h_val
execute if score @s display_order matches 202 run data modify storage actionclock:player c5 set from storage actionclock:player d_val
execute if score @s display_order matches 202 run data modify storage actionclock:player c6 set from storage actionclock:player x_val
# 203: Pogoda -> Kierunek -> Zegar -> Glowka -> Kordy -> Dni
execute if score @s display_order matches 203 run data modify storage actionclock:player c1 set from storage actionclock:player w_val
execute if score @s display_order matches 203 run data modify storage actionclock:player c2 set from storage actionclock:player f_val
execute if score @s display_order matches 203 run data modify storage actionclock:player c3 set from storage actionclock:player c_val
execute if score @s display_order matches 203 run data modify storage actionclock:player c4 set from storage actionclock:player h_val
execute if score @s display_order matches 203 run data modify storage actionclock:player c5 set from storage actionclock:player x_val
execute if score @s display_order matches 203 run data modify storage actionclock:player c6 set from storage actionclock:player d_val
# 204: Pogoda -> Kierunek -> Kordy -> Dni -> Zegar -> Glowka
execute if score @s display_order matches 204 run data modify storage actionclock:player c1 set from storage actionclock:player w_val
execute if score @s display_order matches 204 run data modify storage actionclock:player c2 set from storage actionclock:player f_val
execute if score @s display_order matches 204 run data modify storage actionclock:player c3 set from storage actionclock:player x_val
execute if score @s display_order matches 204 run data modify storage actionclock:player c4 set from storage actionclock:player d_val
execute if score @s display_order matches 204 run data modify storage actionclock:player c5 set from storage actionclock:player c_val
execute if score @s display_order matches 204 run data modify storage actionclock:player c6 set from storage actionclock:player h_val
# 205: Pogoda -> Kierunek -> Kordy -> Dni -> Glowka -> Zegar
execute if score @s display_order matches 205 run data modify storage actionclock:player c1 set from storage actionclock:player w_val
execute if score @s display_order matches 205 run data modify storage actionclock:player c2 set from storage actionclock:player f_val
execute if score @s display_order matches 205 run data modify storage actionclock:player c3 set from storage actionclock:player x_val
execute if score @s display_order matches 205 run data modify storage actionclock:player c4 set from storage actionclock:player d_val
execute if score @s display_order matches 205 run data modify storage actionclock:player c5 set from storage actionclock:player h_val
execute if score @s display_order matches 205 run data modify storage actionclock:player c6 set from storage actionclock:player c_val
# 206: Pogoda -> Kierunek -> Kordy -> Zegar -> Dni -> Glowka
execute if score @s display_order matches 206 run data modify storage actionclock:player c1 set from storage actionclock:player w_val
execute if score @s display_order matches 206 run data modify storage actionclock:player c2 set from storage actionclock:player f_val
execute if score @s display_order matches 206 run data modify storage actionclock:player c3 set from storage actionclock:player x_val
execute if score @s display_order matches 206 run data modify storage actionclock:player c4 set from storage actionclock:player c_val
execute if score @s display_order matches 206 run data modify storage actionclock:player c5 set from storage actionclock:player d_val
execute if score @s display_order matches 206 run data modify storage actionclock:player c6 set from storage actionclock:player h_val
# 207: Pogoda -> Kierunek -> Kordy -> Zegar -> Glowka -> Dni
execute if score @s display_order matches 207 run data modify storage actionclock:player c1 set from storage actionclock:player w_val
execute if score @s display_order matches 207 run data modify storage actionclock:player c2 set from storage actionclock:player f_val
execute if score @s display_order matches 207 run data modify storage actionclock:player c3 set from storage actionclock:player x_val
execute if score @s display_order matches 207 run data modify storage actionclock:player c4 set from storage actionclock:player c_val
execute if score @s display_order matches 207 run data modify storage actionclock:player c5 set from storage actionclock:player h_val
execute if score @s display_order matches 207 run data modify storage actionclock:player c6 set from storage actionclock:player d_val
# 208: Pogoda -> Kierunek -> Kordy -> Glowka -> Dni -> Zegar
execute if score @s display_order matches 208 run data modify storage actionclock:player c1 set from storage actionclock:player w_val
execute if score @s display_order matches 208 run data modify storage actionclock:player c2 set from storage actionclock:player f_val
execute if score @s display_order matches 208 run data modify storage actionclock:player c3 set from storage actionclock:player x_val
execute if score @s display_order matches 208 run data modify storage actionclock:player c4 set from storage actionclock:player h_val
execute if score @s display_order matches 208 run data modify storage actionclock:player c5 set from storage actionclock:player d_val
execute if score @s display_order matches 208 run data modify storage actionclock:player c6 set from storage actionclock:player c_val
# 209: Pogoda -> Kierunek -> Kordy -> Glowka -> Zegar -> Dni
execute if score @s display_order matches 209 run data modify storage actionclock:player c1 set from storage actionclock:player w_val
execute if score @s display_order matches 209 run data modify storage actionclock:player c2 set from storage actionclock:player f_val
execute if score @s display_order matches 209 run data modify storage actionclock:player c3 set from storage actionclock:player x_val
execute if score @s display_order matches 209 run data modify storage actionclock:player c4 set from storage actionclock:player h_val
execute if score @s display_order matches 209 run data modify storage actionclock:player c5 set from storage actionclock:player c_val
execute if score @s display_order matches 209 run data modify storage actionclock:player c6 set from storage actionclock:player d_val
# 210: Pogoda -> Kierunek -> Glowka -> Dni -> Zegar -> Kordy
execute if score @s display_order matches 210 run data modify storage actionclock:player c1 set from storage actionclock:player w_val
execute if score @s display_order matches 210 run data modify storage actionclock:player c2 set from storage actionclock:player f_val
execute if score @s display_order matches 210 run data modify storage actionclock:player c3 set from storage actionclock:player h_val
execute if score @s display_order matches 210 run data modify storage actionclock:player c4 set from storage actionclock:player d_val
execute if score @s display_order matches 210 run data modify storage actionclock:player c5 set from storage actionclock:player c_val
execute if score @s display_order matches 210 run data modify storage actionclock:player c6 set from storage actionclock:player x_val
# 211: Pogoda -> Kierunek -> Glowka -> Dni -> Kordy -> Zegar
execute if score @s display_order matches 211 run data modify storage actionclock:player c1 set from storage actionclock:player w_val
execute if score @s display_order matches 211 run data modify storage actionclock:player c2 set from storage actionclock:player f_val
execute if score @s display_order matches 211 run data modify storage actionclock:player c3 set from storage actionclock:player h_val
execute if score @s display_order matches 211 run data modify storage actionclock:player c4 set from storage actionclock:player d_val
execute if score @s display_order matches 211 run data modify storage actionclock:player c5 set from storage actionclock:player x_val
execute if score @s display_order matches 211 run data modify storage actionclock:player c6 set from storage actionclock:player c_val
# 212: Pogoda -> Kierunek -> Glowka -> Zegar -> Dni -> Kordy
execute if score @s display_order matches 212 run data modify storage actionclock:player c1 set from storage actionclock:player w_val
execute if score @s display_order matches 212 run data modify storage actionclock:player c2 set from storage actionclock:player f_val
execute if score @s display_order matches 212 run data modify storage actionclock:player c3 set from storage actionclock:player h_val
execute if score @s display_order matches 212 run data modify storage actionclock:player c4 set from storage actionclock:player c_val
execute if score @s display_order matches 212 run data modify storage actionclock:player c5 set from storage actionclock:player d_val
execute if score @s display_order matches 212 run data modify storage actionclock:player c6 set from storage actionclock:player x_val
# 213: Pogoda -> Kierunek -> Glowka -> Zegar -> Kordy -> Dni
execute if score @s display_order matches 213 run data modify storage actionclock:player c1 set from storage actionclock:player w_val
execute if score @s display_order matches 213 run data modify storage actionclock:player c2 set from storage actionclock:player f_val
execute if score @s display_order matches 213 run data modify storage actionclock:player c3 set from storage actionclock:player h_val
execute if score @s display_order matches 213 run data modify storage actionclock:player c4 set from storage actionclock:player c_val
execute if score @s display_order matches 213 run data modify storage actionclock:player c5 set from storage actionclock:player x_val
execute if score @s display_order matches 213 run data modify storage actionclock:player c6 set from storage actionclock:player d_val
# 214: Pogoda -> Kierunek -> Glowka -> Kordy -> Dni -> Zegar
execute if score @s display_order matches 214 run data modify storage actionclock:player c1 set from storage actionclock:player w_val
execute if score @s display_order matches 214 run data modify storage actionclock:player c2 set from storage actionclock:player f_val
execute if score @s display_order matches 214 run data modify storage actionclock:player c3 set from storage actionclock:player h_val
execute if score @s display_order matches 214 run data modify storage actionclock:player c4 set from storage actionclock:player x_val
execute if score @s display_order matches 214 run data modify storage actionclock:player c5 set from storage actionclock:player d_val
execute if score @s display_order matches 214 run data modify storage actionclock:player c6 set from storage actionclock:player c_val
# 215: Pogoda -> Kierunek -> Glowka -> Kordy -> Zegar -> Dni
execute if score @s display_order matches 215 run data modify storage actionclock:player c1 set from storage actionclock:player w_val
execute if score @s display_order matches 215 run data modify storage actionclock:player c2 set from storage actionclock:player f_val
execute if score @s display_order matches 215 run data modify storage actionclock:player c3 set from storage actionclock:player h_val
execute if score @s display_order matches 215 run data modify storage actionclock:player c4 set from storage actionclock:player x_val
execute if score @s display_order matches 215 run data modify storage actionclock:player c5 set from storage actionclock:player c_val
execute if score @s display_order matches 215 run data modify storage actionclock:player c6 set from storage actionclock:player d_val
# 216: Pogoda -> Glowka -> Dni -> Zegar -> Kordy -> Kierunek
execute if score @s display_order matches 216 run data modify storage actionclock:player c1 set from storage actionclock:player w_val
execute if score @s display_order matches 216 run data modify storage actionclock:player c2 set from storage actionclock:player h_val
execute if score @s display_order matches 216 run data modify storage actionclock:player c3 set from storage actionclock:player d_val
execute if score @s display_order matches 216 run data modify storage actionclock:player c4 set from storage actionclock:player c_val
execute if score @s display_order matches 216 run data modify storage actionclock:player c5 set from storage actionclock:player x_val
execute if score @s display_order matches 216 run data modify storage actionclock:player c6 set from storage actionclock:player f_val
# 217: Pogoda -> Glowka -> Dni -> Zegar -> Kierunek -> Kordy
execute if score @s display_order matches 217 run data modify storage actionclock:player c1 set from storage actionclock:player w_val
execute if score @s display_order matches 217 run data modify storage actionclock:player c2 set from storage actionclock:player h_val
execute if score @s display_order matches 217 run data modify storage actionclock:player c3 set from storage actionclock:player d_val
execute if score @s display_order matches 217 run data modify storage actionclock:player c4 set from storage actionclock:player c_val
execute if score @s display_order matches 217 run data modify storage actionclock:player c5 set from storage actionclock:player f_val
execute if score @s display_order matches 217 run data modify storage actionclock:player c6 set from storage actionclock:player x_val
# 218: Pogoda -> Glowka -> Dni -> Kordy -> Zegar -> Kierunek
execute if score @s display_order matches 218 run data modify storage actionclock:player c1 set from storage actionclock:player w_val
execute if score @s display_order matches 218 run data modify storage actionclock:player c2 set from storage actionclock:player h_val
execute if score @s display_order matches 218 run data modify storage actionclock:player c3 set from storage actionclock:player d_val
execute if score @s display_order matches 218 run data modify storage actionclock:player c4 set from storage actionclock:player x_val
execute if score @s display_order matches 218 run data modify storage actionclock:player c5 set from storage actionclock:player c_val
execute if score @s display_order matches 218 run data modify storage actionclock:player c6 set from storage actionclock:player f_val
# 219: Pogoda -> Glowka -> Dni -> Kordy -> Kierunek -> Zegar #Kazanek
execute if score @s display_order matches 219 run data modify storage actionclock:player c1 set from storage actionclock:player w_val
execute if score @s display_order matches 219 run data modify storage actionclock:player c2 set from storage actionclock:player h_val
execute if score @s display_order matches 219 run data modify storage actionclock:player c3 set from storage actionclock:player d_val
execute if score @s display_order matches 219 run data modify storage actionclock:player c4 set from storage actionclock:player x_val
execute if score @s display_order matches 219 run data modify storage actionclock:player c5 set from storage actionclock:player f_val
execute if score @s display_order matches 219 run data modify storage actionclock:player c6 set from storage actionclock:player c_val
# 220: Pogoda -> Glowka -> Dni -> Kierunek -> Zegar -> Kordy
execute if score @s display_order matches 220 run data modify storage actionclock:player c1 set from storage actionclock:player w_val
execute if score @s display_order matches 220 run data modify storage actionclock:player c2 set from storage actionclock:player h_val
execute if score @s display_order matches 220 run data modify storage actionclock:player c3 set from storage actionclock:player d_val
execute if score @s display_order matches 220 run data modify storage actionclock:player c4 set from storage actionclock:player f_val
execute if score @s display_order matches 220 run data modify storage actionclock:player c5 set from storage actionclock:player c_val
execute if score @s display_order matches 220 run data modify storage actionclock:player c6 set from storage actionclock:player x_val
# 221: Pogoda -> Glowka -> Dni -> Kierunek -> Kordy -> Zegar
execute if score @s display_order matches 221 run data modify storage actionclock:player c1 set from storage actionclock:player w_val
execute if score @s display_order matches 221 run data modify storage actionclock:player c2 set from storage actionclock:player h_val
execute if score @s display_order matches 221 run data modify storage actionclock:player c3 set from storage actionclock:player d_val
execute if score @s display_order matches 221 run data modify storage actionclock:player c4 set from storage actionclock:player f_val
execute if score @s display_order matches 221 run data modify storage actionclock:player c5 set from storage actionclock:player x_val
execute if score @s display_order matches 221 run data modify storage actionclock:player c6 set from storage actionclock:player c_val
# 222: Pogoda -> Glowka -> Zegar -> Dni -> Kordy -> Kierunek
execute if score @s display_order matches 222 run data modify storage actionclock:player c1 set from storage actionclock:player w_val
execute if score @s display_order matches 222 run data modify storage actionclock:player c2 set from storage actionclock:player h_val
execute if score @s display_order matches 222 run data modify storage actionclock:player c3 set from storage actionclock:player c_val
execute if score @s display_order matches 222 run data modify storage actionclock:player c4 set from storage actionclock:player d_val
execute if score @s display_order matches 222 run data modify storage actionclock:player c5 set from storage actionclock:player x_val
execute if score @s display_order matches 222 run data modify storage actionclock:player c6 set from storage actionclock:player f_val
# 223: Pogoda -> Glowka -> Zegar -> Dni -> Kierunek -> Kordy
execute if score @s display_order matches 223 run data modify storage actionclock:player c1 set from storage actionclock:player w_val
execute if score @s display_order matches 223 run data modify storage actionclock:player c2 set from storage actionclock:player h_val
execute if score @s display_order matches 223 run data modify storage actionclock:player c3 set from storage actionclock:player c_val
execute if score @s display_order matches 223 run data modify storage actionclock:player c4 set from storage actionclock:player d_val
execute if score @s display_order matches 223 run data modify storage actionclock:player c5 set from storage actionclock:player f_val
execute if score @s display_order matches 223 run data modify storage actionclock:player c6 set from storage actionclock:player x_val
# 224: Pogoda -> Glowka -> Zegar -> Kordy -> Dni -> Kierunek
execute if score @s display_order matches 224 run data modify storage actionclock:player c1 set from storage actionclock:player w_val
execute if score @s display_order matches 224 run data modify storage actionclock:player c2 set from storage actionclock:player h_val
execute if score @s display_order matches 224 run data modify storage actionclock:player c3 set from storage actionclock:player c_val
execute if score @s display_order matches 224 run data modify storage actionclock:player c4 set from storage actionclock:player x_val
execute if score @s display_order matches 224 run data modify storage actionclock:player c5 set from storage actionclock:player d_val
execute if score @s display_order matches 224 run data modify storage actionclock:player c6 set from storage actionclock:player f_val
# 225: Pogoda -> Glowka -> Zegar -> Kordy -> Kierunek -> Dni
execute if score @s display_order matches 225 run data modify storage actionclock:player c1 set from storage actionclock:player w_val
execute if score @s display_order matches 225 run data modify storage actionclock:player c2 set from storage actionclock:player h_val
execute if score @s display_order matches 225 run data modify storage actionclock:player c3 set from storage actionclock:player c_val
execute if score @s display_order matches 225 run data modify storage actionclock:player c4 set from storage actionclock:player x_val
execute if score @s display_order matches 225 run data modify storage actionclock:player c5 set from storage actionclock:player f_val
execute if score @s display_order matches 225 run data modify storage actionclock:player c6 set from storage actionclock:player d_val
# 226: Pogoda -> Glowka -> Zegar -> Kierunek -> Dni -> Kordy
execute if score @s display_order matches 226 run data modify storage actionclock:player c1 set from storage actionclock:player w_val
execute if score @s display_order matches 226 run data modify storage actionclock:player c2 set from storage actionclock:player h_val
execute if score @s display_order matches 226 run data modify storage actionclock:player c3 set from storage actionclock:player c_val
execute if score @s display_order matches 226 run data modify storage actionclock:player c4 set from storage actionclock:player f_val
execute if score @s display_order matches 226 run data modify storage actionclock:player c5 set from storage actionclock:player d_val
execute if score @s display_order matches 226 run data modify storage actionclock:player c6 set from storage actionclock:player x_val
# 227: Pogoda -> Glowka -> Zegar -> Kierunek -> Kordy -> Dni
execute if score @s display_order matches 227 run data modify storage actionclock:player c1 set from storage actionclock:player w_val
execute if score @s display_order matches 227 run data modify storage actionclock:player c2 set from storage actionclock:player h_val
execute if score @s display_order matches 227 run data modify storage actionclock:player c3 set from storage actionclock:player c_val
execute if score @s display_order matches 227 run data modify storage actionclock:player c4 set from storage actionclock:player f_val
execute if score @s display_order matches 227 run data modify storage actionclock:player c5 set from storage actionclock:player x_val
execute if score @s display_order matches 227 run data modify storage actionclock:player c6 set from storage actionclock:player d_val
# 228: Pogoda -> Glowka -> Kordy -> Dni -> Zegar -> Kierunek
execute if score @s display_order matches 228 run data modify storage actionclock:player c1 set from storage actionclock:player w_val
execute if score @s display_order matches 228 run data modify storage actionclock:player c2 set from storage actionclock:player h_val
execute if score @s display_order matches 228 run data modify storage actionclock:player c3 set from storage actionclock:player x_val
execute if score @s display_order matches 228 run data modify storage actionclock:player c4 set from storage actionclock:player d_val
execute if score @s display_order matches 228 run data modify storage actionclock:player c5 set from storage actionclock:player c_val
execute if score @s display_order matches 228 run data modify storage actionclock:player c6 set from storage actionclock:player f_val
# 229: Pogoda -> Glowka -> Kordy -> Dni -> Kierunek -> Zegar
execute if score @s display_order matches 229 run data modify storage actionclock:player c1 set from storage actionclock:player w_val
execute if score @s display_order matches 229 run data modify storage actionclock:player c2 set from storage actionclock:player h_val
execute if score @s display_order matches 229 run data modify storage actionclock:player c3 set from storage actionclock:player x_val
execute if score @s display_order matches 229 run data modify storage actionclock:player c4 set from storage actionclock:player d_val
execute if score @s display_order matches 229 run data modify storage actionclock:player c5 set from storage actionclock:player f_val
execute if score @s display_order matches 229 run data modify storage actionclock:player c6 set from storage actionclock:player c_val
# 230: Pogoda -> Glowka -> Kordy -> Zegar -> Dni -> Kierunek
execute if score @s display_order matches 230 run data modify storage actionclock:player c1 set from storage actionclock:player w_val
execute if score @s display_order matches 230 run data modify storage actionclock:player c2 set from storage actionclock:player h_val
execute if score @s display_order matches 230 run data modify storage actionclock:player c3 set from storage actionclock:player x_val
execute if score @s display_order matches 230 run data modify storage actionclock:player c4 set from storage actionclock:player c_val
execute if score @s display_order matches 230 run data modify storage actionclock:player c5 set from storage actionclock:player d_val
execute if score @s display_order matches 230 run data modify storage actionclock:player c6 set from storage actionclock:player f_val
# 231: Pogoda -> Glowka -> Kordy -> Zegar -> Kierunek -> Dni
execute if score @s display_order matches 231 run data modify storage actionclock:player c1 set from storage actionclock:player w_val
execute if score @s display_order matches 231 run data modify storage actionclock:player c2 set from storage actionclock:player h_val
execute if score @s display_order matches 231 run data modify storage actionclock:player c3 set from storage actionclock:player x_val
execute if score @s display_order matches 231 run data modify storage actionclock:player c4 set from storage actionclock:player c_val
execute if score @s display_order matches 231 run data modify storage actionclock:player c5 set from storage actionclock:player f_val
execute if score @s display_order matches 231 run data modify storage actionclock:player c6 set from storage actionclock:player d_val
# 232: Pogoda -> Glowka -> Kordy -> Kierunek -> Dni -> Zegar
execute if score @s display_order matches 232 run data modify storage actionclock:player c1 set from storage actionclock:player w_val
execute if score @s display_order matches 232 run data modify storage actionclock:player c2 set from storage actionclock:player h_val
execute if score @s display_order matches 232 run data modify storage actionclock:player c3 set from storage actionclock:player x_val
execute if score @s display_order matches 232 run data modify storage actionclock:player c4 set from storage actionclock:player f_val
execute if score @s display_order matches 232 run data modify storage actionclock:player c5 set from storage actionclock:player d_val
execute if score @s display_order matches 232 run data modify storage actionclock:player c6 set from storage actionclock:player c_val
# 233: Pogoda -> Glowka -> Kordy -> Kierunek -> Zegar -> Dni
execute if score @s display_order matches 233 run data modify storage actionclock:player c1 set from storage actionclock:player w_val
execute if score @s display_order matches 233 run data modify storage actionclock:player c2 set from storage actionclock:player h_val
execute if score @s display_order matches 233 run data modify storage actionclock:player c3 set from storage actionclock:player x_val
execute if score @s display_order matches 233 run data modify storage actionclock:player c4 set from storage actionclock:player f_val
execute if score @s display_order matches 233 run data modify storage actionclock:player c5 set from storage actionclock:player c_val
execute if score @s display_order matches 233 run data modify storage actionclock:player c6 set from storage actionclock:player d_val
# 234: Pogoda -> Glowka -> Kierunek -> Dni -> Zegar -> Kordy
execute if score @s display_order matches 234 run data modify storage actionclock:player c1 set from storage actionclock:player w_val
execute if score @s display_order matches 234 run data modify storage actionclock:player c2 set from storage actionclock:player h_val
execute if score @s display_order matches 234 run data modify storage actionclock:player c3 set from storage actionclock:player f_val
execute if score @s display_order matches 234 run data modify storage actionclock:player c4 set from storage actionclock:player d_val
execute if score @s display_order matches 234 run data modify storage actionclock:player c5 set from storage actionclock:player c_val
execute if score @s display_order matches 234 run data modify storage actionclock:player c6 set from storage actionclock:player x_val
# 235: Pogoda -> Glowka -> Kierunek -> Dni -> Kordy -> Zegar
execute if score @s display_order matches 235 run data modify storage actionclock:player c1 set from storage actionclock:player w_val
execute if score @s display_order matches 235 run data modify storage actionclock:player c2 set from storage actionclock:player h_val
execute if score @s display_order matches 235 run data modify storage actionclock:player c3 set from storage actionclock:player f_val
execute if score @s display_order matches 235 run data modify storage actionclock:player c4 set from storage actionclock:player d_val
execute if score @s display_order matches 235 run data modify storage actionclock:player c5 set from storage actionclock:player x_val
execute if score @s display_order matches 235 run data modify storage actionclock:player c6 set from storage actionclock:player c_val
# 236: Pogoda -> Glowka -> Kierunek -> Zegar -> Dni -> Kordy
execute if score @s display_order matches 236 run data modify storage actionclock:player c1 set from storage actionclock:player w_val
execute if score @s display_order matches 236 run data modify storage actionclock:player c2 set from storage actionclock:player h_val
execute if score @s display_order matches 236 run data modify storage actionclock:player c3 set from storage actionclock:player f_val
execute if score @s display_order matches 236 run data modify storage actionclock:player c4 set from storage actionclock:player c_val
execute if score @s display_order matches 236 run data modify storage actionclock:player c5 set from storage actionclock:player d_val
execute if score @s display_order matches 236 run data modify storage actionclock:player c6 set from storage actionclock:player x_val
# 237: Pogoda -> Glowka -> Kierunek -> Zegar -> Kordy -> Dni
execute if score @s display_order matches 237 run data modify storage actionclock:player c1 set from storage actionclock:player w_val
execute if score @s display_order matches 237 run data modify storage actionclock:player c2 set from storage actionclock:player h_val
execute if score @s display_order matches 237 run data modify storage actionclock:player c3 set from storage actionclock:player f_val
execute if score @s display_order matches 237 run data modify storage actionclock:player c4 set from storage actionclock:player c_val
execute if score @s display_order matches 237 run data modify storage actionclock:player c5 set from storage actionclock:player x_val
execute if score @s display_order matches 237 run data modify storage actionclock:player c6 set from storage actionclock:player d_val
# 238: Pogoda -> Glowka -> Kierunek -> Kordy -> Dni -> Zegar
execute if score @s display_order matches 238 run data modify storage actionclock:player c1 set from storage actionclock:player w_val
execute if score @s display_order matches 238 run data modify storage actionclock:player c2 set from storage actionclock:player h_val
execute if score @s display_order matches 238 run data modify storage actionclock:player c3 set from storage actionclock:player f_val
execute if score @s display_order matches 238 run data modify storage actionclock:player c4 set from storage actionclock:player x_val
execute if score @s display_order matches 238 run data modify storage actionclock:player c5 set from storage actionclock:player d_val
execute if score @s display_order matches 238 run data modify storage actionclock:player c6 set from storage actionclock:player c_val
# 239: Pogoda -> Glowka -> Kierunek -> Kordy -> Zegar -> Dni
execute if score @s display_order matches 239 run data modify storage actionclock:player c1 set from storage actionclock:player w_val
execute if score @s display_order matches 239 run data modify storage actionclock:player c2 set from storage actionclock:player h_val
execute if score @s display_order matches 239 run data modify storage actionclock:player c3 set from storage actionclock:player f_val
execute if score @s display_order matches 239 run data modify storage actionclock:player c4 set from storage actionclock:player x_val
execute if score @s display_order matches 239 run data modify storage actionclock:player c5 set from storage actionclock:player c_val
execute if score @s display_order matches 239 run data modify storage actionclock:player c6 set from storage actionclock:player d_val
# 240: Zegar -> Dni -> Pogoda -> Kordy -> Kierunek -> Glowka
execute if score @s display_order matches 240 run data modify storage actionclock:player c1 set from storage actionclock:player c_val
execute if score @s display_order matches 240 run data modify storage actionclock:player c2 set from storage actionclock:player d_val
execute if score @s display_order matches 240 run data modify storage actionclock:player c3 set from storage actionclock:player w_val
execute if score @s display_order matches 240 run data modify storage actionclock:player c4 set from storage actionclock:player x_val
execute if score @s display_order matches 240 run data modify storage actionclock:player c5 set from storage actionclock:player f_val
execute if score @s display_order matches 240 run data modify storage actionclock:player c6 set from storage actionclock:player h_val
# 241: Zegar -> Dni -> Pogoda -> Kordy -> Glowka -> Kierunek
execute if score @s display_order matches 241 run data modify storage actionclock:player c1 set from storage actionclock:player c_val
execute if score @s display_order matches 241 run data modify storage actionclock:player c2 set from storage actionclock:player d_val
execute if score @s display_order matches 241 run data modify storage actionclock:player c3 set from storage actionclock:player w_val
execute if score @s display_order matches 241 run data modify storage actionclock:player c4 set from storage actionclock:player x_val
execute if score @s display_order matches 241 run data modify storage actionclock:player c5 set from storage actionclock:player h_val
execute if score @s display_order matches 241 run data modify storage actionclock:player c6 set from storage actionclock:player f_val
# 242: Zegar -> Dni -> Pogoda -> Kierunek -> Kordy -> Glowka
execute if score @s display_order matches 242 run data modify storage actionclock:player c1 set from storage actionclock:player c_val
execute if score @s display_order matches 242 run data modify storage actionclock:player c2 set from storage actionclock:player d_val
execute if score @s display_order matches 242 run data modify storage actionclock:player c3 set from storage actionclock:player w_val
execute if score @s display_order matches 242 run data modify storage actionclock:player c4 set from storage actionclock:player f_val
execute if score @s display_order matches 242 run data modify storage actionclock:player c5 set from storage actionclock:player x_val
execute if score @s display_order matches 242 run data modify storage actionclock:player c6 set from storage actionclock:player h_val
# 243: Zegar -> Dni -> Pogoda -> Kierunek -> Glowka -> Kordy
execute if score @s display_order matches 243 run data modify storage actionclock:player c1 set from storage actionclock:player c_val
execute if score @s display_order matches 243 run data modify storage actionclock:player c2 set from storage actionclock:player d_val
execute if score @s display_order matches 243 run data modify storage actionclock:player c3 set from storage actionclock:player w_val
execute if score @s display_order matches 243 run data modify storage actionclock:player c4 set from storage actionclock:player f_val
execute if score @s display_order matches 243 run data modify storage actionclock:player c5 set from storage actionclock:player h_val
execute if score @s display_order matches 243 run data modify storage actionclock:player c6 set from storage actionclock:player x_val
# 244: Zegar -> Dni -> Pogoda -> Glowka -> Kordy -> Kierunek
execute if score @s display_order matches 244 run data modify storage actionclock:player c1 set from storage actionclock:player c_val
execute if score @s display_order matches 244 run data modify storage actionclock:player c2 set from storage actionclock:player d_val
execute if score @s display_order matches 244 run data modify storage actionclock:player c3 set from storage actionclock:player w_val
execute if score @s display_order matches 244 run data modify storage actionclock:player c4 set from storage actionclock:player h_val
execute if score @s display_order matches 244 run data modify storage actionclock:player c5 set from storage actionclock:player x_val
execute if score @s display_order matches 244 run data modify storage actionclock:player c6 set from storage actionclock:player f_val
# 245: Zegar -> Dni -> Pogoda -> Glowka -> Kierunek -> Kordy
execute if score @s display_order matches 245 run data modify storage actionclock:player c1 set from storage actionclock:player c_val
execute if score @s display_order matches 245 run data modify storage actionclock:player c2 set from storage actionclock:player d_val
execute if score @s display_order matches 245 run data modify storage actionclock:player c3 set from storage actionclock:player w_val
execute if score @s display_order matches 245 run data modify storage actionclock:player c4 set from storage actionclock:player h_val
execute if score @s display_order matches 245 run data modify storage actionclock:player c5 set from storage actionclock:player f_val
execute if score @s display_order matches 245 run data modify storage actionclock:player c6 set from storage actionclock:player x_val
# 246: Zegar -> Dni -> Kordy -> Pogoda -> Kierunek -> Glowka
execute if score @s display_order matches 246 run data modify storage actionclock:player c1 set from storage actionclock:player c_val
execute if score @s display_order matches 246 run data modify storage actionclock:player c2 set from storage actionclock:player d_val
execute if score @s display_order matches 246 run data modify storage actionclock:player c3 set from storage actionclock:player x_val
execute if score @s display_order matches 246 run data modify storage actionclock:player c4 set from storage actionclock:player w_val
execute if score @s display_order matches 246 run data modify storage actionclock:player c5 set from storage actionclock:player f_val
execute if score @s display_order matches 246 run data modify storage actionclock:player c6 set from storage actionclock:player h_val
# 247: Zegar -> Dni -> Kordy -> Pogoda -> Glowka -> Kierunek
execute if score @s display_order matches 247 run data modify storage actionclock:player c1 set from storage actionclock:player c_val
execute if score @s display_order matches 247 run data modify storage actionclock:player c2 set from storage actionclock:player d_val
execute if score @s display_order matches 247 run data modify storage actionclock:player c3 set from storage actionclock:player x_val
execute if score @s display_order matches 247 run data modify storage actionclock:player c4 set from storage actionclock:player w_val
execute if score @s display_order matches 247 run data modify storage actionclock:player c5 set from storage actionclock:player h_val
execute if score @s display_order matches 247 run data modify storage actionclock:player c6 set from storage actionclock:player f_val
# 248: Zegar -> Dni -> Kordy -> Kierunek -> Pogoda -> Glowka
execute if score @s display_order matches 248 run data modify storage actionclock:player c1 set from storage actionclock:player c_val
execute if score @s display_order matches 248 run data modify storage actionclock:player c2 set from storage actionclock:player d_val
execute if score @s display_order matches 248 run data modify storage actionclock:player c3 set from storage actionclock:player x_val
execute if score @s display_order matches 248 run data modify storage actionclock:player c4 set from storage actionclock:player f_val
execute if score @s display_order matches 248 run data modify storage actionclock:player c5 set from storage actionclock:player w_val
execute if score @s display_order matches 248 run data modify storage actionclock:player c6 set from storage actionclock:player h_val
# 249: Zegar -> Dni -> Kordy -> Kierunek -> Glowka -> Pogoda
execute if score @s display_order matches 249 run data modify storage actionclock:player c1 set from storage actionclock:player c_val
execute if score @s display_order matches 249 run data modify storage actionclock:player c2 set from storage actionclock:player d_val
execute if score @s display_order matches 249 run data modify storage actionclock:player c3 set from storage actionclock:player x_val
execute if score @s display_order matches 249 run data modify storage actionclock:player c4 set from storage actionclock:player f_val
execute if score @s display_order matches 249 run data modify storage actionclock:player c5 set from storage actionclock:player h_val
execute if score @s display_order matches 249 run data modify storage actionclock:player c6 set from storage actionclock:player w_val
# 250: Zegar -> Dni -> Kordy -> Glowka -> Pogoda -> Kierunek
execute if score @s display_order matches 250 run data modify storage actionclock:player c1 set from storage actionclock:player c_val
execute if score @s display_order matches 250 run data modify storage actionclock:player c2 set from storage actionclock:player d_val
execute if score @s display_order matches 250 run data modify storage actionclock:player c3 set from storage actionclock:player x_val
execute if score @s display_order matches 250 run data modify storage actionclock:player c4 set from storage actionclock:player h_val
execute if score @s display_order matches 250 run data modify storage actionclock:player c5 set from storage actionclock:player w_val
execute if score @s display_order matches 250 run data modify storage actionclock:player c6 set from storage actionclock:player f_val
# 251: Zegar -> Dni -> Kordy -> Glowka -> Kierunek -> Pogoda
execute if score @s display_order matches 251 run data modify storage actionclock:player c1 set from storage actionclock:player c_val
execute if score @s display_order matches 251 run data modify storage actionclock:player c2 set from storage actionclock:player d_val
execute if score @s display_order matches 251 run data modify storage actionclock:player c3 set from storage actionclock:player x_val
execute if score @s display_order matches 251 run data modify storage actionclock:player c4 set from storage actionclock:player h_val
execute if score @s display_order matches 251 run data modify storage actionclock:player c5 set from storage actionclock:player f_val
execute if score @s display_order matches 251 run data modify storage actionclock:player c6 set from storage actionclock:player w_val
# 252: Zegar -> Dni -> Kierunek -> Pogoda -> Kordy -> Glowka
execute if score @s display_order matches 252 run data modify storage actionclock:player c1 set from storage actionclock:player c_val
execute if score @s display_order matches 252 run data modify storage actionclock:player c2 set from storage actionclock:player d_val
execute if score @s display_order matches 252 run data modify storage actionclock:player c3 set from storage actionclock:player f_val
execute if score @s display_order matches 252 run data modify storage actionclock:player c4 set from storage actionclock:player w_val
execute if score @s display_order matches 252 run data modify storage actionclock:player c5 set from storage actionclock:player x_val
execute if score @s display_order matches 252 run data modify storage actionclock:player c6 set from storage actionclock:player h_val
# 253: Zegar -> Dni -> Kierunek -> Pogoda -> Glowka -> Kordy
execute if score @s display_order matches 253 run data modify storage actionclock:player c1 set from storage actionclock:player c_val
execute if score @s display_order matches 253 run data modify storage actionclock:player c2 set from storage actionclock:player d_val
execute if score @s display_order matches 253 run data modify storage actionclock:player c3 set from storage actionclock:player f_val
execute if score @s display_order matches 253 run data modify storage actionclock:player c4 set from storage actionclock:player w_val
execute if score @s display_order matches 253 run data modify storage actionclock:player c5 set from storage actionclock:player h_val
execute if score @s display_order matches 253 run data modify storage actionclock:player c6 set from storage actionclock:player x_val
# 254: Zegar -> Dni -> Kierunek -> Kordy -> Pogoda -> Glowka
execute if score @s display_order matches 254 run data modify storage actionclock:player c1 set from storage actionclock:player c_val
execute if score @s display_order matches 254 run data modify storage actionclock:player c2 set from storage actionclock:player d_val
execute if score @s display_order matches 254 run data modify storage actionclock:player c3 set from storage actionclock:player f_val
execute if score @s display_order matches 254 run data modify storage actionclock:player c4 set from storage actionclock:player x_val
execute if score @s display_order matches 254 run data modify storage actionclock:player c5 set from storage actionclock:player w_val
execute if score @s display_order matches 254 run data modify storage actionclock:player c6 set from storage actionclock:player h_val
# 255: Zegar -> Dni -> Kierunek -> Kordy -> Glowka -> Pogoda
execute if score @s display_order matches 255 run data modify storage actionclock:player c1 set from storage actionclock:player c_val
execute if score @s display_order matches 255 run data modify storage actionclock:player c2 set from storage actionclock:player d_val
execute if score @s display_order matches 255 run data modify storage actionclock:player c3 set from storage actionclock:player f_val
execute if score @s display_order matches 255 run data modify storage actionclock:player c4 set from storage actionclock:player x_val
execute if score @s display_order matches 255 run data modify storage actionclock:player c5 set from storage actionclock:player h_val
execute if score @s display_order matches 255 run data modify storage actionclock:player c6 set from storage actionclock:player w_val
# 256: Zegar -> Dni -> Kierunek -> Glowka -> Pogoda -> Kordy
execute if score @s display_order matches 256 run data modify storage actionclock:player c1 set from storage actionclock:player c_val
execute if score @s display_order matches 256 run data modify storage actionclock:player c2 set from storage actionclock:player d_val
execute if score @s display_order matches 256 run data modify storage actionclock:player c3 set from storage actionclock:player f_val
execute if score @s display_order matches 256 run data modify storage actionclock:player c4 set from storage actionclock:player h_val
execute if score @s display_order matches 256 run data modify storage actionclock:player c5 set from storage actionclock:player w_val
execute if score @s display_order matches 256 run data modify storage actionclock:player c6 set from storage actionclock:player x_val
# 257: Zegar -> Dni -> Kierunek -> Glowka -> Kordy -> Pogoda
execute if score @s display_order matches 257 run data modify storage actionclock:player c1 set from storage actionclock:player c_val
execute if score @s display_order matches 257 run data modify storage actionclock:player c2 set from storage actionclock:player d_val
execute if score @s display_order matches 257 run data modify storage actionclock:player c3 set from storage actionclock:player f_val
execute if score @s display_order matches 257 run data modify storage actionclock:player c4 set from storage actionclock:player h_val
execute if score @s display_order matches 257 run data modify storage actionclock:player c5 set from storage actionclock:player x_val
execute if score @s display_order matches 257 run data modify storage actionclock:player c6 set from storage actionclock:player w_val
# 258: Zegar -> Dni -> Glowka -> Pogoda -> Kordy -> Kierunek
execute if score @s display_order matches 258 run data modify storage actionclock:player c1 set from storage actionclock:player c_val
execute if score @s display_order matches 258 run data modify storage actionclock:player c2 set from storage actionclock:player d_val
execute if score @s display_order matches 258 run data modify storage actionclock:player c3 set from storage actionclock:player h_val
execute if score @s display_order matches 258 run data modify storage actionclock:player c4 set from storage actionclock:player w_val
execute if score @s display_order matches 258 run data modify storage actionclock:player c5 set from storage actionclock:player x_val
execute if score @s display_order matches 258 run data modify storage actionclock:player c6 set from storage actionclock:player f_val
# 259: Zegar -> Dni -> Glowka -> Pogoda -> Kierunek -> Kordy
execute if score @s display_order matches 259 run data modify storage actionclock:player c1 set from storage actionclock:player c_val
execute if score @s display_order matches 259 run data modify storage actionclock:player c2 set from storage actionclock:player d_val
execute if score @s display_order matches 259 run data modify storage actionclock:player c3 set from storage actionclock:player h_val
execute if score @s display_order matches 259 run data modify storage actionclock:player c4 set from storage actionclock:player w_val
execute if score @s display_order matches 259 run data modify storage actionclock:player c5 set from storage actionclock:player f_val
execute if score @s display_order matches 259 run data modify storage actionclock:player c6 set from storage actionclock:player x_val
# 260: Zegar -> Dni -> Glowka -> Kordy -> Pogoda -> Kierunek
execute if score @s display_order matches 260 run data modify storage actionclock:player c1 set from storage actionclock:player c_val
execute if score @s display_order matches 260 run data modify storage actionclock:player c2 set from storage actionclock:player d_val
execute if score @s display_order matches 260 run data modify storage actionclock:player c3 set from storage actionclock:player h_val
execute if score @s display_order matches 260 run data modify storage actionclock:player c4 set from storage actionclock:player x_val
execute if score @s display_order matches 260 run data modify storage actionclock:player c5 set from storage actionclock:player w_val
execute if score @s display_order matches 260 run data modify storage actionclock:player c6 set from storage actionclock:player f_val
# 261: Zegar -> Dni -> Glowka -> Kordy -> Kierunek -> Pogoda
execute if score @s display_order matches 261 run data modify storage actionclock:player c1 set from storage actionclock:player c_val
execute if score @s display_order matches 261 run data modify storage actionclock:player c2 set from storage actionclock:player d_val
execute if score @s display_order matches 261 run data modify storage actionclock:player c3 set from storage actionclock:player h_val
execute if score @s display_order matches 261 run data modify storage actionclock:player c4 set from storage actionclock:player x_val
execute if score @s display_order matches 261 run data modify storage actionclock:player c5 set from storage actionclock:player f_val
execute if score @s display_order matches 261 run data modify storage actionclock:player c6 set from storage actionclock:player w_val
# 262: Zegar -> Dni -> Glowka -> Kierunek -> Pogoda -> Kordy
execute if score @s display_order matches 262 run data modify storage actionclock:player c1 set from storage actionclock:player c_val
execute if score @s display_order matches 262 run data modify storage actionclock:player c2 set from storage actionclock:player d_val
execute if score @s display_order matches 262 run data modify storage actionclock:player c3 set from storage actionclock:player h_val
execute if score @s display_order matches 262 run data modify storage actionclock:player c4 set from storage actionclock:player f_val
execute if score @s display_order matches 262 run data modify storage actionclock:player c5 set from storage actionclock:player w_val
execute if score @s display_order matches 262 run data modify storage actionclock:player c6 set from storage actionclock:player x_val
# 263: Zegar -> Dni -> Glowka -> Kierunek -> Kordy -> Pogoda
execute if score @s display_order matches 263 run data modify storage actionclock:player c1 set from storage actionclock:player c_val
execute if score @s display_order matches 263 run data modify storage actionclock:player c2 set from storage actionclock:player d_val
execute if score @s display_order matches 263 run data modify storage actionclock:player c3 set from storage actionclock:player h_val
execute if score @s display_order matches 263 run data modify storage actionclock:player c4 set from storage actionclock:player f_val
execute if score @s display_order matches 263 run data modify storage actionclock:player c5 set from storage actionclock:player x_val
execute if score @s display_order matches 263 run data modify storage actionclock:player c6 set from storage actionclock:player w_val
# 264: Zegar -> Pogoda -> Dni -> Kordy -> Kierunek -> Glowka
execute if score @s display_order matches 264 run data modify storage actionclock:player c1 set from storage actionclock:player c_val
execute if score @s display_order matches 264 run data modify storage actionclock:player c2 set from storage actionclock:player w_val
execute if score @s display_order matches 264 run data modify storage actionclock:player c3 set from storage actionclock:player d_val
execute if score @s display_order matches 264 run data modify storage actionclock:player c4 set from storage actionclock:player x_val
execute if score @s display_order matches 264 run data modify storage actionclock:player c5 set from storage actionclock:player f_val
execute if score @s display_order matches 264 run data modify storage actionclock:player c6 set from storage actionclock:player h_val
# 265: Zegar -> Pogoda -> Dni -> Kordy -> Glowka -> Kierunek
execute if score @s display_order matches 265 run data modify storage actionclock:player c1 set from storage actionclock:player c_val
execute if score @s display_order matches 265 run data modify storage actionclock:player c2 set from storage actionclock:player w_val
execute if score @s display_order matches 265 run data modify storage actionclock:player c3 set from storage actionclock:player d_val
execute if score @s display_order matches 265 run data modify storage actionclock:player c4 set from storage actionclock:player x_val
execute if score @s display_order matches 265 run data modify storage actionclock:player c5 set from storage actionclock:player h_val
execute if score @s display_order matches 265 run data modify storage actionclock:player c6 set from storage actionclock:player f_val
# 266: Zegar -> Pogoda -> Dni -> Kierunek -> Kordy -> Glowka
execute if score @s display_order matches 266 run data modify storage actionclock:player c1 set from storage actionclock:player c_val
execute if score @s display_order matches 266 run data modify storage actionclock:player c2 set from storage actionclock:player w_val
execute if score @s display_order matches 266 run data modify storage actionclock:player c3 set from storage actionclock:player d_val
execute if score @s display_order matches 266 run data modify storage actionclock:player c4 set from storage actionclock:player f_val
execute if score @s display_order matches 266 run data modify storage actionclock:player c5 set from storage actionclock:player x_val
execute if score @s display_order matches 266 run data modify storage actionclock:player c6 set from storage actionclock:player h_val
# 267: Zegar -> Pogoda -> Dni -> Kierunek -> Glowka -> Kordy
execute if score @s display_order matches 267 run data modify storage actionclock:player c1 set from storage actionclock:player c_val
execute if score @s display_order matches 267 run data modify storage actionclock:player c2 set from storage actionclock:player w_val
execute if score @s display_order matches 267 run data modify storage actionclock:player c3 set from storage actionclock:player d_val
execute if score @s display_order matches 267 run data modify storage actionclock:player c4 set from storage actionclock:player f_val
execute if score @s display_order matches 267 run data modify storage actionclock:player c5 set from storage actionclock:player h_val
execute if score @s display_order matches 267 run data modify storage actionclock:player c6 set from storage actionclock:player x_val
# 268: Zegar -> Pogoda -> Dni -> Glowka -> Kordy -> Kierunek
execute if score @s display_order matches 268 run data modify storage actionclock:player c1 set from storage actionclock:player c_val
execute if score @s display_order matches 268 run data modify storage actionclock:player c2 set from storage actionclock:player w_val
execute if score @s display_order matches 268 run data modify storage actionclock:player c3 set from storage actionclock:player d_val
execute if score @s display_order matches 268 run data modify storage actionclock:player c4 set from storage actionclock:player h_val
execute if score @s display_order matches 268 run data modify storage actionclock:player c5 set from storage actionclock:player x_val
execute if score @s display_order matches 268 run data modify storage actionclock:player c6 set from storage actionclock:player f_val
# 269: Zegar -> Pogoda -> Dni -> Glowka -> Kierunek -> Kordy
execute if score @s display_order matches 269 run data modify storage actionclock:player c1 set from storage actionclock:player c_val
execute if score @s display_order matches 269 run data modify storage actionclock:player c2 set from storage actionclock:player w_val
execute if score @s display_order matches 269 run data modify storage actionclock:player c3 set from storage actionclock:player d_val
execute if score @s display_order matches 269 run data modify storage actionclock:player c4 set from storage actionclock:player h_val
execute if score @s display_order matches 269 run data modify storage actionclock:player c5 set from storage actionclock:player f_val
execute if score @s display_order matches 269 run data modify storage actionclock:player c6 set from storage actionclock:player x_val
# 270: Zegar -> Pogoda -> Kordy -> Dni -> Kierunek -> Glowka
execute if score @s display_order matches 270 run data modify storage actionclock:player c1 set from storage actionclock:player c_val
execute if score @s display_order matches 270 run data modify storage actionclock:player c2 set from storage actionclock:player w_val
execute if score @s display_order matches 270 run data modify storage actionclock:player c3 set from storage actionclock:player x_val
execute if score @s display_order matches 270 run data modify storage actionclock:player c4 set from storage actionclock:player d_val
execute if score @s display_order matches 270 run data modify storage actionclock:player c5 set from storage actionclock:player f_val
execute if score @s display_order matches 270 run data modify storage actionclock:player c6 set from storage actionclock:player h_val
# 271: Zegar -> Pogoda -> Kordy -> Dni -> Glowka -> Kierunek
execute if score @s display_order matches 271 run data modify storage actionclock:player c1 set from storage actionclock:player c_val
execute if score @s display_order matches 271 run data modify storage actionclock:player c2 set from storage actionclock:player w_val
execute if score @s display_order matches 271 run data modify storage actionclock:player c3 set from storage actionclock:player x_val
execute if score @s display_order matches 271 run data modify storage actionclock:player c4 set from storage actionclock:player d_val
execute if score @s display_order matches 271 run data modify storage actionclock:player c5 set from storage actionclock:player h_val
execute if score @s display_order matches 271 run data modify storage actionclock:player c6 set from storage actionclock:player f_val
# 272: Zegar -> Pogoda -> Kordy -> Kierunek -> Dni -> Glowka
execute if score @s display_order matches 272 run data modify storage actionclock:player c1 set from storage actionclock:player c_val
execute if score @s display_order matches 272 run data modify storage actionclock:player c2 set from storage actionclock:player w_val
execute if score @s display_order matches 272 run data modify storage actionclock:player c3 set from storage actionclock:player x_val
execute if score @s display_order matches 272 run data modify storage actionclock:player c4 set from storage actionclock:player f_val
execute if score @s display_order matches 272 run data modify storage actionclock:player c5 set from storage actionclock:player d_val
execute if score @s display_order matches 272 run data modify storage actionclock:player c6 set from storage actionclock:player h_val
# 273: Zegar -> Pogoda -> Kordy -> Kierunek -> Glowka -> Dni
execute if score @s display_order matches 273 run data modify storage actionclock:player c1 set from storage actionclock:player c_val
execute if score @s display_order matches 273 run data modify storage actionclock:player c2 set from storage actionclock:player w_val
execute if score @s display_order matches 273 run data modify storage actionclock:player c3 set from storage actionclock:player x_val
execute if score @s display_order matches 273 run data modify storage actionclock:player c4 set from storage actionclock:player f_val
execute if score @s display_order matches 273 run data modify storage actionclock:player c5 set from storage actionclock:player h_val
execute if score @s display_order matches 273 run data modify storage actionclock:player c6 set from storage actionclock:player d_val
# 274: Zegar -> Pogoda -> Kordy -> Glowka -> Dni -> Kierunek
execute if score @s display_order matches 274 run data modify storage actionclock:player c1 set from storage actionclock:player c_val
execute if score @s display_order matches 274 run data modify storage actionclock:player c2 set from storage actionclock:player w_val
execute if score @s display_order matches 274 run data modify storage actionclock:player c3 set from storage actionclock:player x_val
execute if score @s display_order matches 274 run data modify storage actionclock:player c4 set from storage actionclock:player h_val
execute if score @s display_order matches 274 run data modify storage actionclock:player c5 set from storage actionclock:player d_val
execute if score @s display_order matches 274 run data modify storage actionclock:player c6 set from storage actionclock:player f_val
# 275: Zegar -> Pogoda -> Kordy -> Glowka -> Kierunek -> Dni
execute if score @s display_order matches 275 run data modify storage actionclock:player c1 set from storage actionclock:player c_val
execute if score @s display_order matches 275 run data modify storage actionclock:player c2 set from storage actionclock:player w_val
execute if score @s display_order matches 275 run data modify storage actionclock:player c3 set from storage actionclock:player x_val
execute if score @s display_order matches 275 run data modify storage actionclock:player c4 set from storage actionclock:player h_val
execute if score @s display_order matches 275 run data modify storage actionclock:player c5 set from storage actionclock:player f_val
execute if score @s display_order matches 275 run data modify storage actionclock:player c6 set from storage actionclock:player d_val
# 276: Zegar -> Pogoda -> Kierunek -> Dni -> Kordy -> Glowka
execute if score @s display_order matches 276 run data modify storage actionclock:player c1 set from storage actionclock:player c_val
execute if score @s display_order matches 276 run data modify storage actionclock:player c2 set from storage actionclock:player w_val
execute if score @s display_order matches 276 run data modify storage actionclock:player c3 set from storage actionclock:player f_val
execute if score @s display_order matches 276 run data modify storage actionclock:player c4 set from storage actionclock:player d_val
execute if score @s display_order matches 276 run data modify storage actionclock:player c5 set from storage actionclock:player x_val
execute if score @s display_order matches 276 run data modify storage actionclock:player c6 set from storage actionclock:player h_val
# 277: Zegar -> Pogoda -> Kierunek -> Dni -> Glowka -> Kordy
execute if score @s display_order matches 277 run data modify storage actionclock:player c1 set from storage actionclock:player c_val
execute if score @s display_order matches 277 run data modify storage actionclock:player c2 set from storage actionclock:player w_val
execute if score @s display_order matches 277 run data modify storage actionclock:player c3 set from storage actionclock:player f_val
execute if score @s display_order matches 277 run data modify storage actionclock:player c4 set from storage actionclock:player d_val
execute if score @s display_order matches 277 run data modify storage actionclock:player c5 set from storage actionclock:player h_val
execute if score @s display_order matches 277 run data modify storage actionclock:player c6 set from storage actionclock:player x_val
# 278: Zegar -> Pogoda -> Kierunek -> Kordy -> Dni -> Glowka
execute if score @s display_order matches 278 run data modify storage actionclock:player c1 set from storage actionclock:player c_val
execute if score @s display_order matches 278 run data modify storage actionclock:player c2 set from storage actionclock:player w_val
execute if score @s display_order matches 278 run data modify storage actionclock:player c3 set from storage actionclock:player f_val
execute if score @s display_order matches 278 run data modify storage actionclock:player c4 set from storage actionclock:player x_val
execute if score @s display_order matches 278 run data modify storage actionclock:player c5 set from storage actionclock:player d_val
execute if score @s display_order matches 278 run data modify storage actionclock:player c6 set from storage actionclock:player h_val
# 279: Zegar -> Pogoda -> Kierunek -> Kordy -> Glowka -> Dni
execute if score @s display_order matches 279 run data modify storage actionclock:player c1 set from storage actionclock:player c_val
execute if score @s display_order matches 279 run data modify storage actionclock:player c2 set from storage actionclock:player w_val
execute if score @s display_order matches 279 run data modify storage actionclock:player c3 set from storage actionclock:player f_val
execute if score @s display_order matches 279 run data modify storage actionclock:player c4 set from storage actionclock:player x_val
execute if score @s display_order matches 279 run data modify storage actionclock:player c5 set from storage actionclock:player h_val
execute if score @s display_order matches 279 run data modify storage actionclock:player c6 set from storage actionclock:player d_val
# 280: Zegar -> Pogoda -> Kierunek -> Glowka -> Dni -> Kordy
execute if score @s display_order matches 280 run data modify storage actionclock:player c1 set from storage actionclock:player c_val
execute if score @s display_order matches 280 run data modify storage actionclock:player c2 set from storage actionclock:player w_val
execute if score @s display_order matches 280 run data modify storage actionclock:player c3 set from storage actionclock:player f_val
execute if score @s display_order matches 280 run data modify storage actionclock:player c4 set from storage actionclock:player h_val
execute if score @s display_order matches 280 run data modify storage actionclock:player c5 set from storage actionclock:player d_val
execute if score @s display_order matches 280 run data modify storage actionclock:player c6 set from storage actionclock:player x_val
# 281: Zegar -> Pogoda -> Kierunek -> Glowka -> Kordy -> Dni
execute if score @s display_order matches 281 run data modify storage actionclock:player c1 set from storage actionclock:player c_val
execute if score @s display_order matches 281 run data modify storage actionclock:player c2 set from storage actionclock:player w_val
execute if score @s display_order matches 281 run data modify storage actionclock:player c3 set from storage actionclock:player f_val
execute if score @s display_order matches 281 run data modify storage actionclock:player c4 set from storage actionclock:player h_val
execute if score @s display_order matches 281 run data modify storage actionclock:player c5 set from storage actionclock:player x_val
execute if score @s display_order matches 281 run data modify storage actionclock:player c6 set from storage actionclock:player d_val
# 282: Zegar -> Pogoda -> Glowka -> Dni -> Kordy -> Kierunek
execute if score @s display_order matches 282 run data modify storage actionclock:player c1 set from storage actionclock:player c_val
execute if score @s display_order matches 282 run data modify storage actionclock:player c2 set from storage actionclock:player w_val
execute if score @s display_order matches 282 run data modify storage actionclock:player c3 set from storage actionclock:player h_val
execute if score @s display_order matches 282 run data modify storage actionclock:player c4 set from storage actionclock:player d_val
execute if score @s display_order matches 282 run data modify storage actionclock:player c5 set from storage actionclock:player x_val
execute if score @s display_order matches 282 run data modify storage actionclock:player c6 set from storage actionclock:player f_val
# 283: Zegar -> Pogoda -> Glowka -> Dni -> Kierunek -> Kordy
execute if score @s display_order matches 283 run data modify storage actionclock:player c1 set from storage actionclock:player c_val
execute if score @s display_order matches 283 run data modify storage actionclock:player c2 set from storage actionclock:player w_val
execute if score @s display_order matches 283 run data modify storage actionclock:player c3 set from storage actionclock:player h_val
execute if score @s display_order matches 283 run data modify storage actionclock:player c4 set from storage actionclock:player d_val
execute if score @s display_order matches 283 run data modify storage actionclock:player c5 set from storage actionclock:player f_val
execute if score @s display_order matches 283 run data modify storage actionclock:player c6 set from storage actionclock:player x_val
# 284: Zegar -> Pogoda -> Glowka -> Kordy -> Dni -> Kierunek
execute if score @s display_order matches 284 run data modify storage actionclock:player c1 set from storage actionclock:player c_val
execute if score @s display_order matches 284 run data modify storage actionclock:player c2 set from storage actionclock:player w_val
execute if score @s display_order matches 284 run data modify storage actionclock:player c3 set from storage actionclock:player h_val
execute if score @s display_order matches 284 run data modify storage actionclock:player c4 set from storage actionclock:player x_val
execute if score @s display_order matches 284 run data modify storage actionclock:player c5 set from storage actionclock:player d_val
execute if score @s display_order matches 284 run data modify storage actionclock:player c6 set from storage actionclock:player f_val
# 285: Zegar -> Pogoda -> Glowka -> Kordy -> Kierunek -> Dni
execute if score @s display_order matches 285 run data modify storage actionclock:player c1 set from storage actionclock:player c_val
execute if score @s display_order matches 285 run data modify storage actionclock:player c2 set from storage actionclock:player w_val
execute if score @s display_order matches 285 run data modify storage actionclock:player c3 set from storage actionclock:player h_val
execute if score @s display_order matches 285 run data modify storage actionclock:player c4 set from storage actionclock:player x_val
execute if score @s display_order matches 285 run data modify storage actionclock:player c5 set from storage actionclock:player f_val
execute if score @s display_order matches 285 run data modify storage actionclock:player c6 set from storage actionclock:player d_val
# 286: Zegar -> Pogoda -> Glowka -> Kierunek -> Dni -> Kordy
execute if score @s display_order matches 286 run data modify storage actionclock:player c1 set from storage actionclock:player c_val
execute if score @s display_order matches 286 run data modify storage actionclock:player c2 set from storage actionclock:player w_val
execute if score @s display_order matches 286 run data modify storage actionclock:player c3 set from storage actionclock:player h_val
execute if score @s display_order matches 286 run data modify storage actionclock:player c4 set from storage actionclock:player f_val
execute if score @s display_order matches 286 run data modify storage actionclock:player c5 set from storage actionclock:player d_val
execute if score @s display_order matches 286 run data modify storage actionclock:player c6 set from storage actionclock:player x_val
# 287: Zegar -> Pogoda -> Glowka -> Kierunek -> Kordy -> Dni
execute if score @s display_order matches 287 run data modify storage actionclock:player c1 set from storage actionclock:player c_val
execute if score @s display_order matches 287 run data modify storage actionclock:player c2 set from storage actionclock:player w_val
execute if score @s display_order matches 287 run data modify storage actionclock:player c3 set from storage actionclock:player h_val
execute if score @s display_order matches 287 run data modify storage actionclock:player c4 set from storage actionclock:player f_val
execute if score @s display_order matches 287 run data modify storage actionclock:player c5 set from storage actionclock:player x_val
execute if score @s display_order matches 287 run data modify storage actionclock:player c6 set from storage actionclock:player d_val
# 288: Zegar -> Kordy -> Dni -> Pogoda -> Kierunek -> Glowka
execute if score @s display_order matches 288 run data modify storage actionclock:player c1 set from storage actionclock:player c_val
execute if score @s display_order matches 288 run data modify storage actionclock:player c2 set from storage actionclock:player x_val
execute if score @s display_order matches 288 run data modify storage actionclock:player c3 set from storage actionclock:player d_val
execute if score @s display_order matches 288 run data modify storage actionclock:player c4 set from storage actionclock:player w_val
execute if score @s display_order matches 288 run data modify storage actionclock:player c5 set from storage actionclock:player f_val
execute if score @s display_order matches 288 run data modify storage actionclock:player c6 set from storage actionclock:player h_val
# 289: Zegar -> Kordy -> Dni -> Pogoda -> Glowka -> Kierunek
execute if score @s display_order matches 289 run data modify storage actionclock:player c1 set from storage actionclock:player c_val
execute if score @s display_order matches 289 run data modify storage actionclock:player c2 set from storage actionclock:player x_val
execute if score @s display_order matches 289 run data modify storage actionclock:player c3 set from storage actionclock:player d_val
execute if score @s display_order matches 289 run data modify storage actionclock:player c4 set from storage actionclock:player w_val
execute if score @s display_order matches 289 run data modify storage actionclock:player c5 set from storage actionclock:player h_val
execute if score @s display_order matches 289 run data modify storage actionclock:player c6 set from storage actionclock:player f_val
# 290: Zegar -> Kordy -> Dni -> Kierunek -> Pogoda -> Glowka
execute if score @s display_order matches 290 run data modify storage actionclock:player c1 set from storage actionclock:player c_val
execute if score @s display_order matches 290 run data modify storage actionclock:player c2 set from storage actionclock:player x_val
execute if score @s display_order matches 290 run data modify storage actionclock:player c3 set from storage actionclock:player d_val
execute if score @s display_order matches 290 run data modify storage actionclock:player c4 set from storage actionclock:player f_val
execute if score @s display_order matches 290 run data modify storage actionclock:player c5 set from storage actionclock:player w_val
execute if score @s display_order matches 290 run data modify storage actionclock:player c6 set from storage actionclock:player h_val
# 291: Zegar -> Kordy -> Dni -> Kierunek -> Glowka -> Pogoda
execute if score @s display_order matches 291 run data modify storage actionclock:player c1 set from storage actionclock:player c_val
execute if score @s display_order matches 291 run data modify storage actionclock:player c2 set from storage actionclock:player x_val
execute if score @s display_order matches 291 run data modify storage actionclock:player c3 set from storage actionclock:player d_val
execute if score @s display_order matches 291 run data modify storage actionclock:player c4 set from storage actionclock:player f_val
execute if score @s display_order matches 291 run data modify storage actionclock:player c5 set from storage actionclock:player h_val
execute if score @s display_order matches 291 run data modify storage actionclock:player c6 set from storage actionclock:player w_val
# 292: Zegar -> Kordy -> Dni -> Glowka -> Pogoda -> Kierunek
execute if score @s display_order matches 292 run data modify storage actionclock:player c1 set from storage actionclock:player c_val
execute if score @s display_order matches 292 run data modify storage actionclock:player c2 set from storage actionclock:player x_val
execute if score @s display_order matches 292 run data modify storage actionclock:player c3 set from storage actionclock:player d_val
execute if score @s display_order matches 292 run data modify storage actionclock:player c4 set from storage actionclock:player h_val
execute if score @s display_order matches 292 run data modify storage actionclock:player c5 set from storage actionclock:player w_val
execute if score @s display_order matches 292 run data modify storage actionclock:player c6 set from storage actionclock:player f_val
# 293: Zegar -> Kordy -> Dni -> Glowka -> Kierunek -> Pogoda
execute if score @s display_order matches 293 run data modify storage actionclock:player c1 set from storage actionclock:player c_val
execute if score @s display_order matches 293 run data modify storage actionclock:player c2 set from storage actionclock:player x_val
execute if score @s display_order matches 293 run data modify storage actionclock:player c3 set from storage actionclock:player d_val
execute if score @s display_order matches 293 run data modify storage actionclock:player c4 set from storage actionclock:player h_val
execute if score @s display_order matches 293 run data modify storage actionclock:player c5 set from storage actionclock:player f_val
execute if score @s display_order matches 293 run data modify storage actionclock:player c6 set from storage actionclock:player w_val
# 294: Zegar -> Kordy -> Pogoda -> Dni -> Kierunek -> Glowka
execute if score @s display_order matches 294 run data modify storage actionclock:player c1 set from storage actionclock:player c_val
execute if score @s display_order matches 294 run data modify storage actionclock:player c2 set from storage actionclock:player x_val
execute if score @s display_order matches 294 run data modify storage actionclock:player c3 set from storage actionclock:player w_val
execute if score @s display_order matches 294 run data modify storage actionclock:player c4 set from storage actionclock:player d_val
execute if score @s display_order matches 294 run data modify storage actionclock:player c5 set from storage actionclock:player f_val
execute if score @s display_order matches 294 run data modify storage actionclock:player c6 set from storage actionclock:player h_val
# 295: Zegar -> Kordy -> Pogoda -> Dni -> Glowka -> Kierunek
execute if score @s display_order matches 295 run data modify storage actionclock:player c1 set from storage actionclock:player c_val
execute if score @s display_order matches 295 run data modify storage actionclock:player c2 set from storage actionclock:player x_val
execute if score @s display_order matches 295 run data modify storage actionclock:player c3 set from storage actionclock:player w_val
execute if score @s display_order matches 295 run data modify storage actionclock:player c4 set from storage actionclock:player d_val
execute if score @s display_order matches 295 run data modify storage actionclock:player c5 set from storage actionclock:player h_val
execute if score @s display_order matches 295 run data modify storage actionclock:player c6 set from storage actionclock:player f_val
# 296: Zegar -> Kordy -> Pogoda -> Kierunek -> Dni -> Glowka
execute if score @s display_order matches 296 run data modify storage actionclock:player c1 set from storage actionclock:player c_val
execute if score @s display_order matches 296 run data modify storage actionclock:player c2 set from storage actionclock:player x_val
execute if score @s display_order matches 296 run data modify storage actionclock:player c3 set from storage actionclock:player w_val
execute if score @s display_order matches 296 run data modify storage actionclock:player c4 set from storage actionclock:player f_val
execute if score @s display_order matches 296 run data modify storage actionclock:player c5 set from storage actionclock:player d_val
execute if score @s display_order matches 296 run data modify storage actionclock:player c6 set from storage actionclock:player h_val
# 297: Zegar -> Kordy -> Pogoda -> Kierunek -> Glowka -> Dni
execute if score @s display_order matches 297 run data modify storage actionclock:player c1 set from storage actionclock:player c_val
execute if score @s display_order matches 297 run data modify storage actionclock:player c2 set from storage actionclock:player x_val
execute if score @s display_order matches 297 run data modify storage actionclock:player c3 set from storage actionclock:player w_val
execute if score @s display_order matches 297 run data modify storage actionclock:player c4 set from storage actionclock:player f_val
execute if score @s display_order matches 297 run data modify storage actionclock:player c5 set from storage actionclock:player h_val
execute if score @s display_order matches 297 run data modify storage actionclock:player c6 set from storage actionclock:player d_val
# 298: Zegar -> Kordy -> Pogoda -> Glowka -> Dni -> Kierunek
execute if score @s display_order matches 298 run data modify storage actionclock:player c1 set from storage actionclock:player c_val
execute if score @s display_order matches 298 run data modify storage actionclock:player c2 set from storage actionclock:player x_val
execute if score @s display_order matches 298 run data modify storage actionclock:player c3 set from storage actionclock:player w_val
execute if score @s display_order matches 298 run data modify storage actionclock:player c4 set from storage actionclock:player h_val
execute if score @s display_order matches 298 run data modify storage actionclock:player c5 set from storage actionclock:player d_val
execute if score @s display_order matches 298 run data modify storage actionclock:player c6 set from storage actionclock:player f_val
# 299: Zegar -> Kordy -> Pogoda -> Glowka -> Kierunek -> Dni
execute if score @s display_order matches 299 run data modify storage actionclock:player c1 set from storage actionclock:player c_val
execute if score @s display_order matches 299 run data modify storage actionclock:player c2 set from storage actionclock:player x_val
execute if score @s display_order matches 299 run data modify storage actionclock:player c3 set from storage actionclock:player w_val
execute if score @s display_order matches 299 run data modify storage actionclock:player c4 set from storage actionclock:player h_val
execute if score @s display_order matches 299 run data modify storage actionclock:player c5 set from storage actionclock:player f_val
execute if score @s display_order matches 299 run data modify storage actionclock:player c6 set from storage actionclock:player d_val
# 300: Zegar -> Kordy -> Kierunek -> Dni -> Pogoda -> Glowka
execute if score @s display_order matches 300 run data modify storage actionclock:player c1 set from storage actionclock:player c_val
execute if score @s display_order matches 300 run data modify storage actionclock:player c2 set from storage actionclock:player x_val
execute if score @s display_order matches 300 run data modify storage actionclock:player c3 set from storage actionclock:player f_val
execute if score @s display_order matches 300 run data modify storage actionclock:player c4 set from storage actionclock:player d_val
execute if score @s display_order matches 300 run data modify storage actionclock:player c5 set from storage actionclock:player w_val
execute if score @s display_order matches 300 run data modify storage actionclock:player c6 set from storage actionclock:player h_val
# 301: Zegar -> Kordy -> Kierunek -> Dni -> Glowka -> Pogoda
execute if score @s display_order matches 301 run data modify storage actionclock:player c1 set from storage actionclock:player c_val
execute if score @s display_order matches 301 run data modify storage actionclock:player c2 set from storage actionclock:player x_val
execute if score @s display_order matches 301 run data modify storage actionclock:player c3 set from storage actionclock:player f_val
execute if score @s display_order matches 301 run data modify storage actionclock:player c4 set from storage actionclock:player d_val
execute if score @s display_order matches 301 run data modify storage actionclock:player c5 set from storage actionclock:player h_val
execute if score @s display_order matches 301 run data modify storage actionclock:player c6 set from storage actionclock:player w_val
# 302: Zegar -> Kordy -> Kierunek -> Pogoda -> Dni -> Glowka
execute if score @s display_order matches 302 run data modify storage actionclock:player c1 set from storage actionclock:player c_val
execute if score @s display_order matches 302 run data modify storage actionclock:player c2 set from storage actionclock:player x_val
execute if score @s display_order matches 302 run data modify storage actionclock:player c3 set from storage actionclock:player f_val
execute if score @s display_order matches 302 run data modify storage actionclock:player c4 set from storage actionclock:player w_val
execute if score @s display_order matches 302 run data modify storage actionclock:player c5 set from storage actionclock:player d_val
execute if score @s display_order matches 302 run data modify storage actionclock:player c6 set from storage actionclock:player h_val
# 303: Zegar -> Kordy -> Kierunek -> Pogoda -> Glowka -> Dni
execute if score @s display_order matches 303 run data modify storage actionclock:player c1 set from storage actionclock:player c_val
execute if score @s display_order matches 303 run data modify storage actionclock:player c2 set from storage actionclock:player x_val
execute if score @s display_order matches 303 run data modify storage actionclock:player c3 set from storage actionclock:player f_val
execute if score @s display_order matches 303 run data modify storage actionclock:player c4 set from storage actionclock:player w_val
execute if score @s display_order matches 303 run data modify storage actionclock:player c5 set from storage actionclock:player h_val
execute if score @s display_order matches 303 run data modify storage actionclock:player c6 set from storage actionclock:player d_val
# 304: Zegar -> Kordy -> Kierunek -> Glowka -> Dni -> Pogoda
execute if score @s display_order matches 304 run data modify storage actionclock:player c1 set from storage actionclock:player c_val
execute if score @s display_order matches 304 run data modify storage actionclock:player c2 set from storage actionclock:player x_val
execute if score @s display_order matches 304 run data modify storage actionclock:player c3 set from storage actionclock:player f_val
execute if score @s display_order matches 304 run data modify storage actionclock:player c4 set from storage actionclock:player h_val
execute if score @s display_order matches 304 run data modify storage actionclock:player c5 set from storage actionclock:player d_val
execute if score @s display_order matches 304 run data modify storage actionclock:player c6 set from storage actionclock:player w_val
# 305: Zegar -> Kordy -> Kierunek -> Glowka -> Pogoda -> Dni
execute if score @s display_order matches 305 run data modify storage actionclock:player c1 set from storage actionclock:player c_val
execute if score @s display_order matches 305 run data modify storage actionclock:player c2 set from storage actionclock:player x_val
execute if score @s display_order matches 305 run data modify storage actionclock:player c3 set from storage actionclock:player f_val
execute if score @s display_order matches 305 run data modify storage actionclock:player c4 set from storage actionclock:player h_val
execute if score @s display_order matches 305 run data modify storage actionclock:player c5 set from storage actionclock:player w_val
execute if score @s display_order matches 305 run data modify storage actionclock:player c6 set from storage actionclock:player d_val
# 306: Zegar -> Kordy -> Glowka -> Dni -> Pogoda -> Kierunek
execute if score @s display_order matches 306 run data modify storage actionclock:player c1 set from storage actionclock:player c_val
execute if score @s display_order matches 306 run data modify storage actionclock:player c2 set from storage actionclock:player x_val
execute if score @s display_order matches 306 run data modify storage actionclock:player c3 set from storage actionclock:player h_val
execute if score @s display_order matches 306 run data modify storage actionclock:player c4 set from storage actionclock:player d_val
execute if score @s display_order matches 306 run data modify storage actionclock:player c5 set from storage actionclock:player w_val
execute if score @s display_order matches 306 run data modify storage actionclock:player c6 set from storage actionclock:player f_val
# 307: Zegar -> Kordy -> Glowka -> Dni -> Kierunek -> Pogoda
execute if score @s display_order matches 307 run data modify storage actionclock:player c1 set from storage actionclock:player c_val
execute if score @s display_order matches 307 run data modify storage actionclock:player c2 set from storage actionclock:player x_val
execute if score @s display_order matches 307 run data modify storage actionclock:player c3 set from storage actionclock:player h_val
execute if score @s display_order matches 307 run data modify storage actionclock:player c4 set from storage actionclock:player d_val
execute if score @s display_order matches 307 run data modify storage actionclock:player c5 set from storage actionclock:player f_val
execute if score @s display_order matches 307 run data modify storage actionclock:player c6 set from storage actionclock:player w_val
# 308: Zegar -> Kordy -> Glowka -> Pogoda -> Dni -> Kierunek
execute if score @s display_order matches 308 run data modify storage actionclock:player c1 set from storage actionclock:player c_val
execute if score @s display_order matches 308 run data modify storage actionclock:player c2 set from storage actionclock:player x_val
execute if score @s display_order matches 308 run data modify storage actionclock:player c3 set from storage actionclock:player h_val
execute if score @s display_order matches 308 run data modify storage actionclock:player c4 set from storage actionclock:player w_val
execute if score @s display_order matches 308 run data modify storage actionclock:player c5 set from storage actionclock:player d_val
execute if score @s display_order matches 308 run data modify storage actionclock:player c6 set from storage actionclock:player f_val
# 309: Zegar -> Kordy -> Glowka -> Pogoda -> Kierunek -> Dni
execute if score @s display_order matches 309 run data modify storage actionclock:player c1 set from storage actionclock:player c_val
execute if score @s display_order matches 309 run data modify storage actionclock:player c2 set from storage actionclock:player x_val
execute if score @s display_order matches 309 run data modify storage actionclock:player c3 set from storage actionclock:player h_val
execute if score @s display_order matches 309 run data modify storage actionclock:player c4 set from storage actionclock:player w_val
execute if score @s display_order matches 309 run data modify storage actionclock:player c5 set from storage actionclock:player f_val
execute if score @s display_order matches 309 run data modify storage actionclock:player c6 set from storage actionclock:player d_val
# 310: Zegar -> Kordy -> Glowka -> Kierunek -> Dni -> Pogoda
execute if score @s display_order matches 310 run data modify storage actionclock:player c1 set from storage actionclock:player c_val
execute if score @s display_order matches 310 run data modify storage actionclock:player c2 set from storage actionclock:player x_val
execute if score @s display_order matches 310 run data modify storage actionclock:player c3 set from storage actionclock:player h_val
execute if score @s display_order matches 310 run data modify storage actionclock:player c4 set from storage actionclock:player f_val
execute if score @s display_order matches 310 run data modify storage actionclock:player c5 set from storage actionclock:player d_val
execute if score @s display_order matches 310 run data modify storage actionclock:player c6 set from storage actionclock:player w_val
# 311: Zegar -> Kordy -> Glowka -> Kierunek -> Pogoda -> Dni
execute if score @s display_order matches 311 run data modify storage actionclock:player c1 set from storage actionclock:player c_val
execute if score @s display_order matches 311 run data modify storage actionclock:player c2 set from storage actionclock:player x_val
execute if score @s display_order matches 311 run data modify storage actionclock:player c3 set from storage actionclock:player h_val
execute if score @s display_order matches 311 run data modify storage actionclock:player c4 set from storage actionclock:player f_val
execute if score @s display_order matches 311 run data modify storage actionclock:player c5 set from storage actionclock:player w_val
execute if score @s display_order matches 311 run data modify storage actionclock:player c6 set from storage actionclock:player d_val
# 312: Zegar -> Kierunek -> Dni -> Pogoda -> Kordy -> Glowka
execute if score @s display_order matches 312 run data modify storage actionclock:player c1 set from storage actionclock:player c_val
execute if score @s display_order matches 312 run data modify storage actionclock:player c2 set from storage actionclock:player f_val
execute if score @s display_order matches 312 run data modify storage actionclock:player c3 set from storage actionclock:player d_val
execute if score @s display_order matches 312 run data modify storage actionclock:player c4 set from storage actionclock:player w_val
execute if score @s display_order matches 312 run data modify storage actionclock:player c5 set from storage actionclock:player x_val
execute if score @s display_order matches 312 run data modify storage actionclock:player c6 set from storage actionclock:player h_val
# 313: Zegar -> Kierunek -> Dni -> Pogoda -> Glowka -> Kordy
execute if score @s display_order matches 313 run data modify storage actionclock:player c1 set from storage actionclock:player c_val
execute if score @s display_order matches 313 run data modify storage actionclock:player c2 set from storage actionclock:player f_val
execute if score @s display_order matches 313 run data modify storage actionclock:player c3 set from storage actionclock:player d_val
execute if score @s display_order matches 313 run data modify storage actionclock:player c4 set from storage actionclock:player w_val
execute if score @s display_order matches 313 run data modify storage actionclock:player c5 set from storage actionclock:player h_val
execute if score @s display_order matches 313 run data modify storage actionclock:player c6 set from storage actionclock:player x_val
# 314: Zegar -> Kierunek -> Dni -> Kordy -> Pogoda -> Glowka
execute if score @s display_order matches 314 run data modify storage actionclock:player c1 set from storage actionclock:player c_val
execute if score @s display_order matches 314 run data modify storage actionclock:player c2 set from storage actionclock:player f_val
execute if score @s display_order matches 314 run data modify storage actionclock:player c3 set from storage actionclock:player d_val
execute if score @s display_order matches 314 run data modify storage actionclock:player c4 set from storage actionclock:player x_val
execute if score @s display_order matches 314 run data modify storage actionclock:player c5 set from storage actionclock:player w_val
execute if score @s display_order matches 314 run data modify storage actionclock:player c6 set from storage actionclock:player h_val
# 315: Zegar -> Kierunek -> Dni -> Kordy -> Glowka -> Pogoda
execute if score @s display_order matches 315 run data modify storage actionclock:player c1 set from storage actionclock:player c_val
execute if score @s display_order matches 315 run data modify storage actionclock:player c2 set from storage actionclock:player f_val
execute if score @s display_order matches 315 run data modify storage actionclock:player c3 set from storage actionclock:player d_val
execute if score @s display_order matches 315 run data modify storage actionclock:player c4 set from storage actionclock:player x_val
execute if score @s display_order matches 315 run data modify storage actionclock:player c5 set from storage actionclock:player h_val
execute if score @s display_order matches 315 run data modify storage actionclock:player c6 set from storage actionclock:player w_val
# 316: Zegar -> Kierunek -> Dni -> Glowka -> Pogoda -> Kordy
execute if score @s display_order matches 316 run data modify storage actionclock:player c1 set from storage actionclock:player c_val
execute if score @s display_order matches 316 run data modify storage actionclock:player c2 set from storage actionclock:player f_val
execute if score @s display_order matches 316 run data modify storage actionclock:player c3 set from storage actionclock:player d_val
execute if score @s display_order matches 316 run data modify storage actionclock:player c4 set from storage actionclock:player h_val
execute if score @s display_order matches 316 run data modify storage actionclock:player c5 set from storage actionclock:player w_val
execute if score @s display_order matches 316 run data modify storage actionclock:player c6 set from storage actionclock:player x_val
# 317: Zegar -> Kierunek -> Dni -> Glowka -> Kordy -> Pogoda
execute if score @s display_order matches 317 run data modify storage actionclock:player c1 set from storage actionclock:player c_val
execute if score @s display_order matches 317 run data modify storage actionclock:player c2 set from storage actionclock:player f_val
execute if score @s display_order matches 317 run data modify storage actionclock:player c3 set from storage actionclock:player d_val
execute if score @s display_order matches 317 run data modify storage actionclock:player c4 set from storage actionclock:player h_val
execute if score @s display_order matches 317 run data modify storage actionclock:player c5 set from storage actionclock:player x_val
execute if score @s display_order matches 317 run data modify storage actionclock:player c6 set from storage actionclock:player w_val
# 318: Zegar -> Kierunek -> Pogoda -> Dni -> Kordy -> Glowka
execute if score @s display_order matches 318 run data modify storage actionclock:player c1 set from storage actionclock:player c_val
execute if score @s display_order matches 318 run data modify storage actionclock:player c2 set from storage actionclock:player f_val
execute if score @s display_order matches 318 run data modify storage actionclock:player c3 set from storage actionclock:player w_val
execute if score @s display_order matches 318 run data modify storage actionclock:player c4 set from storage actionclock:player d_val
execute if score @s display_order matches 318 run data modify storage actionclock:player c5 set from storage actionclock:player x_val
execute if score @s display_order matches 318 run data modify storage actionclock:player c6 set from storage actionclock:player h_val
# 319: Zegar -> Kierunek -> Pogoda -> Dni -> Glowka -> Kordy
execute if score @s display_order matches 319 run data modify storage actionclock:player c1 set from storage actionclock:player c_val
execute if score @s display_order matches 319 run data modify storage actionclock:player c2 set from storage actionclock:player f_val
execute if score @s display_order matches 319 run data modify storage actionclock:player c3 set from storage actionclock:player w_val
execute if score @s display_order matches 319 run data modify storage actionclock:player c4 set from storage actionclock:player d_val
execute if score @s display_order matches 319 run data modify storage actionclock:player c5 set from storage actionclock:player h_val
execute if score @s display_order matches 319 run data modify storage actionclock:player c6 set from storage actionclock:player x_val
# 320: Zegar -> Kierunek -> Pogoda -> Kordy -> Dni -> Glowka
execute if score @s display_order matches 320 run data modify storage actionclock:player c1 set from storage actionclock:player c_val
execute if score @s display_order matches 320 run data modify storage actionclock:player c2 set from storage actionclock:player f_val
execute if score @s display_order matches 320 run data modify storage actionclock:player c3 set from storage actionclock:player w_val
execute if score @s display_order matches 320 run data modify storage actionclock:player c4 set from storage actionclock:player x_val
execute if score @s display_order matches 320 run data modify storage actionclock:player c5 set from storage actionclock:player d_val
execute if score @s display_order matches 320 run data modify storage actionclock:player c6 set from storage actionclock:player h_val
# 321: Zegar -> Kierunek -> Pogoda -> Kordy -> Glowka -> Dni
execute if score @s display_order matches 321 run data modify storage actionclock:player c1 set from storage actionclock:player c_val
execute if score @s display_order matches 321 run data modify storage actionclock:player c2 set from storage actionclock:player f_val
execute if score @s display_order matches 321 run data modify storage actionclock:player c3 set from storage actionclock:player w_val
execute if score @s display_order matches 321 run data modify storage actionclock:player c4 set from storage actionclock:player x_val
execute if score @s display_order matches 321 run data modify storage actionclock:player c5 set from storage actionclock:player h_val
execute if score @s display_order matches 321 run data modify storage actionclock:player c6 set from storage actionclock:player d_val
# 322: Zegar -> Kierunek -> Pogoda -> Glowka -> Dni -> Kordy
execute if score @s display_order matches 322 run data modify storage actionclock:player c1 set from storage actionclock:player c_val
execute if score @s display_order matches 322 run data modify storage actionclock:player c2 set from storage actionclock:player f_val
execute if score @s display_order matches 322 run data modify storage actionclock:player c3 set from storage actionclock:player w_val
execute if score @s display_order matches 322 run data modify storage actionclock:player c4 set from storage actionclock:player h_val
execute if score @s display_order matches 322 run data modify storage actionclock:player c5 set from storage actionclock:player d_val
execute if score @s display_order matches 322 run data modify storage actionclock:player c6 set from storage actionclock:player x_val
# 323: Zegar -> Kierunek -> Pogoda -> Glowka -> Kordy -> Dni
execute if score @s display_order matches 323 run data modify storage actionclock:player c1 set from storage actionclock:player c_val
execute if score @s display_order matches 323 run data modify storage actionclock:player c2 set from storage actionclock:player f_val
execute if score @s display_order matches 323 run data modify storage actionclock:player c3 set from storage actionclock:player w_val
execute if score @s display_order matches 323 run data modify storage actionclock:player c4 set from storage actionclock:player h_val
execute if score @s display_order matches 323 run data modify storage actionclock:player c5 set from storage actionclock:player x_val
execute if score @s display_order matches 323 run data modify storage actionclock:player c6 set from storage actionclock:player d_val
# 324: Zegar -> Kierunek -> Kordy -> Dni -> Pogoda -> Glowka
execute if score @s display_order matches 324 run data modify storage actionclock:player c1 set from storage actionclock:player c_val
execute if score @s display_order matches 324 run data modify storage actionclock:player c2 set from storage actionclock:player f_val
execute if score @s display_order matches 324 run data modify storage actionclock:player c3 set from storage actionclock:player x_val
execute if score @s display_order matches 324 run data modify storage actionclock:player c4 set from storage actionclock:player d_val
execute if score @s display_order matches 324 run data modify storage actionclock:player c5 set from storage actionclock:player w_val
execute if score @s display_order matches 324 run data modify storage actionclock:player c6 set from storage actionclock:player h_val
# 325: Zegar -> Kierunek -> Kordy -> Dni -> Glowka -> Pogoda
execute if score @s display_order matches 325 run data modify storage actionclock:player c1 set from storage actionclock:player c_val
execute if score @s display_order matches 325 run data modify storage actionclock:player c2 set from storage actionclock:player f_val
execute if score @s display_order matches 325 run data modify storage actionclock:player c3 set from storage actionclock:player x_val
execute if score @s display_order matches 325 run data modify storage actionclock:player c4 set from storage actionclock:player d_val
execute if score @s display_order matches 325 run data modify storage actionclock:player c5 set from storage actionclock:player h_val
execute if score @s display_order matches 325 run data modify storage actionclock:player c6 set from storage actionclock:player w_val
# 326: Zegar -> Kierunek -> Kordy -> Pogoda -> Dni -> Glowka
execute if score @s display_order matches 326 run data modify storage actionclock:player c1 set from storage actionclock:player c_val
execute if score @s display_order matches 326 run data modify storage actionclock:player c2 set from storage actionclock:player f_val
execute if score @s display_order matches 326 run data modify storage actionclock:player c3 set from storage actionclock:player x_val
execute if score @s display_order matches 326 run data modify storage actionclock:player c4 set from storage actionclock:player w_val
execute if score @s display_order matches 326 run data modify storage actionclock:player c5 set from storage actionclock:player d_val
execute if score @s display_order matches 326 run data modify storage actionclock:player c6 set from storage actionclock:player h_val
# 327: Zegar -> Kierunek -> Kordy -> Pogoda -> Glowka -> Dni
execute if score @s display_order matches 327 run data modify storage actionclock:player c1 set from storage actionclock:player c_val
execute if score @s display_order matches 327 run data modify storage actionclock:player c2 set from storage actionclock:player f_val
execute if score @s display_order matches 327 run data modify storage actionclock:player c3 set from storage actionclock:player x_val
execute if score @s display_order matches 327 run data modify storage actionclock:player c4 set from storage actionclock:player w_val
execute if score @s display_order matches 327 run data modify storage actionclock:player c5 set from storage actionclock:player h_val
execute if score @s display_order matches 327 run data modify storage actionclock:player c6 set from storage actionclock:player d_val
# 328: Zegar -> Kierunek -> Kordy -> Glowka -> Dni -> Pogoda
execute if score @s display_order matches 328 run data modify storage actionclock:player c1 set from storage actionclock:player c_val
execute if score @s display_order matches 328 run data modify storage actionclock:player c2 set from storage actionclock:player f_val
execute if score @s display_order matches 328 run data modify storage actionclock:player c3 set from storage actionclock:player x_val
execute if score @s display_order matches 328 run data modify storage actionclock:player c4 set from storage actionclock:player h_val
execute if score @s display_order matches 328 run data modify storage actionclock:player c5 set from storage actionclock:player d_val
execute if score @s display_order matches 328 run data modify storage actionclock:player c6 set from storage actionclock:player w_val
# 329: Zegar -> Kierunek -> Kordy -> Glowka -> Pogoda -> Dni
execute if score @s display_order matches 329 run data modify storage actionclock:player c1 set from storage actionclock:player c_val
execute if score @s display_order matches 329 run data modify storage actionclock:player c2 set from storage actionclock:player f_val
execute if score @s display_order matches 329 run data modify storage actionclock:player c3 set from storage actionclock:player x_val
execute if score @s display_order matches 329 run data modify storage actionclock:player c4 set from storage actionclock:player h_val
execute if score @s display_order matches 329 run data modify storage actionclock:player c5 set from storage actionclock:player w_val
execute if score @s display_order matches 329 run data modify storage actionclock:player c6 set from storage actionclock:player d_val
# 330: Zegar -> Kierunek -> Glowka -> Dni -> Pogoda -> Kordy
execute if score @s display_order matches 330 run data modify storage actionclock:player c1 set from storage actionclock:player c_val
execute if score @s display_order matches 330 run data modify storage actionclock:player c2 set from storage actionclock:player f_val
execute if score @s display_order matches 330 run data modify storage actionclock:player c3 set from storage actionclock:player h_val
execute if score @s display_order matches 330 run data modify storage actionclock:player c4 set from storage actionclock:player d_val
execute if score @s display_order matches 330 run data modify storage actionclock:player c5 set from storage actionclock:player w_val
execute if score @s display_order matches 330 run data modify storage actionclock:player c6 set from storage actionclock:player x_val
# 331: Zegar -> Kierunek -> Glowka -> Dni -> Kordy -> Pogoda
execute if score @s display_order matches 331 run data modify storage actionclock:player c1 set from storage actionclock:player c_val
execute if score @s display_order matches 331 run data modify storage actionclock:player c2 set from storage actionclock:player f_val
execute if score @s display_order matches 331 run data modify storage actionclock:player c3 set from storage actionclock:player h_val
execute if score @s display_order matches 331 run data modify storage actionclock:player c4 set from storage actionclock:player d_val
execute if score @s display_order matches 331 run data modify storage actionclock:player c5 set from storage actionclock:player x_val
execute if score @s display_order matches 331 run data modify storage actionclock:player c6 set from storage actionclock:player w_val
# 332: Zegar -> Kierunek -> Glowka -> Pogoda -> Dni -> Kordy
execute if score @s display_order matches 332 run data modify storage actionclock:player c1 set from storage actionclock:player c_val
execute if score @s display_order matches 332 run data modify storage actionclock:player c2 set from storage actionclock:player f_val
execute if score @s display_order matches 332 run data modify storage actionclock:player c3 set from storage actionclock:player h_val
execute if score @s display_order matches 332 run data modify storage actionclock:player c4 set from storage actionclock:player w_val
execute if score @s display_order matches 332 run data modify storage actionclock:player c5 set from storage actionclock:player d_val
execute if score @s display_order matches 332 run data modify storage actionclock:player c6 set from storage actionclock:player x_val
# 333: Zegar -> Kierunek -> Glowka -> Pogoda -> Kordy -> Dni
execute if score @s display_order matches 333 run data modify storage actionclock:player c1 set from storage actionclock:player c_val
execute if score @s display_order matches 333 run data modify storage actionclock:player c2 set from storage actionclock:player f_val
execute if score @s display_order matches 333 run data modify storage actionclock:player c3 set from storage actionclock:player h_val
execute if score @s display_order matches 333 run data modify storage actionclock:player c4 set from storage actionclock:player w_val
execute if score @s display_order matches 333 run data modify storage actionclock:player c5 set from storage actionclock:player x_val
execute if score @s display_order matches 333 run data modify storage actionclock:player c6 set from storage actionclock:player d_val
# 334: Zegar -> Kierunek -> Glowka -> Kordy -> Dni -> Pogoda
execute if score @s display_order matches 334 run data modify storage actionclock:player c1 set from storage actionclock:player c_val
execute if score @s display_order matches 334 run data modify storage actionclock:player c2 set from storage actionclock:player f_val
execute if score @s display_order matches 334 run data modify storage actionclock:player c3 set from storage actionclock:player h_val
execute if score @s display_order matches 334 run data modify storage actionclock:player c4 set from storage actionclock:player x_val
execute if score @s display_order matches 334 run data modify storage actionclock:player c5 set from storage actionclock:player d_val
execute if score @s display_order matches 334 run data modify storage actionclock:player c6 set from storage actionclock:player w_val
# 335: Zegar -> Kierunek -> Glowka -> Kordy -> Pogoda -> Dni
execute if score @s display_order matches 335 run data modify storage actionclock:player c1 set from storage actionclock:player c_val
execute if score @s display_order matches 335 run data modify storage actionclock:player c2 set from storage actionclock:player f_val
execute if score @s display_order matches 335 run data modify storage actionclock:player c3 set from storage actionclock:player h_val
execute if score @s display_order matches 335 run data modify storage actionclock:player c4 set from storage actionclock:player x_val
execute if score @s display_order matches 335 run data modify storage actionclock:player c5 set from storage actionclock:player w_val
execute if score @s display_order matches 335 run data modify storage actionclock:player c6 set from storage actionclock:player d_val
# 336: Zegar -> Glowka -> Dni -> Pogoda -> Kordy -> Kierunek
execute if score @s display_order matches 336 run data modify storage actionclock:player c1 set from storage actionclock:player c_val
execute if score @s display_order matches 336 run data modify storage actionclock:player c2 set from storage actionclock:player h_val
execute if score @s display_order matches 336 run data modify storage actionclock:player c3 set from storage actionclock:player d_val
execute if score @s display_order matches 336 run data modify storage actionclock:player c4 set from storage actionclock:player w_val
execute if score @s display_order matches 336 run data modify storage actionclock:player c5 set from storage actionclock:player x_val
execute if score @s display_order matches 336 run data modify storage actionclock:player c6 set from storage actionclock:player f_val
# 337: Zegar -> Glowka -> Dni -> Pogoda -> Kierunek -> Kordy
execute if score @s display_order matches 337 run data modify storage actionclock:player c1 set from storage actionclock:player c_val
execute if score @s display_order matches 337 run data modify storage actionclock:player c2 set from storage actionclock:player h_val
execute if score @s display_order matches 337 run data modify storage actionclock:player c3 set from storage actionclock:player d_val
execute if score @s display_order matches 337 run data modify storage actionclock:player c4 set from storage actionclock:player w_val
execute if score @s display_order matches 337 run data modify storage actionclock:player c5 set from storage actionclock:player f_val
execute if score @s display_order matches 337 run data modify storage actionclock:player c6 set from storage actionclock:player x_val
# 338: Zegar -> Glowka -> Dni -> Kordy -> Pogoda -> Kierunek
execute if score @s display_order matches 338 run data modify storage actionclock:player c1 set from storage actionclock:player c_val
execute if score @s display_order matches 338 run data modify storage actionclock:player c2 set from storage actionclock:player h_val
execute if score @s display_order matches 338 run data modify storage actionclock:player c3 set from storage actionclock:player d_val
execute if score @s display_order matches 338 run data modify storage actionclock:player c4 set from storage actionclock:player x_val
execute if score @s display_order matches 338 run data modify storage actionclock:player c5 set from storage actionclock:player w_val
execute if score @s display_order matches 338 run data modify storage actionclock:player c6 set from storage actionclock:player f_val
# 339: Zegar -> Glowka -> Dni -> Kordy -> Kierunek -> Pogoda
execute if score @s display_order matches 339 run data modify storage actionclock:player c1 set from storage actionclock:player c_val
execute if score @s display_order matches 339 run data modify storage actionclock:player c2 set from storage actionclock:player h_val
execute if score @s display_order matches 339 run data modify storage actionclock:player c3 set from storage actionclock:player d_val
execute if score @s display_order matches 339 run data modify storage actionclock:player c4 set from storage actionclock:player x_val
execute if score @s display_order matches 339 run data modify storage actionclock:player c5 set from storage actionclock:player f_val
execute if score @s display_order matches 339 run data modify storage actionclock:player c6 set from storage actionclock:player w_val
# 340: Zegar -> Glowka -> Dni -> Kierunek -> Pogoda -> Kordy
execute if score @s display_order matches 340 run data modify storage actionclock:player c1 set from storage actionclock:player c_val
execute if score @s display_order matches 340 run data modify storage actionclock:player c2 set from storage actionclock:player h_val
execute if score @s display_order matches 340 run data modify storage actionclock:player c3 set from storage actionclock:player d_val
execute if score @s display_order matches 340 run data modify storage actionclock:player c4 set from storage actionclock:player f_val
execute if score @s display_order matches 340 run data modify storage actionclock:player c5 set from storage actionclock:player w_val
execute if score @s display_order matches 340 run data modify storage actionclock:player c6 set from storage actionclock:player x_val
# 341: Zegar -> Glowka -> Dni -> Kierunek -> Kordy -> Pogoda
execute if score @s display_order matches 341 run data modify storage actionclock:player c1 set from storage actionclock:player c_val
execute if score @s display_order matches 341 run data modify storage actionclock:player c2 set from storage actionclock:player h_val
execute if score @s display_order matches 341 run data modify storage actionclock:player c3 set from storage actionclock:player d_val
execute if score @s display_order matches 341 run data modify storage actionclock:player c4 set from storage actionclock:player f_val
execute if score @s display_order matches 341 run data modify storage actionclock:player c5 set from storage actionclock:player x_val
execute if score @s display_order matches 341 run data modify storage actionclock:player c6 set from storage actionclock:player w_val
# 342: Zegar -> Glowka -> Pogoda -> Dni -> Kordy -> Kierunek
execute if score @s display_order matches 342 run data modify storage actionclock:player c1 set from storage actionclock:player c_val
execute if score @s display_order matches 342 run data modify storage actionclock:player c2 set from storage actionclock:player h_val
execute if score @s display_order matches 342 run data modify storage actionclock:player c3 set from storage actionclock:player w_val
execute if score @s display_order matches 342 run data modify storage actionclock:player c4 set from storage actionclock:player d_val
execute if score @s display_order matches 342 run data modify storage actionclock:player c5 set from storage actionclock:player x_val
execute if score @s display_order matches 342 run data modify storage actionclock:player c6 set from storage actionclock:player f_val
# 343: Zegar -> Glowka -> Pogoda -> Dni -> Kierunek -> Kordy
execute if score @s display_order matches 343 run data modify storage actionclock:player c1 set from storage actionclock:player c_val
execute if score @s display_order matches 343 run data modify storage actionclock:player c2 set from storage actionclock:player h_val
execute if score @s display_order matches 343 run data modify storage actionclock:player c3 set from storage actionclock:player w_val
execute if score @s display_order matches 343 run data modify storage actionclock:player c4 set from storage actionclock:player d_val
execute if score @s display_order matches 343 run data modify storage actionclock:player c5 set from storage actionclock:player f_val
execute if score @s display_order matches 343 run data modify storage actionclock:player c6 set from storage actionclock:player x_val
# 344: Zegar -> Glowka -> Pogoda -> Kordy -> Dni -> Kierunek
execute if score @s display_order matches 344 run data modify storage actionclock:player c1 set from storage actionclock:player c_val
execute if score @s display_order matches 344 run data modify storage actionclock:player c2 set from storage actionclock:player h_val
execute if score @s display_order matches 344 run data modify storage actionclock:player c3 set from storage actionclock:player w_val
execute if score @s display_order matches 344 run data modify storage actionclock:player c4 set from storage actionclock:player x_val
execute if score @s display_order matches 344 run data modify storage actionclock:player c5 set from storage actionclock:player d_val
execute if score @s display_order matches 344 run data modify storage actionclock:player c6 set from storage actionclock:player f_val
# 345: Zegar -> Glowka -> Pogoda -> Kordy -> Kierunek -> Dni
execute if score @s display_order matches 345 run data modify storage actionclock:player c1 set from storage actionclock:player c_val
execute if score @s display_order matches 345 run data modify storage actionclock:player c2 set from storage actionclock:player h_val
execute if score @s display_order matches 345 run data modify storage actionclock:player c3 set from storage actionclock:player w_val
execute if score @s display_order matches 345 run data modify storage actionclock:player c4 set from storage actionclock:player x_val
execute if score @s display_order matches 345 run data modify storage actionclock:player c5 set from storage actionclock:player f_val
execute if score @s display_order matches 345 run data modify storage actionclock:player c6 set from storage actionclock:player d_val
# 346: Zegar -> Glowka -> Pogoda -> Kierunek -> Dni -> Kordy
execute if score @s display_order matches 346 run data modify storage actionclock:player c1 set from storage actionclock:player c_val
execute if score @s display_order matches 346 run data modify storage actionclock:player c2 set from storage actionclock:player h_val
execute if score @s display_order matches 346 run data modify storage actionclock:player c3 set from storage actionclock:player w_val
execute if score @s display_order matches 346 run data modify storage actionclock:player c4 set from storage actionclock:player f_val
execute if score @s display_order matches 346 run data modify storage actionclock:player c5 set from storage actionclock:player d_val
execute if score @s display_order matches 346 run data modify storage actionclock:player c6 set from storage actionclock:player x_val
# 347: Zegar -> Glowka -> Pogoda -> Kierunek -> Kordy -> Dni
execute if score @s display_order matches 347 run data modify storage actionclock:player c1 set from storage actionclock:player c_val
execute if score @s display_order matches 347 run data modify storage actionclock:player c2 set from storage actionclock:player h_val
execute if score @s display_order matches 347 run data modify storage actionclock:player c3 set from storage actionclock:player w_val
execute if score @s display_order matches 347 run data modify storage actionclock:player c4 set from storage actionclock:player f_val
execute if score @s display_order matches 347 run data modify storage actionclock:player c5 set from storage actionclock:player x_val
execute if score @s display_order matches 347 run data modify storage actionclock:player c6 set from storage actionclock:player d_val
# 348: Zegar -> Glowka -> Kordy -> Dni -> Pogoda -> Kierunek
execute if score @s display_order matches 348 run data modify storage actionclock:player c1 set from storage actionclock:player c_val
execute if score @s display_order matches 348 run data modify storage actionclock:player c2 set from storage actionclock:player h_val
execute if score @s display_order matches 348 run data modify storage actionclock:player c3 set from storage actionclock:player x_val
execute if score @s display_order matches 348 run data modify storage actionclock:player c4 set from storage actionclock:player d_val
execute if score @s display_order matches 348 run data modify storage actionclock:player c5 set from storage actionclock:player w_val
execute if score @s display_order matches 348 run data modify storage actionclock:player c6 set from storage actionclock:player f_val
# 349: Zegar -> Glowka -> Kordy -> Dni -> Kierunek -> Pogoda
execute if score @s display_order matches 349 run data modify storage actionclock:player c1 set from storage actionclock:player c_val
execute if score @s display_order matches 349 run data modify storage actionclock:player c2 set from storage actionclock:player h_val
execute if score @s display_order matches 349 run data modify storage actionclock:player c3 set from storage actionclock:player x_val
execute if score @s display_order matches 349 run data modify storage actionclock:player c4 set from storage actionclock:player d_val
execute if score @s display_order matches 349 run data modify storage actionclock:player c5 set from storage actionclock:player f_val
execute if score @s display_order matches 349 run data modify storage actionclock:player c6 set from storage actionclock:player w_val
# 350: Zegar -> Glowka -> Kordy -> Pogoda -> Dni -> Kierunek
execute if score @s display_order matches 350 run data modify storage actionclock:player c1 set from storage actionclock:player c_val
execute if score @s display_order matches 350 run data modify storage actionclock:player c2 set from storage actionclock:player h_val
execute if score @s display_order matches 350 run data modify storage actionclock:player c3 set from storage actionclock:player x_val
execute if score @s display_order matches 350 run data modify storage actionclock:player c4 set from storage actionclock:player w_val
execute if score @s display_order matches 350 run data modify storage actionclock:player c5 set from storage actionclock:player d_val
execute if score @s display_order matches 350 run data modify storage actionclock:player c6 set from storage actionclock:player f_val
# 351: Zegar -> Glowka -> Kordy -> Pogoda -> Kierunek -> Dni
execute if score @s display_order matches 351 run data modify storage actionclock:player c1 set from storage actionclock:player c_val
execute if score @s display_order matches 351 run data modify storage actionclock:player c2 set from storage actionclock:player h_val
execute if score @s display_order matches 351 run data modify storage actionclock:player c3 set from storage actionclock:player x_val
execute if score @s display_order matches 351 run data modify storage actionclock:player c4 set from storage actionclock:player w_val
execute if score @s display_order matches 351 run data modify storage actionclock:player c5 set from storage actionclock:player f_val
execute if score @s display_order matches 351 run data modify storage actionclock:player c6 set from storage actionclock:player d_val
# 352: Zegar -> Glowka -> Kordy -> Kierunek -> Dni -> Pogoda
execute if score @s display_order matches 352 run data modify storage actionclock:player c1 set from storage actionclock:player c_val
execute if score @s display_order matches 352 run data modify storage actionclock:player c2 set from storage actionclock:player h_val
execute if score @s display_order matches 352 run data modify storage actionclock:player c3 set from storage actionclock:player x_val
execute if score @s display_order matches 352 run data modify storage actionclock:player c4 set from storage actionclock:player f_val
execute if score @s display_order matches 352 run data modify storage actionclock:player c5 set from storage actionclock:player d_val
execute if score @s display_order matches 352 run data modify storage actionclock:player c6 set from storage actionclock:player w_val
# 353: Zegar -> Glowka -> Kordy -> Kierunek -> Pogoda -> Dni
execute if score @s display_order matches 353 run data modify storage actionclock:player c1 set from storage actionclock:player c_val
execute if score @s display_order matches 353 run data modify storage actionclock:player c2 set from storage actionclock:player h_val
execute if score @s display_order matches 353 run data modify storage actionclock:player c3 set from storage actionclock:player x_val
execute if score @s display_order matches 353 run data modify storage actionclock:player c4 set from storage actionclock:player f_val
execute if score @s display_order matches 353 run data modify storage actionclock:player c5 set from storage actionclock:player w_val
execute if score @s display_order matches 353 run data modify storage actionclock:player c6 set from storage actionclock:player d_val
# 354: Zegar -> Glowka -> Kierunek -> Dni -> Pogoda -> Kordy
execute if score @s display_order matches 354 run data modify storage actionclock:player c1 set from storage actionclock:player c_val
execute if score @s display_order matches 354 run data modify storage actionclock:player c2 set from storage actionclock:player h_val
execute if score @s display_order matches 354 run data modify storage actionclock:player c3 set from storage actionclock:player f_val
execute if score @s display_order matches 354 run data modify storage actionclock:player c4 set from storage actionclock:player d_val
execute if score @s display_order matches 354 run data modify storage actionclock:player c5 set from storage actionclock:player w_val
execute if score @s display_order matches 354 run data modify storage actionclock:player c6 set from storage actionclock:player x_val
# 355: Zegar -> Glowka -> Kierunek -> Dni -> Kordy -> Pogoda
execute if score @s display_order matches 355 run data modify storage actionclock:player c1 set from storage actionclock:player c_val
execute if score @s display_order matches 355 run data modify storage actionclock:player c2 set from storage actionclock:player h_val
execute if score @s display_order matches 355 run data modify storage actionclock:player c3 set from storage actionclock:player f_val
execute if score @s display_order matches 355 run data modify storage actionclock:player c4 set from storage actionclock:player d_val
execute if score @s display_order matches 355 run data modify storage actionclock:player c5 set from storage actionclock:player x_val
execute if score @s display_order matches 355 run data modify storage actionclock:player c6 set from storage actionclock:player w_val
# 356: Zegar -> Glowka -> Kierunek -> Pogoda -> Dni -> Kordy
execute if score @s display_order matches 356 run data modify storage actionclock:player c1 set from storage actionclock:player c_val
execute if score @s display_order matches 356 run data modify storage actionclock:player c2 set from storage actionclock:player h_val
execute if score @s display_order matches 356 run data modify storage actionclock:player c3 set from storage actionclock:player f_val
execute if score @s display_order matches 356 run data modify storage actionclock:player c4 set from storage actionclock:player w_val
execute if score @s display_order matches 356 run data modify storage actionclock:player c5 set from storage actionclock:player d_val
execute if score @s display_order matches 356 run data modify storage actionclock:player c6 set from storage actionclock:player x_val
# 357: Zegar -> Glowka -> Kierunek -> Pogoda -> Kordy -> Dni
execute if score @s display_order matches 357 run data modify storage actionclock:player c1 set from storage actionclock:player c_val
execute if score @s display_order matches 357 run data modify storage actionclock:player c2 set from storage actionclock:player h_val
execute if score @s display_order matches 357 run data modify storage actionclock:player c3 set from storage actionclock:player f_val
execute if score @s display_order matches 357 run data modify storage actionclock:player c4 set from storage actionclock:player w_val
execute if score @s display_order matches 357 run data modify storage actionclock:player c5 set from storage actionclock:player x_val
execute if score @s display_order matches 357 run data modify storage actionclock:player c6 set from storage actionclock:player d_val
# 358: Zegar -> Glowka -> Kierunek -> Kordy -> Dni -> Pogoda
execute if score @s display_order matches 358 run data modify storage actionclock:player c1 set from storage actionclock:player c_val
execute if score @s display_order matches 358 run data modify storage actionclock:player c2 set from storage actionclock:player h_val
execute if score @s display_order matches 358 run data modify storage actionclock:player c3 set from storage actionclock:player f_val
execute if score @s display_order matches 358 run data modify storage actionclock:player c4 set from storage actionclock:player x_val
execute if score @s display_order matches 358 run data modify storage actionclock:player c5 set from storage actionclock:player d_val
execute if score @s display_order matches 358 run data modify storage actionclock:player c6 set from storage actionclock:player w_val
# 359: Zegar -> Glowka -> Kierunek -> Kordy -> Pogoda -> Dni
execute if score @s display_order matches 359 run data modify storage actionclock:player c1 set from storage actionclock:player c_val
execute if score @s display_order matches 359 run data modify storage actionclock:player c2 set from storage actionclock:player h_val
execute if score @s display_order matches 359 run data modify storage actionclock:player c3 set from storage actionclock:player f_val
execute if score @s display_order matches 359 run data modify storage actionclock:player c4 set from storage actionclock:player x_val
execute if score @s display_order matches 359 run data modify storage actionclock:player c5 set from storage actionclock:player w_val
execute if score @s display_order matches 359 run data modify storage actionclock:player c6 set from storage actionclock:player d_val
# 360: Kordy -> Dni -> Pogoda -> Zegar -> Kierunek -> Glowka
execute if score @s display_order matches 360 run data modify storage actionclock:player c1 set from storage actionclock:player x_val
execute if score @s display_order matches 360 run data modify storage actionclock:player c2 set from storage actionclock:player d_val
execute if score @s display_order matches 360 run data modify storage actionclock:player c3 set from storage actionclock:player w_val
execute if score @s display_order matches 360 run data modify storage actionclock:player c4 set from storage actionclock:player c_val
execute if score @s display_order matches 360 run data modify storage actionclock:player c5 set from storage actionclock:player f_val
execute if score @s display_order matches 360 run data modify storage actionclock:player c6 set from storage actionclock:player h_val
# 361: Kordy -> Dni -> Pogoda -> Zegar -> Glowka -> Kierunek
execute if score @s display_order matches 361 run data modify storage actionclock:player c1 set from storage actionclock:player x_val
execute if score @s display_order matches 361 run data modify storage actionclock:player c2 set from storage actionclock:player d_val
execute if score @s display_order matches 361 run data modify storage actionclock:player c3 set from storage actionclock:player w_val
execute if score @s display_order matches 361 run data modify storage actionclock:player c4 set from storage actionclock:player c_val
execute if score @s display_order matches 361 run data modify storage actionclock:player c5 set from storage actionclock:player h_val
execute if score @s display_order matches 361 run data modify storage actionclock:player c6 set from storage actionclock:player f_val
# 362: Kordy -> Dni -> Pogoda -> Kierunek -> Zegar -> Glowka
execute if score @s display_order matches 362 run data modify storage actionclock:player c1 set from storage actionclock:player x_val
execute if score @s display_order matches 362 run data modify storage actionclock:player c2 set from storage actionclock:player d_val
execute if score @s display_order matches 362 run data modify storage actionclock:player c3 set from storage actionclock:player w_val
execute if score @s display_order matches 362 run data modify storage actionclock:player c4 set from storage actionclock:player f_val
execute if score @s display_order matches 362 run data modify storage actionclock:player c5 set from storage actionclock:player c_val
execute if score @s display_order matches 362 run data modify storage actionclock:player c6 set from storage actionclock:player h_val
# 363: Kordy -> Dni -> Pogoda -> Kierunek -> Glowka -> Zegar
execute if score @s display_order matches 363 run data modify storage actionclock:player c1 set from storage actionclock:player x_val
execute if score @s display_order matches 363 run data modify storage actionclock:player c2 set from storage actionclock:player d_val
execute if score @s display_order matches 363 run data modify storage actionclock:player c3 set from storage actionclock:player w_val
execute if score @s display_order matches 363 run data modify storage actionclock:player c4 set from storage actionclock:player f_val
execute if score @s display_order matches 363 run data modify storage actionclock:player c5 set from storage actionclock:player h_val
execute if score @s display_order matches 363 run data modify storage actionclock:player c6 set from storage actionclock:player c_val
# 364: Kordy -> Dni -> Pogoda -> Glowka -> Zegar -> Kierunek
execute if score @s display_order matches 364 run data modify storage actionclock:player c1 set from storage actionclock:player x_val
execute if score @s display_order matches 364 run data modify storage actionclock:player c2 set from storage actionclock:player d_val
execute if score @s display_order matches 364 run data modify storage actionclock:player c3 set from storage actionclock:player w_val
execute if score @s display_order matches 364 run data modify storage actionclock:player c4 set from storage actionclock:player h_val
execute if score @s display_order matches 364 run data modify storage actionclock:player c5 set from storage actionclock:player c_val
execute if score @s display_order matches 364 run data modify storage actionclock:player c6 set from storage actionclock:player f_val
# 365: Kordy -> Dni -> Pogoda -> Glowka -> Kierunek -> Zegar
execute if score @s display_order matches 365 run data modify storage actionclock:player c1 set from storage actionclock:player x_val
execute if score @s display_order matches 365 run data modify storage actionclock:player c2 set from storage actionclock:player d_val
execute if score @s display_order matches 365 run data modify storage actionclock:player c3 set from storage actionclock:player w_val
execute if score @s display_order matches 365 run data modify storage actionclock:player c4 set from storage actionclock:player h_val
execute if score @s display_order matches 365 run data modify storage actionclock:player c5 set from storage actionclock:player f_val
execute if score @s display_order matches 365 run data modify storage actionclock:player c6 set from storage actionclock:player c_val
# 366: Kordy -> Dni -> Zegar -> Pogoda -> Kierunek -> Glowka
execute if score @s display_order matches 366 run data modify storage actionclock:player c1 set from storage actionclock:player x_val
execute if score @s display_order matches 366 run data modify storage actionclock:player c2 set from storage actionclock:player d_val
execute if score @s display_order matches 366 run data modify storage actionclock:player c3 set from storage actionclock:player c_val
execute if score @s display_order matches 366 run data modify storage actionclock:player c4 set from storage actionclock:player w_val
execute if score @s display_order matches 366 run data modify storage actionclock:player c5 set from storage actionclock:player f_val
execute if score @s display_order matches 366 run data modify storage actionclock:player c6 set from storage actionclock:player h_val
# 367: Kordy -> Dni -> Zegar -> Pogoda -> Glowka -> Kierunek
execute if score @s display_order matches 367 run data modify storage actionclock:player c1 set from storage actionclock:player x_val
execute if score @s display_order matches 367 run data modify storage actionclock:player c2 set from storage actionclock:player d_val
execute if score @s display_order matches 367 run data modify storage actionclock:player c3 set from storage actionclock:player c_val
execute if score @s display_order matches 367 run data modify storage actionclock:player c4 set from storage actionclock:player w_val
execute if score @s display_order matches 367 run data modify storage actionclock:player c5 set from storage actionclock:player h_val
execute if score @s display_order matches 367 run data modify storage actionclock:player c6 set from storage actionclock:player f_val
# 368: Kordy -> Dni -> Zegar -> Kierunek -> Pogoda -> Glowka
execute if score @s display_order matches 368 run data modify storage actionclock:player c1 set from storage actionclock:player x_val
execute if score @s display_order matches 368 run data modify storage actionclock:player c2 set from storage actionclock:player d_val
execute if score @s display_order matches 368 run data modify storage actionclock:player c3 set from storage actionclock:player c_val
execute if score @s display_order matches 368 run data modify storage actionclock:player c4 set from storage actionclock:player f_val
execute if score @s display_order matches 368 run data modify storage actionclock:player c5 set from storage actionclock:player w_val
execute if score @s display_order matches 368 run data modify storage actionclock:player c6 set from storage actionclock:player h_val
# 369: Kordy -> Dni -> Zegar -> Kierunek -> Glowka -> Pogoda
execute if score @s display_order matches 369 run data modify storage actionclock:player c1 set from storage actionclock:player x_val
execute if score @s display_order matches 369 run data modify storage actionclock:player c2 set from storage actionclock:player d_val
execute if score @s display_order matches 369 run data modify storage actionclock:player c3 set from storage actionclock:player c_val
execute if score @s display_order matches 369 run data modify storage actionclock:player c4 set from storage actionclock:player f_val
execute if score @s display_order matches 369 run data modify storage actionclock:player c5 set from storage actionclock:player h_val
execute if score @s display_order matches 369 run data modify storage actionclock:player c6 set from storage actionclock:player w_val
# 370: Kordy -> Dni -> Zegar -> Glowka -> Pogoda -> Kierunek
execute if score @s display_order matches 370 run data modify storage actionclock:player c1 set from storage actionclock:player x_val
execute if score @s display_order matches 370 run data modify storage actionclock:player c2 set from storage actionclock:player d_val
execute if score @s display_order matches 370 run data modify storage actionclock:player c3 set from storage actionclock:player c_val
execute if score @s display_order matches 370 run data modify storage actionclock:player c4 set from storage actionclock:player h_val
execute if score @s display_order matches 370 run data modify storage actionclock:player c5 set from storage actionclock:player w_val
execute if score @s display_order matches 370 run data modify storage actionclock:player c6 set from storage actionclock:player f_val
# 371: Kordy -> Dni -> Zegar -> Glowka -> Kierunek -> Pogoda
execute if score @s display_order matches 371 run data modify storage actionclock:player c1 set from storage actionclock:player x_val
execute if score @s display_order matches 371 run data modify storage actionclock:player c2 set from storage actionclock:player d_val
execute if score @s display_order matches 371 run data modify storage actionclock:player c3 set from storage actionclock:player c_val
execute if score @s display_order matches 371 run data modify storage actionclock:player c4 set from storage actionclock:player h_val
execute if score @s display_order matches 371 run data modify storage actionclock:player c5 set from storage actionclock:player f_val
execute if score @s display_order matches 371 run data modify storage actionclock:player c6 set from storage actionclock:player w_val
# 372: Kordy -> Dni -> Kierunek -> Pogoda -> Zegar -> Glowka
execute if score @s display_order matches 372 run data modify storage actionclock:player c1 set from storage actionclock:player x_val
execute if score @s display_order matches 372 run data modify storage actionclock:player c2 set from storage actionclock:player d_val
execute if score @s display_order matches 372 run data modify storage actionclock:player c3 set from storage actionclock:player f_val
execute if score @s display_order matches 372 run data modify storage actionclock:player c4 set from storage actionclock:player w_val
execute if score @s display_order matches 372 run data modify storage actionclock:player c5 set from storage actionclock:player c_val
execute if score @s display_order matches 372 run data modify storage actionclock:player c6 set from storage actionclock:player h_val
# 373: Kordy -> Dni -> Kierunek -> Pogoda -> Glowka -> Zegar
execute if score @s display_order matches 373 run data modify storage actionclock:player c1 set from storage actionclock:player x_val
execute if score @s display_order matches 373 run data modify storage actionclock:player c2 set from storage actionclock:player d_val
execute if score @s display_order matches 373 run data modify storage actionclock:player c3 set from storage actionclock:player f_val
execute if score @s display_order matches 373 run data modify storage actionclock:player c4 set from storage actionclock:player w_val
execute if score @s display_order matches 373 run data modify storage actionclock:player c5 set from storage actionclock:player h_val
execute if score @s display_order matches 373 run data modify storage actionclock:player c6 set from storage actionclock:player c_val
# 374: Kordy -> Dni -> Kierunek -> Zegar -> Pogoda -> Glowka
execute if score @s display_order matches 374 run data modify storage actionclock:player c1 set from storage actionclock:player x_val
execute if score @s display_order matches 374 run data modify storage actionclock:player c2 set from storage actionclock:player d_val
execute if score @s display_order matches 374 run data modify storage actionclock:player c3 set from storage actionclock:player f_val
execute if score @s display_order matches 374 run data modify storage actionclock:player c4 set from storage actionclock:player c_val
execute if score @s display_order matches 374 run data modify storage actionclock:player c5 set from storage actionclock:player w_val
execute if score @s display_order matches 374 run data modify storage actionclock:player c6 set from storage actionclock:player h_val
# 375: Kordy -> Dni -> Kierunek -> Zegar -> Glowka -> Pogoda
execute if score @s display_order matches 375 run data modify storage actionclock:player c1 set from storage actionclock:player x_val
execute if score @s display_order matches 375 run data modify storage actionclock:player c2 set from storage actionclock:player d_val
execute if score @s display_order matches 375 run data modify storage actionclock:player c3 set from storage actionclock:player f_val
execute if score @s display_order matches 375 run data modify storage actionclock:player c4 set from storage actionclock:player c_val
execute if score @s display_order matches 375 run data modify storage actionclock:player c5 set from storage actionclock:player h_val
execute if score @s display_order matches 375 run data modify storage actionclock:player c6 set from storage actionclock:player w_val
# 376: Kordy -> Dni -> Kierunek -> Glowka -> Pogoda -> Zegar
execute if score @s display_order matches 376 run data modify storage actionclock:player c1 set from storage actionclock:player x_val
execute if score @s display_order matches 376 run data modify storage actionclock:player c2 set from storage actionclock:player d_val
execute if score @s display_order matches 376 run data modify storage actionclock:player c3 set from storage actionclock:player f_val
execute if score @s display_order matches 376 run data modify storage actionclock:player c4 set from storage actionclock:player h_val
execute if score @s display_order matches 376 run data modify storage actionclock:player c5 set from storage actionclock:player w_val
execute if score @s display_order matches 376 run data modify storage actionclock:player c6 set from storage actionclock:player c_val
# 377: Kordy -> Dni -> Kierunek -> Glowka -> Zegar -> Pogoda
execute if score @s display_order matches 377 run data modify storage actionclock:player c1 set from storage actionclock:player x_val
execute if score @s display_order matches 377 run data modify storage actionclock:player c2 set from storage actionclock:player d_val
execute if score @s display_order matches 377 run data modify storage actionclock:player c3 set from storage actionclock:player f_val
execute if score @s display_order matches 377 run data modify storage actionclock:player c4 set from storage actionclock:player h_val
execute if score @s display_order matches 377 run data modify storage actionclock:player c5 set from storage actionclock:player c_val
execute if score @s display_order matches 377 run data modify storage actionclock:player c6 set from storage actionclock:player w_val
# 378: Kordy -> Dni -> Glowka -> Pogoda -> Zegar -> Kierunek
execute if score @s display_order matches 378 run data modify storage actionclock:player c1 set from storage actionclock:player x_val
execute if score @s display_order matches 378 run data modify storage actionclock:player c2 set from storage actionclock:player d_val
execute if score @s display_order matches 378 run data modify storage actionclock:player c3 set from storage actionclock:player h_val
execute if score @s display_order matches 378 run data modify storage actionclock:player c4 set from storage actionclock:player w_val
execute if score @s display_order matches 378 run data modify storage actionclock:player c5 set from storage actionclock:player c_val
execute if score @s display_order matches 378 run data modify storage actionclock:player c6 set from storage actionclock:player f_val
# 379: Kordy -> Dni -> Glowka -> Pogoda -> Kierunek -> Zegar
execute if score @s display_order matches 379 run data modify storage actionclock:player c1 set from storage actionclock:player x_val
execute if score @s display_order matches 379 run data modify storage actionclock:player c2 set from storage actionclock:player d_val
execute if score @s display_order matches 379 run data modify storage actionclock:player c3 set from storage actionclock:player h_val
execute if score @s display_order matches 379 run data modify storage actionclock:player c4 set from storage actionclock:player w_val
execute if score @s display_order matches 379 run data modify storage actionclock:player c5 set from storage actionclock:player f_val
execute if score @s display_order matches 379 run data modify storage actionclock:player c6 set from storage actionclock:player c_val
# 380: Kordy -> Dni -> Glowka -> Zegar -> Pogoda -> Kierunek
execute if score @s display_order matches 380 run data modify storage actionclock:player c1 set from storage actionclock:player x_val
execute if score @s display_order matches 380 run data modify storage actionclock:player c2 set from storage actionclock:player d_val
execute if score @s display_order matches 380 run data modify storage actionclock:player c3 set from storage actionclock:player h_val
execute if score @s display_order matches 380 run data modify storage actionclock:player c4 set from storage actionclock:player c_val
execute if score @s display_order matches 380 run data modify storage actionclock:player c5 set from storage actionclock:player w_val
execute if score @s display_order matches 380 run data modify storage actionclock:player c6 set from storage actionclock:player f_val
# 381: Kordy -> Dni -> Glowka -> Zegar -> Kierunek -> Pogoda
execute if score @s display_order matches 381 run data modify storage actionclock:player c1 set from storage actionclock:player x_val
execute if score @s display_order matches 381 run data modify storage actionclock:player c2 set from storage actionclock:player d_val
execute if score @s display_order matches 381 run data modify storage actionclock:player c3 set from storage actionclock:player h_val
execute if score @s display_order matches 381 run data modify storage actionclock:player c4 set from storage actionclock:player c_val
execute if score @s display_order matches 381 run data modify storage actionclock:player c5 set from storage actionclock:player f_val
execute if score @s display_order matches 381 run data modify storage actionclock:player c6 set from storage actionclock:player w_val
# 382: Kordy -> Dni -> Glowka -> Kierunek -> Pogoda -> Zegar
execute if score @s display_order matches 382 run data modify storage actionclock:player c1 set from storage actionclock:player x_val
execute if score @s display_order matches 382 run data modify storage actionclock:player c2 set from storage actionclock:player d_val
execute if score @s display_order matches 382 run data modify storage actionclock:player c3 set from storage actionclock:player h_val
execute if score @s display_order matches 382 run data modify storage actionclock:player c4 set from storage actionclock:player f_val
execute if score @s display_order matches 382 run data modify storage actionclock:player c5 set from storage actionclock:player w_val
execute if score @s display_order matches 382 run data modify storage actionclock:player c6 set from storage actionclock:player c_val
# 383: Kordy -> Dni -> Glowka -> Kierunek -> Zegar -> Pogoda
execute if score @s display_order matches 383 run data modify storage actionclock:player c1 set from storage actionclock:player x_val
execute if score @s display_order matches 383 run data modify storage actionclock:player c2 set from storage actionclock:player d_val
execute if score @s display_order matches 383 run data modify storage actionclock:player c3 set from storage actionclock:player h_val
execute if score @s display_order matches 383 run data modify storage actionclock:player c4 set from storage actionclock:player f_val
execute if score @s display_order matches 383 run data modify storage actionclock:player c5 set from storage actionclock:player c_val
execute if score @s display_order matches 383 run data modify storage actionclock:player c6 set from storage actionclock:player w_val
# 384: Kordy -> Pogoda -> Dni -> Zegar -> Kierunek -> Glowka
execute if score @s display_order matches 384 run data modify storage actionclock:player c1 set from storage actionclock:player x_val
execute if score @s display_order matches 384 run data modify storage actionclock:player c2 set from storage actionclock:player w_val
execute if score @s display_order matches 384 run data modify storage actionclock:player c3 set from storage actionclock:player d_val
execute if score @s display_order matches 384 run data modify storage actionclock:player c4 set from storage actionclock:player c_val
execute if score @s display_order matches 384 run data modify storage actionclock:player c5 set from storage actionclock:player f_val
execute if score @s display_order matches 384 run data modify storage actionclock:player c6 set from storage actionclock:player h_val
# 385: Kordy -> Pogoda -> Dni -> Zegar -> Glowka -> Kierunek
execute if score @s display_order matches 385 run data modify storage actionclock:player c1 set from storage actionclock:player x_val
execute if score @s display_order matches 385 run data modify storage actionclock:player c2 set from storage actionclock:player w_val
execute if score @s display_order matches 385 run data modify storage actionclock:player c3 set from storage actionclock:player d_val
execute if score @s display_order matches 385 run data modify storage actionclock:player c4 set from storage actionclock:player c_val
execute if score @s display_order matches 385 run data modify storage actionclock:player c5 set from storage actionclock:player h_val
execute if score @s display_order matches 385 run data modify storage actionclock:player c6 set from storage actionclock:player f_val
# 386: Kordy -> Pogoda -> Dni -> Kierunek -> Zegar -> Glowka
execute if score @s display_order matches 386 run data modify storage actionclock:player c1 set from storage actionclock:player x_val
execute if score @s display_order matches 386 run data modify storage actionclock:player c2 set from storage actionclock:player w_val
execute if score @s display_order matches 386 run data modify storage actionclock:player c3 set from storage actionclock:player d_val
execute if score @s display_order matches 386 run data modify storage actionclock:player c4 set from storage actionclock:player f_val
execute if score @s display_order matches 386 run data modify storage actionclock:player c5 set from storage actionclock:player c_val
execute if score @s display_order matches 386 run data modify storage actionclock:player c6 set from storage actionclock:player h_val
# 387: Kordy -> Pogoda -> Dni -> Kierunek -> Glowka -> Zegar
execute if score @s display_order matches 387 run data modify storage actionclock:player c1 set from storage actionclock:player x_val
execute if score @s display_order matches 387 run data modify storage actionclock:player c2 set from storage actionclock:player w_val
execute if score @s display_order matches 387 run data modify storage actionclock:player c3 set from storage actionclock:player d_val
execute if score @s display_order matches 387 run data modify storage actionclock:player c4 set from storage actionclock:player f_val
execute if score @s display_order matches 387 run data modify storage actionclock:player c5 set from storage actionclock:player h_val
execute if score @s display_order matches 387 run data modify storage actionclock:player c6 set from storage actionclock:player c_val
# 388: Kordy -> Pogoda -> Dni -> Glowka -> Zegar -> Kierunek
execute if score @s display_order matches 388 run data modify storage actionclock:player c1 set from storage actionclock:player x_val
execute if score @s display_order matches 388 run data modify storage actionclock:player c2 set from storage actionclock:player w_val
execute if score @s display_order matches 388 run data modify storage actionclock:player c3 set from storage actionclock:player d_val
execute if score @s display_order matches 388 run data modify storage actionclock:player c4 set from storage actionclock:player h_val
execute if score @s display_order matches 388 run data modify storage actionclock:player c5 set from storage actionclock:player c_val
execute if score @s display_order matches 388 run data modify storage actionclock:player c6 set from storage actionclock:player f_val
# 389: Kordy -> Pogoda -> Dni -> Glowka -> Kierunek -> Zegar
execute if score @s display_order matches 389 run data modify storage actionclock:player c1 set from storage actionclock:player x_val
execute if score @s display_order matches 389 run data modify storage actionclock:player c2 set from storage actionclock:player w_val
execute if score @s display_order matches 389 run data modify storage actionclock:player c3 set from storage actionclock:player d_val
execute if score @s display_order matches 389 run data modify storage actionclock:player c4 set from storage actionclock:player h_val
execute if score @s display_order matches 389 run data modify storage actionclock:player c5 set from storage actionclock:player f_val
execute if score @s display_order matches 389 run data modify storage actionclock:player c6 set from storage actionclock:player c_val
# 390: Kordy -> Pogoda -> Zegar -> Dni -> Kierunek -> Glowka
execute if score @s display_order matches 390 run data modify storage actionclock:player c1 set from storage actionclock:player x_val
execute if score @s display_order matches 390 run data modify storage actionclock:player c2 set from storage actionclock:player w_val
execute if score @s display_order matches 390 run data modify storage actionclock:player c3 set from storage actionclock:player c_val
execute if score @s display_order matches 390 run data modify storage actionclock:player c4 set from storage actionclock:player d_val
execute if score @s display_order matches 390 run data modify storage actionclock:player c5 set from storage actionclock:player f_val
execute if score @s display_order matches 390 run data modify storage actionclock:player c6 set from storage actionclock:player h_val
# 391: Kordy -> Pogoda -> Zegar -> Dni -> Glowka -> Kierunek
execute if score @s display_order matches 391 run data modify storage actionclock:player c1 set from storage actionclock:player x_val
execute if score @s display_order matches 391 run data modify storage actionclock:player c2 set from storage actionclock:player w_val
execute if score @s display_order matches 391 run data modify storage actionclock:player c3 set from storage actionclock:player c_val
execute if score @s display_order matches 391 run data modify storage actionclock:player c4 set from storage actionclock:player d_val
execute if score @s display_order matches 391 run data modify storage actionclock:player c5 set from storage actionclock:player h_val
execute if score @s display_order matches 391 run data modify storage actionclock:player c6 set from storage actionclock:player f_val
# 392: Kordy -> Pogoda -> Zegar -> Kierunek -> Dni -> Glowka
execute if score @s display_order matches 392 run data modify storage actionclock:player c1 set from storage actionclock:player x_val
execute if score @s display_order matches 392 run data modify storage actionclock:player c2 set from storage actionclock:player w_val
execute if score @s display_order matches 392 run data modify storage actionclock:player c3 set from storage actionclock:player c_val
execute if score @s display_order matches 392 run data modify storage actionclock:player c4 set from storage actionclock:player f_val
execute if score @s display_order matches 392 run data modify storage actionclock:player c5 set from storage actionclock:player d_val
execute if score @s display_order matches 392 run data modify storage actionclock:player c6 set from storage actionclock:player h_val
# 393: Kordy -> Pogoda -> Zegar -> Kierunek -> Glowka -> Dni
execute if score @s display_order matches 393 run data modify storage actionclock:player c1 set from storage actionclock:player x_val
execute if score @s display_order matches 393 run data modify storage actionclock:player c2 set from storage actionclock:player w_val
execute if score @s display_order matches 393 run data modify storage actionclock:player c3 set from storage actionclock:player c_val
execute if score @s display_order matches 393 run data modify storage actionclock:player c4 set from storage actionclock:player f_val
execute if score @s display_order matches 393 run data modify storage actionclock:player c5 set from storage actionclock:player h_val
execute if score @s display_order matches 393 run data modify storage actionclock:player c6 set from storage actionclock:player d_val
# 394: Kordy -> Pogoda -> Zegar -> Glowka -> Dni -> Kierunek
execute if score @s display_order matches 394 run data modify storage actionclock:player c1 set from storage actionclock:player x_val
execute if score @s display_order matches 394 run data modify storage actionclock:player c2 set from storage actionclock:player w_val
execute if score @s display_order matches 394 run data modify storage actionclock:player c3 set from storage actionclock:player c_val
execute if score @s display_order matches 394 run data modify storage actionclock:player c4 set from storage actionclock:player h_val
execute if score @s display_order matches 394 run data modify storage actionclock:player c5 set from storage actionclock:player d_val
execute if score @s display_order matches 394 run data modify storage actionclock:player c6 set from storage actionclock:player f_val
# 395: Kordy -> Pogoda -> Zegar -> Glowka -> Kierunek -> Dni
execute if score @s display_order matches 395 run data modify storage actionclock:player c1 set from storage actionclock:player x_val
execute if score @s display_order matches 395 run data modify storage actionclock:player c2 set from storage actionclock:player w_val
execute if score @s display_order matches 395 run data modify storage actionclock:player c3 set from storage actionclock:player c_val
execute if score @s display_order matches 395 run data modify storage actionclock:player c4 set from storage actionclock:player h_val
execute if score @s display_order matches 395 run data modify storage actionclock:player c5 set from storage actionclock:player f_val
execute if score @s display_order matches 395 run data modify storage actionclock:player c6 set from storage actionclock:player d_val
# 396: Kordy -> Pogoda -> Kierunek -> Dni -> Zegar -> Glowka
execute if score @s display_order matches 396 run data modify storage actionclock:player c1 set from storage actionclock:player x_val
execute if score @s display_order matches 396 run data modify storage actionclock:player c2 set from storage actionclock:player w_val
execute if score @s display_order matches 396 run data modify storage actionclock:player c3 set from storage actionclock:player f_val
execute if score @s display_order matches 396 run data modify storage actionclock:player c4 set from storage actionclock:player d_val
execute if score @s display_order matches 396 run data modify storage actionclock:player c5 set from storage actionclock:player c_val
execute if score @s display_order matches 396 run data modify storage actionclock:player c6 set from storage actionclock:player h_val
# 397: Kordy -> Pogoda -> Kierunek -> Dni -> Glowka -> Zegar
execute if score @s display_order matches 397 run data modify storage actionclock:player c1 set from storage actionclock:player x_val
execute if score @s display_order matches 397 run data modify storage actionclock:player c2 set from storage actionclock:player w_val
execute if score @s display_order matches 397 run data modify storage actionclock:player c3 set from storage actionclock:player f_val
execute if score @s display_order matches 397 run data modify storage actionclock:player c4 set from storage actionclock:player d_val
execute if score @s display_order matches 397 run data modify storage actionclock:player c5 set from storage actionclock:player h_val
execute if score @s display_order matches 397 run data modify storage actionclock:player c6 set from storage actionclock:player c_val
# 398: Kordy -> Pogoda -> Kierunek -> Zegar -> Dni -> Glowka
execute if score @s display_order matches 398 run data modify storage actionclock:player c1 set from storage actionclock:player x_val
execute if score @s display_order matches 398 run data modify storage actionclock:player c2 set from storage actionclock:player w_val
execute if score @s display_order matches 398 run data modify storage actionclock:player c3 set from storage actionclock:player f_val
execute if score @s display_order matches 398 run data modify storage actionclock:player c4 set from storage actionclock:player c_val
execute if score @s display_order matches 398 run data modify storage actionclock:player c5 set from storage actionclock:player d_val
execute if score @s display_order matches 398 run data modify storage actionclock:player c6 set from storage actionclock:player h_val
# 399: Kordy -> Pogoda -> Kierunek -> Zegar -> Glowka -> Dni
execute if score @s display_order matches 399 run data modify storage actionclock:player c1 set from storage actionclock:player x_val
execute if score @s display_order matches 399 run data modify storage actionclock:player c2 set from storage actionclock:player w_val
execute if score @s display_order matches 399 run data modify storage actionclock:player c3 set from storage actionclock:player f_val
execute if score @s display_order matches 399 run data modify storage actionclock:player c4 set from storage actionclock:player c_val
execute if score @s display_order matches 399 run data modify storage actionclock:player c5 set from storage actionclock:player h_val
execute if score @s display_order matches 399 run data modify storage actionclock:player c6 set from storage actionclock:player d_val
# 400: Kordy -> Pogoda -> Kierunek -> Glowka -> Dni -> Zegar
execute if score @s display_order matches 400 run data modify storage actionclock:player c1 set from storage actionclock:player x_val
execute if score @s display_order matches 400 run data modify storage actionclock:player c2 set from storage actionclock:player w_val
execute if score @s display_order matches 400 run data modify storage actionclock:player c3 set from storage actionclock:player f_val
execute if score @s display_order matches 400 run data modify storage actionclock:player c4 set from storage actionclock:player h_val
execute if score @s display_order matches 400 run data modify storage actionclock:player c5 set from storage actionclock:player d_val
execute if score @s display_order matches 400 run data modify storage actionclock:player c6 set from storage actionclock:player c_val
# 401: Kordy -> Pogoda -> Kierunek -> Glowka -> Zegar -> Dni
execute if score @s display_order matches 401 run data modify storage actionclock:player c1 set from storage actionclock:player x_val
execute if score @s display_order matches 401 run data modify storage actionclock:player c2 set from storage actionclock:player w_val
execute if score @s display_order matches 401 run data modify storage actionclock:player c3 set from storage actionclock:player f_val
execute if score @s display_order matches 401 run data modify storage actionclock:player c4 set from storage actionclock:player h_val
execute if score @s display_order matches 401 run data modify storage actionclock:player c5 set from storage actionclock:player c_val
execute if score @s display_order matches 401 run data modify storage actionclock:player c6 set from storage actionclock:player d_val
# 402: Kordy -> Pogoda -> Glowka -> Dni -> Zegar -> Kierunek
execute if score @s display_order matches 402 run data modify storage actionclock:player c1 set from storage actionclock:player x_val
execute if score @s display_order matches 402 run data modify storage actionclock:player c2 set from storage actionclock:player w_val
execute if score @s display_order matches 402 run data modify storage actionclock:player c3 set from storage actionclock:player h_val
execute if score @s display_order matches 402 run data modify storage actionclock:player c4 set from storage actionclock:player d_val
execute if score @s display_order matches 402 run data modify storage actionclock:player c5 set from storage actionclock:player c_val
execute if score @s display_order matches 402 run data modify storage actionclock:player c6 set from storage actionclock:player f_val
# 403: Kordy -> Pogoda -> Glowka -> Dni -> Kierunek -> Zegar
execute if score @s display_order matches 403 run data modify storage actionclock:player c1 set from storage actionclock:player x_val
execute if score @s display_order matches 403 run data modify storage actionclock:player c2 set from storage actionclock:player w_val
execute if score @s display_order matches 403 run data modify storage actionclock:player c3 set from storage actionclock:player h_val
execute if score @s display_order matches 403 run data modify storage actionclock:player c4 set from storage actionclock:player d_val
execute if score @s display_order matches 403 run data modify storage actionclock:player c5 set from storage actionclock:player f_val
execute if score @s display_order matches 403 run data modify storage actionclock:player c6 set from storage actionclock:player c_val
# 404: Kordy -> Pogoda -> Glowka -> Zegar -> Dni -> Kierunek
execute if score @s display_order matches 404 run data modify storage actionclock:player c1 set from storage actionclock:player x_val
execute if score @s display_order matches 404 run data modify storage actionclock:player c2 set from storage actionclock:player w_val
execute if score @s display_order matches 404 run data modify storage actionclock:player c3 set from storage actionclock:player h_val
execute if score @s display_order matches 404 run data modify storage actionclock:player c4 set from storage actionclock:player c_val
execute if score @s display_order matches 404 run data modify storage actionclock:player c5 set from storage actionclock:player d_val
execute if score @s display_order matches 404 run data modify storage actionclock:player c6 set from storage actionclock:player f_val
# 405: Kordy -> Pogoda -> Glowka -> Zegar -> Kierunek -> Dni
execute if score @s display_order matches 405 run data modify storage actionclock:player c1 set from storage actionclock:player x_val
execute if score @s display_order matches 405 run data modify storage actionclock:player c2 set from storage actionclock:player w_val
execute if score @s display_order matches 405 run data modify storage actionclock:player c3 set from storage actionclock:player h_val
execute if score @s display_order matches 405 run data modify storage actionclock:player c4 set from storage actionclock:player c_val
execute if score @s display_order matches 405 run data modify storage actionclock:player c5 set from storage actionclock:player f_val
execute if score @s display_order matches 405 run data modify storage actionclock:player c6 set from storage actionclock:player d_val
# 406: Kordy -> Pogoda -> Glowka -> Kierunek -> Dni -> Zegar
execute if score @s display_order matches 406 run data modify storage actionclock:player c1 set from storage actionclock:player x_val
execute if score @s display_order matches 406 run data modify storage actionclock:player c2 set from storage actionclock:player w_val
execute if score @s display_order matches 406 run data modify storage actionclock:player c3 set from storage actionclock:player h_val
execute if score @s display_order matches 406 run data modify storage actionclock:player c4 set from storage actionclock:player f_val
execute if score @s display_order matches 406 run data modify storage actionclock:player c5 set from storage actionclock:player d_val
execute if score @s display_order matches 406 run data modify storage actionclock:player c6 set from storage actionclock:player c_val
# 407: Kordy -> Pogoda -> Glowka -> Kierunek -> Zegar -> Dni
execute if score @s display_order matches 407 run data modify storage actionclock:player c1 set from storage actionclock:player x_val
execute if score @s display_order matches 407 run data modify storage actionclock:player c2 set from storage actionclock:player w_val
execute if score @s display_order matches 407 run data modify storage actionclock:player c3 set from storage actionclock:player h_val
execute if score @s display_order matches 407 run data modify storage actionclock:player c4 set from storage actionclock:player f_val
execute if score @s display_order matches 407 run data modify storage actionclock:player c5 set from storage actionclock:player c_val
execute if score @s display_order matches 407 run data modify storage actionclock:player c6 set from storage actionclock:player d_val
# 408: Kordy -> Zegar -> Dni -> Pogoda -> Kierunek -> Glowka
execute if score @s display_order matches 408 run data modify storage actionclock:player c1 set from storage actionclock:player x_val
execute if score @s display_order matches 408 run data modify storage actionclock:player c2 set from storage actionclock:player c_val
execute if score @s display_order matches 408 run data modify storage actionclock:player c3 set from storage actionclock:player d_val
execute if score @s display_order matches 408 run data modify storage actionclock:player c4 set from storage actionclock:player w_val
execute if score @s display_order matches 408 run data modify storage actionclock:player c5 set from storage actionclock:player f_val
execute if score @s display_order matches 408 run data modify storage actionclock:player c6 set from storage actionclock:player h_val
# 409: Kordy -> Zegar -> Dni -> Pogoda -> Glowka -> Kierunek
execute if score @s display_order matches 409 run data modify storage actionclock:player c1 set from storage actionclock:player x_val
execute if score @s display_order matches 409 run data modify storage actionclock:player c2 set from storage actionclock:player c_val
execute if score @s display_order matches 409 run data modify storage actionclock:player c3 set from storage actionclock:player d_val
execute if score @s display_order matches 409 run data modify storage actionclock:player c4 set from storage actionclock:player w_val
execute if score @s display_order matches 409 run data modify storage actionclock:player c5 set from storage actionclock:player h_val
execute if score @s display_order matches 409 run data modify storage actionclock:player c6 set from storage actionclock:player f_val
# 410: Kordy -> Zegar -> Dni -> Kierunek -> Pogoda -> Glowka
execute if score @s display_order matches 410 run data modify storage actionclock:player c1 set from storage actionclock:player x_val
execute if score @s display_order matches 410 run data modify storage actionclock:player c2 set from storage actionclock:player c_val
execute if score @s display_order matches 410 run data modify storage actionclock:player c3 set from storage actionclock:player d_val
execute if score @s display_order matches 410 run data modify storage actionclock:player c4 set from storage actionclock:player f_val
execute if score @s display_order matches 410 run data modify storage actionclock:player c5 set from storage actionclock:player w_val
execute if score @s display_order matches 410 run data modify storage actionclock:player c6 set from storage actionclock:player h_val
# 411: Kordy -> Zegar -> Dni -> Kierunek -> Glowka -> Pogoda
execute if score @s display_order matches 411 run data modify storage actionclock:player c1 set from storage actionclock:player x_val
execute if score @s display_order matches 411 run data modify storage actionclock:player c2 set from storage actionclock:player c_val
execute if score @s display_order matches 411 run data modify storage actionclock:player c3 set from storage actionclock:player d_val
execute if score @s display_order matches 411 run data modify storage actionclock:player c4 set from storage actionclock:player f_val
execute if score @s display_order matches 411 run data modify storage actionclock:player c5 set from storage actionclock:player h_val
execute if score @s display_order matches 411 run data modify storage actionclock:player c6 set from storage actionclock:player w_val
# 412: Kordy -> Zegar -> Dni -> Glowka -> Pogoda -> Kierunek
execute if score @s display_order matches 412 run data modify storage actionclock:player c1 set from storage actionclock:player x_val
execute if score @s display_order matches 412 run data modify storage actionclock:player c2 set from storage actionclock:player c_val
execute if score @s display_order matches 412 run data modify storage actionclock:player c3 set from storage actionclock:player d_val
execute if score @s display_order matches 412 run data modify storage actionclock:player c4 set from storage actionclock:player h_val
execute if score @s display_order matches 412 run data modify storage actionclock:player c5 set from storage actionclock:player w_val
execute if score @s display_order matches 412 run data modify storage actionclock:player c6 set from storage actionclock:player f_val
# 413: Kordy -> Zegar -> Dni -> Glowka -> Kierunek -> Pogoda
execute if score @s display_order matches 413 run data modify storage actionclock:player c1 set from storage actionclock:player x_val
execute if score @s display_order matches 413 run data modify storage actionclock:player c2 set from storage actionclock:player c_val
execute if score @s display_order matches 413 run data modify storage actionclock:player c3 set from storage actionclock:player d_val
execute if score @s display_order matches 413 run data modify storage actionclock:player c4 set from storage actionclock:player h_val
execute if score @s display_order matches 413 run data modify storage actionclock:player c5 set from storage actionclock:player f_val
execute if score @s display_order matches 413 run data modify storage actionclock:player c6 set from storage actionclock:player w_val
# 414: Kordy -> Zegar -> Pogoda -> Dni -> Kierunek -> Glowka
execute if score @s display_order matches 414 run data modify storage actionclock:player c1 set from storage actionclock:player x_val
execute if score @s display_order matches 414 run data modify storage actionclock:player c2 set from storage actionclock:player c_val
execute if score @s display_order matches 414 run data modify storage actionclock:player c3 set from storage actionclock:player w_val
execute if score @s display_order matches 414 run data modify storage actionclock:player c4 set from storage actionclock:player d_val
execute if score @s display_order matches 414 run data modify storage actionclock:player c5 set from storage actionclock:player f_val
execute if score @s display_order matches 414 run data modify storage actionclock:player c6 set from storage actionclock:player h_val
# 415: Kordy -> Zegar -> Pogoda -> Dni -> Glowka -> Kierunek
execute if score @s display_order matches 415 run data modify storage actionclock:player c1 set from storage actionclock:player x_val
execute if score @s display_order matches 415 run data modify storage actionclock:player c2 set from storage actionclock:player c_val
execute if score @s display_order matches 415 run data modify storage actionclock:player c3 set from storage actionclock:player w_val
execute if score @s display_order matches 415 run data modify storage actionclock:player c4 set from storage actionclock:player d_val
execute if score @s display_order matches 415 run data modify storage actionclock:player c5 set from storage actionclock:player h_val
execute if score @s display_order matches 415 run data modify storage actionclock:player c6 set from storage actionclock:player f_val
# 416: Kordy -> Zegar -> Pogoda -> Kierunek -> Dni -> Glowka
execute if score @s display_order matches 416 run data modify storage actionclock:player c1 set from storage actionclock:player x_val
execute if score @s display_order matches 416 run data modify storage actionclock:player c2 set from storage actionclock:player c_val
execute if score @s display_order matches 416 run data modify storage actionclock:player c3 set from storage actionclock:player w_val
execute if score @s display_order matches 416 run data modify storage actionclock:player c4 set from storage actionclock:player f_val
execute if score @s display_order matches 416 run data modify storage actionclock:player c5 set from storage actionclock:player d_val
execute if score @s display_order matches 416 run data modify storage actionclock:player c6 set from storage actionclock:player h_val
# 417: Kordy -> Zegar -> Pogoda -> Kierunek -> Glowka -> Dni
execute if score @s display_order matches 417 run data modify storage actionclock:player c1 set from storage actionclock:player x_val
execute if score @s display_order matches 417 run data modify storage actionclock:player c2 set from storage actionclock:player c_val
execute if score @s display_order matches 417 run data modify storage actionclock:player c3 set from storage actionclock:player w_val
execute if score @s display_order matches 417 run data modify storage actionclock:player c4 set from storage actionclock:player f_val
execute if score @s display_order matches 417 run data modify storage actionclock:player c5 set from storage actionclock:player h_val
execute if score @s display_order matches 417 run data modify storage actionclock:player c6 set from storage actionclock:player d_val
# 418: Kordy -> Zegar -> Pogoda -> Glowka -> Dni -> Kierunek
execute if score @s display_order matches 418 run data modify storage actionclock:player c1 set from storage actionclock:player x_val
execute if score @s display_order matches 418 run data modify storage actionclock:player c2 set from storage actionclock:player c_val
execute if score @s display_order matches 418 run data modify storage actionclock:player c3 set from storage actionclock:player w_val
execute if score @s display_order matches 418 run data modify storage actionclock:player c4 set from storage actionclock:player h_val
execute if score @s display_order matches 418 run data modify storage actionclock:player c5 set from storage actionclock:player d_val
execute if score @s display_order matches 418 run data modify storage actionclock:player c6 set from storage actionclock:player f_val
# 419: Kordy -> Zegar -> Pogoda -> Glowka -> Kierunek -> Dni
execute if score @s display_order matches 419 run data modify storage actionclock:player c1 set from storage actionclock:player x_val
execute if score @s display_order matches 419 run data modify storage actionclock:player c2 set from storage actionclock:player c_val
execute if score @s display_order matches 419 run data modify storage actionclock:player c3 set from storage actionclock:player w_val
execute if score @s display_order matches 419 run data modify storage actionclock:player c4 set from storage actionclock:player h_val
execute if score @s display_order matches 419 run data modify storage actionclock:player c5 set from storage actionclock:player f_val
execute if score @s display_order matches 419 run data modify storage actionclock:player c6 set from storage actionclock:player d_val
# 420: Kordy -> Zegar -> Kierunek -> Dni -> Pogoda -> Glowka
execute if score @s display_order matches 420 run data modify storage actionclock:player c1 set from storage actionclock:player x_val
execute if score @s display_order matches 420 run data modify storage actionclock:player c2 set from storage actionclock:player c_val
execute if score @s display_order matches 420 run data modify storage actionclock:player c3 set from storage actionclock:player f_val
execute if score @s display_order matches 420 run data modify storage actionclock:player c4 set from storage actionclock:player d_val
execute if score @s display_order matches 420 run data modify storage actionclock:player c5 set from storage actionclock:player w_val
execute if score @s display_order matches 420 run data modify storage actionclock:player c6 set from storage actionclock:player h_val
# 421: Kordy -> Zegar -> Kierunek -> Dni -> Glowka -> Pogoda
execute if score @s display_order matches 421 run data modify storage actionclock:player c1 set from storage actionclock:player x_val
execute if score @s display_order matches 421 run data modify storage actionclock:player c2 set from storage actionclock:player c_val
execute if score @s display_order matches 421 run data modify storage actionclock:player c3 set from storage actionclock:player f_val
execute if score @s display_order matches 421 run data modify storage actionclock:player c4 set from storage actionclock:player d_val
execute if score @s display_order matches 421 run data modify storage actionclock:player c5 set from storage actionclock:player h_val
execute if score @s display_order matches 421 run data modify storage actionclock:player c6 set from storage actionclock:player w_val
# 422: Kordy -> Zegar -> Kierunek -> Pogoda -> Dni -> Glowka
execute if score @s display_order matches 422 run data modify storage actionclock:player c1 set from storage actionclock:player x_val
execute if score @s display_order matches 422 run data modify storage actionclock:player c2 set from storage actionclock:player c_val
execute if score @s display_order matches 422 run data modify storage actionclock:player c3 set from storage actionclock:player f_val
execute if score @s display_order matches 422 run data modify storage actionclock:player c4 set from storage actionclock:player w_val
execute if score @s display_order matches 422 run data modify storage actionclock:player c5 set from storage actionclock:player d_val
execute if score @s display_order matches 422 run data modify storage actionclock:player c6 set from storage actionclock:player h_val
# 423: Kordy -> Zegar -> Kierunek -> Pogoda -> Glowka -> Dni
execute if score @s display_order matches 423 run data modify storage actionclock:player c1 set from storage actionclock:player x_val
execute if score @s display_order matches 423 run data modify storage actionclock:player c2 set from storage actionclock:player c_val
execute if score @s display_order matches 423 run data modify storage actionclock:player c3 set from storage actionclock:player f_val
execute if score @s display_order matches 423 run data modify storage actionclock:player c4 set from storage actionclock:player w_val
execute if score @s display_order matches 423 run data modify storage actionclock:player c5 set from storage actionclock:player h_val
execute if score @s display_order matches 423 run data modify storage actionclock:player c6 set from storage actionclock:player d_val
# 424: Kordy -> Zegar -> Kierunek -> Glowka -> Dni -> Pogoda
execute if score @s display_order matches 424 run data modify storage actionclock:player c1 set from storage actionclock:player x_val
execute if score @s display_order matches 424 run data modify storage actionclock:player c2 set from storage actionclock:player c_val
execute if score @s display_order matches 424 run data modify storage actionclock:player c3 set from storage actionclock:player f_val
execute if score @s display_order matches 424 run data modify storage actionclock:player c4 set from storage actionclock:player h_val
execute if score @s display_order matches 424 run data modify storage actionclock:player c5 set from storage actionclock:player d_val
execute if score @s display_order matches 424 run data modify storage actionclock:player c6 set from storage actionclock:player w_val
# 425: Kordy -> Zegar -> Kierunek -> Glowka -> Pogoda -> Dni
execute if score @s display_order matches 425 run data modify storage actionclock:player c1 set from storage actionclock:player x_val
execute if score @s display_order matches 425 run data modify storage actionclock:player c2 set from storage actionclock:player c_val
execute if score @s display_order matches 425 run data modify storage actionclock:player c3 set from storage actionclock:player f_val
execute if score @s display_order matches 425 run data modify storage actionclock:player c4 set from storage actionclock:player h_val
execute if score @s display_order matches 425 run data modify storage actionclock:player c5 set from storage actionclock:player w_val
execute if score @s display_order matches 425 run data modify storage actionclock:player c6 set from storage actionclock:player d_val
# 426: Kordy -> Zegar -> Glowka -> Dni -> Pogoda -> Kierunek
execute if score @s display_order matches 426 run data modify storage actionclock:player c1 set from storage actionclock:player x_val
execute if score @s display_order matches 426 run data modify storage actionclock:player c2 set from storage actionclock:player c_val
execute if score @s display_order matches 426 run data modify storage actionclock:player c3 set from storage actionclock:player h_val
execute if score @s display_order matches 426 run data modify storage actionclock:player c4 set from storage actionclock:player d_val
execute if score @s display_order matches 426 run data modify storage actionclock:player c5 set from storage actionclock:player w_val
execute if score @s display_order matches 426 run data modify storage actionclock:player c6 set from storage actionclock:player f_val
# 427: Kordy -> Zegar -> Glowka -> Dni -> Kierunek -> Pogoda
execute if score @s display_order matches 427 run data modify storage actionclock:player c1 set from storage actionclock:player x_val
execute if score @s display_order matches 427 run data modify storage actionclock:player c2 set from storage actionclock:player c_val
execute if score @s display_order matches 427 run data modify storage actionclock:player c3 set from storage actionclock:player h_val
execute if score @s display_order matches 427 run data modify storage actionclock:player c4 set from storage actionclock:player d_val
execute if score @s display_order matches 427 run data modify storage actionclock:player c5 set from storage actionclock:player f_val
execute if score @s display_order matches 427 run data modify storage actionclock:player c6 set from storage actionclock:player w_val
# 428: Kordy -> Zegar -> Glowka -> Pogoda -> Dni -> Kierunek
execute if score @s display_order matches 428 run data modify storage actionclock:player c1 set from storage actionclock:player x_val
execute if score @s display_order matches 428 run data modify storage actionclock:player c2 set from storage actionclock:player c_val
execute if score @s display_order matches 428 run data modify storage actionclock:player c3 set from storage actionclock:player h_val
execute if score @s display_order matches 428 run data modify storage actionclock:player c4 set from storage actionclock:player w_val
execute if score @s display_order matches 428 run data modify storage actionclock:player c5 set from storage actionclock:player d_val
execute if score @s display_order matches 428 run data modify storage actionclock:player c6 set from storage actionclock:player f_val
# 429: Kordy -> Zegar -> Glowka -> Pogoda -> Kierunek -> Dni
execute if score @s display_order matches 429 run data modify storage actionclock:player c1 set from storage actionclock:player x_val
execute if score @s display_order matches 429 run data modify storage actionclock:player c2 set from storage actionclock:player c_val
execute if score @s display_order matches 429 run data modify storage actionclock:player c3 set from storage actionclock:player h_val
execute if score @s display_order matches 429 run data modify storage actionclock:player c4 set from storage actionclock:player w_val
execute if score @s display_order matches 429 run data modify storage actionclock:player c5 set from storage actionclock:player f_val
execute if score @s display_order matches 429 run data modify storage actionclock:player c6 set from storage actionclock:player d_val
# 430: Kordy -> Zegar -> Glowka -> Kierunek -> Dni -> Pogoda
execute if score @s display_order matches 430 run data modify storage actionclock:player c1 set from storage actionclock:player x_val
execute if score @s display_order matches 430 run data modify storage actionclock:player c2 set from storage actionclock:player c_val
execute if score @s display_order matches 430 run data modify storage actionclock:player c3 set from storage actionclock:player h_val
execute if score @s display_order matches 430 run data modify storage actionclock:player c4 set from storage actionclock:player f_val
execute if score @s display_order matches 430 run data modify storage actionclock:player c5 set from storage actionclock:player d_val
execute if score @s display_order matches 430 run data modify storage actionclock:player c6 set from storage actionclock:player w_val
# 431: Kordy -> Zegar -> Glowka -> Kierunek -> Pogoda -> Dni
execute if score @s display_order matches 431 run data modify storage actionclock:player c1 set from storage actionclock:player x_val
execute if score @s display_order matches 431 run data modify storage actionclock:player c2 set from storage actionclock:player c_val
execute if score @s display_order matches 431 run data modify storage actionclock:player c3 set from storage actionclock:player h_val
execute if score @s display_order matches 431 run data modify storage actionclock:player c4 set from storage actionclock:player f_val
execute if score @s display_order matches 431 run data modify storage actionclock:player c5 set from storage actionclock:player w_val
execute if score @s display_order matches 431 run data modify storage actionclock:player c6 set from storage actionclock:player d_val
# 432: Kordy -> Kierunek -> Dni -> Pogoda -> Zegar -> Glowka
execute if score @s display_order matches 432 run data modify storage actionclock:player c1 set from storage actionclock:player x_val
execute if score @s display_order matches 432 run data modify storage actionclock:player c2 set from storage actionclock:player f_val
execute if score @s display_order matches 432 run data modify storage actionclock:player c3 set from storage actionclock:player d_val
execute if score @s display_order matches 432 run data modify storage actionclock:player c4 set from storage actionclock:player w_val
execute if score @s display_order matches 432 run data modify storage actionclock:player c5 set from storage actionclock:player c_val
execute if score @s display_order matches 432 run data modify storage actionclock:player c6 set from storage actionclock:player h_val
# 433: Kordy -> Kierunek -> Dni -> Pogoda -> Glowka -> Zegar
execute if score @s display_order matches 433 run data modify storage actionclock:player c1 set from storage actionclock:player x_val
execute if score @s display_order matches 433 run data modify storage actionclock:player c2 set from storage actionclock:player f_val
execute if score @s display_order matches 433 run data modify storage actionclock:player c3 set from storage actionclock:player d_val
execute if score @s display_order matches 433 run data modify storage actionclock:player c4 set from storage actionclock:player w_val
execute if score @s display_order matches 433 run data modify storage actionclock:player c5 set from storage actionclock:player h_val
execute if score @s display_order matches 433 run data modify storage actionclock:player c6 set from storage actionclock:player c_val
# 434: Kordy -> Kierunek -> Dni -> Zegar -> Pogoda -> Glowka
execute if score @s display_order matches 434 run data modify storage actionclock:player c1 set from storage actionclock:player x_val
execute if score @s display_order matches 434 run data modify storage actionclock:player c2 set from storage actionclock:player f_val
execute if score @s display_order matches 434 run data modify storage actionclock:player c3 set from storage actionclock:player d_val
execute if score @s display_order matches 434 run data modify storage actionclock:player c4 set from storage actionclock:player c_val
execute if score @s display_order matches 434 run data modify storage actionclock:player c5 set from storage actionclock:player w_val
execute if score @s display_order matches 434 run data modify storage actionclock:player c6 set from storage actionclock:player h_val
# 435: Kordy -> Kierunek -> Dni -> Zegar -> Glowka -> Pogoda
execute if score @s display_order matches 435 run data modify storage actionclock:player c1 set from storage actionclock:player x_val
execute if score @s display_order matches 435 run data modify storage actionclock:player c2 set from storage actionclock:player f_val
execute if score @s display_order matches 435 run data modify storage actionclock:player c3 set from storage actionclock:player d_val
execute if score @s display_order matches 435 run data modify storage actionclock:player c4 set from storage actionclock:player c_val
execute if score @s display_order matches 435 run data modify storage actionclock:player c5 set from storage actionclock:player h_val
execute if score @s display_order matches 435 run data modify storage actionclock:player c6 set from storage actionclock:player w_val
# 436: Kordy -> Kierunek -> Dni -> Glowka -> Pogoda -> Zegar
execute if score @s display_order matches 436 run data modify storage actionclock:player c1 set from storage actionclock:player x_val
execute if score @s display_order matches 436 run data modify storage actionclock:player c2 set from storage actionclock:player f_val
execute if score @s display_order matches 436 run data modify storage actionclock:player c3 set from storage actionclock:player d_val
execute if score @s display_order matches 436 run data modify storage actionclock:player c4 set from storage actionclock:player h_val
execute if score @s display_order matches 436 run data modify storage actionclock:player c5 set from storage actionclock:player w_val
execute if score @s display_order matches 436 run data modify storage actionclock:player c6 set from storage actionclock:player c_val
# 437: Kordy -> Kierunek -> Dni -> Glowka -> Zegar -> Pogoda
execute if score @s display_order matches 437 run data modify storage actionclock:player c1 set from storage actionclock:player x_val
execute if score @s display_order matches 437 run data modify storage actionclock:player c2 set from storage actionclock:player f_val
execute if score @s display_order matches 437 run data modify storage actionclock:player c3 set from storage actionclock:player d_val
execute if score @s display_order matches 437 run data modify storage actionclock:player c4 set from storage actionclock:player h_val
execute if score @s display_order matches 437 run data modify storage actionclock:player c5 set from storage actionclock:player c_val
execute if score @s display_order matches 437 run data modify storage actionclock:player c6 set from storage actionclock:player w_val
# 438: Kordy -> Kierunek -> Pogoda -> Dni -> Zegar -> Glowka
execute if score @s display_order matches 438 run data modify storage actionclock:player c1 set from storage actionclock:player x_val
execute if score @s display_order matches 438 run data modify storage actionclock:player c2 set from storage actionclock:player f_val
execute if score @s display_order matches 438 run data modify storage actionclock:player c3 set from storage actionclock:player w_val
execute if score @s display_order matches 438 run data modify storage actionclock:player c4 set from storage actionclock:player d_val
execute if score @s display_order matches 438 run data modify storage actionclock:player c5 set from storage actionclock:player c_val
execute if score @s display_order matches 438 run data modify storage actionclock:player c6 set from storage actionclock:player h_val
# 439: Kordy -> Kierunek -> Pogoda -> Dni -> Glowka -> Zegar
execute if score @s display_order matches 439 run data modify storage actionclock:player c1 set from storage actionclock:player x_val
execute if score @s display_order matches 439 run data modify storage actionclock:player c2 set from storage actionclock:player f_val
execute if score @s display_order matches 439 run data modify storage actionclock:player c3 set from storage actionclock:player w_val
execute if score @s display_order matches 439 run data modify storage actionclock:player c4 set from storage actionclock:player d_val
execute if score @s display_order matches 439 run data modify storage actionclock:player c5 set from storage actionclock:player h_val
execute if score @s display_order matches 439 run data modify storage actionclock:player c6 set from storage actionclock:player c_val
# 440: Kordy -> Kierunek -> Pogoda -> Zegar -> Dni -> Glowka
execute if score @s display_order matches 440 run data modify storage actionclock:player c1 set from storage actionclock:player x_val
execute if score @s display_order matches 440 run data modify storage actionclock:player c2 set from storage actionclock:player f_val
execute if score @s display_order matches 440 run data modify storage actionclock:player c3 set from storage actionclock:player w_val
execute if score @s display_order matches 440 run data modify storage actionclock:player c4 set from storage actionclock:player c_val
execute if score @s display_order matches 440 run data modify storage actionclock:player c5 set from storage actionclock:player d_val
execute if score @s display_order matches 440 run data modify storage actionclock:player c6 set from storage actionclock:player h_val
# 441: Kordy -> Kierunek -> Pogoda -> Zegar -> Glowka -> Dni
execute if score @s display_order matches 441 run data modify storage actionclock:player c1 set from storage actionclock:player x_val
execute if score @s display_order matches 441 run data modify storage actionclock:player c2 set from storage actionclock:player f_val
execute if score @s display_order matches 441 run data modify storage actionclock:player c3 set from storage actionclock:player w_val
execute if score @s display_order matches 441 run data modify storage actionclock:player c4 set from storage actionclock:player c_val
execute if score @s display_order matches 441 run data modify storage actionclock:player c5 set from storage actionclock:player h_val
execute if score @s display_order matches 441 run data modify storage actionclock:player c6 set from storage actionclock:player d_val
# 442: Kordy -> Kierunek -> Pogoda -> Glowka -> Dni -> Zegar
execute if score @s display_order matches 442 run data modify storage actionclock:player c1 set from storage actionclock:player x_val
execute if score @s display_order matches 442 run data modify storage actionclock:player c2 set from storage actionclock:player f_val
execute if score @s display_order matches 442 run data modify storage actionclock:player c3 set from storage actionclock:player w_val
execute if score @s display_order matches 442 run data modify storage actionclock:player c4 set from storage actionclock:player h_val
execute if score @s display_order matches 442 run data modify storage actionclock:player c5 set from storage actionclock:player d_val
execute if score @s display_order matches 442 run data modify storage actionclock:player c6 set from storage actionclock:player c_val
# 443: Kordy -> Kierunek -> Pogoda -> Glowka -> Zegar -> Dni
execute if score @s display_order matches 443 run data modify storage actionclock:player c1 set from storage actionclock:player x_val
execute if score @s display_order matches 443 run data modify storage actionclock:player c2 set from storage actionclock:player f_val
execute if score @s display_order matches 443 run data modify storage actionclock:player c3 set from storage actionclock:player w_val
execute if score @s display_order matches 443 run data modify storage actionclock:player c4 set from storage actionclock:player h_val
execute if score @s display_order matches 443 run data modify storage actionclock:player c5 set from storage actionclock:player c_val
execute if score @s display_order matches 443 run data modify storage actionclock:player c6 set from storage actionclock:player d_val
# 444: Kordy -> Kierunek -> Zegar -> Dni -> Pogoda -> Glowka
execute if score @s display_order matches 444 run data modify storage actionclock:player c1 set from storage actionclock:player x_val
execute if score @s display_order matches 444 run data modify storage actionclock:player c2 set from storage actionclock:player f_val
execute if score @s display_order matches 444 run data modify storage actionclock:player c3 set from storage actionclock:player c_val
execute if score @s display_order matches 444 run data modify storage actionclock:player c4 set from storage actionclock:player d_val
execute if score @s display_order matches 444 run data modify storage actionclock:player c5 set from storage actionclock:player w_val
execute if score @s display_order matches 444 run data modify storage actionclock:player c6 set from storage actionclock:player h_val
# 445: Kordy -> Kierunek -> Zegar -> Dni -> Glowka -> Pogoda
execute if score @s display_order matches 445 run data modify storage actionclock:player c1 set from storage actionclock:player x_val
execute if score @s display_order matches 445 run data modify storage actionclock:player c2 set from storage actionclock:player f_val
execute if score @s display_order matches 445 run data modify storage actionclock:player c3 set from storage actionclock:player c_val
execute if score @s display_order matches 445 run data modify storage actionclock:player c4 set from storage actionclock:player d_val
execute if score @s display_order matches 445 run data modify storage actionclock:player c5 set from storage actionclock:player h_val
execute if score @s display_order matches 445 run data modify storage actionclock:player c6 set from storage actionclock:player w_val
# 446: Kordy -> Kierunek -> Zegar -> Pogoda -> Dni -> Glowka
execute if score @s display_order matches 446 run data modify storage actionclock:player c1 set from storage actionclock:player x_val
execute if score @s display_order matches 446 run data modify storage actionclock:player c2 set from storage actionclock:player f_val
execute if score @s display_order matches 446 run data modify storage actionclock:player c3 set from storage actionclock:player c_val
execute if score @s display_order matches 446 run data modify storage actionclock:player c4 set from storage actionclock:player w_val
execute if score @s display_order matches 446 run data modify storage actionclock:player c5 set from storage actionclock:player d_val
execute if score @s display_order matches 446 run data modify storage actionclock:player c6 set from storage actionclock:player h_val
# 447: Kordy -> Kierunek -> Zegar -> Pogoda -> Glowka -> Dni
execute if score @s display_order matches 447 run data modify storage actionclock:player c1 set from storage actionclock:player x_val
execute if score @s display_order matches 447 run data modify storage actionclock:player c2 set from storage actionclock:player f_val
execute if score @s display_order matches 447 run data modify storage actionclock:player c3 set from storage actionclock:player c_val
execute if score @s display_order matches 447 run data modify storage actionclock:player c4 set from storage actionclock:player w_val
execute if score @s display_order matches 447 run data modify storage actionclock:player c5 set from storage actionclock:player h_val
execute if score @s display_order matches 447 run data modify storage actionclock:player c6 set from storage actionclock:player d_val
# 448: Kordy -> Kierunek -> Zegar -> Glowka -> Dni -> Pogoda
execute if score @s display_order matches 448 run data modify storage actionclock:player c1 set from storage actionclock:player x_val
execute if score @s display_order matches 448 run data modify storage actionclock:player c2 set from storage actionclock:player f_val
execute if score @s display_order matches 448 run data modify storage actionclock:player c3 set from storage actionclock:player c_val
execute if score @s display_order matches 448 run data modify storage actionclock:player c4 set from storage actionclock:player h_val
execute if score @s display_order matches 448 run data modify storage actionclock:player c5 set from storage actionclock:player d_val
execute if score @s display_order matches 448 run data modify storage actionclock:player c6 set from storage actionclock:player w_val
# 449: Kordy -> Kierunek -> Zegar -> Glowka -> Pogoda -> Dni
execute if score @s display_order matches 449 run data modify storage actionclock:player c1 set from storage actionclock:player x_val
execute if score @s display_order matches 449 run data modify storage actionclock:player c2 set from storage actionclock:player f_val
execute if score @s display_order matches 449 run data modify storage actionclock:player c3 set from storage actionclock:player c_val
execute if score @s display_order matches 449 run data modify storage actionclock:player c4 set from storage actionclock:player h_val
execute if score @s display_order matches 449 run data modify storage actionclock:player c5 set from storage actionclock:player w_val
execute if score @s display_order matches 449 run data modify storage actionclock:player c6 set from storage actionclock:player d_val
# 450: Kordy -> Kierunek -> Glowka -> Dni -> Pogoda -> Zegar
execute if score @s display_order matches 450 run data modify storage actionclock:player c1 set from storage actionclock:player x_val
execute if score @s display_order matches 450 run data modify storage actionclock:player c2 set from storage actionclock:player f_val
execute if score @s display_order matches 450 run data modify storage actionclock:player c3 set from storage actionclock:player h_val
execute if score @s display_order matches 450 run data modify storage actionclock:player c4 set from storage actionclock:player d_val
execute if score @s display_order matches 450 run data modify storage actionclock:player c5 set from storage actionclock:player w_val
execute if score @s display_order matches 450 run data modify storage actionclock:player c6 set from storage actionclock:player c_val
# 451: Kordy -> Kierunek -> Glowka -> Dni -> Zegar -> Pogoda
execute if score @s display_order matches 451 run data modify storage actionclock:player c1 set from storage actionclock:player x_val
execute if score @s display_order matches 451 run data modify storage actionclock:player c2 set from storage actionclock:player f_val
execute if score @s display_order matches 451 run data modify storage actionclock:player c3 set from storage actionclock:player h_val
execute if score @s display_order matches 451 run data modify storage actionclock:player c4 set from storage actionclock:player d_val
execute if score @s display_order matches 451 run data modify storage actionclock:player c5 set from storage actionclock:player c_val
execute if score @s display_order matches 451 run data modify storage actionclock:player c6 set from storage actionclock:player w_val
# 452: Kordy -> Kierunek -> Glowka -> Pogoda -> Dni -> Zegar
execute if score @s display_order matches 452 run data modify storage actionclock:player c1 set from storage actionclock:player x_val
execute if score @s display_order matches 452 run data modify storage actionclock:player c2 set from storage actionclock:player f_val
execute if score @s display_order matches 452 run data modify storage actionclock:player c3 set from storage actionclock:player h_val
execute if score @s display_order matches 452 run data modify storage actionclock:player c4 set from storage actionclock:player w_val
execute if score @s display_order matches 452 run data modify storage actionclock:player c5 set from storage actionclock:player d_val
execute if score @s display_order matches 452 run data modify storage actionclock:player c6 set from storage actionclock:player c_val
# 453: Kordy -> Kierunek -> Glowka -> Pogoda -> Zegar -> Dni
execute if score @s display_order matches 453 run data modify storage actionclock:player c1 set from storage actionclock:player x_val
execute if score @s display_order matches 453 run data modify storage actionclock:player c2 set from storage actionclock:player f_val
execute if score @s display_order matches 453 run data modify storage actionclock:player c3 set from storage actionclock:player h_val
execute if score @s display_order matches 453 run data modify storage actionclock:player c4 set from storage actionclock:player w_val
execute if score @s display_order matches 453 run data modify storage actionclock:player c5 set from storage actionclock:player c_val
execute if score @s display_order matches 453 run data modify storage actionclock:player c6 set from storage actionclock:player d_val
# 454: Kordy -> Kierunek -> Glowka -> Zegar -> Dni -> Pogoda
execute if score @s display_order matches 454 run data modify storage actionclock:player c1 set from storage actionclock:player x_val
execute if score @s display_order matches 454 run data modify storage actionclock:player c2 set from storage actionclock:player f_val
execute if score @s display_order matches 454 run data modify storage actionclock:player c3 set from storage actionclock:player h_val
execute if score @s display_order matches 454 run data modify storage actionclock:player c4 set from storage actionclock:player c_val
execute if score @s display_order matches 454 run data modify storage actionclock:player c5 set from storage actionclock:player d_val
execute if score @s display_order matches 454 run data modify storage actionclock:player c6 set from storage actionclock:player w_val
# 455: Kordy -> Kierunek -> Glowka -> Zegar -> Pogoda -> Dni
execute if score @s display_order matches 455 run data modify storage actionclock:player c1 set from storage actionclock:player x_val
execute if score @s display_order matches 455 run data modify storage actionclock:player c2 set from storage actionclock:player f_val
execute if score @s display_order matches 455 run data modify storage actionclock:player c3 set from storage actionclock:player h_val
execute if score @s display_order matches 455 run data modify storage actionclock:player c4 set from storage actionclock:player c_val
execute if score @s display_order matches 455 run data modify storage actionclock:player c5 set from storage actionclock:player w_val
execute if score @s display_order matches 455 run data modify storage actionclock:player c6 set from storage actionclock:player d_val
# 456: Kordy -> Glowka -> Dni -> Pogoda -> Zegar -> Kierunek
execute if score @s display_order matches 456 run data modify storage actionclock:player c1 set from storage actionclock:player x_val
execute if score @s display_order matches 456 run data modify storage actionclock:player c2 set from storage actionclock:player h_val
execute if score @s display_order matches 456 run data modify storage actionclock:player c3 set from storage actionclock:player d_val
execute if score @s display_order matches 456 run data modify storage actionclock:player c4 set from storage actionclock:player w_val
execute if score @s display_order matches 456 run data modify storage actionclock:player c5 set from storage actionclock:player c_val
execute if score @s display_order matches 456 run data modify storage actionclock:player c6 set from storage actionclock:player f_val
# 457: Kordy -> Glowka -> Dni -> Pogoda -> Kierunek -> Zegar
execute if score @s display_order matches 457 run data modify storage actionclock:player c1 set from storage actionclock:player x_val
execute if score @s display_order matches 457 run data modify storage actionclock:player c2 set from storage actionclock:player h_val
execute if score @s display_order matches 457 run data modify storage actionclock:player c3 set from storage actionclock:player d_val
execute if score @s display_order matches 457 run data modify storage actionclock:player c4 set from storage actionclock:player w_val
execute if score @s display_order matches 457 run data modify storage actionclock:player c5 set from storage actionclock:player f_val
execute if score @s display_order matches 457 run data modify storage actionclock:player c6 set from storage actionclock:player c_val
# 458: Kordy -> Glowka -> Dni -> Zegar -> Pogoda -> Kierunek
execute if score @s display_order matches 458 run data modify storage actionclock:player c1 set from storage actionclock:player x_val
execute if score @s display_order matches 458 run data modify storage actionclock:player c2 set from storage actionclock:player h_val
execute if score @s display_order matches 458 run data modify storage actionclock:player c3 set from storage actionclock:player d_val
execute if score @s display_order matches 458 run data modify storage actionclock:player c4 set from storage actionclock:player c_val
execute if score @s display_order matches 458 run data modify storage actionclock:player c5 set from storage actionclock:player w_val
execute if score @s display_order matches 458 run data modify storage actionclock:player c6 set from storage actionclock:player f_val
# 459: Kordy -> Glowka -> Dni -> Zegar -> Kierunek -> Pogoda
execute if score @s display_order matches 459 run data modify storage actionclock:player c1 set from storage actionclock:player x_val
execute if score @s display_order matches 459 run data modify storage actionclock:player c2 set from storage actionclock:player h_val
execute if score @s display_order matches 459 run data modify storage actionclock:player c3 set from storage actionclock:player d_val
execute if score @s display_order matches 459 run data modify storage actionclock:player c4 set from storage actionclock:player c_val
execute if score @s display_order matches 459 run data modify storage actionclock:player c5 set from storage actionclock:player f_val
execute if score @s display_order matches 459 run data modify storage actionclock:player c6 set from storage actionclock:player w_val
# 460: Kordy -> Glowka -> Dni -> Kierunek -> Pogoda -> Zegar
execute if score @s display_order matches 460 run data modify storage actionclock:player c1 set from storage actionclock:player x_val
execute if score @s display_order matches 460 run data modify storage actionclock:player c2 set from storage actionclock:player h_val
execute if score @s display_order matches 460 run data modify storage actionclock:player c3 set from storage actionclock:player d_val
execute if score @s display_order matches 460 run data modify storage actionclock:player c4 set from storage actionclock:player f_val
execute if score @s display_order matches 460 run data modify storage actionclock:player c5 set from storage actionclock:player w_val
execute if score @s display_order matches 460 run data modify storage actionclock:player c6 set from storage actionclock:player c_val
# 461: Kordy -> Glowka -> Dni -> Kierunek -> Zegar -> Pogoda
execute if score @s display_order matches 461 run data modify storage actionclock:player c1 set from storage actionclock:player x_val
execute if score @s display_order matches 461 run data modify storage actionclock:player c2 set from storage actionclock:player h_val
execute if score @s display_order matches 461 run data modify storage actionclock:player c3 set from storage actionclock:player d_val
execute if score @s display_order matches 461 run data modify storage actionclock:player c4 set from storage actionclock:player f_val
execute if score @s display_order matches 461 run data modify storage actionclock:player c5 set from storage actionclock:player c_val
execute if score @s display_order matches 461 run data modify storage actionclock:player c6 set from storage actionclock:player w_val
# 462: Kordy -> Glowka -> Pogoda -> Dni -> Zegar -> Kierunek
execute if score @s display_order matches 462 run data modify storage actionclock:player c1 set from storage actionclock:player x_val
execute if score @s display_order matches 462 run data modify storage actionclock:player c2 set from storage actionclock:player h_val
execute if score @s display_order matches 462 run data modify storage actionclock:player c3 set from storage actionclock:player w_val
execute if score @s display_order matches 462 run data modify storage actionclock:player c4 set from storage actionclock:player d_val
execute if score @s display_order matches 462 run data modify storage actionclock:player c5 set from storage actionclock:player c_val
execute if score @s display_order matches 462 run data modify storage actionclock:player c6 set from storage actionclock:player f_val
# 463: Kordy -> Glowka -> Pogoda -> Dni -> Kierunek -> Zegar
execute if score @s display_order matches 463 run data modify storage actionclock:player c1 set from storage actionclock:player x_val
execute if score @s display_order matches 463 run data modify storage actionclock:player c2 set from storage actionclock:player h_val
execute if score @s display_order matches 463 run data modify storage actionclock:player c3 set from storage actionclock:player w_val
execute if score @s display_order matches 463 run data modify storage actionclock:player c4 set from storage actionclock:player d_val
execute if score @s display_order matches 463 run data modify storage actionclock:player c5 set from storage actionclock:player f_val
execute if score @s display_order matches 463 run data modify storage actionclock:player c6 set from storage actionclock:player c_val
# 464: Kordy -> Glowka -> Pogoda -> Zegar -> Dni -> Kierunek
execute if score @s display_order matches 464 run data modify storage actionclock:player c1 set from storage actionclock:player x_val
execute if score @s display_order matches 464 run data modify storage actionclock:player c2 set from storage actionclock:player h_val
execute if score @s display_order matches 464 run data modify storage actionclock:player c3 set from storage actionclock:player w_val
execute if score @s display_order matches 464 run data modify storage actionclock:player c4 set from storage actionclock:player c_val
execute if score @s display_order matches 464 run data modify storage actionclock:player c5 set from storage actionclock:player d_val
execute if score @s display_order matches 464 run data modify storage actionclock:player c6 set from storage actionclock:player f_val
# 465: Kordy -> Glowka -> Pogoda -> Zegar -> Kierunek -> Dni
execute if score @s display_order matches 465 run data modify storage actionclock:player c1 set from storage actionclock:player x_val
execute if score @s display_order matches 465 run data modify storage actionclock:player c2 set from storage actionclock:player h_val
execute if score @s display_order matches 465 run data modify storage actionclock:player c3 set from storage actionclock:player w_val
execute if score @s display_order matches 465 run data modify storage actionclock:player c4 set from storage actionclock:player c_val
execute if score @s display_order matches 465 run data modify storage actionclock:player c5 set from storage actionclock:player f_val
execute if score @s display_order matches 465 run data modify storage actionclock:player c6 set from storage actionclock:player d_val
# 466: Kordy -> Glowka -> Pogoda -> Kierunek -> Dni -> Zegar
execute if score @s display_order matches 466 run data modify storage actionclock:player c1 set from storage actionclock:player x_val
execute if score @s display_order matches 466 run data modify storage actionclock:player c2 set from storage actionclock:player h_val
execute if score @s display_order matches 466 run data modify storage actionclock:player c3 set from storage actionclock:player w_val
execute if score @s display_order matches 466 run data modify storage actionclock:player c4 set from storage actionclock:player f_val
execute if score @s display_order matches 466 run data modify storage actionclock:player c5 set from storage actionclock:player d_val
execute if score @s display_order matches 466 run data modify storage actionclock:player c6 set from storage actionclock:player c_val
# 467: Kordy -> Glowka -> Pogoda -> Kierunek -> Zegar -> Dni
execute if score @s display_order matches 467 run data modify storage actionclock:player c1 set from storage actionclock:player x_val
execute if score @s display_order matches 467 run data modify storage actionclock:player c2 set from storage actionclock:player h_val
execute if score @s display_order matches 467 run data modify storage actionclock:player c3 set from storage actionclock:player w_val
execute if score @s display_order matches 467 run data modify storage actionclock:player c4 set from storage actionclock:player f_val
execute if score @s display_order matches 467 run data modify storage actionclock:player c5 set from storage actionclock:player c_val
execute if score @s display_order matches 467 run data modify storage actionclock:player c6 set from storage actionclock:player d_val
# 468: Kordy -> Glowka -> Zegar -> Dni -> Pogoda -> Kierunek
execute if score @s display_order matches 468 run data modify storage actionclock:player c1 set from storage actionclock:player x_val
execute if score @s display_order matches 468 run data modify storage actionclock:player c2 set from storage actionclock:player h_val
execute if score @s display_order matches 468 run data modify storage actionclock:player c3 set from storage actionclock:player c_val
execute if score @s display_order matches 468 run data modify storage actionclock:player c4 set from storage actionclock:player d_val
execute if score @s display_order matches 468 run data modify storage actionclock:player c5 set from storage actionclock:player w_val
execute if score @s display_order matches 468 run data modify storage actionclock:player c6 set from storage actionclock:player f_val
# 469: Kordy -> Glowka -> Zegar -> Dni -> Kierunek -> Pogoda
execute if score @s display_order matches 469 run data modify storage actionclock:player c1 set from storage actionclock:player x_val
execute if score @s display_order matches 469 run data modify storage actionclock:player c2 set from storage actionclock:player h_val
execute if score @s display_order matches 469 run data modify storage actionclock:player c3 set from storage actionclock:player c_val
execute if score @s display_order matches 469 run data modify storage actionclock:player c4 set from storage actionclock:player d_val
execute if score @s display_order matches 469 run data modify storage actionclock:player c5 set from storage actionclock:player f_val
execute if score @s display_order matches 469 run data modify storage actionclock:player c6 set from storage actionclock:player w_val
# 470: Kordy -> Glowka -> Zegar -> Pogoda -> Dni -> Kierunek
execute if score @s display_order matches 470 run data modify storage actionclock:player c1 set from storage actionclock:player x_val
execute if score @s display_order matches 470 run data modify storage actionclock:player c2 set from storage actionclock:player h_val
execute if score @s display_order matches 470 run data modify storage actionclock:player c3 set from storage actionclock:player c_val
execute if score @s display_order matches 470 run data modify storage actionclock:player c4 set from storage actionclock:player w_val
execute if score @s display_order matches 470 run data modify storage actionclock:player c5 set from storage actionclock:player d_val
execute if score @s display_order matches 470 run data modify storage actionclock:player c6 set from storage actionclock:player f_val
# 471: Kordy -> Glowka -> Zegar -> Pogoda -> Kierunek -> Dni
execute if score @s display_order matches 471 run data modify storage actionclock:player c1 set from storage actionclock:player x_val
execute if score @s display_order matches 471 run data modify storage actionclock:player c2 set from storage actionclock:player h_val
execute if score @s display_order matches 471 run data modify storage actionclock:player c3 set from storage actionclock:player c_val
execute if score @s display_order matches 471 run data modify storage actionclock:player c4 set from storage actionclock:player w_val
execute if score @s display_order matches 471 run data modify storage actionclock:player c5 set from storage actionclock:player f_val
execute if score @s display_order matches 471 run data modify storage actionclock:player c6 set from storage actionclock:player d_val
# 472: Kordy -> Glowka -> Zegar -> Kierunek -> Dni -> Pogoda
execute if score @s display_order matches 472 run data modify storage actionclock:player c1 set from storage actionclock:player x_val
execute if score @s display_order matches 472 run data modify storage actionclock:player c2 set from storage actionclock:player h_val
execute if score @s display_order matches 472 run data modify storage actionclock:player c3 set from storage actionclock:player c_val
execute if score @s display_order matches 472 run data modify storage actionclock:player c4 set from storage actionclock:player f_val
execute if score @s display_order matches 472 run data modify storage actionclock:player c5 set from storage actionclock:player d_val
execute if score @s display_order matches 472 run data modify storage actionclock:player c6 set from storage actionclock:player w_val
# 473: Kordy -> Glowka -> Zegar -> Kierunek -> Pogoda -> Dni
execute if score @s display_order matches 473 run data modify storage actionclock:player c1 set from storage actionclock:player x_val
execute if score @s display_order matches 473 run data modify storage actionclock:player c2 set from storage actionclock:player h_val
execute if score @s display_order matches 473 run data modify storage actionclock:player c3 set from storage actionclock:player c_val
execute if score @s display_order matches 473 run data modify storage actionclock:player c4 set from storage actionclock:player f_val
execute if score @s display_order matches 473 run data modify storage actionclock:player c5 set from storage actionclock:player w_val
execute if score @s display_order matches 473 run data modify storage actionclock:player c6 set from storage actionclock:player d_val
# 474: Kordy -> Glowka -> Kierunek -> Dni -> Pogoda -> Zegar
execute if score @s display_order matches 474 run data modify storage actionclock:player c1 set from storage actionclock:player x_val
execute if score @s display_order matches 474 run data modify storage actionclock:player c2 set from storage actionclock:player h_val
execute if score @s display_order matches 474 run data modify storage actionclock:player c3 set from storage actionclock:player f_val
execute if score @s display_order matches 474 run data modify storage actionclock:player c4 set from storage actionclock:player d_val
execute if score @s display_order matches 474 run data modify storage actionclock:player c5 set from storage actionclock:player w_val
execute if score @s display_order matches 474 run data modify storage actionclock:player c6 set from storage actionclock:player c_val
# 475: Kordy -> Glowka -> Kierunek -> Dni -> Zegar -> Pogoda #Kazanek
execute if score @s display_order matches 475 run data modify storage actionclock:player c1 set from storage actionclock:player x_val
execute if score @s display_order matches 475 run data modify storage actionclock:player c2 set from storage actionclock:player h_val
execute if score @s display_order matches 475 run data modify storage actionclock:player c3 set from storage actionclock:player f_val
execute if score @s display_order matches 475 run data modify storage actionclock:player c4 set from storage actionclock:player d_val
execute if score @s display_order matches 475 run data modify storage actionclock:player c5 set from storage actionclock:player c_val
execute if score @s display_order matches 475 run data modify storage actionclock:player c6 set from storage actionclock:player w_val
# 476: Kordy -> Glowka -> Kierunek -> Pogoda -> Dni -> Zegar
execute if score @s display_order matches 476 run data modify storage actionclock:player c1 set from storage actionclock:player x_val
execute if score @s display_order matches 476 run data modify storage actionclock:player c2 set from storage actionclock:player h_val
execute if score @s display_order matches 476 run data modify storage actionclock:player c3 set from storage actionclock:player f_val
execute if score @s display_order matches 476 run data modify storage actionclock:player c4 set from storage actionclock:player w_val
execute if score @s display_order matches 476 run data modify storage actionclock:player c5 set from storage actionclock:player d_val
execute if score @s display_order matches 476 run data modify storage actionclock:player c6 set from storage actionclock:player c_val
# 477: Kordy -> Glowka -> Kierunek -> Pogoda -> Zegar -> Dni
execute if score @s display_order matches 477 run data modify storage actionclock:player c1 set from storage actionclock:player x_val
execute if score @s display_order matches 477 run data modify storage actionclock:player c2 set from storage actionclock:player h_val
execute if score @s display_order matches 477 run data modify storage actionclock:player c3 set from storage actionclock:player f_val
execute if score @s display_order matches 477 run data modify storage actionclock:player c4 set from storage actionclock:player w_val
execute if score @s display_order matches 477 run data modify storage actionclock:player c5 set from storage actionclock:player c_val
execute if score @s display_order matches 477 run data modify storage actionclock:player c6 set from storage actionclock:player d_val
# 478: Kordy -> Glowka -> Kierunek -> Zegar -> Dni -> Pogoda
execute if score @s display_order matches 478 run data modify storage actionclock:player c1 set from storage actionclock:player x_val
execute if score @s display_order matches 478 run data modify storage actionclock:player c2 set from storage actionclock:player h_val
execute if score @s display_order matches 478 run data modify storage actionclock:player c3 set from storage actionclock:player f_val
execute if score @s display_order matches 478 run data modify storage actionclock:player c4 set from storage actionclock:player c_val
execute if score @s display_order matches 478 run data modify storage actionclock:player c5 set from storage actionclock:player d_val
execute if score @s display_order matches 478 run data modify storage actionclock:player c6 set from storage actionclock:player w_val
# 479: Kordy -> Glowka -> Kierunek -> Zegar -> Pogoda -> Dni
execute if score @s display_order matches 479 run data modify storage actionclock:player c1 set from storage actionclock:player x_val
execute if score @s display_order matches 479 run data modify storage actionclock:player c2 set from storage actionclock:player h_val
execute if score @s display_order matches 479 run data modify storage actionclock:player c3 set from storage actionclock:player f_val
execute if score @s display_order matches 479 run data modify storage actionclock:player c4 set from storage actionclock:player c_val
execute if score @s display_order matches 479 run data modify storage actionclock:player c5 set from storage actionclock:player w_val
execute if score @s display_order matches 479 run data modify storage actionclock:player c6 set from storage actionclock:player d_val
# 480: Kierunek -> Dni -> Pogoda -> Zegar -> Kordy -> Glowka
execute if score @s display_order matches 480 run data modify storage actionclock:player c1 set from storage actionclock:player f_val
execute if score @s display_order matches 480 run data modify storage actionclock:player c2 set from storage actionclock:player d_val
execute if score @s display_order matches 480 run data modify storage actionclock:player c3 set from storage actionclock:player w_val
execute if score @s display_order matches 480 run data modify storage actionclock:player c4 set from storage actionclock:player c_val
execute if score @s display_order matches 480 run data modify storage actionclock:player c5 set from storage actionclock:player x_val
execute if score @s display_order matches 480 run data modify storage actionclock:player c6 set from storage actionclock:player h_val
# 481: Kierunek -> Dni -> Pogoda -> Zegar -> Glowka -> Kordy
execute if score @s display_order matches 481 run data modify storage actionclock:player c1 set from storage actionclock:player f_val
execute if score @s display_order matches 481 run data modify storage actionclock:player c2 set from storage actionclock:player d_val
execute if score @s display_order matches 481 run data modify storage actionclock:player c3 set from storage actionclock:player w_val
execute if score @s display_order matches 481 run data modify storage actionclock:player c4 set from storage actionclock:player c_val
execute if score @s display_order matches 481 run data modify storage actionclock:player c5 set from storage actionclock:player h_val
execute if score @s display_order matches 481 run data modify storage actionclock:player c6 set from storage actionclock:player x_val
# 482: Kierunek -> Dni -> Pogoda -> Kordy -> Zegar -> Glowka
execute if score @s display_order matches 482 run data modify storage actionclock:player c1 set from storage actionclock:player f_val
execute if score @s display_order matches 482 run data modify storage actionclock:player c2 set from storage actionclock:player d_val
execute if score @s display_order matches 482 run data modify storage actionclock:player c3 set from storage actionclock:player w_val
execute if score @s display_order matches 482 run data modify storage actionclock:player c4 set from storage actionclock:player x_val
execute if score @s display_order matches 482 run data modify storage actionclock:player c5 set from storage actionclock:player c_val
execute if score @s display_order matches 482 run data modify storage actionclock:player c6 set from storage actionclock:player h_val
# 483: Kierunek -> Dni -> Pogoda -> Kordy -> Glowka -> Zegar
execute if score @s display_order matches 483 run data modify storage actionclock:player c1 set from storage actionclock:player f_val
execute if score @s display_order matches 483 run data modify storage actionclock:player c2 set from storage actionclock:player d_val
execute if score @s display_order matches 483 run data modify storage actionclock:player c3 set from storage actionclock:player w_val
execute if score @s display_order matches 483 run data modify storage actionclock:player c4 set from storage actionclock:player x_val
execute if score @s display_order matches 483 run data modify storage actionclock:player c5 set from storage actionclock:player h_val
execute if score @s display_order matches 483 run data modify storage actionclock:player c6 set from storage actionclock:player c_val
# 484: Kierunek -> Dni -> Pogoda -> Glowka -> Zegar -> Kordy
execute if score @s display_order matches 484 run data modify storage actionclock:player c1 set from storage actionclock:player f_val
execute if score @s display_order matches 484 run data modify storage actionclock:player c2 set from storage actionclock:player d_val
execute if score @s display_order matches 484 run data modify storage actionclock:player c3 set from storage actionclock:player w_val
execute if score @s display_order matches 484 run data modify storage actionclock:player c4 set from storage actionclock:player h_val
execute if score @s display_order matches 484 run data modify storage actionclock:player c5 set from storage actionclock:player c_val
execute if score @s display_order matches 484 run data modify storage actionclock:player c6 set from storage actionclock:player x_val
# 485: Kierunek -> Dni -> Pogoda -> Glowka -> Kordy -> Zegar
execute if score @s display_order matches 485 run data modify storage actionclock:player c1 set from storage actionclock:player f_val
execute if score @s display_order matches 485 run data modify storage actionclock:player c2 set from storage actionclock:player d_val
execute if score @s display_order matches 485 run data modify storage actionclock:player c3 set from storage actionclock:player w_val
execute if score @s display_order matches 485 run data modify storage actionclock:player c4 set from storage actionclock:player h_val
execute if score @s display_order matches 485 run data modify storage actionclock:player c5 set from storage actionclock:player x_val
execute if score @s display_order matches 485 run data modify storage actionclock:player c6 set from storage actionclock:player c_val
# 486: Kierunek -> Dni -> Zegar -> Pogoda -> Kordy -> Glowka
execute if score @s display_order matches 486 run data modify storage actionclock:player c1 set from storage actionclock:player f_val
execute if score @s display_order matches 486 run data modify storage actionclock:player c2 set from storage actionclock:player d_val
execute if score @s display_order matches 486 run data modify storage actionclock:player c3 set from storage actionclock:player c_val
execute if score @s display_order matches 486 run data modify storage actionclock:player c4 set from storage actionclock:player w_val
execute if score @s display_order matches 486 run data modify storage actionclock:player c5 set from storage actionclock:player x_val
execute if score @s display_order matches 486 run data modify storage actionclock:player c6 set from storage actionclock:player h_val
# 487: Kierunek -> Dni -> Zegar -> Pogoda -> Glowka -> Kordy
execute if score @s display_order matches 487 run data modify storage actionclock:player c1 set from storage actionclock:player f_val
execute if score @s display_order matches 487 run data modify storage actionclock:player c2 set from storage actionclock:player d_val
execute if score @s display_order matches 487 run data modify storage actionclock:player c3 set from storage actionclock:player c_val
execute if score @s display_order matches 487 run data modify storage actionclock:player c4 set from storage actionclock:player w_val
execute if score @s display_order matches 487 run data modify storage actionclock:player c5 set from storage actionclock:player h_val
execute if score @s display_order matches 487 run data modify storage actionclock:player c6 set from storage actionclock:player x_val
# 488: Kierunek -> Dni -> Zegar -> Kordy -> Pogoda -> Glowka
execute if score @s display_order matches 488 run data modify storage actionclock:player c1 set from storage actionclock:player f_val
execute if score @s display_order matches 488 run data modify storage actionclock:player c2 set from storage actionclock:player d_val
execute if score @s display_order matches 488 run data modify storage actionclock:player c3 set from storage actionclock:player c_val
execute if score @s display_order matches 488 run data modify storage actionclock:player c4 set from storage actionclock:player x_val
execute if score @s display_order matches 488 run data modify storage actionclock:player c5 set from storage actionclock:player w_val
execute if score @s display_order matches 488 run data modify storage actionclock:player c6 set from storage actionclock:player h_val
# 489: Kierunek -> Dni -> Zegar -> Kordy -> Glowka -> Pogoda
execute if score @s display_order matches 489 run data modify storage actionclock:player c1 set from storage actionclock:player f_val
execute if score @s display_order matches 489 run data modify storage actionclock:player c2 set from storage actionclock:player d_val
execute if score @s display_order matches 489 run data modify storage actionclock:player c3 set from storage actionclock:player c_val
execute if score @s display_order matches 489 run data modify storage actionclock:player c4 set from storage actionclock:player x_val
execute if score @s display_order matches 489 run data modify storage actionclock:player c5 set from storage actionclock:player h_val
execute if score @s display_order matches 489 run data modify storage actionclock:player c6 set from storage actionclock:player w_val
# 490: Kierunek -> Dni -> Zegar -> Glowka -> Pogoda -> Kordy
execute if score @s display_order matches 490 run data modify storage actionclock:player c1 set from storage actionclock:player f_val
execute if score @s display_order matches 490 run data modify storage actionclock:player c2 set from storage actionclock:player d_val
execute if score @s display_order matches 490 run data modify storage actionclock:player c3 set from storage actionclock:player c_val
execute if score @s display_order matches 490 run data modify storage actionclock:player c4 set from storage actionclock:player h_val
execute if score @s display_order matches 490 run data modify storage actionclock:player c5 set from storage actionclock:player w_val
execute if score @s display_order matches 490 run data modify storage actionclock:player c6 set from storage actionclock:player x_val
# 491: Kierunek -> Dni -> Zegar -> Glowka -> Kordy -> Pogoda
execute if score @s display_order matches 491 run data modify storage actionclock:player c1 set from storage actionclock:player f_val
execute if score @s display_order matches 491 run data modify storage actionclock:player c2 set from storage actionclock:player d_val
execute if score @s display_order matches 491 run data modify storage actionclock:player c3 set from storage actionclock:player c_val
execute if score @s display_order matches 491 run data modify storage actionclock:player c4 set from storage actionclock:player h_val
execute if score @s display_order matches 491 run data modify storage actionclock:player c5 set from storage actionclock:player x_val
execute if score @s display_order matches 491 run data modify storage actionclock:player c6 set from storage actionclock:player w_val
# 492: Kierunek -> Dni -> Kordy -> Pogoda -> Zegar -> Glowka
execute if score @s display_order matches 492 run data modify storage actionclock:player c1 set from storage actionclock:player f_val
execute if score @s display_order matches 492 run data modify storage actionclock:player c2 set from storage actionclock:player d_val
execute if score @s display_order matches 492 run data modify storage actionclock:player c3 set from storage actionclock:player x_val
execute if score @s display_order matches 492 run data modify storage actionclock:player c4 set from storage actionclock:player w_val
execute if score @s display_order matches 492 run data modify storage actionclock:player c5 set from storage actionclock:player c_val
execute if score @s display_order matches 492 run data modify storage actionclock:player c6 set from storage actionclock:player h_val
# 493: Kierunek -> Dni -> Kordy -> Pogoda -> Glowka -> Zegar
execute if score @s display_order matches 493 run data modify storage actionclock:player c1 set from storage actionclock:player f_val
execute if score @s display_order matches 493 run data modify storage actionclock:player c2 set from storage actionclock:player d_val
execute if score @s display_order matches 493 run data modify storage actionclock:player c3 set from storage actionclock:player x_val
execute if score @s display_order matches 493 run data modify storage actionclock:player c4 set from storage actionclock:player w_val
execute if score @s display_order matches 493 run data modify storage actionclock:player c5 set from storage actionclock:player h_val
execute if score @s display_order matches 493 run data modify storage actionclock:player c6 set from storage actionclock:player c_val
# 494: Kierunek -> Dni -> Kordy -> Zegar -> Pogoda -> Glowka
execute if score @s display_order matches 494 run data modify storage actionclock:player c1 set from storage actionclock:player f_val
execute if score @s display_order matches 494 run data modify storage actionclock:player c2 set from storage actionclock:player d_val
execute if score @s display_order matches 494 run data modify storage actionclock:player c3 set from storage actionclock:player x_val
execute if score @s display_order matches 494 run data modify storage actionclock:player c4 set from storage actionclock:player c_val
execute if score @s display_order matches 494 run data modify storage actionclock:player c5 set from storage actionclock:player w_val
execute if score @s display_order matches 494 run data modify storage actionclock:player c6 set from storage actionclock:player h_val
# 495: Kierunek -> Dni -> Kordy -> Zegar -> Glowka -> Pogoda
execute if score @s display_order matches 495 run data modify storage actionclock:player c1 set from storage actionclock:player f_val
execute if score @s display_order matches 495 run data modify storage actionclock:player c2 set from storage actionclock:player d_val
execute if score @s display_order matches 495 run data modify storage actionclock:player c3 set from storage actionclock:player x_val
execute if score @s display_order matches 495 run data modify storage actionclock:player c4 set from storage actionclock:player c_val
execute if score @s display_order matches 495 run data modify storage actionclock:player c5 set from storage actionclock:player h_val
execute if score @s display_order matches 495 run data modify storage actionclock:player c6 set from storage actionclock:player w_val
# 496: Kierunek -> Dni -> Kordy -> Glowka -> Pogoda -> Zegar
execute if score @s display_order matches 496 run data modify storage actionclock:player c1 set from storage actionclock:player f_val
execute if score @s display_order matches 496 run data modify storage actionclock:player c2 set from storage actionclock:player d_val
execute if score @s display_order matches 496 run data modify storage actionclock:player c3 set from storage actionclock:player x_val
execute if score @s display_order matches 496 run data modify storage actionclock:player c4 set from storage actionclock:player h_val
execute if score @s display_order matches 496 run data modify storage actionclock:player c5 set from storage actionclock:player w_val
execute if score @s display_order matches 496 run data modify storage actionclock:player c6 set from storage actionclock:player c_val
# 497: Kierunek -> Dni -> Kordy -> Glowka -> Zegar -> Pogoda
execute if score @s display_order matches 497 run data modify storage actionclock:player c1 set from storage actionclock:player f_val
execute if score @s display_order matches 497 run data modify storage actionclock:player c2 set from storage actionclock:player d_val
execute if score @s display_order matches 497 run data modify storage actionclock:player c3 set from storage actionclock:player x_val
execute if score @s display_order matches 497 run data modify storage actionclock:player c4 set from storage actionclock:player h_val
execute if score @s display_order matches 497 run data modify storage actionclock:player c5 set from storage actionclock:player c_val
execute if score @s display_order matches 497 run data modify storage actionclock:player c6 set from storage actionclock:player w_val
# 498: Kierunek -> Dni -> Glowka -> Pogoda -> Zegar -> Kordy
execute if score @s display_order matches 498 run data modify storage actionclock:player c1 set from storage actionclock:player f_val
execute if score @s display_order matches 498 run data modify storage actionclock:player c2 set from storage actionclock:player d_val
execute if score @s display_order matches 498 run data modify storage actionclock:player c3 set from storage actionclock:player h_val
execute if score @s display_order matches 498 run data modify storage actionclock:player c4 set from storage actionclock:player w_val
execute if score @s display_order matches 498 run data modify storage actionclock:player c5 set from storage actionclock:player c_val
execute if score @s display_order matches 498 run data modify storage actionclock:player c6 set from storage actionclock:player x_val
# 499: Kierunek -> Dni -> Glowka -> Pogoda -> Kordy -> Zegar
execute if score @s display_order matches 499 run data modify storage actionclock:player c1 set from storage actionclock:player f_val
execute if score @s display_order matches 499 run data modify storage actionclock:player c2 set from storage actionclock:player d_val
execute if score @s display_order matches 499 run data modify storage actionclock:player c3 set from storage actionclock:player h_val
execute if score @s display_order matches 499 run data modify storage actionclock:player c4 set from storage actionclock:player w_val
execute if score @s display_order matches 499 run data modify storage actionclock:player c5 set from storage actionclock:player x_val
execute if score @s display_order matches 499 run data modify storage actionclock:player c6 set from storage actionclock:player c_val
# 500: Kierunek -> Dni -> Glowka -> Zegar -> Pogoda -> Kordy
execute if score @s display_order matches 500 run data modify storage actionclock:player c1 set from storage actionclock:player f_val
execute if score @s display_order matches 500 run data modify storage actionclock:player c2 set from storage actionclock:player d_val
execute if score @s display_order matches 500 run data modify storage actionclock:player c3 set from storage actionclock:player h_val
execute if score @s display_order matches 500 run data modify storage actionclock:player c4 set from storage actionclock:player c_val
execute if score @s display_order matches 500 run data modify storage actionclock:player c5 set from storage actionclock:player w_val
execute if score @s display_order matches 500 run data modify storage actionclock:player c6 set from storage actionclock:player x_val
# 501: Kierunek -> Dni -> Glowka -> Zegar -> Kordy -> Pogoda
execute if score @s display_order matches 501 run data modify storage actionclock:player c1 set from storage actionclock:player f_val
execute if score @s display_order matches 501 run data modify storage actionclock:player c2 set from storage actionclock:player d_val
execute if score @s display_order matches 501 run data modify storage actionclock:player c3 set from storage actionclock:player h_val
execute if score @s display_order matches 501 run data modify storage actionclock:player c4 set from storage actionclock:player c_val
execute if score @s display_order matches 501 run data modify storage actionclock:player c5 set from storage actionclock:player x_val
execute if score @s display_order matches 501 run data modify storage actionclock:player c6 set from storage actionclock:player w_val
# 502: Kierunek -> Dni -> Glowka -> Kordy -> Pogoda -> Zegar
execute if score @s display_order matches 502 run data modify storage actionclock:player c1 set from storage actionclock:player f_val
execute if score @s display_order matches 502 run data modify storage actionclock:player c2 set from storage actionclock:player d_val
execute if score @s display_order matches 502 run data modify storage actionclock:player c3 set from storage actionclock:player h_val
execute if score @s display_order matches 502 run data modify storage actionclock:player c4 set from storage actionclock:player x_val
execute if score @s display_order matches 502 run data modify storage actionclock:player c5 set from storage actionclock:player w_val
execute if score @s display_order matches 502 run data modify storage actionclock:player c6 set from storage actionclock:player c_val
# 503: Kierunek -> Dni -> Glowka -> Kordy -> Zegar -> Pogoda
execute if score @s display_order matches 503 run data modify storage actionclock:player c1 set from storage actionclock:player f_val
execute if score @s display_order matches 503 run data modify storage actionclock:player c2 set from storage actionclock:player d_val
execute if score @s display_order matches 503 run data modify storage actionclock:player c3 set from storage actionclock:player h_val
execute if score @s display_order matches 503 run data modify storage actionclock:player c4 set from storage actionclock:player x_val
execute if score @s display_order matches 503 run data modify storage actionclock:player c5 set from storage actionclock:player c_val
execute if score @s display_order matches 503 run data modify storage actionclock:player c6 set from storage actionclock:player w_val
# 504: Kierunek -> Pogoda -> Dni -> Zegar -> Kordy -> Glowka
execute if score @s display_order matches 504 run data modify storage actionclock:player c1 set from storage actionclock:player f_val
execute if score @s display_order matches 504 run data modify storage actionclock:player c2 set from storage actionclock:player w_val
execute if score @s display_order matches 504 run data modify storage actionclock:player c3 set from storage actionclock:player d_val
execute if score @s display_order matches 504 run data modify storage actionclock:player c4 set from storage actionclock:player c_val
execute if score @s display_order matches 504 run data modify storage actionclock:player c5 set from storage actionclock:player x_val
execute if score @s display_order matches 504 run data modify storage actionclock:player c6 set from storage actionclock:player h_val
# 505: Kierunek -> Pogoda -> Dni -> Zegar -> Glowka -> Kordy
execute if score @s display_order matches 505 run data modify storage actionclock:player c1 set from storage actionclock:player f_val
execute if score @s display_order matches 505 run data modify storage actionclock:player c2 set from storage actionclock:player w_val
execute if score @s display_order matches 505 run data modify storage actionclock:player c3 set from storage actionclock:player d_val
execute if score @s display_order matches 505 run data modify storage actionclock:player c4 set from storage actionclock:player c_val
execute if score @s display_order matches 505 run data modify storage actionclock:player c5 set from storage actionclock:player h_val
execute if score @s display_order matches 505 run data modify storage actionclock:player c6 set from storage actionclock:player x_val
# 506: Kierunek -> Pogoda -> Dni -> Kordy -> Zegar -> Glowka
execute if score @s display_order matches 506 run data modify storage actionclock:player c1 set from storage actionclock:player f_val
execute if score @s display_order matches 506 run data modify storage actionclock:player c2 set from storage actionclock:player w_val
execute if score @s display_order matches 506 run data modify storage actionclock:player c3 set from storage actionclock:player d_val
execute if score @s display_order matches 506 run data modify storage actionclock:player c4 set from storage actionclock:player x_val
execute if score @s display_order matches 506 run data modify storage actionclock:player c5 set from storage actionclock:player c_val
execute if score @s display_order matches 506 run data modify storage actionclock:player c6 set from storage actionclock:player h_val
# 507: Kierunek -> Pogoda -> Dni -> Kordy -> Glowka -> Zegar
execute if score @s display_order matches 507 run data modify storage actionclock:player c1 set from storage actionclock:player f_val
execute if score @s display_order matches 507 run data modify storage actionclock:player c2 set from storage actionclock:player w_val
execute if score @s display_order matches 507 run data modify storage actionclock:player c3 set from storage actionclock:player d_val
execute if score @s display_order matches 507 run data modify storage actionclock:player c4 set from storage actionclock:player x_val
execute if score @s display_order matches 507 run data modify storage actionclock:player c5 set from storage actionclock:player h_val
execute if score @s display_order matches 507 run data modify storage actionclock:player c6 set from storage actionclock:player c_val
# 508: Kierunek -> Pogoda -> Dni -> Glowka -> Zegar -> Kordy
execute if score @s display_order matches 508 run data modify storage actionclock:player c1 set from storage actionclock:player f_val
execute if score @s display_order matches 508 run data modify storage actionclock:player c2 set from storage actionclock:player w_val
execute if score @s display_order matches 508 run data modify storage actionclock:player c3 set from storage actionclock:player d_val
execute if score @s display_order matches 508 run data modify storage actionclock:player c4 set from storage actionclock:player h_val
execute if score @s display_order matches 508 run data modify storage actionclock:player c5 set from storage actionclock:player c_val
execute if score @s display_order matches 508 run data modify storage actionclock:player c6 set from storage actionclock:player x_val
# 509: Kierunek -> Pogoda -> Dni -> Glowka -> Kordy -> Zegar
execute if score @s display_order matches 509 run data modify storage actionclock:player c1 set from storage actionclock:player f_val
execute if score @s display_order matches 509 run data modify storage actionclock:player c2 set from storage actionclock:player w_val
execute if score @s display_order matches 509 run data modify storage actionclock:player c3 set from storage actionclock:player d_val
execute if score @s display_order matches 509 run data modify storage actionclock:player c4 set from storage actionclock:player h_val
execute if score @s display_order matches 509 run data modify storage actionclock:player c5 set from storage actionclock:player x_val
execute if score @s display_order matches 509 run data modify storage actionclock:player c6 set from storage actionclock:player c_val
# 510: Kierunek -> Pogoda -> Zegar -> Dni -> Kordy -> Glowka
execute if score @s display_order matches 510 run data modify storage actionclock:player c1 set from storage actionclock:player f_val
execute if score @s display_order matches 510 run data modify storage actionclock:player c2 set from storage actionclock:player w_val
execute if score @s display_order matches 510 run data modify storage actionclock:player c3 set from storage actionclock:player c_val
execute if score @s display_order matches 510 run data modify storage actionclock:player c4 set from storage actionclock:player d_val
execute if score @s display_order matches 510 run data modify storage actionclock:player c5 set from storage actionclock:player x_val
execute if score @s display_order matches 510 run data modify storage actionclock:player c6 set from storage actionclock:player h_val
# 511: Kierunek -> Pogoda -> Zegar -> Dni -> Glowka -> Kordy
execute if score @s display_order matches 511 run data modify storage actionclock:player c1 set from storage actionclock:player f_val
execute if score @s display_order matches 511 run data modify storage actionclock:player c2 set from storage actionclock:player w_val
execute if score @s display_order matches 511 run data modify storage actionclock:player c3 set from storage actionclock:player c_val
execute if score @s display_order matches 511 run data modify storage actionclock:player c4 set from storage actionclock:player d_val
execute if score @s display_order matches 511 run data modify storage actionclock:player c5 set from storage actionclock:player h_val
execute if score @s display_order matches 511 run data modify storage actionclock:player c6 set from storage actionclock:player x_val
# 512: Kierunek -> Pogoda -> Zegar -> Kordy -> Dni -> Glowka
execute if score @s display_order matches 512 run data modify storage actionclock:player c1 set from storage actionclock:player f_val
execute if score @s display_order matches 512 run data modify storage actionclock:player c2 set from storage actionclock:player w_val
execute if score @s display_order matches 512 run data modify storage actionclock:player c3 set from storage actionclock:player c_val
execute if score @s display_order matches 512 run data modify storage actionclock:player c4 set from storage actionclock:player x_val
execute if score @s display_order matches 512 run data modify storage actionclock:player c5 set from storage actionclock:player d_val
execute if score @s display_order matches 512 run data modify storage actionclock:player c6 set from storage actionclock:player h_val
# 513: Kierunek -> Pogoda -> Zegar -> Kordy -> Glowka -> Dni
execute if score @s display_order matches 513 run data modify storage actionclock:player c1 set from storage actionclock:player f_val
execute if score @s display_order matches 513 run data modify storage actionclock:player c2 set from storage actionclock:player w_val
execute if score @s display_order matches 513 run data modify storage actionclock:player c3 set from storage actionclock:player c_val
execute if score @s display_order matches 513 run data modify storage actionclock:player c4 set from storage actionclock:player x_val
execute if score @s display_order matches 513 run data modify storage actionclock:player c5 set from storage actionclock:player h_val
execute if score @s display_order matches 513 run data modify storage actionclock:player c6 set from storage actionclock:player d_val
# 514: Kierunek -> Pogoda -> Zegar -> Glowka -> Dni -> Kordy
execute if score @s display_order matches 514 run data modify storage actionclock:player c1 set from storage actionclock:player f_val
execute if score @s display_order matches 514 run data modify storage actionclock:player c2 set from storage actionclock:player w_val
execute if score @s display_order matches 514 run data modify storage actionclock:player c3 set from storage actionclock:player c_val
execute if score @s display_order matches 514 run data modify storage actionclock:player c4 set from storage actionclock:player h_val
execute if score @s display_order matches 514 run data modify storage actionclock:player c5 set from storage actionclock:player d_val
execute if score @s display_order matches 514 run data modify storage actionclock:player c6 set from storage actionclock:player x_val
# 515: Kierunek -> Pogoda -> Zegar -> Glowka -> Kordy -> Dni
execute if score @s display_order matches 515 run data modify storage actionclock:player c1 set from storage actionclock:player f_val
execute if score @s display_order matches 515 run data modify storage actionclock:player c2 set from storage actionclock:player w_val
execute if score @s display_order matches 515 run data modify storage actionclock:player c3 set from storage actionclock:player c_val
execute if score @s display_order matches 515 run data modify storage actionclock:player c4 set from storage actionclock:player h_val
execute if score @s display_order matches 515 run data modify storage actionclock:player c5 set from storage actionclock:player x_val
execute if score @s display_order matches 515 run data modify storage actionclock:player c6 set from storage actionclock:player d_val
# 516: Kierunek -> Pogoda -> Kordy -> Dni -> Zegar -> Glowka
execute if score @s display_order matches 516 run data modify storage actionclock:player c1 set from storage actionclock:player f_val
execute if score @s display_order matches 516 run data modify storage actionclock:player c2 set from storage actionclock:player w_val
execute if score @s display_order matches 516 run data modify storage actionclock:player c3 set from storage actionclock:player x_val
execute if score @s display_order matches 516 run data modify storage actionclock:player c4 set from storage actionclock:player d_val
execute if score @s display_order matches 516 run data modify storage actionclock:player c5 set from storage actionclock:player c_val
execute if score @s display_order matches 516 run data modify storage actionclock:player c6 set from storage actionclock:player h_val
# 517: Kierunek -> Pogoda -> Kordy -> Dni -> Glowka -> Zegar
execute if score @s display_order matches 517 run data modify storage actionclock:player c1 set from storage actionclock:player f_val
execute if score @s display_order matches 517 run data modify storage actionclock:player c2 set from storage actionclock:player w_val
execute if score @s display_order matches 517 run data modify storage actionclock:player c3 set from storage actionclock:player x_val
execute if score @s display_order matches 517 run data modify storage actionclock:player c4 set from storage actionclock:player d_val
execute if score @s display_order matches 517 run data modify storage actionclock:player c5 set from storage actionclock:player h_val
execute if score @s display_order matches 517 run data modify storage actionclock:player c6 set from storage actionclock:player c_val
# 518: Kierunek -> Pogoda -> Kordy -> Zegar -> Dni -> Glowka
execute if score @s display_order matches 518 run data modify storage actionclock:player c1 set from storage actionclock:player f_val
execute if score @s display_order matches 518 run data modify storage actionclock:player c2 set from storage actionclock:player w_val
execute if score @s display_order matches 518 run data modify storage actionclock:player c3 set from storage actionclock:player x_val
execute if score @s display_order matches 518 run data modify storage actionclock:player c4 set from storage actionclock:player c_val
execute if score @s display_order matches 518 run data modify storage actionclock:player c5 set from storage actionclock:player d_val
execute if score @s display_order matches 518 run data modify storage actionclock:player c6 set from storage actionclock:player h_val
# 519: Kierunek -> Pogoda -> Kordy -> Zegar -> Glowka -> Dni
execute if score @s display_order matches 519 run data modify storage actionclock:player c1 set from storage actionclock:player f_val
execute if score @s display_order matches 519 run data modify storage actionclock:player c2 set from storage actionclock:player w_val
execute if score @s display_order matches 519 run data modify storage actionclock:player c3 set from storage actionclock:player x_val
execute if score @s display_order matches 519 run data modify storage actionclock:player c4 set from storage actionclock:player c_val
execute if score @s display_order matches 519 run data modify storage actionclock:player c5 set from storage actionclock:player h_val
execute if score @s display_order matches 519 run data modify storage actionclock:player c6 set from storage actionclock:player d_val
# 520: Kierunek -> Pogoda -> Kordy -> Glowka -> Dni -> Zegar
execute if score @s display_order matches 520 run data modify storage actionclock:player c1 set from storage actionclock:player f_val
execute if score @s display_order matches 520 run data modify storage actionclock:player c2 set from storage actionclock:player w_val
execute if score @s display_order matches 520 run data modify storage actionclock:player c3 set from storage actionclock:player x_val
execute if score @s display_order matches 520 run data modify storage actionclock:player c4 set from storage actionclock:player h_val
execute if score @s display_order matches 520 run data modify storage actionclock:player c5 set from storage actionclock:player d_val
execute if score @s display_order matches 520 run data modify storage actionclock:player c6 set from storage actionclock:player c_val
# 521: Kierunek -> Pogoda -> Kordy -> Glowka -> Zegar -> Dni
execute if score @s display_order matches 521 run data modify storage actionclock:player c1 set from storage actionclock:player f_val
execute if score @s display_order matches 521 run data modify storage actionclock:player c2 set from storage actionclock:player w_val
execute if score @s display_order matches 521 run data modify storage actionclock:player c3 set from storage actionclock:player x_val
execute if score @s display_order matches 521 run data modify storage actionclock:player c4 set from storage actionclock:player h_val
execute if score @s display_order matches 521 run data modify storage actionclock:player c5 set from storage actionclock:player c_val
execute if score @s display_order matches 521 run data modify storage actionclock:player c6 set from storage actionclock:player d_val
# 522: Kierunek -> Pogoda -> Glowka -> Dni -> Zegar -> Kordy
execute if score @s display_order matches 522 run data modify storage actionclock:player c1 set from storage actionclock:player f_val
execute if score @s display_order matches 522 run data modify storage actionclock:player c2 set from storage actionclock:player w_val
execute if score @s display_order matches 522 run data modify storage actionclock:player c3 set from storage actionclock:player h_val
execute if score @s display_order matches 522 run data modify storage actionclock:player c4 set from storage actionclock:player d_val
execute if score @s display_order matches 522 run data modify storage actionclock:player c5 set from storage actionclock:player c_val
execute if score @s display_order matches 522 run data modify storage actionclock:player c6 set from storage actionclock:player x_val
# 523: Kierunek -> Pogoda -> Glowka -> Dni -> Kordy -> Zegar
execute if score @s display_order matches 523 run data modify storage actionclock:player c1 set from storage actionclock:player f_val
execute if score @s display_order matches 523 run data modify storage actionclock:player c2 set from storage actionclock:player w_val
execute if score @s display_order matches 523 run data modify storage actionclock:player c3 set from storage actionclock:player h_val
execute if score @s display_order matches 523 run data modify storage actionclock:player c4 set from storage actionclock:player d_val
execute if score @s display_order matches 523 run data modify storage actionclock:player c5 set from storage actionclock:player x_val
execute if score @s display_order matches 523 run data modify storage actionclock:player c6 set from storage actionclock:player c_val
# 524: Kierunek -> Pogoda -> Glowka -> Zegar -> Dni -> Kordy
execute if score @s display_order matches 524 run data modify storage actionclock:player c1 set from storage actionclock:player f_val
execute if score @s display_order matches 524 run data modify storage actionclock:player c2 set from storage actionclock:player w_val
execute if score @s display_order matches 524 run data modify storage actionclock:player c3 set from storage actionclock:player h_val
execute if score @s display_order matches 524 run data modify storage actionclock:player c4 set from storage actionclock:player c_val
execute if score @s display_order matches 524 run data modify storage actionclock:player c5 set from storage actionclock:player d_val
execute if score @s display_order matches 524 run data modify storage actionclock:player c6 set from storage actionclock:player x_val
# 525: Kierunek -> Pogoda -> Glowka -> Zegar -> Kordy -> Dni
execute if score @s display_order matches 525 run data modify storage actionclock:player c1 set from storage actionclock:player f_val
execute if score @s display_order matches 525 run data modify storage actionclock:player c2 set from storage actionclock:player w_val
execute if score @s display_order matches 525 run data modify storage actionclock:player c3 set from storage actionclock:player h_val
execute if score @s display_order matches 525 run data modify storage actionclock:player c4 set from storage actionclock:player c_val
execute if score @s display_order matches 525 run data modify storage actionclock:player c5 set from storage actionclock:player x_val
execute if score @s display_order matches 525 run data modify storage actionclock:player c6 set from storage actionclock:player d_val
# 526: Kierunek -> Pogoda -> Glowka -> Kordy -> Dni -> Zegar
execute if score @s display_order matches 526 run data modify storage actionclock:player c1 set from storage actionclock:player f_val
execute if score @s display_order matches 526 run data modify storage actionclock:player c2 set from storage actionclock:player w_val
execute if score @s display_order matches 526 run data modify storage actionclock:player c3 set from storage actionclock:player h_val
execute if score @s display_order matches 526 run data modify storage actionclock:player c4 set from storage actionclock:player x_val
execute if score @s display_order matches 526 run data modify storage actionclock:player c5 set from storage actionclock:player d_val
execute if score @s display_order matches 526 run data modify storage actionclock:player c6 set from storage actionclock:player c_val
# 527: Kierunek -> Pogoda -> Glowka -> Kordy -> Zegar -> Dni
execute if score @s display_order matches 527 run data modify storage actionclock:player c1 set from storage actionclock:player f_val
execute if score @s display_order matches 527 run data modify storage actionclock:player c2 set from storage actionclock:player w_val
execute if score @s display_order matches 527 run data modify storage actionclock:player c3 set from storage actionclock:player h_val
execute if score @s display_order matches 527 run data modify storage actionclock:player c4 set from storage actionclock:player x_val
execute if score @s display_order matches 527 run data modify storage actionclock:player c5 set from storage actionclock:player c_val
execute if score @s display_order matches 527 run data modify storage actionclock:player c6 set from storage actionclock:player d_val
# 528: Kierunek -> Zegar -> Dni -> Pogoda -> Kordy -> Glowka
execute if score @s display_order matches 528 run data modify storage actionclock:player c1 set from storage actionclock:player f_val
execute if score @s display_order matches 528 run data modify storage actionclock:player c2 set from storage actionclock:player c_val
execute if score @s display_order matches 528 run data modify storage actionclock:player c3 set from storage actionclock:player d_val
execute if score @s display_order matches 528 run data modify storage actionclock:player c4 set from storage actionclock:player w_val
execute if score @s display_order matches 528 run data modify storage actionclock:player c5 set from storage actionclock:player x_val
execute if score @s display_order matches 528 run data modify storage actionclock:player c6 set from storage actionclock:player h_val
# 529: Kierunek -> Zegar -> Dni -> Pogoda -> Glowka -> Kordy
execute if score @s display_order matches 529 run data modify storage actionclock:player c1 set from storage actionclock:player f_val
execute if score @s display_order matches 529 run data modify storage actionclock:player c2 set from storage actionclock:player c_val
execute if score @s display_order matches 529 run data modify storage actionclock:player c3 set from storage actionclock:player d_val
execute if score @s display_order matches 529 run data modify storage actionclock:player c4 set from storage actionclock:player w_val
execute if score @s display_order matches 529 run data modify storage actionclock:player c5 set from storage actionclock:player h_val
execute if score @s display_order matches 529 run data modify storage actionclock:player c6 set from storage actionclock:player x_val
# 530: Kierunek -> Zegar -> Dni -> Kordy -> Pogoda -> Glowka
execute if score @s display_order matches 530 run data modify storage actionclock:player c1 set from storage actionclock:player f_val
execute if score @s display_order matches 530 run data modify storage actionclock:player c2 set from storage actionclock:player c_val
execute if score @s display_order matches 530 run data modify storage actionclock:player c3 set from storage actionclock:player d_val
execute if score @s display_order matches 530 run data modify storage actionclock:player c4 set from storage actionclock:player x_val
execute if score @s display_order matches 530 run data modify storage actionclock:player c5 set from storage actionclock:player w_val
execute if score @s display_order matches 530 run data modify storage actionclock:player c6 set from storage actionclock:player h_val
# 531: Kierunek -> Zegar -> Dni -> Kordy -> Glowka -> Pogoda
execute if score @s display_order matches 531 run data modify storage actionclock:player c1 set from storage actionclock:player f_val
execute if score @s display_order matches 531 run data modify storage actionclock:player c2 set from storage actionclock:player c_val
execute if score @s display_order matches 531 run data modify storage actionclock:player c3 set from storage actionclock:player d_val
execute if score @s display_order matches 531 run data modify storage actionclock:player c4 set from storage actionclock:player x_val
execute if score @s display_order matches 531 run data modify storage actionclock:player c5 set from storage actionclock:player h_val
execute if score @s display_order matches 531 run data modify storage actionclock:player c6 set from storage actionclock:player w_val
# 532: Kierunek -> Zegar -> Dni -> Glowka -> Pogoda -> Kordy
execute if score @s display_order matches 532 run data modify storage actionclock:player c1 set from storage actionclock:player f_val
execute if score @s display_order matches 532 run data modify storage actionclock:player c2 set from storage actionclock:player c_val
execute if score @s display_order matches 532 run data modify storage actionclock:player c3 set from storage actionclock:player d_val
execute if score @s display_order matches 532 run data modify storage actionclock:player c4 set from storage actionclock:player h_val
execute if score @s display_order matches 532 run data modify storage actionclock:player c5 set from storage actionclock:player w_val
execute if score @s display_order matches 532 run data modify storage actionclock:player c6 set from storage actionclock:player x_val
# 533: Kierunek -> Zegar -> Dni -> Glowka -> Kordy -> Pogoda
execute if score @s display_order matches 533 run data modify storage actionclock:player c1 set from storage actionclock:player f_val
execute if score @s display_order matches 533 run data modify storage actionclock:player c2 set from storage actionclock:player c_val
execute if score @s display_order matches 533 run data modify storage actionclock:player c3 set from storage actionclock:player d_val
execute if score @s display_order matches 533 run data modify storage actionclock:player c4 set from storage actionclock:player h_val
execute if score @s display_order matches 533 run data modify storage actionclock:player c5 set from storage actionclock:player x_val
execute if score @s display_order matches 533 run data modify storage actionclock:player c6 set from storage actionclock:player w_val
# 534: Kierunek -> Zegar -> Pogoda -> Dni -> Kordy -> Glowka
execute if score @s display_order matches 534 run data modify storage actionclock:player c1 set from storage actionclock:player f_val
execute if score @s display_order matches 534 run data modify storage actionclock:player c2 set from storage actionclock:player c_val
execute if score @s display_order matches 534 run data modify storage actionclock:player c3 set from storage actionclock:player w_val
execute if score @s display_order matches 534 run data modify storage actionclock:player c4 set from storage actionclock:player d_val
execute if score @s display_order matches 534 run data modify storage actionclock:player c5 set from storage actionclock:player x_val
execute if score @s display_order matches 534 run data modify storage actionclock:player c6 set from storage actionclock:player h_val
# 535: Kierunek -> Zegar -> Pogoda -> Dni -> Glowka -> Kordy
execute if score @s display_order matches 535 run data modify storage actionclock:player c1 set from storage actionclock:player f_val
execute if score @s display_order matches 535 run data modify storage actionclock:player c2 set from storage actionclock:player c_val
execute if score @s display_order matches 535 run data modify storage actionclock:player c3 set from storage actionclock:player w_val
execute if score @s display_order matches 535 run data modify storage actionclock:player c4 set from storage actionclock:player d_val
execute if score @s display_order matches 535 run data modify storage actionclock:player c5 set from storage actionclock:player h_val
execute if score @s display_order matches 535 run data modify storage actionclock:player c6 set from storage actionclock:player x_val
# 536: Kierunek -> Zegar -> Pogoda -> Kordy -> Dni -> Glowka
execute if score @s display_order matches 536 run data modify storage actionclock:player c1 set from storage actionclock:player f_val
execute if score @s display_order matches 536 run data modify storage actionclock:player c2 set from storage actionclock:player c_val
execute if score @s display_order matches 536 run data modify storage actionclock:player c3 set from storage actionclock:player w_val
execute if score @s display_order matches 536 run data modify storage actionclock:player c4 set from storage actionclock:player x_val
execute if score @s display_order matches 536 run data modify storage actionclock:player c5 set from storage actionclock:player d_val
execute if score @s display_order matches 536 run data modify storage actionclock:player c6 set from storage actionclock:player h_val
# 537: Kierunek -> Zegar -> Pogoda -> Kordy -> Glowka -> Dni
execute if score @s display_order matches 537 run data modify storage actionclock:player c1 set from storage actionclock:player f_val
execute if score @s display_order matches 537 run data modify storage actionclock:player c2 set from storage actionclock:player c_val
execute if score @s display_order matches 537 run data modify storage actionclock:player c3 set from storage actionclock:player w_val
execute if score @s display_order matches 537 run data modify storage actionclock:player c4 set from storage actionclock:player x_val
execute if score @s display_order matches 537 run data modify storage actionclock:player c5 set from storage actionclock:player h_val
execute if score @s display_order matches 537 run data modify storage actionclock:player c6 set from storage actionclock:player d_val
# 538: Kierunek -> Zegar -> Pogoda -> Glowka -> Dni -> Kordy
execute if score @s display_order matches 538 run data modify storage actionclock:player c1 set from storage actionclock:player f_val
execute if score @s display_order matches 538 run data modify storage actionclock:player c2 set from storage actionclock:player c_val
execute if score @s display_order matches 538 run data modify storage actionclock:player c3 set from storage actionclock:player w_val
execute if score @s display_order matches 538 run data modify storage actionclock:player c4 set from storage actionclock:player h_val
execute if score @s display_order matches 538 run data modify storage actionclock:player c5 set from storage actionclock:player d_val
execute if score @s display_order matches 538 run data modify storage actionclock:player c6 set from storage actionclock:player x_val
# 539: Kierunek -> Zegar -> Pogoda -> Glowka -> Kordy -> Dni
execute if score @s display_order matches 539 run data modify storage actionclock:player c1 set from storage actionclock:player f_val
execute if score @s display_order matches 539 run data modify storage actionclock:player c2 set from storage actionclock:player c_val
execute if score @s display_order matches 539 run data modify storage actionclock:player c3 set from storage actionclock:player w_val
execute if score @s display_order matches 539 run data modify storage actionclock:player c4 set from storage actionclock:player h_val
execute if score @s display_order matches 539 run data modify storage actionclock:player c5 set from storage actionclock:player x_val
execute if score @s display_order matches 539 run data modify storage actionclock:player c6 set from storage actionclock:player d_val
# 540: Kierunek -> Zegar -> Kordy -> Dni -> Pogoda -> Glowka
execute if score @s display_order matches 540 run data modify storage actionclock:player c1 set from storage actionclock:player f_val
execute if score @s display_order matches 540 run data modify storage actionclock:player c2 set from storage actionclock:player c_val
execute if score @s display_order matches 540 run data modify storage actionclock:player c3 set from storage actionclock:player x_val
execute if score @s display_order matches 540 run data modify storage actionclock:player c4 set from storage actionclock:player d_val
execute if score @s display_order matches 540 run data modify storage actionclock:player c5 set from storage actionclock:player w_val
execute if score @s display_order matches 540 run data modify storage actionclock:player c6 set from storage actionclock:player h_val
# 541: Kierunek -> Zegar -> Kordy -> Dni -> Glowka -> Pogoda
execute if score @s display_order matches 541 run data modify storage actionclock:player c1 set from storage actionclock:player f_val
execute if score @s display_order matches 541 run data modify storage actionclock:player c2 set from storage actionclock:player c_val
execute if score @s display_order matches 541 run data modify storage actionclock:player c3 set from storage actionclock:player x_val
execute if score @s display_order matches 541 run data modify storage actionclock:player c4 set from storage actionclock:player d_val
execute if score @s display_order matches 541 run data modify storage actionclock:player c5 set from storage actionclock:player h_val
execute if score @s display_order matches 541 run data modify storage actionclock:player c6 set from storage actionclock:player w_val
# 542: Kierunek -> Zegar -> Kordy -> Pogoda -> Dni -> Glowka
execute if score @s display_order matches 542 run data modify storage actionclock:player c1 set from storage actionclock:player f_val
execute if score @s display_order matches 542 run data modify storage actionclock:player c2 set from storage actionclock:player c_val
execute if score @s display_order matches 542 run data modify storage actionclock:player c3 set from storage actionclock:player x_val
execute if score @s display_order matches 542 run data modify storage actionclock:player c4 set from storage actionclock:player w_val
execute if score @s display_order matches 542 run data modify storage actionclock:player c5 set from storage actionclock:player d_val
execute if score @s display_order matches 542 run data modify storage actionclock:player c6 set from storage actionclock:player h_val
# 543: Kierunek -> Zegar -> Kordy -> Pogoda -> Glowka -> Dni
execute if score @s display_order matches 543 run data modify storage actionclock:player c1 set from storage actionclock:player f_val
execute if score @s display_order matches 543 run data modify storage actionclock:player c2 set from storage actionclock:player c_val
execute if score @s display_order matches 543 run data modify storage actionclock:player c3 set from storage actionclock:player x_val
execute if score @s display_order matches 543 run data modify storage actionclock:player c4 set from storage actionclock:player w_val
execute if score @s display_order matches 543 run data modify storage actionclock:player c5 set from storage actionclock:player h_val
execute if score @s display_order matches 543 run data modify storage actionclock:player c6 set from storage actionclock:player d_val
# 544: Kierunek -> Zegar -> Kordy -> Glowka -> Dni -> Pogoda
execute if score @s display_order matches 544 run data modify storage actionclock:player c1 set from storage actionclock:player f_val
execute if score @s display_order matches 544 run data modify storage actionclock:player c2 set from storage actionclock:player c_val
execute if score @s display_order matches 544 run data modify storage actionclock:player c3 set from storage actionclock:player x_val
execute if score @s display_order matches 544 run data modify storage actionclock:player c4 set from storage actionclock:player h_val
execute if score @s display_order matches 544 run data modify storage actionclock:player c5 set from storage actionclock:player d_val
execute if score @s display_order matches 544 run data modify storage actionclock:player c6 set from storage actionclock:player w_val
# 545: Kierunek -> Zegar -> Kordy -> Glowka -> Pogoda -> Dni
execute if score @s display_order matches 545 run data modify storage actionclock:player c1 set from storage actionclock:player f_val
execute if score @s display_order matches 545 run data modify storage actionclock:player c2 set from storage actionclock:player c_val
execute if score @s display_order matches 545 run data modify storage actionclock:player c3 set from storage actionclock:player x_val
execute if score @s display_order matches 545 run data modify storage actionclock:player c4 set from storage actionclock:player h_val
execute if score @s display_order matches 545 run data modify storage actionclock:player c5 set from storage actionclock:player w_val
execute if score @s display_order matches 545 run data modify storage actionclock:player c6 set from storage actionclock:player d_val
# 546: Kierunek -> Zegar -> Glowka -> Dni -> Pogoda -> Kordy
execute if score @s display_order matches 546 run data modify storage actionclock:player c1 set from storage actionclock:player f_val
execute if score @s display_order matches 546 run data modify storage actionclock:player c2 set from storage actionclock:player c_val
execute if score @s display_order matches 546 run data modify storage actionclock:player c3 set from storage actionclock:player h_val
execute if score @s display_order matches 546 run data modify storage actionclock:player c4 set from storage actionclock:player d_val
execute if score @s display_order matches 546 run data modify storage actionclock:player c5 set from storage actionclock:player w_val
execute if score @s display_order matches 546 run data modify storage actionclock:player c6 set from storage actionclock:player x_val
# 547: Kierunek -> Zegar -> Glowka -> Dni -> Kordy -> Pogoda
execute if score @s display_order matches 547 run data modify storage actionclock:player c1 set from storage actionclock:player f_val
execute if score @s display_order matches 547 run data modify storage actionclock:player c2 set from storage actionclock:player c_val
execute if score @s display_order matches 547 run data modify storage actionclock:player c3 set from storage actionclock:player h_val
execute if score @s display_order matches 547 run data modify storage actionclock:player c4 set from storage actionclock:player d_val
execute if score @s display_order matches 547 run data modify storage actionclock:player c5 set from storage actionclock:player x_val
execute if score @s display_order matches 547 run data modify storage actionclock:player c6 set from storage actionclock:player w_val
# 548: Kierunek -> Zegar -> Glowka -> Pogoda -> Dni -> Kordy
execute if score @s display_order matches 548 run data modify storage actionclock:player c1 set from storage actionclock:player f_val
execute if score @s display_order matches 548 run data modify storage actionclock:player c2 set from storage actionclock:player c_val
execute if score @s display_order matches 548 run data modify storage actionclock:player c3 set from storage actionclock:player h_val
execute if score @s display_order matches 548 run data modify storage actionclock:player c4 set from storage actionclock:player w_val
execute if score @s display_order matches 548 run data modify storage actionclock:player c5 set from storage actionclock:player d_val
execute if score @s display_order matches 548 run data modify storage actionclock:player c6 set from storage actionclock:player x_val
# 549: Kierunek -> Zegar -> Glowka -> Pogoda -> Kordy -> Dni
execute if score @s display_order matches 549 run data modify storage actionclock:player c1 set from storage actionclock:player f_val
execute if score @s display_order matches 549 run data modify storage actionclock:player c2 set from storage actionclock:player c_val
execute if score @s display_order matches 549 run data modify storage actionclock:player c3 set from storage actionclock:player h_val
execute if score @s display_order matches 549 run data modify storage actionclock:player c4 set from storage actionclock:player w_val
execute if score @s display_order matches 549 run data modify storage actionclock:player c5 set from storage actionclock:player x_val
execute if score @s display_order matches 549 run data modify storage actionclock:player c6 set from storage actionclock:player d_val
# 550: Kierunek -> Zegar -> Glowka -> Kordy -> Dni -> Pogoda
execute if score @s display_order matches 550 run data modify storage actionclock:player c1 set from storage actionclock:player f_val
execute if score @s display_order matches 550 run data modify storage actionclock:player c2 set from storage actionclock:player c_val
execute if score @s display_order matches 550 run data modify storage actionclock:player c3 set from storage actionclock:player h_val
execute if score @s display_order matches 550 run data modify storage actionclock:player c4 set from storage actionclock:player x_val
execute if score @s display_order matches 550 run data modify storage actionclock:player c5 set from storage actionclock:player d_val
execute if score @s display_order matches 550 run data modify storage actionclock:player c6 set from storage actionclock:player w_val
# 551: Kierunek -> Zegar -> Glowka -> Kordy -> Pogoda -> Dni
execute if score @s display_order matches 551 run data modify storage actionclock:player c1 set from storage actionclock:player f_val
execute if score @s display_order matches 551 run data modify storage actionclock:player c2 set from storage actionclock:player c_val
execute if score @s display_order matches 551 run data modify storage actionclock:player c3 set from storage actionclock:player h_val
execute if score @s display_order matches 551 run data modify storage actionclock:player c4 set from storage actionclock:player x_val
execute if score @s display_order matches 551 run data modify storage actionclock:player c5 set from storage actionclock:player w_val
execute if score @s display_order matches 551 run data modify storage actionclock:player c6 set from storage actionclock:player d_val
# 552: Kierunek -> Kordy -> Dni -> Pogoda -> Zegar -> Glowka
execute if score @s display_order matches 552 run data modify storage actionclock:player c1 set from storage actionclock:player f_val
execute if score @s display_order matches 552 run data modify storage actionclock:player c2 set from storage actionclock:player x_val
execute if score @s display_order matches 552 run data modify storage actionclock:player c3 set from storage actionclock:player d_val
execute if score @s display_order matches 552 run data modify storage actionclock:player c4 set from storage actionclock:player w_val
execute if score @s display_order matches 552 run data modify storage actionclock:player c5 set from storage actionclock:player c_val
execute if score @s display_order matches 552 run data modify storage actionclock:player c6 set from storage actionclock:player h_val
# 553: Kierunek -> Kordy -> Dni -> Pogoda -> Glowka -> Zegar
execute if score @s display_order matches 553 run data modify storage actionclock:player c1 set from storage actionclock:player f_val
execute if score @s display_order matches 553 run data modify storage actionclock:player c2 set from storage actionclock:player x_val
execute if score @s display_order matches 553 run data modify storage actionclock:player c3 set from storage actionclock:player d_val
execute if score @s display_order matches 553 run data modify storage actionclock:player c4 set from storage actionclock:player w_val
execute if score @s display_order matches 553 run data modify storage actionclock:player c5 set from storage actionclock:player h_val
execute if score @s display_order matches 553 run data modify storage actionclock:player c6 set from storage actionclock:player c_val
# 554: Kierunek -> Kordy -> Dni -> Zegar -> Pogoda -> Glowka
execute if score @s display_order matches 554 run data modify storage actionclock:player c1 set from storage actionclock:player f_val
execute if score @s display_order matches 554 run data modify storage actionclock:player c2 set from storage actionclock:player x_val
execute if score @s display_order matches 554 run data modify storage actionclock:player c3 set from storage actionclock:player d_val
execute if score @s display_order matches 554 run data modify storage actionclock:player c4 set from storage actionclock:player c_val
execute if score @s display_order matches 554 run data modify storage actionclock:player c5 set from storage actionclock:player w_val
execute if score @s display_order matches 554 run data modify storage actionclock:player c6 set from storage actionclock:player h_val
# 555: Kierunek -> Kordy -> Dni -> Zegar -> Glowka -> Pogoda
execute if score @s display_order matches 555 run data modify storage actionclock:player c1 set from storage actionclock:player f_val
execute if score @s display_order matches 555 run data modify storage actionclock:player c2 set from storage actionclock:player x_val
execute if score @s display_order matches 555 run data modify storage actionclock:player c3 set from storage actionclock:player d_val
execute if score @s display_order matches 555 run data modify storage actionclock:player c4 set from storage actionclock:player c_val
execute if score @s display_order matches 555 run data modify storage actionclock:player c5 set from storage actionclock:player h_val
execute if score @s display_order matches 555 run data modify storage actionclock:player c6 set from storage actionclock:player w_val
# 556: Kierunek -> Kordy -> Dni -> Glowka -> Pogoda -> Zegar
execute if score @s display_order matches 556 run data modify storage actionclock:player c1 set from storage actionclock:player f_val
execute if score @s display_order matches 556 run data modify storage actionclock:player c2 set from storage actionclock:player x_val
execute if score @s display_order matches 556 run data modify storage actionclock:player c3 set from storage actionclock:player d_val
execute if score @s display_order matches 556 run data modify storage actionclock:player c4 set from storage actionclock:player h_val
execute if score @s display_order matches 556 run data modify storage actionclock:player c5 set from storage actionclock:player w_val
execute if score @s display_order matches 556 run data modify storage actionclock:player c6 set from storage actionclock:player c_val
# 557: Kierunek -> Kordy -> Dni -> Glowka -> Zegar -> Pogoda
execute if score @s display_order matches 557 run data modify storage actionclock:player c1 set from storage actionclock:player f_val
execute if score @s display_order matches 557 run data modify storage actionclock:player c2 set from storage actionclock:player x_val
execute if score @s display_order matches 557 run data modify storage actionclock:player c3 set from storage actionclock:player d_val
execute if score @s display_order matches 557 run data modify storage actionclock:player c4 set from storage actionclock:player h_val
execute if score @s display_order matches 557 run data modify storage actionclock:player c5 set from storage actionclock:player c_val
execute if score @s display_order matches 557 run data modify storage actionclock:player c6 set from storage actionclock:player w_val
# 558: Kierunek -> Kordy -> Pogoda -> Dni -> Zegar -> Glowka
execute if score @s display_order matches 558 run data modify storage actionclock:player c1 set from storage actionclock:player f_val
execute if score @s display_order matches 558 run data modify storage actionclock:player c2 set from storage actionclock:player x_val
execute if score @s display_order matches 558 run data modify storage actionclock:player c3 set from storage actionclock:player w_val
execute if score @s display_order matches 558 run data modify storage actionclock:player c4 set from storage actionclock:player d_val
execute if score @s display_order matches 558 run data modify storage actionclock:player c5 set from storage actionclock:player c_val
execute if score @s display_order matches 558 run data modify storage actionclock:player c6 set from storage actionclock:player h_val
# 559: Kierunek -> Kordy -> Pogoda -> Dni -> Glowka -> Zegar
execute if score @s display_order matches 559 run data modify storage actionclock:player c1 set from storage actionclock:player f_val
execute if score @s display_order matches 559 run data modify storage actionclock:player c2 set from storage actionclock:player x_val
execute if score @s display_order matches 559 run data modify storage actionclock:player c3 set from storage actionclock:player w_val
execute if score @s display_order matches 559 run data modify storage actionclock:player c4 set from storage actionclock:player d_val
execute if score @s display_order matches 559 run data modify storage actionclock:player c5 set from storage actionclock:player h_val
execute if score @s display_order matches 559 run data modify storage actionclock:player c6 set from storage actionclock:player c_val
# 560: Kierunek -> Kordy -> Pogoda -> Zegar -> Dni -> Glowka
execute if score @s display_order matches 560 run data modify storage actionclock:player c1 set from storage actionclock:player f_val
execute if score @s display_order matches 560 run data modify storage actionclock:player c2 set from storage actionclock:player x_val
execute if score @s display_order matches 560 run data modify storage actionclock:player c3 set from storage actionclock:player w_val
execute if score @s display_order matches 560 run data modify storage actionclock:player c4 set from storage actionclock:player c_val
execute if score @s display_order matches 560 run data modify storage actionclock:player c5 set from storage actionclock:player d_val
execute if score @s display_order matches 560 run data modify storage actionclock:player c6 set from storage actionclock:player h_val
# 561: Kierunek -> Kordy -> Pogoda -> Zegar -> Glowka -> Dni
execute if score @s display_order matches 561 run data modify storage actionclock:player c1 set from storage actionclock:player f_val
execute if score @s display_order matches 561 run data modify storage actionclock:player c2 set from storage actionclock:player x_val
execute if score @s display_order matches 561 run data modify storage actionclock:player c3 set from storage actionclock:player w_val
execute if score @s display_order matches 561 run data modify storage actionclock:player c4 set from storage actionclock:player c_val
execute if score @s display_order matches 561 run data modify storage actionclock:player c5 set from storage actionclock:player h_val
execute if score @s display_order matches 561 run data modify storage actionclock:player c6 set from storage actionclock:player d_val
# 562: Kierunek -> Kordy -> Pogoda -> Glowka -> Dni -> Zegar
execute if score @s display_order matches 562 run data modify storage actionclock:player c1 set from storage actionclock:player f_val
execute if score @s display_order matches 562 run data modify storage actionclock:player c2 set from storage actionclock:player x_val
execute if score @s display_order matches 562 run data modify storage actionclock:player c3 set from storage actionclock:player w_val
execute if score @s display_order matches 562 run data modify storage actionclock:player c4 set from storage actionclock:player h_val
execute if score @s display_order matches 562 run data modify storage actionclock:player c5 set from storage actionclock:player d_val
execute if score @s display_order matches 562 run data modify storage actionclock:player c6 set from storage actionclock:player c_val
# 563: Kierunek -> Kordy -> Pogoda -> Glowka -> Zegar -> Dni
execute if score @s display_order matches 563 run data modify storage actionclock:player c1 set from storage actionclock:player f_val
execute if score @s display_order matches 563 run data modify storage actionclock:player c2 set from storage actionclock:player x_val
execute if score @s display_order matches 563 run data modify storage actionclock:player c3 set from storage actionclock:player w_val
execute if score @s display_order matches 563 run data modify storage actionclock:player c4 set from storage actionclock:player h_val
execute if score @s display_order matches 563 run data modify storage actionclock:player c5 set from storage actionclock:player c_val
execute if score @s display_order matches 563 run data modify storage actionclock:player c6 set from storage actionclock:player d_val
# 564: Kierunek -> Kordy -> Zegar -> Dni -> Pogoda -> Glowka
execute if score @s display_order matches 564 run data modify storage actionclock:player c1 set from storage actionclock:player f_val
execute if score @s display_order matches 564 run data modify storage actionclock:player c2 set from storage actionclock:player x_val
execute if score @s display_order matches 564 run data modify storage actionclock:player c3 set from storage actionclock:player c_val
execute if score @s display_order matches 564 run data modify storage actionclock:player c4 set from storage actionclock:player d_val
execute if score @s display_order matches 564 run data modify storage actionclock:player c5 set from storage actionclock:player w_val
execute if score @s display_order matches 564 run data modify storage actionclock:player c6 set from storage actionclock:player h_val
# 565: Kierunek -> Kordy -> Zegar -> Dni -> Glowka -> Pogoda
execute if score @s display_order matches 565 run data modify storage actionclock:player c1 set from storage actionclock:player f_val
execute if score @s display_order matches 565 run data modify storage actionclock:player c2 set from storage actionclock:player x_val
execute if score @s display_order matches 565 run data modify storage actionclock:player c3 set from storage actionclock:player c_val
execute if score @s display_order matches 565 run data modify storage actionclock:player c4 set from storage actionclock:player d_val
execute if score @s display_order matches 565 run data modify storage actionclock:player c5 set from storage actionclock:player h_val
execute if score @s display_order matches 565 run data modify storage actionclock:player c6 set from storage actionclock:player w_val
# 566: Kierunek -> Kordy -> Zegar -> Pogoda -> Dni -> Glowka
execute if score @s display_order matches 566 run data modify storage actionclock:player c1 set from storage actionclock:player f_val
execute if score @s display_order matches 566 run data modify storage actionclock:player c2 set from storage actionclock:player x_val
execute if score @s display_order matches 566 run data modify storage actionclock:player c3 set from storage actionclock:player c_val
execute if score @s display_order matches 566 run data modify storage actionclock:player c4 set from storage actionclock:player w_val
execute if score @s display_order matches 566 run data modify storage actionclock:player c5 set from storage actionclock:player d_val
execute if score @s display_order matches 566 run data modify storage actionclock:player c6 set from storage actionclock:player h_val
# 567: Kierunek -> Kordy -> Zegar -> Pogoda -> Glowka -> Dni
execute if score @s display_order matches 567 run data modify storage actionclock:player c1 set from storage actionclock:player f_val
execute if score @s display_order matches 567 run data modify storage actionclock:player c2 set from storage actionclock:player x_val
execute if score @s display_order matches 567 run data modify storage actionclock:player c3 set from storage actionclock:player c_val
execute if score @s display_order matches 567 run data modify storage actionclock:player c4 set from storage actionclock:player w_val
execute if score @s display_order matches 567 run data modify storage actionclock:player c5 set from storage actionclock:player h_val
execute if score @s display_order matches 567 run data modify storage actionclock:player c6 set from storage actionclock:player d_val
# 568: Kierunek -> Kordy -> Zegar -> Glowka -> Dni -> Pogoda
execute if score @s display_order matches 568 run data modify storage actionclock:player c1 set from storage actionclock:player f_val
execute if score @s display_order matches 568 run data modify storage actionclock:player c2 set from storage actionclock:player x_val
execute if score @s display_order matches 568 run data modify storage actionclock:player c3 set from storage actionclock:player c_val
execute if score @s display_order matches 568 run data modify storage actionclock:player c4 set from storage actionclock:player h_val
execute if score @s display_order matches 568 run data modify storage actionclock:player c5 set from storage actionclock:player d_val
execute if score @s display_order matches 568 run data modify storage actionclock:player c6 set from storage actionclock:player w_val
# 569: Kierunek -> Kordy -> Zegar -> Glowka -> Pogoda -> Dni
execute if score @s display_order matches 569 run data modify storage actionclock:player c1 set from storage actionclock:player f_val
execute if score @s display_order matches 569 run data modify storage actionclock:player c2 set from storage actionclock:player x_val
execute if score @s display_order matches 569 run data modify storage actionclock:player c3 set from storage actionclock:player c_val
execute if score @s display_order matches 569 run data modify storage actionclock:player c4 set from storage actionclock:player h_val
execute if score @s display_order matches 569 run data modify storage actionclock:player c5 set from storage actionclock:player w_val
execute if score @s display_order matches 569 run data modify storage actionclock:player c6 set from storage actionclock:player d_val
# 570: Kierunek -> Kordy -> Glowka -> Dni -> Pogoda -> Zegar
execute if score @s display_order matches 570 run data modify storage actionclock:player c1 set from storage actionclock:player f_val
execute if score @s display_order matches 570 run data modify storage actionclock:player c2 set from storage actionclock:player x_val
execute if score @s display_order matches 570 run data modify storage actionclock:player c3 set from storage actionclock:player h_val
execute if score @s display_order matches 570 run data modify storage actionclock:player c4 set from storage actionclock:player d_val
execute if score @s display_order matches 570 run data modify storage actionclock:player c5 set from storage actionclock:player w_val
execute if score @s display_order matches 570 run data modify storage actionclock:player c6 set from storage actionclock:player c_val
# 571: Kierunek -> Kordy -> Glowka -> Dni -> Zegar -> Pogoda
execute if score @s display_order matches 571 run data modify storage actionclock:player c1 set from storage actionclock:player f_val
execute if score @s display_order matches 571 run data modify storage actionclock:player c2 set from storage actionclock:player x_val
execute if score @s display_order matches 571 run data modify storage actionclock:player c3 set from storage actionclock:player h_val
execute if score @s display_order matches 571 run data modify storage actionclock:player c4 set from storage actionclock:player d_val
execute if score @s display_order matches 571 run data modify storage actionclock:player c5 set from storage actionclock:player c_val
execute if score @s display_order matches 571 run data modify storage actionclock:player c6 set from storage actionclock:player w_val
# 572: Kierunek -> Kordy -> Glowka -> Pogoda -> Dni -> Zegar
execute if score @s display_order matches 572 run data modify storage actionclock:player c1 set from storage actionclock:player f_val
execute if score @s display_order matches 572 run data modify storage actionclock:player c2 set from storage actionclock:player x_val
execute if score @s display_order matches 572 run data modify storage actionclock:player c3 set from storage actionclock:player h_val
execute if score @s display_order matches 572 run data modify storage actionclock:player c4 set from storage actionclock:player w_val
execute if score @s display_order matches 572 run data modify storage actionclock:player c5 set from storage actionclock:player d_val
execute if score @s display_order matches 572 run data modify storage actionclock:player c6 set from storage actionclock:player c_val
# 573: Kierunek -> Kordy -> Glowka -> Pogoda -> Zegar -> Dni
execute if score @s display_order matches 573 run data modify storage actionclock:player c1 set from storage actionclock:player f_val
execute if score @s display_order matches 573 run data modify storage actionclock:player c2 set from storage actionclock:player x_val
execute if score @s display_order matches 573 run data modify storage actionclock:player c3 set from storage actionclock:player h_val
execute if score @s display_order matches 573 run data modify storage actionclock:player c4 set from storage actionclock:player w_val
execute if score @s display_order matches 573 run data modify storage actionclock:player c5 set from storage actionclock:player c_val
execute if score @s display_order matches 573 run data modify storage actionclock:player c6 set from storage actionclock:player d_val
# 574: Kierunek -> Kordy -> Glowka -> Zegar -> Dni -> Pogoda
execute if score @s display_order matches 574 run data modify storage actionclock:player c1 set from storage actionclock:player f_val
execute if score @s display_order matches 574 run data modify storage actionclock:player c2 set from storage actionclock:player x_val
execute if score @s display_order matches 574 run data modify storage actionclock:player c3 set from storage actionclock:player h_val
execute if score @s display_order matches 574 run data modify storage actionclock:player c4 set from storage actionclock:player c_val
execute if score @s display_order matches 574 run data modify storage actionclock:player c5 set from storage actionclock:player d_val
execute if score @s display_order matches 574 run data modify storage actionclock:player c6 set from storage actionclock:player w_val
# 575: Kierunek -> Kordy -> Glowka -> Zegar -> Pogoda -> Dni
execute if score @s display_order matches 575 run data modify storage actionclock:player c1 set from storage actionclock:player f_val
execute if score @s display_order matches 575 run data modify storage actionclock:player c2 set from storage actionclock:player x_val
execute if score @s display_order matches 575 run data modify storage actionclock:player c3 set from storage actionclock:player h_val
execute if score @s display_order matches 575 run data modify storage actionclock:player c4 set from storage actionclock:player c_val
execute if score @s display_order matches 575 run data modify storage actionclock:player c5 set from storage actionclock:player w_val
execute if score @s display_order matches 575 run data modify storage actionclock:player c6 set from storage actionclock:player d_val
# 576: Kierunek -> Glowka -> Dni -> Pogoda -> Zegar -> Kordy
execute if score @s display_order matches 576 run data modify storage actionclock:player c1 set from storage actionclock:player f_val
execute if score @s display_order matches 576 run data modify storage actionclock:player c2 set from storage actionclock:player h_val
execute if score @s display_order matches 576 run data modify storage actionclock:player c3 set from storage actionclock:player d_val
execute if score @s display_order matches 576 run data modify storage actionclock:player c4 set from storage actionclock:player w_val
execute if score @s display_order matches 576 run data modify storage actionclock:player c5 set from storage actionclock:player c_val
execute if score @s display_order matches 576 run data modify storage actionclock:player c6 set from storage actionclock:player x_val
# 577: Kierunek -> Glowka -> Dni -> Pogoda -> Kordy -> Zegar
execute if score @s display_order matches 577 run data modify storage actionclock:player c1 set from storage actionclock:player f_val
execute if score @s display_order matches 577 run data modify storage actionclock:player c2 set from storage actionclock:player h_val
execute if score @s display_order matches 577 run data modify storage actionclock:player c3 set from storage actionclock:player d_val
execute if score @s display_order matches 577 run data modify storage actionclock:player c4 set from storage actionclock:player w_val
execute if score @s display_order matches 577 run data modify storage actionclock:player c5 set from storage actionclock:player x_val
execute if score @s display_order matches 577 run data modify storage actionclock:player c6 set from storage actionclock:player c_val
# 578: Kierunek -> Glowka -> Dni -> Zegar -> Pogoda -> Kordy
execute if score @s display_order matches 578 run data modify storage actionclock:player c1 set from storage actionclock:player f_val
execute if score @s display_order matches 578 run data modify storage actionclock:player c2 set from storage actionclock:player h_val
execute if score @s display_order matches 578 run data modify storage actionclock:player c3 set from storage actionclock:player d_val
execute if score @s display_order matches 578 run data modify storage actionclock:player c4 set from storage actionclock:player c_val
execute if score @s display_order matches 578 run data modify storage actionclock:player c5 set from storage actionclock:player w_val
execute if score @s display_order matches 578 run data modify storage actionclock:player c6 set from storage actionclock:player x_val
# 579: Kierunek -> Glowka -> Dni -> Zegar -> Kordy -> Pogoda
execute if score @s display_order matches 579 run data modify storage actionclock:player c1 set from storage actionclock:player f_val
execute if score @s display_order matches 579 run data modify storage actionclock:player c2 set from storage actionclock:player h_val
execute if score @s display_order matches 579 run data modify storage actionclock:player c3 set from storage actionclock:player d_val
execute if score @s display_order matches 579 run data modify storage actionclock:player c4 set from storage actionclock:player c_val
execute if score @s display_order matches 579 run data modify storage actionclock:player c5 set from storage actionclock:player x_val
execute if score @s display_order matches 579 run data modify storage actionclock:player c6 set from storage actionclock:player w_val
# 580: Kierunek -> Glowka -> Dni -> Kordy -> Pogoda -> Zegar
execute if score @s display_order matches 580 run data modify storage actionclock:player c1 set from storage actionclock:player f_val
execute if score @s display_order matches 580 run data modify storage actionclock:player c2 set from storage actionclock:player h_val
execute if score @s display_order matches 580 run data modify storage actionclock:player c3 set from storage actionclock:player d_val
execute if score @s display_order matches 580 run data modify storage actionclock:player c4 set from storage actionclock:player x_val
execute if score @s display_order matches 580 run data modify storage actionclock:player c5 set from storage actionclock:player w_val
execute if score @s display_order matches 580 run data modify storage actionclock:player c6 set from storage actionclock:player c_val
# 581: Kierunek -> Glowka -> Dni -> Kordy -> Zegar -> Pogoda
execute if score @s display_order matches 581 run data modify storage actionclock:player c1 set from storage actionclock:player f_val
execute if score @s display_order matches 581 run data modify storage actionclock:player c2 set from storage actionclock:player h_val
execute if score @s display_order matches 581 run data modify storage actionclock:player c3 set from storage actionclock:player d_val
execute if score @s display_order matches 581 run data modify storage actionclock:player c4 set from storage actionclock:player x_val
execute if score @s display_order matches 581 run data modify storage actionclock:player c5 set from storage actionclock:player c_val
execute if score @s display_order matches 581 run data modify storage actionclock:player c6 set from storage actionclock:player w_val
# 582: Kierunek -> Glowka -> Pogoda -> Dni -> Zegar -> Kordy
execute if score @s display_order matches 582 run data modify storage actionclock:player c1 set from storage actionclock:player f_val
execute if score @s display_order matches 582 run data modify storage actionclock:player c2 set from storage actionclock:player h_val
execute if score @s display_order matches 582 run data modify storage actionclock:player c3 set from storage actionclock:player w_val
execute if score @s display_order matches 582 run data modify storage actionclock:player c4 set from storage actionclock:player d_val
execute if score @s display_order matches 582 run data modify storage actionclock:player c5 set from storage actionclock:player c_val
execute if score @s display_order matches 582 run data modify storage actionclock:player c6 set from storage actionclock:player x_val
# 583: Kierunek -> Glowka -> Pogoda -> Dni -> Kordy -> Zegar
execute if score @s display_order matches 583 run data modify storage actionclock:player c1 set from storage actionclock:player f_val
execute if score @s display_order matches 583 run data modify storage actionclock:player c2 set from storage actionclock:player h_val
execute if score @s display_order matches 583 run data modify storage actionclock:player c3 set from storage actionclock:player w_val
execute if score @s display_order matches 583 run data modify storage actionclock:player c4 set from storage actionclock:player d_val
execute if score @s display_order matches 583 run data modify storage actionclock:player c5 set from storage actionclock:player x_val
execute if score @s display_order matches 583 run data modify storage actionclock:player c6 set from storage actionclock:player c_val
# 584: Kierunek -> Glowka -> Pogoda -> Zegar -> Dni -> Kordy
execute if score @s display_order matches 584 run data modify storage actionclock:player c1 set from storage actionclock:player f_val
execute if score @s display_order matches 584 run data modify storage actionclock:player c2 set from storage actionclock:player h_val
execute if score @s display_order matches 584 run data modify storage actionclock:player c3 set from storage actionclock:player w_val
execute if score @s display_order matches 584 run data modify storage actionclock:player c4 set from storage actionclock:player c_val
execute if score @s display_order matches 584 run data modify storage actionclock:player c5 set from storage actionclock:player d_val
execute if score @s display_order matches 584 run data modify storage actionclock:player c6 set from storage actionclock:player x_val
# 585: Kierunek -> Glowka -> Pogoda -> Zegar -> Kordy -> Dni
execute if score @s display_order matches 585 run data modify storage actionclock:player c1 set from storage actionclock:player f_val
execute if score @s display_order matches 585 run data modify storage actionclock:player c2 set from storage actionclock:player h_val
execute if score @s display_order matches 585 run data modify storage actionclock:player c3 set from storage actionclock:player w_val
execute if score @s display_order matches 585 run data modify storage actionclock:player c4 set from storage actionclock:player c_val
execute if score @s display_order matches 585 run data modify storage actionclock:player c5 set from storage actionclock:player x_val
execute if score @s display_order matches 585 run data modify storage actionclock:player c6 set from storage actionclock:player d_val
# 586: Kierunek -> Glowka -> Pogoda -> Kordy -> Dni -> Zegar
execute if score @s display_order matches 586 run data modify storage actionclock:player c1 set from storage actionclock:player f_val
execute if score @s display_order matches 586 run data modify storage actionclock:player c2 set from storage actionclock:player h_val
execute if score @s display_order matches 586 run data modify storage actionclock:player c3 set from storage actionclock:player w_val
execute if score @s display_order matches 586 run data modify storage actionclock:player c4 set from storage actionclock:player x_val
execute if score @s display_order matches 586 run data modify storage actionclock:player c5 set from storage actionclock:player d_val
execute if score @s display_order matches 586 run data modify storage actionclock:player c6 set from storage actionclock:player c_val
# 587: Kierunek -> Glowka -> Pogoda -> Kordy -> Zegar -> Dni
execute if score @s display_order matches 587 run data modify storage actionclock:player c1 set from storage actionclock:player f_val
execute if score @s display_order matches 587 run data modify storage actionclock:player c2 set from storage actionclock:player h_val
execute if score @s display_order matches 587 run data modify storage actionclock:player c3 set from storage actionclock:player w_val
execute if score @s display_order matches 587 run data modify storage actionclock:player c4 set from storage actionclock:player x_val
execute if score @s display_order matches 587 run data modify storage actionclock:player c5 set from storage actionclock:player c_val
execute if score @s display_order matches 587 run data modify storage actionclock:player c6 set from storage actionclock:player d_val
# 588: Kierunek -> Glowka -> Zegar -> Dni -> Pogoda -> Kordy
execute if score @s display_order matches 588 run data modify storage actionclock:player c1 set from storage actionclock:player f_val
execute if score @s display_order matches 588 run data modify storage actionclock:player c2 set from storage actionclock:player h_val
execute if score @s display_order matches 588 run data modify storage actionclock:player c3 set from storage actionclock:player c_val
execute if score @s display_order matches 588 run data modify storage actionclock:player c4 set from storage actionclock:player d_val
execute if score @s display_order matches 588 run data modify storage actionclock:player c5 set from storage actionclock:player w_val
execute if score @s display_order matches 588 run data modify storage actionclock:player c6 set from storage actionclock:player x_val
# 589: Kierunek -> Glowka -> Zegar -> Dni -> Kordy -> Pogoda
execute if score @s display_order matches 589 run data modify storage actionclock:player c1 set from storage actionclock:player f_val
execute if score @s display_order matches 589 run data modify storage actionclock:player c2 set from storage actionclock:player h_val
execute if score @s display_order matches 589 run data modify storage actionclock:player c3 set from storage actionclock:player c_val
execute if score @s display_order matches 589 run data modify storage actionclock:player c4 set from storage actionclock:player d_val
execute if score @s display_order matches 589 run data modify storage actionclock:player c5 set from storage actionclock:player x_val
execute if score @s display_order matches 589 run data modify storage actionclock:player c6 set from storage actionclock:player w_val
# 590: Kierunek -> Glowka -> Zegar -> Pogoda -> Dni -> Kordy
execute if score @s display_order matches 590 run data modify storage actionclock:player c1 set from storage actionclock:player f_val
execute if score @s display_order matches 590 run data modify storage actionclock:player c2 set from storage actionclock:player h_val
execute if score @s display_order matches 590 run data modify storage actionclock:player c3 set from storage actionclock:player c_val
execute if score @s display_order matches 590 run data modify storage actionclock:player c4 set from storage actionclock:player w_val
execute if score @s display_order matches 590 run data modify storage actionclock:player c5 set from storage actionclock:player d_val
execute if score @s display_order matches 590 run data modify storage actionclock:player c6 set from storage actionclock:player x_val
# 591: Kierunek -> Glowka -> Zegar -> Pogoda -> Kordy -> Dni
execute if score @s display_order matches 591 run data modify storage actionclock:player c1 set from storage actionclock:player f_val
execute if score @s display_order matches 591 run data modify storage actionclock:player c2 set from storage actionclock:player h_val
execute if score @s display_order matches 591 run data modify storage actionclock:player c3 set from storage actionclock:player c_val
execute if score @s display_order matches 591 run data modify storage actionclock:player c4 set from storage actionclock:player w_val
execute if score @s display_order matches 591 run data modify storage actionclock:player c5 set from storage actionclock:player x_val
execute if score @s display_order matches 591 run data modify storage actionclock:player c6 set from storage actionclock:player d_val
# 592: Kierunek -> Glowka -> Zegar -> Kordy -> Dni -> Pogoda
execute if score @s display_order matches 592 run data modify storage actionclock:player c1 set from storage actionclock:player f_val
execute if score @s display_order matches 592 run data modify storage actionclock:player c2 set from storage actionclock:player h_val
execute if score @s display_order matches 592 run data modify storage actionclock:player c3 set from storage actionclock:player c_val
execute if score @s display_order matches 592 run data modify storage actionclock:player c4 set from storage actionclock:player x_val
execute if score @s display_order matches 592 run data modify storage actionclock:player c5 set from storage actionclock:player d_val
execute if score @s display_order matches 592 run data modify storage actionclock:player c6 set from storage actionclock:player w_val
# 593: Kierunek -> Glowka -> Zegar -> Kordy -> Pogoda -> Dni
execute if score @s display_order matches 593 run data modify storage actionclock:player c1 set from storage actionclock:player f_val
execute if score @s display_order matches 593 run data modify storage actionclock:player c2 set from storage actionclock:player h_val
execute if score @s display_order matches 593 run data modify storage actionclock:player c3 set from storage actionclock:player c_val
execute if score @s display_order matches 593 run data modify storage actionclock:player c4 set from storage actionclock:player x_val
execute if score @s display_order matches 593 run data modify storage actionclock:player c5 set from storage actionclock:player w_val
execute if score @s display_order matches 593 run data modify storage actionclock:player c6 set from storage actionclock:player d_val
# 594: Kierunek -> Glowka -> Kordy -> Dni -> Pogoda -> Zegar
execute if score @s display_order matches 594 run data modify storage actionclock:player c1 set from storage actionclock:player f_val
execute if score @s display_order matches 594 run data modify storage actionclock:player c2 set from storage actionclock:player h_val
execute if score @s display_order matches 594 run data modify storage actionclock:player c3 set from storage actionclock:player x_val
execute if score @s display_order matches 594 run data modify storage actionclock:player c4 set from storage actionclock:player d_val
execute if score @s display_order matches 594 run data modify storage actionclock:player c5 set from storage actionclock:player w_val
execute if score @s display_order matches 594 run data modify storage actionclock:player c6 set from storage actionclock:player c_val
# 595: Kierunek -> Glowka -> Kordy -> Dni -> Zegar -> Pogoda
execute if score @s display_order matches 595 run data modify storage actionclock:player c1 set from storage actionclock:player f_val
execute if score @s display_order matches 595 run data modify storage actionclock:player c2 set from storage actionclock:player h_val
execute if score @s display_order matches 595 run data modify storage actionclock:player c3 set from storage actionclock:player x_val
execute if score @s display_order matches 595 run data modify storage actionclock:player c4 set from storage actionclock:player d_val
execute if score @s display_order matches 595 run data modify storage actionclock:player c5 set from storage actionclock:player c_val
execute if score @s display_order matches 595 run data modify storage actionclock:player c6 set from storage actionclock:player w_val
# 596: Kierunek -> Glowka -> Kordy -> Pogoda -> Dni -> Zegar
execute if score @s display_order matches 596 run data modify storage actionclock:player c1 set from storage actionclock:player f_val
execute if score @s display_order matches 596 run data modify storage actionclock:player c2 set from storage actionclock:player h_val
execute if score @s display_order matches 596 run data modify storage actionclock:player c3 set from storage actionclock:player x_val
execute if score @s display_order matches 596 run data modify storage actionclock:player c4 set from storage actionclock:player w_val
execute if score @s display_order matches 596 run data modify storage actionclock:player c5 set from storage actionclock:player d_val
execute if score @s display_order matches 596 run data modify storage actionclock:player c6 set from storage actionclock:player c_val
# 597: Kierunek -> Glowka -> Kordy -> Pogoda -> Zegar -> Dni
execute if score @s display_order matches 597 run data modify storage actionclock:player c1 set from storage actionclock:player f_val
execute if score @s display_order matches 597 run data modify storage actionclock:player c2 set from storage actionclock:player h_val
execute if score @s display_order matches 597 run data modify storage actionclock:player c3 set from storage actionclock:player x_val
execute if score @s display_order matches 597 run data modify storage actionclock:player c4 set from storage actionclock:player w_val
execute if score @s display_order matches 597 run data modify storage actionclock:player c5 set from storage actionclock:player c_val
execute if score @s display_order matches 597 run data modify storage actionclock:player c6 set from storage actionclock:player d_val
# 598: Kierunek -> Glowka -> Kordy -> Zegar -> Dni -> Pogoda
execute if score @s display_order matches 598 run data modify storage actionclock:player c1 set from storage actionclock:player f_val
execute if score @s display_order matches 598 run data modify storage actionclock:player c2 set from storage actionclock:player h_val
execute if score @s display_order matches 598 run data modify storage actionclock:player c3 set from storage actionclock:player x_val
execute if score @s display_order matches 598 run data modify storage actionclock:player c4 set from storage actionclock:player c_val
execute if score @s display_order matches 598 run data modify storage actionclock:player c5 set from storage actionclock:player d_val
execute if score @s display_order matches 598 run data modify storage actionclock:player c6 set from storage actionclock:player w_val
# 599: Kierunek -> Glowka -> Kordy -> Zegar -> Pogoda -> Dni
execute if score @s display_order matches 599 run data modify storage actionclock:player c1 set from storage actionclock:player f_val
execute if score @s display_order matches 599 run data modify storage actionclock:player c2 set from storage actionclock:player h_val
execute if score @s display_order matches 599 run data modify storage actionclock:player c3 set from storage actionclock:player x_val
execute if score @s display_order matches 599 run data modify storage actionclock:player c4 set from storage actionclock:player c_val
execute if score @s display_order matches 599 run data modify storage actionclock:player c5 set from storage actionclock:player w_val
execute if score @s display_order matches 599 run data modify storage actionclock:player c6 set from storage actionclock:player d_val
# 600: Glowka -> Dni -> Pogoda -> Zegar -> Kordy -> Kierunek
execute if score @s display_order matches 600 run data modify storage actionclock:player c1 set from storage actionclock:player h_val
execute if score @s display_order matches 600 run data modify storage actionclock:player c2 set from storage actionclock:player d_val
execute if score @s display_order matches 600 run data modify storage actionclock:player c3 set from storage actionclock:player w_val
execute if score @s display_order matches 600 run data modify storage actionclock:player c4 set from storage actionclock:player c_val
execute if score @s display_order matches 600 run data modify storage actionclock:player c5 set from storage actionclock:player x_val
execute if score @s display_order matches 600 run data modify storage actionclock:player c6 set from storage actionclock:player f_val
# 601: Glowka -> Dni -> Pogoda -> Zegar -> Kierunek -> Kordy
execute if score @s display_order matches 601 run data modify storage actionclock:player c1 set from storage actionclock:player h_val
execute if score @s display_order matches 601 run data modify storage actionclock:player c2 set from storage actionclock:player d_val
execute if score @s display_order matches 601 run data modify storage actionclock:player c3 set from storage actionclock:player w_val
execute if score @s display_order matches 601 run data modify storage actionclock:player c4 set from storage actionclock:player c_val
execute if score @s display_order matches 601 run data modify storage actionclock:player c5 set from storage actionclock:player f_val
execute if score @s display_order matches 601 run data modify storage actionclock:player c6 set from storage actionclock:player x_val
# 602: Glowka -> Dni -> Pogoda -> Kordy -> Zegar -> Kierunek
execute if score @s display_order matches 602 run data modify storage actionclock:player c1 set from storage actionclock:player h_val
execute if score @s display_order matches 602 run data modify storage actionclock:player c2 set from storage actionclock:player d_val
execute if score @s display_order matches 602 run data modify storage actionclock:player c3 set from storage actionclock:player w_val
execute if score @s display_order matches 602 run data modify storage actionclock:player c4 set from storage actionclock:player x_val
execute if score @s display_order matches 602 run data modify storage actionclock:player c5 set from storage actionclock:player c_val
execute if score @s display_order matches 602 run data modify storage actionclock:player c6 set from storage actionclock:player f_val
# 603: Glowka -> Dni -> Pogoda -> Kordy -> Kierunek -> Zegar
execute if score @s display_order matches 603 run data modify storage actionclock:player c1 set from storage actionclock:player h_val
execute if score @s display_order matches 603 run data modify storage actionclock:player c2 set from storage actionclock:player d_val
execute if score @s display_order matches 603 run data modify storage actionclock:player c3 set from storage actionclock:player w_val
execute if score @s display_order matches 603 run data modify storage actionclock:player c4 set from storage actionclock:player x_val
execute if score @s display_order matches 603 run data modify storage actionclock:player c5 set from storage actionclock:player f_val
execute if score @s display_order matches 603 run data modify storage actionclock:player c6 set from storage actionclock:player c_val
# 604: Glowka -> Dni -> Pogoda -> Kierunek -> Zegar -> Kordy
execute if score @s display_order matches 604 run data modify storage actionclock:player c1 set from storage actionclock:player h_val
execute if score @s display_order matches 604 run data modify storage actionclock:player c2 set from storage actionclock:player d_val
execute if score @s display_order matches 604 run data modify storage actionclock:player c3 set from storage actionclock:player w_val
execute if score @s display_order matches 604 run data modify storage actionclock:player c4 set from storage actionclock:player f_val
execute if score @s display_order matches 604 run data modify storage actionclock:player c5 set from storage actionclock:player c_val
execute if score @s display_order matches 604 run data modify storage actionclock:player c6 set from storage actionclock:player x_val
# 605: Glowka -> Dni -> Pogoda -> Kierunek -> Kordy -> Zegar
execute if score @s display_order matches 605 run data modify storage actionclock:player c1 set from storage actionclock:player h_val
execute if score @s display_order matches 605 run data modify storage actionclock:player c2 set from storage actionclock:player d_val
execute if score @s display_order matches 605 run data modify storage actionclock:player c3 set from storage actionclock:player w_val
execute if score @s display_order matches 605 run data modify storage actionclock:player c4 set from storage actionclock:player f_val
execute if score @s display_order matches 605 run data modify storage actionclock:player c5 set from storage actionclock:player x_val
execute if score @s display_order matches 605 run data modify storage actionclock:player c6 set from storage actionclock:player c_val
# 606: Glowka -> Dni -> Zegar -> Pogoda -> Kordy -> Kierunek
execute if score @s display_order matches 606 run data modify storage actionclock:player c1 set from storage actionclock:player h_val
execute if score @s display_order matches 606 run data modify storage actionclock:player c2 set from storage actionclock:player d_val
execute if score @s display_order matches 606 run data modify storage actionclock:player c3 set from storage actionclock:player c_val
execute if score @s display_order matches 606 run data modify storage actionclock:player c4 set from storage actionclock:player w_val
execute if score @s display_order matches 606 run data modify storage actionclock:player c5 set from storage actionclock:player x_val
execute if score @s display_order matches 606 run data modify storage actionclock:player c6 set from storage actionclock:player f_val
# 607: Glowka -> Dni -> Zegar -> Pogoda -> Kierunek -> Kordy
execute if score @s display_order matches 607 run data modify storage actionclock:player c1 set from storage actionclock:player h_val
execute if score @s display_order matches 607 run data modify storage actionclock:player c2 set from storage actionclock:player d_val
execute if score @s display_order matches 607 run data modify storage actionclock:player c3 set from storage actionclock:player c_val
execute if score @s display_order matches 607 run data modify storage actionclock:player c4 set from storage actionclock:player w_val
execute if score @s display_order matches 607 run data modify storage actionclock:player c5 set from storage actionclock:player f_val
execute if score @s display_order matches 607 run data modify storage actionclock:player c6 set from storage actionclock:player x_val
# 608: Glowka -> Dni -> Zegar -> Kordy -> Pogoda -> Kierunek
execute if score @s display_order matches 608 run data modify storage actionclock:player c1 set from storage actionclock:player h_val
execute if score @s display_order matches 608 run data modify storage actionclock:player c2 set from storage actionclock:player d_val
execute if score @s display_order matches 608 run data modify storage actionclock:player c3 set from storage actionclock:player c_val
execute if score @s display_order matches 608 run data modify storage actionclock:player c4 set from storage actionclock:player x_val
execute if score @s display_order matches 608 run data modify storage actionclock:player c5 set from storage actionclock:player w_val
execute if score @s display_order matches 608 run data modify storage actionclock:player c6 set from storage actionclock:player f_val
# 609: Glowka -> Dni -> Zegar -> Kordy -> Kierunek -> Pogoda
execute if score @s display_order matches 609 run data modify storage actionclock:player c1 set from storage actionclock:player h_val
execute if score @s display_order matches 609 run data modify storage actionclock:player c2 set from storage actionclock:player d_val
execute if score @s display_order matches 609 run data modify storage actionclock:player c3 set from storage actionclock:player c_val
execute if score @s display_order matches 609 run data modify storage actionclock:player c4 set from storage actionclock:player x_val
execute if score @s display_order matches 609 run data modify storage actionclock:player c5 set from storage actionclock:player f_val
execute if score @s display_order matches 609 run data modify storage actionclock:player c6 set from storage actionclock:player w_val
# 610: Glowka -> Dni -> Zegar -> Kierunek -> Pogoda -> Kordy
execute if score @s display_order matches 610 run data modify storage actionclock:player c1 set from storage actionclock:player h_val
execute if score @s display_order matches 610 run data modify storage actionclock:player c2 set from storage actionclock:player d_val
execute if score @s display_order matches 610 run data modify storage actionclock:player c3 set from storage actionclock:player c_val
execute if score @s display_order matches 610 run data modify storage actionclock:player c4 set from storage actionclock:player f_val
execute if score @s display_order matches 610 run data modify storage actionclock:player c5 set from storage actionclock:player w_val
execute if score @s display_order matches 610 run data modify storage actionclock:player c6 set from storage actionclock:player x_val
# 611: Glowka -> Dni -> Zegar -> Kierunek -> Kordy -> Pogoda
execute if score @s display_order matches 611 run data modify storage actionclock:player c1 set from storage actionclock:player h_val
execute if score @s display_order matches 611 run data modify storage actionclock:player c2 set from storage actionclock:player d_val
execute if score @s display_order matches 611 run data modify storage actionclock:player c3 set from storage actionclock:player c_val
execute if score @s display_order matches 611 run data modify storage actionclock:player c4 set from storage actionclock:player f_val
execute if score @s display_order matches 611 run data modify storage actionclock:player c5 set from storage actionclock:player x_val
execute if score @s display_order matches 611 run data modify storage actionclock:player c6 set from storage actionclock:player w_val
# 612: Glowka -> Dni -> Kordy -> Pogoda -> Zegar -> Kierunek
execute if score @s display_order matches 612 run data modify storage actionclock:player c1 set from storage actionclock:player h_val
execute if score @s display_order matches 612 run data modify storage actionclock:player c2 set from storage actionclock:player d_val
execute if score @s display_order matches 612 run data modify storage actionclock:player c3 set from storage actionclock:player x_val
execute if score @s display_order matches 612 run data modify storage actionclock:player c4 set from storage actionclock:player w_val
execute if score @s display_order matches 612 run data modify storage actionclock:player c5 set from storage actionclock:player c_val
execute if score @s display_order matches 612 run data modify storage actionclock:player c6 set from storage actionclock:player f_val
# 613: Glowka -> Dni -> Kordy -> Pogoda -> Kierunek -> Zegar
execute if score @s display_order matches 613 run data modify storage actionclock:player c1 set from storage actionclock:player h_val
execute if score @s display_order matches 613 run data modify storage actionclock:player c2 set from storage actionclock:player d_val
execute if score @s display_order matches 613 run data modify storage actionclock:player c3 set from storage actionclock:player x_val
execute if score @s display_order matches 613 run data modify storage actionclock:player c4 set from storage actionclock:player w_val
execute if score @s display_order matches 613 run data modify storage actionclock:player c5 set from storage actionclock:player f_val
execute if score @s display_order matches 613 run data modify storage actionclock:player c6 set from storage actionclock:player c_val
# 614: Glowka -> Dni -> Kordy -> Zegar -> Pogoda -> Kierunek
execute if score @s display_order matches 614 run data modify storage actionclock:player c1 set from storage actionclock:player h_val
execute if score @s display_order matches 614 run data modify storage actionclock:player c2 set from storage actionclock:player d_val
execute if score @s display_order matches 614 run data modify storage actionclock:player c3 set from storage actionclock:player x_val
execute if score @s display_order matches 614 run data modify storage actionclock:player c4 set from storage actionclock:player c_val
execute if score @s display_order matches 614 run data modify storage actionclock:player c5 set from storage actionclock:player w_val
execute if score @s display_order matches 614 run data modify storage actionclock:player c6 set from storage actionclock:player f_val
# 615: Glowka -> Dni -> Kordy -> Zegar -> Kierunek -> Pogoda
execute if score @s display_order matches 615 run data modify storage actionclock:player c1 set from storage actionclock:player h_val
execute if score @s display_order matches 615 run data modify storage actionclock:player c2 set from storage actionclock:player d_val
execute if score @s display_order matches 615 run data modify storage actionclock:player c3 set from storage actionclock:player x_val
execute if score @s display_order matches 615 run data modify storage actionclock:player c4 set from storage actionclock:player c_val
execute if score @s display_order matches 615 run data modify storage actionclock:player c5 set from storage actionclock:player f_val
execute if score @s display_order matches 615 run data modify storage actionclock:player c6 set from storage actionclock:player w_val
# 616: Glowka -> Dni -> Kordy -> Kierunek -> Pogoda -> Zegar
execute if score @s display_order matches 616 run data modify storage actionclock:player c1 set from storage actionclock:player h_val
execute if score @s display_order matches 616 run data modify storage actionclock:player c2 set from storage actionclock:player d_val
execute if score @s display_order matches 616 run data modify storage actionclock:player c3 set from storage actionclock:player x_val
execute if score @s display_order matches 616 run data modify storage actionclock:player c4 set from storage actionclock:player f_val
execute if score @s display_order matches 616 run data modify storage actionclock:player c5 set from storage actionclock:player w_val
execute if score @s display_order matches 616 run data modify storage actionclock:player c6 set from storage actionclock:player c_val
# 617: Glowka -> Dni -> Kordy -> Kierunek -> Zegar -> Pogoda
execute if score @s display_order matches 617 run data modify storage actionclock:player c1 set from storage actionclock:player h_val
execute if score @s display_order matches 617 run data modify storage actionclock:player c2 set from storage actionclock:player d_val
execute if score @s display_order matches 617 run data modify storage actionclock:player c3 set from storage actionclock:player x_val
execute if score @s display_order matches 617 run data modify storage actionclock:player c4 set from storage actionclock:player f_val
execute if score @s display_order matches 617 run data modify storage actionclock:player c5 set from storage actionclock:player c_val
execute if score @s display_order matches 617 run data modify storage actionclock:player c6 set from storage actionclock:player w_val
# 618: Glowka -> Dni -> Kierunek -> Pogoda -> Zegar -> Kordy
execute if score @s display_order matches 618 run data modify storage actionclock:player c1 set from storage actionclock:player h_val
execute if score @s display_order matches 618 run data modify storage actionclock:player c2 set from storage actionclock:player d_val
execute if score @s display_order matches 618 run data modify storage actionclock:player c3 set from storage actionclock:player f_val
execute if score @s display_order matches 618 run data modify storage actionclock:player c4 set from storage actionclock:player w_val
execute if score @s display_order matches 618 run data modify storage actionclock:player c5 set from storage actionclock:player c_val
execute if score @s display_order matches 618 run data modify storage actionclock:player c6 set from storage actionclock:player x_val
# 619: Glowka -> Dni -> Kierunek -> Pogoda -> Kordy -> Zegar
execute if score @s display_order matches 619 run data modify storage actionclock:player c1 set from storage actionclock:player h_val
execute if score @s display_order matches 619 run data modify storage actionclock:player c2 set from storage actionclock:player d_val
execute if score @s display_order matches 619 run data modify storage actionclock:player c3 set from storage actionclock:player f_val
execute if score @s display_order matches 619 run data modify storage actionclock:player c4 set from storage actionclock:player w_val
execute if score @s display_order matches 619 run data modify storage actionclock:player c5 set from storage actionclock:player x_val
execute if score @s display_order matches 619 run data modify storage actionclock:player c6 set from storage actionclock:player c_val
# 620: Glowka -> Dni -> Kierunek -> Zegar -> Pogoda -> Kordy
execute if score @s display_order matches 620 run data modify storage actionclock:player c1 set from storage actionclock:player h_val
execute if score @s display_order matches 620 run data modify storage actionclock:player c2 set from storage actionclock:player d_val
execute if score @s display_order matches 620 run data modify storage actionclock:player c3 set from storage actionclock:player f_val
execute if score @s display_order matches 620 run data modify storage actionclock:player c4 set from storage actionclock:player c_val
execute if score @s display_order matches 620 run data modify storage actionclock:player c5 set from storage actionclock:player w_val
execute if score @s display_order matches 620 run data modify storage actionclock:player c6 set from storage actionclock:player x_val
# 621: Glowka -> Dni -> Kierunek -> Zegar -> Kordy -> Pogoda
execute if score @s display_order matches 621 run data modify storage actionclock:player c1 set from storage actionclock:player h_val
execute if score @s display_order matches 621 run data modify storage actionclock:player c2 set from storage actionclock:player d_val
execute if score @s display_order matches 621 run data modify storage actionclock:player c3 set from storage actionclock:player f_val
execute if score @s display_order matches 621 run data modify storage actionclock:player c4 set from storage actionclock:player c_val
execute if score @s display_order matches 621 run data modify storage actionclock:player c5 set from storage actionclock:player x_val
execute if score @s display_order matches 621 run data modify storage actionclock:player c6 set from storage actionclock:player w_val
# 622: Glowka -> Dni -> Kierunek -> Kordy -> Pogoda -> Zegar
execute if score @s display_order matches 622 run data modify storage actionclock:player c1 set from storage actionclock:player h_val
execute if score @s display_order matches 622 run data modify storage actionclock:player c2 set from storage actionclock:player d_val
execute if score @s display_order matches 622 run data modify storage actionclock:player c3 set from storage actionclock:player f_val
execute if score @s display_order matches 622 run data modify storage actionclock:player c4 set from storage actionclock:player x_val
execute if score @s display_order matches 622 run data modify storage actionclock:player c5 set from storage actionclock:player w_val
execute if score @s display_order matches 622 run data modify storage actionclock:player c6 set from storage actionclock:player c_val
# 623: Glowka -> Dni -> Kierunek -> Kordy -> Zegar -> Pogoda
execute if score @s display_order matches 623 run data modify storage actionclock:player c1 set from storage actionclock:player h_val
execute if score @s display_order matches 623 run data modify storage actionclock:player c2 set from storage actionclock:player d_val
execute if score @s display_order matches 623 run data modify storage actionclock:player c3 set from storage actionclock:player f_val
execute if score @s display_order matches 623 run data modify storage actionclock:player c4 set from storage actionclock:player x_val
execute if score @s display_order matches 623 run data modify storage actionclock:player c5 set from storage actionclock:player c_val
execute if score @s display_order matches 623 run data modify storage actionclock:player c6 set from storage actionclock:player w_val
# 624: Glowka -> Pogoda -> Dni -> Zegar -> Kordy -> Kierunek
execute if score @s display_order matches 624 run data modify storage actionclock:player c1 set from storage actionclock:player h_val
execute if score @s display_order matches 624 run data modify storage actionclock:player c2 set from storage actionclock:player w_val
execute if score @s display_order matches 624 run data modify storage actionclock:player c3 set from storage actionclock:player d_val
execute if score @s display_order matches 624 run data modify storage actionclock:player c4 set from storage actionclock:player c_val
execute if score @s display_order matches 624 run data modify storage actionclock:player c5 set from storage actionclock:player x_val
execute if score @s display_order matches 624 run data modify storage actionclock:player c6 set from storage actionclock:player f_val
# 625: Glowka -> Pogoda -> Dni -> Zegar -> Kierunek -> Kordy
execute if score @s display_order matches 625 run data modify storage actionclock:player c1 set from storage actionclock:player h_val
execute if score @s display_order matches 625 run data modify storage actionclock:player c2 set from storage actionclock:player w_val
execute if score @s display_order matches 625 run data modify storage actionclock:player c3 set from storage actionclock:player d_val
execute if score @s display_order matches 625 run data modify storage actionclock:player c4 set from storage actionclock:player c_val
execute if score @s display_order matches 625 run data modify storage actionclock:player c5 set from storage actionclock:player f_val
execute if score @s display_order matches 625 run data modify storage actionclock:player c6 set from storage actionclock:player x_val
# 626: Glowka -> Pogoda -> Dni -> Kordy -> Zegar -> Kierunek
execute if score @s display_order matches 626 run data modify storage actionclock:player c1 set from storage actionclock:player h_val
execute if score @s display_order matches 626 run data modify storage actionclock:player c2 set from storage actionclock:player w_val
execute if score @s display_order matches 626 run data modify storage actionclock:player c3 set from storage actionclock:player d_val
execute if score @s display_order matches 626 run data modify storage actionclock:player c4 set from storage actionclock:player x_val
execute if score @s display_order matches 626 run data modify storage actionclock:player c5 set from storage actionclock:player c_val
execute if score @s display_order matches 626 run data modify storage actionclock:player c6 set from storage actionclock:player f_val
# 627: Glowka -> Pogoda -> Dni -> Kordy -> Kierunek -> Zegar
execute if score @s display_order matches 627 run data modify storage actionclock:player c1 set from storage actionclock:player h_val
execute if score @s display_order matches 627 run data modify storage actionclock:player c2 set from storage actionclock:player w_val
execute if score @s display_order matches 627 run data modify storage actionclock:player c3 set from storage actionclock:player d_val
execute if score @s display_order matches 627 run data modify storage actionclock:player c4 set from storage actionclock:player x_val
execute if score @s display_order matches 627 run data modify storage actionclock:player c5 set from storage actionclock:player f_val
execute if score @s display_order matches 627 run data modify storage actionclock:player c6 set from storage actionclock:player c_val
# 628: Glowka -> Pogoda -> Dni -> Kierunek -> Zegar -> Kordy
execute if score @s display_order matches 628 run data modify storage actionclock:player c1 set from storage actionclock:player h_val
execute if score @s display_order matches 628 run data modify storage actionclock:player c2 set from storage actionclock:player w_val
execute if score @s display_order matches 628 run data modify storage actionclock:player c3 set from storage actionclock:player d_val
execute if score @s display_order matches 628 run data modify storage actionclock:player c4 set from storage actionclock:player f_val
execute if score @s display_order matches 628 run data modify storage actionclock:player c5 set from storage actionclock:player c_val
execute if score @s display_order matches 628 run data modify storage actionclock:player c6 set from storage actionclock:player x_val
# 629: Glowka -> Pogoda -> Dni -> Kierunek -> Kordy -> Zegar
execute if score @s display_order matches 629 run data modify storage actionclock:player c1 set from storage actionclock:player h_val
execute if score @s display_order matches 629 run data modify storage actionclock:player c2 set from storage actionclock:player w_val
execute if score @s display_order matches 629 run data modify storage actionclock:player c3 set from storage actionclock:player d_val
execute if score @s display_order matches 629 run data modify storage actionclock:player c4 set from storage actionclock:player f_val
execute if score @s display_order matches 629 run data modify storage actionclock:player c5 set from storage actionclock:player x_val
execute if score @s display_order matches 629 run data modify storage actionclock:player c6 set from storage actionclock:player c_val
# 630: Glowka -> Pogoda -> Zegar -> Dni -> Kordy -> Kierunek
execute if score @s display_order matches 630 run data modify storage actionclock:player c1 set from storage actionclock:player h_val
execute if score @s display_order matches 630 run data modify storage actionclock:player c2 set from storage actionclock:player w_val
execute if score @s display_order matches 630 run data modify storage actionclock:player c3 set from storage actionclock:player c_val
execute if score @s display_order matches 630 run data modify storage actionclock:player c4 set from storage actionclock:player d_val
execute if score @s display_order matches 630 run data modify storage actionclock:player c5 set from storage actionclock:player x_val
execute if score @s display_order matches 630 run data modify storage actionclock:player c6 set from storage actionclock:player f_val
# 631: Glowka -> Pogoda -> Zegar -> Dni -> Kierunek -> Kordy
execute if score @s display_order matches 631 run data modify storage actionclock:player c1 set from storage actionclock:player h_val
execute if score @s display_order matches 631 run data modify storage actionclock:player c2 set from storage actionclock:player w_val
execute if score @s display_order matches 631 run data modify storage actionclock:player c3 set from storage actionclock:player c_val
execute if score @s display_order matches 631 run data modify storage actionclock:player c4 set from storage actionclock:player d_val
execute if score @s display_order matches 631 run data modify storage actionclock:player c5 set from storage actionclock:player f_val
execute if score @s display_order matches 631 run data modify storage actionclock:player c6 set from storage actionclock:player x_val
# 632: Glowka -> Pogoda -> Zegar -> Kordy -> Dni -> Kierunek
execute if score @s display_order matches 632 run data modify storage actionclock:player c1 set from storage actionclock:player h_val
execute if score @s display_order matches 632 run data modify storage actionclock:player c2 set from storage actionclock:player w_val
execute if score @s display_order matches 632 run data modify storage actionclock:player c3 set from storage actionclock:player c_val
execute if score @s display_order matches 632 run data modify storage actionclock:player c4 set from storage actionclock:player x_val
execute if score @s display_order matches 632 run data modify storage actionclock:player c5 set from storage actionclock:player d_val
execute if score @s display_order matches 632 run data modify storage actionclock:player c6 set from storage actionclock:player f_val
# 633: Glowka -> Pogoda -> Zegar -> Kordy -> Kierunek -> Dni
execute if score @s display_order matches 633 run data modify storage actionclock:player c1 set from storage actionclock:player h_val
execute if score @s display_order matches 633 run data modify storage actionclock:player c2 set from storage actionclock:player w_val
execute if score @s display_order matches 633 run data modify storage actionclock:player c3 set from storage actionclock:player c_val
execute if score @s display_order matches 633 run data modify storage actionclock:player c4 set from storage actionclock:player x_val
execute if score @s display_order matches 633 run data modify storage actionclock:player c5 set from storage actionclock:player f_val
execute if score @s display_order matches 633 run data modify storage actionclock:player c6 set from storage actionclock:player d_val
# 634: Glowka -> Pogoda -> Zegar -> Kierunek -> Dni -> Kordy
execute if score @s display_order matches 634 run data modify storage actionclock:player c1 set from storage actionclock:player h_val
execute if score @s display_order matches 634 run data modify storage actionclock:player c2 set from storage actionclock:player w_val
execute if score @s display_order matches 634 run data modify storage actionclock:player c3 set from storage actionclock:player c_val
execute if score @s display_order matches 634 run data modify storage actionclock:player c4 set from storage actionclock:player f_val
execute if score @s display_order matches 634 run data modify storage actionclock:player c5 set from storage actionclock:player d_val
execute if score @s display_order matches 634 run data modify storage actionclock:player c6 set from storage actionclock:player x_val
# 635: Glowka -> Pogoda -> Zegar -> Kierunek -> Kordy -> Dni
execute if score @s display_order matches 635 run data modify storage actionclock:player c1 set from storage actionclock:player h_val
execute if score @s display_order matches 635 run data modify storage actionclock:player c2 set from storage actionclock:player w_val
execute if score @s display_order matches 635 run data modify storage actionclock:player c3 set from storage actionclock:player c_val
execute if score @s display_order matches 635 run data modify storage actionclock:player c4 set from storage actionclock:player f_val
execute if score @s display_order matches 635 run data modify storage actionclock:player c5 set from storage actionclock:player x_val
execute if score @s display_order matches 635 run data modify storage actionclock:player c6 set from storage actionclock:player d_val
# 636: Glowka -> Pogoda -> Kordy -> Dni -> Zegar -> Kierunek
execute if score @s display_order matches 636 run data modify storage actionclock:player c1 set from storage actionclock:player h_val
execute if score @s display_order matches 636 run data modify storage actionclock:player c2 set from storage actionclock:player w_val
execute if score @s display_order matches 636 run data modify storage actionclock:player c3 set from storage actionclock:player x_val
execute if score @s display_order matches 636 run data modify storage actionclock:player c4 set from storage actionclock:player d_val
execute if score @s display_order matches 636 run data modify storage actionclock:player c5 set from storage actionclock:player c_val
execute if score @s display_order matches 636 run data modify storage actionclock:player c6 set from storage actionclock:player f_val
# 637: Glowka -> Pogoda -> Kordy -> Dni -> Kierunek -> Zegar
execute if score @s display_order matches 637 run data modify storage actionclock:player c1 set from storage actionclock:player h_val
execute if score @s display_order matches 637 run data modify storage actionclock:player c2 set from storage actionclock:player w_val
execute if score @s display_order matches 637 run data modify storage actionclock:player c3 set from storage actionclock:player x_val
execute if score @s display_order matches 637 run data modify storage actionclock:player c4 set from storage actionclock:player d_val
execute if score @s display_order matches 637 run data modify storage actionclock:player c5 set from storage actionclock:player f_val
execute if score @s display_order matches 637 run data modify storage actionclock:player c6 set from storage actionclock:player c_val
# 638: Glowka -> Pogoda -> Kordy -> Zegar -> Dni -> Kierunek
execute if score @s display_order matches 638 run data modify storage actionclock:player c1 set from storage actionclock:player h_val
execute if score @s display_order matches 638 run data modify storage actionclock:player c2 set from storage actionclock:player w_val
execute if score @s display_order matches 638 run data modify storage actionclock:player c3 set from storage actionclock:player x_val
execute if score @s display_order matches 638 run data modify storage actionclock:player c4 set from storage actionclock:player c_val
execute if score @s display_order matches 638 run data modify storage actionclock:player c5 set from storage actionclock:player d_val
execute if score @s display_order matches 638 run data modify storage actionclock:player c6 set from storage actionclock:player f_val
# 639: Glowka -> Pogoda -> Kordy -> Zegar -> Kierunek -> Dni
execute if score @s display_order matches 639 run data modify storage actionclock:player c1 set from storage actionclock:player h_val
execute if score @s display_order matches 639 run data modify storage actionclock:player c2 set from storage actionclock:player w_val
execute if score @s display_order matches 639 run data modify storage actionclock:player c3 set from storage actionclock:player x_val
execute if score @s display_order matches 639 run data modify storage actionclock:player c4 set from storage actionclock:player c_val
execute if score @s display_order matches 639 run data modify storage actionclock:player c5 set from storage actionclock:player f_val
execute if score @s display_order matches 639 run data modify storage actionclock:player c6 set from storage actionclock:player d_val
# 640: Glowka -> Pogoda -> Kordy -> Kierunek -> Dni -> Zegar
execute if score @s display_order matches 640 run data modify storage actionclock:player c1 set from storage actionclock:player h_val
execute if score @s display_order matches 640 run data modify storage actionclock:player c2 set from storage actionclock:player w_val
execute if score @s display_order matches 640 run data modify storage actionclock:player c3 set from storage actionclock:player x_val
execute if score @s display_order matches 640 run data modify storage actionclock:player c4 set from storage actionclock:player f_val
execute if score @s display_order matches 640 run data modify storage actionclock:player c5 set from storage actionclock:player d_val
execute if score @s display_order matches 640 run data modify storage actionclock:player c6 set from storage actionclock:player c_val
# 641: Glowka -> Pogoda -> Kordy -> Kierunek -> Zegar -> Dni
execute if score @s display_order matches 641 run data modify storage actionclock:player c1 set from storage actionclock:player h_val
execute if score @s display_order matches 641 run data modify storage actionclock:player c2 set from storage actionclock:player w_val
execute if score @s display_order matches 641 run data modify storage actionclock:player c3 set from storage actionclock:player x_val
execute if score @s display_order matches 641 run data modify storage actionclock:player c4 set from storage actionclock:player f_val
execute if score @s display_order matches 641 run data modify storage actionclock:player c5 set from storage actionclock:player c_val
execute if score @s display_order matches 641 run data modify storage actionclock:player c6 set from storage actionclock:player d_val
# 642: Glowka -> Pogoda -> Kierunek -> Dni -> Zegar -> Kordy
execute if score @s display_order matches 642 run data modify storage actionclock:player c1 set from storage actionclock:player h_val
execute if score @s display_order matches 642 run data modify storage actionclock:player c2 set from storage actionclock:player w_val
execute if score @s display_order matches 642 run data modify storage actionclock:player c3 set from storage actionclock:player f_val
execute if score @s display_order matches 642 run data modify storage actionclock:player c4 set from storage actionclock:player d_val
execute if score @s display_order matches 642 run data modify storage actionclock:player c5 set from storage actionclock:player c_val
execute if score @s display_order matches 642 run data modify storage actionclock:player c6 set from storage actionclock:player x_val
# 643: Glowka -> Pogoda -> Kierunek -> Dni -> Kordy -> Zegar
execute if score @s display_order matches 643 run data modify storage actionclock:player c1 set from storage actionclock:player h_val
execute if score @s display_order matches 643 run data modify storage actionclock:player c2 set from storage actionclock:player w_val
execute if score @s display_order matches 643 run data modify storage actionclock:player c3 set from storage actionclock:player f_val
execute if score @s display_order matches 643 run data modify storage actionclock:player c4 set from storage actionclock:player d_val
execute if score @s display_order matches 643 run data modify storage actionclock:player c5 set from storage actionclock:player x_val
execute if score @s display_order matches 643 run data modify storage actionclock:player c6 set from storage actionclock:player c_val
# 644: Glowka -> Pogoda -> Kierunek -> Zegar -> Dni -> Kordy
execute if score @s display_order matches 644 run data modify storage actionclock:player c1 set from storage actionclock:player h_val
execute if score @s display_order matches 644 run data modify storage actionclock:player c2 set from storage actionclock:player w_val
execute if score @s display_order matches 644 run data modify storage actionclock:player c3 set from storage actionclock:player f_val
execute if score @s display_order matches 644 run data modify storage actionclock:player c4 set from storage actionclock:player c_val
execute if score @s display_order matches 644 run data modify storage actionclock:player c5 set from storage actionclock:player d_val
execute if score @s display_order matches 644 run data modify storage actionclock:player c6 set from storage actionclock:player x_val
# 645: Glowka -> Pogoda -> Kierunek -> Zegar -> Kordy -> Dni
execute if score @s display_order matches 645 run data modify storage actionclock:player c1 set from storage actionclock:player h_val
execute if score @s display_order matches 645 run data modify storage actionclock:player c2 set from storage actionclock:player w_val
execute if score @s display_order matches 645 run data modify storage actionclock:player c3 set from storage actionclock:player f_val
execute if score @s display_order matches 645 run data modify storage actionclock:player c4 set from storage actionclock:player c_val
execute if score @s display_order matches 645 run data modify storage actionclock:player c5 set from storage actionclock:player x_val
execute if score @s display_order matches 645 run data modify storage actionclock:player c6 set from storage actionclock:player d_val
# 646: Glowka -> Pogoda -> Kierunek -> Kordy -> Dni -> Zegar
execute if score @s display_order matches 646 run data modify storage actionclock:player c1 set from storage actionclock:player h_val
execute if score @s display_order matches 646 run data modify storage actionclock:player c2 set from storage actionclock:player w_val
execute if score @s display_order matches 646 run data modify storage actionclock:player c3 set from storage actionclock:player f_val
execute if score @s display_order matches 646 run data modify storage actionclock:player c4 set from storage actionclock:player x_val
execute if score @s display_order matches 646 run data modify storage actionclock:player c5 set from storage actionclock:player d_val
execute if score @s display_order matches 646 run data modify storage actionclock:player c6 set from storage actionclock:player c_val
# 647: Glowka -> Pogoda -> Kierunek -> Kordy -> Zegar -> Dni
execute if score @s display_order matches 647 run data modify storage actionclock:player c1 set from storage actionclock:player h_val
execute if score @s display_order matches 647 run data modify storage actionclock:player c2 set from storage actionclock:player w_val
execute if score @s display_order matches 647 run data modify storage actionclock:player c3 set from storage actionclock:player f_val
execute if score @s display_order matches 647 run data modify storage actionclock:player c4 set from storage actionclock:player x_val
execute if score @s display_order matches 647 run data modify storage actionclock:player c5 set from storage actionclock:player c_val
execute if score @s display_order matches 647 run data modify storage actionclock:player c6 set from storage actionclock:player d_val
# 648: Glowka -> Zegar -> Dni -> Pogoda -> Kordy -> Kierunek
execute if score @s display_order matches 648 run data modify storage actionclock:player c1 set from storage actionclock:player h_val
execute if score @s display_order matches 648 run data modify storage actionclock:player c2 set from storage actionclock:player c_val
execute if score @s display_order matches 648 run data modify storage actionclock:player c3 set from storage actionclock:player d_val
execute if score @s display_order matches 648 run data modify storage actionclock:player c4 set from storage actionclock:player w_val
execute if score @s display_order matches 648 run data modify storage actionclock:player c5 set from storage actionclock:player x_val
execute if score @s display_order matches 648 run data modify storage actionclock:player c6 set from storage actionclock:player f_val
# 649: Glowka -> Zegar -> Dni -> Pogoda -> Kierunek -> Kordy
execute if score @s display_order matches 649 run data modify storage actionclock:player c1 set from storage actionclock:player h_val
execute if score @s display_order matches 649 run data modify storage actionclock:player c2 set from storage actionclock:player c_val
execute if score @s display_order matches 649 run data modify storage actionclock:player c3 set from storage actionclock:player d_val
execute if score @s display_order matches 649 run data modify storage actionclock:player c4 set from storage actionclock:player w_val
execute if score @s display_order matches 649 run data modify storage actionclock:player c5 set from storage actionclock:player f_val
execute if score @s display_order matches 649 run data modify storage actionclock:player c6 set from storage actionclock:player x_val
# 650: Glowka -> Zegar -> Dni -> Kordy -> Pogoda -> Kierunek
execute if score @s display_order matches 650 run data modify storage actionclock:player c1 set from storage actionclock:player h_val
execute if score @s display_order matches 650 run data modify storage actionclock:player c2 set from storage actionclock:player c_val
execute if score @s display_order matches 650 run data modify storage actionclock:player c3 set from storage actionclock:player d_val
execute if score @s display_order matches 650 run data modify storage actionclock:player c4 set from storage actionclock:player x_val
execute if score @s display_order matches 650 run data modify storage actionclock:player c5 set from storage actionclock:player w_val
execute if score @s display_order matches 650 run data modify storage actionclock:player c6 set from storage actionclock:player f_val
# 651: Glowka -> Zegar -> Dni -> Kordy -> Kierunek -> Pogoda
execute if score @s display_order matches 651 run data modify storage actionclock:player c1 set from storage actionclock:player h_val
execute if score @s display_order matches 651 run data modify storage actionclock:player c2 set from storage actionclock:player c_val
execute if score @s display_order matches 651 run data modify storage actionclock:player c3 set from storage actionclock:player d_val
execute if score @s display_order matches 651 run data modify storage actionclock:player c4 set from storage actionclock:player x_val
execute if score @s display_order matches 651 run data modify storage actionclock:player c5 set from storage actionclock:player f_val
execute if score @s display_order matches 651 run data modify storage actionclock:player c6 set from storage actionclock:player w_val
# 652: Glowka -> Zegar -> Dni -> Kierunek -> Pogoda -> Kordy
execute if score @s display_order matches 652 run data modify storage actionclock:player c1 set from storage actionclock:player h_val
execute if score @s display_order matches 652 run data modify storage actionclock:player c2 set from storage actionclock:player c_val
execute if score @s display_order matches 652 run data modify storage actionclock:player c3 set from storage actionclock:player d_val
execute if score @s display_order matches 652 run data modify storage actionclock:player c4 set from storage actionclock:player f_val
execute if score @s display_order matches 652 run data modify storage actionclock:player c5 set from storage actionclock:player w_val
execute if score @s display_order matches 652 run data modify storage actionclock:player c6 set from storage actionclock:player x_val
# 653: Glowka -> Zegar -> Dni -> Kierunek -> Kordy -> Pogoda
execute if score @s display_order matches 653 run data modify storage actionclock:player c1 set from storage actionclock:player h_val
execute if score @s display_order matches 653 run data modify storage actionclock:player c2 set from storage actionclock:player c_val
execute if score @s display_order matches 653 run data modify storage actionclock:player c3 set from storage actionclock:player d_val
execute if score @s display_order matches 653 run data modify storage actionclock:player c4 set from storage actionclock:player f_val
execute if score @s display_order matches 653 run data modify storage actionclock:player c5 set from storage actionclock:player x_val
execute if score @s display_order matches 653 run data modify storage actionclock:player c6 set from storage actionclock:player w_val
# 654: Glowka -> Zegar -> Pogoda -> Dni -> Kordy -> Kierunek
execute if score @s display_order matches 654 run data modify storage actionclock:player c1 set from storage actionclock:player h_val
execute if score @s display_order matches 654 run data modify storage actionclock:player c2 set from storage actionclock:player c_val
execute if score @s display_order matches 654 run data modify storage actionclock:player c3 set from storage actionclock:player w_val
execute if score @s display_order matches 654 run data modify storage actionclock:player c4 set from storage actionclock:player d_val
execute if score @s display_order matches 654 run data modify storage actionclock:player c5 set from storage actionclock:player x_val
execute if score @s display_order matches 654 run data modify storage actionclock:player c6 set from storage actionclock:player f_val
# 655: Glowka -> Zegar -> Pogoda -> Dni -> Kierunek -> Kordy
execute if score @s display_order matches 655 run data modify storage actionclock:player c1 set from storage actionclock:player h_val
execute if score @s display_order matches 655 run data modify storage actionclock:player c2 set from storage actionclock:player c_val
execute if score @s display_order matches 655 run data modify storage actionclock:player c3 set from storage actionclock:player w_val
execute if score @s display_order matches 655 run data modify storage actionclock:player c4 set from storage actionclock:player d_val
execute if score @s display_order matches 655 run data modify storage actionclock:player c5 set from storage actionclock:player f_val
execute if score @s display_order matches 655 run data modify storage actionclock:player c6 set from storage actionclock:player x_val
# 656: Glowka -> Zegar -> Pogoda -> Kordy -> Dni -> Kierunek
execute if score @s display_order matches 656 run data modify storage actionclock:player c1 set from storage actionclock:player h_val
execute if score @s display_order matches 656 run data modify storage actionclock:player c2 set from storage actionclock:player c_val
execute if score @s display_order matches 656 run data modify storage actionclock:player c3 set from storage actionclock:player w_val
execute if score @s display_order matches 656 run data modify storage actionclock:player c4 set from storage actionclock:player x_val
execute if score @s display_order matches 656 run data modify storage actionclock:player c5 set from storage actionclock:player d_val
execute if score @s display_order matches 656 run data modify storage actionclock:player c6 set from storage actionclock:player f_val
# 657: Glowka -> Zegar -> Pogoda -> Kordy -> Kierunek -> Dni
execute if score @s display_order matches 657 run data modify storage actionclock:player c1 set from storage actionclock:player h_val
execute if score @s display_order matches 657 run data modify storage actionclock:player c2 set from storage actionclock:player c_val
execute if score @s display_order matches 657 run data modify storage actionclock:player c3 set from storage actionclock:player w_val
execute if score @s display_order matches 657 run data modify storage actionclock:player c4 set from storage actionclock:player x_val
execute if score @s display_order matches 657 run data modify storage actionclock:player c5 set from storage actionclock:player f_val
execute if score @s display_order matches 657 run data modify storage actionclock:player c6 set from storage actionclock:player d_val
# 658: Glowka -> Zegar -> Pogoda -> Kierunek -> Dni -> Kordy
execute if score @s display_order matches 658 run data modify storage actionclock:player c1 set from storage actionclock:player h_val
execute if score @s display_order matches 658 run data modify storage actionclock:player c2 set from storage actionclock:player c_val
execute if score @s display_order matches 658 run data modify storage actionclock:player c3 set from storage actionclock:player w_val
execute if score @s display_order matches 658 run data modify storage actionclock:player c4 set from storage actionclock:player f_val
execute if score @s display_order matches 658 run data modify storage actionclock:player c5 set from storage actionclock:player d_val
execute if score @s display_order matches 658 run data modify storage actionclock:player c6 set from storage actionclock:player x_val
# 659: Glowka -> Zegar -> Pogoda -> Kierunek -> Kordy -> Dni #Kazanek
execute if score @s display_order matches 659 run data modify storage actionclock:player c1 set from storage actionclock:player h_val
execute if score @s display_order matches 659 run data modify storage actionclock:player c2 set from storage actionclock:player c_val
execute if score @s display_order matches 659 run data modify storage actionclock:player c3 set from storage actionclock:player w_val
execute if score @s display_order matches 659 run data modify storage actionclock:player c4 set from storage actionclock:player f_val
execute if score @s display_order matches 659 run data modify storage actionclock:player c5 set from storage actionclock:player x_val
execute if score @s display_order matches 659 run data modify storage actionclock:player c6 set from storage actionclock:player d_val
# 660: Glowka -> Zegar -> Kordy -> Dni -> Pogoda -> Kierunek
execute if score @s display_order matches 660 run data modify storage actionclock:player c1 set from storage actionclock:player h_val
execute if score @s display_order matches 660 run data modify storage actionclock:player c2 set from storage actionclock:player c_val
execute if score @s display_order matches 660 run data modify storage actionclock:player c3 set from storage actionclock:player x_val
execute if score @s display_order matches 660 run data modify storage actionclock:player c4 set from storage actionclock:player d_val
execute if score @s display_order matches 660 run data modify storage actionclock:player c5 set from storage actionclock:player w_val
execute if score @s display_order matches 660 run data modify storage actionclock:player c6 set from storage actionclock:player f_val
# 661: Glowka -> Zegar -> Kordy -> Dni -> Kierunek -> Pogoda
execute if score @s display_order matches 661 run data modify storage actionclock:player c1 set from storage actionclock:player h_val
execute if score @s display_order matches 661 run data modify storage actionclock:player c2 set from storage actionclock:player c_val
execute if score @s display_order matches 661 run data modify storage actionclock:player c3 set from storage actionclock:player x_val
execute if score @s display_order matches 661 run data modify storage actionclock:player c4 set from storage actionclock:player d_val
execute if score @s display_order matches 661 run data modify storage actionclock:player c5 set from storage actionclock:player f_val
execute if score @s display_order matches 661 run data modify storage actionclock:player c6 set from storage actionclock:player w_val
# 662: Glowka -> Zegar -> Kordy -> Pogoda -> Dni -> Kierunek
execute if score @s display_order matches 662 run data modify storage actionclock:player c1 set from storage actionclock:player h_val
execute if score @s display_order matches 662 run data modify storage actionclock:player c2 set from storage actionclock:player c_val
execute if score @s display_order matches 662 run data modify storage actionclock:player c3 set from storage actionclock:player x_val
execute if score @s display_order matches 662 run data modify storage actionclock:player c4 set from storage actionclock:player w_val
execute if score @s display_order matches 662 run data modify storage actionclock:player c5 set from storage actionclock:player d_val
execute if score @s display_order matches 662 run data modify storage actionclock:player c6 set from storage actionclock:player f_val
# 663: Glowka -> Zegar -> Kordy -> Pogoda -> Kierunek -> Dni
execute if score @s display_order matches 663 run data modify storage actionclock:player c1 set from storage actionclock:player h_val
execute if score @s display_order matches 663 run data modify storage actionclock:player c2 set from storage actionclock:player c_val
execute if score @s display_order matches 663 run data modify storage actionclock:player c3 set from storage actionclock:player x_val
execute if score @s display_order matches 663 run data modify storage actionclock:player c4 set from storage actionclock:player w_val
execute if score @s display_order matches 663 run data modify storage actionclock:player c5 set from storage actionclock:player f_val
execute if score @s display_order matches 663 run data modify storage actionclock:player c6 set from storage actionclock:player d_val
# 664: Glowka -> Zegar -> Kordy -> Kierunek -> Dni -> Pogoda
execute if score @s display_order matches 664 run data modify storage actionclock:player c1 set from storage actionclock:player h_val
execute if score @s display_order matches 664 run data modify storage actionclock:player c2 set from storage actionclock:player c_val
execute if score @s display_order matches 664 run data modify storage actionclock:player c3 set from storage actionclock:player x_val
execute if score @s display_order matches 664 run data modify storage actionclock:player c4 set from storage actionclock:player f_val
execute if score @s display_order matches 664 run data modify storage actionclock:player c5 set from storage actionclock:player d_val
execute if score @s display_order matches 664 run data modify storage actionclock:player c6 set from storage actionclock:player w_val
# 665: Glowka -> Zegar -> Kordy -> Kierunek -> Pogoda -> Dni
execute if score @s display_order matches 665 run data modify storage actionclock:player c1 set from storage actionclock:player h_val
execute if score @s display_order matches 665 run data modify storage actionclock:player c2 set from storage actionclock:player c_val
execute if score @s display_order matches 665 run data modify storage actionclock:player c3 set from storage actionclock:player x_val
execute if score @s display_order matches 665 run data modify storage actionclock:player c4 set from storage actionclock:player f_val
execute if score @s display_order matches 665 run data modify storage actionclock:player c5 set from storage actionclock:player w_val
execute if score @s display_order matches 665 run data modify storage actionclock:player c6 set from storage actionclock:player d_val
# 666: Glowka -> Zegar -> Kierunek -> Dni -> Pogoda -> Kordy
execute if score @s display_order matches 666 run data modify storage actionclock:player c1 set from storage actionclock:player h_val
execute if score @s display_order matches 666 run data modify storage actionclock:player c2 set from storage actionclock:player c_val
execute if score @s display_order matches 666 run data modify storage actionclock:player c3 set from storage actionclock:player f_val
execute if score @s display_order matches 666 run data modify storage actionclock:player c4 set from storage actionclock:player d_val
execute if score @s display_order matches 666 run data modify storage actionclock:player c5 set from storage actionclock:player w_val
execute if score @s display_order matches 666 run data modify storage actionclock:player c6 set from storage actionclock:player x_val
# 667: Glowka -> Zegar -> Kierunek -> Dni -> Kordy -> Pogoda
execute if score @s display_order matches 667 run data modify storage actionclock:player c1 set from storage actionclock:player h_val
execute if score @s display_order matches 667 run data modify storage actionclock:player c2 set from storage actionclock:player c_val
execute if score @s display_order matches 667 run data modify storage actionclock:player c3 set from storage actionclock:player f_val
execute if score @s display_order matches 667 run data modify storage actionclock:player c4 set from storage actionclock:player d_val
execute if score @s display_order matches 667 run data modify storage actionclock:player c5 set from storage actionclock:player x_val
execute if score @s display_order matches 667 run data modify storage actionclock:player c6 set from storage actionclock:player w_val
# 668: Glowka -> Zegar -> Kierunek -> Pogoda -> Dni -> Kordy
execute if score @s display_order matches 668 run data modify storage actionclock:player c1 set from storage actionclock:player h_val
execute if score @s display_order matches 668 run data modify storage actionclock:player c2 set from storage actionclock:player c_val
execute if score @s display_order matches 668 run data modify storage actionclock:player c3 set from storage actionclock:player f_val
execute if score @s display_order matches 668 run data modify storage actionclock:player c4 set from storage actionclock:player w_val
execute if score @s display_order matches 668 run data modify storage actionclock:player c5 set from storage actionclock:player d_val
execute if score @s display_order matches 668 run data modify storage actionclock:player c6 set from storage actionclock:player x_val
# 669: Glowka -> Zegar -> Kierunek -> Pogoda -> Kordy -> Dni
execute if score @s display_order matches 669 run data modify storage actionclock:player c1 set from storage actionclock:player h_val
execute if score @s display_order matches 669 run data modify storage actionclock:player c2 set from storage actionclock:player c_val
execute if score @s display_order matches 669 run data modify storage actionclock:player c3 set from storage actionclock:player f_val
execute if score @s display_order matches 669 run data modify storage actionclock:player c4 set from storage actionclock:player w_val
execute if score @s display_order matches 669 run data modify storage actionclock:player c5 set from storage actionclock:player x_val
execute if score @s display_order matches 669 run data modify storage actionclock:player c6 set from storage actionclock:player d_val
# 670: Glowka -> Zegar -> Kierunek -> Kordy -> Dni -> Pogoda
execute if score @s display_order matches 670 run data modify storage actionclock:player c1 set from storage actionclock:player h_val
execute if score @s display_order matches 670 run data modify storage actionclock:player c2 set from storage actionclock:player c_val
execute if score @s display_order matches 670 run data modify storage actionclock:player c3 set from storage actionclock:player f_val
execute if score @s display_order matches 670 run data modify storage actionclock:player c4 set from storage actionclock:player x_val
execute if score @s display_order matches 670 run data modify storage actionclock:player c5 set from storage actionclock:player d_val
execute if score @s display_order matches 670 run data modify storage actionclock:player c6 set from storage actionclock:player w_val
# 671: Glowka -> Zegar -> Kierunek -> Kordy -> Pogoda -> Dni
execute if score @s display_order matches 671 run data modify storage actionclock:player c1 set from storage actionclock:player h_val
execute if score @s display_order matches 671 run data modify storage actionclock:player c2 set from storage actionclock:player c_val
execute if score @s display_order matches 671 run data modify storage actionclock:player c3 set from storage actionclock:player f_val
execute if score @s display_order matches 671 run data modify storage actionclock:player c4 set from storage actionclock:player x_val
execute if score @s display_order matches 671 run data modify storage actionclock:player c5 set from storage actionclock:player w_val
execute if score @s display_order matches 671 run data modify storage actionclock:player c6 set from storage actionclock:player d_val
# 672: Glowka -> Kordy -> Dni -> Pogoda -> Zegar -> Kierunek
execute if score @s display_order matches 672 run data modify storage actionclock:player c1 set from storage actionclock:player h_val
execute if score @s display_order matches 672 run data modify storage actionclock:player c2 set from storage actionclock:player x_val
execute if score @s display_order matches 672 run data modify storage actionclock:player c3 set from storage actionclock:player d_val
execute if score @s display_order matches 672 run data modify storage actionclock:player c4 set from storage actionclock:player w_val
execute if score @s display_order matches 672 run data modify storage actionclock:player c5 set from storage actionclock:player c_val
execute if score @s display_order matches 672 run data modify storage actionclock:player c6 set from storage actionclock:player f_val
# 673: Glowka -> Kordy -> Dni -> Pogoda -> Kierunek -> Zegar
execute if score @s display_order matches 673 run data modify storage actionclock:player c1 set from storage actionclock:player h_val
execute if score @s display_order matches 673 run data modify storage actionclock:player c2 set from storage actionclock:player x_val
execute if score @s display_order matches 673 run data modify storage actionclock:player c3 set from storage actionclock:player d_val
execute if score @s display_order matches 673 run data modify storage actionclock:player c4 set from storage actionclock:player w_val
execute if score @s display_order matches 673 run data modify storage actionclock:player c5 set from storage actionclock:player f_val
execute if score @s display_order matches 673 run data modify storage actionclock:player c6 set from storage actionclock:player c_val
# 674: Glowka -> Kordy -> Dni -> Zegar -> Pogoda -> Kierunek
execute if score @s display_order matches 674 run data modify storage actionclock:player c1 set from storage actionclock:player h_val
execute if score @s display_order matches 674 run data modify storage actionclock:player c2 set from storage actionclock:player x_val
execute if score @s display_order matches 674 run data modify storage actionclock:player c3 set from storage actionclock:player d_val
execute if score @s display_order matches 674 run data modify storage actionclock:player c4 set from storage actionclock:player c_val
execute if score @s display_order matches 674 run data modify storage actionclock:player c5 set from storage actionclock:player w_val
execute if score @s display_order matches 674 run data modify storage actionclock:player c6 set from storage actionclock:player f_val
# 675: Glowka -> Kordy -> Dni -> Zegar -> Kierunek -> Pogoda
execute if score @s display_order matches 675 run data modify storage actionclock:player c1 set from storage actionclock:player h_val
execute if score @s display_order matches 675 run data modify storage actionclock:player c2 set from storage actionclock:player x_val
execute if score @s display_order matches 675 run data modify storage actionclock:player c3 set from storage actionclock:player d_val
execute if score @s display_order matches 675 run data modify storage actionclock:player c4 set from storage actionclock:player c_val
execute if score @s display_order matches 675 run data modify storage actionclock:player c5 set from storage actionclock:player f_val
execute if score @s display_order matches 675 run data modify storage actionclock:player c6 set from storage actionclock:player w_val
# 676: Glowka -> Kordy -> Dni -> Kierunek -> Pogoda -> Zegar
execute if score @s display_order matches 676 run data modify storage actionclock:player c1 set from storage actionclock:player h_val
execute if score @s display_order matches 676 run data modify storage actionclock:player c2 set from storage actionclock:player x_val
execute if score @s display_order matches 676 run data modify storage actionclock:player c3 set from storage actionclock:player d_val
execute if score @s display_order matches 676 run data modify storage actionclock:player c4 set from storage actionclock:player f_val
execute if score @s display_order matches 676 run data modify storage actionclock:player c5 set from storage actionclock:player w_val
execute if score @s display_order matches 676 run data modify storage actionclock:player c6 set from storage actionclock:player c_val
# 677: Glowka -> Kordy -> Dni -> Kierunek -> Zegar -> Pogoda
execute if score @s display_order matches 677 run data modify storage actionclock:player c1 set from storage actionclock:player h_val
execute if score @s display_order matches 677 run data modify storage actionclock:player c2 set from storage actionclock:player x_val
execute if score @s display_order matches 677 run data modify storage actionclock:player c3 set from storage actionclock:player d_val
execute if score @s display_order matches 677 run data modify storage actionclock:player c4 set from storage actionclock:player f_val
execute if score @s display_order matches 677 run data modify storage actionclock:player c5 set from storage actionclock:player c_val
execute if score @s display_order matches 677 run data modify storage actionclock:player c6 set from storage actionclock:player w_val
# 678: Glowka -> Kordy -> Pogoda -> Dni -> Zegar -> Kierunek
execute if score @s display_order matches 678 run data modify storage actionclock:player c1 set from storage actionclock:player h_val
execute if score @s display_order matches 678 run data modify storage actionclock:player c2 set from storage actionclock:player x_val
execute if score @s display_order matches 678 run data modify storage actionclock:player c3 set from storage actionclock:player w_val
execute if score @s display_order matches 678 run data modify storage actionclock:player c4 set from storage actionclock:player d_val
execute if score @s display_order matches 678 run data modify storage actionclock:player c5 set from storage actionclock:player c_val
execute if score @s display_order matches 678 run data modify storage actionclock:player c6 set from storage actionclock:player f_val
# 679: Glowka -> Kordy -> Pogoda -> Dni -> Kierunek -> Zegar
execute if score @s display_order matches 679 run data modify storage actionclock:player c1 set from storage actionclock:player h_val
execute if score @s display_order matches 679 run data modify storage actionclock:player c2 set from storage actionclock:player x_val
execute if score @s display_order matches 679 run data modify storage actionclock:player c3 set from storage actionclock:player w_val
execute if score @s display_order matches 679 run data modify storage actionclock:player c4 set from storage actionclock:player d_val
execute if score @s display_order matches 679 run data modify storage actionclock:player c5 set from storage actionclock:player f_val
execute if score @s display_order matches 679 run data modify storage actionclock:player c6 set from storage actionclock:player c_val
# 680: Glowka -> Kordy -> Pogoda -> Zegar -> Dni -> Kierunek
execute if score @s display_order matches 680 run data modify storage actionclock:player c1 set from storage actionclock:player h_val
execute if score @s display_order matches 680 run data modify storage actionclock:player c2 set from storage actionclock:player x_val
execute if score @s display_order matches 680 run data modify storage actionclock:player c3 set from storage actionclock:player w_val
execute if score @s display_order matches 680 run data modify storage actionclock:player c4 set from storage actionclock:player c_val
execute if score @s display_order matches 680 run data modify storage actionclock:player c5 set from storage actionclock:player d_val
execute if score @s display_order matches 680 run data modify storage actionclock:player c6 set from storage actionclock:player f_val
# 681: Glowka -> Kordy -> Pogoda -> Zegar -> Kierunek -> Dni
execute if score @s display_order matches 681 run data modify storage actionclock:player c1 set from storage actionclock:player h_val
execute if score @s display_order matches 681 run data modify storage actionclock:player c2 set from storage actionclock:player x_val
execute if score @s display_order matches 681 run data modify storage actionclock:player c3 set from storage actionclock:player w_val
execute if score @s display_order matches 681 run data modify storage actionclock:player c4 set from storage actionclock:player c_val
execute if score @s display_order matches 681 run data modify storage actionclock:player c5 set from storage actionclock:player f_val
execute if score @s display_order matches 681 run data modify storage actionclock:player c6 set from storage actionclock:player d_val
# 682: Glowka -> Kordy -> Pogoda -> Kierunek -> Dni -> Zegar
execute if score @s display_order matches 682 run data modify storage actionclock:player c1 set from storage actionclock:player h_val
execute if score @s display_order matches 682 run data modify storage actionclock:player c2 set from storage actionclock:player x_val
execute if score @s display_order matches 682 run data modify storage actionclock:player c3 set from storage actionclock:player w_val
execute if score @s display_order matches 682 run data modify storage actionclock:player c4 set from storage actionclock:player f_val
execute if score @s display_order matches 682 run data modify storage actionclock:player c5 set from storage actionclock:player d_val
execute if score @s display_order matches 682 run data modify storage actionclock:player c6 set from storage actionclock:player c_val
# 683: Glowka -> Kordy -> Pogoda -> Kierunek -> Zegar -> Dni
execute if score @s display_order matches 683 run data modify storage actionclock:player c1 set from storage actionclock:player h_val
execute if score @s display_order matches 683 run data modify storage actionclock:player c2 set from storage actionclock:player x_val
execute if score @s display_order matches 683 run data modify storage actionclock:player c3 set from storage actionclock:player w_val
execute if score @s display_order matches 683 run data modify storage actionclock:player c4 set from storage actionclock:player f_val
execute if score @s display_order matches 683 run data modify storage actionclock:player c5 set from storage actionclock:player c_val
execute if score @s display_order matches 683 run data modify storage actionclock:player c6 set from storage actionclock:player d_val
# 684: Glowka -> Kordy -> Zegar -> Dni -> Pogoda -> Kierunek
execute if score @s display_order matches 684 run data modify storage actionclock:player c1 set from storage actionclock:player h_val
execute if score @s display_order matches 684 run data modify storage actionclock:player c2 set from storage actionclock:player x_val
execute if score @s display_order matches 684 run data modify storage actionclock:player c3 set from storage actionclock:player c_val
execute if score @s display_order matches 684 run data modify storage actionclock:player c4 set from storage actionclock:player d_val
execute if score @s display_order matches 684 run data modify storage actionclock:player c5 set from storage actionclock:player w_val
execute if score @s display_order matches 684 run data modify storage actionclock:player c6 set from storage actionclock:player f_val
# 685: Glowka -> Kordy -> Zegar -> Dni -> Kierunek -> Pogoda
execute if score @s display_order matches 685 run data modify storage actionclock:player c1 set from storage actionclock:player h_val
execute if score @s display_order matches 685 run data modify storage actionclock:player c2 set from storage actionclock:player x_val
execute if score @s display_order matches 685 run data modify storage actionclock:player c3 set from storage actionclock:player c_val
execute if score @s display_order matches 685 run data modify storage actionclock:player c4 set from storage actionclock:player d_val
execute if score @s display_order matches 685 run data modify storage actionclock:player c5 set from storage actionclock:player f_val
execute if score @s display_order matches 685 run data modify storage actionclock:player c6 set from storage actionclock:player w_val
# 686: Glowka -> Kordy -> Zegar -> Pogoda -> Dni -> Kierunek
execute if score @s display_order matches 686 run data modify storage actionclock:player c1 set from storage actionclock:player h_val
execute if score @s display_order matches 686 run data modify storage actionclock:player c2 set from storage actionclock:player x_val
execute if score @s display_order matches 686 run data modify storage actionclock:player c3 set from storage actionclock:player c_val
execute if score @s display_order matches 686 run data modify storage actionclock:player c4 set from storage actionclock:player w_val
execute if score @s display_order matches 686 run data modify storage actionclock:player c5 set from storage actionclock:player d_val
execute if score @s display_order matches 686 run data modify storage actionclock:player c6 set from storage actionclock:player f_val
# 687: Glowka -> Kordy -> Zegar -> Pogoda -> Kierunek -> Dni
execute if score @s display_order matches 687 run data modify storage actionclock:player c1 set from storage actionclock:player h_val
execute if score @s display_order matches 687 run data modify storage actionclock:player c2 set from storage actionclock:player x_val
execute if score @s display_order matches 687 run data modify storage actionclock:player c3 set from storage actionclock:player c_val
execute if score @s display_order matches 687 run data modify storage actionclock:player c4 set from storage actionclock:player w_val
execute if score @s display_order matches 687 run data modify storage actionclock:player c5 set from storage actionclock:player f_val
execute if score @s display_order matches 687 run data modify storage actionclock:player c6 set from storage actionclock:player d_val
# 688: Glowka -> Kordy -> Zegar -> Kierunek -> Dni -> Pogoda
execute if score @s display_order matches 688 run data modify storage actionclock:player c1 set from storage actionclock:player h_val
execute if score @s display_order matches 688 run data modify storage actionclock:player c2 set from storage actionclock:player x_val
execute if score @s display_order matches 688 run data modify storage actionclock:player c3 set from storage actionclock:player c_val
execute if score @s display_order matches 688 run data modify storage actionclock:player c4 set from storage actionclock:player f_val
execute if score @s display_order matches 688 run data modify storage actionclock:player c5 set from storage actionclock:player d_val
execute if score @s display_order matches 688 run data modify storage actionclock:player c6 set from storage actionclock:player w_val
# 689: Glowka -> Kordy -> Zegar -> Kierunek -> Pogoda -> Dni
execute if score @s display_order matches 689 run data modify storage actionclock:player c1 set from storage actionclock:player h_val
execute if score @s display_order matches 689 run data modify storage actionclock:player c2 set from storage actionclock:player x_val
execute if score @s display_order matches 689 run data modify storage actionclock:player c3 set from storage actionclock:player c_val
execute if score @s display_order matches 689 run data modify storage actionclock:player c4 set from storage actionclock:player f_val
execute if score @s display_order matches 689 run data modify storage actionclock:player c5 set from storage actionclock:player w_val
execute if score @s display_order matches 689 run data modify storage actionclock:player c6 set from storage actionclock:player d_val
# 690: Glowka -> Kordy -> Kierunek -> Dni -> Pogoda -> Zegar
execute if score @s display_order matches 690 run data modify storage actionclock:player c1 set from storage actionclock:player h_val
execute if score @s display_order matches 690 run data modify storage actionclock:player c2 set from storage actionclock:player x_val
execute if score @s display_order matches 690 run data modify storage actionclock:player c3 set from storage actionclock:player f_val
execute if score @s display_order matches 690 run data modify storage actionclock:player c4 set from storage actionclock:player d_val
execute if score @s display_order matches 690 run data modify storage actionclock:player c5 set from storage actionclock:player w_val
execute if score @s display_order matches 690 run data modify storage actionclock:player c6 set from storage actionclock:player c_val
# 691: Glowka -> Kordy -> Kierunek -> Dni -> Zegar -> Pogoda
execute if score @s display_order matches 691 run data modify storage actionclock:player c1 set from storage actionclock:player h_val
execute if score @s display_order matches 691 run data modify storage actionclock:player c2 set from storage actionclock:player x_val
execute if score @s display_order matches 691 run data modify storage actionclock:player c3 set from storage actionclock:player f_val
execute if score @s display_order matches 691 run data modify storage actionclock:player c4 set from storage actionclock:player d_val
execute if score @s display_order matches 691 run data modify storage actionclock:player c5 set from storage actionclock:player c_val
execute if score @s display_order matches 691 run data modify storage actionclock:player c6 set from storage actionclock:player w_val
# 692: Glowka -> Kordy -> Kierunek -> Pogoda -> Dni -> Zegar
execute if score @s display_order matches 692 run data modify storage actionclock:player c1 set from storage actionclock:player h_val
execute if score @s display_order matches 692 run data modify storage actionclock:player c2 set from storage actionclock:player x_val
execute if score @s display_order matches 692 run data modify storage actionclock:player c3 set from storage actionclock:player f_val
execute if score @s display_order matches 692 run data modify storage actionclock:player c4 set from storage actionclock:player w_val
execute if score @s display_order matches 692 run data modify storage actionclock:player c5 set from storage actionclock:player d_val
execute if score @s display_order matches 692 run data modify storage actionclock:player c6 set from storage actionclock:player c_val
# 693: Glowka -> Kordy -> Kierunek -> Pogoda -> Zegar -> Dni
execute if score @s display_order matches 693 run data modify storage actionclock:player c1 set from storage actionclock:player h_val
execute if score @s display_order matches 693 run data modify storage actionclock:player c2 set from storage actionclock:player x_val
execute if score @s display_order matches 693 run data modify storage actionclock:player c3 set from storage actionclock:player f_val
execute if score @s display_order matches 693 run data modify storage actionclock:player c4 set from storage actionclock:player w_val
execute if score @s display_order matches 693 run data modify storage actionclock:player c5 set from storage actionclock:player c_val
execute if score @s display_order matches 693 run data modify storage actionclock:player c6 set from storage actionclock:player d_val
# 694: Glowka -> Kordy -> Kierunek -> Zegar -> Dni -> Pogoda
execute if score @s display_order matches 694 run data modify storage actionclock:player c1 set from storage actionclock:player h_val
execute if score @s display_order matches 694 run data modify storage actionclock:player c2 set from storage actionclock:player x_val
execute if score @s display_order matches 694 run data modify storage actionclock:player c3 set from storage actionclock:player f_val
execute if score @s display_order matches 694 run data modify storage actionclock:player c4 set from storage actionclock:player c_val
execute if score @s display_order matches 694 run data modify storage actionclock:player c5 set from storage actionclock:player d_val
execute if score @s display_order matches 694 run data modify storage actionclock:player c6 set from storage actionclock:player w_val
# 695: Glowka -> Kordy -> Kierunek -> Zegar -> Pogoda -> Dni
execute if score @s display_order matches 695 run data modify storage actionclock:player c1 set from storage actionclock:player h_val
execute if score @s display_order matches 695 run data modify storage actionclock:player c2 set from storage actionclock:player x_val
execute if score @s display_order matches 695 run data modify storage actionclock:player c3 set from storage actionclock:player f_val
execute if score @s display_order matches 695 run data modify storage actionclock:player c4 set from storage actionclock:player c_val
execute if score @s display_order matches 695 run data modify storage actionclock:player c5 set from storage actionclock:player w_val
execute if score @s display_order matches 695 run data modify storage actionclock:player c6 set from storage actionclock:player d_val
# 696: Glowka -> Kierunek -> Dni -> Pogoda -> Zegar -> Kordy
execute if score @s display_order matches 696 run data modify storage actionclock:player c1 set from storage actionclock:player h_val
execute if score @s display_order matches 696 run data modify storage actionclock:player c2 set from storage actionclock:player f_val
execute if score @s display_order matches 696 run data modify storage actionclock:player c3 set from storage actionclock:player d_val
execute if score @s display_order matches 696 run data modify storage actionclock:player c4 set from storage actionclock:player w_val
execute if score @s display_order matches 696 run data modify storage actionclock:player c5 set from storage actionclock:player c_val
execute if score @s display_order matches 696 run data modify storage actionclock:player c6 set from storage actionclock:player x_val
# 697: Glowka -> Kierunek -> Dni -> Pogoda -> Kordy -> Zegar
execute if score @s display_order matches 697 run data modify storage actionclock:player c1 set from storage actionclock:player h_val
execute if score @s display_order matches 697 run data modify storage actionclock:player c2 set from storage actionclock:player f_val
execute if score @s display_order matches 697 run data modify storage actionclock:player c3 set from storage actionclock:player d_val
execute if score @s display_order matches 697 run data modify storage actionclock:player c4 set from storage actionclock:player w_val
execute if score @s display_order matches 697 run data modify storage actionclock:player c5 set from storage actionclock:player x_val
execute if score @s display_order matches 697 run data modify storage actionclock:player c6 set from storage actionclock:player c_val
# 698: Glowka -> Kierunek -> Dni -> Zegar -> Pogoda -> Kordy
execute if score @s display_order matches 698 run data modify storage actionclock:player c1 set from storage actionclock:player h_val
execute if score @s display_order matches 698 run data modify storage actionclock:player c2 set from storage actionclock:player f_val
execute if score @s display_order matches 698 run data modify storage actionclock:player c3 set from storage actionclock:player d_val
execute if score @s display_order matches 698 run data modify storage actionclock:player c4 set from storage actionclock:player c_val
execute if score @s display_order matches 698 run data modify storage actionclock:player c5 set from storage actionclock:player w_val
execute if score @s display_order matches 698 run data modify storage actionclock:player c6 set from storage actionclock:player x_val
# 699: Glowka -> Kierunek -> Dni -> Zegar -> Kordy -> Pogoda
execute if score @s display_order matches 699 run data modify storage actionclock:player c1 set from storage actionclock:player h_val
execute if score @s display_order matches 699 run data modify storage actionclock:player c2 set from storage actionclock:player f_val
execute if score @s display_order matches 699 run data modify storage actionclock:player c3 set from storage actionclock:player d_val
execute if score @s display_order matches 699 run data modify storage actionclock:player c4 set from storage actionclock:player c_val
execute if score @s display_order matches 699 run data modify storage actionclock:player c5 set from storage actionclock:player x_val
execute if score @s display_order matches 699 run data modify storage actionclock:player c6 set from storage actionclock:player w_val
# 700: Glowka -> Kierunek -> Dni -> Kordy -> Pogoda -> Zegar
execute if score @s display_order matches 700 run data modify storage actionclock:player c1 set from storage actionclock:player h_val
execute if score @s display_order matches 700 run data modify storage actionclock:player c2 set from storage actionclock:player f_val
execute if score @s display_order matches 700 run data modify storage actionclock:player c3 set from storage actionclock:player d_val
execute if score @s display_order matches 700 run data modify storage actionclock:player c4 set from storage actionclock:player x_val
execute if score @s display_order matches 700 run data modify storage actionclock:player c5 set from storage actionclock:player w_val
execute if score @s display_order matches 700 run data modify storage actionclock:player c6 set from storage actionclock:player c_val
# 701: Glowka -> Kierunek -> Dni -> Kordy -> Zegar -> Pogoda
execute if score @s display_order matches 701 run data modify storage actionclock:player c1 set from storage actionclock:player h_val
execute if score @s display_order matches 701 run data modify storage actionclock:player c2 set from storage actionclock:player f_val
execute if score @s display_order matches 701 run data modify storage actionclock:player c3 set from storage actionclock:player d_val
execute if score @s display_order matches 701 run data modify storage actionclock:player c4 set from storage actionclock:player x_val
execute if score @s display_order matches 701 run data modify storage actionclock:player c5 set from storage actionclock:player c_val
execute if score @s display_order matches 701 run data modify storage actionclock:player c6 set from storage actionclock:player w_val
# 702: Glowka -> Kierunek -> Pogoda -> Dni -> Zegar -> Kordy
execute if score @s display_order matches 702 run data modify storage actionclock:player c1 set from storage actionclock:player h_val
execute if score @s display_order matches 702 run data modify storage actionclock:player c2 set from storage actionclock:player f_val
execute if score @s display_order matches 702 run data modify storage actionclock:player c3 set from storage actionclock:player w_val
execute if score @s display_order matches 702 run data modify storage actionclock:player c4 set from storage actionclock:player d_val
execute if score @s display_order matches 702 run data modify storage actionclock:player c5 set from storage actionclock:player c_val
execute if score @s display_order matches 702 run data modify storage actionclock:player c6 set from storage actionclock:player x_val
# 703: Glowka -> Kierunek -> Pogoda -> Dni -> Kordy -> Zegar
execute if score @s display_order matches 703 run data modify storage actionclock:player c1 set from storage actionclock:player h_val
execute if score @s display_order matches 703 run data modify storage actionclock:player c2 set from storage actionclock:player f_val
execute if score @s display_order matches 703 run data modify storage actionclock:player c3 set from storage actionclock:player w_val
execute if score @s display_order matches 703 run data modify storage actionclock:player c4 set from storage actionclock:player d_val
execute if score @s display_order matches 703 run data modify storage actionclock:player c5 set from storage actionclock:player x_val
execute if score @s display_order matches 703 run data modify storage actionclock:player c6 set from storage actionclock:player c_val
# 704: Glowka -> Kierunek -> Pogoda -> Zegar -> Dni -> Kordy
execute if score @s display_order matches 704 run data modify storage actionclock:player c1 set from storage actionclock:player h_val
execute if score @s display_order matches 704 run data modify storage actionclock:player c2 set from storage actionclock:player f_val
execute if score @s display_order matches 704 run data modify storage actionclock:player c3 set from storage actionclock:player w_val
execute if score @s display_order matches 704 run data modify storage actionclock:player c4 set from storage actionclock:player c_val
execute if score @s display_order matches 704 run data modify storage actionclock:player c5 set from storage actionclock:player d_val
execute if score @s display_order matches 704 run data modify storage actionclock:player c6 set from storage actionclock:player x_val
# 705: Glowka -> Kierunek -> Pogoda -> Zegar -> Kordy -> Dni
execute if score @s display_order matches 705 run data modify storage actionclock:player c1 set from storage actionclock:player h_val
execute if score @s display_order matches 705 run data modify storage actionclock:player c2 set from storage actionclock:player f_val
execute if score @s display_order matches 705 run data modify storage actionclock:player c3 set from storage actionclock:player w_val
execute if score @s display_order matches 705 run data modify storage actionclock:player c4 set from storage actionclock:player c_val
execute if score @s display_order matches 705 run data modify storage actionclock:player c5 set from storage actionclock:player x_val
execute if score @s display_order matches 705 run data modify storage actionclock:player c6 set from storage actionclock:player d_val
# 706: Glowka -> Kierunek -> Pogoda -> Kordy -> Dni -> Zegar
execute if score @s display_order matches 706 run data modify storage actionclock:player c1 set from storage actionclock:player h_val
execute if score @s display_order matches 706 run data modify storage actionclock:player c2 set from storage actionclock:player f_val
execute if score @s display_order matches 706 run data modify storage actionclock:player c3 set from storage actionclock:player w_val
execute if score @s display_order matches 706 run data modify storage actionclock:player c4 set from storage actionclock:player x_val
execute if score @s display_order matches 706 run data modify storage actionclock:player c5 set from storage actionclock:player d_val
execute if score @s display_order matches 706 run data modify storage actionclock:player c6 set from storage actionclock:player c_val
# 707: Glowka -> Kierunek -> Pogoda -> Kordy -> Zegar -> Dni
execute if score @s display_order matches 707 run data modify storage actionclock:player c1 set from storage actionclock:player h_val
execute if score @s display_order matches 707 run data modify storage actionclock:player c2 set from storage actionclock:player f_val
execute if score @s display_order matches 707 run data modify storage actionclock:player c3 set from storage actionclock:player w_val
execute if score @s display_order matches 707 run data modify storage actionclock:player c4 set from storage actionclock:player x_val
execute if score @s display_order matches 707 run data modify storage actionclock:player c5 set from storage actionclock:player c_val
execute if score @s display_order matches 707 run data modify storage actionclock:player c6 set from storage actionclock:player d_val
# 708: Glowka -> Kierunek -> Zegar -> Dni -> Pogoda -> Kordy
execute if score @s display_order matches 708 run data modify storage actionclock:player c1 set from storage actionclock:player h_val
execute if score @s display_order matches 708 run data modify storage actionclock:player c2 set from storage actionclock:player f_val
execute if score @s display_order matches 708 run data modify storage actionclock:player c3 set from storage actionclock:player c_val
execute if score @s display_order matches 708 run data modify storage actionclock:player c4 set from storage actionclock:player d_val
execute if score @s display_order matches 708 run data modify storage actionclock:player c5 set from storage actionclock:player w_val
execute if score @s display_order matches 708 run data modify storage actionclock:player c6 set from storage actionclock:player x_val
# 709: Glowka -> Kierunek -> Zegar -> Dni -> Kordy -> Pogoda
execute if score @s display_order matches 709 run data modify storage actionclock:player c1 set from storage actionclock:player h_val
execute if score @s display_order matches 709 run data modify storage actionclock:player c2 set from storage actionclock:player f_val
execute if score @s display_order matches 709 run data modify storage actionclock:player c3 set from storage actionclock:player c_val
execute if score @s display_order matches 709 run data modify storage actionclock:player c4 set from storage actionclock:player d_val
execute if score @s display_order matches 709 run data modify storage actionclock:player c5 set from storage actionclock:player x_val
execute if score @s display_order matches 709 run data modify storage actionclock:player c6 set from storage actionclock:player w_val
# 710: Glowka -> Kierunek -> Zegar -> Pogoda -> Dni -> Kordy
execute if score @s display_order matches 710 run data modify storage actionclock:player c1 set from storage actionclock:player h_val
execute if score @s display_order matches 710 run data modify storage actionclock:player c2 set from storage actionclock:player f_val
execute if score @s display_order matches 710 run data modify storage actionclock:player c3 set from storage actionclock:player c_val
execute if score @s display_order matches 710 run data modify storage actionclock:player c4 set from storage actionclock:player w_val
execute if score @s display_order matches 710 run data modify storage actionclock:player c5 set from storage actionclock:player d_val
execute if score @s display_order matches 710 run data modify storage actionclock:player c6 set from storage actionclock:player x_val
# 711: Glowka -> Kierunek -> Zegar -> Pogoda -> Kordy -> Dni
execute if score @s display_order matches 711 run data modify storage actionclock:player c1 set from storage actionclock:player h_val
execute if score @s display_order matches 711 run data modify storage actionclock:player c2 set from storage actionclock:player f_val
execute if score @s display_order matches 711 run data modify storage actionclock:player c3 set from storage actionclock:player c_val
execute if score @s display_order matches 711 run data modify storage actionclock:player c4 set from storage actionclock:player w_val
execute if score @s display_order matches 711 run data modify storage actionclock:player c5 set from storage actionclock:player x_val
execute if score @s display_order matches 711 run data modify storage actionclock:player c6 set from storage actionclock:player d_val
# 712: Glowka -> Kierunek -> Zegar -> Kordy -> Dni -> Pogoda
execute if score @s display_order matches 712 run data modify storage actionclock:player c1 set from storage actionclock:player h_val
execute if score @s display_order matches 712 run data modify storage actionclock:player c2 set from storage actionclock:player f_val
execute if score @s display_order matches 712 run data modify storage actionclock:player c3 set from storage actionclock:player c_val
execute if score @s display_order matches 712 run data modify storage actionclock:player c4 set from storage actionclock:player x_val
execute if score @s display_order matches 712 run data modify storage actionclock:player c5 set from storage actionclock:player d_val
execute if score @s display_order matches 712 run data modify storage actionclock:player c6 set from storage actionclock:player w_val
# 713: Glowka -> Kierunek -> Zegar -> Kordy -> Pogoda -> Dni
execute if score @s display_order matches 713 run data modify storage actionclock:player c1 set from storage actionclock:player h_val
execute if score @s display_order matches 713 run data modify storage actionclock:player c2 set from storage actionclock:player f_val
execute if score @s display_order matches 713 run data modify storage actionclock:player c3 set from storage actionclock:player c_val
execute if score @s display_order matches 713 run data modify storage actionclock:player c4 set from storage actionclock:player x_val
execute if score @s display_order matches 713 run data modify storage actionclock:player c5 set from storage actionclock:player w_val
execute if score @s display_order matches 713 run data modify storage actionclock:player c6 set from storage actionclock:player d_val
# 714: Glowka -> Kierunek -> Kordy -> Dni -> Pogoda -> Zegar
execute if score @s display_order matches 714 run data modify storage actionclock:player c1 set from storage actionclock:player h_val
execute if score @s display_order matches 714 run data modify storage actionclock:player c2 set from storage actionclock:player f_val
execute if score @s display_order matches 714 run data modify storage actionclock:player c3 set from storage actionclock:player x_val
execute if score @s display_order matches 714 run data modify storage actionclock:player c4 set from storage actionclock:player d_val
execute if score @s display_order matches 714 run data modify storage actionclock:player c5 set from storage actionclock:player w_val
execute if score @s display_order matches 714 run data modify storage actionclock:player c6 set from storage actionclock:player c_val
# 715: Glowka -> Kierunek -> Kordy -> Dni -> Zegar -> Pogoda
execute if score @s display_order matches 715 run data modify storage actionclock:player c1 set from storage actionclock:player h_val
execute if score @s display_order matches 715 run data modify storage actionclock:player c2 set from storage actionclock:player f_val
execute if score @s display_order matches 715 run data modify storage actionclock:player c3 set from storage actionclock:player x_val
execute if score @s display_order matches 715 run data modify storage actionclock:player c4 set from storage actionclock:player d_val
execute if score @s display_order matches 715 run data modify storage actionclock:player c5 set from storage actionclock:player c_val
execute if score @s display_order matches 715 run data modify storage actionclock:player c6 set from storage actionclock:player w_val
# 716: Glowka -> Kierunek -> Kordy -> Pogoda -> Dni -> Zegar
execute if score @s display_order matches 716 run data modify storage actionclock:player c1 set from storage actionclock:player h_val
execute if score @s display_order matches 716 run data modify storage actionclock:player c2 set from storage actionclock:player f_val
execute if score @s display_order matches 716 run data modify storage actionclock:player c3 set from storage actionclock:player x_val
execute if score @s display_order matches 716 run data modify storage actionclock:player c4 set from storage actionclock:player w_val
execute if score @s display_order matches 716 run data modify storage actionclock:player c5 set from storage actionclock:player d_val
execute if score @s display_order matches 716 run data modify storage actionclock:player c6 set from storage actionclock:player c_val
# Glowka -> Kierunek -> Kordy -> Pogoda -> Zegar -> Dni
execute if score @s display_order matches 717 run data modify storage actionclock:player c1 set from storage actionclock:player h_val
execute if score @s display_order matches 717 run data modify storage actionclock:player c2 set from storage actionclock:player f_val
execute if score @s display_order matches 717 run data modify storage actionclock:player c3 set from storage actionclock:player x_val
execute if score @s display_order matches 717 run data modify storage actionclock:player c4 set from storage actionclock:player w_val
execute if score @s display_order matches 717 run data modify storage actionclock:player c5 set from storage actionclock:player c_val
execute if score @s display_order matches 717 run data modify storage actionclock:player c6 set from storage actionclock:player d_val
# Glowka -> Kierunek -> Kordy -> Zegar -> Dni -> Pogoda
execute if score @s display_order matches 718 run data modify storage actionclock:player c1 set from storage actionclock:player h_val
execute if score @s display_order matches 718 run data modify storage actionclock:player c2 set from storage actionclock:player f_val
execute if score @s display_order matches 718 run data modify storage actionclock:player c3 set from storage actionclock:player x_val
execute if score @s display_order matches 718 run data modify storage actionclock:player c4 set from storage actionclock:player c_val
execute if score @s display_order matches 718 run data modify storage actionclock:player c5 set from storage actionclock:player d_val
execute if score @s display_order matches 718 run data modify storage actionclock:player c6 set from storage actionclock:player w_val
# Glowka -> Kierunek -> Kordy -> Zegar -> Pogoda -> Dni
execute if score @s display_order matches 719 run data modify storage actionclock:player c1 set from storage actionclock:player h_val
execute if score @s display_order matches 719 run data modify storage actionclock:player c2 set from storage actionclock:player f_val
execute if score @s display_order matches 719 run data modify storage actionclock:player c3 set from storage actionclock:player x_val
execute if score @s display_order matches 719 run data modify storage actionclock:player c4 set from storage actionclock:player c_val
execute if score @s display_order matches 719 run data modify storage actionclock:player c5 set from storage actionclock:player w_val
execute if score @s display_order matches 719 run data modify storage actionclock:player c6 set from storage actionclock:player d_val

# Mapowanie c1..c6 do item1..item6
scoreboard players set #active_count actionclock_time 0

# c1
execute unless data storage actionclock:player {c1:{text:""}} run data modify storage actionclock:player item1 set from storage actionclock:player c1
execute unless data storage actionclock:player {c1:{text:""}} run scoreboard players set #active_count actionclock_time 1

# c2
scoreboard players operation #prev_count actionclock_time = #active_count actionclock_time
execute unless data storage actionclock:player {c2:{text:""}} if score #prev_count actionclock_time matches 0 run data modify storage actionclock:player item1 set from storage actionclock:player c2
execute unless data storage actionclock:player {c2:{text:""}} if score #prev_count actionclock_time matches 0 run scoreboard players set #active_count actionclock_time 1

execute unless data storage actionclock:player {c2:{text:""}} if score #prev_count actionclock_time matches 1 run data modify storage actionclock:player item2 set from storage actionclock:player c2
execute unless data storage actionclock:player {c2:{text:""}} if score #prev_count actionclock_time matches 1 run scoreboard players set #active_count actionclock_time 2

# c3
scoreboard players operation #prev_count actionclock_time = #active_count actionclock_time
execute unless data storage actionclock:player {c3:{text:""}} if score #prev_count actionclock_time matches 0 run data modify storage actionclock:player item1 set from storage actionclock:player c3
execute unless data storage actionclock:player {c3:{text:""}} if score #prev_count actionclock_time matches 0 run scoreboard players set #active_count actionclock_time 1

execute unless data storage actionclock:player {c3:{text:""}} if score #prev_count actionclock_time matches 1 run data modify storage actionclock:player item2 set from storage actionclock:player c3
execute unless data storage actionclock:player {c3:{text:""}} if score #prev_count actionclock_time matches 1 run scoreboard players set #active_count actionclock_time 2

execute unless data storage actionclock:player {c3:{text:""}} if score #prev_count actionclock_time matches 2 run data modify storage actionclock:player item3 set from storage actionclock:player c3
execute unless data storage actionclock:player {c3:{text:""}} if score #prev_count actionclock_time matches 2 run scoreboard players set #active_count actionclock_time 3

# c4
scoreboard players operation #prev_count actionclock_time = #active_count actionclock_time
execute unless data storage actionclock:player {c4:{text:""}} if score #prev_count actionclock_time matches 0 run data modify storage actionclock:player item1 set from storage actionclock:player c4
execute unless data storage actionclock:player {c4:{text:""}} if score #prev_count actionclock_time matches 0 run scoreboard players set #active_count actionclock_time 1

execute unless data storage actionclock:player {c4:{text:""}} if score #prev_count actionclock_time matches 1 run data modify storage actionclock:player item2 set from storage actionclock:player c4
execute unless data storage actionclock:player {c4:{text:""}} if score #prev_count actionclock_time matches 1 run scoreboard players set #active_count actionclock_time 2

execute unless data storage actionclock:player {c4:{text:""}} if score #prev_count actionclock_time matches 2 run data modify storage actionclock:player item3 set from storage actionclock:player c4
execute unless data storage actionclock:player {c4:{text:""}} if score #prev_count actionclock_time matches 2 run scoreboard players set #active_count actionclock_time 3

execute unless data storage actionclock:player {c4:{text:""}} if score #prev_count actionclock_time matches 3 run data modify storage actionclock:player item4 set from storage actionclock:player c4
execute unless data storage actionclock:player {c4:{text:""}} if score #prev_count actionclock_time matches 3 run scoreboard players set #active_count actionclock_time 4

# c5
scoreboard players operation #prev_count actionclock_time = #active_count actionclock_time
execute unless data storage actionclock:player {c5:{text:""}} if score #prev_count actionclock_time matches 0 run data modify storage actionclock:player item1 set from storage actionclock:player c5
execute unless data storage actionclock:player {c5:{text:""}} if score #prev_count actionclock_time matches 0 run scoreboard players set #active_count actionclock_time 1

execute unless data storage actionclock:player {c5:{text:""}} if score #prev_count actionclock_time matches 1 run data modify storage actionclock:player item2 set from storage actionclock:player c5
execute unless data storage actionclock:player {c5:{text:""}} if score #prev_count actionclock_time matches 1 run scoreboard players set #active_count actionclock_time 2

execute unless data storage actionclock:player {c5:{text:""}} if score #prev_count actionclock_time matches 2 run data modify storage actionclock:player item3 set from storage actionclock:player c5
execute unless data storage actionclock:player {c5:{text:""}} if score #prev_count actionclock_time matches 2 run scoreboard players set #active_count actionclock_time 3

execute unless data storage actionclock:player {c5:{text:""}} if score #prev_count actionclock_time matches 3 run data modify storage actionclock:player item4 set from storage actionclock:player c5
execute unless data storage actionclock:player {c5:{text:""}} if score #prev_count actionclock_time matches 3 run scoreboard players set #active_count actionclock_time 4

execute unless data storage actionclock:player {c5:{text:""}} if score #prev_count actionclock_time matches 4 run data modify storage actionclock:player item5 set from storage actionclock:player c5
execute unless data storage actionclock:player {c5:{text:""}} if score #prev_count actionclock_time matches 4 run scoreboard players set #active_count actionclock_time 5

# c6
scoreboard players operation #prev_count actionclock_time = #active_count actionclock_time
execute unless data storage actionclock:player {c6:{text:""}} if score #prev_count actionclock_time matches 0 run data modify storage actionclock:player item1 set from storage actionclock:player c6
execute unless data storage actionclock:player {c6:{text:""}} if score #prev_count actionclock_time matches 0 run scoreboard players set #active_count actionclock_time 1

execute unless data storage actionclock:player {c6:{text:""}} if score #prev_count actionclock_time matches 1 run data modify storage actionclock:player item2 set from storage actionclock:player c6
execute unless data storage actionclock:player {c6:{text:""}} if score #prev_count actionclock_time matches 1 run scoreboard players set #active_count actionclock_time 2

execute unless data storage actionclock:player {c6:{text:""}} if score #prev_count actionclock_time matches 2 run data modify storage actionclock:player item3 set from storage actionclock:player c6
execute unless data storage actionclock:player {c6:{text:""}} if score #prev_count actionclock_time matches 2 run scoreboard players set #active_count actionclock_time 3

execute unless data storage actionclock:player {c6:{text:""}} if score #prev_count actionclock_time matches 3 run data modify storage actionclock:player item4 set from storage actionclock:player c6
execute unless data storage actionclock:player {c6:{text:""}} if score #prev_count actionclock_time matches 3 run scoreboard players set #active_count actionclock_time 4

execute unless data storage actionclock:player {c6:{text:""}} if score #prev_count actionclock_time matches 4 run data modify storage actionclock:player item5 set from storage actionclock:player c6
execute unless data storage actionclock:player {c6:{text:""}} if score #prev_count actionclock_time matches 4 run scoreboard players set #active_count actionclock_time 5

execute unless data storage actionclock:player {c6:{text:""}} if score #prev_count actionclock_time matches 5 run data modify storage actionclock:player item6 set from storage actionclock:player c6
execute unless data storage actionclock:player {c6:{text:""}} if score #prev_count actionclock_time matches 5 run scoreboard players set #active_count actionclock_time 6

# Wstawianie separatorow
execute if score #active_count actionclock_time matches 2.. run data modify storage actionclock:player sep1.text set from storage actionclock:player sep_symbol
execute if score #active_count actionclock_time matches 3.. run data modify storage actionclock:player sep2.text set from storage actionclock:player sep_symbol
execute if score #active_count actionclock_time matches 4.. run data modify storage actionclock:player sep3.text set from storage actionclock:player sep_symbol
execute if score #active_count actionclock_time matches 5.. run data modify storage actionclock:player sep4.text set from storage actionclock:player sep_symbol
execute if score #active_count actionclock_time matches 6.. run data modify storage actionclock:player sep5.text set from storage actionclock:player sep_symbol

# Rozszerzenie
function #actionclock:api/post_render

# Wyswietlanie
execute if score #active_count actionclock_time matches 1.. run function actionclock:display_actionbar with storage actionclock:player