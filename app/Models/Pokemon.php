<?php

namespace App\Models;

use PDO;
use App\Utils\Database;

class Pokemon 
{
//==================================
//          Propriétés
//==================================

private $id;
private $name;
private $hp;
private $attack;
private $defense;
private $spe_attack;
private $spe_defense;
private $speed;
private $number;
private $pokevolved;
private $lvl;


//==================================
//          Méthodes
//==================================

public function find( $id )
    {
      $pdo          = Database::getPDO();
      $statement    = $pdo->query( 
      "SELECT * FROM `pokemon`
      WHERE `number` =" . $id );
      $resultObject = $statement->fetchObject( "\App\Models\Pokemon" );      
      return $resultObject;
    }


public function findAll()
    {
      $pdo = Database::getPDO();
      $sql = "SELECT * FROM `pokemon` ORDER BY `number`ASC";
      $statement = $pdo->query( $sql );

      // Comme pour fetchObject, on indique qu'on veut récupérer les résulats
      // sous forme d'objet. Ici on en a plusieurs, on aura donc un tableau d'objets Brand
      $results = $statement->fetchAll( PDO::FETCH_CLASS, "\App\Models\Pokemon" );

      return $results;
    }

    public function findEvolutionsByNumber($number)
    {
        {
            $pdo          = Database::getPDO();
            $statement    = $pdo->query( "SELECT * FROM `pokemon` 
            JOIN `evolutions` ON `evolutions`.`pokemonnumber` = `pokemon`.`number`
            WHERE `pokemon`.`number` =" . $number );
            $resultObject = $statement->fetchObject( "\App\Models\Pokemon" );      
            return $resultObject;
          }
    }


//==================================
//          Getters et Setters
//==================================





/**
 * Get the value of id
 */ 
public function getId()
{
return $this->id;
}

/**
 * Set the value of id
 *
 * @return  self
 */ 
public function setId($id)
{
$this->id = $id;

return $this;
}

/**
 * Get the value of name
 */ 
public function getName()
{
return $this->name;
}

/**
 * Set the value of name
 *
 * @return  self
 */ 
public function setName($name)
{
$this->name = $name;

return $this;
}

/**
 * Get the value of hp
 */ 
public function getHp()
{
return $this->hp;
}

/**
 * Set the value of hp
 *
 * @return  self
 */ 
public function setHp($hp)
{
$this->hp = $hp;

return $this;
}

/**
 * Get the value of attack
 */ 
public function getAttack()
{
return $this->attack;
}

/**
 * Set the value of attack
 *
 * @return  self
 */ 
public function setAttack($attack)
{
$this->attack = $attack;

return $this;
}

/**
 * Get the value of defense
 */ 
public function getDefense()
{
return $this->defense;
}

/**
 * Set the value of defense
 *
 * @return  self
 */ 
public function setDefense($defense)
{
$this->defense = $defense;

return $this;
}

/**
 * Get the value of spe_attack
 */ 
public function getSpe_attack()
{
return $this->spe_attack;
}

/**
 * Set the value of spe_attack
 *
 * @return  self
 */ 
public function setSpe_attack($spe_attack)
{
$this->spe_attack = $spe_attack;

return $this;
}

/**
 * Get the value of spe_defense
 */ 
public function getSpe_defense()
{
return $this->spe_defense;
}

/**
 * Set the value of spe_defense
 *
 * @return  self
 */ 
public function setSpe_defense($spe_defense)
{
$this->spe_defense = $spe_defense;

return $this;
}

/**
 * Get the value of speed
 */ 
public function getSpeed()
{
return $this->speed;
}

/**
 * Set the value of speed
 *
 * @return  self
 */ 
public function setSpeed($speed)
{
$this->speed = $speed;

return $this;
}

/**
 * Get the value of number
 */ 
public function getNumber()
{
return $this->number;
}

/**
 * Set the value of number
 *
 * @return  self
 */ 
public function setNumber($number)
{
$this->number = $number;

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