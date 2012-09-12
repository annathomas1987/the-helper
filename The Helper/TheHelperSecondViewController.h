//
//  TheHelperSecondViewController.h
//  The Helper
//
//  Created by qbadmin on 9/11/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TheHelperSecondViewController : UIViewController{
    UITextField *billAmount;
    UILabel *tipRateLabel;
    IBOutlet UITextField *tipRate;
    IBOutlet UISlider *rateSlider;
}

//-----from here
@property (nonatomic, retain) IBOutlet UITextField *billAmount;
@property (nonatomic, retain) IBOutlet UILabel *tipRateLabel;
@property (nonatomic, retain) IBOutlet UITextField *tipRate;
@property (nonatomic, retain) IBOutlet UISlider *rateSlider;

- (IBAction) CalculateTip:(id)sender;
- (IBAction) HideKeyboardOnBgTouch:(id)sender;

//----till here
@end
