# runtime
runtime测试 给类别添加属性  交换方法

给Category 添加属性
```
    UILabel *lab = [[UILabel alloc]initWithFrame:CGRectMake(10, 40, 100, 40)];
    lab.ll_bgColor = [UIColor orangeColor];
    
    [self.view addSubview:lab];
```

方法交换
```
+(void)load{

    Method sys_Method = class_getInstanceMethod(self, @selector(sendAction:to:forEvent:));
    Method add_Method = class_getInstanceMethod(self, @selector(ll_sendAction:to:forEvent:));
    method_exchangeImplementations(sys_Method, add_Method);
}

-(void)ll_sendAction:(SEL)action to:(id)target forEvent:(UIEvent *)event
{
    NSLog(@"=======后台点击了======");
    
    [self ll_sendAction:action to:target forEvent:event];
}
```
[参考](https://github.com/newyjp/JPButtonCategory)
