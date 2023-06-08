<?php 

namespace App\Models;
use App\Utils\Database;
use PDO; 

class Type {

//-------------------------------------------------------------------
//                          Propriétés
//-------------------------------------------------------------------

private $id;
private $name;
private $color;

//-------------------------------------------------------------------
//                          Méthodes
//-------------------------------------------------------------------


public function findTypes($id)
{
    $pdo = Database::getPDO();
    $statement = $pdo->query("SELECT `pokemon_number`, `type_id`, `name`, `type`.`id`, `color`FROM `pokemon_type`
    INNER JOIN `type` ON `pokemon_type`.`type_id` = `type`.`id`
    WHERE `pokemon_number` =" . $id);
    $resultsOrder   = $statement->fetchAll( PDO::FETCH_CLASS, "App\Models\Type" );
    return $resultsOrder;
}

public function findAllTypes()
{
    $pdo = Database::getPDO();
    $sql = "SELECT * FROM `type`";
    $statement = $pdo->query($sql);
    $result = $statement->fetchAll(PDO::FETCH_CLASS, "App\Models\Type");

    return $result;
}

public function findByTypes($id)
{
    $pdo = Database::getPDO();
    $sql = "SELECT `pokemon`.`name`, `attack`, `defense`, `hp`, `spe_attack`, `spe_defense`, `speed`, `number`
    FROM `pokemon` 
    JOIN `pokemon_type` ON `pokemon`.`number` = `pokemon_type`.`pokemon_number`
    JOIN `type` ON `pokemon_type`.`type_id` = `type`.`id`
    WHERE `type`.`id` = " . $id;
    $statement = $pdo->query($sql);
    $result = $statement->fetchAll(PDO::FETCH_CLASS, "App\Models\Pokemon");

    return $result;
}

//-------------------------------------------------------------------
//                          Getter and setter
//-------------------------------------------------------------------

/**
 * Get the value of color
 */ 
public function getColor()
{
return $this->color;
}

/**
 * Set the value of color
 *
 * @return  self
 */ 
public function setColor($color)
{
$this->color = $color;

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
 * Get the value of id
 */ 
public function getId()
{
return $this->id;
}
}