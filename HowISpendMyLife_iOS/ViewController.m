//
//  ViewController.m
//  HowISpendMyLife_iOS
//
//  Created by Tarpian Gabriel Lucian on 27/02/16.
//  Copyright © 2016 Tarpian Gabriel Lucian. All rights reserved.
//

#import "ViewController.h"
#import "SecondViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    
    // get if is the first time
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    
    if( [defaults objectForKey:@"Date"] != nil)
    {
        // open second screen
        SecondViewController *svc=[SecondViewController new];
        [self.navigationController pushViewController:svc animated:true]; // open second view
        [self dismissViewControllerAnimated:YES completion:nil]; // dismiss current view
    }
    
    // hide navigation controller
    [[self navigationController] setNavigationBarHidden:YES animated:YES];

    
    self.dateOfBirth=[[UITextField alloc]initWithFrame:CGRectMake(100, 100, 200, 50)];
    [self.dateOfBirth setPlaceholder:@"Choose your Birth Date"];
    [self.dateOfBirth setTextAlignment:NSTextAlignmentCenter];
    [self.dateOfBirth setContentVerticalAlignment:UIControlContentVerticalAlignmentCenter];
    
    //date picker
    _datePicker = [[UIDatePicker alloc]init];
    _datePicker.datePickerMode = UIDatePickerModeDate;
    _datePicker.date = [NSDate date];
    [self.dateOfBirth setInputView:_datePicker];
    
    //ToolBar for dateOfBirth TextField
    UIToolbar *toolBar=[[UIToolbar alloc]initWithFrame:CGRectMake(0, 0, 50, 44)];[toolBar setTintColor:[UIColor grayColor]];
    UIBarButtonItem *doneBtn=[[UIBarButtonItem alloc]initWithTitle:@"Done" style:UIBarButtonItemStyleBordered target:self action:@selector(updateDateOfBirthTextField)];
    UIBarButtonItem *space=[[UIBarButtonItem alloc]initWithBarButtonSystemItem:UIBarButtonSystemItemFlexibleSpace target:nil action:nil];
    [toolBar setItems:[NSArray arrayWithObjects:space,doneBtn, nil]];
    [self.dateOfBirth setInputAccessoryView:toolBar];
    
    //textfield for gender
    self.gender =[[UITextField alloc]initWithFrame:CGRectMake(100, 200, 200, 50)];
    [self.gender setPlaceholder:@"Choose Your Gender"];
    [self.gender setTextAlignment:NSTextAlignmentCenter];
    [self.gender setContentVerticalAlignment:UIControlContentVerticalAlignmentCenter];
    
    // UIPicker for gender ( male or female)
    _pickerView=[[UIPickerView alloc]initWithFrame:CGRectMake(100, 200, 100, 200)];
    _pickerView.delegate = self;
    _pickerView.dataSource = self;
    _pickerView.showsSelectionIndicator = YES;
    [self.gender setInputView:_pickerView];

    //ToolBar for gender textField
    UIToolbar *toolBar2 = [[UIToolbar alloc]initWithFrame:CGRectMake(0, 0, 50, 44)];[toolBar setTintColor:[UIColor grayColor]];
    UIBarButtonItem *doneBtn2=[[UIBarButtonItem alloc]initWithTitle:@"Done" style:UIBarButtonItemStyleBordered target:self action:@selector(updateGenderTextField)];
    UIBarButtonItem *space2=[[UIBarButtonItem alloc]initWithBarButtonSystemItem:UIBarButtonSystemItemFlexibleSpace target:nil action:nil];
    [toolBar2 setItems:[NSArray arrayWithObjects:space2,doneBtn2, nil]];
    [self.gender setInputAccessoryView:toolBar2];
    
    // button
    UIButton *button = [[UIButton alloc]initWithFrame:CGRectMake(100, 300, 70, 40)];
    [button setTitle:@"Next" forState:UIControlStateNormal];
    [button addTarget:self action:@selector(buttonPressed) forControlEvents:UIControlEventTouchUpInside];
    
    
    // colors
    [[self view] setBackgroundColor:[UIColor grayColor]];
    [self.dateOfBirth setBackgroundColor:[UIColor whiteColor]];
    [self.gender setBackgroundColor:[UIColor whiteColor]];
    [button setBackgroundColor:[UIColor orangeColor]];


    // adding elements to view(Frame)
    [self.view addSubview:self.dateOfBirth];
    [self.view addSubview:self.gender];
    [self.view addSubview:button];
    
    
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.

    
}

//number of components in picker view
- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView {
    return 1;
}

//picker view number of rows in component
- (NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component {
    return 2;
}

//picker view content
- (NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component {
    NSString * title = nil;
    switch(row) {
        case 0:
            title = @"Male";
            break;
        case 1:
            title = @"Female";
            break;
        }
    return title;
}

-(void) updateDateOfBirthTextField
{
    NSDate *today = [NSDate date];
    NSDateFormatter *df = [[NSDateFormatter alloc] init];
    [df setDateFormat:@"dd MMMM YYYY"];
    NSString *dateString = [df stringFromDate:today];
    dateString = [NSString stringWithFormat:@"%@",[df stringFromDate:_datePicker.date]];
    
    [self.dateOfBirth setText:dateString];
    [self.dateOfBirth resignFirstResponder];

}

-(void) updateGenderTextField
{
    NSString *pickerViewValue;
    
    NSInteger selRow=[_pickerView selectedRowInComponent:0];
    
    pickerViewValue = [self pickerView:_pickerView titleForRow:selRow forComponent:0];
    
    [self.gender setText:pickerViewValue];
    [self.gender resignFirstResponder];
}

// button is pressed
-(void) buttonPressed
{
    // store all the properties
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    
    // get date of birth
    NSDate *dob = [[NSDate alloc]init];
    dob = _datePicker.date;
    
    // check if is a male of female
    NSString *gender = [self.gender text];
    if( [gender isEqualToString:@"Male" ] )
    {
        [defaults setBool:true forKey:@"IsMan"];
    }
    else [defaults setBool:false forKey:@"IsMan"];

    // set first time to false
    [defaults setBool:false forKey:@"FirstTime"];
    
    //set date
    [defaults setObject:dob forKey:@"Date"];
    
    // set minutes options
    NSString *option = [[NSString alloc]init];
    option = @"Minutes";
    [defaults setObject:option forKey:@"DisplayOption"];
    
    // open second screen
    SecondViewController *svc=[SecondViewController new];
    [self.navigationController pushViewController:svc animated:TRUE];
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
@end
