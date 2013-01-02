//
//  ViewController1.m
//  SaudiN'US
//
//  Created by Obie Haiek on 11/14/12.
//  Copyright (c) 2012 Obie Haiek. All rights reserved.
//

#import "ViewController1.h"

@interface ViewController1 ()

@end

@implementation ViewController1
@synthesize textFieldFname = _textFieldFname;
@synthesize textFieldLname = _textFieldLname;
@synthesize textFieldsetUserName = _textFieldsetUserName;
@synthesize textFieldsetPassword = _textFieldsetPassword;
@synthesize textFieldCollege = _textFieldCollege;
@synthesize textFieldMajor = _textFieldMajor;
@synthesize textFieldEmail = _textFieldEmail;
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
}
-(void) takeInfo:(NSString*) username withPassword:(NSString *) password withFname:(NSString*) fname withLname:(NSString*) lname withEmail:(NSString*) email withCollege:(NSString*) college withMajor:(NSString*) major
{
    if(username != nil && password != nil && fname != nil && lname != nil && email != nil && college != nil && major != nil)
    {
        NSMutableString *studentinfo = [NSMutableString stringWithString:kPostURL];
        [studentinfo appendString:[NSString stringWithFormat:@"?%@=%@", kUsername,username]];
        [studentinfo appendString:[NSString stringWithFormat:@"&%@=%@",kFname,fname]];
        [studentinfo appendString:[NSString stringWithFormat:@"&%@=%@",kLname,lname]];
        [studentinfo appendString:[NSString stringWithFormat:@"&%@=%@",kPassword,password]];
        [studentinfo appendString:[NSString stringWithFormat:@"&%@=%@",kCollege,college]];
        [studentinfo appendString:[NSString stringWithFormat:@"&%@=%@",kMajor,major]];
        [studentinfo appendString:[NSString stringWithFormat:@"&%@=%@",kEmail, email]];
        
        [studentinfo setString:[studentinfo stringByAddingPercentEscapesUsingEncoding:NSUTF8StringEncoding]];
        NSMutableURLRequest *request = [[NSMutableURLRequest alloc]initWithURL:[NSURL URLWithString:studentinfo]];
        [request setHTTPMethod:@"SignUp"];
        studentinfoconnection = [[NSURLConnection alloc] initWithRequest:request delegate:self startImmediately:YES];
        
        
        
    }
    
}


-(BOOL)textFieldShouldReturn:(UITextField *)textField
{
    if (textField) {
        [textField resignFirstResponder];
        
    }
    return NO;
}
-(void)textFieldDidBeginEditing:(UITextField *)textField
{
    if (textField == self.textFieldsetPassword) {
        [UIView beginAnimations:nil context:NULL];
        [UIView setAnimationDelegate:self];
        [UIView setAnimationDuration:0.5];
        [UIView setAnimationBeginsFromCurrentState:YES];
        self.view.frame= CGRectMake(self.view.frame.origin.x, (self.view.frame.origin.y - 25), self.view.frame.size.width, self.view.frame.size.height);
        [UIView commitAnimations];
    }
    else if (textField == self.textFieldCollege)
    {
        [UIView beginAnimations:nil context:NULL];
        [UIView setAnimationDelegate:self];
        [UIView setAnimationDuration:0.5];
        [UIView setAnimationBeginsFromCurrentState:YES];
        self.view.frame= CGRectMake(self.view.frame.origin.x, (self.view.frame.origin.y - 75), self.view.frame.size.width, self.view.frame.size.height);
        [UIView commitAnimations];
        
    }
    else if (textField == self.textFieldMajor || textField ==self.textFieldEmail)
    {
    [UIView beginAnimations:nil context:NULL];
    [UIView setAnimationDelegate:self];
    [UIView setAnimationDuration:0.5];
    [UIView setAnimationBeginsFromCurrentState:YES];
    self.view.frame= CGRectMake(self.view.frame.origin.x, (self.view.frame.origin.y - 150), self.view.frame.size.width, self.view.frame.size.height);
    [UIView commitAnimations];
    
    }
   /* else if (textField == self.textFieldMajor)
    {
    [UIView beginAnimations:nil context:NULL];
    [UIView setAnimationDelegate:self];
    [UIView setAnimationDuration:0.5];
    [UIView setAnimationBeginsFromCurrentState:YES];
    self.view.frame= CGRectMake(self.view.frame.origin.x, (self.view.frame.origin.y - 150), self.view.frame.size.width, self.view.frame.size.height);
    [UIView commitAnimations];
    
    }*/
}
-(void)textFieldDidEndEditing:(UITextField *)textField
{
    if (textField == self.textFieldsetPassword) {
        [UIView beginAnimations:nil context:NULL];
        [UIView setAnimationDelegate:self];
        [UIView setAnimationDuration:0.5];
        [UIView setAnimationBeginsFromCurrentState:YES];
        self.view.frame= CGRectMake(self.view.frame.origin.x, (self.view.frame.origin.y + 25), self.view.frame.size.width, self.view.frame.size.height);
        [UIView commitAnimations];
    }
    else if (textField == self.textFieldCollege)
    {
        [UIView beginAnimations:nil context:NULL];
        [UIView setAnimationDelegate:self];
        [UIView setAnimationDuration:0.5];
        [UIView setAnimationBeginsFromCurrentState:YES];
        self.view.frame= CGRectMake(self.view.frame.origin.x, (self.view.frame.origin.y + 75), self.view.frame.size.width, self.view.frame.size.height);
        [UIView commitAnimations];
        
    }
    else if (textField == self.textFieldMajor || textField == self.textFieldEmail)
    {
        [UIView beginAnimations:nil context:NULL];
        [UIView setAnimationDelegate:self];
        [UIView setAnimationDuration:0.5];
        [UIView setAnimationBeginsFromCurrentState:YES];
        self.view.frame= CGRectMake(self.view.frame.origin.x, (self.view.frame.origin.y + 150), self.view.frame.size.width, self.view.frame.size.height);
        [UIView commitAnimations];
        
    }
   // else if (textField == self.textFieldEmail)
    //{
      //  [UIView beginAnimations:nil context:NULL];
       // [UIView setAnimationDelegate:self];
        //[UIView setAnimationDuration:0.5];
        //[UIView setAnimationBeginsFromCurrentState:YES];
        //self.view.frame= CGRectMake(self.view.frame.origin.x, (self.view.frame.origin.y + 150), self.view.frame.size.width, self.view.frame.size.height);
        //[UIView commitAnimations];
        
    //}
    
}
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)addstudent:(id)sender {
    if([self.textFieldFname.text isEqualToString:@""])
    {
        UIAlertView *alert = [[UIAlertView alloc]initWithTitle:@"You must Enter UserName and Password to Register" message:@"please Enter UserName and Password" delegate:nil cancelButtonTitle:nil otherButtonTitles:@"Ok", nil];
        [alert show];
        
    }
    [self takeInfo:_textFieldsetUserName.text withPassword:_textFieldsetPassword.text withFname:_textFieldFname.text withLname:_textFieldLname.text withEmail:_textFieldEmail.text withCollege:_textFieldCollege.text withMajor:_textFieldMajor.text];
    _textFieldMajor.text = nil;
    _textFieldsetPassword.text = nil;
    _textFieldsetUserName.text = nil;
    _textFieldLname.text = nil;
    _textFieldFname.text = nil;
    _textFieldEmail.text = nil;
    _textFieldCollege.text = nil;
    
}
@end
