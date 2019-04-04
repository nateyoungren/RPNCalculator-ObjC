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

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

#pragma mark - IBActions

- (IBAction)numberButtonTapped:(UIButton *)sender {
    [sender tag];
}

- (IBAction)percentButtonTapped:(UIButton *)sender {
}

- (IBAction)multiplicationButtonTapped:(UIButton *)sender {
}

- (IBAction)subtractionButtonTapped:(UIButton *)sender {
}

- (IBAction)decimalButtonTapped:(UIButton *)sender {
}

- (IBAction)returnButtonTapped:(UIButton *)sender {
}

- (IBAction)plusButtonTapped:(UIButton *)sender {
}



@end
