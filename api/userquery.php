<?php
/**
 * Created by PhpStorm.
 * User: LRQ-Pro
 * Date: 2020/6/8
 * Time: 1:03
 */

error_reporting(0);

header("Content-type:application/json;charset=utf-8");

/**
 * 查询用户信息
 */

require_once '../util/DB.php';

if (!empty($_POST['username'])) {
    $db = new DB();
    $result = $db->getUserInfo($_POST['username']);
    $json = array('code' => 200, 'msg' => 'Success', 'data' => $result);
    echo json_encode($json);

} else {
    $json = array("code" => 400, "msg" => "请输入合法的参数");
    echo json_encode($json);
}