//
//  ViewController.h
//  Vaccinations
//
//  Created by Subash Dantuluri on 10/18/13.
//  Copyright (c) 2013 Subash Dantuluri. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
@property (weak, nonatomic) IBOutlet UITextField *Username;
@property (weak, nonatomic) IBOutlet UITextField *Password;
- (IBAction)Login:(id)sender;
@property (weak, nonatomic) IBOutlet UIButton *ForgotPassword;
@property (nonatomic, strong) NSMutableArray *users;
- (IBAction)dismissKeyboard:(id)sender;




@end
