//
//  AnswerTableViewController.m
//  AllForExam
//
//  Created by Emma on 2019/6/10.
//  Copyright © 2019 Emma. All rights reserved.
//

#import "AnswerTableViewController.h"

@interface AnswerTableViewController ()

@property (nonatomic, strong) NSArray *options;

@end

@implementation AnswerTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
}

#pragma mark - Table view data source

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 4;
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

#pragma mark - Table view delegate

-(CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section
{
    return 100;
}

-(CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section
{
    return 100;
}

-(UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section
{
    UIView *header = [[UIView alloc] initWithFrame:CGRectMake(0, 0, KScreenWidth, 100)];
    UILabel *lblQuestion = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, KScreenWidth, 40)];
    lblQuestion.numberOfLines = 0;
    lblQuestion.text = @"我是题目";
    [header addSubview:lblQuestion];
    return header;
}

-(UIView *)tableView:(UITableView *)tableView viewForFooterInSection:(NSInteger)section
{
    UIView *header = [[UIView alloc] initWithFrame:CGRectMake(0, 0, KScreenWidth, 100)];
    UILabel *lblQuestion = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, KScreenWidth, 40)];
    lblQuestion.numberOfLines = 0;
    lblQuestion.text = @"我是解析";
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
