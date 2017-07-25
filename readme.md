## Theme for crafman

## Fonctionnement

Le fonctionnement du site est basé sur de l'édition sans backend pour l'administration.

Les pages sont créées/éditées directement à partir de fichier MarkDown ou de simples fichiers images.  
Ces fichiers peuvent être stockés dasn un répertoire distinct du code principal. Ici, ce répertoire se nomme : gallery.

Le site supporte le multilingue. C'est pourquoi, il existe une disctinction de répertoires : fr, en…

Le contenu est synchronisé grâce à l'application SkarkleShare.

## Création d'une page

Dans le répertoire de contenu, 
Aller dans : pages > fr ou en

Créer un fichier MarkDown (exemple : titre.md) et insérer les métadonnées suivantes

```
---
title: Pied de lampe # Titre de la page dasn le menu
navigation: false # Afficher la page dans le menu principal
page: pdl # Mot-clef (catégorie) de référence pour les galeries d'images
lang: fr # Langue de la page
permalink: fr/pied-de-lampe/ # Url de la page - obligatoire pour le multilingue
weight: position de la page dasn le menu
---
```

## Création d'une œuvre

### Créer une page en déposant une image

Prendre une image, la formater aux dimensions voulues.
La renommer selon de la chemin suivant :
motclef-categorie+nom-de-l'œuvre+galerie+auteur.jpg (exemple : raku-bols+bol-blanc-léger+principal)

motclef : mot clef figurant dans les métadonnées d'une page afin d'afficher une galerie d'images
categorie : La sous-catégorie d'éléments ppur les galeries d'images
nom-de-l'œuvre : Titre de l'œuvre, titre la page de l'œuvre
galerie : Sous groupe de galerie sur la page de l'œuvre

### Pour le rédacteur

Aller dans photo
Sélectionner des images (command + clic)
Exporter les images (command + shift + E)
Renommer les images

## Amélioration de la description d'une œuvre

Il est possible d'ajouter du texte à la page d'une œuvre. Pour cela, il suffit de créer un fichier texte (.md) avec le même nom que l'image principale.
raku-bols+bol-rouge-vif+principal+yasefanprod.jpg => raku-bols+bol-rouge-vif+principal+yasefanprod.md

### Champ disponibles pour la présentation de l'œuvre.

```
---
hauteur: 10
largeur: 10
diametre: 15
profondeur: 15
prix: 10
lien-vente: 
---
```
