//
//  TheHelperFirstViewController.m
//  The Helper
//
//  Created by qbadmin on 9/11/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "TheHelperFirstViewController.h"
#import "Math.h"

@implementation TheHelperFirstViewController 

//----from here
@synthesize principalAmount, rateLabel, rateAmount, loanTerm, rateSlider;

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

- (void)HideKeyboardOnBgTouch:(id)sender
{
    [principalAmount resignFirstResponder];
    [rateLabel resignFirstResponder];
    [rateAmount resignFirstResponder];
    [loanTerm resignFirstResponder];
}

- (IBAction) sliderValueChanged:(UISlider *)sender {  
    rateAmount.text = [NSString stringWithFormat:@"%.1f", [sender value]];  
}  

- (IBAction) textFieldValueChanged:(id)sender{
    NSString *textValue =[rateAmount text];
    int value = [textValue intValue];
    if (value<0) {
        value = 0;
    }
    else if (value>100) {
        value = 100;
    }
    rateSlider.value = value;
    rateAmount.text = [NSString stringWithFormat:@"%.1f", value];
    if([rateAmount canResignFirstResponder]) {
        [rateAmount resignFirstResponder];
    }
    
}

//----till here
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
    self.rateSlider = nil;
    self.principalAmount = nil;
    self.rateAmount = nil;
    self.rateLabel = nil;
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
