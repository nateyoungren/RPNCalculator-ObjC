//
//  NYCCalculator.h
//  RPNCalculator
//
//  Created by Nathanael Youngren on 4/4/19.
//  Copyright © 2019 Nathanael Youngren. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface NYCCalculator : NSObject

typedef NS_ENUM(int, Operator) {
    add, subtract, multiply, divide
};

- (void)pushNumber:(double)value;
- (void)applyOperator:(Operator)operator;
- (void)clear;

@property (nonatomic) double topValue;

@end

NS_ASSUME_NONNULL_END
