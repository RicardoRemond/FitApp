<?php
// Assurez-vous de démarrer la session si vous n'avez pas déjà démarré la session
session_start();

// Récupérez les données du formulaire
$firstname = $_POST['firstname'];
$lastname = $_POST['lastname'];
$email = $_POST['email'];
$password = $_POST['password'];

// Hachage du mot de passe
$options = ['cost' => 12]; // Choisissez un coût adapté à votre infrastructure
$hashed_password = password_hash($password, PASSWORD_DEFAULT, $options);

// Ici, vous devez également vérifier et valider les autres champs du formulaire, puis insérer les données dans la base de données
// Assurez-vous de gérer les valeurs des autres champs requis

// Préparez votre requête SQL pour insérer les données sécurisées dans la base de données
$stmt = $pdo->prepare("INSERT INTO UTILISATEUR_ (ID_USER, LASTNAME_USER, FIRSTNAME_USER, AGE_USER, EMAIL_USER_, MDP_USER, WEIGHT_USER_, SIZE_USER, OBJECT_USER_) 
VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?)");

// Exécutez la requête avec les données sécurisées
$stmt->execute([$id_user, $lastname, $firstname, $age, $email, $hashed_password, $weight, $size, $object]);
// Assurez-vous de générer ou d'obtenir des valeurs pour les autres champs requis

// Redirigez l'utilisateur vers une page de confirmation ou une autre page après l'inscription
header("Location: confirmation.php");
exit(); // Assurez-vous d'arrêter l'exécution du script après la redirection
?>