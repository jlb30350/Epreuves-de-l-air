

#Créez un programme qui découpe une chaîne de caractères en tableau en fonction du séparateur donné en 2e argument.

def ma_fonction(string_a_couper, string_separateur)
    # Vérifier si les arguments sont valides
    if string_a_couper.nil? || string_separateur.nil?
      puts "Erreur : Les arguments ne peuvent pas être nuls."
      exit
    end
  # Utilise le séparateur fourni pour découper la chaîne en un tableau
  tableau = string_a_couper.split(string_separateur)

  # Retourne le tableau résultant
  return tableau
end

# Exemple d'utilisation
chaine_exemple = "le papa noel, est vraiment, une ordure"
separateur = ","  # Virgule comme séparateur
resultat = ma_fonction(chaine_exemple, separateur)

# Affiche le résultat
puts "Chaîne d'origine : #{chaine_exemple}"
puts "Tableau résultant : #{resultat.inspect}"
