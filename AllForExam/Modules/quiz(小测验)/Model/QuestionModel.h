//
//  QuestionModel.h
//  AllForExam
//
//  Created by Emma on 2019/6/10.
//  Copyright © 2019 Emma. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface QuestionModel : NSObject

/** 问题 */
@property (nonatomic, strong) NSString *question;
/** 选项，一般key为A、B、C、D等或1、2、3、4等，value为对应的选项内容 */
@property (nonatomic, strong) NSDictionary *options;
/** 正确选项 */
@property (nonatomic, strong) NSString *answer;
/** 解析 */
@property (nonatomic, strong) NSString *analysis;

@end

NS_ASSUME_NONNULL_END
