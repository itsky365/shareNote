## Contract

合约声明
```
contract ContractName {
  // 状态变量
  // 事件
  // 函数
  // code
}
```

* 构造函数

构造函数（constructor）来初始化合约对象。构造函数就是方法名和合约名字相同的函数，创建合约时会调用构造函数对状态变量进行数据初始化操作(构造方法只能声明一个)

```
function ContractName() {
  // code
}
```

* 析构函数

selfdestruct(address)

如果一个合约被销毁，那么当前地址指向的是一个僵尸对象，这个僵尸对象调用任何方法都会抛出异常。你想销毁合约，需要调用selfdestruct(address)才能将其进行销毁

