# My Action Bar | Stworzony przez MrKazanek 

data modify storage actionclock:player ext_sep_left set value ""
data modify storage actionclock:player ext_sep_right set value ""

# Instrukcja bym pamietal
# execute if score @s external_separators matches X run data modify storage actionclock:player ext_sep_left set value "LEWY"
# execute if score @s external_separators matches X run data modify storage actionclock:player ext_sep_right set value "PRAWY"


# Separatory dostepne
execute if score @s external_separators matches 1 run data modify storage actionclock:player ext_sep_left set value "[ "
execute if score @s external_separators matches 1 run data modify storage actionclock:player ext_sep_right set value " ]"

execute if score @s external_separators matches 2 run data modify storage actionclock:player ext_sep_left set value "{ "
execute if score @s external_separators matches 2 run data modify storage actionclock:player ext_sep_right set value " }"

execute if score @s external_separators matches 3 run data modify storage actionclock:player ext_sep_left set value "( "
execute if score @s external_separators matches 3 run data modify storage actionclock:player ext_sep_right set value " )"

execute if score @s external_separators matches 4 run data modify storage actionclock:player ext_sep_left set value "} "
execute if score @s external_separators matches 4 run data modify storage actionclock:player ext_sep_right set value " {"

execute if score @s external_separators matches 5 run data modify storage actionclock:player ext_sep_left set value ") "
execute if score @s external_separators matches 5 run data modify storage actionclock:player ext_sep_right set value " ("

execute if score @s external_separators matches 6 run data modify storage actionclock:player ext_sep_left set value "| "
execute if score @s external_separators matches 6 run data modify storage actionclock:player ext_sep_right set value " |"

execute if score @s external_separators matches 7 run data modify storage actionclock:player ext_sep_left set value "|| "
execute if score @s external_separators matches 7 run data modify storage actionclock:player ext_sep_right set value " ||"

execute if score @s external_separators matches 8 run data modify storage actionclock:player ext_sep_left set value "- "
execute if score @s external_separators matches 8 run data modify storage actionclock:player ext_sep_right set value " -"

execute if score @s external_separators matches 9 run data modify storage actionclock:player ext_sep_left set value "-- "
execute if score @s external_separators matches 9 run data modify storage actionclock:player ext_sep_right set value " --"

execute if score @s external_separators matches 10 run data modify storage actionclock:player ext_sep_left set value "-[ "
execute if score @s external_separators matches 10 run data modify storage actionclock:player ext_sep_right set value " ]-"

execute if score @s external_separators matches 11 run data modify storage actionclock:player ext_sep_left set value "-( "
execute if score @s external_separators matches 11 run data modify storage actionclock:player ext_sep_right set value " )-"

execute if score @s external_separators matches 12 run data modify storage actionclock:player ext_sep_left set value "-{ "
execute if score @s external_separators matches 12 run data modify storage actionclock:player ext_sep_right set value " }-"

execute if score @s external_separators matches 13 run data modify storage actionclock:player ext_sep_left set value "+ "
execute if score @s external_separators matches 13 run data modify storage actionclock:player ext_sep_right set value " +"

execute if score @s external_separators matches 14 run data modify storage actionclock:player ext_sep_left set value "= "
execute if score @s external_separators matches 14 run data modify storage actionclock:player ext_sep_right set value " ="

execute if score @s external_separators matches 15 run data modify storage actionclock:player ext_sep_left set value "== "
execute if score @s external_separators matches 15 run data modify storage actionclock:player ext_sep_right set value " =="

execute if score @s external_separators matches 16 run data modify storage actionclock:player ext_sep_left set value "-= "
execute if score @s external_separators matches 16 run data modify storage actionclock:player ext_sep_right set value " =-"

execute if score @s external_separators matches 17 run data modify storage actionclock:player ext_sep_left set value "/ "
execute if score @s external_separators matches 17 run data modify storage actionclock:player ext_sep_right set value " /"

execute if score @s external_separators matches 18 run data modify storage actionclock:player ext_sep_left set value "// "
execute if score @s external_separators matches 18 run data modify storage actionclock:player ext_sep_right set value " //"

execute if score @s external_separators matches 19 run data modify storage actionclock:player ext_sep_left set value "> "
execute if score @s external_separators matches 19 run data modify storage actionclock:player ext_sep_right set value " <"

execute if score @s external_separators matches 20 run data modify storage actionclock:player ext_sep_left set value "< "
execute if score @s external_separators matches 20 run data modify storage actionclock:player ext_sep_right set value " >"

