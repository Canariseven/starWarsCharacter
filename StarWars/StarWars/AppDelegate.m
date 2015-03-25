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
    
    

  
    



    
    
    
    // Creo un combinador
    UITabBarController *tabVc = [[UITabBarController alloc] init];
    tabVc.viewControllers = [self arrayOfControllers];

    self.window.rootViewController = tabVc;
    
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



#pragma  mark - Utils 
-(NSArray *) arrayOfModels{
    NSBundle *b = [NSBundle mainBundle];
    NSURL *vaderURL = [NSURL URLWithString:@"http://es.wikipedia.org/wiki/Darth_Vader"];
    NSData *vaderSound = [NSData dataWithContentsOfURL:[b URLForResource:@"vader"
                                                           withExtension:@"caf"]];
    
    UIImage *vaderImage = [UIImage imageNamed:@"darthVader.jpg"];
    UIImage *vaderIcon = [UIImage imageNamed:@"vader_icon"];
    AGTStarWarsCharacter *vader = [[AGTStarWarsCharacter alloc] initWithName:@"Anakin Skywalker"
                                                                       alias:@"Darth Vader"
                                                                         url:vaderURL
                                                                   soundData:vaderSound
                                                                       photo:vaderImage
                                                                        icon:vaderIcon];
    // Chewbacca
    NSURL *chewieURL = [NSURL URLWithString:@"http://es.wikipedia.org/wiki/Chewbacca"];
    NSData *chewieSound = [NSData dataWithContentsOfURL:[b URLForResource:@"chewbacca"
                                                           withExtension:@"caf"]];
    UIImage *chewieImage = [UIImage imageNamed:@"Chewbacca.jpg"];
    UIImage *chewieIcon = [UIImage imageNamed:@"chewbacca_icon"];
    AGTStarWarsCharacter *chewie = [[AGTStarWarsCharacter alloc] initWithAlias:@"Chewbacca"
                                                                           url:chewieURL
                                                                     soundData:chewieSound
                                                                         photo:chewieImage
                                                                          icon:chewieIcon];
    // C3PO
    NSURL *c3poURL = [NSURL URLWithString:@"http://es.wikipedia.org/wiki/C-3PO"];
    NSData *c3poSound = [NSData dataWithContentsOfURL:[b URLForResource:@"c3po"
                                                            withExtension:@"caf"]];
    
    UIImage *c3poImage = [UIImage imageNamed:@"c3po.jpg"];
    UIImage *c3poIcon = [UIImage imageNamed:@"c-3po_icon"];
    AGTStarWarsCharacter *c3po = [[AGTStarWarsCharacter alloc] initWithAlias:@"C3Po"
                                                                           url:c3poURL
                                                                     soundData:c3poSound
                                                                         photo:c3poImage
                                                                        icon:c3poIcon];
    
    // Yoda
    NSURL *yodaURL = [NSURL URLWithString:@"http://es.wikipedia.org/wiki/Yoda"];
    NSData *yodaSound = [NSData dataWithContentsOfURL:[b URLForResource:@"yoda"
                                                           withExtension:@"caf"]];
    UIImage *yodaImage = [UIImage imageNamed:@"yoda.jpg"];
    UIImage *yodaIcon = [UIImage imageNamed:@"yoda_icon"];
    AGTStarWarsCharacter *yoda = [[AGTStarWarsCharacter alloc] initWithName:@"Minch Yoda"
                                                                       alias:@"Master Yoda"
                                                                         url:yodaURL
                                                                   soundData:yodaSound
                                                                       photo:yodaImage
                                                                       icon:yodaIcon];
    // R2-D2
    NSURL *r2d2URL = [NSURL URLWithString:@"http://es.wikipedia.org/wiki/R2-D2"];
    NSData *r2d2Sound = [NSData dataWithContentsOfURL:[b URLForResource:@"r2-d2"
                                                          withExtension:@"caf"]];
    
    UIImage *r2d2Image = [UIImage imageNamed:@"R2-D2.jpg"];
    UIImage *r2d2Icon = [UIImage imageNamed:@"r2d2_icon"];
    AGTStarWarsCharacter *r2d2 = [[AGTStarWarsCharacter alloc] initWithAlias:@"R2-D2"
                                                                         url:r2d2URL
                                                                   soundData:r2d2Sound
                                                                       photo:r2d2Image
                                                                        icon:r2d2Icon];
    
  
    
    return @[vader, chewie, c3po, yoda,r2d2];
}
-(NSArray *) arrayOfControllers{
    NSArray *models = [self arrayOfModels];
    NSMutableArray *controllers = [ NSMutableArray arrayWithCapacity:models.count];
    
    //recorremos los modelos
    for (AGTStarWarsCharacter *each in models){
        // Creo un controlador
        AGTCharacterViewController *charVC = [[AGTCharacterViewController alloc]
                                              initWithModel:each];
        // Lo mento en un navigation
        UINavigationController *nav = [[UINavigationController alloc]
                                       initWithRootViewController:charVC];
        
        // lo añado al array de controladores
        [controllers addObject:nav];
    }
    
    return controllers;
}
@end















