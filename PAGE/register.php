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
    // Inclure le script de traitement du formulaire d'inscription (register_process.php)
    include 'register_process.php';
}
?>
<!DOCTYPE html>
<html lang="fr">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Inscription</title>
</head>

<body>
    <form action="register_process.php" method="POST">
        <h2>Inscription</h2>
        <label for="firstname">Prénom:</label>
        <input type="text" id="firstname" name="firstname" required><br><br>
        <label for="lastname">Nom:</label>
        <input type="text" id="lastname" name="lastname" required><br><br>
        <label for="email">Email:</label>
        <input type="email" id="email" name="email" required><br><br>
        <label for="password">Mot de passe:</label>
        <input type="password" id="password" name="password" required><br><br>
        <!-- Autres champs d'inscription -->
        <input type="submit" value="S'inscrire">
    </form>

</body>

</html>