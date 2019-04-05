//
//  NYCCalculatorViewController.m
//  RPNCalculator
//
//  Created by Nathanael Youngren on 4/4/19.
//  Copyright © 2019 Nathanael Youngren. All rights reserved.
//

#import "NYCCalculatorViewController.h"

@interface NYCCalculatorViewController ()

@property (weak, nonatomic) IBOutlet UITextField *textField;

- (IBAction)numberButtonTapped:(UIButton *)sender;
- (IBAction)percentButtonTapped:(UIButton *)sender;
- (IBAction)multiplicationButtonTapped:(UIButton *)sender;
- (IBAction)subtractionButtonTapped:(UIButton *)sender;
- (IBAction)decimalButtonTapped:(UIButton *)sender;
- (IBAction)returnButtonTapped:(UIButton *)sender;
- (IBAction)plusButtonTapped:(UIButton *)sender;

@end

@implementation NYCCalculatorViewController
    
- (void)setCalculator:(NYCCalculator *)calculator {
    _calculator = calculator;
    
    double topValue = [[self calculator] topValue];
    
    if (topValue) {
        NSNumber *topNum = [NSNumber numberWithDouble:topValue];
        [[self textField] setText: [topNum stringValue]];
    } else {
        [[self textField] setText:@""];
    }
}

- (void)setDigitAccumulator:(NYCDigitAccumulator *)digitAccumulator {
    _digitAccumulator = digitAccumulator;
    
    double value = [[self digitAccumulator] value];
    
    if (value) {
        NSNumber *valueNum = [NSNumber numberWithDouble:value];
        [[self textField] setText: [valueNum stringValue]];
    } else {
        [[self textField] setText:@""];
    }
}

- (void)viewDidLoad {
    [super viewDidLoad];
}

#pragma mark - IBActions

- (IBAction)numberButtonTapped:(UIButton *)sender {
    NSNumber *num = [NSNumber numberWithInteger:[sender tag]];
    [[self digitAccumulator] addDigitWithNumericValue:num];
}

- (IBAction)percentButtonTapped:(UIButton *)sender {
    [[self calculator] applyOperator: divide];
}

- (IBAction)multiplicationButtonTapped:(UIButton *)sender {
    [[self calculator] applyOperator:multiply];
}

- (IBAction)subtractionButtonTapped:(UIButton *)sender {
    [[self calculator] applyOperator:subtract];
}

- (IBAction)decimalButtonTapped:(UIButton *)sender {
    [[self digitAccumulator] addDecimalPoint];
}

- (IBAction)returnButtonTapped:(UIButton *)sender {
    double value = [[self digitAccumulator] value];
    
    if (value) {
        [[self calculator] pushNumber:value];
    }
    [[self digitAccumulator] clear];
}

- (IBAction)plusButtonTapped:(UIButton *)sender {
    [[self calculator] applyOperator:add];
}

@end
