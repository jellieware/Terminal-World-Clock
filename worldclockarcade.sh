#!/bin/bash
##!/data/data/com.termux/files/usr/bin/bash
lg="\e[37m"    
rr="\e[37m"
rw="\e[37m"
lb="\e[37m"
lo="\e[37m"
var=0
var2=12
x=0
left=0
right=12
layout=""
max_length=0
max_lengthx=0
quit=""
daylightsavings=""
echo -e "(H)orizontal or (V)ertical?:"
read layout
if [ $layout == "v" ] || [ $layout == "V" ]; then



airports=("Samoa" "Hawaii" "Juneau" "San Francisco" "Denver" "Chicago" "New York" "Caracas" "Rio De Janeiro" "Recife" "Azores" "London" "Paris" "Cairo" "Moscow" "Baku" "Karachi" "Dacca" "Bangkok" "Hong Kong" "Tokyo" "Sydney" "Noumea" "Wellington")
while true; do


    printf "\033c"
    clear

    echo -e "   ---------------------------------------------------------"
time_zones=()
time_zones=("UTC-12:00" "UTC-11:00" "UTC-10:00" "UTC-09:00" "UTC-08:00" "UTC-07:00" "UTC-06:00" "UTC-05:00" "UTC-04:00" "UTC-03:00" "UTC-02:00" "UTC-01:00" "UTC-00:00" "UTC+01:00" "UTC+02:00" "UTC+03:00" "UTC+04:00" "UTC+05:00" "UTC+06:00" "UTC+07:00" "UTC+08:00" "UTC+09:00" "UTC+10:00" "UTC+11:00") #array needs expansion in your case
array_length=${#time_zones[@]}
for (( i=0; i<array_length/2; i++ ))
do
  temp="${time_zones[$i]}"
  time_zones[$i]="${time_zones[array_length-1-i]}"
  time_zones[array_length-1-i]="$temp"
done  

OFF_1=$(date -d '1 Jan' +%z)
OFF_7=$(date -d '1 Jul' +%z)
OFF_NOW=$(date +%z)

if  test $OFF_NOW -gt $OFF_1  ||  test $OFF_NOW -gt $OFF_7
then
  # I'm in summer time with daylight savings



function add_utc() {
current_time=$($1 +%s) # Get current time in seconds since the epoch
new_time=$((current_time + 3600)) # Add 3600 seconds
new_date=$($1 -d "@$new_time" '+%z') # Convert back to human-readable format
echo -e $new_date 
}
function add_time() {
current_time=$($1 +%s) # Get current time in seconds since the epoch
new_time=$((current_time + 3600)) # Add 3600 seconds
new_date=$($1 -d "@$new_time" '+%I:%M %p') # Convert back to human-readable format
echo -e $new_date 
}
function add_date() {
current_time=$($1 +%s) # Get current time in seconds since the epoch
new_time=$((current_time + 3600)) # Add 3600 seconds
new_date=$($1 -d "@$new_time" '+%a %d-%b, %Y') # Convert back to human-readable format
echo -e $new_date
}






  for tz in "${time_zones[@]}"; do



for element in "${airports[@]}"; do
  length="${#element}"
  if [ "$length" -gt "$max_lengthx" ]; then
    max_lengthx="$length"
  fi
done

if [  $max_length -gt $max_lengthx ]; then
x="$max_length"
else  
x="$max_lengthx"
fi

y="${#airports[$var]}"

addspacessub=$((x - y))

spacessub=$(printf "%*s%s" "$addspacessub" "")  
  
  
  
    echo -e "   ${rw}| ${lb}${airports[$var]} $spacessub ${rw}| ${rr}$(TZ=$tz add_utc date) ${rw}| ${lo}$(TZ=$tz add_date date) ${rw}| ${lg}$(TZ=$tz add_time date) ${rw}|"
    echo -e "   --------------------------------------------------------- $spacessub"
    let "var=var+1"
    done
    var=0
    read -n 1 -s -t $((59 - $(date +%s) % 60)) quit
    if [ -n "$quit" ]; then
    if [ $quit == "q" ]; then
    exit
    fi
    else
    sleep $((60 - $(date +%s) % 60))
    fi




else





function add_utc() {
current_time=$($1 +%s) # Get current time in seconds since the epoch
new_time=$((current_time + 3600)) # Add 3600 seconds
new_date=$($1 -d "@$new_time" '+%z') # Convert back to human-readable format
echo -e $new_date 
}
function add_time() {
current_time=$($1 +%s) # Get current time in seconds since the epoch
new_time=$((current_time + 3600)) # Add 3600 seconds
new_date=$($1 -d "@$new_time" '+%I:%M %p') # Convert back to human-readable format
echo -e $new_date 
}
function add_date() {
current_time=$($1 +%s) # Get current time in seconds since the epoch
new_time=$((current_time + 3600)) # Add 3600 seconds
new_date=$($1 -d "@$new_time" '+%a %d-%b, %Y') # Convert back to human-readable format
echo -e $new_date
}






  # I'm in winter time or a region without daylight savings
  for tz in "${time_zones[@]}"; do
  
  
  

for element in "${airports[@]}"; do
  length="${#element}"
  if [ "$length" -gt "$max_lengthx" ]; then
    max_lengthx="$length"
  fi
done

if [  $max_length -gt $max_lengthx ]; then
x="$max_length"
else  
x="$max_lengthx"
fi

y="${#airports[$var]}"

addspacessub=$((x - y))

spacessub=$(printf "%*s%s" "$addspacessub" "")  
  
  
  
  
    echo -e "   ${rw}| ${lb}${airports[$var]| ${rr}$(TZ=$tz date '+%z') ${rw}| ${lo}$(TZ=$tz date '+%a %d-%b, %Y') ${rw}| ${lg}$(TZ=$tz date '+%I:%M %p') ${rw}} ${rw}|"
    echo "   ---------------------------------------------"
    let "var=var+1"
    done
    var=0
    read -n 1 -s -t $((59 - $(date +%s) % 60)) quit
    if [ -n "$quit" ]; then
    if [ $quit == "q" ]; then
    exit
    fi
    else
    sleep $((60 - $(date +%s) % 60))
    fi



fi
   
done
fi













if [ $layout == "h" ] || [ $layout == "H" ]; then



for element in "${airports[@]}"; do
  length="${#element}"
  if [ "$length" -gt "$max_lengthx" ]; then
    max_lengthx="$length"
  fi
done

if [  $max_length -gt $max_lengthx ]; then
x="$max_length"
else  
x="$max_lengthx"
fi

y="${#airports[$var]}"
z="${#airports[$var2]}"

addspacessub=$((x - y))
addspacessub2=$((x - z))
spacessub=$(printf "%*s%s" "$addspacessub" "")  
spacessub2=$(printf "%*s%s" "$addspacessub2" "")  
airports=("Samoa" "Hawaii" "Juneau" "San Francisco" "Denver" "Chicago" "New York" "Caracas" "Rio De Janeiro" "Recife" "Azores" "London" "Paris" "Cairo" "Moscow" "Baku" "Karachi" "Dacca" "Bangkok" "Hong Kong" "Tokyo" "Sydney" "Noumea" "Wellington")
while true; do


    printf "\033c"
    clear

    echo -e "   --------------------------------------------------------- $spacessub"
time_zones=()
time_zones=("UTC-12:00" "UTC-11:00" "UTC-10:00" "UTC-09:00" "UTC-08:00" "UTC-07:00" "UTC-06:00" "UTC-05:00" "UTC-04:00" "UTC-03:00" "UTC-02:00" "UTC-01:00" "UTC-00:00" "UTC+01:00" "UTC+02:00" "UTC+03:00" "UTC+04:00" "UTC+05:00" "UTC+06:00" "UTC+07:00" "UTC+08:00" "UTC+09:00" "UTC+10:00" "UTC+11:00") #array needs expansion in your case
array_length=${#time_zones[@]}
for (( i=0; i<array_length/2; i++ ))
do
  temp="${time_zones[$i]}"
  time_zones[$i]="${time_zones[array_length-1-i]}"
  time_zones[array_length-1-i]="$temp"
done  

OFF_1=$(date -d '1 Jan' +%z)
OFF_7=$(date -d '1 Jul' +%z)
OFF_NOW=$(date +%z)

if  test $OFF_NOW -gt $OFF_1  ||  test $OFF_NOW -gt $OFF_7
then
  # I'm in summer time with daylight savings



function add_utc() {
current_time=$($1 +%s) # Get current time in seconds since the epoch
new_time=$((current_time + 3600)) # Add 3600 seconds
new_date=$($1 -d "@$new_time" '+%z') # Convert back to human-readable format
echo -e $new_date 
}
function add_time() {
current_time=$($1 +%s) # Get current time in seconds since the epoch
new_time=$((current_time + 3600)) # Add 3600 seconds
new_date=$($1 -d "@$new_time" '+%I:%M %p') # Convert back to human-readable format
echo -e $new_date 
}
function add_date() {
current_time=$($1 +%s) # Get current time in seconds since the epoch
new_time=$((current_time + 3600)) # Add 3600 seconds
new_date=$($1 -d "@$new_time" '+%a %d-%b, %Y') # Convert back to human-readable format
echo -e $new_date
}






  for i in {1..12}; do



for element in "${airports[@]}"; do
  length="${#element}"
  if [ "$length" -gt "$max_lengthx" ]; then
    max_lengthx="$length"
  fi
done

if [  $max_length -gt $max_lengthx ]; then
x="$max_length"
else  
x="$max_lengthx"
fi

y="${#airports[$var]}"
z="${#airports[$var2]}"

addspacessub=$((x - y))
addspacessub2=$((x - z))
spacessub=$(printf "%*s%s" "$addspacessub" "")  
spacessub2=$(printf "%*s%s" "$addspacessub2" "")  
  
  
    echo -e "   ${rw}| ${lb}${airports[$left]} $spacessub ${rw}| ${rr}$(TZ=${time_zones[$left]} add_utc date) ${rw}| ${lo}$(TZ=${time_zones[$left]} add_date date) ${rw}| ${lg}$(TZ=${time_zones[$left]} add_time date) ${rw}|    ${rw}| ${lb}${airports[$right]} $spacessub2 ${rw}| ${rr}$(TZ=${time_zones[$right]} add_utc date) ${rw}| ${lo}$(TZ=${time_zones[$right]} add_date date) ${rw}| ${lg}$(TZ=${time_zones[$right]} add_time date) ${rw}| "
    echo -e "   ---------------------------------------------------------    ---------------------------------------------------------"
    let "var=var+1"
    let "var2=var2+1"
    let "right=right+1"
    let "left=left+1"
    done
    right=12
    left=0
    var=0
    var2=12
    read -n 1 -s -t $((59 - $(date +%s) % 60)) quit
    if [ -n "$quit" ]; then
    if [ $quit == "q" ]; then
    exit
    fi
    else
    sleep $((60 - $(date +%s) % 60))
    fi




else





function add_utc() {
current_time=$($1 +%s) # Get current time in seconds since the epoch
new_time=$((current_time + 3600)) # Add 3600 seconds
new_date=$($1 -d "@$new_time" '+%z') # Convert back to human-readable format
echo -e $new_date 
}
function add_time() {
current_time=$($1 +%s) # Get current time in seconds since the epoch
new_time=$((current_time + 3600)) # Add 3600 seconds
new_date=$($1 -d "@$new_time" '+%I:%M %p') # Convert back to human-readable format
echo -e $new_date 
}
function add_date() {
current_time=$($1 +%s) # Get current time in seconds since the epoch
new_time=$((current_time + 3600)) # Add 3600 seconds
new_date=$($1 -d "@$new_time" '+%a %d-%b, %Y') # Convert back to human-readable format
echo -e $new_date
}






  # I'm in winter time or a region without daylight savings
  for i in {1..12}; do
  
  
  
for element in "${airports[@]}"; do
  length="${#element}"
  if [ "$length" -gt "$max_lengthx" ]; then
    max_lengthx="$length"
  fi
done

if [  $max_length -gt $max_lengthx ]; then
x="$max_length"
else  
x="$max_lengthx"
fi

y="${#airports[$var]}"
z="${#airports[$var2]}"

addspacessub=$((x - y))
addspacessub2=$((x - z))
spacessub=$(printf "%*s%s" "$addspacessub" "")  
spacessub2=$(printf "%*s%s" "$addspacessub2" "")  
  
  
    echo -e "   ${rw}| ${lb}${airports[$left]} $spacessub| ${rr}$(TZ=${time_zones[$left]} date '+%z') ${rw}| ${lo}$(TZ=${time_zones[$left]} date '+%a %d-%b, %Y') ${rw}| ${lg}$(TZ=${time_zones[$left]} date '+%I:%M %p') ${rw}} ${rw}|   ${rw}| ${lb}${airports[$right]} $spacessub2| ${rr}$(TZ=${time_zones[$right]} date '+%z') ${rw}| ${lo}$(TZ=${time_zones[$right]} date '+%a %d-%b, %Y') ${rw}| ${lg}$(TZ=${time_zones[$right]} date '+%I:%M %p') ${rw}} ${rw}|"
    echo -e "   ---------------------------------------------------------    ---------------------------------------------------------"
    let "var=var+1"
    let "var2=var2+1"
    let "right=right+1"
    let "left=left+1"
    done
    right=12
    left=0
    var=0
    var2=12
    read -n 1 -s -t $((59 - $(date +%s) % 60)) quit
    if [ -n "$quit" ]; then
    if [ $quit == "q" ]; then
    exit
    fi
    else
    sleep $((60 - $(date +%s) % 60))
    fi



fi
   
done





fi
