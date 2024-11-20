#!/bin/bash

totalActor=$(wc -l < $1)
totalActress=$(wc -l < $2)
capActor="\n*********************************************************************************\n******************* LLISTAT D’ACTORS I ACTRIUS PER DATA DEL PREMI. **************\n"
echo -e "$capActor"
echo -e "***** LLISTAT OSCARS A MILLOR ACTOR:"
for((i=2; i<$totalActor; i++))
do
    year=$(awk -F, 'NF==5{print $0}' $1 | head -$i | tail -1 | cut -d, -f2)
    age=$(awk -F, 'NF==5{print $0}' $1 | head -$i | tail -1 | cut -d, -f3)
    actor=$(awk -F, 'NF==5{print $0}' $1 | head -$i | tail -1 | cut -d, -f4)
    movie=$(awk -F, 'NF==5{print $0}' $1 | head -$i | tail -1 | cut -d, -f5)
    echo -e "*$year, amb $age anys $actor per $movie"
done

echo -e "\n*****  LLISTAT OSCARS A MILLOR ACTRIU:"
for((i=2; i<$totalActress; i++))
do
    year=$(awk -F, 'NF==5{print $0}' $2 | head -$i | tail -1 | cut -d, -f2)
    age=$(awk -F, 'NF==5{print $0}' $2 | head -$i | tail -1 | cut -d, -f3)
    actor=$(awk -F, 'NF==5{print $0}' $2 | head -$i | tail -1 | cut -d, -f4)
    movie=$(awk -F, 'NF==5{print $0}' $2 | head -$i | tail -1 | cut -d, -f5)
    echo -e "*$year, amb $age anys $actor per $movie"
done

echo -e "\n************************** PREMI UNA TECLA PER CONTINUAR *************************"
read wait