execute if score @s external_separators matches 21 run data modify storage actionclock:player ext_sep_left set value "-> "
execute if score @s external_separators matches 21 run data modify storage actionclock:player ext_sep_right set value " <-"

execute if score @s external_separators matches 22 run data modify storage actionclock:player ext_sep_left set value "-< "
execute if score @s external_separators matches 22 run data modify storage actionclock:player ext_sep_right set value " >-"

execute if score @s external_separators matches 23 run data modify storage actionclock:player ext_sep_left set value ": "
execute if score @s external_separators matches 23 run data modify storage actionclock:player ext_sep_right set value " :"

execute if score @s external_separators matches 24 run data modify storage actionclock:player ext_sep_left set value ": : "
execute if score @s external_separators matches 24 run data modify storage actionclock:player ext_sep_right set value " : :"

execute if score @s external_separators matches 25 run data modify storage actionclock:player ext_sep_left set value "I "
execute if score @s external_separators matches 25 run data modify storage actionclock:player ext_sep_right set value " I"

execute if score @s external_separators matches 26 run data modify storage actionclock:player ext_sep_left set value "• "
execute if score @s external_separators matches 26 run data modify storage actionclock:player ext_sep_right set value " •"


execute if score @s external_separators matches 27 run data modify storage actionclock:player ext_sep_left set value "« "
execute if score @s external_separators matches 27 run data modify storage actionclock:player ext_sep_right set value " »"


execute if score @s external_separators matches 28 run data modify storage actionclock:player ext_sep_left set value "» "
execute if score @s external_separators matches 28 run data modify storage actionclock:player ext_sep_right set value " «"

execute if score @s external_separators matches 29 run data modify storage actionclock:player ext_sep_left set value "› "
execute if score @s external_separators matches 29 run data modify storage actionclock:player ext_sep_right set value " ‹"

execute if score @s external_separators matches 30 run data modify storage actionclock:player ext_sep_left set value "‹ "
execute if score @s external_separators matches 30 run data modify storage actionclock:player ext_sep_right set value " ›"

execute if score @s external_separators matches 31 run data modify storage actionclock:player ext_sep_left set value "⭐ "
execute if score @s external_separators matches 31 run data modify storage actionclock:player ext_sep_right set value " ⭐"

execute if score @s external_separators matches 32 run data modify storage actionclock:player ext_sep_left set value "¦ "
execute if score @s external_separators matches 32 run data modify storage actionclock:player ext_sep_right set value " ¦"

execute if score @s external_separators matches 33 run data modify storage actionclock:player ext_sep_left set value "⁜ "
execute if score @s external_separators matches 33 run data modify storage actionclock:player ext_sep_right set value " ⁜"

execute if score @s external_separators matches 34 run data modify storage actionclock:player ext_sep_left set value "※ "
execute if score @s external_separators matches 34 run data modify storage actionclock:player ext_sep_right set value " ※"

execute if score @s external_separators matches 35 run data modify storage actionclock:player ext_sep_left set value "× "
execute if score @s external_separators matches 35 run data modify storage actionclock:player ext_sep_right set value " ×"

execute if score @s external_separators matches 36 run data modify storage actionclock:player ext_sep_left set value "# "
execute if score @s external_separators matches 36 run data modify storage actionclock:player ext_sep_right set value " #"

execute if score @s external_separators matches 37 run data modify storage actionclock:player ext_sep_left set value "% "
execute if score @s external_separators matches 37 run data modify storage actionclock:player ext_sep_right set value " %"

execute if score @s external_separators matches 38 run data modify storage actionclock:player ext_sep_left set value "$ "
execute if score @s external_separators matches 38 run data modify storage actionclock:player ext_sep_right set value " $"

execute if score @s external_separators matches 39 run data modify storage actionclock:player ext_sep_left set value "=| "
execute if score @s external_separators matches 39 run data modify storage actionclock:player ext_sep_right set value " |="

execute if score @s external_separators matches 40 run data modify storage actionclock:player ext_sep_left set value "~ "
execute if score @s external_separators matches 40 run data modify storage actionclock:player ext_sep_right set value " ~"

execute if score @s external_separators matches 41 run data modify storage actionclock:player ext_sep_left set value "~~ "
execute if score @s external_separators matches 41 run data modify storage actionclock:player ext_sep_right set value " ~~"

execute if score @s external_separators matches 42 run data modify storage actionclock:player ext_sep_left set value "^ "
execute if score @s external_separators matches 42 run data modify storage actionclock:player ext_sep_right set value " ^"

