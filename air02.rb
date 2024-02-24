#Créez un programme qui retourne la valeur d’une liste qui n’a pas de paire.
#Afficher error et quitter le programme en cas de problèmes d’arguments.
def trouver_valeur_sans_paire(liste)
  # Vérifier si l'argument est valide
  if liste.nil? || !liste.is_a?(Array)
    puts "Erreur : L'argument doit être une liste (tableau) valide."
    exit
  end

  # Utiliser XOR pour trouver la valeur sans paire
  valeur_sans_paire = liste.reduce(:^)

  # Afficher le résultat
  puts "Liste d'origine : #{liste.inspect}"
  puts "Valeur sans paire : #{valeur_sans_paire}"
end

# Exemple d'utilisation
liste_original = [1, 2, 3, 4, 1, 2, 4]
trouver_valeur_sans_paire(liste_original)

#---------------------------------------------------------------------------------
  #Explications :

#def trouver_valeur_sans_paire(liste) : Définit une fonction appelée trouver_valeur_sans_paire qui prend une liste comme argument.

#if liste.nil? || !liste.is_a?(Array) : Vérifie si l'argument liste est nul ou n'est pas de type tableau (Array).

##puts "Erreur : L'argument doit être une liste (tableau) valide." : Affiche un message d'erreur si l'argument n'est pas valide.

#exit : Quitte le programme si l'argument n'est pas valide.

#valeur_sans_paire = liste.reduce(:^) : Utilise l'opérateur XOR (^) pour réduire la liste à une seule valeur qui est la valeur sans paire.

#puts "Liste d'origine : #{liste.inspect}" : Affiche la liste d'origine.

#puts "Valeur sans paire : #{valeur_sans_paire}" : Affiche la valeur sans paire trouvée.

#liste_original = [1, 2, 3, 4, 1, 2, 4] : Crée une liste d'exemple.

#trouver_valeur_sans_paire(liste_original) : Appelle la fonction avec la liste d'exemple pour trouver la valeur sans paire et afficher les résultats.

#En résumé, ce programme prend une liste en entrée, vérifie sa validité, utilise l'opérateur XOR pour trouver la valeur sans paire, puis affiche la liste d'origine
#et la valeur sans paire. L'exemple d'utilisation avec la liste [1, 2, 3, 4, 1, 2, 4] devrait afficher "Valeur sans paire : 3", car 3 n'a pas de paire dans la liste.
