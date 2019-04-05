//
//  NYCDigitAccumulator.h
//  RPNCalculator
//
//  Created by Nathanael Youngren on 4/4/19.
//  Copyright © 2019 Nathanael Youngren. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface NYCDigitAccumulator : NSObject

- (void)addDigitWithNumericValue:(NSNumber *)number;
- (void)addDecimalPoint;
- (void)clear;

@property (nonatomic, readonly) double value;

@end

NS_ASSUME_NONNULL_END
