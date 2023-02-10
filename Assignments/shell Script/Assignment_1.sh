#!/bin/sh
touch new_cities.txt
echo "Enter the city Name"
read city1
echo $city1 >> new_cities.txt
echo "enetr the next city"
read city2
echo $city2 >> new_cities.txt
echo "enter next city"
read city3
echo $city3 >> new_cities.txt
echo "enter next city"
read city4
echo $city4 >> new_cities.txt
cat new_cities.txt
sed -i 's/New/Old/gi' new_cities.txt
cat new_cities.txt | grep "Old" > old_cities.txt
cat old_cities.txt