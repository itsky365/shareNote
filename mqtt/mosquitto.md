Mosquitto 日常应用

一个完整的MQTT示例包括一个代理器，一个发布者和一个订阅者。测试分为以下几个步骤：

【1】启动服务mosquitto

【2】订阅者通过mosquitto_sub订阅指定主题的消息

【3】发布者通过mosquitto_pub发布指定主题的消息

【4】代理服务器把该主题的消息推送到订阅者

# 启动代理服务

mosquitto -c /etc/mosquitto/mosquitto.conf

mosquitto -c /etc/mosquitto/mosquitto.conf -v

mosquitto -c /etc/mosquitto/mosquitto.conf -d

mosquitto -v 打印更多的调试信息

# mosquitto_sub订阅指定主题

mosquitto_sub -v -t test

【-t】指定主题，此处为test

【-v】打印更多的调试信息

# mosquitto_pub发布指定主题

mosquitto_pub -t test -m hello

【-t】指定主题

【-m】指定消息内容

# GUI工具

MQTTFX 下载

http://mqttfx.jfx4ee.org/index.php/download

