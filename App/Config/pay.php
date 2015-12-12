<?php
//支付配置文件

const PAY_SERVICE_CODE = 'FC0028'; //接口名称,发送支付申请(选银行)

const PAY_VERSION = "1.0"; //支付版本



const PAY_SERVICE_TYPE = '03'; #接口类型

const PAY_SIGNTYPE = 'md5'; //签名类型

const PAY_SYSPLATCODE = 'V'; //平台编码

const PAY_CHARSET = 'utf-8'; //编码

const PAY_NOTICE_URL = '/charge/notice'; //通知地址

const PAY_REBACK_URL = '/charge/reback'; //回调地址


const PAY_LOG_FILE = '/tmp/video_charge_callback.log'; //写日志的文件


const PAY_REPAY_URL = '/charge/callFailOrder'; //补钱地址

const PAY_FIND_CODE = 'FC0029'; //接口名称,发送查询申请

const ACTIVITY_OPEN = '1'; //配置活动开启

const ACTIVITY_NAME = 'firstcharge'; //配置活动

const ACTIVITY_URL = '/activitySend'; //活动接口地址

//支付渠道
const PAY_CHANNEL =[
    			"xs"=>"NP", //第一个新生，
      			"hx"=>"IPS", //第二个环迅
      			"sf"=>"SF", //第三个顺峰
      			];

//首页存放userinfo的数据的cookie键

const SEND_GIFT_EXPIRE = "2014-01-01/2015-03-01"; //VF_USER_INDEX = 'vf_user_index'

const INVITATION_STATUS = '0'; //用户推广链接活动开关,1=开,0=关

const REG_SEND_STATUS = '1'; //用户注册送礼

const FIRST_RECHARGE_STATUS = '1'; //首充活动开关

const LOTTRY_STATUS = '1'; //赠送抽奖机会开关

const LOGIN_SEND_POINT = '100'; //登录送的钱数
const SERVICE_ONLINE_TYPE = ["登陆注册类","充值提款类","优惠活动类","客服服务类","投诉意见类"];

const REGISTER_SEND_POINT = '500'; //注册送的钱数

const WEB_SECRET_KEY = 'c5ff645187eb7245d43178f20607920e456'; //记录密码登录的密钥key,VideoBaseController要保持一致
