##########################################################################
## Driver: (Kayla McLaughlin) (kaylammc)                                ##
## Navigator: (Name) (GitHub Handle)                                    ##
## Date: (YYYY-MM-DD)                                                   ##
##########################################################################

library(marinecs100b)

# Guiding questions -------------------------------------------------------

# What does KEFJ stand for?
?kefj
# kefj stands for Kenai Fjords Temperature Readings

# How was temperature monitored?
# HOBO V2 temperature loggers were place at each rocky site

# What's the difference between absolute temperature and temperature anomaly?
# Absolute temperature is the recorded temperature by the sensor. Temperature
# anomaly is the difference between the long-term average temperature and the
# actual temperature.

# Begin exploring ---------------------------------------------------------

# How many kefj_* vectors are there?
# 6

# How long are they?
length(kefj_temperature)
# 2187966

# What do they represent? Temperature, site name, date and time of reading, tide
# level, temperature exposure, and season of the year.

# Link to sketch

aialik_datetime <- kefj_datetime[kefj_site == "Aialik"]
aialik_interval <- aialik_datetime[2:length(aialik_datetime)] - aialik_datetime
[1:length(aialik_datetime)-1]

table(aialik_interval)


# Problem decomposition ---------------------------------------------------

# When and where did the hottest and coldest air temperature readings happen?
max(kefj_temperature)
min (kefj_temperature)
kefj_site[which.max(kefj_temperature)]
kefj_site[which.min(kefj_temperature)]
kefj_datetime[which.max(kefj_temperature)]
kefj_datetime[which.min(kefj_temperature)]
# The hottest air temperature happened at Aialik on July 3, 2018 at 1pm.
# The coldest air temperature happened at Aialik on January 27, 2013 at 9pm.

# Link to sketch

# Plot the hottest day

hottest_idx <- which.max(kefj_temperature)
hottest_time <- kefj_datetime[hottest_idx]
hottest_site <- kefj_site[hottest_idx]
hotday_start <- as.POSIXct("2018-07-03 00:00", tz = "Etc/GMT+8")
hotday_end <- as.POSIXct("2018-07-03 23:59:59", tz = "Etc/GMT+8")
hotday_idx <- which(kefj_site == hottest_site &
  kefj_datetime >= hotday_start &
  kefj_datetime <= hotday_end)
hotday_datetime <- kefj_datetime[hotday_idx]
hotday_temperature <- kefj_temperature[hotday_idx]
hotday_exposure <- kefj_exposure[hotday_idx]
plot_kefj(hotday_datetime, hotday_temperature, hotday_exposure)

# Repeat for the coldest day

coldest_idx <- which.min(kefj_temperature)
coldest_time <- kefj_datetime[coldest_idx]
coldest_site <- kefj_site[coldest_idx]
coldday_start <- as.POSIXct("2013-01-27 00:00", tz = "Etc/GMT+8")
coldday_end <- as.POSIXct("2013-01-27 23:59:59", tz = "Etc/GMT+8")
coldday_idx <- which(kefj_site == coldest_site &
  kefj_datetime >= coldday_start &
  kefj_datetime <= coldday_end)
coldday_datetime <- kefj_datetime[coldday_idx]
coldday_temperature <- kefj_temperature[coldday_idx]
coldday_exposure <- kefj_exposure[coldday_idx]
plot_kefj(coldday_datetime, coldday_temperature, coldday_exposure)

# What patterns do you notice in time, temperature, and exposure? Do those
# patterns match your intuition, or do they differ? For the cold, temperature is
# stable then drastically decreases at night where there is zero sun exposure.
# For the hot, there is a peak temperature in the middle of the day, where there
# is the highest exposure to sunlight.

# How did Traiger et al. define extreme temperature exposure?
# He defined it as heatwaves.


