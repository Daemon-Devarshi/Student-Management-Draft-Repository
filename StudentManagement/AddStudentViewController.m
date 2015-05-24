//
//  AddStudentViewController.m
//  StudentManagement
//
//  Created by Devarshi on 4/12/15.
//  Copyright (c) 2015 POCMerchant. All rights reserved.
//

#import "AddStudentViewController.h"
#import "AppDelegate.h"

@interface AddStudentViewController ()
@property (weak, nonatomic) IBOutlet UITextField *studentNameTextField;
@property (weak, nonatomic) IBOutlet UITextField *studentBranchTextField;
@property (weak, nonatomic) IBOutlet UITextField *studentSemesterTextField;
@end
@implementation AddStudentViewController

- (IBAction)submitForm:(id)sender {
    NSString *studentName = self.studentNameTextField.text;
    NSString *studentBranch = self.studentBranchTextField.text;
    NSString *studentSemester = self.studentSemesterTextField.text;
    
    NSDictionary *inputDictionary = @{@"studentName" : studentName,@"studentBranch" : studentBranch,@"studentSemester":studentSemester};
    
    AppDelegate *appDelegate = (AppDelegate *)[[UIApplication sharedApplication] delegate];
    [appDelegate.studentsArray addObject:inputDictionary];
    
}
@end
