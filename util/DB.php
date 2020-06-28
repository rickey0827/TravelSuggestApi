<?php
/**
 * Created by PhpStorm.
 * User: LRQ-Pro
 * Date: 2020/5/25
 * Time: 14:55
 */


class DB
{
    var $_host = 'localhost';
    var $_user = 'root';
    var $_pass = '123456';
    var $_port = '63343';
    var $_dbName = 'travel db';
    var $link;

    /**
     * DB constructor.
     */
    public function __construct()
    {

    }

    /**
     * 用户存在查询接口
     * @param $userName
     * @return bool
     * @throws Exception
     */
    function queryUserIsExist($userName)
    {

        $link = mysqli_connect($this->_host, $this->_user, $this->_pass, $this->_dbName);
        mysqli_set_charset($link, "utf-8");
        $result = mysqli_query($link, "select * from userinfo where _username='$userName'");
        $data = mysqli_fetch_all($result, MYSQLI_ASSOC);
        $size = count($data);
        if ($size <= 0) {
            return true; //没有注册
        } else {
            return false; //账户已经注册
        }
    }

    /**
     * 用户注册接口
     * @param $userName
     * @param $password
     * @return bool|void
     * @throws Exception
     */
    function UserRegister($userName, $password, $_phone, $_email)
    {
        $link = mysqli_connect($this->_host, $this->_user, $this->_pass, $this->_dbName);
        mysqli_set_charset($link, "utf-8");

        $str = $this->getRandStr();

        if (mysqli_query($link, "INSERT INTO userinfo(_username, _password, _userkey,_phone,_email) VALUES ('$userName','$password','$str','$_phone','$_email')")) {
            return true;
        } else {
            return false;
        }

    }


    /**
     * 用户登陆接口
     * @param $username
     * @param $password
     * @return bool
     */
    function UserLogin($username, $password)
    {
        $link = mysqli_connect($this->_host, $this->_user, $this->_pass, $this->_dbName);
        mysqli_set_charset($link, "utf-8");

        $result = mysqli_query($link, "select * from userinfo where _username='$username' and _password='$password'");
        $data = mysqli_fetch_all($result, MYSQLI_ASSOC);
        $size = count($data);
        if ($size > 0) {
            return true; //登陆成功
        } else {
            return false; //登陆失败
        }

    }


    /**
     * 用户email登陆接口
     * @param $email
     * @param $password
     * @return bool
     */
    function EmailLogin($email, $password)
    {
        $link = mysqli_connect($this->_host, $this->_user, $this->_pass, $this->_dbName);
        mysqli_set_charset($link, "utf-8");

        $result = mysqli_query($link, "select * from userinfo where _email='$email' and _password='$password'");
        $data = mysqli_fetch_all($result, MYSQLI_ASSOC);
        $size = count($data);
        if ($size > 0) {
            return true; //登陆成功
        } else {
            return false; //登陆失败
        }

    }


    /**
     * 用户修改密码
     * @param $username
     * @param $oldPass
     * @param $newPass
     */
    function updatePsd($username, $oldPass, $newPass)
    {

    }


    function getRandStr()
    {
        $str = 'abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789';
        $len = strlen($str) - 1;
        $randStr = '';
        $length = 15;
        for ($i = 0; $i < $length; $i++) {
            $num = mt_rand(0, $len);
            $randStr .= $str[$num];
        }
        return $randStr;
    }


    /**
     * 返回用户喜欢的视频
     * @param $userId
     * @return array|null
     */
    function getUserLikeList($userId)
    {
        $link = mysqli_connect($this->_host, $this->_user, $this->_pass, $this->_dbName);
        mysqli_set_charset($link, "utf-8");

        $result = mysqli_query($link, "select videocode from userlike where id='$userId'");
        $data = mysqli_fetch_all($result, MYSQLI_ASSOC);
        return $data;
    }


    /**
     * 返回某条视频的信息
     * @param $videoName
     * @return array|null
     */
    function getVideoInfo($videoName)
    {
        $link = mysqli_connect($this->_host, $this->_user, $this->_pass, $this->_dbName);
        mysqli_set_charset($link, "utf-8");
        $result = mysqli_query($link, "select * from sc_videos where sc_videoname='$videoName'");
        $comment = mysqli_query($link, "select * from sc_comment where sc_videoname='$videoName'");
        $data ['works_info'] = mysqli_fetch_all($result, MYSQLI_ASSOC);
        $childData = mysqli_fetch_all($comment, MYSQLI_ASSOC);
        $data['comments'] = $childData;
        return $data;
    }


    /**
     * 获取用户信息
     * @param $username
     * @return array|null
     */
    function getUserInfo($username)
    {
        $link = mysqli_connect($this->_host, $this->_user, $this->_pass, $this->_dbName);
        mysqli_set_charset($link, "utf-8");
        $result = mysqli_query($link, "select * from userinfo where _username='$username'");
        $data = mysqli_fetch_all($result, MYSQLI_ASSOC);
        return $data;
    }

    /**
     * 获取所有视频信息
     * @return array|null
     */
    function getAllVideos()
    {
        $link = mysqli_connect($this->_host, $this->_user, $this->_pass, $this->_dbName);
        mysqli_set_charset($link, "utf-8");
        $result = mysqli_query($link, "select * from sc_videos");
        $data = mysqli_fetch_all($result, MYSQLI_ASSOC);
        return $data;
    }

    /**
     * 用户发表评论 关于视频
     * @param $sc_user
     * @param $sc_videoname
     * @param $sc_time
     * @param $sc_content
     * @param $sc_url
     * @return bool
     */
    function comments($sc_user, $sc_videoname, $sc_time, $sc_content, $sc_url)
    {

        $link = mysqli_connect($this->_host, $this->_user, $this->_pass, $this->_dbName);
        mysqli_set_charset($link, "utf-8");


        if (mysqli_query($link, "INSERT INTO sc_comment(sc_user, sc_videoname,sc_time,sc_content, sc_likecount,sc_url) VALUES ('$sc_user','$sc_videoname',date('$sc_time'),'$sc_content',0,'$sc_url')")) {
            return true;
        } else {
            return false;
        }
    }

    /**
     * 获取话题的所有消息
     * @param $key
     * @return array|null
     */
    function getAllToPic($key)
    {
        if (!empty($key)) {
            $link = mysqli_connect($this->_host, $this->_user, $this->_pass, $this->_dbName);
            mysqli_set_charset($link, "utf-8");

            $result = mysqli_query($link, "select * from sc_topic ");
            $data = mysqli_fetch_all($result, MYSQLI_ASSOC);
            return $data;
        }
    }


    /**
     * 用户发表论题
     * @param $sc_author
     * @param $sc_content
     * @param $sc_url
     * @param $sc_image_url
     * @param $sc_userMark
     * @return bool
     */

    function upLoadToPic($sc_author, $sc_content, $sc_url, $sc_image_url, $sc_userMark)
    {

        $link = mysqli_connect($this->_host, $this->_user, $this->_pass, $this->_dbName);
        mysqli_set_charset($link, "utf-8");


        if (mysqli_query($link, "INSERT INTO sc_topic(sc_author, sc_content, sc_url,sc_image_url,sc_usermark) VALUES ('$sc_author','$sc_content','$sc_url','$sc_image_url','$sc_userMark')")) {
            return true;
        } else {
            return false;
        }

    }


}



