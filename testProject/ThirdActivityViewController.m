//
//  ThirdActivityViewController.m
//  testProject
//
//  Created by Pro on 11.09.17.
//  Copyright © 2017 com.testProject. All rights reserved.
//

#import "ThirdActivityViewController.h"
#import "WeatherGetter.h"
#import "MainWeatherData.h"

@interface ThirdActivityViewController ()

@end

@implementation ThirdActivityViewController
{
    IBOutlet UILabel *HumidityLabel;
    IBOutlet UILabel *TempertureLabel;
    IBOutlet UILabel *MaxTempLabel;
    //IBOutlet UILabel *MinTempLabel;
    IBOutlet UILabel *PressureLabel;
    IBOutlet UILabel *MinTempLabel;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    NSString *city = @"London,uk";
    WeatherGetter *weatherGetter = [[WeatherGetter alloc] initWithCity:city];
   // [weatherGetter getJSONWeather];
    
   // int num1 = [weatherGetter getHumidity];
    
//    [weatherGetter getJSONWeather: 
//                         completion:^{
//                             [self showData:weatherGetter];
//                         }];
    
     [weatherGetter getJSONWeather:^{
         [self showData:weatherGetter];
     }];
    
    
    //NSLog(@"HUMIDITY %d", [weatherGetter getHumidity]);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void) showData:(WeatherGetter* )weatherGetter
{
    NSLog(@"HUMIDITY %d", [weatherGetter getHumidity]);
    [PressureLabel setText:[NSString stringWithFormat:@"%d", [weatherGetter getPressure]]];
    [HumidityLabel setText:[NSString stringWithFormat:@"%d",[weatherGetter getHumidity]]];
    [TempertureLabel setText:[NSString stringWithFormat:@"%g", [weatherGetter getTemp]]];
    [MaxTempLabel setText:[NSString stringWithFormat:@"%g", [weatherGetter getTempMax]]];
    [MinTempLabel setText:[NSString stringWithFormat:@"%g", [weatherGetter getTempMin]]];
}

//testCommit

@end
