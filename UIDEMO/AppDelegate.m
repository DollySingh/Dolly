//
//  AppDelegate.m
//  UIDEMO
//
//  Created by Student-006 on 20/09/16.
//  Copyright © 2016 Felix. All rights reserved.
//

#import "AppDelegate.h"
#import "loginViewController.h"
#import "pickerViewController.h"
#import "colorViewController.h"
#import "DateViewController.h"
#import "TableViewController.h"
#import "MultiViewController.h"
#import "MyTableViewController.h"
#import "XIBNViewController.h"



@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
   
   // Override point for customization after application launch.
   
   
   _window=[[UIWindow alloc]init];
   
   //_window.frame=CGRectMake(0, 0, [UIScreen mainScreen].bounds.size.width, [UIScreen mainScreen].bounds.size.height);
   
   _window.frame=[UIScreen mainScreen].bounds;
   
   //loginViewController *lvc=[[loginViewController alloc]init];
   //self.window.rootViewController=lvc;
   
   //pickerViewController *pvc=[[pickerViewController alloc]init];
   //self.window.rootViewController=pvc;
   
   //colorViewController *cvc=[[colorViewController alloc]init];
   //self.window.rootViewController=cvc;
   
   //DateViewController * dvc=[[DateViewController alloc]init];
   //self.window.rootViewController=dvc;
   
   //TableViewController * tvc=[[TableViewController alloc]init];
   //self.window.rootViewController=tvc;
   
   multiViewController * mvc=[[multiViewController alloc]init];
   self.window.rootViewController=mvc;
   
   // MyTableViewController * m=[[MyTableViewController alloc] init];
   //self.window.rootViewController=m;
  
   //XIBNViewController * xvc=[[XIBNViewController alloc] init];
  // self.window.rootViewController=xvc;
   
   
  //UINavigationController *navigation = [[UINavigationController alloc]initWithRootViewController:lvc];
   
 // navigation.navigationBar.barTintColor=[UIColor orangeColor];
   
 // self.window.rootViewController =navigation;
   
  
   
   
   
   [self.window makeKeyAndVisible];
   return YES;
}






- (void)applicationWillResignActive:(UIApplication *)application {
   // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
   // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
   // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
   // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
   // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
   // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application {
   // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end