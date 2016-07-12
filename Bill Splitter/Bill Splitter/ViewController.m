//
//  ViewController.m
//  Bill Splitter
//
//  Created by Mark Meritt on 2016-07-12.
//  Copyright © 2016 Apptist. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)calculateSplitAmount:(id)sender {

  float splitNum =  _value / _slider.value;
    
    _payLabel.text = [NSString stringWithFormat:@"%f", splitNum];
    
    _outputLabel.text = [NSString stringWithFormat:@"The bill will be split amongst %1.0f people. Each will pay $%1.0f", _slider.value, splitNum];
    
}

-(BOOL)textFieldShouldReturn:(UITextField *)textField{
    [_textField resignFirstResponder];
     NSString* stringValue = textField.text;
    _value = [stringValue floatValue];
    return true;
}

-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    [self.view endEditing:true];
}

@end
