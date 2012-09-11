//
//  TheHelperFirstViewController.h
//  The Helper
//
//  Created by qbadmin on 9/11/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TheHelperFirstViewController : UIViewController

//-----from here
@property (nonatomic, retain) IBOutlet UITextField *principalAmount;
@property (nonatomic, retain) IBOutlet UILabel *rateLabel;
@property (nonatomic, retain) IBOutlet UITextField *rateAmount;
@property (nonatomic, retain) IBOutlet UITextField *loanTerm;

- (IBAction)CalculateLoan:(id)sender;

- (IBAction)HideKeyboardOnBgTouch:(id)sender;

//----till here
@end
