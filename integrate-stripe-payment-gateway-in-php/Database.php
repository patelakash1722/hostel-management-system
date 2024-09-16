<?php
include_once "constants.php";
class Database
{
    /**
     * @var mysqli
     */
    public $connection;

    public function __construct()
    {
        $this->connection = new mysqli('localhost','root','','hostel');
        if (!$this->connection) {
            die("Error in database connection". $this->connection->connect_error);
        }
    }
}
