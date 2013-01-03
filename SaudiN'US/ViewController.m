//
//  ViewController.m
//  SaudiN'US
//
//  Created by Obie Haiek on 11/13/12.
//  Copyright (c) 2012 Obie Haiek. All rights reserved.
//

#import "ViewController.h"
#import "AppDelegate.h"
#import "ViewController2.h"
#import "CollectionViewController.h"



@interface ViewController ()

@end

@implementation ViewController
-(IBAction)ReturnKeyButton:(id)sender{
    [sender resignFirstResponder];
}
- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
}
-(BOOL)textFieldShouldReturn:(UITextField *)textField
{
    if (textField) {
        [textField resignFirstResponder];
        
    }
    return NO;
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
    
}

- (IBAction)saveAccount:(id)sender {
}

- (IBAction)logInButton:(id)sender {
    if([self.textFielduserName.text isEqualToString:@""])
    {
        
        UIAlertView *alert = [[UIAlertView alloc]initWithTitle:@"You must Enter UserName and Password to Sign In" message:@"please Enter UserName and Password" delegate:nil cancelButtonTitle:nil otherButtonTitles:@"Ok", nil];
        [alert show];
        
    }
    NSInteger pass = [self authenticate:_textFielduserName.text withPassowrd:_textFieldPassword.text];
    if(pass == 1)
    {
         
            }
    else
    {
        UIAlertView *alert = [[UIAlertView alloc]initWithTitle:@"You Must Enter Correct UserName And Password" message:@"Please Enter UserName And Password" delegate:nil cancelButtonTitle:nil otherButtonTitles:@"Ok", nil];
        [alert show];
        _textFieldPassword.text = @"";
        _textFielduserName.text = @"";
        [self viewDidLoad];
    }
    
    
}
-(bool) authenticate:(NSString*) username withPassowrd:(NSString*) password
{
  //  NSError *error;
  //  NSURL *url = [NSURL URLWithString:kGETUrl];
   // NSData *data = [NSData dataWithContentsOfURL:url];
    
   // json = [NSJSONSerialization JSONObjectWithData:data options:kNilOptions error:&error];
   // NSString *getusername;
   // NSString *getpassword;
   // getusername = data.accessibilityValue;
 //   getpassword = data.accessibilityHint;
   // NSString *info = [json objectAtIndex:1];
    //getusername = [info objectForKey:getusername];
    //getusername = info.accessibilityValue;
   //TODO: NSMutableArray = []
    if([username isEqualToString:@""]||[password isEqualToString:@""])
    {
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"alert" message:@"please Fill all the fields" delegate:self cancelButtonTitle:@"ok" otherButtonTitles:nil, nil];
        [alert show];
        return false;
    }
    NSString *strURL = [NSString stringWithFormat:@"http://localhost/Logged2.php?username=%@&password=%@",username, password];
    
    // to execute php code
    NSData *dataURL = [NSData dataWithContentsOfURL:[NSURL URLWithString:strURL]];
    
    // to receive the returend value
    NSString *strResult = [[NSString alloc] initWithData:dataURL encoding:NSUTF8StringEncoding];
    
    if ([strResult isEqualToString:@"1"])
    {
        // i need to get the control for main navigation controller
       AppDelegate *appDelegate = [[UIApplication sharedApplication]delegate];
        [appDelegate.navigationController popToRootViewControllerAnimated:NO];
        ViewController2 *viewcontroller2 = [[ViewController2 alloc]initWithNibName:@"ViewController2" bundle:nil];
        [appDelegate.navigationController pushViewController: viewcontroller2 animated: YES];
        
        
        UIAlertView *alert = [[UIAlertView alloc]initWithTitle:@"Alert" message:@"Logged In" delegate:self cancelButtonTitle:@"ok" otherButtonTitles:nil, nil];
        [alert show];
       

        return true;
    }else
    {
        // invalid information
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"alert" message:@"Invalide Information" delegate:self cancelButtonTitle:@"OK" otherButtonTitles:nil, nil];
        [alert show];
        return false;
        
    }
    
}
@end
