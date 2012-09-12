//
//  TheHelperFirstViewController.h
//  The Helper
//
//  Created by qbadmin on 9/11/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TheHelperFirstViewController : UIViewController {
    UITextField *principalAmount, *loanTerm;
    UILabel *rateLabel;
    IBOutlet UITextField *rateAmount;
    IBOutlet UISlider *rateSlider;
}

//-----from here
@property (nonatomic, retain) IBOutlet UITextField *principalAmount;
@property (nonatomic, retain) IBOutlet UILabel *rateLabel;
@property (nonatomic, retain) IBOutlet UITextField *rateAmount;
@property (nonatomic, retain) IBOutlet UISlider *rateSlider;
@property (nonatomic, retain) IBOutlet UITextField *loanTerm;

- (IBAction) CalculateLoan:(id)sender;
- (IBAction) sliderValueChanged:(id)sender;
- (IBAction) textFieldValueChanged:(id)sender;
- (IBAction) HideKeyboardOnBgTouch:(id)sender;

//----till here
@end
