<?php 

namespace App\Controllers;

use App\Models\Pokemon;
use App\Models\Type;
use App\Models\Evolutions;
use App\Models\EvolveIn;

class MainController extends CoreController {

    public function home() {

       $pokemon = new Pokemon; 
        $pokemonList = $pokemon->findAll();


        $this->show('main/home', ['pokemonList' => $pokemonList]);

    }

    public function showPokemon($id) {
        $pokemon = new Pokemon; 
        $myPokemon = $pokemon->find($id); 

        $type = new Type; 
        $myType = $type->findTypes($id); 

       $evolutions = new Evolutions;
       $evolutionsFamily = $evolutions->findEvolutionsByNumber($id);

       $evolveIn = new EvolveIn;
       $evolveWhen = $evolveIn->findPokemonWithEvolutions($id);
        

        $this->show('main/pokemon', [
            'myPokemon' => $myPokemon,
            'myType' => $myType,
            'evolutions' => $evolutionsFamily,
            'evolveWhen' => $evolveWhen,
        ]); 
    }

    public function showTypes()
    {
        $type = new Type();
        $types = $type->findAllTypes();

        $this->show('main/types', [
            'types' => $types
        ]);
    }

    public function pokemonByType($id)
    {
        $type = new Type();
        $pokemonByType = $type->findByTypes($id);

        $this->show('main/pokemonByType', ['pokemonByType' => $pokemonByType]);
    }

}