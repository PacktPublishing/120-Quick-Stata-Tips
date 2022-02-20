*Timer
timer clear

*Start a timer and sleep Stata. Stop timer
timer on 1
sleep 1000
timer off 1

*Start and stop multipler timers.
timer on 2 
sleep 100
timer on 3
sleep 100
timer off 2
timer off 3

*List timers
timer list
