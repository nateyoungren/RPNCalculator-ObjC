//
//  NYCCalculatorViewController.h
//  RPNCalculator
//
//  Created by Nathanael Youngren on 4/4/19.
//  Copyright © 2019 Nathanael Youngren. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "NYCCalculator.h"
#import "NYCDigitAccumulator.h"

NS_ASSUME_NONNULL_BEGIN

@interface NYCCalculatorViewController : UIViewController

@property (nonatomic) NYCCalculator *calculator;
@property (nonatomic) NYCDigitAccumulator *digitAccumulator;

@end

NS_ASSUME_NONNULL_END
