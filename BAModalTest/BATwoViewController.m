//
//  BATwoViewController.m
//  BAModalTest
//
//  Created by 博爱 on 16/3/10.
//  Copyright © 2016年 博爱之家. All rights reserved.
//

#import "BATwoViewController.h"

@interface BATwoViewController ()

@end

@implementation BATwoViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.view.backgroundColor = [UIColor greenColor];
    
    // 给导航条添加一个返回按钮
    self.navigationItem.leftBarButtonItem=[[UIBarButtonItem alloc]initWithTitle:@"返回" style:UIBarButtonItemStylePlain target:self action:@selector(change)];
}

-(void)change
{
    //编写点击返回按钮的点击事件
    //点击返回按钮，移除当前模态窗口
    //    [self.navigationController dismissViewControllerAnimated:YES completion:^{
    //        NSLog(@"移除模态窗口");
    //    }];
    
    // 如果一个控制器是以模态的形式展现出来的, 可以调用该控制器以及该控制器的子控制器让让控制器消失
    [self dismissViewControllerAnimated:YES completion:^{
        NSLog(@"移除");
    }];
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
