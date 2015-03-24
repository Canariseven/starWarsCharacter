//
//  AGTStarWarsCharacter.h
//  StarWars
//
//  Created by Carmelo Ruymán Quintana Santana on 24/3/15.
//  Copyright (c) 2015 Carmelo Ruymán Quintana Santana. All rights reserved.
//

@import Foundation;
@import UIKit;

@interface AGTStarWarsCharacter : NSObject

@property (strong, nonatomic) NSString *name;
@property (strong, nonatomic) NSString *alias;
@property (strong, nonatomic) NSURL *wikiURL;
@property (strong, nonatomic) NSData *soundData;
@property (strong, nonatomic) UIImage *photo;

// designed
-(id) initWithName:(NSString *) name
             alias:(NSString *) alias
               url:(NSURL *) wikiURL
         soundData:(NSData *) soundData
             photo:(UIImage *) photo;

//Conveniencia
-(id) initWithAlias:(NSString *) alias
                url:(NSURL *) wikiURL
          soundData:(NSData *) soundData
              photo:(UIImage *) photo;
@end
