//
//  NYCDigitAccumulator.m
//  RPNCalculator
//
//  Created by Nathanael Youngren on 4/4/19.
//  Copyright © 2019 Nathanael Youngren. All rights reserved.
//

#import "NYCDigitAccumulator.h"

@interface NYCDigitAccumulator () {
    NSMutableArray *internalDigitArray;
}

@end

@implementation NYCDigitAccumulator

- (void)addDigitWithNumericValue:(NSNumber *)number {
    NSString *stringNumber = [number stringValue];
    [internalDigitArray addObject: stringNumber];
}

- (void)addDecimalPoint {
    NSString *decimalPoint = @".";
    [internalDigitArray addObject: decimalPoint];
}

- (void)clear {
    [internalDigitArray removeAllObjects];
}

- (double)value {
    return [[internalDigitArray componentsJoinedByString:@""] doubleValue];
}

@end
