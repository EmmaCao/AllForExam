//
//  TopicViewController.m
//  AllForExam
//
//  Created by Emma on 2019/6/10.
//  Copyright © 2019 Emma. All rights reserved.
//

#import "TopicViewController.h"
#import "QuizViewController.h"

@interface TopicViewController ()

@end

@implementation TopicViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self setupUI];
}

-(void)setupUI
{
    UITextView *txvTopic = [[UITextView alloc] initWithFrame:CGRectMake(10, 10, KScreenWidth-20, KScreenHeight-110)];
    txvTopic.layer.borderColor = KGrayColor.CGColor;
    txvTopic.layer.borderWidth = 1;
    [self.view addSubview:txvTopic];
    CGRect txvTopicFrame = txvTopic.frame;
    txvTopic.userInteractionEnabled = NO;
    txvTopic.text = @"1.什么是算术运算？什么是关系运算？什么是逻辑运算？\
答：算术运算时数学里基础的加减乘数求余数等；关系运算时求两个或者多个变量或者表达式之间的关系；逻辑运算时将多个变量或者表达式链接起来的逻辑关系。\
    2.C语言中如何表示“真”和“假”？系统如何判断一个量的“真”和“假”？\
    答：C语言中将数值为1作为真，为0作为假，系统将值为非0的变量或表达式作为真，否则假";
    
    UIButton *btnPrevious = [[UIButton alloc] initWithFrame:CGRectMake(10, CGRectGetMaxY(txvTopicFrame)+10, 100, 50)];
    [self.view addSubview:btnPrevious];
    CGRect btnPreviousFrame = btnPrevious.frame;
    [btnPrevious setTitle:@"上一页" forState:UIControlStateNormal];
    [btnPrevious setTitleColor:KBlueColor forState:UIControlStateNormal];
    
    UIButton *btnNext = [[UIButton alloc] initWithFrame:CGRectMake(CGRectGetMaxX(btnPreviousFrame)+50, btnPreviousFrame.origin.y, 100, 50)];
    [self.view addSubview:btnNext];
    [btnNext setTitle:@"下一页" forState:UIControlStateNormal];
    [btnNext setTitleColor:KBlueColor forState:UIControlStateNormal];
    [btnNext addTarget:self action:@selector(nextPage) forControlEvents:UIControlEventTouchUpInside];
}

-(void)nextPage
{
    QuizViewController *vc = [[QuizViewController alloc] init];
    [self.navigationController pushViewController:vc animated:YES];
}

@end
