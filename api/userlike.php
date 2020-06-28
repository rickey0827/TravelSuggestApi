<?php
/**
 * Created by PhpStorm.
 * User: LRQ-Pro
 * Date: 2020/5/29
 * Time: 14:11
 */

//查询用户喜欢视频接口

error_reporting(0);
header("Content-type:application/json;charset=utf-8");


require_once '../util/DB.php';

$userId = $_POST["id"];


if (!empty($userId)) {
    $db = new DB();
    $result = $db->getUserLikeList($userId);
    $videoList = array();
    if (sizeof($result) > 0) {
        for ($i = 0; $i < sizeof($result); $i++) {
            $array = $result[$i];
            $videoList [] = $array['videocode'];
        }

        $json = array("code" => 200, 'msg' => 'Success', 'data' => $videoList);
        echo json_encode($json);
    } else {
        $json = array("code" => 200, 'msg' => 'Success', 'data' => []);
        echo json_encode($json);
    }
} else {
    $json = array("code" => 400, "msg" => "请输入合法的参数");
    echo json_encode($json);
}