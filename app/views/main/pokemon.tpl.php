<section class="pokemonDetails">

    <h2>Détails de <?= $myPokemon->getName() ?> </h1>

    <div class="details">
        <!-- image côté gauche -->
        <img class="pokemonPicture" src="<?= $_SERVER['BASE_URI']?>/img/<?=$myPokemon->getNumber()?>.png" alt="Image du pokemon n°<?= $myPokemon->getNumber()?>">

        <!-- encart description côté droit -->
        <div class="description">
            <h3 class="name">#<?= $myPokemon->getNumber() ?> <?= $myPokemon->getName() ?></h3>
            <ul class="types">

                <?php
                foreach($myType as $type) {    ?>
                    <a href="<?=$router->generate('main-byType', ['id' => $type->getId()])?>">
                        <li class="type" style="background-color: #<?= $type->getColor() ?>">
                            <?= $type->getName() ?>
                        </li>
                    </a>
                <?php   } ?>

            </ul>
            <h4>Statistiques</h4>
            <!-- statistiques -->
            <ul class="statsList">
                <li>
                    <ul class="stats">
                        <li class="carac">PV</li>
                        <li class="caracResult"><?= $myPokemon->getHp() ?></li>
                        <li class="progressLi"><progress value="<?= $myPokemon->getHp() ?>" max="255"></progress></li>
                    </ul>
                </li>
                <li>
                    <ul class="stats">
                        <li class="carac">Attaque</li>
                        <li class="caracResult"><?= $myPokemon->getAttack() ?></li>
                        <li class="progressLi"><progress value="<?= $myPokemon->getAttack() ?>" max="255"></progress>
                        </li>
                    </ul>
                </li>
                <li>
                    <ul class="stats">
                        <li class="carac">Défense</li>
                        <li class="caracResult"><?= $myPokemon->getDefense() ?></li>
                        <li class="progressLi"><progress value="<?= $myPokemon->getDefense() ?>" max="255"></progress></li>
                    </ul>
                </li>
                <li>
                    <ul class="stats">
                        <li class="carac">Attaque Spé.</li>
                        <li class="caracResult"><?= $myPokemon->getSpe_attack() ?></li>
                        <li class="progressLi"><progress value="<?= $myPokemon->getSpe_attack() ?>" max="255"></progress></li>
                    </ul>
                </li>
                <li>
                    <ul class="stats">
                        <li class="carac">Défense Spé.</li>
                        <li class="caracResult"><?= $myPokemon->getSpe_defense() ?></li>
                        <li class="progressLi"><progress value="<?= $myPokemon->getSpe_defense() ?>" max="255"></progress></li>
                    </ul>
                </li>
                <li>
                    <ul class="stats">
                        <li class="carac">Vitesse</li>
                        <li class="caracResult"><?= $myPokemon->getSpeed() ?></li>
                        <li class="progressLi"><progress value="<?= $myPokemon->getSpeed() ?>" max="255"></progress></li>
                    </ul>
                </li>
            </ul>
            <!-- Evolutions -->
            <?php

            // cas particulier d'Evoli
            if($myPokemon->getNumber() == 133) { ?>
                <h4>Famille d'évolution</h4>
                <ul class="pokemonEvolutions">
                    <li class="pokemonItem">
                        <a href="<?= $router->generate('main-pokemon', ['id' => $evolutions->getEvol1()]) ?>"><img class="pokemonEvolPicture" src="<?=$_SERVER['BASE_URI']?>/img/<?=$myPokemon->getNumber()?>.png" alt=""></a>
                    </li>
                    <li class="arrows">&rArr;</li>
                    <li class="pokemonItem">
                        <a href="<?= $router->generate('main-pokemon', ['id' => $evolutions->getEvol2()]) ?>"><img class="pokemonEvolPicture" src="<?=$_SERVER['BASE_URI']?>/img/<?=$evolutions->getEvol2()?>.png" alt=""></a>
                    </li>
                    <li class="arrows">OU</li>
                    <li class="pokemonItem">
                        <a href="<?= $router->generate('main-pokemon', ['id' => $evolutions->getEvol3()]) ?>"><img class="pokemonEvolPicture" src="<?=$_SERVER['BASE_URI']?>/img/<?=$evolutions->getEvol3()?>.png" alt=""></a>
                    </li>
                    <li class="arrows">OU</li>
                    <li class="pokemonItem">
                        <a href="<?= $router->generate('main-pokemon', ['id' => $evolutions->getEvol4()]) ?>"><img class="pokemonEvolPicture" src="<?=$_SERVER['BASE_URI']?>/img/<?=$evolutions->getEvol4()?>.png" alt=""></a>
                    </li>
                </ul>

                <?php } 
                // cas particulier des évolutions d'évoli
                elseif ($myPokemon->getNumber() == 134 || $myPokemon->getNumber() == 135 || $myPokemon->getNumber() == 136) { ?>
                    <ul class="pokemonEvolutions">
                        <li class="pokemonItem">
                            <a href="<?= $router->generate('main-pokemon', ['id' => $evolutions->getEvol1()]) ?>"><img class="pokemonEvolPicture" src="<?=$_SERVER['BASE_URI']?>/img/<?=$evolutions->getEvol1()?>.png" alt=""></a>
                        </li>
                        <li class="arrows">&rArr;</li>
                        <li class="pokemonItem">
                            <a href="<?= $router->generate('main-pokemon', ['id' => $evolutions->getEvol2()]) ?>"><img class="pokemonEvolPicture" src="<?=$_SERVER['BASE_URI']?>/img/<?=$evolutions->getEvol2()?>.png" alt=""></a>
                        </li>
                    </ul>
               <?php } 

               // autres cas où il y a une évolution (getEvol2() != de null) !
             elseif($evolutions->getEvol2() != NULL) { ?>
                <?php if($evolveWhen == false) {
                
                } else { ?>
                <h4>Conditions d'évolution : 
                    <?php if($evolveWhen->getLvl() > 0) {
                    echo "niveau" . " " . $evolveWhen->getLvl();
                        } elseif ($evolveWhen->getLvl() == -1){
                            echo "pierre de lune";
                        } elseif ($evolveWhen->getLvl() == -2) {
                            echo "échange";
                        } elseif ($evolveWhen->getLvl() == -3) {
                            echo "pierre de foudre";
                        } elseif($evolveWhen->getLvl() == -4) {
                            echo "pierre de feu";
                        } elseif ($evolveWhen->getLvl() == -5) {
                            echo "pierre plante";
                        } elseif ($evolveWhen->getLvl() == -6) {
                            echo "pierre eau";
                        } ?>
                </h4> 
                 
               <?php } ?>
                
                <br>

                <h4>Famille d'évolution</h4>
                <ul class="pokemonEvolutions">
                    <li class="pokemonItem">
                        <a href="<?= $router->generate('main-pokemon', ['id' => $evolutions->getEvol1()]) ?>"><img class="pokemonEvolPicture" src="<?=$_SERVER['BASE_URI']?>/img/<?=$evolutions->getEvol1()?>.png" alt=""></a>
                    </li>
                    <li class="arrows">&rArr;</li>
                    <li class="pokemonItem">
                        <a href="<?= $router->generate('main-pokemon', ['id' => $evolutions->getEvol2()]) ?>"><img class="pokemonEvolPicture" src="<?=$_SERVER['BASE_URI']?>/img/<?=$evolutions->getEvol2()?>.png" alt=""></a>
                    </li>
                    <?php if($evolutions->getEvol3() != NULL) : ?>
                        <li class="arrows">&rArr;</li>
                    <li class="pokemonItem">
                        <a href="<?= $router->generate('main-pokemon', ['id' => $evolutions->getEvol3()]) ?>"><img class="pokemonEvolPicture" src="<?=$_SERVER['BASE_URI']?>/img/<?=$evolutions->getEvol3()?>.png" alt=""></a>
                    </li>
                        <?php endif; ?>
                </ul>
            <?php } ?>






            
            
            


            

            
        </div>
    </div>

    <aside>
        <ul class="backLinks">
            <a href="<?= $router->generate('main-home')?>"><li>Retour au pokedex</li></a>
        
            <?php foreach($myType as $type) : ?>
            <a href="<?= $router->generate('main-byType', ['id' => $type->getId()])?>">
                <li style="background-color:#<?= $type->getColor()?>">Liste des pokemon de type <?= $type->getName() ?> </li>
        </a>
            <?php endforeach ; ?>
        </ul>

    </aside>
    

</section>

