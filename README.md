Arbre Généalogique Faluchard
============================

Mon arbre Faléalogique. Par soucis de simplicité, seuls les liens de baptêmes
sont représentés. L'arbre est renseigné dans le fichier `fal.dot` et un script
`gvpr` est présent pour obtenir la descendance ou l'ascendance d'une personne
donnée. Le Makefile présent sert d'enrobeur autour de chacun de ces scripts.

# Utilisation

## Générer l'arbre complet

```
make
```

Il est possible de modifier les fichiers d'entrée/sortie avec les variables
d'environnement `INPUT` et `OUTPUT` :

```
INPUT=fal.dot OUTPUT=fal.png make
```

Les noms utilisés dans l'exemple sont les valeurs par défaut.

## Générer un sous arbre

Pour générer un sous arbre, il faut donner un point de départ et une direction.
Pour obtenir l'ascendance, il faut donner `0` en direction.
Pour obtenir la descendance, il faut donner `1` en direction.
En cas d'espaces présents dans le nom, il faut les échapper.

Par exemple, pour obtenir l'ascendance de TOM JagerFeeld :

```
START="TOM\ JagerFeeld" DIR=0 make sub
```

Par défaut, ce script renvoie l'arbre complet.

## Nettoyer le dossier

```
make clean
```

# TODO

- Ajouter un script pour faire des stats sur les filières/villes
- Ajouter des subgraphs pour les clusters de villes/filières
