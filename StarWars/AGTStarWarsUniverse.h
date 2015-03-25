//
//  AGTStarWarsUniverse.h
//  StarWars
//
//  Created by Carmelo Ruymán Quintana Santana on 25/3/15.
//  Copyright (c) 2015 Carmelo Ruymán Quintana Santana. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AGTStarWarsCharacter.h"
@interface AGTStarWarsUniverse : NSObject

@property (nonatomic, readonly) NSUInteger rebelCount;
@property (nonatomic, readonly) NSUInteger imperialCount;

-(AGTStarWarsUniverse *) rebelAtIndex:(NSUInteger)index;
-(AGTStarWarsUniverse *) imperialAtIndex:(NSUInteger)index;

@end
