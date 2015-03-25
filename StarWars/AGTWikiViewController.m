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
        self.title = @"Wiki";
    }
    return self;
}

-(void) viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    self.edgesForExtendedLayout = UIRectEdgeNone;
    [self modifyStatusOfActivity:NO];
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
     [self modifyStatusOfActivity:YES];

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
-(void) webView:(UIWebView *)webView didFailLoadWithError:(NSError *)error{
    
    // ocultar activityView
        [self modifyStatusOfActivity:YES];
    // hacer un NSLog
    NSString *message = [NSString stringWithFormat:@"%@",error.description];
    UIAlertView * alert = [[UIAlertView alloc]
                           initWithTitle:@"Error al cargar página"
                           message:message
                           delegate:nil
                           cancelButtonTitle:@"Ok!"
                           otherButtonTitles:nil,
                           nil];
    [alert show];
    
}

#pragma mark - Sincronize View
-(void) modifyStatusOfActivity:(BOOL)hidden{
    if (hidden == YES){
        [self.activityView stopAnimating];
        [self.activityView setHidden:hidden];
    }else{
        [self.activityView setHidden:hidden];
        [self.activityView startAnimating];
    }
}

@end
