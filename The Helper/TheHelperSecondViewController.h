//
//  TheHelperSecondViewController.h
//  The Helper
//
//  Created by qbadmin on 9/11/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TheHelperSecondViewController : UIViewController

//-----from here
@property (nonatomic, retain) IBOutlet UITextField *billAmount;
@property (nonatomic, retain) IBOutlet UILabel *tipRateLabel;
@property (nonatomic, retain) IBOutlet UITextField *tiprate;

- (IBAction)CalculateTip:(id)sender;

- (IBAction)HideKeyboardOnBgTouch:(id)sender;

//----till here
@end
