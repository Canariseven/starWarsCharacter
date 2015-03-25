//
//  AppDelegate.m
//  StarWars
//
//  Created by Carmelo Ruymán Quintana Santana on 24/3/15.
//  Copyright (c) 2015 Carmelo Ruymán Quintana Santana. All rights reserved.
//

#import "AppDelegate.h"
#import "AGTStarWarsCharacter.h"
#import "AGTCharacterViewController.h"
#import "AGTWikiViewController.h"
@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    self.window = [[UIWindow alloc]
                   initWithFrame:[[UIScreen mainScreen] bounds]];

    //Creamos una vista de tipo UIWindow
    self.window.backgroundColor = [UIColor orangeColor];
    [self.window makeKeyAndVisible];
    
    
    // Crear un model
    NSBundle *b = [NSBundle mainBundle];
    NSURL *vaderURL = [NSURL URLWithString:@"http://es.wikipedia.org/wiki/Darth_Vader"];
    NSData *vaderSound = [NSData dataWithContentsOfURL:[b URLForResource:@"vader"
                                                           withExtension:@"caf"]];
    
    UIImage *vaderImage = [UIImage imageNamed:@"darthVader.jpg"];
    
    AGTStarWarsCharacter *model = [[AGTStarWarsCharacter alloc] initWithName:@"Anakin Skywalker"
                                                                       alias:@"Darth Vader"
                                                                         url:vaderURL
                                                                   soundData:vaderSound
                                                                       photo:vaderImage];
    // Creamos el controlador que lo muestre
    AGTCharacterViewController *charVC = [[AGTCharacterViewController alloc]
                                          initWithModel:model];
    

    AGTWikiViewController *wikiVC = [[AGTWikiViewController alloc]
                                     initWithModel:model];
    
    
    // Creo un combinador
    UITabBarController *tabVC = [[UITabBarController alloc] init];
    tabVC.viewControllers = @[charVC, wikiVC];
    self.window.rootViewController = tabVC;
    
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
