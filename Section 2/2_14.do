*Load training data
sysuse auto

*Summarize price of foreign cars
su price if foreign == 0

*Summarize price of foreign cars
su price if foreign == "Domestic":origin
