<?php
/**
 * Created by PhpStorm.
 * User: LRQ-Pro
 * Date: 2020/6/7
 * Time: 22:41
 */

/**
 * 用户email登陆接口
 */

header("Content-type:application/json;charset=utf-8");

require_once '../util/DB.php';
require_once '../util/UserRegisterAndLogin.php';


if (!empty($_POST["email"]) && !empty($_POST["password"])) {

    try {
        $manage = new UserRegisterAndLogin();
        $manage->EmailLogin($_POST["email"], $_POST["password"]);

    } catch (Exception $e) {
        echo $e;
    }

} else {
    $json = array("code" => 400, "msg" => "请输入合法的参数");
    print_r(json_encode($json));
}