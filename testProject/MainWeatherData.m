//
//  MainWeatherData.m
//  testProject
//
//  Created by Pro on 12.09.17.
//  Copyright © 2017 com.testProject. All rights reserved.
//

#import "MainWeatherData.h"

@implementation MainWeatherData

-(id) init
{
    self = [super init];
    if(self)
    {
        _humidity = 0;
        _pressure = 0;
        _temp = 0;
        _temp_max = 0;
        _temp_min = 0;
    }
    return self;
}

-(id) initWithJSON:(id)json
{
    NSLog(@"Success: %@", json);
   
    NSDictionary *arrayMain = json[@"main"];
    
    NSString *tempStr = [arrayMain objectForKey:@"temp"];
    NSString *humidityStr = [arrayMain objectForKey:@"humidity"];
    NSString *pressureStr = [arrayMain objectForKey:@"pressure"];
    NSString *temp_maxStr = [arrayMain objectForKey:@"temp_max"];
    NSString *temp_minStr = [arrayMain objectForKey:@"temp_min"];

    _temp = [tempStr doubleValue];
    _humidity = [humidityStr integerValue];
    _pressure = [pressureStr integerValue];
    _temp_min = [temp_minStr doubleValue];
    _temp_max = [temp_maxStr doubleValue];
  
   // NSLog(@"key/value: %@", _temp);
    
    return self;
}

//-(int) getHumidity{ return _humidity; }
-(int) getPressure{ return _pressure; }
-(double) getTemp{ return _temp; }
-(double) getTempMax{ return _temp_max; }
-(double) getTempMin{ return _temp_min; }

@end
