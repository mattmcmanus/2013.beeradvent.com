#!/bin/bash
for i in `seq 01 24`;
do
  body="---\nlayout: beer\ntitle: Day $i - Beer\nday: $i\nbrewery: Founders\nname: Reds Rye\nimage: beer-founders-reds-rye.png\ncountry: USA\nstyle: Rye Ale\ncost: 38.99\nabv: 6.6\nageit: Drink it fresh\nbalink: http://beeradvocate.com/beer/profile/\n---\n## The Beer\n\n## The Brewery"
  echo -e $body > _posts/2012-12-$i-day-$i-beer.md
done
