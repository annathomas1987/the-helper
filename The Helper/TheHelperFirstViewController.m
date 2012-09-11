//
//  TheHelperFirstViewController.m
//  The Helper
//
//  Created by qbadmin on 9/11/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "TheHelperFirstViewController.h"
#import "Math.h"

@interface TheHelperFirstViewController ()

@end

@implementation TheHelperFirstViewController 

//----from here
@synthesize principalAmount, rateLabel, rateAmount, loanTerm;

- (void) CalculateLoan: (id) sender {

    [principalAmount resignFirstResponder];
    
    double principal = [principalAmount.text doubleValue];
    double rate = [rateAmount.text doubleValue];
    double noOfYears = [rateLabel.text doubleValue];
    noOfYears = noOfYears/12;
    double tempHolder = (1+rate);
    tempHolder = pow(tempHolder,noOfYears);
    double calculatedLoan = (principal)*rate*tempHolder;
    calculatedLoan = calculatedLoan / (tempHolder - 1);
    
}


//----till here
- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    self.principalAmount = nil;
    self.rateAmount = nil;
    self.rateLabel = nil;
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

@end
