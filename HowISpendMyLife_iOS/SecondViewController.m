//
//  SecondViewController.m
//  HowISpendMyLife_iOS
//
//  Created by Tarpian Gabriel Lucian on 12/03/16.
//  Copyright © 2016 Tarpian Gabriel Lucian. All rights reserved.
//

#import "SecondViewController.h"
#import <QuartzCore/QuartzCore.h>

@interface SecondViewController ()

@end

@implementation SecondViewController

- (void)viewDidLoad {
    
    [self.view setFrame:CGRectMake(0,0, self.view.bounds.size.width, self.view.bounds.size.height)];
    
    // hide navigation controller
    [[self navigationController] setNavigationBarHidden:YES animated:YES];
    
    // User Defaults
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    
    // get the date
    NSDate *d = [[NSDate alloc]init];
    d = [defaults objectForKey:@"Date"];
    
    // get gender
    bool boIsMan = [defaults boolForKey:@"IsMan"];
    
    //create a textfield for showing date of birth
    UILabel *tf = [[UILabel alloc]initWithFrame:CGRectMake(100, 100, 200, 50)];
    
    
    // button for days
    _butDays = [[UIButton alloc]initWithFrame:CGRectMake(50, 50, 70, 40)];
    [_butDays setTitle:@"Days" forState:UIControlStateNormal];
    [_butDays addTarget:self action:@selector(butDaysPressed) forControlEvents:UIControlEventTouchUpInside];
    [_butDays setBackgroundColor:[UIColor colorWithRed:0.0f/255.0f
                                                 green:128.0f/255.0f
                                                  blue:255.0f/255.0f
                                                 alpha:1.0f]];
    [_butDays setShowsTouchWhenHighlighted:TRUE];
    
    // button for hours
    _butHours = [[UIButton alloc]initWithFrame:CGRectMake(145, 50, 70, 40)];
    [_butHours setTitle:@"Hours" forState:UIControlStateNormal];
    [_butHours addTarget:self action:@selector(butHoursPressed) forControlEvents:UIControlEventTouchUpInside];
    [_butHours setBackgroundColor:[UIColor purpleColor]];
    [_butHours setShowsTouchWhenHighlighted:TRUE];
    
    // button for minutes
    _butMinutes = [[UIButton alloc]initWithFrame:CGRectMake(240, 50, 80, 40)];
    [_butMinutes setTitle:@"Minutes" forState:UIControlStateNormal];
    [_butMinutes addTarget:self action:@selector(butMinutesPressed) forControlEvents:UIControlEventTouchUpInside];
    [_butMinutes setBackgroundColor:[UIColor orangeColor]];
    [_butMinutes setShowsTouchWhenHighlighted:TRUE];
    
    // button for reset input
    UIButton *butReset = [[UIButton alloc]initWithFrame:CGRectMake(250, 100, 100, 40)];
    [butReset setTitle:@"Reset Input" forState:UIControlStateNormal];
    [butReset addTarget:self action:@selector(butResetPressed) forControlEvents:UIControlEventTouchUpInside];
    [butReset setBackgroundColor:[UIColor darkGrayColor]];
    [butReset setShowsTouchWhenHighlighted:TRUE];
    
    // initialize the labels
    _labelLivingVal =          [[UILabel alloc]initWithFrame:CGRectMake(50, 150, 100, 20)];
    _labelSleepingVal =        [[UILabel alloc]initWithFrame:CGRectMake(50, 180, 100, 20)];
    _labelTVVal =              [[UILabel alloc]initWithFrame:CGRectMake(50, 210, 100, 20)];
    _labelCommercialsVal =     [[UILabel alloc]initWithFrame:CGRectMake(50, 240, 100, 20)];
    _labelSexVal =             [[UILabel alloc]initWithFrame:CGRectMake(50, 270, 100, 20)];
    _labelEatingVal =          [[UILabel alloc] initWithFrame:CGRectMake(50, 300, 100, 20)];
    _labelBathroomVal =        [[UILabel alloc] initWithFrame:CGRectMake(50, 330, 100, 20)];
    _labelToiletVal =          [[UILabel alloc] initWithFrame:CGRectMake(50, 360, 100, 20)];
    _labelLaughedVal =         [[UILabel alloc] initWithFrame:CGRectMake(50, 390, 100, 20)];
    _labelAlcoholVal =         [[UILabel alloc] initWithFrame:CGRectMake(50, 420, 100, 20)];
    _labelKissingVal =         [[UILabel alloc] initWithFrame:CGRectMake(50, 450, 100, 20)];
    _labelCoffeesVal =          [[UILabel alloc] initWithFrame:CGRectMake(50, 480, 100, 20)];
    _labelIndoorVal =          [[UILabel alloc] initWithFrame:CGRectMake(50, 510, 100, 20)];
    _labelStarringVal =        [[UILabel alloc] initWithFrame:CGRectMake(50, 540, 100, 20)];
    _labelShoppingVal =        [[UILabel alloc] initWithFrame:CGRectMake(50, 570, 100, 20)];
    _labelHairVal =            [[UILabel alloc] initWithFrame:CGRectMake(50, 600, 100, 20)];
    _labelWearVal =            [[UILabel alloc] initWithFrame:CGRectMake(50, 630, 100, 20)];
    
    _labelLiving =             [[UILabel alloc] initWithFrame:CGRectMake(170, 150, 200, 20)];
    _labelLiving.text = @"Living";
    _labelSleeping =           [[UILabel alloc] initWithFrame:CGRectMake(170, 180, 200, 20)];
    _labelSleeping.text = @"Sleeping";
    _labelTV =                 [[UILabel alloc] initWithFrame:CGRectMake(170, 210, 200, 20)];
    _labelTV.text = @"Watching TV";
    _labelCommercials =        [[UILabel alloc] initWithFrame:CGRectMake(170, 240, 300, 20)];
    _labelCommercials.text = @"Watching commercials";
    _labelSex =                [[UILabel alloc] initWithFrame:CGRectMake(170, 270, 200, 20)];
    _labelSex.text = @"Having Sex";
    _labelEating =             [[UILabel alloc] initWithFrame:CGRectMake(170, 300, 200, 20)];
    _labelEating.text = @"Eating";
    _labelBathroom =           [[UILabel alloc] initWithFrame:CGRectMake(170, 330, 200, 20)];
    _labelBathroom.text = @"In the bathroom";
    _labelToilet =             [[UILabel alloc] initWithFrame:CGRectMake(170, 360, 200, 20)];
    _labelToilet.text = @"On the toilet";
    _labelLaughed =             [[UILabel alloc] initWithFrame:CGRectMake(170, 390, 200, 20)];
    _labelLaughed.text = @"Times laughed";
    _labelAlcohol =             [[UILabel alloc] initWithFrame:CGRectMake(170, 420, 200, 20)];
    _labelAlcohol.text = @"Liters of alcohol drunk";
    _labelKissing =             [[UILabel alloc] initWithFrame:CGRectMake(170, 450, 200, 20)];
    _labelKissing.text = @"Kissing";
    _labelCoffees =             [[UILabel alloc] initWithFrame:CGRectMake(170, 480, 200, 20)];
    _labelCoffees.text = @"Coffees";
    _labelIndoor =             [[UILabel alloc] initWithFrame:CGRectMake(170, 510, 200, 20)];
    _labelIndoor.text = @"Indoor";
    
    // men only
    _labelStarring =           [[UILabel alloc] initWithFrame:CGRectMake(170, 540, 200, 20)];
    _labelStarring.text = @"Starring at women";
    
    // women only
    _labelWear =               [[UILabel alloc] initWithFrame:CGRectMake(170, 570, 200, 20)];
    _labelWear.text = @"Deciding what to wear";
    _labelShopping =           [[UILabel alloc] initWithFrame:CGRectMake(170, 600, 200, 20)];
    _labelShopping.text = @"Shopping";
    _labelHair =                [[UILabel alloc] initWithFrame:CGRectMake(170, 630, 200, 20)];
    _labelHair.text = @"Doing your hair";
    
    // Living Icon
    UIImageView *imageHolder = [[UIImageView alloc] initWithFrame:CGRectMake(10, 147, 25, 25)];
    UIImage *image = [UIImage imageNamed:@"life.png"];
    imageHolder.image = image;
    [self.view addSubview:imageHolder];
    
    // Sleeping Icon
    imageHolder = [[UIImageView alloc] initWithFrame:CGRectMake(10, 177, 25, 25)];
    image = [UIImage imageNamed:@"sleep.png"];
    imageHolder.image = image;
    [self.view addSubview:imageHolder];
    
    // Wathing TV Icon
    imageHolder = [[UIImageView alloc] initWithFrame:CGRectMake(10, 207, 25, 25)];
    image = [UIImage imageNamed:@"tv.png"];
    imageHolder.image = image;
    [self.view addSubview:imageHolder];
    
    
    // Wathing Commercials Icon
    imageHolder = [[UIImageView alloc] initWithFrame:CGRectMake(10, 237, 25, 25)];
    image = [UIImage imageNamed:@"tv.png"];
    imageHolder.image = image;
    [self.view addSubview:imageHolder];
    
    // Having Sex Icon
    imageHolder = [[UIImageView alloc] initWithFrame:CGRectMake(10, 267, 25, 25)];
    image = [UIImage imageNamed:@"sex.png"];
    imageHolder.image = image;
    [self.view addSubview:imageHolder];
    
    // Eating Icon
    imageHolder = [[UIImageView alloc] initWithFrame:CGRectMake(10, 297, 25, 25)];
    image = [UIImage imageNamed:@"eat.png"];
    imageHolder.image = image;
    [self.view addSubview:imageHolder];
    
    // Bathroom Icon
    imageHolder = [[UIImageView alloc] initWithFrame:CGRectMake(10, 327, 25, 25)];
    image = [UIImage imageNamed:@"bathroom.png"];
    imageHolder.image = image;
    [self.view addSubview:imageHolder];
    
    // Toilet Icon
    imageHolder = [[UIImageView alloc] initWithFrame:CGRectMake(10, 357, 25, 25)];
    image = [UIImage imageNamed:@"toilet.png"];
    imageHolder.image = image;
    [self.view addSubview:imageHolder];
    
    // Laugh Icon
    imageHolder = [[UIImageView alloc] initWithFrame:CGRectMake(10, 387, 25, 25)];
    image = [UIImage imageNamed:@"laugh.png"];
    imageHolder.image = image;
    [self.view addSubview:imageHolder];
    
    // Alcohol Icon
    imageHolder = [[UIImageView alloc] initWithFrame:CGRectMake(10, 417, 25, 25)];
    image = [UIImage imageNamed:@"alcohol.png"];
    imageHolder.image = image;
    [self.view addSubview:imageHolder];
    
    // Kissing Icon
    imageHolder = [[UIImageView alloc] initWithFrame:CGRectMake(10, 447, 25, 25)];
    image = [UIImage imageNamed:@"kiss.png"];
    imageHolder.image = image;
    [self.view addSubview:imageHolder];
    
    // Coffee Icon
    imageHolder = [[UIImageView alloc] initWithFrame:CGRectMake(10, 477, 25, 25)];
    image = [UIImage imageNamed:@"coffee.png"];
    imageHolder.image = image;
    [self.view addSubview:imageHolder];
    
    // Indoor Icon
    imageHolder = [[UIImageView alloc] initWithFrame:CGRectMake(10, 507, 25, 25)];
    image = [UIImage imageNamed:@"indoor.png"];
    imageHolder.image = image;
    [self.view addSubview:imageHolder];
    
    // MEN ONLY - Starring at women Icon
    if(boIsMan)
    {
    imageHolder = [[UIImageView alloc] initWithFrame:CGRectMake(10, 537, 25, 25)];
    image = [UIImage imageNamed:@"starring.png"];
    imageHolder.image = image;
    [self.view addSubview:imageHolder];
    }
    else
    {
    // WOMEN ONLY - Deciding what to wear at Icon
    imageHolder = [[UIImageView alloc] initWithFrame:CGRectMake(10, 567, 25, 25)];
    image = [UIImage imageNamed:@"wear.png"];
    imageHolder.image = image;
    [self.view addSubview:imageHolder];
    
    // WOMEN ONLY - Shopping Icon
    imageHolder = [[UIImageView alloc] initWithFrame:CGRectMake(10, 597, 25, 25)];
    image = [UIImage imageNamed:@"shop.png"];
    imageHolder.image = image;
    [self.view addSubview:imageHolder];
    
    // WOMEN ONLY - Doing Hair Icon
    imageHolder = [[UIImageView alloc] initWithFrame:CGRectMake(10, 627, 25, 25)];
    image = [UIImage imageNamed:@"hair.png"];
    imageHolder.image = image;
    [self.view addSubview:imageHolder];
    }
    
    // create human instance
    [[Human humanInstance] setM_poDateOfBirth:d];
    [[Human humanInstance] setM_boIsMan:boIsMan];
    
    //format the date and store it as a string in stringFromDate variable
    NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
    [formatter setDateFormat:@"dd MMMM YYYY"];
    NSString *stringFromDate = [formatter stringFromDate:d];
    
    //set the date to text field
    [tf setText:stringFromDate];
    
    //add elements to view
    [[self view] addSubview:tf];
    [[self view] addSubview:butReset];
    [[self view] addSubview:_butDays];
    [[self view] addSubview:_butHours];
    [[self view] addSubview:_butMinutes];
    [[self view] addSubview:_labelLivingVal];
    [[self view] addSubview:_labelLiving];
    [[self view] addSubview:_labelSleepingVal];
    [[self view] addSubview:_labelSleeping];
    [[self view] addSubview:_labelTVVal];
    [[self view] addSubview:_labelTV];
    [[self view] addSubview:_labelCommercials];
    [[self view] addSubview:_labelCommercialsVal];
    
    [[self view] addSubview:_labelSex];
    [[self view] addSubview:_labelSexVal];
    [[self view] addSubview:_labelEatingVal];
    [[self view] addSubview:_labelEating];
    [[self view] addSubview:_labelBathroomVal];
    [[self view] addSubview:_labelBathroom];
    [[self view] addSubview:_labelToilet];
    [[self view] addSubview:_labelToiletVal];
    [[self view] addSubview:_labelLaughedVal];
    [[self view] addSubview:_labelLaughed];
    [[self view] addSubview:_labelAlcohol];
    [[self view] addSubview:_labelAlcoholVal];
    [[self view] addSubview:_labelKissing];
    [[self view] addSubview:_labelKissingVal];
    [[self view] addSubview:_labelCoffees];
    [[self view] addSubview:_labelCoffeesVal];
    [[self view] addSubview:_labelIndoorVal];
    [[self view] addSubview:_labelIndoor];
    
    // men only
    if(boIsMan)
    {
        [[self view] addSubview:_labelStarringVal];
        [[self view] addSubview:_labelStarring];

    }
    else // women only
    {
    [[self view] addSubview:_labelWear];
    [[self view] addSubview:_labelWearVal];
    [[self view] addSubview:_labelHair];
    [[self view] addSubview:_labelHairVal];
    [[self view] addSubview:_labelShoppingVal];
    [[self view] addSubview:_labelShopping];
    }
    
    // show the minutes first everytime
    [self butMinutesPressed];

    //set date - only for tests
    //[defaults setObject:nil forKey:@"Date"];

}

