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
{
    NSArray *_pickerDataGender;
    NSArray *_pickerDataAlcohol;
    NSArray *_pickerDataCoffee;
}

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
    UIToolbar *toolBar=[[UIToolbar alloc]initWithFrame:CGRectMake(0, 0, 50, 44)];[toolBar setTintColor:[UIColor blueColor]];
    UIBarButtonItem *doneBtn=[[UIBarButtonItem alloc]initWithTitle:@"Done" style:UIBarButtonItemStyleBordered target:self action:@selector(updateDateOfBirthTextField)];
    UIBarButtonItem *space=[[UIBarButtonItem alloc]initWithBarButtonSystemItem:UIBarButtonSystemItemFlexibleSpace target:nil action:nil];
    [toolBar setItems:[NSArray arrayWithObjects:space,doneBtn, nil]];
    [self.dateOfBirth setInputAccessoryView:toolBar];
    
    //textfield for gender
    self.textGender =[[UITextField alloc]initWithFrame:CGRectMake(100, 200, 200, 50)];
    [self.textGender setPlaceholder:@"Choose Your Gender"];
    [self.textGender setTextAlignment:NSTextAlignmentCenter];
    [self.textGender setContentVerticalAlignment:UIControlContentVerticalAlignmentCenter];
    
    // create picker for gender values
    _pickerDataGender = @[@"Male", @"Female"];
    
    // UIPicker for gender ( male or female)
    _pickerViewGender=[[UIPickerView alloc]initWithFrame:CGRectMake(100, 200, 100, 200)];
    _pickerViewGender.delegate = self;
    _pickerViewGender.dataSource = self;
    _pickerViewGender.showsSelectionIndicator = YES;
    [self.textGender setInputView:_pickerViewGender];
    
    //ToolBar for gender textField
    UIToolbar *toolBar2 = [[UIToolbar alloc]initWithFrame:CGRectMake(0, 0, 50, 44)];[toolBar2 setTintColor:[UIColor blueColor]];
    UIBarButtonItem *doneBtn2=[[UIBarButtonItem alloc]initWithTitle:@"Done" style:UIBarButtonItemStyleBordered target:self action:@selector(updateGenderTextField)];
    UIBarButtonItem *space2=[[UIBarButtonItem alloc]initWithBarButtonSystemItem:UIBarButtonSystemItemFlexibleSpace target:nil action:nil];
    [toolBar2 setItems:[NSArray arrayWithObjects:space2,doneBtn2, nil]];
    [self.textGender setInputAccessoryView:toolBar2];
    
    
    //textfield for Alcohol
    _textAlcohol =[[UITextField alloc]initWithFrame:CGRectMake(50, 300, 250, 50)];
    [_textAlcohol setPlaceholder:@"How often do you drink alcohol?"];
    [_textAlcohol setTextAlignment:NSTextAlignmentCenter];
    [_textAlcohol setContentVerticalAlignment:UIControlContentVerticalAlignmentCenter];
    
    // create picker for gender values
    _pickerDataAlcohol = @[@"Everyday", @"2-5 times per week", @"Once per week",@"Less than once per week", @"Never"];
    
    //UI Picker view for alcohol
    _pickerViewAlcohol = [[UIPickerView alloc]initWithFrame:CGRectMake(100, 300, 100, 200)];
    _pickerViewAlcohol.delegate = self;
    _pickerViewAlcohol.dataSource = self;
    _pickerViewAlcohol.showsSelectionIndicator = YES;
    [self.textAlcohol setInputView:_pickerViewAlcohol];
    
    //ToolBar for Alcohol textField
    UIToolbar *toolBar3 = [[UIToolbar alloc]initWithFrame:CGRectMake(0, 0, 50, 44)];[toolBar3 setTintColor:[UIColor blueColor]];
    UIBarButtonItem *doneBtn3=[[UIBarButtonItem alloc]initWithTitle:@"Done" style:UIBarButtonItemStyleBordered target:self action:@selector(updateAlcoholTextField)];
    UIBarButtonItem *space3=[[UIBarButtonItem alloc]initWithBarButtonSystemItem:UIBarButtonSystemItemFlexibleSpace target:nil action:nil];
    [toolBar3 setItems:[NSArray arrayWithObjects:space3,doneBtn3, nil]];
    [self.textAlcohol setInputAccessoryView:toolBar3];
    
    // button
    UIButton *button = [[UIButton alloc]initWithFrame:CGRectMake(100, 600, 70, 40)];
    [button setTitle:@"Next" forState:UIControlStateNormal];
    [button addTarget:self action:@selector(buttonPressed) forControlEvents:UIControlEventTouchUpInside];
    [button setShowsTouchWhenHighlighted:TRUE];
    
    
    
    // colors
    [[self view] setBackgroundColor:[UIColor grayColor]];
    [self.dateOfBirth setBackgroundColor:[UIColor whiteColor]];
    [self.textGender setBackgroundColor:[UIColor whiteColor]];
    [self.textAlcohol setBackgroundColor:[UIColor whiteColor]];
    [button setBackgroundColor:[UIColor orangeColor]];
    
    
    // adding elements to view(Frame)
    [self.view addSubview:self.dateOfBirth];
    [self.view addSubview:self.textGender];
    [self.view addSubview:button];
    [self.view addSubview:self.textAlcohol];
    
    
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    
}

// The number of columns of data
- (int)numberOfComponentsInPickerView:(UIPickerView *)pickerView
{
    return 1;
}

// The number of rows of data
- (int)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component
{
    if(pickerView == _pickerViewGender)
        return _pickerDataGender.count;
    else
    {
        if(pickerView == _pickerViewAlcohol)
            return _pickerDataAlcohol.count;
        else return _pickerDataCoffee.count;
        
    }
}
// The data to return for the row and component (column) that's being passed in
- (NSString*)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component
{
    if(pickerView == _pickerViewGender)
        return _pickerDataGender[row];
    else
    {
        if(pickerView == _pickerViewAlcohol)
            return _pickerDataAlcohol[row];
        else return _pickerDataCoffee[row];
    }
}

/*
 
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
 
 */

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
    
    NSInteger selRow=[_pickerViewGender selectedRowInComponent:0];
    
    pickerViewValue = [self pickerView:_pickerViewGender titleForRow:selRow forComponent:0];
    
    [self.textGender setText:pickerViewValue];
    [self.textGender resignFirstResponder];
}

-(void) updateAlcoholTextField
{
    NSString *pickerViewValue;
    
    NSInteger selRow=[_pickerViewAlcohol selectedRowInComponent:0];
    
    pickerViewValue = [self pickerView:_pickerViewAlcohol titleForRow:selRow forComponent:0];
    
    [self.textAlcohol setText:pickerViewValue];
    [self.textAlcohol resignFirstResponder];
    
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
    NSString *gender = [self.textGender text];
    if( [gender isEqualToString:@"Male" ] )
    {
        [defaults setBool:true forKey:@"IsMan"];
    }
    else [defaults setBool:false forKey:@"IsMan"];
    
    // set first time to false
    [defaults setBool:false forKey:@"FirstTime"];
    
    //set date
    [defaults setObject:dob forKey:@"Date"];
    
    // open second screen
    SecondViewController *svc=[SecondViewController new];
    [self.navigationController pushViewController:svc animated:TRUE];
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
@end
