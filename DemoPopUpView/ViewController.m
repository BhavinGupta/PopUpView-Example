//
//  ViewController.m
//  DemoPopUpView
//
//  Created by Bhavin Gupta on 19/06/17.
//  Copyright © 2017 Easy Pay. All rights reserved.
//

#import "ViewController.h"
#import <CustomPopUpView/CustomPopUp.h>

@interface ViewController ()<CustomPopUpDelegate>

@end

@implementation ViewController

#pragma mark - View Life Cycle
- (void)viewDidLoad {
    [super viewDidLoad];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

#pragma mark - Button Action Method
- (IBAction)onClickShowPopUp:(id)sender{
    UIWindow *window = [[UIApplication sharedApplication] keyWindow];
    CustomPopUp *customPopUp = [[CustomPopUp alloc]initWithFrame:window.frame];
    [customPopUp setCustomPopUpDelegate:self];
    [window addSubview:customPopUp];
}

#pragma mark - Custom pop view delegate
- (void)dismissCustomPopUpView:(CustomPopUp *)customPopView{
    UIAlertController *alertController = [UIAlertController alertControllerWithTitle:@"Pop Up View" message:@"Submission Successful." preferredStyle:UIAlertControllerStyleAlert];
    [alertController addAction:[UIAlertAction actionWithTitle:@"OK" style:UIAlertActionStyleDefault handler:nil]];
    [self presentViewController:alertController animated:YES completion:nil];
}

@end