// ****************************** button RESET is pressed
-(void) butResetPressed
{
    
    // User Defaults
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    
    // set Date to be NULL
    [defaults setObject:nil forKey:@"Date"];
    
    // open main screen
    ViewController *fvc=[ViewController new];
    [self.navigationController pushViewController:fvc animated:true]; // open first view
    [self dismissViewControllerAnimated:YES completion:nil]; // dismiss current view

}

// ****************************** button HOURS is pressed
-(void) butHoursPressed
{
    // set values for text fields
    
    // living
    long hours = [[Human humanInstance]longGetLivingHours];
    NSString *displayHours = [NSNumberFormatter localizedStringFromNumber:@(hours)
                                                              numberStyle:NSNumberFormatterDecimalStyle];
    _labelLivingVal.text =  displayHours;
    
    // sleeping
    hours = [[Human humanInstance]longGetSleepingHours];
    displayHours = [NSNumberFormatter localizedStringFromNumber:@(hours)
                                                    numberStyle:NSNumberFormatterDecimalStyle];
    _labelSleepingVal.text = displayHours;
    
    // watching tv
    hours = [[Human humanInstance]longGetWatchingTVHours];
    displayHours = [NSNumberFormatter localizedStringFromNumber:@(hours)
                                                    numberStyle:NSNumberFormatterDecimalStyle];
    _labelTVVal.text = displayHours;
    
    // watching commercials
    hours = [[Human humanInstance]longGetWatchingCommercialsHours];
    displayHours = [NSNumberFormatter localizedStringFromNumber:@(hours)
                                                    numberStyle:NSNumberFormatterDecimalStyle];
    _labelCommercialsVal.text = displayHours;
    
    // having sex
    hours = [[Human humanInstance]longGetHavingSexHours];
    displayHours = [NSNumberFormatter localizedStringFromNumber:@(hours)
                                                    numberStyle:NSNumberFormatterDecimalStyle];
    _labelSexVal.text = displayHours;
    
    // eating
    hours = [[Human humanInstance]longGetEatingHours];
    displayHours = [NSNumberFormatter localizedStringFromNumber:@(hours)
                                                    numberStyle:NSNumberFormatterDecimalStyle];
    _labelEatingVal.text = displayHours;
    
    // bathroom
    hours = [[Human humanInstance]longGetBathroomHours];
    displayHours = [NSNumberFormatter localizedStringFromNumber:@(hours)
                                                    numberStyle:NSNumberFormatterDecimalStyle];
    _labelBathroomVal.text = displayHours;
    
    // toilet
    hours = [[Human humanInstance]longGetToiletHours];
    displayHours = [NSNumberFormatter localizedStringFromNumber:@(hours)
                                                    numberStyle:NSNumberFormatterDecimalStyle];
    _labelToiletVal.text = displayHours;
    
    // times laughed
    hours = [[Human humanInstance]longGetLaughedTimes];
    displayHours = [NSNumberFormatter localizedStringFromNumber:@(hours)
                                                    numberStyle:NSNumberFormatterDecimalStyle];
    _labelLaughedVal.text = displayHours;
    
    // liters of alcohol drunk
    hours = [[Human humanInstance]longGetAlcoholLiters];
    displayHours = [NSNumberFormatter localizedStringFromNumber:@(hours)
                                                    numberStyle:NSNumberFormatterDecimalStyle];
    _labelAlcoholVal.text = displayHours;
    
    // kissing
    hours = [[Human humanInstance]longGetKissingHours];
    displayHours = [NSNumberFormatter localizedStringFromNumber:@(hours)
                                                    numberStyle:NSNumberFormatterDecimalStyle];
    _labelKissingVal.text = displayHours;
    
    // coffees
    hours = [[Human humanInstance]longGetCoffeeTimes];
    displayHours = [NSNumberFormatter localizedStringFromNumber:@(hours)
                                                    numberStyle:NSNumberFormatterDecimalStyle];
    _labelCoffeesVal.text = displayHours;
    
    // indoor
    hours = [[Human humanInstance]longGetIndoorHours];
    displayHours = [NSNumberFormatter localizedStringFromNumber:@(hours)
                                                    numberStyle:NSNumberFormatterDecimalStyle];
    _labelIndoorVal.text = displayHours;
    
    // MEN - starring at women
    if([[Human humanInstance] m_boIsMan])
    {
    hours = [[Human humanInstance]longGetStarringWomenHours];
    displayHours = [NSNumberFormatter localizedStringFromNumber:@(hours)
                                                    numberStyle:NSNumberFormatterDecimalStyle];
    _labelStarringVal.text = displayHours;
    }
    else
    {
    
    // WOMEN - deciding what to wear
    hours = [[Human humanInstance]longGetDecidingWearHours];
    displayHours = [NSNumberFormatter localizedStringFromNumber:@(hours)
                                                    numberStyle:NSNumberFormatterDecimalStyle];
    _labelWearVal.text = displayHours;
    
    // WOMEN - shopping
    hours = [[Human humanInstance]longGetShoppingHours];
    displayHours = [NSNumberFormatter localizedStringFromNumber:@(hours)
                                                    numberStyle:NSNumberFormatterDecimalStyle];
    _labelShoppingVal.text = displayHours;
    
    // WOMEN - doing hair
    hours = [[Human humanInstance]longGetDoingHairHours];
    displayHours = [NSNumberFormatter localizedStringFromNumber:@(hours)
                                                    numberStyle:NSNumberFormatterDecimalStyle];
    _labelHairVal.text = displayHours;
    }
    
    // set the background color
    [[self view] setBackgroundColor:[UIColor colorWithRed:236.0f/255.0f
                                                    green:157.0f/255.0f
                                                     blue:242.0f/255.0f
                                                    alpha:1.0f]];
    
    // refresh the view
    [self.view setNeedsDisplay];

}


