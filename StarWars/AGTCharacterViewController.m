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

- (IBAction)play:(id)sender {
}

#pragma Cycle-life
-(void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    // Sincronizar model -> vista
    self.photoView.image = self.model.photo;
}


-(void)didReceiveMemoryWarning{
    [super didReceiveMemoryWarning];
}


@end
