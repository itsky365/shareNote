# Lua不同点(特色)

## 数组下标从1开始

在初始化一个数组的时候，若不显式地用键值对方式赋值，则会默认用数字作为下标，从1开始。由于在lua内部实际采用哈希表和数组分别保存键值对、普通值，所以不推荐混合使用这两种赋值方式。

    local color={first="red", "blue", third="green", "yellow"} 
    print(color["first"])                 --> output: red
    print(color[1])                       --> output: blue
    print(color["third"])                 --> output: green
    print(color[2])                       --> output: yellow
    print(color[3])                       --> output: nil
    
## 局部变量

Lua中的局部变量要用local关键字来显示定义，不用local显示定义的变量就是全局变量。推荐使用local定义变量

局部变量的生命周期是有限的，它的作用域仅限于声明它的块（block）

使用局部变量的一个好处是，局部变量可以避免将一些无用的名称引入全局环境，避免全局环境的污染。另外，访问局部变量比访问全局变量更快。同时，由于局部变量出了作用域之后生命周期结束，这样可以被垃圾回收器及时释放。

## 判断数组大小(长度)

lua数组中允许nil值的存在，但是数组默认结束标志却是nil。

一定不要使用#操作符来计算包含nil的数组长度，这是一个未定义的操作，不一定报错，但不能保证结果如你所想。如果你要删除一个数组中的元素，请使用remove函数，而不是用nil赋值。

## 非空判断

引用了一个没有赋值的变量，这时它的值默认为nil。对一个nil进行索引的话，会导致异常

nil 和 false为假，其他值全为真。 0和空字符串也为真。

判断一个table是否为{},不能采用#table == 0的方式来判断。可以用下面这样的方法来判断
    
    function isTableEmpty(t)
        if t == nil or _G.next(t) == nil then
            return true
        else
            return false
        end
    end

## 虚变量

lua 提供了一个虚变量(dummy variable)，以单个下划线（“_”）来命名，用它来丢弃不需要的数值，仅仅起到占位的作用。

## 函数在调用代码前定义

Lua里面的函数必须放在调用的代码之前，下面的代码是一个常见的错误。