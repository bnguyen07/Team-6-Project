//
//  ViewController.m
//  Vaccinations
//
//  Created by Subash Dantuluri on 10/18/13.
//  Copyright (c) 2013 Subash Dantuluri. All rights reserved.
//

#import "ViewController.h"

//#define kGetUrlForLogin @"http://localhost/login.php"

#define kGetUrlForLogin @"http://192.168.1.3/login.php"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    _users = [[NSMutableArray alloc] initWithObjects: nil];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void) getUsernameAndPassword {
    NSURL *url = [NSURL URLWithString:kGetUrlForLogin];
    NSData *data = [NSData dataWithContentsOfURL:url];
    NSError *error;
   if (data) {
      _users = [NSJSONSerialization JSONObjectWithData:data options:kNilOptions error:&error];
      NSLog(@"%@", _users);
   } else {
      UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Connection Error" message:@"data is nil. Check the connection. Turn off firewall." delegate:self cancelButtonTitle:@"OK" otherButtonTitles:nil, nil];
      [alert show];
   }
}


- (IBAction)Login:(id)sender {
       
    [_Username resignFirstResponder];
    [_Password resignFirstResponder];
    
    
    //Brian: Oct 20, 2013
    //Make the login work
    
    [self getUsernameAndPassword];
    
    for (int i = 0 ; i < _users.count; i++) {
        //Brian: Oct 20, 2013
        //Require user to input all the fields
        if ([_Username.text  isEqual: @""] || [_Password.text  isEqual: @""]) {
            UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Alert!" message:@"Please fill all the fields." delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil, nil];
            [alert show];
            return;
        }
        
        
        if ([_Username.text  isEqual: [_users[i] objectForKey:@"username"]] && [_Password.text  isEqual: [_users[i] objectForKey:@"password"]]) {
            [_Username setText:@""]; //Clear the Username and Password when Users log out
            [_Password setText:@""];
            [self performSegueWithIdentifier:@"login2childsearchtab" sender:self];
            return;
        }
    }
    
    UIAlertView *invalidLogin = [[UIAlertView alloc] initWithTitle:@"Alert!"
                                                           message:@"Invalid username / password"
                                                          delegate:nil cancelButtonTitle:@"OK"
                                                 otherButtonTitles:nil, nil];
    [invalidLogin show];
    return;
}

- (IBAction)dismissKeyboard:(id)sender {
    [_Username resignFirstResponder];
    [_Password resignFirstResponder] ;
    
}
@end
