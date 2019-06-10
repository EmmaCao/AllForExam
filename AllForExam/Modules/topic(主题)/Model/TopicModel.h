//
//  TopicModel.h
//  AllForExam
//
//  Created by Emma on 2019/6/10.
//  Copyright © 2019 Emma. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "QuestionModel.h"

NS_ASSUME_NONNULL_BEGIN

@interface TopicModel : NSObject

/** 主题，通常为某知识点的一小段文字讲解 */
@property (nonatomic, strong) NSString *topic;
/** 针对该主题的强化训练题目 */
@property (nonatomic, strong) NSArray<QuestionModel *> *questions;

@end

NS_ASSUME_NONNULL_END
