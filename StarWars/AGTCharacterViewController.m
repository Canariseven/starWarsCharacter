//
//  AGTCharacterViewController.m
//  StarWars
//
//  Created by Carmelo Ruymán Quintana Santana on 24/3/15.
//  Copyright (c) 2015 Carmelo Ruymán Quintana Santana. All rights reserved.
//

#import "AGTCharacterViewController.h"


@implementation AGTCharacterViewController


- (id)initWithModel:(AGTStarWarsCharacter *) model{
    if (self = [super initWithNibName:nil
                               bundle:nil]){
        _model = model;
    }
    return self;
}


#pragma - View LifeCycle
-(void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    // Sincronizar model -> vista
    self.photoView.image = self.model.photo;
}

#pragma - Memory
-(void)didReceiveMemoryWarning{
    [super didReceiveMemoryWarning];
}

#pragma - Actions
- (IBAction)playSound:(id)sender {
    
    // Sacamos el sonido del modelo
    // Lo reproducimos
    self.player = [CafPlayer cafPlayer];
    [self.player playSoundData:self.model.soundData];
}

@end
