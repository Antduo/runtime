//
//  ViewController.m
//  runtime_test
//
//  Created by Eve on 2017/12/26.
//  Copyright © 2017年 CSL. All rights reserved.
//

#import "ViewController.h"
#import "UILabel+Color.h"
#import "UIControl+Click.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    // 给Category 添加属性
    UILabel *lab = [[UILabel alloc]initWithFrame:CGRectMake(10, 40, 100, 40)];
    lab.ll_bgColor = [UIColor orangeColor];
    
    [self.view addSubview:lab];
    
    // 交换方法
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeSystem];
    btn.frame = CGRectMake(10, 100, 100, 40);
    [btn setTitle:@"点击" forState:UIControlStateNormal];
    [btn setBackgroundColor:[UIColor lightGrayColor]];
    [btn addTarget:self action:@selector(btnClick) forControlEvents:UIControlEventTouchUpInside];
    
    [self.view addSubview:btn];
    
}

- (void)btnClick
{
    NSLog(@"=======前台点击了=======");
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
