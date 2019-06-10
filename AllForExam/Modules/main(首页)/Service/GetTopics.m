//
//  GetTopics.m
//  AllForExam
//
//  Created by Emma on 2019/6/10.
//  Copyright © 2019 Emma. All rights reserved.
//

#import "GetTopics.h"

@implementation GetTopics

+(void)getDataSuccess:(void (^)(NSDictionary * _Nonnull))succes
{
    NSDictionary *dic = [[NSDictionary alloc] initWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"829c" ofType:@"plist"]];
    if (succes) {
        succes(dic);
    }
}

@end
