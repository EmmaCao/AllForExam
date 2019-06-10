//
//  ResultTableViewCell.m
//  AllForExam
//
//  Created by Emma on 2019/6/10.
//  Copyright © 2019 Emma. All rights reserved.
//

#import "ResultTableViewCell.h"

@implementation ResultTableViewCell

//1. 初始化子视图
-(instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        
        UILabel *lblQuestion = [[UILabel alloc] init];
        [self.contentView addSubview:lblQuestion];
        
        UIButton *btnUser = [[UIButton alloc] init];
        [self.contentView addSubview:btnUser];
        
        UIButton *btnRight =[[UIButton alloc] init];
        [self.contentView addSubview:btnRight];
    }
    return self;
}

//2. 布局子视图，此时控件中已经有值
-(void)layoutSubviews
{
    [super layoutSubviews];
}

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
