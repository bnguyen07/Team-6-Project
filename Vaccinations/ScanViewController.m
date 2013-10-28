//
//  ScanViewController.m
//  Vaccinations
//
//  Created by Subash Dantuluri on 10/19/13.
//  Copyright (c) 2013 Subash Dantuluri. All rights reserved.
//

#import "ScanViewController.h"


const int BPPBWIMG = 1;
const int BPPGREYIMG = 8;
const int BPPCOLORIMG = 24;

@interface ScanViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *imageView;
@property (nonatomic, weak) IBOutlet UIToolbar *toolBar;
@property (nonatomic, weak) IBOutlet UIBarButtonItem *takePhotoButton;
@property (nonatomic) UIImagePickerController *imagePickerController;
@property (nonatomic) NSMutableArray *capturedImages;
@property BOOL validImage;
@end

@implementation ScanViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
        self.title = @"Scan";
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    self.capturedImages = [[NSMutableArray alloc] init];
    _validImage = NO;
    [self.tabBarController.tabBar setHidden:NO];

    if (![UIImagePickerController isSourceTypeAvailable:UIImagePickerControllerSourceTypeCamera])
    {
        NSLog(@"No camera detected");
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Alert" message:@"No camera detected on this device" delegate:self cancelButtonTitle:@"OK" otherButtonTitles:nil, nil];
        [alert show];
        // remove camera and done button
    }
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)logoutAction:(id)sender {
    [self dismissViewControllerAnimated:YES completion:nil];
}

/** Acess the photo library */
- (IBAction)photoLibraryButtonPressed:(id)sender {
    [self showImagePickerForSourceType:UIImagePickerControllerSourceTypePhotoLibrary];
}

- (IBAction)performOcrButtonPressed:(id)sender {
    if (self.validImage) {
        NSLog(@"Image detected.");
        
        //Convert image
        
    } else {
        NSLog(@"Image is nil"); // Do nothing
    }
}

- (IBAction)showImagePickerForCamera:(id)sender
{
    [self showImagePickerForSourceType:UIImagePickerControllerSourceTypeCamera];
}

- (void)showImagePickerForSourceType:(UIImagePickerControllerSourceType)sourceType
{
    if (self.imageView.isAnimating)
    {
        [self.imageView stopAnimating];
    }
    
    if (self.capturedImages.count > 0)
    {
        [self.capturedImages removeAllObjects];
    }
    
    UIImagePickerController *imagePickerController = [[UIImagePickerController alloc] init];
    imagePickerController.modalPresentationStyle = UIModalPresentationCurrentContext;
    imagePickerController.sourceType = sourceType;
    imagePickerController.delegate = self;
    
    if (sourceType == UIImagePickerControllerSourceTypeCamera)
    {
        imagePickerController.showsCameraControls = YES;
    }
    
    self.imagePickerController = imagePickerController;
    [self presentViewController:self.imagePickerController animated:YES completion:nil];
}


#pragma mark - Toolbar actions

- (void)takePhoto:(id)sender
{
    [self.tabBarController.tabBar setHidden:YES];
    [self.imagePickerController takePicture];
}

- (void)finishAndUpdate
{
    [self dismissViewControllerAnimated:YES completion:NULL];
    
    if ([self.capturedImages count] > 0)
    {
        self.validImage = YES;
        // Camera took a single picture. Set the imageView with camera shot
        [self.imageView setImage:[self.capturedImages objectAtIndex:0]];
        [self.capturedImages removeAllObjects];
    }
    
    self.imagePickerController = nil;
}

#pragma mark - UIImagePickerControllerDelegate

// This method is called when an image has been chosen from the library or taken from the camera.
- (void)imagePickerController:(UIImagePickerController *)picker didFinishPickingMediaWithInfo:(NSDictionary *)info
{
    UIImage *image = [info valueForKey:UIImagePickerControllerOriginalImage];
    [self.capturedImages addObject:image];
    [self finishAndUpdate];
    [self.tabBarController.tabBar setHidden:NO];
}


- (void)imagePickerControllerDidCancel:(UIImagePickerController *)picker
{
    [self dismissViewControllerAnimated:YES completion:NULL];
    [self.tabBarController.tabBar setHidden:NO];
}

@end
