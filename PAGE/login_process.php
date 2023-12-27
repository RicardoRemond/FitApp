<?php
// Assurez-vous de démarrer la session si vous ne l'avez pas déjà fait
session_start();

// Récupérez l'email et le mot de passe du formulaire de connexion
$email = $_POST['email'];
$password = $_POST['password'];

// Requête pour récupérer le mot de passe haché de l'utilisateur depuis la base de données
$stmt = $pdo->prepare("SELECT MDP_USER FROM UTILISATEUR_ WHERE EMAIL_USER_ = ?");
$stmt->execute([$email]);
$user = $stmt->fetch();

if ($user) {
    $hashed_password_from_db = $user['MDP_USER'];

    // Vérifiez si le mot de passe correspond au hachage stocké
    if (password_verify($password, $hashed_password_from_db)) {
        // Mot de passe correct, connectez l'utilisateur

        // Initialisez la session ou effectuez toute autre action nécessaire pour connecter l'utilisateur
        $_SESSION['user_email'] = $email; // Exemple de sauvegarde de l'email en session

        // Redirigez l'utilisateur vers une page après la connexion réussie
        header("Location: dashboard.php");
        exit(); // Assurez-vous d'arrêter l'exécution du script après la redirection
    } else {
        // Mot de passe incorrect, affichez un message d'erreur
        echo "Mot de passe incorrect. Veuillez réessayer.";
    }
} else {
    // L'utilisateur n'existe pas ou l'email est incorrect, affichez un message d'erreur
    echo "L'utilisateur n'existe pas. Veuillez vous inscrire.";
}
?>