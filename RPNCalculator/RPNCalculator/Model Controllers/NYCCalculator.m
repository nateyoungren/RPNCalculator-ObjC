//
//  NYCCalculator.m
//  RPNCalculator
//
//  Created by Nathanael Youngren on 4/4/19.
//  Copyright © 2019 Nathanael Youngren. All rights reserved.
//

#import "NYCCalculator.h"
#import "NYCStack.h"

@interface NYCCalculator ()

@property (nonatomic) NYCStack *stack;

@end

@implementation NYCCalculator

- (void)applyOperator:(Operator)operator {
    double element1 = [[[self stack] pop] doubleValue];
    double element2 = [[[self stack] pop] doubleValue];
    
    double result = 0;
    
    if (operator == 0) {
        result = element1 + element2;
    } else if (operator == 1) {
        result = element1 + element2;
    } else if (operator == 2) {
        result = element1 + element2;
    } else if (operator == 3) {
        result = element1 + element2;
    }
    
    NSNumber *numberResult = [NSNumber numberWithDouble:result];
    
    [[self stack] push: numberResult];
    
};

- (void)clear {
    NSArray *array = @[@0.0, @0.0];
    _stack = [[NYCStack alloc] initWithArray:array];
};

- (void)pushNumber:(double)value {
    NSNumber *numberValue = [NSNumber numberWithDouble:value];
    [[self stack] push: numberValue];
};

- (double)topValue {
    return [[[self stack] peek] doubleValue];
}

@end
