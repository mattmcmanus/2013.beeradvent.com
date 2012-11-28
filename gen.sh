#!/bin/bash

no=1

# y,1,Wit,Monastery of Christ in the Desert,Monks Wit,5.10%,$37.95,3,$113.85,Bella Vista,,http://beeradvocate.com/beer/profile/24136/70638
while IFS=, read y day style brewery beer abv price amount total dist notes ba
do
# Calculate the price
case ${price:1:1} in
  [3-4])
    dollas='low';;
  [4-7])
    dollas='mid';;
  [8-9])
    dollas='hi';;
  [1])
  dollas='hi';;
esac

# Calculate the abv
case ${abv:0:1} in
  [4-6])
    heat='low';;
  [7-8])
    heat='mid';;
  [0])
    heat='hi';;
  [1])
    heat='hi';;
esac

cat << EOF > _posts/2012-12-$day-${brewery// /-}-${beer// /-}.md
---
layout: beer
title: Day $day - $brewery $beer
day: $day
brewery: $brewery
name: $beer
image: beer.jpg
country: USA
style: $style
cost: $price
dollas: $dollas
abv: $abv
heat: $heat
ageit: Drink it fresh
respect: false
balink: $ba
---

### The Style

### The Beer

### The Brewery

EOF

done < beer.csv

echo "done"