# My Action Bar | Stworzony przez MrKazanek 

# Domyslna wartosc
data modify storage actionclock:display prefix_emoji set value "☀"
data modify storage actionclock:display prefix_text set value "Sun"
data modify storage actionclock:display prefix set value "☀"
data modify storage actionclock:display pcolor set value "yellow"

# Deszcz 
execute if dimension minecraft:overworld unless predicate {condition:"minecraft:weather_check",thundering:true} if predicate {condition:"minecraft:weather_check",raining:true} run data modify storage actionclock:display prefix_emoji set value "🌧"
execute if dimension minecraft:overworld unless predicate {condition:"minecraft:weather_check",thundering:true} if predicate {condition:"minecraft:weather_check",raining:true} run data modify storage actionclock:display prefix_text set value "Rain"
execute if dimension minecraft:overworld unless predicate {condition:"minecraft:weather_check",thundering:true} if predicate {condition:"minecraft:weather_check",raining:true} run data modify storage actionclock:display prefix set value "🌧"
execute if dimension minecraft:overworld unless predicate {condition:"minecraft:weather_check",thundering:true} if predicate {condition:"minecraft:weather_check",raining:true} run data modify storage actionclock:display pcolor set value "gray"

# Burza
execute if dimension minecraft:overworld if predicate {condition:"minecraft:weather_check",thundering:true} run data modify storage actionclock:display prefix_emoji set value "⚡"
execute if dimension minecraft:overworld if predicate {condition:"minecraft:weather_check",thundering:true} run data modify storage actionclock:display prefix_text set value "Thunder"
execute if dimension minecraft:overworld if predicate {condition:"minecraft:weather_check",thundering:true} run data modify storage actionclock:display prefix set value "⚡"
execute if dimension minecraft:overworld if predicate {condition:"minecraft:weather_check",thundering:true} run data modify storage actionclock:display pcolor set value "dark_yellow"

# Śnieg
execute if dimension minecraft:overworld unless predicate {condition:"minecraft:weather_check",thundering:true} if predicate {condition:"minecraft:weather_check",raining:true} as @a[limit=1] at @s if biome ~ ~ ~ #minecraft:is_nether run data modify storage actionclock:display prefix_emoji set value "❄"
execute if dimension minecraft:overworld unless predicate {condition:"minecraft:weather_check",thundering:true} if predicate {condition:"minecraft:weather_check",raining:true} as @a[limit=1] at @s if biome ~ ~ ~ #minecraft:is_nether run data modify storage actionclock:display prefix_text set value "Snow"
execute if dimension minecraft:overworld unless predicate {condition:"minecraft:weather_check",thundering:true} if predicate {condition:"minecraft:weather_check",raining:true} as @a[limit=1] at @s if biome ~ ~ ~ #minecraft:is_nether run data modify storage actionclock:display prefix set value "❄"

# Snieżne biomy
execute if dimension minecraft:overworld unless predicate {condition:"minecraft:weather_check",thundering:true} if predicate {condition:"minecraft:weather_check",raining:true} as @a[limit=1] at @s if biome ~ ~ ~ minecraft:snowy_plains run data modify storage actionclock:display prefix_emoji set value "❄"
execute if dimension minecraft:overworld unless predicate {condition:"minecraft:weather_check",thundering:true} if predicate {condition:"minecraft:weather_check",raining:true} as @a[limit=1] at @s if biome ~ ~ ~ minecraft:snowy_plains run data modify storage actionclock:display prefix_text set value "Snow"
execute if dimension minecraft:overworld unless predicate {condition:"minecraft:weather_check",thundering:true} if predicate {condition:"minecraft:weather_check",raining:true} as @a[limit=1] at @s if biome ~ ~ ~ minecraft:snowy_plains run data modify storage actionclock:display prefix set value "❄"

