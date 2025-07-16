# 1) Installer Bizhawk

### a) Installer les prérequis
* Télécharger [bizhawk_prereqs_vx.x.x.zip](https://github.com/TASEmulators/BizHawk-Prereqs/releases/latest)  
* Extraire le fichier **bizhawk_prereqs_vx.x.x.zip** (clic droit > Extraire tout sous Windows 11, ou avec un outil comme WinZip, 7-Zip, WinRAR sous Windows 10)  
* Double-cliquer sur **bizhawk_prereqs.exe** (le fichier peut se trouver dans le dossier actuel ou dans le dossier **bizhawk_prereqs_vx.x.x**) puis cliquer sur "OK"  

### b) Téléchargement et installation de Bizhawk
* Télécharger Bizhawk en cliquant sur "Windows download" sur [cette page](https://tasvideos.org/BizHawk/ReleaseHistory)  
* Extraire le fichier (clic droit > Extraire tout sous Windows 11, ou avec un outil comme WinZip, 7-Zip, WinRAR sous Windows 10)  

### c) Vérification
* Dans le dossier **BizHawk-x.x-win-x64**, double-cliquer sur **EmuHawk.exe**. Si Bizhawk se lance, alors l'installation a fonctionné.

# 2) Récupérer un jeu

### a) Récupérer un fichier ROM
* Pour cette étape, le mieux est de se renseigner sur Google, par exemple en essayant de taper le nom du jeu et "émulateur" sur Internet. Pour information, un jeu comme **HeartGold** doit faire environ 200 Mo. Pour le jeu en français, il faut le préciser dans la recherche Google.

### b) Vérification
* Une fois Bizhawk lancé, il faut aller dans le menu "File", puis "Open ROM ..." et sélectionner la ROM téléchargée.  
  Si le jeu se lance dans la bonne langue, alors il est possible de passer à l'étape suivante.

# 3) Installation du tracker

### a) Téléchargement du tracker :
* Pour **Pokémon HeartGold** & **Black/White** en version française, il est possible de télécharger le tracker [ici](https://github.com/Piomale/NDS-Ironmon-Tracker-French/releases/latest). Il faut télécharger **NDS-Ironmon-Tracker-French.zip**  
* Extraire le fichier **NDS-Ironmon-Tracker-French.zip** (clic droit > Extraire tout sous Windows 11, ou avec un outil comme WinZip, 7-Zip, WinRAR sous Windows 10)

### b) Vérification
* Une fois le jeu lancé sur Bizhawk, il faut aller dans le menu **Tools** → **Lua Console**  
* Dans la nouvelle fenêtre qui vient de s’ouvrir, il faut aller dans **Script** → **Open Script** et sélectionner le fichier **Ironmon-Tracker.lua** présent dans le dossier **NDS-Ironmon-Tracker-French**  
* Normalement, la fenêtre du tracker doit s’ajouter à coté du jeu.

# 4) Télécharger le Randomizer

### a) Téléchargement et extraction
* Télécharger [PokeRandoZX-vx_x_x.zip](https://github.com/Somnides/universal-pokemon-randomizer-zx/releases/latest)  
* Extraire le fichier **PokeRandoZX-vx_x_x.zip** (clic droit > Extraire tout sous Windows 11, ou avec un outil comme WinZip, 7-Zip, WinRAR sous Windows 10)

### b) Vérification
* Une fois le jeu et le tracker lancés, il faut appuyer sur le petit engrenage dans le tracker puis sur **Paramètres de Chargement Rapide**  
* Dans **ROM à patcher**, il faut mettre la ROM récupérée lors de l’étape 2.a)  
* Dans **Randomizer JAR**, il faut mettre le fichier **PokeRandoZX.jar** récupéré à l’étape 4.a)  
* Dans **Fichier de paramètres**, il faut sélectionner le fichier correspondant aux règles et au jeu que si l'on souhaite t’imposer ([liste des règles ici](https://gist.github.com/valiant-code/adb18d248fa0fae7da6b639e2ee8f9c1))  
* En appuyant sur les touches de **Chargement rapide**, une nouvelle seed se lance.  
* Pour changer les touches de chargement rapide, il faut aller dans le menu **Contrôles & Favoris** du tracker et changer les touches de **Recommencer rapidement**

# 5) Introduction rapide (Étape optionnelle pour Pokémon HGSS)

### Suivre le tutoriel du GitHub HGSS-All-In-One-Ironmon-FR
* il est possible de trouver le tuto sur ce [GitHub](https://github.com/Somnides/HGSS-Intro-Ironmon-FR)

# FAQ
* **Q : Que veut dire HGSS
  **R : Il s'agit de Pokémon Or HeartGold et Argent SoulSilver

* **Q : Quand je génère une nouvelle seed, j’ai l’erreur suivante :**  
  ![image](https://github.com/user-attachments/assets/c5975e81-2fc2-4bd4-ab57-43335cd897db)  
  **R :** Il faut ouvrir avec un éditeur de texte le fichier **ROMGenerationErrorLog.txt** présent dans le dossier du tracker. Ce fichier détaillera l’erreur.  

* **Q : J’ai l’erreur suivante :** `'java' n'est pas reconnu en tant que commande interne`  
  **R :** Il faut télécharger et installer Java depuis [ce lien](https://www.java.com/fr/download/)
