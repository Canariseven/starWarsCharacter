//
//  AGTStarWarsUniverse.m
//  StarWars
//
//  Created by Carmelo Ruymán Quintana Santana on 25/3/15.
//  Copyright (c) 2015 Carmelo Ruymán Quintana Santana. All rights reserved.
//

#import "AGTStarWarsUniverse.h"
@interface AGTStarWarsUniverse()

@property (nonatomic, strong) NSArray *rebels;
@property (nonatomic, strong) NSArray *imperials;
@end

@implementation AGTStarWarsUniverse
#pragma mark - Propertiess
-(NSUInteger) rebelCount{
    return [self.rebels count];
}

-(NSUInteger) imperialCount{
    return [self.imperials count];
}

#pragma mark - Init
-(id) init{
    if (self = [super init]) {
        // creamos los personajes
        [self arrayOfModels];
    }
    return self;
}



#pragma mark - Accessors
-(AGTStarWarsUniverse *) rebelAtIndex:(NSUInteger)index{
    return [self.rebels objectAtIndex:index];
}
-(AGTStarWarsUniverse *) imperialAtIndex:(NSUInteger)index{
    return [self.imperials objectAtIndex:index];
}

#pragma mark - Fill Arrays
-(void) arrayOfModels{
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
    
    
    
    self.imperials = @[vader];
    self.rebels = @[chewie, c3po, yoda,r2d2];
}
@end
