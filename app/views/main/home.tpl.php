<section class="pokedex">
    <ul class="list">
    <?php
    
    foreach ($pokemonList as $pokemon) { ?>
            
                <a href="<?=$router->generate('main-pokemon', ['id' => $pokemon->getNumber()])?>">
                    <li>
                        <img src="<?= $_SERVER['BASE_URI']?>/img/<?=$pokemon->getNumber()?>.png" alt="Image du pokemon n°<?= $pokemon->getNumber()?>">
                        <p>#<?= $pokemon->getNumber() ?> <?= $pokemon->getName()?></p>
                    </li>
                </a>
            
    
    <?php } ?>
    </ul>
</section>