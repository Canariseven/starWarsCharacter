//
//  AGTStarWarsCharacter.m
//  StarWars
//
//  Created by Carmelo Ruymán Quintana Santana on 24/3/15.
//  Copyright (c) 2015 Carmelo Ruymán Quintana Santana. All rights reserved.
//

#import "AGTStarWarsCharacter.h"

@implementation AGTStarWarsCharacter

-(id) initWithName:(NSString *) name
             alias:(NSString *) alias
               url:(NSURL *) wikiURL
         soundData:(NSData *) soundData
             photo:(UIImage *) photo{
    if (self = [super init]){
        _name = name;
        _alias = alias;
        _wikiURL = wikiURL;
        _soundData = soundData;
        _photo = photo;
    }
    return self;
}

-(id) initWithAlias:(NSString *) alias
                url:(NSURL *) wikiURL
          soundData:(NSData *) soundData
              photo:(UIImage *) photo{
    return [self initWithName:nil
                        alias:alias
                          url:wikiURL
                    soundData:soundData
                        photo:photo];
}



@end
