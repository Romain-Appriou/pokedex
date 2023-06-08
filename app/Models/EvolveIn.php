<?php 

namespace App\Models;

use PDO;
use App\Utils\Database;

class EvolveIn {

// ------------------------------ propriétés -------------------------------
private $poknumber;
private $pokevolved;
private $lvl;


// ------------------------------- Méthodes --------------------------------

public function findPokemonWithEvolutions($id) 
    {
      $pdo = Database::getPDO();
      $sql = "SELECT `pokemon`.`name`, `evolveIn`.`poknumber`, `evolveIn`.`pokevolved`, `evolveIn`.`lvl` FROM `pokemon`
      JOIN `evolveIn` ON `pokemon`.`number` = evolveIn.poknumber 
      WHERE `number` = " . $id;
      $statement = $pdo->query( $sql );

      // Comme pour fetchObject, on indique qu'on veut récupérer les résulats
      // sous forme d'objet. Ici on en a plusieurs, on aura donc un tableau d'objets Brand
      $results = $statement->fetchObject("\App\Models\EvolveIn" );

      return $results;
    }

// ----------------------------Getter et setter ----------------------------

/**
 * Get the value of poknumber
 */ 
public function getPoknumber()
{
return $this->poknumber;
}

/**
 * Set the value of poknumber
 *
 * @return  self
 */ 
public function setPoknumber($poknumber)
{
$this->poknumber = $poknumber;

return $this;
}

/**
 * Get the value of pokevolved
 */ 
public function getPokevolved()
{
return $this->pokevolved;
}

/**
 * Set the value of pokevolved
 *
 * @return  self
 */ 
public function setPokevolved($pokevolved)
{
$this->pokevolved = $pokevolved;

return $this;
}

/**
 * Get the value of lvl
 */ 
public function getLvl()
{
return $this->lvl;
}

/**
 * Set the value of lvl
 *
 * @return  self
 */ 
public function setLvl($lvl)
{
$this->lvl = $lvl;

return $this;
}
}