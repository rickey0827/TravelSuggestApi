<?php
/**
 * Created by PhpStorm.
 * User: LRQ-Pro
 * Date: 2020/5/25
 * Time: 13:41
 */

error_reporting(0);

header("Content-type:application/json;charset=utf-8");

/**
 * 用户注册接口
 */

require_once '../util/DB.php';
require_once '../util/UserRegisterAndLogin.php';


if (!empty($_POST["username"]) && !empty($_POST["password"])
    && !empty($_POST['_phone'] && !empty($_POST['_email']))) {

    try {
        $manage = new UserRegisterAndLogin();
        $manage->findUserIsExist($_POST["username"], $_POST["password"], $_POST["_phone"], $_POST["_email"]);

    } catch (Exception $e) {
        echo $e;
    }

} else {
    $json = array("code" => 400, "msg" => "输入格式错误");
    print_r(json_encode($json));
}



