//
//  ChildDetailsViewController.m
//  Vaccinations
//
//  Created by Subash Dantuluri on 10/19/13.
//  Copyright (c) 2013 Subash Dantuluri. All rights reserved.
//

#import "ChildDetailsViewController.h"
#import "VaccinesDueListVC.h"
#import "VaccineScheduleListVC.h"
#import "PatientsHistoryListVC.h"

//#define kGetUrlForPatients @"http://localhost/searchPatients.php"
#define kGetUrlForPatients @"http://192.168.1.3/searchPatients.php"

@interface ChildDetailsViewController ()

@end

@implementation ChildDetailsViewController
@synthesize childDict;

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
    
   NSLog(@"ChildDetails Record ID: %@", [self recordID]);
   if ([[self recordID] isEqualToString:NULL] || [[self recordID] isEqualToString:@""]) {
        
        _lastNameTF.text = [childDict objectForKey:@"last_name"];
        _firstNameTF.text = [childDict objectForKey:@"first_name"];
        _MotherMaidenName.text = [childDict objectForKey:@"mothers_name"];
        _FatherName.text = [childDict objectForKey:@"fathers_name"];
        _recordNumber.text = [childDict objectForKey:@"patient_id"];
        _BirthStreetNumber.text = [childDict objectForKey:@"birth_street_number"];
        _BirthStreetName.text = [childDict objectForKey:@"birth_street_name"];
        _BirthCity.text = [childDict objectForKey:@"birth_city"];
        _BirthState.text = [childDict objectForKey:@"birth_state"];
        _BirthZipcode.text = [childDict objectForKey:@"birth_zipcode"];
        _CurrentStreetNumber.text = [childDict objectForKey:@"current_street_number"];
        _CurrentStreetName.text = [childDict objectForKey:@"current_street_name"];
        _CurrentCity.text = [childDict objectForKey:@"current_city"];
        _CurrentState.text = [childDict objectForKey:@"current_state"];
        _CurrentZipcode.text = [childDict objectForKey:@"current_zipcode"];
    }
    else {
       NSLog(@"ChildDetails: Got Record ID. Retrieving Record");
       NSURL *url = [NSURL URLWithString:kGetUrlForPatients];
       NSData *data = [NSData dataWithContentsOfURL:url];
       NSError *error;
       
       if (data) {
          self.patients = [NSJSONSerialization JSONObjectWithData:data options:kNilOptions error:&error];
          NSLog(@"patients: %@", _patients);
          if (self.patients == NULL) {
             NSLog(@"Check the searchPatients.php file for correct DB");
          }

          for (int i = 0 ; i < [self.patients count]; i++) {
             if ([[self recordID] isEqual: [[_patients objectAtIndex:i] objectForKey:@"patient_id"]]) {
                NSLog(@"Record found. Loading fields");
                  _lastNameTF.text = [[_patients objectAtIndex:i] objectForKey:@"last_name"];
                  _firstNameTF.text = [[_patients objectAtIndex:i]objectForKey:@"first_name"];
                  _MotherMaidenName.text = [[_patients objectAtIndex:i] objectForKey:@"mothers_name"];
                  _FatherName.text = [[_patients objectAtIndex:i]objectForKey:@"fathers_name"];
                  _recordNumber.text = [[_patients objectAtIndex:i] objectForKey:@"patient_id"];
                  _BirthStreetNumber.text = [[_patients objectAtIndex:i] objectForKey:@"birth_street_number"];
                  _BirthStreetName.text = [[_patients objectAtIndex:i] objectForKey:@"birth_street_name"];
                  _BirthCity.text = [[_patients objectAtIndex:i] objectForKey:@"birth_city"];
                  _BirthState.text = [[_patients objectAtIndex:i] objectForKey:@"birth_state"];
                  _BirthZipcode.text = [[_patients objectAtIndex:i] objectForKey:@"birth_zipcode"];
                  _CurrentStreetNumber.text = [[_patients objectAtIndex:i] objectForKey:@"current_street_number"];
                  _CurrentStreetName.text = [[_patients objectAtIndex:i] objectForKey:@"current_street_name"];
                  _CurrentCity.text = [[_patients objectAtIndex:i] objectForKey:@"current_city"];
                  _CurrentState.text = [[_patients objectAtIndex:i] objectForKey:@"current_state"];
                  _CurrentZipcode.text = [[_patients objectAtIndex:i] objectForKey:@"current_zipcode"];
                [self viewWillAppear:YES];
                break;
             } // end if
          } // end for
       } else {
          NSLog(@"ChildDetails: data is nil.");
          UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Connection Error" message:@"data is nil. Check the IP address of the server." delegate:self cancelButtonTitle:@"OK" otherButtonTitles:nil, nil];
          [alert show];
       } // end if..else data
    } // end else
} // end viewDidLoad

-(void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:YES];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)viewChildRecordsAction:(id)sender {
    
    [self performSegueWithIdentifier:@"CD2CRTVC" sender:self];
}

- (void) prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    //subash
    //setting title on the vaccinesdetails navigation controller as the childname
    if ([segue.identifier isEqualToString:@"CD2CRTVC"]) {
        NSString* childFName = [childDict objectForKey:@"first_name"];
        NSString* childLName = [childDict objectForKey:@"last_name"];
        UITabBarController* tabC =  segue.destinationViewController;
        UINavigationController* nav = [tabC.viewControllers objectAtIndex:0];
        UINavigationController* nav1 = [tabC.viewControllers objectAtIndex:1];
        UINavigationController* nav2 = [tabC.viewControllers objectAtIndex:2];
        VaccinesDueListVC* vaccDue = (VaccinesDueListVC *)[nav.viewControllers objectAtIndex:0];
        VaccineScheduleListVC* vaccSch = (VaccineScheduleListVC *)[nav1.viewControllers objectAtIndex:0];
        PatientsHistoryListVC* patHis = (PatientsHistoryListVC *)[nav2.viewControllers objectAtIndex:0];
        [vaccDue setChildName:[NSString stringWithFormat:@"%@ %@",childFName, childLName]];
        [vaccSch setChildName:[NSString stringWithFormat:@"%@ %@",childFName, childLName]];
        [patHis setChildName:[NSString stringWithFormat:@"%@ %@",childFName, childLName]];
        
    }
    
}


@end