execute if score @s external_separators matches 43 run data modify storage actionclock:player ext_sep_left set value "* "
execute if score @s external_separators matches 43 run data modify storage actionclock:player ext_sep_right set value " *"

execute if score @s external_separators matches 44 run data modify storage actionclock:player ext_sep_left set value "** "
execute if score @s external_separators matches 44 run data modify storage actionclock:player ext_sep_right set value " **"

execute if score @s external_separators matches 45 run data modify storage actionclock:player ext_sep_left set value "+- "
execute if score @s external_separators matches 45 run data modify storage actionclock:player ext_sep_right set value " -+"

execute if score @s external_separators matches 46 run data modify storage actionclock:player ext_sep_left set value "<| "
execute if score @s external_separators matches 46 run data modify storage actionclock:player ext_sep_right set value " |>"

execute if score @s external_separators matches 47 run data modify storage actionclock:player ext_sep_left set value "|< "
execute if score @s external_separators matches 47 run data modify storage actionclock:player ext_sep_right set value " >|"

execute if score @s external_separators matches 48 run data modify storage actionclock:player ext_sep_left set value "[[ "
execute if score @s external_separators matches 48 run data modify storage actionclock:player ext_sep_right set value " ]]"

execute if score @s external_separators matches 49 run data modify storage actionclock:player ext_sep_left set value "{{ "
execute if score @s external_separators matches 49 run data modify storage actionclock:player ext_sep_right set value " }}"

execute if score @s external_separators matches 50 run data modify storage actionclock:player ext_sep_left set value "<< "
execute if score @s external_separators matches 50 run data modify storage actionclock:player ext_sep_right set value " >>"

execute if score @s external_separators matches 51 run data modify storage actionclock:player ext_sep_left set value "(( "
execute if score @s external_separators matches 51 run data modify storage actionclock:player ext_sep_right set value " ))"

execute if score @s external_separators matches 52 run data modify storage actionclock:player ext_sep_left set value "° "
execute if score @s external_separators matches 52 run data modify storage actionclock:player ext_sep_right set value " °"

execute if score @s external_separators matches 53 run data modify storage actionclock:player ext_sep_left set value "○ "
execute if score @s external_separators matches 53 run data modify storage actionclock:player ext_sep_right set value " ○"

execute if score @s external_separators matches 54 run data modify storage actionclock:player ext_sep_left set value "● "
execute if score @s external_separators matches 54 run data modify storage actionclock:player ext_sep_right set value " ●"

execute if score @s external_separators matches 55 run data modify storage actionclock:player ext_sep_left set value "◆ "
execute if score @s external_separators matches 55 run data modify storage actionclock:player ext_sep_right set value " ◆"

execute if score @s external_separators matches 56 run data modify storage actionclock:player ext_sep_left set value "◇ "
execute if score @s external_separators matches 56 run data modify storage actionclock:player ext_sep_right set value " ◇"

execute if score @s external_separators matches 57 run data modify storage actionclock:player ext_sep_left set value "■ "
execute if score @s external_separators matches 57 run data modify storage actionclock:player ext_sep_right set value " ■"

execute if score @s external_separators matches 58 run data modify storage actionclock:player ext_sep_left set value "□ "
execute if score @s external_separators matches 58 run data modify storage actionclock:player ext_sep_right set value " □"

execute if score @s external_separators matches 59 run data modify storage actionclock:player ext_sep_left set value "▲ "
execute if score @s external_separators matches 59 run data modify storage actionclock:player ext_sep_right set value " ▲"

execute if score @s external_separators matches 60 run data modify storage actionclock:player ext_sep_left set value "▼ "
execute if score @s external_separators matches 60 run data modify storage actionclock:player ext_sep_right set value " ▼"

execute if score @s external_separators matches 61 run data modify storage actionclock:player ext_sep_left set value "◀ "
execute if score @s external_separators matches 61 run data modify storage actionclock:player ext_sep_right set value " ▶"

execute if score @s external_separators matches 62 run data modify storage actionclock:player ext_sep_left set value "◁ "
execute if score @s external_separators matches 62 run data modify storage actionclock:player ext_sep_right set value " ▷"

execute if score @s external_separators matches 63 run data modify storage actionclock:player ext_sep_left set value "@ "
execute if score @s external_separators matches 63 run data modify storage actionclock:player ext_sep_right set value " @"

execute if score @s external_separators matches 64 run data modify storage actionclock:player ext_sep_left set value "? "
execute if score @s external_separators matches 64 run data modify storage actionclock:player ext_sep_right set value " ?"