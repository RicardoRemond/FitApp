<!DOCTYPE html>
<html lang="fr">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Londrina+Solid:wght@100;300;400;900&display=swap"
        rel="stylesheet">
    <link rel="stylesheet" href="./assets/style/login.css">
    <title>Connexion</title>
</head>

<body>
    <img src="./assets/img/logoTIDR.png" alt="Logo App">
    <form action="login_process.php" method="POST">
        <label for="identifiant">Identifiant:</label>
        <input type="identifiant" id="identifiant" name="identifiant" required><br><br>

        <label for="password">Mot de passe:</label>
        <input type="password" id="password" name="password" required><br><br>

        <div class="connexionEtMDP">
            <input type="submit" value="Se connecter">
            <input type="submit" value="Mot de passe oublié">
        </div>

        <p>Pas encore inscrit ? <a href="register.php">Inscrivez-vous ici</a>.</p>

    </form>


</body>

</html>