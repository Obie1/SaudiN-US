//
//  PostViewController.h
//  SaudiN'US
//
//  Created by Obie Haiek on 1/17/13.
//  Copyright (c) 2013 Obie Haiek. All rights reserved.
//

#import <UIKit/UIKit.h>
#define kPostURL @"http://172.24.199.126/postjson.php"
#define kName @"name"
#define kMessage @"message"
@interface PostViewController : UIViewController<UITextFieldDelegate,UITextViewDelegate>
{
    IBOutlet UITextField *nameText;
    IBOutlet UITextView *mesageText;
    NSURLConnection *postConnection;
  
}

-(IBAction)post:(id)sender;
-(IBAction)ReturnKey:(id)sender;

@end
