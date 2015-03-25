//
//  AGTCharacterViewController.m
//  StarWars
//
//  Created by Carmelo Ruymán Quintana Santana on 24/3/15.
//  Copyright (c) 2015 Carmelo Ruymán Quintana Santana. All rights reserved.
//

#import "AGTCharacterViewController.h"
#import "AGTWikiViewController.h"

@implementation AGTCharacterViewController

- (id)initWithModel:(AGTStarWarsCharacter *) model{
    if (self = [super initWithNibName:nil
                               bundle:nil]){
        _model = model;
        self.title = [model alias];
        self.tabBarItem.image = [self.model icon];
    }
    return self;
}


#pragma mark - View LifeCycle
-(void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    // Asegurarse que no se ocupa toda la pantalla
    // Cuando estás en un combinador
    self.edgesForExtendedLayout = UIRectEdgeNone;
    
    // Sincronizar model -> vista
    self.photoView.image = self.model.photo;
}

#pragma mark - Memory
-(void)didReceiveMemoryWarning{
    [super didReceiveMemoryWarning];
}

#pragma mark - Actions
- (IBAction)playSound:(id)sender {
    
    // Sacamos el sonido del modelo
    // Lo reproducimos
    self.player = [CafPlayer cafPlayer];
    [self.player playSoundData:self.model.soundData];
}

- (IBAction)displayWiki:(id)sender{
    
    //Crear un WikiVC
    AGTWikiViewController *wikiVC = [[AGTWikiViewController alloc]initWithModel:self.model];
    // Hacer un push
    [self.navigationController pushViewController:wikiVC animated:true];
}

@end
