<?php
/**
 * Created by PhpStorm.
 * User: LRQ-Pro
 * Date: 2020/5/25
 * Time: 13:41
 */

class user
{

    var $username;
    var $password;

    /**
     * user constructor.
     * @param 用户名
     * @param 密码
     */
    public function __construct($username, $password)
    {
        $this->username = $username;
        $this->password = $password;
    }

    /**
     * @return mixed
     */
    public function getUsername()
    {
        return $this->username;
    }

    /**
     * @param mixed $username
     */
    public function setUsername($username)
    {
        $this->username = $username;
    }

    /**
     * @return mixed
     */
    public function getPassword()
    {
        return $this->password;
    }

    /**
     * @param mixed $password
     */
    public function setPassword($password)
    {
        $this->password = $password;
    }




}