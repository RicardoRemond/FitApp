<?php
// Paramètres de connexion à la base de données
$servername = "localhost"; // Adresse du serveur de base de données
$username = ""; // Nom d'utilisateur de la base de données
$password = ""; // Mot de passe de la base de données
$dbname = "fitapp"; // Nom de la base de données

try {
    // Création d'une connexion PDO
    $pdo = new PDO("mysql:host=$servername;dbname=$dbname", $username, $password);

    // Configuration des attributs de PDO pour signaler les erreurs
    $pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

    // Votre logique de traitement de base de données ici
} catch (PDOException $e) {
    // En cas d'erreur de connexion, affichez l'erreur
    echo "Erreur de connexion : " . $e->getMessage();
}
?>


<?php
session_start();

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    // Inclure le script de traitement du formulaire de connexion (login_process.php)
    include 'login_process.php';
}
?>
<!DOCTYPE html>
<html lang="fr">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Connexion</title>
</head>

<body>

    <form action="login_process.php" method="POST">
        <label for="email">Email:</label>
        <input type="email" id="email" name="email" required><br><br>

        <label for="password">Mot de passe:</label>
        <input type="password" id="password" name="password" required><br><br>

        <input type="submit" value="Se connecter">
    </form>

    <p>Pas encore inscrit ? <a href="register.php">Inscrivez-vous ici</a>.</p>

</body>

</html>