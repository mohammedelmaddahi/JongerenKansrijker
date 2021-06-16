<?php 

Class database{
    private $host;
    private $username;
    private $password;
    private $database;
    private $dbh;

        function __construct(){
            $this->host = 'localhost';
            $this->username = 'root';
            $this->password = '';
            $this->database = 'jongerenkansrijker';
            
             $dsn = "mysql:host=$this->host;dbname=$this->database;charset=utf8mb4";
            
            $options = [
                PDO::ATTR_ERRMODE            => PDO::ERRMODE_EXCEPTION,
                PDO::ATTR_DEFAULT_FETCH_MODE => PDO::FETCH_ASSOC,
                PDO::ATTR_EMULATE_PREPARES   => false,
            ];

            try {
             $this->dbh = new PDO($dsn, $this->username, $this->password, $options);
        } catch (\PDOException $e) {
             throw new \PDOException($e->getMessage(), (int)$e->getCode());
        }
            
     }





    
}












?>
