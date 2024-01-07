#00 Créez un programme qui découpe une chaîne de caractères en tableau (séparateurs : espaces, tabulations, retours à la ligne).

#partie 1: fonction utilisées
#Partie 2 : Gestion d'erreur
#Partie 3: Parsing
#Partie 4: Résolution
#Partie 5: Affichage

def decouper_chaine(chaine)
  separateurs = [' ', "\t", "\n"]
  mots = []
  mot_actuel = ""

  chaine.each_char do |caractere|
    if !separateurs.include?(caractere)
      mot_actuel += caractere
    else
      unless mot_actuel.empty?
        mots << mot_actuel
        mot_actuel = ""
      end
    end
  end

  mots << mot_actuel unless mot_actuel.empty?

  return mots
end

# Exemple d'utilisation
chaine_a_decouper = "Bonjour\tle\tmonde!\nCeci est\tune\tchaîne de caractères."
resultat = decouper_chaine(chaine_a_decouper)
puts resultat.inspect
----------------

# Définition de la fonction decouper_chaine avec un paramètre chaine
def decouper_chaine(chaine)
  # Définition des séparateurs (espace, tabulation, retour à la ligne)
  separateurs = [' ', "\t", "\n"]
  # Initialisation d'un tableau pour stocker les mots découpés
  mots = []
  # Initialisation d'une variable pour stocker le mot actuel en cours de construction
  mot_actuel = ""

  # Parcours de chaque caractère de la chaîne
  chaine.each_char do |caractere|
    # Vérification si le caractère n'est pas un séparateur
    if !separateurs.include?(caractere)
      # Ajout du caractère au mot actuel en construction
      mot_actuel += caractere
    else
      # Si le mot actuel n'est pas vide, l'ajouter au tableau de mots
      unless mot_actuel.empty?
        mots << mot_actuel
        mot_actuel = ""
      end
    end
  end

  # Ajout du dernier mot au tableau si la chaîne se termine par un mot
  mots << mot_actuel unless mot_actuel.empty?

  # Retour du tableau de mots
  return mots
end

# Exemple d'utilisation
chaine_a_decouper = "Bonjour\tle\tmonde!\nCeci est\tune\tchaîne de caractères."
resultat = decouper_chaine(chaine_a_decouper)
# Affichage du résultat
puts resultat.inspect

    La fonction decouper_chaine est définie avec un paramètre chaine.
    La variable separateurs est définie comme un tableau contenant les séparateurs (espace, tabulation, retour à la ligne).
    Les variables mots et mot_actuel sont initialisées pour stocker les mots découpés.
    On parcourt chaque caractère de la chaîne à l'aide de la méthode each_char.
    Si le caractère n'est pas un séparateur, il est ajouté au mot actuel en cours de construction.
    Si le caractère est un séparateur, le mot actuel est ajouté au tableau de mots s'il n'est pas vide, et la variable mot_actuel est réinitialisée.
    À la fin de la boucle, le dernier mot est ajouté au tableau si la chaîne se termine par un mot.
    Le tableau de mots est retourné par la fonction.
    Un exemple de chaîne est défini, la fonction est appelée, et le résultat est affiché.




