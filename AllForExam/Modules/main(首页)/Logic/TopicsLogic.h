//
//  TopicsLogic.h
//  AllForExam
//
//  Created by Emma on 2019/6/10.
//  Copyright © 2019 Emma. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface TopicsLogic : NSObject

-(void)loadDataSuccess:(void (^)(NSDictionary *resDic))succes;

@end

NS_ASSUME_NONNULL_END
