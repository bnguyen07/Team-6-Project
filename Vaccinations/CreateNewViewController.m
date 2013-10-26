//
//  CreateNewViewController.m
//  Vaccinations
//
//  Created by Subash Dantuluri on 10/19/13.
//  Copyright (c) 2013 Subash Dantuluri. All rights reserved.
//

#import "CreateNewViewController.h"

//Brian : create new record function
// October 23, 2013
#define kPostURL @"http://localhost/postNewRecord.php"

#define kpatient_id @"patient_id"

#define kfirst_name @"first_name"

#define klast_name @"last_name"

#define kmiddle_name @"middle_name"

#define kbirthdate @"birthdate"

#define kgender  @"gender"

#define kmothers_name  @"mothers_name"

#define kfathers_name @"fathers_name"

#define kbirth_street_number @"birth_street_number"

#define kbirth_street_name @"birth_street_name"

#define kbirth_city @"birth_city"

#define kbirth_state @"birth_state"

#define kbirth_zipcode  @"birth_zipcode"

#define kcurrent_street_number  @"current_street_number"

#define kcurrent_street_name @"current_street_name"

#define kcurrent_city @"current_city"

#define kcurrent_state @"current_state"

#define kcurrent_zipcode  @"current_zipcode "

@interface CreateNewViewController ()

@end

@implementation CreateNewViewController

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
    self.title = @"Create New";
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

//Brian: create s string connection for post
-(void) postNewRecord:(NSString*) patientID withFirstName:(NSString*) firstName
         withLastName:(NSString*) lastName withMiddleName:(NSString*) middleName
        withBirthDate:(NSDate*) birthdate withGender:(NSString*) gender
       withMotherName:(NSString*) motherName withFatherName:(NSString*) fatherName
withBirthStreetNumber:(NSString*) birthStreetNumber withBirthStreetName:(NSString*) birthStreetName
        withBirthCity:(NSString*) birthCity withBirthState:(NSString*) birthState
     withBirthZipcode:(NSString*) birthZipcode withCurrentStreetNumber:(NSString*) currentStreetNumber
withCurrentStreetName:(NSString*) currentStreetName withCurrentCity:(NSString*) currentCity
     withCurrentState:(NSString*) currentState withCurrentZipcode:(NSString*) currentZipcode {
    
    
    NSMutableString *postString = [NSMutableString stringWithString:kPostURL];
    [postString appendString:[NSString stringWithFormat:@"?%@=%@", kpatient_id, patientID]];
    
    [postString appendString:[NSString stringWithFormat:@"&%@=%@", kfirst_name, firstName]];
    
    [postString appendString:[NSString stringWithFormat:@"&%@=%@", klast_name, lastName]];
    
    [postString appendString:[NSString stringWithFormat:@"&%@=%@", kmiddle_name, middleName]];
    
    //Convert date to string
    [postString appendString:[NSString stringWithFormat:@"&%@=%@", kbirthdate, birthdate]];
    
    [postString appendString:[NSString stringWithFormat:@"&%@=%@", kgender, gender]];
    [postString appendString:[NSString stringWithFormat:@"&%@=%@", kmothers_name, motherName]];
    [postString appendString:[NSString stringWithFormat:@"&%@=%@", kfathers_name, fatherName]];
    [postString appendString:[NSString stringWithFormat:@"&%@=%@", kbirth_street_number, birthStreetNumber]];
    [postString appendString:[NSString stringWithFormat:@"&%@=%@", kbirth_street_name, birthStreetName]];
    [postString appendString:[NSString stringWithFormat:@"&%@=%@", kbirth_city, birthCity]];
    [postString appendString:[NSString stringWithFormat:@"&%@=%@", kbirth_state, birthState]];
    [postString appendString:[NSString stringWithFormat:@"&%@=%@", kbirth_zipcode, birthZipcode]];
    [postString appendString:[NSString stringWithFormat:@"&%@=%@", kcurrent_street_number, currentStreetNumber]];
    [postString appendString:[NSString stringWithFormat:@"&%@=%@", kcurrent_street_name, currentStreetName]];
    [postString appendString:[NSString stringWithFormat:@"&%@=%@", kcurrent_city, currentCity]];
    [postString appendString:[NSString stringWithFormat:@"&%@=%@", kcurrent_state, currentState]];
    [postString appendString:[NSString stringWithFormat:@"&%@=%@", kcurrent_zipcode, currentZipcode]];
    
    NSLog(@"%@",postString);
    [postString setString:[postString stringByAddingPercentEscapesUsingEncoding:NSUTF8StringEncoding]];
    NSMutableURLRequest * request = [[NSMutableURLRequest alloc] initWithURL:[NSURL URLWithString:postString]];
    [request setHTTPMethod:@"POST"];
    
    _postNewRecord = [[NSURLConnection alloc] initWithRequest:request delegate:self startImmediately:YES];
    
    NSLog(@"%@", _postNewRecord);
    
}


//Brian: call the URL to post the data
- (IBAction)createNewRecord:(id)sender {
    
    if ([_recordID.text  isEqual: @""] || [_lastName.text  isEqual: @""] || [_firstName.text  isEqual: @""] || [_motherName.text  isEqual: @""]) {
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Alert" message:@"Please fill in required fields." delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil, nil];
        [alert show];
        return;
    } else {
        
        [self postNewRecord:_recordID.text withFirstName:_firstName.text withLastName:_lastName.text withMiddleName:_middleName.text withBirthDate:[_dateOfBirth date] withGender:[_gender titleForSegmentAtIndex:_gender.selectedSegmentIndex] withMotherName:_motherName.text withFatherName:_fatherName.text withBirthStreetNumber:_streetNumberPOB.text withBirthStreetName:_streetNamePOB.text withBirthCity:_cityPOB.text withBirthState:_statePOB.text withBirthZipcode:_zipcodePOB.text withCurrentStreetNumber:_currentStreetNumber.text withCurrentStreetName:_currentStreetName.text withCurrentCity:_currentCity.text withCurrentState:_currentState.text withCurrentZipcode:_currentZipcode.text];
        

        UIAlertView *successfulAlert = [[UIAlertView alloc] initWithTitle:@"Alert" message:@"New patient record is successfully created" delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil, nil];
        [successfulAlert show];
        return;

    
    }
    
    
    
    
    
    NSLog(@"Call the post method");
    
    
}



//Brian: To dismisss keyboard
- (IBAction)dimissKeyboard:(id)sender {
    [_recordID resignFirstResponder];
    [_lastName resignFirstResponder];
    [_firstName resignFirstResponder];
    [_middleName resignFirstResponder];
    [_motherName resignFirstResponder];
    [_motherMaidenName resignFirstResponder];
    [_fatherName resignFirstResponder];
    [_streetNumberPOB resignFirstResponder];
    [_streetNamePOB resignFirstResponder];
    [_cityPOB resignFirstResponder];
    [_statePOB resignFirstResponder];
    [_zipcodePOB resignFirstResponder];
    [_currentStreetNumber resignFirstResponder];
    [_currentStreetName resignFirstResponder];
    [_currentCity resignFirstResponder];
    [_currentState resignFirstResponder];
    [_currentZipcode resignFirstResponder];
    
}





- (IBAction)logoutAction:(id)sender {
    [self dismissViewControllerAnimated:YES completion:nil];
}

@end
