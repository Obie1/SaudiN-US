//
//  ViewController1.h
//  SaudiN'US
//
//  Created by Obie Haiek on 11/14/12.
//  Copyright (c) 2012 Obie Haiek. All rights reserved.
//

#import <UIKit/UIKit.h>

#define kPostURL @"http://172.24.199.126/studentInfo.php"
#define kUsername @"username"
#define kFname @"fname"
#define kLname @"lname"
#define kEmail @"email"
#define kPassword @"password"
#define kCollege @"college"
#define kMajor @"major"


@interface ViewController1 : UIViewController <UITextFieldDelegate>
{
    NSURLConnection *studentinfoconnection;
    
    
}
@property (weak, nonatomic) IBOutlet UITextField *textFieldFname;
@property (weak, nonatomic) IBOutlet UITextField *textFieldLname;

@property (weak, nonatomic) IBOutlet UITextField *textFieldsetUserName;

@property (weak, nonatomic) IBOutlet UITextField *textFieldsetPassword;
@property (weak, nonatomic) IBOutlet UITextField *textFieldCollege;
@property (weak, nonatomic) IBOutlet UITextField *textFieldMajor;
@property (weak, nonatomic) IBOutlet UITextField *textFieldEmail;

- (IBAction)addstudent:(id)sender;

@end
