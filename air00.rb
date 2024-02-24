#00 Créez un programme qui découpe une chaîne de caractères en tableau (séparateurs : espaces, tabulations, retours à la ligne).

def decoupe_ma_phrase(ma_phrase)
  # Vérifier si l'argument est nul
  if ma_phrase.nil?
    puts "Erreur : Dans le code ligne 22 mettre une phrase entre guillements apres = svp merci"
    exit
  end

  # Utilise les espaces, tabulations et retours à la ligne comme séparateurs
  separators = [' ', '\t', '\n']

  # Découpe la chaîne en un tableau en utilisant les séparateurs
  mots = ma_phrase.split(/#{separators.join('|')}/)

  # Affiche le résultat
  puts "Chaîne d'origine : #{ma_phrase}"
  puts "Tableau résultant : #{mots.inspect}"
end

# Exemple d'utilisation
ma_phrase = "toto est là"
decoupe_ma_phrase(ma_phrase)






