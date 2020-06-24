//
//  ViewController.m
//  Tipsy
//
//  Created by Aayush Mani Phuyal on 6/23/20.
//  Copyright © 2020 Aayush Phuyal. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

// Declaring properties for tying up the logic in fields
@property (weak, nonatomic) IBOutlet UITextField *billField;
@property (weak, nonatomic) IBOutlet UILabel *tipLabel;
@property (weak, nonatomic) IBOutlet UILabel *totalLabel;
@property (weak, nonatomic) IBOutlet UISegmentedControl *tipController;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

// Making Keyboard go away on tap
- (IBAction)onTap:(id)sender {
    [self.view endEditing:YES];
}

- (IBAction)onEdit:(id)sender {
    NSArray *tipPercentages = @[@(0.15), @(0.20), @(0.25)];
    double tipPercentage = [tipPercentages[self.tipController.selectedSegmentIndex] doubleValue];
    double bill = [self.billField.text doubleValue];
    double tip = bill * tipPercentage;
    double total = bill + tip;
    self.tipLabel.text = [NSString stringWithFormat:@"$%.2f", tip];
    self.totalLabel.text = [NSString stringWithFormat:@"$%.2f", total];
}

@end
