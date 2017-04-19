<?php
    error_reporting(0);
    require_once '../../model/PdoMySQL.class.php';
    require_once '../../model/config.php';
    require_once 'Response.php';

    class Login{
        private  $tableName = "user";
        private  $telephone = "";           //手机号码
        private  $password = "";            //密码


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

        function login(){



            self.$this->telephone = $_GET["telephone"];
            self.$this->password = $_GET["password"];
            $pdo= new PdoMySQL();;
            $row = $pdo->find("user","telephone=$this->telephone");
            $row = $row[0];
            if ($row["password"] == $this->password) {
                Response::show(200, 'success', $row, 'json');
            } else {
                Response::show(201, 'fail', "登录失败", 'json');
            }

        }
    }

    $api = Login::getInstance();
    $api->login();
?>