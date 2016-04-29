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
    [_butDays setBackgroundColor:[UIColor colorWithRed:0.0f/255.0f
                                                 green:128.0f/255.0f
                                                  blue:255.0f/255.0f
                                                 alpha:1.0f]];
    
    // button for hours
    _butHours = [[UIButton alloc]initWithFrame:CGRectMake(145, 50, 70, 40)];
    [_butHours setTitle:@"Hours" forState:UIControlStateNormal];
    [_butHours addTarget:self action:@selector(butHoursPressed) forControlEvents:UIControlEventTouchUpInside];
    [_butHours setBackgroundColor:[UIColor purpleColor]];
    
    // button for minutes
    _butMinutes = [[UIButton alloc]initWithFrame:CGRectMake(240, 50, 80, 40)];
    [_butMinutes setTitle:@"Minutes" forState:UIControlStateNormal];
    [_butMinutes addTarget:self action:@selector(butMinutesPressed) forControlEvents:UIControlEventTouchUpInside];
    [_butMinutes setBackgroundColor:[UIColor orangeColor]];
    
    // initialize the labels
    _labelLivingVal =          [[UILabel alloc]initWithFrame:CGRectMake(10, 150, 100, 20)];
    _labelSleepingVal =        [[UILabel alloc]initWithFrame:CGRectMake(10, 180, 100, 20)];
    _labelTVVal =              [[UILabel alloc]initWithFrame:CGRectMake(10, 210, 100, 20)];
    _labelCommercialsVal =     [[UILabel alloc]initWithFrame:CGRectMake(10, 240, 100, 20)];
    _labelSexVal =             [[UILabel alloc]initWithFrame:CGRectMake(10, 270, 100, 20)];
    _labelEatingVal =          [[UILabel alloc] initWithFrame:CGRectMake(10, 300, 100, 20)];
    _labelBathroomVal =        [[UILabel alloc] initWithFrame:CGRectMake(10, 330, 100, 20)];
    _labelToiletVal =          [[UILabel alloc] initWithFrame:CGRectMake(10, 360, 100, 20)];
    _labelLaughedVal =         [[UILabel alloc] initWithFrame:CGRectMake(10, 390, 100, 20)];
    _labelAlcoholVal =         [[UILabel alloc] initWithFrame:CGRectMake(10, 420, 100, 20)];
    _labelKissingVal =         [[UILabel alloc] initWithFrame:CGRectMake(10, 450, 100, 20)];
    _labelCoffeesVal =          [[UILabel alloc] initWithFrame:CGRectMake(10, 480, 100, 20)];
    _labelIndoorVal =          [[UILabel alloc] initWithFrame:CGRectMake(10, 510, 100, 20)];
    _labelWearVal =            [[UILabel alloc] initWithFrame:CGRectMake(10, 540, 100, 20)];
    _labelShoppingVal =        [[UILabel alloc] initWithFrame:CGRectMake(10, 570, 100, 20)];
    _labelHairVal =            [[UILabel alloc] initWithFrame:CGRectMake(10, 600, 100, 20)];
    _labelStarringVal =        [[UILabel alloc] initWithFrame:CGRectMake(10, 630, 100, 20)];
    
    _labelLiving =             [[UILabel alloc] initWithFrame:CGRectMake(120, 150, 200, 20)];
    _labelLiving.text = @"Living";
    _labelSleeping =           [[UILabel alloc] initWithFrame:CGRectMake(120, 180, 200, 20)];
    _labelSleeping.text = @"Sleeping";
    _labelTV =                 [[UILabel alloc] initWithFrame:CGRectMake(120, 210, 200, 20)];
    _labelTV.text = @"Watching TV";
    _labelCommercials =        [[UILabel alloc] initWithFrame:CGRectMake(120, 240, 300, 20)];
    _labelCommercials.text = @"Watching commercials";
    _labelSex =                [[UILabel alloc] initWithFrame:CGRectMake(120, 270, 200, 20)];
    _labelSex.text = @"Having Sex";
    _labelEating =             [[UILabel alloc] initWithFrame:CGRectMake(120, 300, 200, 20)];
    _labelEating.text = @"Eating";
    _labelBathroom =           [[UILabel alloc] initWithFrame:CGRectMake(120, 330, 200, 20)];
    _labelBathroom.text = @"In the bathroom";
    _labelToilet =             [[UILabel alloc] initWithFrame:CGRectMake(120, 360, 200, 20)];
    _labelToilet.text = @"On the toilet";
    _labelLaughed =             [[UILabel alloc] initWithFrame:CGRectMake(120, 390, 200, 20)];
    _labelLaughed.text = @"Times laughed";
    _labelAlcohol =             [[UILabel alloc] initWithFrame:CGRectMake(120, 420, 200, 20)];
    _labelAlcohol.text = @"Liters of alcohol drunk";
    _labelKissing =             [[UILabel alloc] initWithFrame:CGRectMake(120, 450, 200, 20)];
    _labelKissing.text = @"Kissing";
    _labelCoffees =             [[UILabel alloc] initWithFrame:CGRectMake(120, 480, 200, 20)];
    _labelCoffees.text = @"Coffees";
    _labelIndoor =             [[UILabel alloc] initWithFrame:CGRectMake(120, 510, 200, 20)];
    _labelIndoor.text = @"Indoor";
    
    // men only
    _labelStarring =           [[UILabel alloc] initWithFrame:CGRectMake(120, 540, 200, 20)];
    _labelStarring.text = @"Starring at women";
    
    // women only
    _labelWear =               [[UILabel alloc] initWithFrame:CGRectMake(120, 570, 200, 20)];
    _labelWear.text = @"Deciding what to wear";
    _labelShopping =           [[UILabel alloc] initWithFrame:CGRectMake(120, 600, 200, 20)];
    _labelShopping.text = @"Shopping";
    _labelHair =                [[UILabel alloc] initWithFrame:CGRectMake(120, 630, 200, 20)];
    _labelHair.text = @"Doing your hair";
    
    
    // User Defaults
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    
    // get the date
    NSDate *d = [[NSDate alloc]init];
    d = [defaults objectForKey:@"Date"];
    
    // create human instance
    [[Human humanInstance] setM_poDateOfBirth:d];
    
    // get the display
    NSString *display = [defaults stringForKey:@"DisplayOption"];
    
    // *************************************************************** if option is MINUTES
    if ([display isEqualToString:@"Minutes"])
    {
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
    }
    
    
    // *************************************************************** if option is HOURS
    if ([display isEqualToString:@"Hours"])
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
        hours = [[Human humanInstance]longGetStarringWomenHours];
        displayHours = [NSNumberFormatter localizedStringFromNumber:@(hours)
                                                          numberStyle:NSNumberFormatterDecimalStyle];
        _labelStarringVal.text = displayHours;
        
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
        
        // set the background color
        [[self view] setBackgroundColor:[UIColor colorWithRed:236.0f/255.0f
                                                        green:157.0f/255.0f
                                                         blue:242.0f/255.0f
                                                        alpha:1.0f]];
    }
    
    // *************************************************************** if option is DAYS
    if ([display isEqualToString:@"Days"])
    {
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
    [[self view] addSubview:_labelStarringVal];
    [[self view] addSubview:_labelStarring];
    [[self view] addSubview:_labelWear];
    [[self view] addSubview:_labelWearVal];
    [[self view] addSubview:_labelHair];
    [[self view] addSubview:_labelHairVal];
    [[self view] addSubview:_labelShoppingVal];
    [[self view] addSubview:_labelShopping];

    //set date - only for tests
    //[defaults setObject:nil forKey:@"Date"];

    
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

// ****************************** button HOURS is pressed
-(void) butHoursPressed
{
    // User Defaults
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    
    // set hours options
    NSString *option = [[NSString alloc]init];
    option = @"Hours";
    [defaults setObject:option forKey:@"DisplayOption"];
    
    // remove values from labels
    _labelLivingVal.text = @"";
    _labelSleepingVal.text = @"";
    _labelTVVal.text = @"";
    _labelCommercialsVal.text =  @"";
    _labelSexVal.text =  @"";
    _labelEatingVal.text =  @"";
    _labelBathroomVal.text =  @"";
    _labelToiletVal.text =  @"";
    _labelLaughedVal.text =  @"";
    _labelAlcoholVal.text =  @"";
    _labelKissingVal.text =  @"";
    _labelCoffeesVal.text =  @"";
    _labelIndoorVal.text =  @"";
    _labelWearVal.text =  @"";
    _labelShoppingVal.text =  @"";
    _labelHairVal.text =  @"";
    _labelStarringVal.text =  @"";

    
    // reload the view
    [self viewDidLoad];
}

// ****************************** button MINUTES is pressed
-(void) butMinutesPressed
{
    // User Defaults
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    
    // set hours options
    NSString *option = [[NSString alloc]init];
    option = @"Minutes";
    [defaults setObject:option forKey:@"DisplayOption"];
    
    // remove the values from labels
    _labelLivingVal.text = @"";
    _labelSleepingVal.text = @"";
    _labelTVVal.text = @"";
    _labelCommercialsVal.text =  @"";
    _labelSexVal.text =  @"";
    _labelEatingVal.text =  @"";
    _labelBathroomVal.text =  @"";
    _labelToiletVal.text =  @"";
    _labelLaughedVal.text =  @"";
    _labelAlcoholVal.text =  @"";
    _labelKissingVal.text =  @"";
    _labelCoffeesVal.text =  @"";
    _labelIndoorVal.text =  @"";
    _labelWearVal.text =  @"";
    _labelShoppingVal.text =  @"";
    _labelHairVal.text =  @"";
    _labelStarringVal.text =  @"";
    
    // reload the view
    [self viewDidLoad];
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
    
    // remove the values from labels
    _labelLivingVal.text = @"";
    _labelSleepingVal.text = @"";
    _labelTVVal.text = @"";
    _labelCommercialsVal.text =  @"";
    _labelSexVal.text =  @"";
    _labelEatingVal.text =  @"";
    _labelBathroomVal.text =  @"";
    _labelToiletVal.text =  @"";
    _labelLaughedVal.text =  @"";
    _labelAlcoholVal.text =  @"";
    _labelKissingVal.text =  @"";
    _labelCoffeesVal.text =  @"";
    _labelIndoorVal.text =  @"";
    _labelWearVal.text =  @"";
    _labelShoppingVal.text =  @"";
    _labelHairVal.text =  @"";
    _labelStarringVal.text =  @"";
    
    // reload the view
    [self viewDidLoad];

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
