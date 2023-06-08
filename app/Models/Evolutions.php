<?php 

namespace App\Models; 

use PDO;
use App\Utils\Database;

class Evolutions {

    //--------------------- propriétés ----------------------------
    private $pokemonnumber;
    private $evol1;
    private $evol2;
    private $evol3;
    private $evol4;


    // ----------------------------- méthodes -------------------------


    public function findEvolutionsByNumber($number)
    {
        {
            $pdo          = Database::getPDO();
            $statement    = $pdo->query( "SELECT * FROM `pokemon` 
            JOIN `evolutions` ON `evolutions`.`pokemonnumber` = `pokemon`.`number`
            WHERE `pokemon`.`number` =" . $number );
            $resultObject = $statement->fetchObject( "\App\Models\Evolutions" );      
            return $resultObject;
          }
    }


    //--------------------- getter et setter ----------------------------

    /**
     * Get the value of pokemonnumber
     */ 
    public function getPokemonnumber()
    {
        return $this->pokemonnumber;
    }



    /**
     * Get the value of evol1
     */ 
    public function getEvol1()
    {
        return $this->evol1;
    }

    /**
     * Set the value of evol1
     *
     * @return  self
     */ 
    public function setEvol1($evol1)
    {
        $this->evol1 = $evol1;

        return $this;
    }

    /**
     * Get the value of evol2
     */ 
    public function getEvol2()
    {
        return $this->evol2;
    }

    /**
     * Set the value of evol2
     *
     * @return  self
     */ 
    public function setEvol2($evol2)
    {
        $this->evol2 = $evol2;

        return $this;
    }

    /**
     * Get the value of evol3
     */ 
    public function getEvol3()
    {
        return $this->evol3;
    }

    /**
     * Set the value of evol3
     *
     * @return  self
     */ 
    public function setEvol3($evol3)
    {
        $this->evol3 = $evol3;

        return $this;
    }

    /**
     * Get the value of evol4
     */ 
    public function getEvol4()
    {
        return $this->evol4;
    }

    /**
     * Set the value of evol4
     *
     * @return  self
     */ 
    public function setEvol4($evol4)
    {
        $this->evol4 = $evol4;

        return $this;
    }

}