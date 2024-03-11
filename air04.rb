#Créez un programme qui affiche une chaîne de caractères en évitant les caractères identiques adjacents.
#Afficher error et quitter le programme en cas de problèmes d’arguments.

def supprime_caracteres_identiques(phrase)
  # Vérifier si l'argument est valide
  if phrase.nil? || !phrase.is_a?(String)
    puts "Erreur : Veuillez fournir une phrase valide."
    exit
  end

  # Convertir la chaîne de caractères en tableau de caractères
  caracteres = phrase.chars

  # Afficher la phrase originale
  puts "Phrase originale : #{phrase}"

  # Afficher la nouvelle phrase en supprimant les caractères doubles adjacents****
  nouvelle_phrase = caracteres.each_cons(2).map { |a, b| a == b ? nil : a }.compact.join
  puts "Nouvelle phrase   : #{nouvelle_phrase}"
end

# la phrase  a utilisée est:
supprime_caracteres_identiques("Mon code marche !!")