execute if dimension minecraft:overworld unless predicate {condition:"minecraft:weather_check",thundering:true} if predicate {condition:"minecraft:weather_check",raining:true} as @a[limit=1] at @s if biome ~ ~ ~ minecraft:grove run data modify storage actionclock:display prefix_emoji set value "❄"
execute if dimension minecraft:overworld unless predicate {condition:"minecraft:weather_check",thundering:true} if predicate {condition:"minecraft:weather_check",raining:true} as @a[limit=1] at @s if biome ~ ~ ~ minecraft:grove run data modify storage actionclock:display prefix_text set value "Snow"
execute if dimension minecraft:overworld unless predicate {condition:"minecraft:weather_check",thundering:true} if predicate {condition:"minecraft:weather_check",raining:true} as @a[limit=1] at @s if biome ~ ~ ~ minecraft:grove run data modify storage actionclock:display prefix set value "❄"

execute if dimension minecraft:overworld unless predicate {condition:"minecraft:weather_check",thundering:true} if predicate {condition:"minecraft:weather_check",raining:true} as @a[limit=1] at @s if biome ~ ~ ~ minecraft:frozen_river run data modify storage actionclock:display prefix_emoji set value "❄"
execute if dimension minecraft:overworld unless predicate {condition:"minecraft:weather_check",thundering:true} if predicate {condition:"minecraft:weather_check",raining:true} as @a[limit=1] at @s if biome ~ ~ ~ minecraft:frozen_river run data modify storage actionclock:display prefix_text set value "Snow"
execute if dimension minecraft:overworld unless predicate {condition:"minecraft:weather_check",thundering:true} if predicate {condition:"minecraft:weather_check",raining:true} as @a[limit=1] at @s if biome ~ ~ ~ minecraft:frozen_river run data modify storage actionclock:display prefix set value "❄"

execute if dimension minecraft:overworld unless predicate {condition:"minecraft:weather_check",thundering:true} if predicate {condition:"minecraft:weather_check",raining:true} as @a[limit=1] at @s if biome ~ ~ ~ minecraft:ice_spikes run data modify storage actionclock:display prefix_emoji set value "❄"
execute if dimension minecraft:overworld unless predicate {condition:"minecraft:weather_check",thundering:true} if predicate {condition:"minecraft:weather_check",raining:true} as @a[limit=1] at @s if biome ~ ~ ~ minecraft:ice_spikes run data modify storage actionclock:display prefix_text set value "Snow"
execute if dimension minecraft:overworld unless predicate {condition:"minecraft:weather_check",thundering:true} if predicate {condition:"minecraft:weather_check",raining:true} as @a[limit=1] at @s if biome ~ ~ ~ minecraft:ice_spikes run data modify storage actionclock:display prefix set value "❄"

execute if dimension minecraft:overworld unless predicate {condition:"minecraft:weather_check",thundering:true} if predicate {condition:"minecraft:weather_check",raining:true} as @a[limit=1] at @s if biome ~ ~ ~ minecraft:jagged_peaks run data modify storage actionclock:display prefix_emoji set value "❄"
execute if dimension minecraft:overworld unless predicate {condition:"minecraft:weather_check",thundering:true} if predicate {condition:"minecraft:weather_check",raining:true} as @a[limit=1] at @s if biome ~ ~ ~ minecraft:jagged_peaks run data modify storage actionclock:display prefix_text set value "Snow"
execute if dimension minecraft:overworld unless predicate {condition:"minecraft:weather_check",thundering:true} if predicate {condition:"minecraft:weather_check",raining:true} as @a[limit=1] at @s if biome ~ ~ ~ minecraft:jagged_peaks run data modify storage actionclock:display prefix set value "❄"

execute if dimension minecraft:overworld unless predicate {condition:"minecraft:weather_check",thundering:true} if predicate {condition:"minecraft:weather_check",raining:true} as @a[limit=1] at @s if biome ~ ~ ~ minecraft:frozen_peaks run data modify storage actionclock:display prefix_emoji set value "❄"
execute if dimension minecraft:overworld unless predicate {condition:"minecraft:weather_check",thundering:true} if predicate {condition:"minecraft:weather_check",raining:true} as @a[limit=1] at @s if biome ~ ~ ~ minecraft:frozen_peaks run data modify storage actionclock:display prefix_text set value "Snow"
execute if dimension minecraft:overworld unless predicate {condition:"minecraft:weather_check",thundering:true} if predicate {condition:"minecraft:weather_check",raining:true} as @a[limit=1] at @s if biome ~ ~ ~ minecraft:frozen_peaks run data modify storage actionclock:display prefix set value "❄"

