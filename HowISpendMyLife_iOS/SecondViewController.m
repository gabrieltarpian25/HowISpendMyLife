//
//  SecondViewController.m
//  HowISpendMyLife_iOS
//
//  Created by Tarpian Gabriel Lucian on 12/03/16.
//  Copyright © 2016 Tarpian Gabriel Lucian. All rights reserved.
//

#import "SecondViewController.h"

@interface SecondViewController ()

@end

@implementation SecondViewController

- (void)viewDidLoad {
    
    [self.view setFrame:CGRectMake(0,0, self.view.bounds.size.width, self.view.bounds.size.height)];
    
    // hide navigation controller
    [[self navigationController] setNavigationBarHidden:YES animated:YES];
    
    // set background
    [[self view] setBackgroundColor:[UIColor whiteColor]];
    
    //create a textfield for showing date of birth
    UITextField *tf = [[UITextField alloc]initWithFrame:CGRectMake(100, 100, 200, 50)];
    
    
    // button for days
    _butDays = [[UIButton alloc]initWithFrame:CGRectMake(50, 50, 70, 40)];
    [_butDays setTitle:@"Days" forState:UIControlStateNormal];
    [_butDays addTarget:self action:@selector(butDaysPressed) forControlEvents:UIControlEventTouchUpInside];
    [_butDays setBackgroundColor:[UIColor grayColor]];
    
    // button for hours
    _butHours = [[UIButton alloc]initWithFrame:CGRectMake(145, 50, 70, 40)];
    [_butHours setTitle:@"Hours" forState:UIControlStateNormal];
    [_butHours addTarget:self action:@selector(butHoursPressed) forControlEvents:UIControlEventTouchUpInside];
    [_butHours setBackgroundColor:[UIColor purpleColor]];
    
    // button for minutes
    _butMinutes = [[UIButton alloc]initWithFrame:CGRectMake(240, 50, 80, 40)];
    [_butMinutes setTitle:@"Minutes" forState:UIControlStateNormal];
    [_butMinutes addTarget:self action:@selector(butHoursPressed) forControlEvents:UIControlEventTouchUpInside];
    [_butMinutes setBackgroundColor:[UIColor orangeColor]];
    
    // initialize the labels
    
    
    // User Defaults
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    
    //get the date
    NSDate *d = [[NSDate alloc]init];
    d = [defaults objectForKey:@"Date"];
    
    // get the display
    NSString *display = [defaults stringForKey:@"DisplayOption"];
    
    // if option is Minutes
    if ([display isEqualToString:@"Minutes"])
    {
        
    }
    
    //format the date and store it as a string in stringFromDate variable
    NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
    [formatter setDateFormat:@"dd MMMM YYYY"];
    NSString *stringFromDate = [formatter stringFromDate:d];
    
    //set the date to text field
    [tf setText:stringFromDate];
    
    //add elements to view
    [[self view] addSubview:tf];
    [[self view] addSubview:_butDays];
    [[self view] addSubview:_butHours];
    [[self view] addSubview:_butMinutes];
    
    //set date - only for tests
    [defaults setObject:nil forKey:@"Date"];

    
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
