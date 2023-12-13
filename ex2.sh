#!/bin/bash


REP_NAME=$(date "+%Y%m%d")
FULL_PATH= c/Users/louaz/Desktop/front-end/tp-sh/$REP_NAME


if [ -d "$FULL_PATH" ]; then
    echo "Erreur: Le répertoire $FULL_PATH existe déjà."
    exit 1
fi


mkdir "$FULL_PATH"
echo "Répertoire $FULL_PATH créé."


cp c/Users/louaz/Desktop/front-end/tp-sh/Exo3/* "$FULL_PATH/"
rm -f c/Users/louaz/Desktop/front-end/tp-sh/Exo3/*


GROS_FICHIER="$HOME/Gros_fichier"
PETIT_FICHIER="$HOME/petit_fichier"


cat "$FULL_PATH"/* > "$GROS_FICHIER"
ls "$FULL_PATH" > "$PETIT_FICHIER"

echo "Opération terminée."