//
//  ChildSearchContainerVC.m
//  Vaccinations
//
//  Created by Subash Dantuluri on 10/29/13.
//  Copyright (c) 2013 Subash Dantuluri. All rights reserved.
//

#import "ChildSearchContainerVC.h"


@interface ChildSearchContainerVC ()

@end

@implementation ChildSearchContainerVC

@synthesize qrScanVC, searchVC, scanVC, createNewVC;

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
    
    CGRect rect;
    int buttonHeight = 100;
    
    qrScanVC = [self.storyboard instantiateViewControllerWithIdentifier:@"QRScanViewController"];
    qrScanVC.delegate = self;
    rect = qrScanVC.view.frame;
    rect.size = CGSizeMake(rect.size.width, rect.size.height-buttonHeight);
    qrScanVC.view.frame = rect;
    
    
    searchVC = [self.storyboard instantiateViewControllerWithIdentifier:@"SearchViewController"];
    searchVC.delegate = self;
    rect = searchVC.view.frame;
    rect.size = CGSizeMake(rect.size.width, rect.size.height-buttonHeight);
    searchVC.view.frame = rect;
    
    scanVC = [self.storyboard instantiateViewControllerWithIdentifier:@"ScanViewController"];
    scanVC.delegate = self;
    rect = scanVC.view.frame;
    rect.size = CGSizeMake(rect.size.width, rect.size.height-buttonHeight);
    scanVC.view.frame = rect;
    
    createNewVC = [self.storyboard instantiateViewControllerWithIdentifier:@"CreateNewViewController"];
    createNewVC.delegate = self;
    rect = createNewVC.view.frame;
    rect.size = CGSizeMake(rect.size.width, rect.size.height-buttonHeight);
    createNewVC.view.frame = rect;
    
    [self qrScanAction:nil];

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
    
}

- (IBAction)qrScanAction:(id)sender {
    [searchVC.view removeFromSuperview];
    [createNewVC.view removeFromSuperview];
    [scanVC.view removeFromSuperview];
    
    [self.view addSubview:qrScanVC.view];
}

- (IBAction)searchAction:(id)sender {
    [qrScanVC.view removeFromSuperview];
    [createNewVC.view removeFromSuperview];
    [scanVC.view removeFromSuperview];
    
    [self.view addSubview:searchVC.view];
}

- (IBAction)newAction:(id)sender {
    [searchVC.view removeFromSuperview];
    [qrScanVC.view removeFromSuperview];
    [scanVC.view removeFromSuperview];
    
    [self.view addSubview:createNewVC.view];
}

- (IBAction)scanningAction:(id)sender {
    [searchVC.view removeFromSuperview];
    [createNewVC.view removeFromSuperview];
    [qrScanVC.view removeFromSuperview];
    
    [self.view addSubview:scanVC.view];
}

- (void)logout {
    [self dismissViewControllerAnimated:YES completion:nil];
}

@end
