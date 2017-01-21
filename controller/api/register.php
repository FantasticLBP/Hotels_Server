<?php
    error_reporting(0);
    require_once '../../model/PdoMySQL.class.php';
    require_once '../../model/config.php';
    require_once '../../model/pwd.php';
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
            self.$this->telephone = $_SERVER["telephone"];
            self.$this->password = $_SERVER["password"];


            $pdo=new PDO('mysql:host=localhost;dbname=db_Hotel','root','root');
            //INSERT INTO user VALUES ("","","123456","","15757118174","","","")
            $sql='INSERT INTO user VALUES ("","","123456","","15757118174","","","")';
            $stmt=$pdo->prepare($sql);
            $stmt->execute();
        }
    }

    $api = Register::getInstance();
    $api->register();
    Response::show(200,'success',"注册成功",'json');

?>