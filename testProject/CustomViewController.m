//
//  CustomViewController.m
//  testProject
//
//  Created by Pro on 11.09.17.
//  Copyright © 2017 com.testProject. All rights reserved.
//

#import "CustomViewController.h"

@interface CustomViewController ()



@end

@implementation CustomViewController

{
    IBOutlet UIButton *counterButton;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    _counter = 0;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/
- (IBAction)message:(id)sender {
    UIAlertController *alertController = [UIAlertController alertControllerWithTitle:@"Demo" message:@"Hello" preferredStyle:UIAlertControllerStyleAlert];
    [self presentViewController:alertController animated:YES completion:nil];
}
- (IBAction)count:(id)sender {
    _counter++;
    NSString *counterStr = 	[NSString stringWithFormat:@"%d", _counter];
    [counterButton setTitle:counterStr forState:UIControlStateNormal];
   // [counterButton set];
}

@end