execute if dimension minecraft:overworld unless predicate {condition:"minecraft:weather_check",thundering:true} if predicate {condition:"minecraft:weather_check",raining:true} as @a[limit=1] at @s if biome ~ ~ ~ minecraft:snowy_taiga run data modify storage actionclock:display prefix_emoji set value "❄"
execute if dimension minecraft:overworld unless predicate {condition:"minecraft:weather_check",thundering:true} if predicate {condition:"minecraft:weather_check",raining:true} as @a[limit=1] at @s if biome ~ ~ ~ minecraft:snowy_taiga run data modify storage actionclock:display prefix_text set value "Snow"
execute if dimension minecraft:overworld unless predicate {condition:"minecraft:weather_check",thundering:true} if predicate {condition:"minecraft:weather_check",raining:true} as @a[limit=1] at @s if biome ~ ~ ~ minecraft:snowy_taiga run data modify storage actionclock:display prefix set value "❄"

execute if dimension minecraft:overworld unless predicate {condition:"minecraft:weather_check",thundering:true} if predicate {condition:"minecraft:weather_check",raining:true} as @a[limit=1] at @s if biome ~ ~ ~ minecraft:snowy_slopes run data modify storage actionclock:display prefix_emoji set value "❄"
execute if dimension minecraft:overworld unless predicate {condition:"minecraft:weather_check",thundering:true} if predicate {condition:"minecraft:weather_check",raining:true} as @a[limit=1] at @s if biome ~ ~ ~ minecraft:snowy_slopes run data modify storage actionclock:display prefix_text set value "Snow"
execute if dimension minecraft:overworld unless predicate {condition:"minecraft:weather_check",thundering:true} if predicate {condition:"minecraft:weather_check",raining:true} as @a[limit=1] at @s if biome ~ ~ ~ minecraft:snowy_slopes run data modify storage actionclock:display prefix set value "❄"

execute if dimension minecraft:overworld unless predicate {condition:"minecraft:weather_check",thundering:true} if predicate {condition:"minecraft:weather_check",raining:true} as @a[limit=1] at @s if biome ~ ~ ~ minecraft:snowy_beach run data modify storage actionclock:display prefix_emoji set value "❄"
execute if dimension minecraft:overworld unless predicate {condition:"minecraft:weather_check",thundering:true} if predicate {condition:"minecraft:weather_check",raining:true} as @a[limit=1] at @s if biome ~ ~ ~ minecraft:snowy_beach run data modify storage actionclock:display prefix_text set value "Snow"
execute if dimension minecraft:overworld unless predicate {condition:"minecraft:weather_check",thundering:true} if predicate {condition:"minecraft:weather_check",raining:true} as @a[limit=1] at @s if biome ~ ~ ~ minecraft:snowy_beach run data modify storage actionclock:display prefix set value "❄"


# Snieg i Burza
execute if dimension minecraft:overworld if predicate {condition:"minecraft:weather_check",thundering:true} if predicate {condition:"minecraft:weather_check",raining:true} as @a[limit=1] at @s if biome ~ ~ ~ #minecraft:is_nether run data modify storage actionclock:display prefix_emoji set value "❄⚡"
execute if dimension minecraft:overworld if predicate {condition:"minecraft:weather_check",thundering:true} if predicate {condition:"minecraft:weather_check",raining:true} as @a[limit=1] at @s if biome ~ ~ ~ #minecraft:is_nether run data modify storage actionclock:display prefix_text set value "Snow Thunder"
execute if dimension minecraft:overworld if predicate {condition:"minecraft:weather_check",thundering:true} if predicate {condition:"minecraft:weather_check",raining:true} as @a[limit=1] at @s if biome ~ ~ ~ #minecraft:is_nether run data modify storage actionclock:display prefix set value "❄⚡"

