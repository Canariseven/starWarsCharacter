//
//  AGTCharacterViewController.h
//  StarWars
//
//  Created by Carmelo Ruymán Quintana Santana on 24/3/15.
//  Copyright (c) 2015 Carmelo Ruymán Quintana Santana. All rights reserved.
//

@import UIKit;

#import "AGTStarWarsCharacter.h"
#import "CafPlayer.h"

@interface AGTCharacterViewController : UIViewController
@property (nonatomic, strong) CafPlayer *player;
@property (nonatomic, strong) AGTStarWarsCharacter *model;
@property (nonatomic, weak) IBOutlet UIImageView *photoView;

- (id)initWithModel:(AGTStarWarsCharacter *) model;

- (IBAction)playSound:(id)sender;
- (IBAction)displayWiki:(id)sender;
@end
