//
//  StudentsListViewController.m
//  StudentManagement
//
//  Created by Devarshi on 4/11/15.
//  Copyright (c) 2015 POCMerchant. All rights reserved.
//

#import "StudentsListViewController.h"
#import "AppDelegate.h"

@implementation StudentsListViewController
- (void)viewDidLoad{
    AppDelegate *appDelegate = (AppDelegate *)[[UIApplication sharedApplication] delegate];
    
    NSDictionary *studentOne = @{@"studentName" : @"Devarshi",@"studentBranch" : @"CS",@"studentSemester":@"4th"};
    NSDictionary *studentTwo = @{@"studentName" : @"Rahul",@"studentBranch" : @"IT",@"studentSemester":@"7th"};
    
    [appDelegate.studentsArray addObject:studentOne];
    [appDelegate.studentsArray addObject:studentTwo];
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    AppDelegate *appDelegate = (AppDelegate *)[[UIApplication sharedApplication] delegate];
    return [appDelegate.studentsArray count];
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    AppDelegate *appDelegate = (AppDelegate *)[[UIApplication sharedApplication] delegate];
    UITableViewCell *studentCell = [tableView dequeueReusableCellWithIdentifier:@"StudentCell"];
    
    UILabel *studentName = (UILabel *)[studentCell viewWithTag:201];
    UILabel *studentBranch = (UILabel *)[studentCell viewWithTag:202];
    UILabel *studentSemester = (UILabel *)[studentCell viewWithTag:203];
    
    NSDictionary *studentInfo = [appDelegate.studentsArray objectAtIndex:indexPath.row];
    
    studentName.text = studentInfo[@"studentName"];
    studentBranch.text = studentInfo[@"studentBranch"];
    studentSemester.text = studentInfo[@"studentSemester"];
    
    return studentCell;
}

@end
