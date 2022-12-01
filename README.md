Arbre Généalogique Faluchard
============================

Mon arbre Faléalogique. Par soucis de simplicité, seuls les liens de baptêmes
sont représentés. L'arbre est renseigné dans le fichier `fal.dot`.

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

## Nettoyer le dossier

```
make clean
```
