# QoS服务质量

QoS，全称为 Quality of Service，即服务质量。在 MQTT 协议中，QoS 可分为以下三个等级：

QoS = 0 : At most once. Fire and Forget. （至多一次，发完即删，不保证送达。）

QoS = 1 : At least once. Acknowledged delivery. （保证至少送达一次。）

QoS = 2 : Exactly once. Assured delivery. （保证送达，且仅送达一次。）
