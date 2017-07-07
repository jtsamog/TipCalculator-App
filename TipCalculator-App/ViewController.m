//
//  ViewController.m
//  TipCalculator-App
//
//  Created by Endeavour2 on 7/7/17.
//  Copyright © 2017 SamOg. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITextField *billAmountTextField;
@property (weak, nonatomic) IBOutlet UILabel *tipAmountLabel;
@property (weak, nonatomic) IBOutlet UITextField *tipPercentageTextField;
@property (assign, nonatomic) CGFloat defaultTipPercentage;

@end

@implementation ViewController



- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.defaultTipPercentage = 0.15;


}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)calculateTipButton:(UIButton *)sender {
    
    float billAmount = [self.billAmountTextField.text floatValue];
    
    float tipAmount;
    
    if ([self.tipPercentageTextField.text floatValue]) {
        
        tipAmount = (billAmount * [self.tipPercentageTextField.text floatValue]);
        
    } else {
        tipAmount = (billAmount * self.defaultTipPercentage);
        }
    
    NSString *tip = [NSString stringWithFormat:@"Tip: $%0.2f", tipAmount];
    
    self.tipAmountLabel.text = tip;
    
}


@end
