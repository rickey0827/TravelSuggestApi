<?php
/**
 * Created by PhpStorm.
 * User: LRQ-Pro
 * Date: 2020/5/30
 * Time: 10:41
 */

header("Content-type:application/json;charset=utf-8");

require_once '../util/DB.php';


//查询视频信息

$videoname = $_POST["videoname"];

if (!empty($videoname)) {
    $db = new DB();
    $result = $db->getVideoInfo($videoname);
    $json = array('code' => 200, 'msg' => 'Success', 'data' => $result);
    echo json_encode($json);
} else {
    $json = array("code" => 400, "msg" => "请输入合法的参数");
    echo json_encode($json);
}