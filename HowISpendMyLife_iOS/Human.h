//
//  Human.h
//  HowISpendMyLife_iOS
//
//  Created by Tarpian Gabriel Lucian on 28/03/16.
//  Copyright © 2016 Tarpian Gabriel Lucian. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Human : NSObject

@property (nonatomic) NSDate *m_poDateOfBirth;
@property (nonatomic) bool m_boIsMan;
@property (nonatomic) bool m_boIsFirstTime;

+(id)humanInstance;
+(id) init;


-(float) floatGetSleepingDays;
-(long) longGetSleepingMinutes;
-(long) longGetSleepingHours;

-(float) floatGetLivingDays;
-(long) longGetLivingHours;
-(long) longGetLivingMinutes;

-(float) floatGetWatchingTVDays;
-(long) longGetWatchingTVHours;
-(long) longGetWatchingTVMinutes;

-(float) floatGetWatchingCommercialsDays;
-(long) longGetWatchingCommercialsHours;
-(long) longGetWatchingCommercialsMinutes;

-(float) floatGetHavingSexDays;
-(long) longGetHavingSexHours;
-(long) longGetHavingSexMinutes;

-(float) floatGetEatingDays;
-(long) longGetEatingHours;
-(long) longGetEatingMinutes;

-(float) floatGetBathroomDays;
-(long) longGetBathroomHours;
-(long) longGetBathroomMinutes;

-(float) floatGetToiletDays;
-(long) longGetToiletHours;
-(long) longGetToiletMinutes;

-(float) floatGetKissingDays;
-(long) longGetKissingHours;
-(long) longGetKissingMinutes;

-(float) floatGetWorkingDays;
-(long) longGetWorkingHours;
-(long) longGetWorkingMinutes;

-(float) floatGetIndoorDays;
-(long) longGetIndoorHours;
-(long) longGetIndoorMinutes;

-(float) floatGetDecidingWearDays;
-(long) longGetDecidingWearHours;
-(long) longGetDecidingWearMinutes;

-(float) floatGetStarringWomenDays;
-(long) longGetStarringWomenHours;
-(long) longGetStarringWomenMinutes;

-(float) floatGetDoingHairDays;
-(long) longGetDoingHairHours;
-(long) longGetDoingHairMinutes;

-(float) floatGetShoppingDays;
-(long) longGetShoppingHours;
-(long) longGetShoppingMinutes;


-(long) longGetLaughedTimes;
-(long) longGetAlcoholLiters;
-(long) longGetCoffeeTimes;

@end
