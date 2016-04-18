//
//  Human.m
//  HowISpendMyLife_iOS
//
//  Created by Tarpian Gabriel Lucian on 28/03/16.
//  Copyright © 2016 Tarpian Gabriel Lucian. All rights reserved.
//

#import "Human.h"

@implementation Human

+(id)humanInstance
{
    static Human *instance = NULL;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
        instance.m_poDateOfBirth = [[NSDate alloc]init];
        instance.m_boIsMan = false;
        instance.m_boIsFirstTime = true;
    });
    return instance;
}

+(id) init
{
    return [super init];
}


#pragma mark Days

//------------------------ floatGetSleepingDays ---------------------------------------------------
-(float) floatGetSleepingDays
{
    NSDate *fromDate;
    NSDate *toDate;
    
    NSCalendar *currCalendar=[NSCalendar currentCalendar];
    
    [currCalendar rangeOfUnit:NSCalendarUnitDay startDate:&fromDate
                     interval:NULL forDate:self.m_poDateOfBirth];
    [currCalendar rangeOfUnit:NSCalendarUnitDay startDate:&toDate
                     interval:NULL forDate:[NSDate date]];
    
    NSDateComponents *difference = [currCalendar components:NSCalendarUnitDay
                                                   fromDate:fromDate toDate:toDate options:0];
    
    float days=[difference day] * 0.33; // 33 %
    return days;
}
//--------------------------------------------------------------------------------------------

//------------------------ floatGetLivingDays ---------------------------------------------------
-(float) floatGetLivingDays
{
    NSDate *fromDate;
    NSDate *toDate;
    
    NSCalendar *currCalendar=[NSCalendar currentCalendar];
    
    [currCalendar rangeOfUnit:NSCalendarUnitDay startDate:&fromDate
                     interval:NULL forDate:self.m_poDateOfBirth];
    [currCalendar rangeOfUnit:NSCalendarUnitDay startDate:&toDate
                     interval:NULL forDate:[NSDate date]];
    
    NSDateComponents *difference = [currCalendar components:NSCalendarUnitDay
                                                   fromDate:fromDate toDate:toDate options:0];
    
    float days=[difference day];
    return days;
}
//------------------------------------------------------------------------------------------------

//------------------------ floatGetWatchingTVDays ---------------------------------------------------
-(float) floatGetWatchingTVDays
{
    NSDate *fromDate;
    NSDate *toDate;
    
    NSCalendar *currCalendar=[NSCalendar currentCalendar];
    
    [currCalendar rangeOfUnit:NSCalendarUnitDay startDate:&fromDate
                     interval:NULL forDate:self.m_poDateOfBirth];
    [currCalendar rangeOfUnit:NSCalendarUnitDay startDate:&toDate
                     interval:NULL forDate:[NSDate date]];
    
    NSDateComponents *difference = [currCalendar components:NSCalendarUnitDay
                                                   fromDate:fromDate toDate:toDate options:0];
    
    float days=[difference day]*0.09; // 9 %
    return days;
}

//------------------------ floatGetWatchingCommercialsDays ---------------------------------------------------
-(float) floatGetWatchingCommercialsDays
{
    NSDate *fromDate;
    NSDate *toDate;
    
    NSCalendar *currCalendar=[NSCalendar currentCalendar];
    
    [currCalendar rangeOfUnit:NSCalendarUnitDay startDate:&fromDate
                     interval:NULL forDate:self.m_poDateOfBirth];
    [currCalendar rangeOfUnit:NSCalendarUnitDay startDate:&toDate
                     interval:NULL forDate:[NSDate date]];
    
    NSDateComponents *difference = [currCalendar components:NSCalendarUnitDay
                                                   fromDate:fromDate toDate:toDate options:0];
    
    float days=[difference day]*0.02; // 2 %
    return days;
}

//------------------------ floatGetHavingSexDays ---------------------------------------------------
-(float) floatGetHavingSexDays
{
    NSDate *fromDate;
    NSDate *toDate;
    
    NSCalendar *currCalendar=[NSCalendar currentCalendar];
    
    //get the date when reaches 18 years old
    NSDateComponents *components = [[NSCalendar currentCalendar] components:NSCalendarUnitDay | NSCalendarUnitMonth | NSCalendarUnitYear fromDate:self.m_poDateOfBirth];
    
    long year=[components year]+18;
    
    NSDateComponents *dc=[[NSDateComponents alloc]init];
    [dc setDay:[components day]];
    [dc setMonth:[components month]];
    [dc setYear:year];
    NSDate *d=[[NSCalendar currentCalendar]dateFromComponents:dc];
    
    
    [currCalendar rangeOfUnit:NSCalendarUnitDay startDate:&fromDate
                     interval:NULL forDate:d];
    [currCalendar rangeOfUnit:NSCalendarUnitDay startDate:&toDate
                     interval:NULL forDate:[NSDate date]];
    
    NSDateComponents *difference = [currCalendar components:NSCalendarUnitDay
                                                   fromDate:fromDate toDate:toDate options:0];
    
    float days=[difference day]*0.0015; // 0.15 %
    return days;
}

//------------------------ floatGetEatingDays ---------------------------------------------------
-(float) floatGetEatingDays
{
    NSDate *fromDate;
    NSDate *toDate;
    
    NSCalendar *currCalendar=[NSCalendar currentCalendar];
    
    [currCalendar rangeOfUnit:NSCalendarUnitDay startDate:&fromDate
                     interval:NULL forDate:self.m_poDateOfBirth];
    [currCalendar rangeOfUnit:NSCalendarUnitDay startDate:&toDate
                     interval:NULL forDate:[NSDate date]];
    
    NSDateComponents *difference = [currCalendar components:NSCalendarUnitDay
                                                   fromDate:fromDate toDate:toDate options:0];
    
    float days=[difference day]*0.04; // 4 %
    return days;
}

