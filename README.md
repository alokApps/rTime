# rTime

Change time of day(24 hour format hhmm) to minutes and minutes to time of day (hh:mm).

How to install:

devtools::install_github("alokapps/rTime")

Ex1: 
input: 120 minutes
output: 2:00 (hh:mm)

minute2time(120)
2:00


Ex2 :

input: 1200 (hhmm)
output: 720 minutes

time2min(1200)
720

