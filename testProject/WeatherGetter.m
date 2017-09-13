//
//  WeatherGetter.m
//  testProject
//
//  Created by Pro on 11.09.17.
//  Copyright © 2017 com.testProject. All rights reserved.
//

#import "WeatherGetter.h"
#import <AFNetworking.h>
#import "MainWeatherData.h"


@interface WeatherGetter ()

@end

@implementation WeatherGetter

-(id)initWithCity:(NSString *)city
{
    if ( self = [super init] ) {
        _BASE_URL = @"https://api.openweathermap.org";
        _API_KEY = @"&appid=ce0dc7f6ea336e6496cd657a96d9af0a";
        _CITY = city;
    }
    return self;
}

//http://samples.openweathermap.org/data/2.5/weather?q=London,uk&appid=b1b15e88fa797225412429c1c50c122a1

-(void) getJSONWeather:(void (^)(void))completion
{
   // [delegate weatherWillGetJSON:self];
    
    NSURL *baseURL = [NSURL URLWithString:_BASE_URL];
    
    NSDictionary *parameters = @{@"q": _CITY, @"appid": @"ce0dc7f6ea336e6496cd657a96d9af0a"};
    
    AFHTTPSessionManager *manager = [[AFHTTPSessionManager alloc] initWithBaseURL:baseURL];
    [manager GET:@"data/2.5/weather"
      parameters:parameters
         success:^(NSURLSessionDataTask *task, id responseObject) {
         // Success
         _mainWeatherData = [[MainWeatherData alloc] initWithJSON:responseObject];
             completion();
         }
         failure:^(NSURLSessionDataTask *task, NSError *error) {
         // Failure
         NSLog(@"Failure: %@", error);
     }];
    
  //  [delegate weatherDidGetJSON:self];
}

//- (void)setDelegate:(id)aDelegate {
//    delegate = aDelegate; /// Not retained
//}

-(int) getHumidity
{
    int num = [_mainWeatherData humidity];
    return [_mainWeatherData humidity];
}
-(int) getPressure
{
     return [_mainWeatherData getPressure];
}
-(double) getTemp
{
     return [_mainWeatherData getTemp];
}
-(double) getTempMax
{
     return [_mainWeatherData getTempMax];
}
-(double) getTempMin
{
     return [_mainWeatherData getTempMin];
}

@end
