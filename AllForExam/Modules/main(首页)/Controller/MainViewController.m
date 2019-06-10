//
//  MainViewController.m
//  AllForExam
//
//  Created by Emma on 2019/6/10.
//  Copyright © 2019 Emma. All rights reserved.
//

#import "MainViewController.h"
#import "TopicViewController.h"
#import "TopicsLogic.h"

@interface MainViewController ()

@end

@implementation MainViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self setupUI];
    [self getData];
}

-(void)setupUI
{
    self.title = @"首页";
    
    UIButton *btnView = [[UIButton alloc] initWithFrame:CGRectMake(KScreenWidth/2-50, 100, 100, 30)];
    [self.view addSubview:btnView];
    [btnView setTitle:@"查看" forState:UIControlStateNormal];
    [btnView setTitleColor:KBlueColor forState:UIControlStateNormal];
    [btnView addTarget:self action:@selector(clickViewButton) forControlEvents:UIControlEventTouchUpInside];
    
    CGRect btnViewFrame = btnView.frame;
    UIButton *btnAdd = [[UIButton alloc] initWithFrame:CGRectMake(btnViewFrame.origin.x, CGRectGetMaxY(btnViewFrame)+50, 100, 30)];
    [self.view addSubview:btnAdd];
    [btnAdd setTitle:@"录入" forState:UIControlStateNormal];
    [btnAdd setTitleColor:KBlueColor forState:UIControlStateNormal];
}

-(void)clickViewButton
{
    TopicViewController *vc = [[TopicViewController alloc] init];
    [self.navigationController pushViewController:vc animated:YES];
}

-(void)getData
{
    TopicsLogic *logic = [[TopicsLogic alloc] init];
    [logic loadDataSuccess:^(NSDictionary * _Nonnull resDic) {
        
    }];
}

@end
