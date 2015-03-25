//
//  AGTWikiViewController.h
//  StarWars
//
//  Created by Carmelo Ruymán Quintana Santana on 25/3/15.
//  Copyright (c) 2015 Carmelo Ruymán Quintana Santana. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AGTStarWarsCharacter.h"

@interface AGTWikiViewController : UIViewController<UIWebViewDelegate>

@property (nonatomic, weak) IBOutlet UIWebView *browser;
@property (nonatomic, weak) IBOutlet UIActivityIndicatorView *activityView;
@property (nonatomic, strong) AGTStarWarsCharacter *model;

-(id) initWithModel:(AGTStarWarsCharacter *)model;

@end
