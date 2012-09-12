//
//  TheHelperSecondViewController.m
//  The Helper
//
//  Created by qbadmin on 9/11/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "TheHelperSecondViewController.h"

@implementation TheHelperSecondViewController

@synthesize billAmount, tipRateLabel, tipRate, rateSlider;

- (void) CalculateTip: (id) sender {
    
    [billAmount resignFirstResponder];
    
    double bill = [billAmount.text doubleValue];
    double rate = [tipRate.text doubleValue];
    double calculatedTip = bill;
    calculatedTip = calculatedTip * rate;
}

- (void)HideKeyboardOnBgTouch:(id)sender
{
    [billAmount resignFirstResponder];
    [tipRateLabel resignFirstResponder];
    [tipRate resignFirstResponder];
}


- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Release any cached data, images, etc that aren't in use.
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    self.billAmount = nil;
    self.tipRateLabel = nil;
    self.tipRate = nil;
    self.rateSlider = nil;
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
}

- (void)viewWillDisappear:(BOOL)animated
{
	[super viewWillDisappear:animated];
}

- (void)viewDidDisappear:(BOOL)animated
{
	[super viewDidDisappear:animated];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

@end
