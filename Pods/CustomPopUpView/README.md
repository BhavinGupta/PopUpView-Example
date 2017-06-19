# CustomPopUpView
Custom Pop Up View for iPad and iPhone using Auto Layout

A simple custom pop up view using dynamic framework for all views and devices using pod and autolayout from iOS8 and greater.
Use it in your project using pod for this custom pop up view.

Install Cocoa Pods as below:

Step 1 : Enter this pod 'CustomPopUpView', :git => 'https://github.com/BhavinGupta/CustomPopUpView.git'
         in your pod file of your project.
         
Step 2 : Write in terminal the following command: 
         pod install

That's it you are now installed with custom pop up view 

In your view controller where you want to show the pop up import this line below:
#import <CustomPopUpView/CustomPopUp.h>

Write the following line of code in your action event to open and close custom pop up as below:
CustomPopUp *customPopUp = [[CustomPopUp alloc]initWithFrame:self.view.frame];
[self.view addSubview:customPopUp];