//------------------------ floatGetBathroomDays ---------------------------------------------------
-(float) floatGetBathroomDays
{
    NSDate *fromDate;
    NSDate *toDate;
    
    NSCalendar *currCalendar=[NSCalendar currentCalendar];
    
    [currCalendar rangeOfUnit:NSCalendarUnitDay startDate:&fromDate
                     interval:NULL forDate:self.m_poDateOfBirth];
    [currCalendar rangeOfUnit:NSCalendarUnitDay startDate:&toDate
                     interval:NULL forDate:[NSDate date]];
    
    NSDateComponents *difference = [currCalendar components:NSCalendarUnitDay
                                                   fromDate:fromDate toDate:toDate options:0];
    
    float days=[difference day]*0.02; // 2 %
    return days;
}

//------------------------ floatGetToiletDays ---------------------------------------------------
-(float) floatGetToiletDays
{
    NSDate *fromDate;
    NSDate *toDate;
    
    NSCalendar *currCalendar=[NSCalendar currentCalendar];
    
    [currCalendar rangeOfUnit:NSCalendarUnitDay startDate:&fromDate
                     interval:NULL forDate:self.m_poDateOfBirth];
    [currCalendar rangeOfUnit:NSCalendarUnitDay startDate:&toDate
                     interval:NULL forDate:[NSDate date]];
    
    NSDateComponents *difference = [currCalendar components:NSCalendarUnitDay
                                                   fromDate:fromDate toDate:toDate options:0];
    
    float days=[difference day]*0.003; // 0.30 %
    return days;
}

//------------------------ floatGetKissingDays ---------------------------------------------------
-(float) floatGetKissingDays
{
    NSDate *fromDate;
    NSDate *toDate;
    
    NSCalendar *currCalendar=[NSCalendar currentCalendar];
    
    [currCalendar rangeOfUnit:NSCalendarUnitDay startDate:&fromDate
                     interval:NULL forDate:self.m_poDateOfBirth];
    [currCalendar rangeOfUnit:NSCalendarUnitDay startDate:&toDate
                     interval:NULL forDate:[NSDate date]];
    
    NSDateComponents *difference = [currCalendar components:NSCalendarUnitDay
                                                   fromDate:fromDate toDate:toDate options:0];
    
    float days=[difference day]*0.0004; // 0.04 %
    return days;
}

//------------------------ floatGetWorkingDays ---------------------------------------------------
-(float) floatGetWorkingDays
{
    NSDate *fromDate;
    NSDate *toDate;
    
    NSCalendar *currCalendar=[NSCalendar currentCalendar];
    
    //get the date when reaches 21 years old
    NSDateComponents *components = [[NSCalendar currentCalendar] components:NSCalendarUnitDay | NSCalendarUnitMonth | NSCalendarUnitYear fromDate:self.m_poDateOfBirth];
    
    long year=[components year]+21;
    
    NSDateComponents *dc=[[NSDateComponents alloc]init];
    [dc setDay:[components day]];
    [dc setMonth:[components month]];
    [dc setYear:year];
    NSDate *d=[[NSCalendar currentCalendar]dateFromComponents:dc];
    
    
    [currCalendar rangeOfUnit:NSCalendarUnitDay startDate:&fromDate
                     interval:NULL forDate:d];
    [currCalendar rangeOfUnit:NSCalendarUnitDay startDate:&toDate
                     interval:NULL forDate:[NSDate date]];
    
    NSDateComponents *difference = [currCalendar components:NSCalendarUnitDay
                                                   fromDate:fromDate toDate:toDate options:0];
    
    float days=[difference day]*0.25; // 25 %
    return days;
}

//------------------------ floatGetIndoorDays ---------------------------------------------------
-(float) floatGetIndoorDays
{
    NSDate *fromDate;
    NSDate *toDate;
    
    NSCalendar *currCalendar=[NSCalendar currentCalendar];
    
    [currCalendar rangeOfUnit:NSCalendarUnitDay startDate:&fromDate
                     interval:NULL forDate:self.m_poDateOfBirth];
    [currCalendar rangeOfUnit:NSCalendarUnitDay startDate:&toDate
                     interval:NULL forDate:[NSDate date]];
    
    NSDateComponents *difference = [currCalendar components:NSCalendarUnitDay
                                                   fromDate:fromDate toDate:toDate options:0];
    
    float days=[difference day]*0.90; // 90 %
    return days;
}

//------------------------ floatGetDecidingWearDays ---------------------------------------------------
-(float) floatGetDecidingWearDays
{
    NSDate *fromDate;
    NSDate *toDate;
    
    NSCalendar *currCalendar=[NSCalendar currentCalendar];
    
    //get the date when reaches 14 years old
    NSDateComponents *components = [[NSCalendar currentCalendar] components:NSCalendarUnitDay | NSCalendarUnitMonth | NSCalendarUnitYear fromDate:self.m_poDateOfBirth];
    
    long year=[components year]+16;
    
    NSDateComponents *dc=[[NSDateComponents alloc]init];
    [dc setDay:[components day]];
    [dc setMonth:[components month]];
    [dc setYear:year];
    NSDate *d=[[NSCalendar currentCalendar]dateFromComponents:dc];
    
    
    [currCalendar rangeOfUnit:NSCalendarUnitDay startDate:&fromDate
                     interval:NULL forDate:d];
    [currCalendar rangeOfUnit:NSCalendarUnitDay startDate:&toDate
                     interval:NULL forDate:[NSDate date]];
    
    NSDateComponents *difference = [currCalendar components:NSCalendarUnitDay
                                                   fromDate:fromDate toDate:toDate options:0];
    
    float days=[difference day]*0.01; // 1 %
    return days;
}

//------------------------ floatGetStarringWomenDays ---------------------------------------------------
-(float) floatGetStarringWomenDays
{
    NSDate *fromDate;
    NSDate *toDate;
    
    NSCalendar *currCalendar=[NSCalendar currentCalendar];
    
    //get the date when reaches 14 years old
    NSDateComponents *components = [[NSCalendar currentCalendar] components:NSCalendarUnitDay | NSCalendarUnitMonth | NSCalendarUnitYear fromDate:self.m_poDateOfBirth];
    
    long year=[components year]+14;
    
    NSDateComponents *dc=[[NSDateComponents alloc]init];
    [dc setDay:[components day]];
    [dc setMonth:[components month]];
    [dc setYear:year];
    NSDate *d=[[NSCalendar currentCalendar]dateFromComponents:dc];
    
    
    [currCalendar rangeOfUnit:NSCalendarUnitDay startDate:&fromDate
                     interval:NULL forDate:d];
    [currCalendar rangeOfUnit:NSCalendarUnitDay startDate:&toDate
                     interval:NULL forDate:[NSDate date]];
    
    NSDateComponents *difference = [currCalendar components:NSCalendarUnitDay
                                                   fromDate:fromDate toDate:toDate options:0];
    
    float days=[difference day]*0.01; // 1 %
    return days;
}

