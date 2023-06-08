<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Bree+Serif&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="<?=$_SERVER['BASE_URI']?>/css/reset.css">
    <link rel="stylesheet" href="<?=$_SERVER['BASE_URI']?>/css/style.css">
    <title>Document</title>
</head>
<body>
    <div class="container">
        <header>

        <h1><a href="<?=$router->generate('main-home')?>">Pokédex</a></h1>
        <nav>
            <a href="<?= $router->generate('main-types')?>">Types</a>
        </nav>

        </header>