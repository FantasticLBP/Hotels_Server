<?php
    error_reporting(0);
    require_once '../../model/PdoMySQL.class.php';
    require_once '../../model/config.php';
    require_once 'Response.php';

    class Register{
        private  $tableName = "user";
        private  $telephone = "";
        private  $password = "";
        protected static $_instance = null;
        protected function __construct(){
            //disallow new instance
        }
        protected function __clone(){
            //disallow clone
        }
        public function getInstance(){
            if (self::$_instance === null) {
                self::$_instance = new self();
            }
            return self::$_instance;
        }

        function register(){
            self.$this->telephone = $_GET['telephone'];
            self.$this->password = $_GET["password"];

            $pdo=new PDO('mysql:host=localhost;dbname=db_Hotel','root','root');
            $sql='INSERT INTO user VALUES ("","'.$this->telephone.'","","","'.$this->password.'","","","")';
            $stmt=$pdo->prepare($sql);
            $stmt->execute();
        }
    }

    $api = Register::getInstance();
    $api->register();
    Response::show(200,'success',"注册成功",'json');

?>