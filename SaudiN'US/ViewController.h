//
//  ViewController.h
//  SaudiN'US
//
//  Created by Obie Haiek on 11/13/12.
//  Copyright (c) 2012 Obie Haiek. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "iSMainViewController.h"

#define kGETUrl @"http://172.24.199.126/getjson.php"
#define kUsername @"username"
#define kPassword @"password"


@interface ViewController : UIViewController<UITextFieldDelegate,UITableViewDelegate>{
    NSMutableArray *json;
    iSMainViewController *ismainViewController;
}
@property (weak, nonatomic) IBOutlet UITextField *textFielduserName;
@property (weak, nonatomic) IBOutlet UITextField *textFieldPassword;
- (IBAction)SaveAccount:(id)sender;

- (IBAction)logInButton:(id)sender;
@property (weak, nonatomic) IBOutlet UILabel *lblFail;
-(IBAction)ReturnKeyButton:(id)sender;
@end
