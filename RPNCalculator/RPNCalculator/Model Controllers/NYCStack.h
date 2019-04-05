//
//  NYCStack.h
//  RPNCalculator
//
//  Created by Nathanael Youngren on 4/4/19.
//  Copyright © 2019 Nathanael Youngren. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface NYCStack : NSObject

- (void)push:(id)object;
- (id)pop;
- (id)peek;

- (instancetype)initWithArray:(NSArray *)array;

@end

NS_ASSUME_NONNULL_END
