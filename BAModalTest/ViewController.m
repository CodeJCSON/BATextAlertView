//
//  ViewController.m
//  BAModalTest
//
//  Created by 博爱 on 16/3/10.
//  Copyright © 2016年 博爱之家. All rights reserved.
//

#import "ViewController.h"
#import "BATwoViewController.h"
#import <AwAlertViewlib/AwAlertViewlib.h>

#define KFontSize [UIFont systemFontOfSize:15]

@interface ViewController ()
{
    UITextField *textField1;
    UITextField *textField2;
    UILabel *testLabel;
}


- (IBAction)clickButton:(UIButton *)sender;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.view.backgroundColor = [UIColor whiteColor];
    
    testLabel = [UILabel new];
    testLabel.frame = CGRectMake(20, 50, 200, 100);
    testLabel.numberOfLines = 0;
    
    [self.view addSubview:testLabel];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)clickButton:(UIButton *)sender {
    
//    BATwoViewController *twovc = [[BATwoViewController alloc] init];
//    
//    UINavigationController *navi = [[UINavigationController alloc] initWithRootViewController:twovc];
//    [self presentViewController:navi animated:YES completion:^{
//        NSLog(@"弹出一个模态窗口");
//    }];
    
    UIView *view=[[UIView alloc]initWithFrame:CGRectMake(0, 0, 200, 150)];
    view.backgroundColor=[UIColor whiteColor];
    view.layer.masksToBounds = YES;
    view.layer.cornerRadius = 5.0f;
    
    UILabel *label1 = [[UILabel alloc] initWithFrame:CGRectMake(10, 10, 80, 30)];
    label1.text = @"打赏金额";
    label1.font = KFontSize;
    
    textField1 = [[UITextField alloc] initWithFrame:CGRectMake(CGRectGetMaxX(label1.frame)+5, CGRectGetMinY(label1.frame), 100, CGRectGetHeight(label1.frame))];
    textField1.borderStyle = UITextBorderStyleRoundedRect;
    
    UILabel *label2 = [[UILabel alloc] initWithFrame:CGRectMake(CGRectGetMinX(label1.frame), CGRectGetMaxY(label1.frame) + 5, 80, 30)];
    label2.text = @"资金密码";
    label2.font = KFontSize;

    textField2 = [[UITextField alloc] initWithFrame:CGRectMake(CGRectGetMaxX(label2.frame)+5, CGRectGetMinY(label2.frame), 100, CGRectGetHeight(label2.frame))];
    textField2.borderStyle = UITextBorderStyleRoundedRect;


    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    button.frame = CGRectMake(CGRectGetWidth(view.frame) - 80, CGRectGetMaxY(label2.frame) + 10, 60, 30);
    [button setTitle:@"确定" forState:UIControlStateNormal];
    [button addTarget:self action:@selector(clickSure:) forControlEvents:UIControlEventTouchUpInside];
    button.backgroundColor = [UIColor greenColor];
    
    [view addSubview:label1];
    [view addSubview:textField1];
    [view addSubview:label2];
    [view addSubview:textField2];
    [view addSubview:button];

    
    AwAlertView *alertView=[[AwAlertView alloc]initWithContentView:view];
    alertView.isUseHidden=YES;
    [alertView show];
    alertView.closeImage=[UIImage imageNamed:@"AwAlertViewlib.bundle/btn_navigation_close"];
    alertView.closeImage_hl=[UIImage imageNamed:@"AwAlertViewlib.bundle/btn_navigation_close_hl"];
}

- (IBAction)clickSure:(UIButton *)sender
{
    NSLog(@"点击了button !金额：%@, 密码：%@", textField1.text, textField2.text);
    testLabel.text = [NSString stringWithFormat:@"点击了button !金额：%@, 密码：%@", textField1.text, textField2.text];
}



@end
