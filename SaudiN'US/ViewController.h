//
//  ViewController.h
//  SaudiN'US
//
//  Created by Obie Haiek on 11/13/12.
//  Copyright (c) 2012 Obie Haiek. All rights reserved.
//

#import <UIKit/UIKit.h>

#define kGETUrl @"http:/localhost/getjson.php"
#define kUsername @"username"
#define kPassword @"password"


@interface ViewController : UIViewController<UITextFieldDelegate,UITableViewDelegate>{
    NSMutableArray *json;
}
@property (weak, nonatomic) IBOutlet UITextField *textFielduserName;
@property (weak, nonatomic) IBOutlet UITextField *textFieldPassword;
- (IBAction)saveAccount:(id)sender;
- (IBAction)logInButton:(id)sender;
@property (weak, nonatomic) IBOutlet UILabel *lblFail;
-(IBAction)ReturnKeyButton:(id)sender;

@end
