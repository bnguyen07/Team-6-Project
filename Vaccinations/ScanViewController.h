//
//  ScanViewController.h
//  Vaccinations
//
//  Created by Subash Dantuluri on 10/19/13.
//  Copyright (c) 2013 Subash Dantuluri. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ScanViewController : UIViewController<UINavigationControllerDelegate, UIImagePickerControllerDelegate>
- (IBAction)photoLibraryButtonPressed:(id)sender;
- (IBAction)performOcrButtonPressed:(id)sender;
- (IBAction)logoutAction:(id)sender;

@end
