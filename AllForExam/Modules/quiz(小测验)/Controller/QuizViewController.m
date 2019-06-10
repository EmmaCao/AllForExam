//
//  QuizViewController.m
//  AllForExam
//
//  Created by Emma on 2019/6/10.
//  Copyright © 2019 Emma. All rights reserved.
//

#import "QuizViewController.h"
#import "ResultViewController.h"

@interface QuizViewController ()<UITableViewDelegate, UITableViewDataSource>

@property (nonatomic, strong) NSString *question;
@property (nonatomic, strong) NSArray *options;

@end

@implementation QuizViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self setupUI];
}

-(void)setupUI
{
    self.question = @"下列合法的语言标识符是";
    
    UITableView *tableView = [[UITableView alloc] initWithFrame:CGRectMake(0, 0, KScreenWidth, KScreenHeight-110) style:UITableViewStylePlain];
    tableView.delegate = self;
    tableView.dataSource = self;
    tableView.tableFooterView = [UIView new];
    [self.view addSubview:tableView];
    self.tableView = tableView;
    CGRect tbFrame = tableView.frame;
    
    UIButton *btnSubmit = [[UIButton alloc] initWithFrame:CGRectMake(KScreenWidth/2-50, CGRectGetMaxY(tbFrame), 100, 50)];
    [self.view addSubview:btnSubmit];
    [btnSubmit setTitle:@"确定" forState:UIControlStateNormal];
    [btnSubmit setTitleColor:KBlueColor forState:UIControlStateNormal];
    [btnSubmit addTarget:self action:@selector(clickSubmitButton) forControlEvents:UIControlEventTouchUpInside];
}

-(void)clickSubmitButton
{
    BOOL flag = YES;
    if (flag) {
        ResultViewController *vc = [[ResultViewController alloc] init];
        [self.navigationController pushViewController:vc animated:YES];
    }
    else{
        self.question = @"你好";
        //    self.options = @[];
        [self.tableView reloadData];
    }
}

#pragma mark - UITableViewDataSource
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.options.count;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *cellID = @"cellID";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellID];
    if (!cell) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellID];
    }
    cell.textLabel.text = self.options[indexPath.row];
    return cell;
}

#pragma mark - UITableViewDelegate
-(CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section
{
    return 100;
}

-(UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section
{
    UIView *header = [[UIView alloc] initWithFrame:CGRectMake(0, 0, KScreenWidth, 100)];
    UILabel *lblQuestion = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, KScreenWidth, 40)];
    lblQuestion.numberOfLines = 0;
    lblQuestion.text = self.question;
    [header addSubview:lblQuestion];
    return header;
}

#pragma mark - laze load
-(NSArray *)options
{
    if (!_options) {
        _options = @[@"1 3above", @"2 Lots_1", @"3 $123b", @"4 sum(1)"];
    }
    return _options;
}

@end
