//
//  ViewController.m
//  RNNavigationExample
//
//  Created by Wes Johnson on 2017-06-04.
//  Copyright © 2017 Wealthsimple. All rights reserved.
//

#import "ViewController.h"
#import "RCTRootView.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)rnViewButtonPressed:(id)sender {
    NSLog(@"Show react native view");
    NSURL *jsCodeLocation = [NSURL
                             URLWithString:@"http://localhost:8081/index.ios.bundle?platform=ios"];
    RCTRootView *rootView =
    [[RCTRootView alloc] initWithBundleURL : jsCodeLocation
                         moduleName        : @"RNView"
                         initialProperties :
     @{
       @"helloTarget" : @"World"
       }
                          launchOptions    : nil];
    UIViewController *vc = [[UIViewController alloc] init];
    vc.view = rootView;
    [self presentViewController:vc animated:YES completion:nil];
}

@end
