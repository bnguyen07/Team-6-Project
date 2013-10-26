//
//  QRScanViewController.h
//  Vaccinations
//
//  Created by Subash Dantuluri on 10/19/13.
//  Copyright (c) 2013 Subash Dantuluri. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <ZXCaptureDelegate.h>


@interface QRScanViewController : UIViewController<ZXCaptureDelegate>
@property (weak, nonatomic) IBOutlet UIImageView *imageView;
- (IBAction)logoutAction:(id)sender;
- (IBAction)rescanPressed:(id)sender;

@end
