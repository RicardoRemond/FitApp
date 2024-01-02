<!DOCTYPE html>
<html lang="fr">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://fonts.googleapis.com/css2?family=Londrina+Solid:wght@100;300;400;900&display=swap"
        rel="stylesheet">
    <link rel="stylesheet" href="./assets/style/register.css">
    <title>Inscription</title>
</head>

<body>

    <img src="./assets/img/logoTIDR.png" alt="Logo App">

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
        <!-- Autres infos d'inscription -->
        <input type="submit" value="S'inscrire">
    </form>

</body>

</html>