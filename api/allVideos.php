<?php
/**
 * Created by PhpStorm.
 * User: LRQ-Pro
 * Date: 2020/6/8
 * Time: 22:41
 */

//获取所有视频信息

error_reporting(0);

header("Content-type:application/json;charset=utf-8");


require_once '../util/DB.php';

$db = new DB();
$result = $db->getAllVideos();
$json = array("code" => 200, 'msg' => 'Success', 'data' => $result);
echo json_encode($json);