// ****************************** button MINUTES is pressed
-(void) butMinutesPressed
{
    // User Defaults
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    
    // set hours options
    NSString *option = [[NSString alloc]init];
    option = @"Hours";
    [defaults setObject:option forKey:@"DisplayOption"];
    
    // set values for text fields
    
    // living
    long minutes = [[Human humanInstance]longGetLivingMinutes];
    NSString *displayMinutes = [NSNumberFormatter localizedStringFromNumber:@(minutes)
                                                                numberStyle:NSNumberFormatterDecimalStyle];
    _labelLivingVal.text =  displayMinutes;
    
    // sleeping
    minutes = [[Human humanInstance]longGetSleepingMinutes];
    displayMinutes = [NSNumberFormatter localizedStringFromNumber:@(minutes)
                                                      numberStyle:NSNumberFormatterDecimalStyle];
    _labelSleepingVal.text = displayMinutes;
    
    // watching tv
    minutes = [[Human humanInstance]longGetWatchingTVMinutes];
    displayMinutes = [NSNumberFormatter localizedStringFromNumber:@(minutes)
                                                      numberStyle:NSNumberFormatterDecimalStyle];
    _labelTVVal.text = displayMinutes;
    
    // watching commercials
    minutes = [[Human humanInstance]longGetWatchingCommercialsMinutes];
    displayMinutes = [NSNumberFormatter localizedStringFromNumber:@(minutes)
                                                      numberStyle:NSNumberFormatterDecimalStyle];
    _labelCommercialsVal.text = displayMinutes;
    
    // having sex
    minutes = [[Human humanInstance]longGetHavingSexMinutes];
    displayMinutes = [NSNumberFormatter localizedStringFromNumber:@(minutes)
                                                      numberStyle:NSNumberFormatterDecimalStyle];
    _labelSexVal.text = displayMinutes;
    
    // eating
    minutes = [[Human humanInstance]longGetEatingMinutes];
    displayMinutes = [NSNumberFormatter localizedStringFromNumber:@(minutes)
                                                      numberStyle:NSNumberFormatterDecimalStyle];
    _labelEatingVal.text = displayMinutes;
    
    // bathroom
    minutes = [[Human humanInstance]longGetBathroomMinutes];
    displayMinutes = [NSNumberFormatter localizedStringFromNumber:@(minutes)
                                                      numberStyle:NSNumberFormatterDecimalStyle];
    _labelBathroomVal.text = displayMinutes;
    
    // toilet
    minutes = [[Human humanInstance]longGetToiletMinutes];
    displayMinutes = [NSNumberFormatter localizedStringFromNumber:@(minutes)
                                                      numberStyle:NSNumberFormatterDecimalStyle];
    _labelToiletVal.text = displayMinutes;
    
    // times laughed
    minutes = [[Human humanInstance]longGetLaughedTimes];
    displayMinutes = [NSNumberFormatter localizedStringFromNumber:@(minutes)
                                                      numberStyle:NSNumberFormatterDecimalStyle];
    _labelLaughedVal.text = displayMinutes;
    
    // liters of alcohol drunk
    minutes = [[Human humanInstance]longGetAlcoholLiters];
    displayMinutes = [NSNumberFormatter localizedStringFromNumber:@(minutes)
                                                      numberStyle:NSNumberFormatterDecimalStyle];
    _labelAlcoholVal.text = displayMinutes;
    
    // kissing
    minutes = [[Human humanInstance]longGetKissingMinutes];
    displayMinutes = [NSNumberFormatter localizedStringFromNumber:@(minutes)
                                                      numberStyle:NSNumberFormatterDecimalStyle];
    _labelKissingVal.text = displayMinutes;
    
    // coffees
    minutes = [[Human humanInstance]longGetCoffeeTimes];
    displayMinutes = [NSNumberFormatter localizedStringFromNumber:@(minutes)
                                                      numberStyle:NSNumberFormatterDecimalStyle];
    _labelCoffeesVal.text = displayMinutes;
    
    // indoor
    minutes = [[Human humanInstance]longGetIndoorMinutes];
    displayMinutes = [NSNumberFormatter localizedStringFromNumber:@(minutes)
                                                      numberStyle:NSNumberFormatterDecimalStyle];
    _labelIndoorVal.text = displayMinutes;
    
    // MEN - starring at women
    minutes = [[Human humanInstance]longGetStarringWomenMinutes];
    displayMinutes = [NSNumberFormatter localizedStringFromNumber:@(minutes)
                                                      numberStyle:NSNumberFormatterDecimalStyle];
    _labelStarringVal.text = displayMinutes;
    
    // WOMEN - deciding what to wear
    minutes = [[Human humanInstance]longGetDecidingWearMinutes];
    displayMinutes = [NSNumberFormatter localizedStringFromNumber:@(minutes)
                                                      numberStyle:NSNumberFormatterDecimalStyle];
    _labelWearVal.text = displayMinutes;
    
    // WOMEN - shopping
    minutes = [[Human humanInstance]longGetShoppingMinutes];
    displayMinutes = [NSNumberFormatter localizedStringFromNumber:@(minutes)
                                                      numberStyle:NSNumberFormatterDecimalStyle];
    _labelShoppingVal.text = displayMinutes;
    
    // WOMEN - doing hair
    minutes = [[Human humanInstance]longGetDoingHairMinutes];
    displayMinutes = [NSNumberFormatter localizedStringFromNumber:@(minutes)
                                                      numberStyle:NSNumberFormatterDecimalStyle];
    _labelHairVal.text = displayMinutes;
    
    // set the background color
    [[self view] setBackgroundColor:[UIColor colorWithRed:255.0f/255.0f
                                                    green:178.0f/255.0f
                                                     blue:102.0f/255.0f
                                                    alpha:1.0f]];
    
    // refresh the view
    [self.view setNeedsDisplay];
}