//------------------------ floatGetDoingHairDays ---------------------------------------------------
-(float) floatGetDoingHairDays
{
    NSDate *fromDate;
    NSDate *toDate;
    
    NSCalendar *currCalendar=[NSCalendar currentCalendar];
    
    //get the date when reaches 14 years old
    NSDateComponents *components = [[NSCalendar currentCalendar] components:NSCalendarUnitDay | NSCalendarUnitMonth | NSCalendarUnitYear fromDate:self.m_poDateOfBirth];
    
    long year=[components year]+14;
    
    NSDateComponents *dc=[[NSDateComponents alloc]init];
    [dc setDay:[components day]];
    [dc setMonth:[components month]];
    [dc setYear:year];
    NSDate *d=[[NSCalendar currentCalendar]dateFromComponents:dc];
    
    
    [currCalendar rangeOfUnit:NSCalendarUnitDay startDate:&fromDate
                     interval:NULL forDate:d];
    [currCalendar rangeOfUnit:NSCalendarUnitDay startDate:&toDate
                     interval:NULL forDate:[NSDate date]];
    
    NSDateComponents *difference = [currCalendar components:NSCalendarUnitDay
                                                   fromDate:fromDate toDate:toDate options:0];
    
    float days=[difference day]*0.02; // 2 %
    return days;
}

//------------------------ floatGetShoppingDays ---------------------------------------------------
-(float) floatGetShoppingDays
{
    NSDate *fromDate;
    NSDate *toDate;
    
    NSCalendar *currCalendar=[NSCalendar currentCalendar];
    
    //get the date when reaches 18 years old
    NSDateComponents *components = [[NSCalendar currentCalendar] components:NSCalendarUnitDay | NSCalendarUnitMonth | NSCalendarUnitYear fromDate:self.m_poDateOfBirth];
    
    long year=[components year]+18;
    
    NSDateComponents *dc=[[NSDateComponents alloc]init];
    [dc setDay:[components day]];
    [dc setMonth:[components month]];
    [dc setYear:year];
    NSDate *d=[[NSCalendar currentCalendar]dateFromComponents:dc];
    
    
    [currCalendar rangeOfUnit:NSCalendarUnitDay startDate:&fromDate
                     interval:NULL forDate:d];
    [currCalendar rangeOfUnit:NSCalendarUnitDay startDate:&toDate
                     interval:NULL forDate:[NSDate date]];
    
    NSDateComponents *difference = [currCalendar components:NSCalendarUnitDay
                                                   fromDate:fromDate toDate:toDate options:0];
    
    float days=[difference day]*0.03; // 3 %
    return days;
}




#pragma mark Hours



//------------------------ longGetLivingHours ---------------------------------------------------
-(long) longGetLivingHours
{
    
    NSDate *fromDate;
    NSDate *toDate;
    long hours=-1;
    
    NSCalendar *currCalendar=[NSCalendar currentCalendar];
    
    [currCalendar rangeOfUnit:NSCalendarUnitHour startDate:&fromDate
                     interval:NULL forDate:self.m_poDateOfBirth];
    [currCalendar rangeOfUnit:NSCalendarUnitHour startDate:&toDate
                     interval:NULL forDate:[NSDate date]];
    
    NSDateComponents *difference = [currCalendar components:NSCalendarUnitHour
                                                   fromDate:fromDate toDate:toDate options:0];
    
    hours=[difference hour];
    return hours;
    
    
}
//------------------------------------------------------------------------------------------------

//------------------------ longGetSleepingHours ---------------------------------------------------
-(long) longGetSleepingHours
{
    NSDate *fromDate;
    NSDate *toDate;
    long hours=-1;
    
    NSCalendar *currCalendar=[NSCalendar currentCalendar];
    
    [currCalendar rangeOfUnit:NSCalendarUnitHour startDate:&fromDate
                     interval:NULL forDate:self.m_poDateOfBirth];
    [currCalendar rangeOfUnit:NSCalendarUnitHour startDate:&toDate
                     interval:NULL forDate:[NSDate date]];
    
    NSDateComponents *difference = [currCalendar components:NSCalendarUnitHour
                                                   fromDate:fromDate toDate:toDate options:0];
    
    hours=[difference hour]*0.33; // 33 %
    return hours;
    
}
//------------------------------------------------------------------------------------------------

//------------------------ longGetWatchingTVHours ---------------------------------------------------
-(long) longGetWatchingTVHours
{
    NSDate *fromDate;
    NSDate *toDate;
    long hours=-1;
    
    NSCalendar *currCalendar=[NSCalendar currentCalendar];
    
    [currCalendar rangeOfUnit:NSCalendarUnitHour startDate:&fromDate
                     interval:NULL forDate:self.m_poDateOfBirth];
    [currCalendar rangeOfUnit:NSCalendarUnitHour startDate:&toDate
                     interval:NULL forDate:[NSDate date]];
    
    NSDateComponents *difference = [currCalendar components:NSCalendarUnitHour
                                                   fromDate:fromDate toDate:toDate options:0];
    
    hours=[difference hour]*0.09; // 9 %
    return hours;
}

//------------------------ longGetWatchingTVHours ---------------------------------------------------
-(long) longGetWatchingCommercialsHours
{
    NSDate *fromDate;
    NSDate *toDate;
    long hours=-1;
    
    NSCalendar *currCalendar=[NSCalendar currentCalendar];
    
    [currCalendar rangeOfUnit:NSCalendarUnitHour startDate:&fromDate
                     interval:NULL forDate:self.m_poDateOfBirth];
    [currCalendar rangeOfUnit:NSCalendarUnitHour startDate:&toDate
                     interval:NULL forDate:[NSDate date]];
    
    NSDateComponents *difference = [currCalendar components:NSCalendarUnitHour
                                                   fromDate:fromDate toDate:toDate options:0];
    
    hours=[difference hour]*0.02; // 2 %
    return hours;
}

