# What do the following expressions do?
temp_F <- temp_C * 9/5 - 32
# Converting Celsius to Fahrenheit
rect_area <- rect_length * rect_width
# Multiplying length by width to get area

# Fill in the question marks to complete these expressions
triangle_area <- 1/2 * base * height
cylinder_volume <- pi * radius^2 * height

# What are the errors in these expressions?
speed_m_s <- distance_m * time_s
acceleration_m_s2 <- speed_m_s / time_s
# The acceleration is put in incorrectly because it's not saying (meters per
# second squared) it's just an m and an s with a 2 next to it.
force_N <- mass * acceleration_m_s2
# Force is mass TIMES acceleration, not plus.

# The energy density of market squid is 4850 joules per gram[1]. If a 225 kg
# Risso's dolphin needs 5 million joules of energy per day[2] and a typical
# market squid is 35 g[1], then how many squid does a Risso's dolphin need to
# eat each day? Solve the above word problem in R. Consider how many variables
# you need to create, what to name them to make the code readable, and how to
# combine them into expressions.
energy_density_marketsquid_Jg <- 4850
weight_Rissodolphin_kg <- 225
energy_Rissodolphin_J <- 5000000
weight_marketsquid_g <- 35
# Find energy in one market squid.
energy_per_squid_J <- energy_density_marketsquid_Jg * weight_marketsquid_g
# Find amount of squid a dolphin needs to eat per day.
amount_squid_dolphinneeds <- energy_Rissodolphin_J / energy_per_squid_J
# A Risso dolphin needs to eat 30 squid per day.

# [1] Price et al. 2024 https://doi.org/10.3389/fmars.2023.1345525
# [2] Barlow et al. 2008 https://doi.org/10.3354/meps07695

