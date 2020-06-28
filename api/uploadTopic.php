<?php
/**
 * Created by PhpStorm.
 * User: LRQ-Pro
 * Date: 2020/6/13
 * Time: 11:14
 */


header("Content-type:application/json;charset=utf-8");


require_once '../util/DB.php';


$destination = '../uploadfiles/background/';
$file = $_FILES['file']; // 获取上传的图片
$filename = $file['name'];

$sc_author = $_POST['author'];
$sc_content = $_POST['content'];
$sc_url = $_POST['url'];
$sc_userMark = $_POST['userMark'];
$sc_image_url = move_uploaded_file($file['tmp_name'], $destination . iconv("UTF-8", "gb2312", $filename));


$uploadUrl='/uploadfiles/background/'.$file['name'];


if (!empty($file)) {

    try {

        $db = new DB();
        $result = $db->upLoadToPic($sc_author, $sc_content,$sc_url , $uploadUrl, $sc_userMark);


        if ($result) {
            $json = array("code" => 200, 'msg' => 'Success', 'data' => '发表成功');
            echo json_encode($json);

        } else {
            $json = array("code" => 402, 'msg' => 'Failed', 'data' => '发表失败');
            echo json_encode($json);

        }

    } catch (Exception $e) {
        echo $e;
    }
} else {
    $json = array("code" => 400, "msg" => "请输入合法的参数");
    print_r(json_encode($json));
}


