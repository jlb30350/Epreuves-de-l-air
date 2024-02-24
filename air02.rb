
#Créez un programme qui transforme un tableau de chaînes de caractères en une seule chaîne de caractères.
#Espacés d’un séparateur donné en dernier argument au programme.

def fusionner_tableau(tableau, separateur)
    # Vérifier si les arguments sont valides
    if tableau.nil? || separateur.nil?
      puts "Erreur : Les arguments ne peuvent pas être nuls."
      exit
    end
  # Utilise le séparateur donné pour concaténer les éléments du tableau
  resultat = tableau.join(separateur)

  # Retourne la chaîne résultante
  return resultat
end

# Exemple d'utilisation
tableau_exemple = ["Ceci", "est", "une", "phrase", "avec", "plusieurs", "mots."]
separateur = " "  # Espace comme séparateur
resultat_final = fusionner_tableau(tableau_exemple, separateur)

# Affiche le résultat
puts "Tableau d'origine : #{tableau_exemple.inspect}"
puts "Chaîne résultante : #{resultat_final}"
