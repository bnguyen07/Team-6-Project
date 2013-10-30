//
//  ScanViewController.h
//  Vaccinations
//
//  Created by Subash Dantuluri on 10/19/13.
//  Copyright (c) 2013 Subash Dantuluri. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol ScanProtocol
- (void)logout;
@end


@interface ScanViewController : UIViewController<UINavigationControllerDelegate, UIImagePickerControllerDelegate>

@property (weak) id <ScanProtocol> delegate;

- (IBAction)photoLibraryButtonPressed:(id)sender;
- (IBAction)performOcrButtonPressed:(id)sender;
- (IBAction)logoutAction:(id)sender;

@end
