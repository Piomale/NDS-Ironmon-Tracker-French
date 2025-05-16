# NDS-Ironmon-Tracker for Pokémon HeartGold & black/white (french version)

Vous pouvez télécharger le tracker [ici](https://github.com//Piomale/NDS-Ironmon-Tracker-French/releases/latest) (uniquement pour Pokémon HeartGold et black/white ).

Pour plus d'information sur comment mettre en place une partie de IronMon vous pouvez suivre ce tutoriel : [Installation et mise en place](https://github.com/Piomale/NDS-Ironmon-Tracker-French/blob/main/ironmon.md)

![Animation](https://user-images.githubusercontent.com/88030270/232337355-ac008285-2e4e-4528-97d0-684b1445bd0e.gif)



Ce tracker est un script lua qui fonctionne avec [BizHawk] (https://tasvideos.org/BizHawk/ReleaseHistory). Il a été créé principalement pour le défi ironMON (créé par Iateyourpie) et est utilisé pour suivre les données des Pokémon de manière dynamique.

- Pour plus d'informations sur ce défi, rendez-vous sur [ironmon.gg](http://ironmon.gg)
- Venez rejoindre l'incroyable Discord ! https://discord.gg/jFPYsZAhjX

Ce tracker est basé sur les jeux Pokémon de la Nintendo DS (NDS). À ce titre, les jeux suivants sont actuellement pris en charge :
- Pokémon HeartGold
- Pokémon noir
- Pokémon blanc


Ce projet a été lancé à l'origine sur https://github.com/besteon/Ironmon-Tracker, et je ne saurais trop les remercier, ainsi que tous les contributeurs du projet, pour tout le travail de fond qu'ils ont effectué. Un grand merci également aux gens de projectpokemon.org pour toute leur documentation technique sur les données Pokémon.

## Installation

1. Si vous n'avez pas BizHawk, [téléchargez l'émulateur](https://tasvideos.org/BizHawk/ReleaseHistory) (v2.9 ou plus).
   - **IMPORTANT** : **Cela crée un fichier de configuration dans le dossier de BizHawk qui garantit que le tracker fonctionnera correctement. Si vous ne le faites pas, des erreurs peuvent se produire.
2. Téléchargez ce tracker depuis la section [releases](https://github.com//Piomale/NDS-Ironmon-Tracker-French/releases/).
3. Décompressez les fichiers du tracker à l'endroit de votre choix. Un bon emplacement est le dossier `Lua` où vous avez installé BizHawk. Assurez-vous que le dossier "ironmon_tracker" est dans le même répertoire que "Ironmon_Tracker.lua".
4. Chargez votre ROM dans [BizHawk] (https://tasvideos.org/BizHawk/ReleaseHistory).
5. Ouvrez la console Lua (Tools -> Lua Console). Cliquez sur l'icône du dossier et ouvrez `Ironmon_Tracker.lua` à l'endroit où vous l'avez extrait.
   - Si vous avez installé le tracker dans le dossier `Lua` de Bizhawk, cet emplacement est affiché par défaut et vous devriez voir le fichier `Ironmon_Tracker.lua` immédiatement.

## Caractéristiques principales

- Suivi automatique des Pokémon** : Toutes les données de votre Pokémon sont mises à jour au fur et à mesure que vous jouez ! Ses statistiques, sa nature, ses mouvements (et diverses informations à leur sujet), ses capacités et son type sont tous affichés pour vous. Plus besoin d'afficher constamment le résumé !

- Augmentation et diminution des statistiques** : Les mouvements qui modifient les statistiques (comme `Danse du dragon`, `Lueur de la queue`, et `Fouet de la queue`) seront affichés sur le traqueur à côté des statistiques du pokémon. Les augmentations de statistiques positives seront indiquées par des flèches vers le haut qui deviennent vertes, et les négatives seront indiquées par des flèches vers le bas qui deviennent rouges.

- Mouvements ennemis** : Les mouvements des Pokémon ennemis sont également pris en compte ! Mais d'une manière un peu différente. Une fois que vous avez vu le mouvement d'un Pokémon ennemi, le traqueur l'affiche. Si vous rencontrez le même Pokémon plus tard, le mouvement sera accompagné d'un astérisque `*`, ce qui signifie qu'il n'a peut-être plus le mouvement en question.

- Prévision des statistiques de l'ennemi** : Vous pensez que l'ennemi est un char d'assaut massif ? Vous pensez qu'un ennemi frappe comme un camion ? Eh bien, vous pouvez l'indiquer dans le tracker ! Lorsque vous visualisez un pokémon ennemi, cliquez simplement sur les cases à côté des statistiques du Pokémon ennemi, et il y aura un cycle de `+`, `-`, et blanc.

- Efficacité des mouvements** : Il peut être difficile de savoir quels mouvements sont les plus efficaces ! Pour vous faciliter la tâche, nous pouvons le faire pour vous. Lorsqu'un coup est super efficace, il affiche des flèches vertes vers le haut en fonction de x2 ou x4. Les coups peu efficaces afficheront des flèches rouges vers le bas de la même manière. Si un coup ne peut pas toucher du tout (comme les types normaux et les types fantômes), un "X" rouge sera affiché.

- Icônes de type d'attaque** : La répartition physique/spéciale des coups peut être très difficile à mémoriser. Heureusement, le traqueur affiche ces informations pour vous ! Selon qu'un coup est physique ou spécial, une petite icône sera affichée à gauche du nom du coup. S'il s'agit d'un coup de statut, aucune icône ne sera affichée.

- Objets de soin** : Le traqueur a également la capacité de suivre le nombre de soins que vous avez et d'afficher le total des soins en pourcentage de vos HP. Par exemple, si mon Pokémon a 40 PV et 3 potions, il affichera "Soins dans le sac : 150%". Très utile !

- Chargement rapide des graines** : Le tracker dispose d'une fonction très intéressante qui permet de charger automatiquement la prochaine graine :
	1. Créez un tas de graines avec un fichier .bat (vérifiez le discord d'Ironmon dans le canal de démarrage).
  2. Assurez-vous que les seeds sont dans un format comme `seed1.nds`, `seed2.nds`, `seed3.nds`, etc. `seed0003`, `S33D3`, et `34555_1` ne fonctionneront pas.
	3. Une fois que vous avez été renvoyé au laboratoire et que vous devez charger la graine suivante, utilisez la combinaison de boutons NEXT_SEED dans le fichier Settings.
		- Par défaut, la combinaison de boutons est A,B,Start,Select.
		
- **Notes** : Vous pouvez laisser une note rapide sur un Pokémon ennemi en cliquant sur le bouton de note au milieu du tracker.