# Snieżne biomy w burzy
execute if dimension minecraft:overworld if predicate {condition:"minecraft:weather_check",thundering:true} if predicate {condition:"minecraft:weather_check",raining:true} as @a[limit=1] at @s if biome ~ ~ ~ minecraft:snowy_plains run data modify storage actionclock:display prefix_emoji set value "❄⚡"
execute if dimension minecraft:overworld if predicate {condition:"minecraft:weather_check",thundering:true} if predicate {condition:"minecraft:weather_check",raining:true} as @a[limit=1] at @s if biome ~ ~ ~ minecraft:snowy_plains run data modify storage actionclock:display prefix_text set value "Snow Thunder"
execute if dimension minecraft:overworld if predicate {condition:"minecraft:weather_check",thundering:true} if predicate {condition:"minecraft:weather_check",raining:true} as @a[limit=1] at @s if biome ~ ~ ~ minecraft:snowy_plains run data modify storage actionclock:display prefix set value "❄⚡"

execute if dimension minecraft:overworld if predicate {condition:"minecraft:weather_check",thundering:true} if predicate {condition:"minecraft:weather_check",raining:true} as @a[limit=1] at @s if biome ~ ~ ~ minecraft:grove run data modify storage actionclock:display prefix_emoji set value "❄⚡"
execute if dimension minecraft:overworld if predicate {condition:"minecraft:weather_check",thundering:true} if predicate {condition:"minecraft:weather_check",raining:true} as @a[limit=1] at @s if biome ~ ~ ~ minecraft:grove run data modify storage actionclock:display prefix_text set value "Snow Thunder"
execute if dimension minecraft:overworld if predicate {condition:"minecraft:weather_check",thundering:true} if predicate {condition:"minecraft:weather_check",raining:true} as @a[limit=1] at @s if biome ~ ~ ~ minecraft:grove run data modify storage actionclock:display prefix set value "❄⚡"

execute if dimension minecraft:overworld if predicate {condition:"minecraft:weather_check",thundering:true} if predicate {condition:"minecraft:weather_check",raining:true} as @a[limit=1] at @s if biome ~ ~ ~ minecraft:frozen_river run data modify storage actionclock:display prefix_emoji set value "❄⚡"
execute if dimension minecraft:overworld if predicate {condition:"minecraft:weather_check",thundering:true} if predicate {condition:"minecraft:weather_check",raining:true} as @a[limit=1] at @s if biome ~ ~ ~ minecraft:frozen_river run data modify storage actionclock:display prefix_text set value "Snow Thunder"
execute if dimension minecraft:overworld if predicate {condition:"minecraft:weather_check",thundering:true} if predicate {condition:"minecraft:weather_check",raining:true} as @a[limit=1] at @s if biome ~ ~ ~ minecraft:frozen_river run data modify storage actionclock:display prefix set value "❄⚡"

execute if dimension minecraft:overworld if predicate {condition:"minecraft:weather_check",thundering:true} if predicate {condition:"minecraft:weather_check",raining:true} as @a[limit=1] at @s if biome ~ ~ ~ minecraft:ice_spikes run data modify storage actionclock:display prefix_emoji set value "❄⚡"
execute if dimension minecraft:overworld if predicate {condition:"minecraft:weather_check",thundering:true} if predicate {condition:"minecraft:weather_check",raining:true} as @a[limit=1] at @s if biome ~ ~ ~ minecraft:ice_spikes run data modify storage actionclock:display prefix_text set value "Snow Thunder"
execute if dimension minecraft:overworld if predicate {condition:"minecraft:weather_check",thundering:true} if predicate {condition:"minecraft:weather_check",raining:true} as @a[limit=1] at @s if biome ~ ~ ~ minecraft:ice_spikes run data modify storage actionclock:display prefix set value "❄⚡"

execute if dimension minecraft:overworld if predicate {condition:"minecraft:weather_check",thundering:true} if predicate {condition:"minecraft:weather_check",raining:true} as @a[limit=1] at @s if biome ~ ~ ~ minecraft:jagged_peaks run data modify storage actionclock:display prefix_emoji set value "❄⚡"
execute if dimension minecraft:overworld if predicate {condition:"minecraft:weather_check",thundering:true} if predicate {condition:"minecraft:weather_check",raining:true} as @a[limit=1] at @s if biome ~ ~ ~ minecraft:jagged_peaks run data modify storage actionclock:display prefix_text set value "Snow Thunder"
execute if dimension minecraft:overworld if predicate {condition:"minecraft:weather_check",thundering:true} if predicate {condition:"minecraft:weather_check",raining:true} as @a[limit=1] at @s if biome ~ ~ ~ minecraft:jagged_peaks run data modify storage actionclock:display prefix set value "❄⚡"

