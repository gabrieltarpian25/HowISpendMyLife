//
//  ViewController.h
//  HowISpendMyLife_iOS
//
//  Created by Tarpian Gabriel Lucian on 27/02/16.
//  Copyright © 2016 Tarpian Gabriel Lucian. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Human.h"

@interface ViewController : UIViewController <UIPickerViewDelegate> 

@property (nonatomic,strong) IBOutlet UITextField *dateOfBirth;
@property (nonatomic,strong) UIDatePicker *datePicker;

@property (nonatomic,strong) UIPickerView *pickerViewGender;
@property (nonatomic,strong) IBOutlet UITextField *textGender;

@property (nonatomic,strong) UIPickerView *pickerViewAlcohol;
@property (nonatomic,strong) IBOutlet UITextField *textAlcohol;

@property (nonatomic,strong) UIPickerView *pickerViewCoffee;
@property (nonatomic,strong) IBOutlet UITextField *textCoffee;

@end

