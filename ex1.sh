#!/bin/bash


REP_NAME="Exo3"

if [ -d "$REP_NAME" ]; then
    echo "Le répertoire $REP_NAME existe déjà."
else
    
    mkdir "$REP_NAME"
    echo "Répertoire $REP_NAME créé."
fi


cd "$REP_NAME" || exit


for i in Un Dexu troi quatr cenq six cetp huit neuf dix
do
    echo "Création du fichier $i avec la ligne $i"
    echo "$i ligne" > "$i"
done

echo "Opération terminée."