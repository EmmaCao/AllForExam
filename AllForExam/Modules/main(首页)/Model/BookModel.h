//
//  BookModel.h
//  AllForExam
//
//  Created by Emma on 2019/6/10.
//  Copyright © 2019 Emma. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "TopicModel.h"

NS_ASSUME_NONNULL_BEGIN

@interface BookModel : NSObject

/** 书名 */
@property (nonatomic, strong) NSString *bookName;
/** 主题 */
@property (nonatomic, strong) NSArray<TopicModel *> *topics;

@end

NS_ASSUME_NONNULL_END
