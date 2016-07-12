//
//  ViewController.h
//  Bill Splitter
//
//  Created by Mark Meritt on 2016-07-12.
//  Copyright © 2016 Apptist. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UITextFieldDelegate>

@property (weak, nonatomic) IBOutlet UITextField *textField;
@property (nonatomic) float value;
@property (weak, nonatomic) IBOutlet UISlider *slider;
@property (weak, nonatomic) IBOutlet UILabel *payLabel;
@property (weak, nonatomic) IBOutlet UILabel *outputLabel;

- (IBAction)calculateSplitAmount:(id)sender;

@end

