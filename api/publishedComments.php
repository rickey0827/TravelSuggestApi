<?php
/**
 * Created by PhpStorm.
 * User: LRQ-Pro
 * Date: 2020/6/9
 * Time: 15:35
 */


header("Content-type:application/json;charset=utf-8");

require_once '../util/DB.php';

$sc_user = $_POST['sc_user'];
$sc_videoname = $_POST['sc_videoname'];
$sc_time = $_POST['sc_time'];
$sc_content = $_POST['sc_content'];
$sc_url = $_POST['sc_url'];

if (!empty($sc_user) && !empty($sc_videoname) && !empty($sc_time) && !empty($sc_content)  && !empty($sc_url)) {

    try {
        $db = new DB();
        $result = $db->comments($sc_user, $sc_videoname, $sc_time, $sc_content,$sc_url);

        $json = array("code" => 200, 'msg' => 'Success', 'data' => $result);
        echo json_encode($json);
    } catch (Exception $e) {
        echo $e;
    }


} else {
    $json = array("code" => 400, "msg" => "请输入合法的参数");
    print_r(json_encode($json));
}