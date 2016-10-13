# QoS服务质量

QoS，全称为 Quality of Service，即服务质量。在 MQTT 协议中，QoS 可分为以下三个等级：

QoS = 0 : At most once. Fire and Forget. （至多一次，发完即删，不保证送达。）

QoS = 1 : At least once. Acknowledged delivery. （保证至少送达一次。）

QoS = 2 : Exactly once. Assured delivery. （保证送达，且仅送达一次。）

## QoS = 0

QoS 为 0 时，消息发送后，无论服务端有没有收到这条消息，都不会重发，也不会等任何回应。 这种即发即删的传输方式无疑是最高效的，网络通信的压力也比较小。


## QoS = 1

QoS 为 1 时，服务器收到消息后会回应一个 PUBACK。 如果发送方或者通信链路出了问题，或是在既定的时间内没收到 PUBACK 的话， 发送方会把 DUP 置位，并重发消息。服务器收到重发来的消息，会重新发布给订阅者，并再次回复 PUBACK 给发送方。 因而消息至少送达一次。 在 MQTT 协议中，SUBSCRIBE 和 UNSUBSCRIBE 消息的 QoS 都为 1 级。

QoS 为 1 时，消息会带 Message ID。

## QoS = 2

QoS 2 级是 QoS 1 级的升级版，也是消息传输的最高等级。 它不仅能保证消息送达，且保证只送达一次。

与 QoS 1 级一样，QoS 2 级的消息也带有 Message ID。

服务端接收到消息后，有两种处理流程，这两种流程效果相同。