//------------------------ longGetHavingSexHours ---------------------------------------------------
-(long) longGetHavingSexHours
{
    NSDate *fromDate;
    NSDate *toDate;
    long hours=-1;
    
    NSCalendar *currCalendar=[NSCalendar currentCalendar];
    
    NSDateComponents *components = [[NSCalendar currentCalendar] components:NSCalendarUnitDay | NSCalendarUnitMonth | NSCalendarUnitYear fromDate:self.m_poDateOfBirth];
    
    long year=[components year]+18;
    
    NSDateComponents *dc=[[NSDateComponents alloc]init];
    [dc setDay:[components day]];
    [dc setMonth:[components month]];
    [dc setYear:year];
    NSDate *d=[[NSCalendar currentCalendar]dateFromComponents:dc];
    
    
    [currCalendar rangeOfUnit:NSCalendarUnitHour startDate:&fromDate
                     interval:NULL forDate:d];
    [currCalendar rangeOfUnit:NSCalendarUnitHour startDate:&toDate
                     interval:NULL forDate:[NSDate date]];
    
    NSDateComponents *difference = [currCalendar components:NSCalendarUnitHour
                                                   fromDate:fromDate toDate:toDate options:0];
    
    hours=[difference hour]*0.0015; // 0.15 %
    return hours;
}

//------------------------ longGetEatingHours ---------------------------------------------------
-(long) longGetEatingHours
{
    NSDate *fromDate;
    NSDate *toDate;
    long hours=-1;
    
    NSCalendar *currCalendar=[NSCalendar currentCalendar];
    
    [currCalendar rangeOfUnit:NSCalendarUnitHour startDate:&fromDate
                     interval:NULL forDate:self.m_poDateOfBirth];
    [currCalendar rangeOfUnit:NSCalendarUnitHour startDate:&toDate
                     interval:NULL forDate:[NSDate date]];
    
    NSDateComponents *difference = [currCalendar components:NSCalendarUnitHour
                                                   fromDate:fromDate toDate:toDate options:0];
    
    hours=[difference hour]*0.04; // 4 %
    return hours;
}

//------------------------ longGetBathroomHours ---------------------------------------------------
-(long) longGetBathroomHours
{
    NSDate *fromDate;
    NSDate *toDate;
    long hours=-1;
    
    NSCalendar *currCalendar=[NSCalendar currentCalendar];
    
    [currCalendar rangeOfUnit:NSCalendarUnitHour startDate:&fromDate
                     interval:NULL forDate:self.m_poDateOfBirth];
    [currCalendar rangeOfUnit:NSCalendarUnitHour startDate:&toDate
                     interval:NULL forDate:[NSDate date]];
    
    NSDateComponents *difference = [currCalendar components:NSCalendarUnitHour
                                                   fromDate:fromDate toDate:toDate options:0];
    
    hours=[difference hour]*0.02; // 2 %
    return hours;
}

//------------------------ longGetToiletHours ---------------------------------------------------
-(long) longGetToiletHours
{
    NSDate *fromDate;
    NSDate *toDate;
    long hours=-1;
    
    NSCalendar *currCalendar=[NSCalendar currentCalendar];
    
    [currCalendar rangeOfUnit:NSCalendarUnitHour startDate:&fromDate
                     interval:NULL forDate:self.m_poDateOfBirth];
    [currCalendar rangeOfUnit:NSCalendarUnitHour startDate:&toDate
                     interval:NULL forDate:[NSDate date]];
    
    NSDateComponents *difference = [currCalendar components:NSCalendarUnitHour
                                                   fromDate:fromDate toDate:toDate options:0];
    
    hours=[difference hour]*0.003; // 0.3 %
    return hours;
}

//------------------------ longGetKissingHours ---------------------------------------------------
-(long) longGetKissingHours
{
    NSDate *fromDate;
    NSDate *toDate;
    long hours=-1;
    
    NSCalendar *currCalendar=[NSCalendar currentCalendar];
    
    [currCalendar rangeOfUnit:NSCalendarUnitHour startDate:&fromDate
                     interval:NULL forDate:self.m_poDateOfBirth];
    [currCalendar rangeOfUnit:NSCalendarUnitHour startDate:&toDate
                     interval:NULL forDate:[NSDate date]];
    
    NSDateComponents *difference = [currCalendar components:NSCalendarUnitHour
                                                   fromDate:fromDate toDate:toDate options:0];
    
    hours=[difference hour]*0.0004; // 0.04 %
    return hours;
}

//------------------------ longGetWorkingHours ---------------------------------------------------
-(long) longGetWorkingHours
{
    NSDate *fromDate;
    NSDate *toDate;
    long hours=-1;
    
    NSCalendar *currCalendar=[NSCalendar currentCalendar];
    
    NSDateComponents *components = [[NSCalendar currentCalendar] components:NSCalendarUnitDay | NSCalendarUnitMonth | NSCalendarUnitYear fromDate:self.m_poDateOfBirth];
    
    long year=[components year]+21;
    
    NSDateComponents *dc=[[NSDateComponents alloc]init];
    [dc setDay:[components day]];
    [dc setMonth:[components month]];
    [dc setYear:year];
    NSDate *d=[[NSCalendar currentCalendar]dateFromComponents:dc];
    
    
    [currCalendar rangeOfUnit:NSCalendarUnitHour startDate:&fromDate
                     interval:NULL forDate:d];
    [currCalendar rangeOfUnit:NSCalendarUnitHour startDate:&toDate
                     interval:NULL forDate:[NSDate date]];
    
    NSDateComponents *difference = [currCalendar components:NSCalendarUnitHour
                                                   fromDate:fromDate toDate:toDate options:0];
    
    hours=[difference hour]*0.25; // 25 %
    return hours;
}

//------------------------ longGetIndoorHours ---------------------------------------------------
-(long) longGetIndoorHours
{
    NSDate *fromDate;
    NSDate *toDate;
    long hours=-1;
    
    NSCalendar *currCalendar=[NSCalendar currentCalendar];
    
    [currCalendar rangeOfUnit:NSCalendarUnitHour startDate:&fromDate
                     interval:NULL forDate:self.m_poDateOfBirth];
    [currCalendar rangeOfUnit:NSCalendarUnitHour startDate:&toDate
                     interval:NULL forDate:[NSDate date]];
    
    NSDateComponents *difference = [currCalendar components:NSCalendarUnitHour
                                                   fromDate:fromDate toDate:toDate options:0];
    
    hours=[difference hour]*0.90; // 90 %
    return hours;
}

