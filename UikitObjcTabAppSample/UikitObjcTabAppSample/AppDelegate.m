//
//  AppDelegate.m
//  UikitObjcTabAppSample
//
//  Created by 서정범 on 2018. 5. 27..
//  Copyright © 2018년 dogrice. All rights reserved.
//

#import "AppDelegate.h"
#import "ViewController.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
	
	//initialize Window
	self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]] ;
	
	//ViewController1
	ViewController *viewContoller1=[[ViewController alloc] init];
	[viewContoller1.view setBackgroundColor:[UIColor whiteColor]];
	
	UIView *view1=[[UIView alloc] initWithFrame:CGRectMake(0, 0, 100, 100)];
	[view1 setBackgroundColor:[UIColor redColor]];
	[viewContoller1.view addSubview:view1];
	
	//ViewController2
	ViewController *viewContoller2=[[ViewController alloc] init];
	[viewContoller2.view setBackgroundColor:[UIColor redColor]];
	
	UIView *view2=[[UIView alloc] initWithFrame:CGRectMake(100, 100, 100, 100)];
	[view2 setBackgroundColor:[UIColor blueColor]];
	[viewContoller2.view addSubview:view2];
	
	
	
	//ViewController3
	ViewController *viewContoller3=[[ViewController alloc] init];
	[viewContoller3.view setBackgroundColor:[UIColor blueColor]];
	
	
	
	//ViewController4
	ViewController *viewContoller4=[[ViewController alloc] init];
	[viewContoller4.view setBackgroundColor:[UIColor grayColor]];
	
	
	UITabBarController *tabbarController;
	tabbarController=[[UITabBarController alloc] init];
	viewContoller1.tabBarItem=[[UITabBarItem alloc] initWithTitle:@"나들이"   image:nil tag:0];    //custom
	viewContoller2.tabBarItem=[[UITabBarItem alloc] initWithTitle:@"계산"    image:nil tag:1];     //custom
	viewContoller3.tabBarItem=[[UITabBarItem alloc] initWithTitle:@"메인"    image:nil tag:2];     //custom
	viewContoller4.tabBarItem=[[UITabBarItem alloc] initWithTabBarSystemItem:UITabBarSystemItemBookmarks tag:3];               //system 제공
	tabbarController.viewControllers=[NSArray arrayWithObjects:viewContoller1,viewContoller2,viewContoller3,viewContoller4,nil];    //뷰컨트롤러 연결
	
	
	//RootViewController Assign
	self.window.rootViewController =tabbarController;
	[self.window makeKeyAndVisible];
	return YES;
}


- (void)applicationWillResignActive:(UIApplication *)application
{
	// Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
	// Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
}


- (void)applicationDidEnterBackground:(UIApplication *)application
{
	// Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
	// If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}


- (void)applicationWillEnterForeground:(UIApplication *)application {
	// Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
}


- (void)applicationDidBecomeActive:(UIApplication *)application {
	// Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}


- (void)applicationWillTerminate:(UIApplication *)application {
	// Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}


@end
