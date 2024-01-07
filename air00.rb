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





