//
//  QRScanViewController.h
//  Vaccinations
//
//  Created by Subash Dantuluri on 10/19/13.
//  Copyright (c) 2013 Subash Dantuluri. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <ZXCaptureDelegate.h>

@protocol QRScanProtocol
- (void)logout;
@end

@interface QRScanViewController : UIViewController<ZXCaptureDelegate>
@property (weak, nonatomic) IBOutlet UIImageView *imageView;
@property (weak) id <QRScanProtocol> delegate;

- (IBAction)logoutAction:(id)sender;
- (IBAction)rescanPressed:(id)sender;

@end
