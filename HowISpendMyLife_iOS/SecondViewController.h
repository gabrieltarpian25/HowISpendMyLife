//
//  SecondViewController.h
//  HowISpendMyLife_iOS
//
//  Created by Tarpian Gabriel Lucian on 12/03/16.
//  Copyright © 2016 Tarpian Gabriel Lucian. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Human.h"

@interface SecondViewController : UIViewController


// buttons for days, hours, seconds
@property (nonatomic,strong) IBOutlet UIButton *butDays;
@property (nonatomic,strong) IBOutlet UIButton *butHours;
@property (nonatomic,strong) IBOutlet UIButton *butMinutes;

// Living time
@property (nonatomic,strong) IBOutlet UILabel *labelLiving;
@property (nonatomic,strong) IBOutlet UILabel *labelLivingVal;

// Sleeping
@property (nonatomic,strong) IBOutlet UILabel *labelSleeping;
@property (nonatomic,strong) IBOutlet UILabel *labelSleepingVal;

// Watching TV
@property (nonatomic,strong) IBOutlet UILabel *labelTV;
@property (nonatomic,strong) IBOutlet UILabel *labelTVVal;

// Watching Commercials
@property (nonatomic,strong) IBOutlet UILabel *labelCommercials;
@property (nonatomic,strong) IBOutlet UILabel *labelCommercialsVal;

// Having sex
@property (nonatomic,strong) IBOutlet UILabel *labelSex;
@property (nonatomic,strong) IBOutlet UILabel *labelSexVal;

// Eating
@property (nonatomic,strong) IBOutlet UILabel *labelEating;
@property (nonatomic,strong) IBOutlet UILabel *labelEatingVal;

// Bathroom
@property (nonatomic,strong) IBOutlet UILabel *labelBathroom;
@property (nonatomic,strong) IBOutlet UILabel *labelBathroomVal;

// Toilet
@property (nonatomic,strong) IBOutlet UILabel *labelToilet;
@property (nonatomic,strong) IBOutlet UILabel *labelToiletVal;

// Times laughed
@property (nonatomic,strong) IBOutlet UILabel *labelLaughed;
@property (nonatomic,strong) IBOutlet UILabel *labelLaughedVal;

// Literf of alcohol drinked
@property (nonatomic,strong) IBOutlet UILabel *labelAlcohol;
@property (nonatomic,strong) IBOutlet UILabel *labelAlcoholVal;

// Kissing
@property (nonatomic,strong) IBOutlet UILabel *labelKissing;
@property (nonatomic,strong) IBOutlet UILabel *labelKissingVal;

// Coffees you had
@property (nonatomic,strong) IBOutlet UILabel *labelCoffees;
@property (nonatomic,strong) IBOutlet UILabel *labelCoffeesVal;

// Hours worked
@property (nonatomic,strong) IBOutlet UILabel *labelWork;
@property (nonatomic,strong) IBOutlet UILabel *labelWorkVal;

// Indoor time
@property (nonatomic,strong) IBOutlet UILabel *labelIndoor;
@property (nonatomic,strong) IBOutlet UILabel *labelIndoorVal;

// WOMEN : Deciding what to wear
@property (nonatomic,strong) IBOutlet UILabel *labelWear;
@property (nonatomic,strong) IBOutlet UILabel *labelWearVal;

// WOMEN : Shopping
@property (nonatomic,strong) IBOutlet UILabel *labelShopping;
@property (nonatomic,strong) IBOutlet UILabel *labelShoppingVal;

// WOMEN : Doing hair
@property (nonatomic,strong) IBOutlet UILabel *labelHair;
@property (nonatomic,strong) IBOutlet UILabel *labelHairVal;

// MEN : Starring at women
@property (nonatomic,strong) IBOutlet UILabel *labelStarring;
@property (nonatomic,strong) IBOutlet UILabel *labelStarringVal;

@end
