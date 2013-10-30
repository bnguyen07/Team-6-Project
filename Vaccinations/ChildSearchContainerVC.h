//
//  ChildSearchContainerVC.h
//  Vaccinations
//
//  Created by Subash Dantuluri on 10/29/13.
//  Copyright (c) 2013 Subash Dantuluri. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "QRScanViewController.h"
#import "SearchViewController.h"
#import "ScanViewController.h"
#import "CreateNewViewController.h"

@interface ChildSearchContainerVC : UIViewController <QRScanProtocol, SearchProtocol, ScanProtocol, CreateNewProtocol>

@property (nonatomic, retain) QRScanViewController* qrScanVC;
@property (nonatomic, retain) SearchViewController* searchVC;
@property (nonatomic, retain) ScanViewController* scanVC;
@property (nonatomic, retain) CreateNewViewController* createNewVC;

- (IBAction)qrScanAction:(id)sender;
- (IBAction)searchAction:(id)sender;
- (IBAction)newAction:(id)sender;
- (IBAction)scanningAction:(id)sender;

@end