//------------------------ longGetDecidingWearHours ---------------------------------------------------
-(long) longGetDecidingWearHours
{
    NSDate *fromDate;
    NSDate *toDate;
    long hours=-1;
    
    NSCalendar *currCalendar=[NSCalendar currentCalendar];
    
    NSDateComponents *components = [[NSCalendar currentCalendar] components:NSCalendarUnitDay | NSCalendarUnitMonth | NSCalendarUnitYear fromDate:self.m_poDateOfBirth];
    
    long year=[components year]+16;
    
    NSDateComponents *dc=[[NSDateComponents alloc]init];
    [dc setDay:[components day]];
    [dc setMonth:[components month]];
    [dc setYear:year];
    NSDate *d=[[NSCalendar currentCalendar]dateFromComponents:dc];
    
    
    [currCalendar rangeOfUnit:NSCalendarUnitHour startDate:&fromDate
                     interval:NULL forDate:d];
    [currCalendar rangeOfUnit:NSCalendarUnitHour startDate:&toDate
                     interval:NULL forDate:[NSDate date]];
    
    NSDateComponents *difference = [currCalendar components:NSCalendarUnitHour
                                                   fromDate:fromDate toDate:toDate options:0];
    
    hours=[difference hour]*0.01; // 1 %
    return hours;
}

//------------------------ longGetStarringWomenHours ---------------------------------------------------
-(long) longGetStarringWomenHours
{
    NSDate *fromDate;
    NSDate *toDate;
    long hours=-1;
    
    NSCalendar *currCalendar=[NSCalendar currentCalendar];
    
    NSDateComponents *components = [[NSCalendar currentCalendar] components:NSCalendarUnitDay | NSCalendarUnitMonth | NSCalendarUnitYear fromDate:self.m_poDateOfBirth];
    
    long year=[components year]+14;
    
    NSDateComponents *dc=[[NSDateComponents alloc]init];
    [dc setDay:[components day]];
    [dc setMonth:[components month]];
    [dc setYear:year];
    NSDate *d=[[NSCalendar currentCalendar]dateFromComponents:dc];
    
    
    [currCalendar rangeOfUnit:NSCalendarUnitHour startDate:&fromDate
                     interval:NULL forDate:d];
    [currCalendar rangeOfUnit:NSCalendarUnitHour startDate:&toDate
                     interval:NULL forDate:[NSDate date]];
    
    NSDateComponents *difference = [currCalendar components:NSCalendarUnitHour
                                                   fromDate:fromDate toDate:toDate options:0];
    
    hours=[difference hour]*0.01; // 1 %
    return hours;
}

//------------------------ longGetDoingHairHours ---------------------------------------------------
-(long) longGetDoingHairHours
{
    NSDate *fromDate;
    NSDate *toDate;
    long hours=-1;
    
    NSCalendar *currCalendar=[NSCalendar currentCalendar];
    
    NSDateComponents *components = [[NSCalendar currentCalendar] components:NSCalendarUnitDay | NSCalendarUnitMonth | NSCalendarUnitYear fromDate:self.m_poDateOfBirth];
    
    long year=[components year]+14;
    
    NSDateComponents *dc=[[NSDateComponents alloc]init];
    [dc setDay:[components day]];
    [dc setMonth:[components month]];
    [dc setYear:year];
    NSDate *d=[[NSCalendar currentCalendar]dateFromComponents:dc];
    
    
    [currCalendar rangeOfUnit:NSCalendarUnitHour startDate:&fromDate
                     interval:NULL forDate:d];
    [currCalendar rangeOfUnit:NSCalendarUnitHour startDate:&toDate
                     interval:NULL forDate:[NSDate date]];
    
    NSDateComponents *difference = [currCalendar components:NSCalendarUnitHour
                                                   fromDate:fromDate toDate:toDate options:0];
    
    hours=[difference hour]*0.02; // 2 %
    return hours;
}

//------------------------ longGetShoppingHours ---------------------------------------------------
-(long) longGetShoppingHours
{
    NSDate *fromDate;
    NSDate *toDate;
    long hours=-1;
    
    NSCalendar *currCalendar=[NSCalendar currentCalendar];
    
    NSDateComponents *components = [[NSCalendar currentCalendar] components:NSCalendarUnitDay | NSCalendarUnitMonth | NSCalendarUnitYear fromDate:self.m_poDateOfBirth];
    
    long year=[components year]+18;
    
    NSDateComponents *dc=[[NSDateComponents alloc]init];
    [dc setDay:[components day]];
    [dc setMonth:[components month]];
    [dc setYear:year];
    NSDate *d=[[NSCalendar currentCalendar]dateFromComponents:dc];
    
    
    [currCalendar rangeOfUnit:NSCalendarUnitHour startDate:&fromDate
                     interval:NULL forDate:d];
    [currCalendar rangeOfUnit:NSCalendarUnitHour startDate:&toDate
                     interval:NULL forDate:[NSDate date]];
    
    NSDateComponents *difference = [currCalendar components:NSCalendarUnitHour
                                                   fromDate:fromDate toDate:toDate options:0];
    
    hours=[difference hour]*0.03; // 3 %
    return hours;
}




#pragma mark Minutes



//------------------------ longGetLivingMinutes ---------------------------------------------------
-(long) longGetLivingMinutes
{
    NSDate *fromDate;
    NSDate *toDate;
    long minutes=-1;
    
    NSCalendar *currCalendar=[NSCalendar currentCalendar];
    
    [currCalendar rangeOfUnit:NSCalendarUnitMinute startDate:&fromDate
                     interval:NULL forDate:self.m_poDateOfBirth];
    [currCalendar rangeOfUnit:NSCalendarUnitMinute startDate:&toDate
                     interval:NULL forDate:[NSDate date]];
    
    NSDateComponents *difference = [currCalendar components:NSCalendarUnitMinute
                                                   fromDate:fromDate toDate:toDate options:0];
    
    
    minutes=[difference minute];
    return minutes;
}
//------------------------------------------------------------------------------------------------


