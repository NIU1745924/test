#!/bin/bash

EnDesenvolupament()
{
	clear 
	echo "En desenvolupament"
	read -n 1
	clear
}

OpcioNoValida()
{
	clear
	echo "error: número no valid."
	sleep 2
	clear
}

LlistatActorsPerData()
{
    clear
    echo "Llistat d'actors i actrius per data del premi."
    read -n 1
    clear
}

LlistatAlfabeticPelicules()
{
    clear
    echo "Llistat alfabètic de pel·lícules." 
    read -n 1 
    clear
}

LlistatPerEdat()
{
    clear
    echo "Llistat per edat d’actors i actrius"
  
    read -n 1 
    clear
}

LlistatsDelCataleg()
{
	while true; do
		clear
		echo "---------------------------------------------------------"
		echo "                  1 - Llistats del catàleg"
		echo "---------------------------------------------------------"
		echo "1 Llistat d’actors i actrius per data del premi."
		echo "2 Llistat alfabètic de pel·lícules."
		echo "3 Llistat per edat d’actors i actrius."
		echo "0 Tornar al menú anterior."
		echo "---------------------------------------------------------"
		read subopcio
		case $subopcio in
			(0)
			clear
			break ;;
			(1)
			LlistatActorsPerData;;
			(2)
			LlistatAlfabeticPelicules;;
			(3)
			LlistatPerEdat;;
			(*)
			OpcioNoValida;;
		esac
	done
}

while true; do
	echo "---------------------------------------------------------"
	echo "	Catàleg de guanyadors i guanyadores d’Oscars"
	echo "---------------------------------------------------------"
	echo "1 Llistats del catàleg."
	echo "2 Cerca al catàleg."
	echo "3 Com ets d’Expert?"
	echo "4 Gestió del catàleg."
	echo "0 Sortir."
	echo "---------------------------------------------------------"
	read num
	case $num in
		(0)
		clear
		echo "Gràcies per la vostra visita a Amor pel Setè Art"
		break
		;;
		(1)
		LlistatsDelCataleg
		;;
		(2)
		EnDesenvolupament
		;;
		(3)
		EnDesenvolupament
		;;
		(4)
		EnDesenvolupament
		;;
		(*)
		OpcioNoValida
		;;
	esac
done

