//
//  AGTWikiViewController.m
//  StarWars
//
//  Created by Carmelo Ruymán Quintana Santana on 25/3/15.
//  Copyright (c) 2015 Carmelo Ruymán Quintana Santana. All rights reserved.
//

#import "AGTWikiViewController.h"


@implementation AGTWikiViewController

#pragma mark - Init
-(id) initWithModel:(AGTStarWarsCharacter *)model{
    if (self = [super initWithNibName:nil bundle:nil]){
        _model = model;
    }
    return self;
}

-(void) viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    [self.activityView setHidden:NO];
    [self.activityView startAnimating];
    
    self.browser.delegate = self;
    
    // Sincronizar model -> vista
    [self.browser loadRequest:
     [NSURLRequest requestWithURL:self.model.wikiURL]];
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - UIWebViewDelegate
-(void)webViewDidFinishLoad:(UIWebView *)webView{

    // Para y oculto el activity
    [self.activityView stopAnimating];
    [self.activityView setHidden:YES];

}
-(BOOL)webView:(UIWebView *)webView
shouldStartLoadWithRequest:(NSURLRequest *)request
navigationType:(UIWebViewNavigationType)navigationType{
    if ((navigationType == UIWebViewNavigationTypeLinkClicked)
        || (navigationType == UIWebViewNavigationTypeFormSubmitted)){
        return NO;
    }else{
        return YES;
    }
}


@end
