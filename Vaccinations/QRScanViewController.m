//
//  QRScanViewController.m
//  Vaccinations
//
//  Created by Subash Dantuluri on 10/19/13.
//  Copyright (c) 2013 Subash Dantuluri. All rights reserved.
//

#import <AudioToolbox/AudioToolbox.h>
#import <AVFoundation/AVFoundation.h>
#import <ZXCapture.h>
#import <ZXResult.h>
#import "QRScanViewController.h"
#import "ChildDetailsViewController.h"

@interface QRScanViewController ()
@property ZXCapture *capture;
@property (strong, nonatomic) NSMutableString *scannedResult;
@property BOOL gotResult;
@end

#pragma mark - QR Scanner View Controller Methods

@implementation QRScanViewController

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
	// Do any additional setup after loading the view.
   
   self.title = @"QR Scan";
   self.gotResult = NO;
   
   if (![UIImagePickerController isSourceTypeAvailable:UIImagePickerControllerSourceTypeCamera])
   {
      UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Alert" message:@"No camera detected on this device" delegate:self cancelButtonTitle:@"OK" otherButtonTitles:nil, nil];
      [alert show];
   }
    
    _scannedResult = [[NSMutableString alloc] initWithFormat:@""];

}

- (void)viewWillAppear:(BOOL)animated {
   [super viewWillAppear:animated];
   
   self.capture = [[ZXCapture alloc] init];
   self.capture.delegate = self;
   self.capture.rotation = 90.0f;
   
   // Use the back camera
   self.capture.camera = self.capture.back;
   
   self.capture.layer.frame = _imageView.bounds;
   [_imageView.layer addSublayer:self.capture.layer];
   //   [self.view bringSubviewToFront:self.resultLabel];
}

- (void)didReceiveMemoryWarning
{
   [super didReceiveMemoryWarning];
   // Dispose of any resources that can be recreated.
      
}

- (IBAction)logoutAction:(id)sender {
   [self dismissViewControllerAnimated:YES completion:nil];
}

- (IBAction)rescanPressed:(id)sender {
    _scannedResult = [[NSMutableString alloc] initWithFormat:@""];
    self.gotResult = NO;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)toInterfaceOrientation {
   return toInterfaceOrientation == UIInterfaceOrientationPortrait;
}

#pragma mark - Private Methods

- (NSString*)displayForResult:(ZXResult*)result {
   NSString *formatString;
   switch (result.barcodeFormat) {
      case kBarcodeFormatQRCode:
         formatString = @"QR Code";
         break;
      default:
         formatString = @"Unknown";
   }
   
   return [NSString stringWithFormat:@"Scanned! Format: %@ Contents:%@", formatString, result.text];
}

#pragma mark - ZXCaptureDelegate Methods

- (void)captureResult:(ZXCapture*)capture result:(ZXResult*)result {
   if (result && ![self gotResult]) {
      // We got a result. Display information about the result onscreen.
      self.gotResult = YES;
      [_scannedResult appendString:result.text];
      NSLog(@"scanned result: %@", result.text);

      // Vibrate
      AudioServicesPlaySystemSound(kSystemSoundID_Vibrate);
      [self performSegueWithIdentifier:@"QR2CD" sender:self];
   }
}

- (void)captureSize:(ZXCapture*)capture width:(NSNumber*)width height:(NSNumber*)height {
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
   if ([segue.identifier isEqualToString:@"QR2CD"]) {
      ChildDetailsViewController *cd = [segue destinationViewController];
      [cd setRecordID:[NSString stringWithFormat:@"%@", [self scannedResult]]];
      NSLog(@"QR2CD: Record ID: %@", [self scannedResult]);
   }
}


@end