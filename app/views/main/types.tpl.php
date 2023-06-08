<h2>Cliquez sur un type pour voir tous les Pokémon de ce type</h2>
<ul class="typeList">
<?php

foreach ($types as $type ) : ?>
    <a style="background-color:#<?= $type->getColor()?> " class="typeListElement" href="<?= $router->generate('main-byType', ['id' => $type->getId()]) ?>">
        <li> <?= $type->getName()?>
        </li>
    </a>
<?php endforeach; ?>
</ul>