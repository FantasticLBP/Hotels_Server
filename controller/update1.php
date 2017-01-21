<?php
//设置页面内容是html编码格式是utf-8
header("Content-Type: text/html;charset=utf-8");
require_once '../swiftmailer-master/lib/swift_required.php';
require_once '../model/PdoMySQL.class.php';
require_once '../model/config.php';

require_once '../model/pwd.php';
try{
        $email="1611274445@qq.com";
        //配置邮件服务器，得到传输对象
        $emailPassword='lbpplayboy';
        $transport=Swift_SmtpTransport::newInstance('smtp.qq.com',25);
        //设置登陆帐号和密码
        $transport->setUsername('704568245@qq.com');
        $transport->setPassword($emailPassword);
        //得到发送邮件对象Swift_Mailer对象
        $mailer=Swift_Mailer::newInstance($transport);
        //得到邮件信息对象
        $message=Swift_Message::newInstance();
        //设置管理员的信息
        $message->setFrom(array('704568245@qq.com'=>'动物管理系统'));
        //将邮件发给谁
        $message->setTo(array($email=>'动物管理系统用户'));
        //设置邮件主题
        $message->setSubject('密码找回邮件');
        $str=<<<EOF
		亲爱的用户{$username}您好,您的账户已成功激活，感谢您使用本网站。<br/>
EOF;
        $message->setBody("{$str}",'text/html','utf-8');
        try{
            if($mailer->send($message)){
                echo'<script language="JavaScript">window.location.href="form-wizard.php";</script>';

            }else{
                echo '邮件发送失败';
                echo'<script language="JavaScript">window.location.href="form-wizard.php";</script>';
            }
        }catch(Swift_ConnectionException $e){
            echo '邮件发送错误'.$e->getMessage();
        }
    }
    catch(PDOException $e){
        echo $e->getMessage();
    }