execute if dimension minecraft:overworld if predicate {condition:"minecraft:weather_check",thundering:true} if predicate {condition:"minecraft:weather_check",raining:true} as @a[limit=1] at @s if biome ~ ~ ~ minecraft:frozen_peaks run data modify storage actionclock:display prefix_emoji set value "❄⚡"
execute if dimension minecraft:overworld if predicate {condition:"minecraft:weather_check",thundering:true} if predicate {condition:"minecraft:weather_check",raining:true} as @a[limit=1] at @s if biome ~ ~ ~ minecraft:frozen_peaks run data modify storage actionclock:display prefix_text set value "Snow Thunder"
execute if dimension minecraft:overworld if predicate {condition:"minecraft:weather_check",thundering:true} if predicate {condition:"minecraft:weather_check",raining:true} as @a[limit=1] at @s if biome ~ ~ ~ minecraft:frozen_peaks run data modify storage actionclock:display prefix set value "❄⚡"

execute if dimension minecraft:overworld if predicate {condition:"minecraft:weather_check",thundering:true} if predicate {condition:"minecraft:weather_check",raining:true} as @a[limit=1] at @s if biome ~ ~ ~ minecraft:snowy_taiga run data modify storage actionclock:display prefix_emoji set value "❄⚡"
execute if dimension minecraft:overworld if predicate {condition:"minecraft:weather_check",thundering:true} if predicate {condition:"minecraft:weather_check",raining:true} as @a[limit=1] at @s if biome ~ ~ ~ minecraft:snowy_taiga run data modify storage actionclock:display prefix_text set value "Snow Thunder"
execute if dimension minecraft:overworld if predicate {condition:"minecraft:weather_check",thundering:true} if predicate {condition:"minecraft:weather_check",raining:true} as @a[limit=1] at @s if biome ~ ~ ~ minecraft:snowy_taiga run data modify storage actionclock:display prefix set value "❄⚡"

execute if dimension minecraft:overworld if predicate {condition:"minecraft:weather_check",thundering:true} if predicate {condition:"minecraft:weather_check",raining:true} as @a[limit=1] at @s if biome ~ ~ ~ minecraft:snowy_slopes run data modify storage actionclock:display prefix_emoji set value "❄⚡"
execute if dimension minecraft:overworld if predicate {condition:"minecraft:weather_check",thundering:true} if predicate {condition:"minecraft:weather_check",raining:true} as @a[limit=1] at @s if biome ~ ~ ~ minecraft:snowy_slopes run data modify storage actionclock:display prefix_text set value "Snow Thunder"
execute if dimension minecraft:overworld if predicate {condition:"minecraft:weather_check",thundering:true} if predicate {condition:"minecraft:weather_check",raining:true} as @a[limit=1] at @s if biome ~ ~ ~ minecraft:snowy_slopes run data modify storage actionclock:display prefix set value "❄⚡"

execute if dimension minecraft:overworld if predicate {condition:"minecraft:weather_check",thundering:true} if predicate {condition:"minecraft:weather_check",raining:true} as @a[limit=1] at @s if biome ~ ~ ~ minecraft:snowy_beach run data modify storage actionclock:display prefix_emoji set value "❄⚡"
execute if dimension minecraft:overworld if predicate {condition:"minecraft:weather_check",thundering:true} if predicate {condition:"minecraft:weather_check",raining:true} as @a[limit=1] at @s if biome ~ ~ ~ minecraft:snowy_beach run data modify storage actionclock:display prefix_text set value "Snow Thunder"
execute if dimension minecraft:overworld if predicate {condition:"minecraft:weather_check",thundering:true} if predicate {condition:"minecraft:weather_check",raining:true} as @a[limit=1] at @s if biome ~ ~ ~ minecraft:snowy_beach run data modify storage actionclock:display prefix set value "❄⚡"