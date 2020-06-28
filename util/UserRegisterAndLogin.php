<?php
/**
 * Created by PhpStorm.
 * User: LRQ-Pro
 * Date: 2020/5/25
 * Time: 14:39
 */

class UserRegisterAndLogin

{

    var $isExist = false;
    var $json = '';

    /**
     * 用户查询
     * @param $username
     * @param $password
     * @param $_phone
     * @param $_email
     * @return false|string
     * @throws Exception
     */
    function findUserIsExist($username, $password,$_phone,$_email)
    {

        $db = new DB();
        $result = $db->queryUserIsExist($username);

        if ($result) {
            $result = $db->UserRegister($username, $password,$_phone,$_email);
            if ($result) {
                $json = array("code" => 200, "msg" => "注册成功");
                print_r(json_encode($json));
                return json_encode($json, "utf8");
            } else {
                $json = array("code" => 402, "msg" => "注册失败");
                print_r(json_encode($json));
                return json_encode($json, "utf8");
            }
        } else {
            $json = array("code" => 400, "msg" => "用户已存在");
            print_r(json_encode($json));
            return json_encode($json, "utf8");
        }

    }


        /**
         * 用户登陆
     * @param $username
     * @param $password
     * @return false|string
     * @throws Exception
     */
    function UserLogin($username, $password)
    {
        $db = new DB();
        $db->UserLogin($username, $password);
        if ($db->UserLogin($username, $password)) {
            echo json_encode(array(
                "code" => 200,
                "msg" => "登陆成功"
            ));
            return json_encode(array(
                "code" => 200,
                "msg" => "登陆成功"
            ));
        } else {
            echo json_encode(array(
                "code" => 400,
                "msg" => "登陆失败"
            ));
            return json_encode(array(
                "code" => 400,
                "msg" => "登陆失败"
            ));
        }
    }


    /**用户登陆email
     * @param $email
     * @param $password
     * @return false|string
     */

    function EmailLogin($email, $password)
    {
        $db = new DB();
        $db->EmailLogin($email, $password);
        if ($db->EmailLogin($email, $password)) {
            echo json_encode(array(
                "code" => 200,
                "msg" => "登陆成功"
            ));
            return json_encode(array(
                "code" => 200,
                "msg" => "登陆成功"
            ));
        } else {
            echo json_encode(array(
                "code" => 400,
                "msg" => "登陆失败"
            ));
            return json_encode(array(
                "code" => 400,
                "msg" => "登陆失败"
            ));
        }
    }


    /**
     * 用户注册
     * @param $username
     * @param $password
     * @return false|string
     * @throws Exception
     */
    function UserRegister($username, $password, $_phone, $_email)
    {
        $db = new DB();
        if ($db->UserRegister($username, $password, $_phone, $_email)) {
            return json_encode(array(
                "code" => 200,
                "msg" => Strings::$RegisterSuccess
            ));
        } else {
            return json_encode(array(
                "code" => 400,
                "msg" => Strings::$RegisterFailed
            ));
        }

    }


}