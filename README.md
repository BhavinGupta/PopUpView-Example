# PopUpView-Example
Pop Up View using cocoapods.

Simple example of pop up view on window using Custom pop up view with pod.

Please take a look towards this demo and also take a look towards CustomPopUpView pod example which i have integrated in this
example using dynamic framework.

ViewController.m

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
          NSLog(@"dismissed pressed.");
      }