//------------------------ longGetSleepingMinutes ---------------------------------------------------
-(long) longGetSleepingMinutes
{
    NSDate *fromDate;
    NSDate *toDate;
    long minutes=-1;
    
    NSCalendar *currCalendar=[NSCalendar currentCalendar];
    
    [currCalendar rangeOfUnit:NSCalendarUnitMinute startDate:&fromDate
                     interval:NULL forDate:self.m_poDateOfBirth];
    [currCalendar rangeOfUnit:NSCalendarUnitMinute startDate:&toDate
                     interval:NULL forDate:[NSDate date]];
    
    NSDateComponents *difference = [currCalendar components:NSCalendarUnitMinute
                                                   fromDate:fromDate toDate:toDate options:0];
    
    
    minutes=[difference minute]*0.33; // 33 % of the time
    return minutes;
}
//------------------------------------------------------------------------------------------------

//------------------------ longGetWatchingTVMinutes ---------------------------------------------------
-(long) longGetWatchingTVMinutes
{
    NSDate *fromDate;
    NSDate *toDate;
    long minutes=-1;
    
    NSCalendar *currCalendar=[NSCalendar currentCalendar];
    
    [currCalendar rangeOfUnit:NSCalendarUnitMinute startDate:&fromDate
                     interval:NULL forDate:self.m_poDateOfBirth];
    [currCalendar rangeOfUnit:NSCalendarUnitMinute startDate:&toDate
                     interval:NULL forDate:[NSDate date]];
    
    NSDateComponents *difference = [currCalendar components:NSCalendarUnitMinute
                                                   fromDate:fromDate toDate:toDate options:0];
    
    
    minutes=[difference minute]*0.09; // 9 % of the time
    return minutes;
}
//------------------------------------------------------------------------------------------------

//------------------------ longGetWatchingCommercialsMinutes ---------------------------------------------------
-(long) longGetWatchingCommercialsMinutes
{
    NSDate *fromDate;
    NSDate *toDate;
    long minutes=-1;
    
    NSCalendar *currCalendar=[NSCalendar currentCalendar];
    
    [currCalendar rangeOfUnit:NSCalendarUnitMinute startDate:&fromDate
                     interval:NULL forDate:self.m_poDateOfBirth];
    [currCalendar rangeOfUnit:NSCalendarUnitMinute startDate:&toDate
                     interval:NULL forDate:[NSDate date]];
    
    NSDateComponents *difference = [currCalendar components:NSCalendarUnitMinute
                                                   fromDate:fromDate toDate:toDate options:0];
    
    
    minutes=[difference minute]*0.02; // 2 % of the time
    return minutes;
}
//------------------------------------------------------------------------------------------------

//------------------------ longGetHavingSexMinutes ---------------------------------------------------
-(long) longGetHavingSexMinutes
{
    NSDate *fromDate;
    NSDate *toDate;
    long minutes=-1;
    
    NSCalendar *currCalendar=[NSCalendar currentCalendar];
    
    NSDateComponents *components = [[NSCalendar currentCalendar] components:NSCalendarUnitDay | NSCalendarUnitMonth | NSCalendarUnitYear fromDate:self.m_poDateOfBirth];
    
    long year=[components year]+18;
    
    NSDateComponents *dc=[[NSDateComponents alloc]init];
    [dc setDay:[components day]];
    [dc setMonth:[components month]];
    [dc setYear:year];
    NSDate *d=[[NSCalendar currentCalendar]dateFromComponents:dc];
    
    
    [currCalendar rangeOfUnit:NSCalendarUnitMinute startDate:&fromDate
                     interval:NULL forDate:d];
    [currCalendar rangeOfUnit:NSCalendarUnitMinute startDate:&toDate
                     interval:NULL forDate:[NSDate date]];
    
    NSDateComponents *difference = [currCalendar components:NSCalendarUnitMinute
                                                   fromDate:fromDate toDate:toDate options:0];
    
    
    minutes=[difference minute]*0.0015; // 0,15 % of the time
    return minutes;
}
//------------------------------------------------------------------------------------------------

//------------------------ longGetEatingMinutes ---------------------------------------------------
-(long) longGetEatingMinutes
{
    NSDate *fromDate;
    NSDate *toDate;
    long minutes=-1;
    
    NSCalendar *currCalendar=[NSCalendar currentCalendar];
    
    [currCalendar rangeOfUnit:NSCalendarUnitMinute startDate:&fromDate
                     interval:NULL forDate:self.m_poDateOfBirth];
    [currCalendar rangeOfUnit:NSCalendarUnitMinute startDate:&toDate
                     interval:NULL forDate:[NSDate date]];
    
    NSDateComponents *difference = [currCalendar components:NSCalendarUnitMinute
                                                   fromDate:fromDate toDate:toDate options:0];
    
    
    minutes=[difference minute]*0.04; // 4 % of the time
    return minutes;
}
//------------------------------------------------------------------------------------------------

//------------------------ longGetBathroomMinutes ---------------------------------------------------
-(long) longGetBathroomMinutes
{
    NSDate *fromDate;
    NSDate *toDate;
    long minutes=-1;
    
    NSCalendar *currCalendar=[NSCalendar currentCalendar];
    
    [currCalendar rangeOfUnit:NSCalendarUnitMinute startDate:&fromDate
                     interval:NULL forDate:self.m_poDateOfBirth];
    [currCalendar rangeOfUnit:NSCalendarUnitMinute startDate:&toDate
                     interval:NULL forDate:[NSDate date]];
    
    NSDateComponents *difference = [currCalendar components:NSCalendarUnitMinute
                                                   fromDate:fromDate toDate:toDate options:0];
    
    
    minutes=[difference minute]*0.02; // 2 % of the time
    return minutes;
}
//------------------------------------------------------------------------------------------------

