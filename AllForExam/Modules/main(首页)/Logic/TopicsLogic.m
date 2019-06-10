//
//  TopicsLogic.m
//  AllForExam
//
//  Created by Emma on 2019/6/10.
//  Copyright © 2019 Emma. All rights reserved.
//

#import "TopicsLogic.h"
#import "GetTopics.h"
#import "BookModel.h"

@implementation TopicsLogic

-(void)loadDataSuccess:(void (^)(NSDictionary * _Nonnull))succes
{
    [GetTopics getDataSuccess:^(NSDictionary * _Nonnull resDic) {
        BookModel *model = [BookModel mj_objectWithKeyValues:resDic];
        NSLog(@"test");
    }];
}

@end
