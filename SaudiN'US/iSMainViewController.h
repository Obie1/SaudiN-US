//
//  iSMainViewController.h
//  SaudiN'US
//
//  Created by Obie Haiek on 1/17/13.
//  Copyright (c) 2013 Obie Haiek. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface iSMainViewController : UIViewController <UIViewControllerRestoration>
{
    UITextField *userName;
    NSString *UserName;
}
- (IBAction)MapButton:(id)sender;
@property (strong, nonatomic) IBOutlet UILabel *UserNamelbl;
@property (retain, nonatomic) IBOutlet UITextField *userName;

@end