//------------------------ longGetToiletMinutes ---------------------------------------------------
-(long) longGetToiletMinutes
{
    NSDate *fromDate;
    NSDate *toDate;
    long minutes=-1;
    
    NSCalendar *currCalendar=[NSCalendar currentCalendar];
    
    [currCalendar rangeOfUnit:NSCalendarUnitMinute startDate:&fromDate
                     interval:NULL forDate:self.m_poDateOfBirth];
    [currCalendar rangeOfUnit:NSCalendarUnitMinute startDate:&toDate
                     interval:NULL forDate:[NSDate date]];
    
    NSDateComponents *difference = [currCalendar components:NSCalendarUnitMinute
                                                   fromDate:fromDate toDate:toDate options:0];
    
    
    minutes=[difference minute]*0.003; // 0.3 % of the time
    return minutes;
}
//------------------------------------------------------------------------------------------------

//------------------------ longGetKissingMinutes ---------------------------------------------------
-(long) longGetKissingMinutes
{
    NSDate *fromDate;
    NSDate *toDate;
    long minutes=-1;
    
    NSCalendar *currCalendar=[NSCalendar currentCalendar];
    
    [currCalendar rangeOfUnit:NSCalendarUnitMinute startDate:&fromDate
                     interval:NULL forDate:self.m_poDateOfBirth];
    [currCalendar rangeOfUnit:NSCalendarUnitMinute startDate:&toDate
                     interval:NULL forDate:[NSDate date]];
    
    NSDateComponents *difference = [currCalendar components:NSCalendarUnitMinute
                                                   fromDate:fromDate toDate:toDate options:0];
    
    
    minutes=[difference minute]*0.0004; // 0.04 % of the time
    return minutes;
}
//------------------------------------------------------------------------------------------------

//------------------------ longGetWorkingMinutes ---------------------------------------------------
-(long) longGetWorkingMinutes
{
    NSDate *fromDate;
    NSDate *toDate;
    long minutes=-1;
    
    NSCalendar *currCalendar=[NSCalendar currentCalendar];
    
    NSDateComponents *components = [[NSCalendar currentCalendar] components:NSCalendarUnitDay | NSCalendarUnitMonth | NSCalendarUnitYear fromDate:self.m_poDateOfBirth];
    
    long year=[components year]+21;
    
    NSDateComponents *dc=[[NSDateComponents alloc]init];
    [dc setDay:[components day]];
    [dc setMonth:[components month]];
    [dc setYear:year];
    NSDate *d=[[NSCalendar currentCalendar]dateFromComponents:dc];
    
    
    [currCalendar rangeOfUnit:NSCalendarUnitMinute startDate:&fromDate
                     interval:NULL forDate:d];
    [currCalendar rangeOfUnit:NSCalendarUnitMinute startDate:&toDate
                     interval:NULL forDate:[NSDate date]];
    
    NSDateComponents *difference = [currCalendar components:NSCalendarUnitMinute
                                                   fromDate:fromDate toDate:toDate options:0];
    
    
    minutes=[difference minute]*0.25; // 25 % of the time
    return minutes;
}
//------------------------------------------------------------------------------------------------

//------------------------ longGetIndoorMinutes ---------------------------------------------------
-(long) longGetIndoorMinutes
{
    NSDate *fromDate;
    NSDate *toDate;
    long minutes=-1;
    
    NSCalendar *currCalendar=[NSCalendar currentCalendar];
    
    [currCalendar rangeOfUnit:NSCalendarUnitMinute startDate:&fromDate
                     interval:NULL forDate:self.m_poDateOfBirth];
    [currCalendar rangeOfUnit:NSCalendarUnitMinute startDate:&toDate
                     interval:NULL forDate:[NSDate date]];
    
    NSDateComponents *difference = [currCalendar components:NSCalendarUnitMinute
                                                   fromDate:fromDate toDate:toDate options:0];
    
    
    minutes=[difference minute]*0.90; // 90 % of the time
    return minutes;
}
//------------------------------------------------------------------------------------------------

//------------------------ longGetDecidingWearMinutes ---------------------------------------------------
-(long) longGetDecidingWearMinutes
{
    NSDate *fromDate;
    NSDate *toDate;
    long minutes=-1;
    
    NSCalendar *currCalendar=[NSCalendar currentCalendar];
    
    NSDateComponents *components = [[NSCalendar currentCalendar] components:NSCalendarUnitDay | NSCalendarUnitMonth | NSCalendarUnitYear fromDate:self.m_poDateOfBirth];
    
    long year=[components year]+16;
    
    NSDateComponents *dc=[[NSDateComponents alloc]init];
    [dc setDay:[components day]];
    [dc setMonth:[components month]];
    [dc setYear:year];
    NSDate *d=[[NSCalendar currentCalendar]dateFromComponents:dc];
    
    
    [currCalendar rangeOfUnit:NSCalendarUnitMinute startDate:&fromDate
                     interval:NULL forDate:d];
    [currCalendar rangeOfUnit:NSCalendarUnitMinute startDate:&toDate
                     interval:NULL forDate:[NSDate date]];
    
    NSDateComponents *difference = [currCalendar components:NSCalendarUnitMinute
                                                   fromDate:fromDate toDate:toDate options:0];
    
    
    minutes=[difference minute]*0.01; // 1 % of the time
    return minutes;
}
//------------------------------------------------------------------------------------------------

//------------------------ longGetStarringWomenMinutes ---------------------------------------------------
-(long) longGetStarringWomenMinutes
{
    NSDate *fromDate;
    NSDate *toDate;
    long minutes=-1;
    
    NSCalendar *currCalendar=[NSCalendar currentCalendar];
    
    NSDateComponents *components = [[NSCalendar currentCalendar] components:NSCalendarUnitDay | NSCalendarUnitMonth | NSCalendarUnitYear fromDate:self.m_poDateOfBirth];
    
    long year=[components year]+14;
    
    NSDateComponents *dc=[[NSDateComponents alloc]init];
    [dc setDay:[components day]];
    [dc setMonth:[components month]];
    [dc setYear:year];
    NSDate *d=[[NSCalendar currentCalendar]dateFromComponents:dc];
    
    
    [currCalendar rangeOfUnit:NSCalendarUnitMinute startDate:&fromDate
                     interval:NULL forDate:d];
    [currCalendar rangeOfUnit:NSCalendarUnitMinute startDate:&toDate
                     interval:NULL forDate:[NSDate date]];
    
    NSDateComponents *difference = [currCalendar components:NSCalendarUnitMinute
                                                   fromDate:fromDate toDate:toDate options:0];
    
    
    minutes=[difference minute]*0.01; // 1 % of the time
    return minutes;
}
//------------------------------------------------------------------------------------------------