// ****************************** button DAYS is pressed
-(void) butDaysPressed
{
    // User Defaults
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    
    // set hours options
    NSString *option = [[NSString alloc]init];
    option = @"Days";
    [defaults setObject:option forKey:@"DisplayOption"];
    
    // set values for text fields
    
    // living
    float days = [[Human humanInstance]floatGetLivingDays];
    NSString *displayDays = [NSNumberFormatter localizedStringFromNumber:@(days)
                                                             numberStyle:NSNumberFormatterDecimalStyle];
    _labelLivingVal.text =  displayDays;
    
    // sleeping
    days = [[Human humanInstance]floatGetSleepingDays];
    displayDays = [NSNumberFormatter localizedStringFromNumber:@(days)
                                                   numberStyle:NSNumberFormatterDecimalStyle];
    _labelSleepingVal.text = displayDays;
    
    // watching tv
    days = [[Human humanInstance]floatGetWatchingTVDays];
    displayDays = [NSNumberFormatter localizedStringFromNumber:@(days)
                                                   numberStyle:NSNumberFormatterDecimalStyle];
    _labelTVVal.text = displayDays;
    
    // watching commercials
    days = [[Human humanInstance]floatGetWatchingCommercialsDays];
    displayDays = [NSNumberFormatter localizedStringFromNumber:@(days)
                                                   numberStyle:NSNumberFormatterDecimalStyle];
    _labelCommercialsVal.text = displayDays;
    
    // having sex
    days = [[Human humanInstance]floatGetHavingSexDays];
    displayDays = [NSNumberFormatter localizedStringFromNumber:@(days)
                                                   numberStyle:NSNumberFormatterDecimalStyle];
    _labelSexVal.text = displayDays;
    
    // eating
    days = [[Human humanInstance]floatGetEatingDays];
    displayDays = [NSNumberFormatter localizedStringFromNumber:@(days)
                                                   numberStyle:NSNumberFormatterDecimalStyle];
    _labelEatingVal.text = displayDays;
    
    // bathroom
    days = [[Human humanInstance]floatGetBathroomDays];
    displayDays = [NSNumberFormatter localizedStringFromNumber:@(days)
                                                   numberStyle:NSNumberFormatterDecimalStyle];
    _labelBathroomVal.text = displayDays;
    
    // toilet
    days = [[Human humanInstance]floatGetToiletDays];
    displayDays = [NSNumberFormatter localizedStringFromNumber:@(days)
                                                   numberStyle:NSNumberFormatterDecimalStyle];
    _labelToiletVal.text = displayDays;
    
    // times laughed
    days = [[Human humanInstance]longGetLaughedTimes];
    displayDays = [NSNumberFormatter localizedStringFromNumber:@(days)
                                                   numberStyle:NSNumberFormatterDecimalStyle];
    _labelLaughedVal.text = displayDays;
    
    // liters of alcohol drunk
    days = [[Human humanInstance]longGetAlcoholLiters];
    displayDays = [NSNumberFormatter localizedStringFromNumber:@(days)
                                                   numberStyle:NSNumberFormatterDecimalStyle];
    _labelAlcoholVal.text = displayDays;
    
    // kissing
    days = [[Human humanInstance]floatGetKissingDays];
    displayDays = [NSNumberFormatter localizedStringFromNumber:@(days)
                                                   numberStyle:NSNumberFormatterDecimalStyle];
    _labelKissingVal.text = displayDays;
    
    // coffees
    days = [[Human humanInstance]longGetCoffeeTimes];
    displayDays = [NSNumberFormatter localizedStringFromNumber:@(days)
                                                   numberStyle:NSNumberFormatterDecimalStyle];
    _labelCoffeesVal.text = displayDays;
    
    // indoor
    days = [[Human humanInstance]floatGetIndoorDays];
    displayDays = [NSNumberFormatter localizedStringFromNumber:@(days)
                                                   numberStyle:NSNumberFormatterDecimalStyle];
    _labelIndoorVal.text = displayDays;
    
    // MEN - starring at women
    days = [[Human humanInstance]floatGetStarringWomenDays];
    displayDays = [NSNumberFormatter localizedStringFromNumber:@(days)
                                                   numberStyle:NSNumberFormatterDecimalStyle];
    _labelStarringVal.text = displayDays;
    
    // WOMEN - deciding what to wear
    days = [[Human humanInstance]floatGetDecidingWearDays];
    displayDays = [NSNumberFormatter localizedStringFromNumber:@(days)
                                                   numberStyle:NSNumberFormatterDecimalStyle];
    _labelWearVal.text = displayDays;
    
    // WOMEN - shopping
    days = [[Human humanInstance]floatGetShoppingDays];
    displayDays = [NSNumberFormatter localizedStringFromNumber:@(days)
                                                   numberStyle:NSNumberFormatterDecimalStyle];
    _labelShoppingVal.text = displayDays;
    
    // WOMEN - doing hair
    days = [[Human humanInstance]floatGetDoingHairDays];
    displayDays = [NSNumberFormatter localizedStringFromNumber:@(days)
                                                   numberStyle:NSNumberFormatterDecimalStyle];
    _labelHairVal.text = displayDays;
    
    // set the background color
    [[self view] setBackgroundColor:[UIColor colorWithRed:102.0f/255.0f
                                                    green:178.0f/255.0f
                                                     blue:255.0f/255.0f
                                                    alpha:1.0f]];
    // refresh the view
    [self.view setNeedsDisplay];
}

// auto rotate == OFF
- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return NO;
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
