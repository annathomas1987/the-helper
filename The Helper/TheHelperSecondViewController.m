//
//  TheHelperSecondViewController.m
//  The Helper
//
//  Created by qbadmin on 9/11/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "TheHelperSecondViewController.h"

@interface TheHelperSecondViewController ()

@end

@implementation TheHelperSecondViewController

@synthesize billAmount, tipRateLabel, tiprate;

- (void) CalculateTip: (id) sender {
    
    [billAmount resignFirstResponder];
    
    double bill = [billAmount.text doubleValue];
    double rate = [tiprate.text doubleValue];
    double calculatedTip = bill;
    calculatedTip = calculatedTip * rate;
}
- (void)HideKeyboardOnBgTouch:(id)sender
{
    [billAmount resignFirstResponder];
    [tipRateLabel resignFirstResponder];
    [tiprate resignFirstResponder];
}


- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    self.billAmount = nil;
    self.tipRateLabel = nil;
    self.tiprate = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

@end
