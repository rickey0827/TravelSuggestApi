<?php
/**
 * Created by PhpStorm.
 * User: LRQ-Pro
 * Date: 2020/6/9
 * Time: 21:36
 */


header("Content-type:application/json;charset=utf-8");

require_once '../util/DB.php';


$key = $_POST['key'];

if (!empty($key)) {
    try {
        $db = new DB();
        $result = $db->getAllToPic($key);

        $json = array("code" => 200, 'msg' => 'Success', 'data' => $result);
        echo json_encode($json);
    } catch (Exception $e) {
        echo $e;
    }

} else {
    $json = array("code" => 400, "msg" => "请输入合法的参数");
    print_r(json_encode($json));
}