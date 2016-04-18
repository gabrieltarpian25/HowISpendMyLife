//
//  AppDelegate.h
//  HowISpendMyLife_iOS
//
//  Created by Tarpian Gabriel Lucian on 27/02/16.
//  Copyright © 2016 Tarpian Gabriel Lucian. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Human.h"

@class  ViewController;
@class  SecondViewController;

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (nonatomic,strong) UIWindow *window;
@property (nonatomic,strong) ViewController *viewController;
@property (nonatomic,strong) UINavigationController *navigationController;




@end

