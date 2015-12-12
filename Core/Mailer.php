<?php
namespace Core;


/**
 * Created by PhpStorm.
 * User: D.C
 * Date: 15-3-24
 * Time: 下午3:18
 */
require ('PHPMailer/class.phpmailer.php');
require ('PHPMailer/class.smtp.php');

/**
 * Class Mailer
 * @package Video\ProjectBundle\Service
 * @author D.C
 * @update 2015-03-25
 * @description 邮件发送服务方式注入
 */
class Mailer {

    private $mailer_host;

    private $mailer_user;

    private $mailer_password;

    private $mailer_transport;


    /**
     * @param $mailer_host
     * @param $mailer_user
     * @param $mailer_password
     * @param $mailer_transport
     */
    public function __construct($mailer_host, $mailer_user, $mailer_password, $mailer_transport){
        $this->mailer_host = $mailer_host;
        $this->mailer_user = $mailer_user;
        $this->mailer_password = $mailer_password;
        $this->mailer_transport = $mailer_transport;
    }


    /**
     * @param array $to
     * @param array $from
     * @param null $subject
     * @param null $content
     * @return bool
     */
    public function post($to = array(), $from = array(), $subject = null, $content = null ){
	$mail			  = new \PHPMailer();
	$mail->IsSMTP();
	$mail->CharSet    = 'utf-8';
	$mail->Encoding   = 'base64';
	$mail->SMTPDebug  = false;
	$mail->Timeout    = 30;
	$mail->SMTPAuth   = false;
	$mail->SMTPSecure = '';
	$mail->Host       = $this->mailer_host;
	$mail->Port       = '25';
	$mail->Username   = $this->mailer_user;
	$mail->Password   = $this->mailer_password;
	$mail->SetFrom($from);
	$mail->Subject    = $subject;
	$mail->WordWrap   = 50;
	$mail->MsgHTML($content);
	$mail->AddAddress($to);
	return $mail->Send();

    }


}



