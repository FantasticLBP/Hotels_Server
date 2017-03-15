<?php

/**
 * Created by PhpStorm.
 * User: geek
 * Date: 2017/2/22
 * Time: 下午10:35
 */
class ShowHelper
{
    protected static $_instance = null;


    private function __construct()
    {
    }


    private function  __clone()
    {
        // TODO: Implement __clone() method.
    }

    public function getInstance()
    {
        if (self::$_instance == null) {
            self::$_instance = new self();
        }
        return self::$_instance;
    }


    public function getSubject($subjectOrder)
    {
        if (!$this->isNumber($subjectOrder)) {
            return;
        }
        switch ($subjectOrder) {
            case 1: {
                return "精品名宿";
                break;
            }
            case 2: {
                return "茶园野趣";
                break;
            }
            case 3: {
                return "景点周边";
                break;
            }
            case 4: {
                return "城市周边";
                break;
            }
            case 5: {
                return "公园之畔";
                break;
            }
            case 6: {
                return "温泉酒店";
                break;
            }
            case 7: {
                return "背包客栈";
                break;
            }
            case 8: {
                return "轻奢";
                break;
            }
            case 9: {
                return "新开酒店";
                break;
            }
            case 10: {
                return "高端酒店";
                break;
            }
            case 11: {
                return "度假酒店";
                break;
            }
            case 12: {
                return "亲子酒店";
                break;
            }
            case 13: {
                return "情侣酒店";
                break;
            }
            case 14: {
                return "山水酒店";
                break;
            }

        }


    }
    public  function  getOrderStatus($status){
        $statuCode = intval($status);
        $statuString = "";
        switch($statuCode){
            case 0:
                $statuString = "待付款";
                break;
            case 1:
                $statuString = "未出行";
                break;
            case 2:
                $statuString = "待评价";
                break;
            case 3:
                $statuString = "完成";
                break;

        }
        return $statuString;
    }

    public function  getEquipmentCondition($hasWifi, $hasParking, $hasPackage, $hasMeetingRoom)
    {
        if (!$this->isNumber($hasWifi)) {
            return;
        }
        if (!$this->isNumber($hasParking)) {
            return;
        }
        if (!$this->isNumber($hasPackage)) {
            return;
        }
        if (!$this->isNumber($hasMeetingRoom)) {
            return;
        }

        $score = 0;
        if ($hasWifi == 1) {
            $score += 1;
        }
        if ($hasParking == 1) {
            $score += 1;
        }
        if ($hasPackage == 1) {
            $score += 1;
        }
        if ($hasMeetingRoom == 1) {
            $score += 1;
        }

        switch ($score) {
            case 0: {
                return "较差";
                break;
            }
            case 1: {
                return "合格";
                break;
            }
            case 2: {
                return "良好";
                break;
            }

            case 3: {
                return "优秀";
                break;
            }

            case 4: {
                return "全优";
                break;
            }

        }


    }

    public function isNumber($tester)
    {
        if (!is_numeric($tester) || $tester == null) {
            return false;
        }
        return true;
    }
}