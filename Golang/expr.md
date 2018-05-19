
golang表达式计算

```
package main

import (
	"fmt"
	"go/token"
	"go/types"
)

func main() {
	expr := `(10000*0.15*100/100)+100-50` //`12345678 + 87654321`
	gotTv, err := types.Eval(token.NewFileSet(), nil, token.NoPos, expr)
	if err != nil {
		fmt.Printf("Eval(%q) failed: %s", expr, err)
		return
	}
	if gotTv.Type == nil {
		fmt.Printf("Eval(%q) got nil type but no error", expr)
		return
	}
	fmt.Println(gotTv.Type.String())
	if gotTv.Value != nil {
		fmt.Println(gotTv.Value.ExactString())
	}
}
// untyped float
// 1550
```

第三方包

eval expr命令

https://github.com/bediger4000/arithmetic-expressions

栈实现算术表达式

https://blog.csdn.net/xcl168/article/details/43410769

