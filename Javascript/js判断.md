# 双感叹号判断

当变量为null或undefined时，通过双感叹号转换为布尔类型，快速判断变量。


	var a = null; !!a; //=> false
	var b; !!b; //=>false


# Object是否为空

判断定义的Object对象是否为空 {} / new Object()

	var obj = {};
	function objectIsEmpty(obj) {
		var name;
		for (name in obj) {
			return ture;
		}
		return false;
	}
	objectIsEmpty(obj);
	//=> true;
