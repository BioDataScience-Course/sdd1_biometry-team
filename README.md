# Workflow ‘classique’ en biologie (Microsoft Excel et Word) comparé à R et R Markdown
## Guyliann Engels & Philippe Grosjean

Exercice du cours de [Science des Données Biologiques I de l'Université de Mons, module 02](http://biodatascience-course.sciviews.org/sdd-umons/integration-des-graphiques-dans-un-rapport-r-markdown.html#a-vous-de-jouer-4).

## Objectif

- Réaliser l'intérêt de R Markdown pour écrire des documents scientifiques de manière à ce qu'ils soient reproductibles et faciles à mettre à jour.

## Procédure

Vous êtes dans la peau d'un biologiste qui analyse des données de biométrie humaine. Vous avez à votre disposition deux jeux de données répartis en quatre fichiers disponibles à partir du dossier data de ce projet.

- `biometry_2014_ew.xlsx`
- `biometry_2014.xlsx`
- `biometry_2016_ew.xlsx`
- `biometry_2016.xlsx`

> Les fichiers `_ew.xlsx` et `.xlsx` respectifs contiennent les mêmes données, mais les fichiers `_ew.xlsx` peuvent être édités librements dans Microsoft Excel pour le workfow Excel -> Word, alors que les versions `.xlsx` seront laissées intactes pour être utilisés dans le workflow R Markdown.

Ces fichiers comprennent 7 variables :

- gender : homme (H) ou femme (F)
- db : date de naissance
- yb : année de naissance
- weight : masse en kg
- height : taille en cm
- wrist : circomférence du poignet en mm
- measurement_date : année de la prise de mesure


### Analyse de `biometry_2014_ew.xlsx`

- Utilisez ce jeu de données afin de réaliser un graphique de type nuage de points dans Microsoft Excel.

- Incorporez le graphique Excel dans un rapport sous Microsoft Word (fichier nommé `biometry.docx` et placé dans `analysis`). Structurez votre rapport avec les différentes sections de la rédaction scientifique (introduction, but, matériel et méthodes, résultats, discussion et conclusions).

Des explications détaillées sur la rédaction scientifique se trouvent dans l’[annexe ](http://biodatascience-course.sciviews.org/sdd-umons/redaction-scientifique.html) dédiée à cette dernière.


### Analyse de `biometry_2014.xlsx`

- Créez un document R Markdown `biometry.Rmd` que vous enregistrez également dans le sous-dossier `analysis`. Complétez ce document avec les différentes sections propre à un rapport scientifique.

- Incorporez-y un graphique de type nuage de point dans la partie résultats à l'aide de chunks et du code R permettant de lire les données, et ensuite de réaliser le graphique.


### Nouvelles données `biometry_2016_ew.xlsx`

Considérez ce fichier comme des données supplémentaires acquises après la rédaction du rapport `biometry.docx`.

- Actualisez votre rapport sous Microsoft Word avec les nouvelles données. Vous devez bien évidemment actualiser le graphique.


### Nouvelles données `biometry_2016.xlsx`

- Actualisez votre rapport sous R Markdown avec les nouvelles données.

### Comparaison des deux  méthodes

A la suite de vos analyses, répondez aux questions suivantes pour cadrer votre réflexion sur le workflow et la recherche reproductible.

- Quel workflow vous semble le plus simple à l'utilisation ?

- Quel workflow laisse le fichier contenant les données intactes ?

- Comparez la façon dont le graphique est généré dans les deux cas.

- Quel workflow vous semble le plus pertinent lorsque les données arrivent progressivement ?

- Quel workflow vous semble le plus simple et le plus approprié lorsque plusieurs personnes collaborent pour rédiger un rapport ? 

Utilisez un fichier Markdown (`.md) pour y consigner vos réponses et placez-le dans votre projet RStudio.

## Bilan

Lors de cet exercice comparatif, vous avez eu l'occasion d'utiliser deux workfow différents :

- Une version relativement classique en biologie, basé sur les outils Microsoft Office,
- Une version utilisant R, R Markdown et RStudio

Vous avez pu constater les avantages du workflow basé sur R Markdown pour pouvoir reproduire, corriger et/ou amender une analyse. **Ces outils sont des éléments de base constitutifs d'un système qui permet d'analyser des données de manière moderne, rigoureuse, vérifiable et partageable.** Les avantages vous paraissent sans doute minimes sur un petit example simpliste comme celui-ci, mais imaginez une étude plus large qui traite des données volumineuses avec des dizaines de graphiques réalisés par plusieurs personnes différentes au sein de l'équipe...