//------------------------ longGetDoingHairMinutes ---------------------------------------------------
-(long) longGetDoingHairMinutes
{
    NSDate *fromDate;
    NSDate *toDate;
    long minutes=-1;
    
    NSCalendar *currCalendar=[NSCalendar currentCalendar];
    
    NSDateComponents *components = [[NSCalendar currentCalendar] components:NSCalendarUnitDay | NSCalendarUnitMonth | NSCalendarUnitYear fromDate:self.m_poDateOfBirth];
    
    long year=[components year]+14;
    
    NSDateComponents *dc=[[NSDateComponents alloc]init];
    [dc setDay:[components day]];
    [dc setMonth:[components month]];
    [dc setYear:year];
    NSDate *d=[[NSCalendar currentCalendar]dateFromComponents:dc];
    
    
    [currCalendar rangeOfUnit:NSCalendarUnitMinute startDate:&fromDate
                     interval:NULL forDate:d];
    [currCalendar rangeOfUnit:NSCalendarUnitMinute startDate:&toDate
                     interval:NULL forDate:[NSDate date]];
    
    NSDateComponents *difference = [currCalendar components:NSCalendarUnitMinute
                                                   fromDate:fromDate toDate:toDate options:0];
    
    
    minutes=[difference minute]*0.02; // 2 % of the time
    return minutes;
}
//------------------------------------------------------------------------------------------------

//------------------------ longGetShoppingMinutes ---------------------------------------------------
-(long) longGetShoppingMinutes
{
    NSDate *fromDate;
    NSDate *toDate;
    long minutes=-1;
    
    NSCalendar *currCalendar=[NSCalendar currentCalendar];
    
    NSDateComponents *components = [[NSCalendar currentCalendar] components:NSCalendarUnitDay | NSCalendarUnitMonth | NSCalendarUnitYear fromDate:self.m_poDateOfBirth];
    
    long year=[components year]+18;
    
    NSDateComponents *dc=[[NSDateComponents alloc]init];
    [dc setDay:[components day]];
    [dc setMonth:[components month]];
    [dc setYear:year];
    NSDate *d=[[NSCalendar currentCalendar]dateFromComponents:dc];
    
    
    [currCalendar rangeOfUnit:NSCalendarUnitMinute startDate:&fromDate
                     interval:NULL forDate:d];
    [currCalendar rangeOfUnit:NSCalendarUnitMinute startDate:&toDate
                     interval:NULL forDate:[NSDate date]];
    
    NSDateComponents *difference = [currCalendar components:NSCalendarUnitMinute
                                                   fromDate:fromDate toDate:toDate options:0];
    
    
    minutes=[difference minute]*0.03; // 3 % of the time
    return minutes;
}
//------------------------------------------------------------------------------------------------

#pragma mark specials



//------------------------ longGetLaughedTimes ---------------------------------------------------
-(long) longGetLaughedTimes
{
    NSDate *fromDate;
    NSDate *toDate;
    
    NSCalendar *currCalendar=[NSCalendar currentCalendar];
    
    [currCalendar rangeOfUnit:NSCalendarUnitDay startDate:&fromDate
                     interval:NULL forDate:self.m_poDateOfBirth];
    [currCalendar rangeOfUnit:NSCalendarUnitDay startDate:&toDate
                     interval:NULL forDate:[NSDate date]];
    
    NSDateComponents *difference = [currCalendar components:NSCalendarUnitDay
                                                   fromDate:fromDate toDate:toDate options:0];
    
    float days=[difference day]*10;
    return days;
    
}

//------------------------ longGetAlcoholLiters ---------------------------------------------------
-(long) longGetAlcoholLiters
{
    NSDate *fromDate;
    NSDate *toDate;
    
    NSCalendar *currCalendar=[NSCalendar currentCalendar];
    
    
    NSDateComponents *components = [[NSCalendar currentCalendar] components:NSCalendarUnitDay | NSCalendarUnitMonth | NSCalendarUnitYear fromDate:self.m_poDateOfBirth];
    
    long year=[components year]+18;
    
    NSDateComponents *dc=[[NSDateComponents alloc]init];
    [dc setDay:[components day]];
    [dc setMonth:[components month]];
    [dc setYear:year];
    NSDate *d=[[NSCalendar currentCalendar]dateFromComponents:dc];
    
    
    [currCalendar rangeOfUnit:NSCalendarUnitYear startDate:&fromDate
                     interval:NULL forDate:d];
    [currCalendar rangeOfUnit:NSCalendarUnitYear startDate:&toDate
                     interval:NULL forDate:[NSDate date]];
    
    NSDateComponents *difference = [currCalendar components:NSCalendarUnitYear
                                                   fromDate:fromDate toDate:toDate options:0];
    
    float years=[difference year]*10;
    return years;
    
}

//------------------------ longGetCoffeeTimes ---------------------------------------------------
-(long) longGetCoffeeTimes
{
    NSDate *fromDate;
    NSDate *toDate;
    
    NSCalendar *currCalendar=[NSCalendar currentCalendar];
    
    
    NSDateComponents *components = [[NSCalendar currentCalendar] components:NSCalendarUnitDay | NSCalendarUnitMonth | NSCalendarUnitYear fromDate:self.m_poDateOfBirth];
    
    long year=[components year]+19;
    
    NSDateComponents *dc=[[NSDateComponents alloc]init];
    [dc setDay:[components day]];
    [dc setMonth:[components month]];
    [dc setYear:year];
    NSDate *d=[[NSCalendar currentCalendar]dateFromComponents:dc];
    
    
    [currCalendar rangeOfUnit:NSCalendarUnitDay startDate:&fromDate
                     interval:NULL forDate:d];
    [currCalendar rangeOfUnit:NSCalendarUnitDay startDate:&toDate
                     interval:NULL forDate:[NSDate date]];
    
    NSDateComponents *difference = [currCalendar components:NSCalendarUnitDay
                                                   fromDate:fromDate toDate:toDate options:0];
    
    long times=[difference day]*1.6;
    return times;
    
}





@end
