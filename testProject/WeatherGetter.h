//
//  WeatherGetter.h
//  testProject
//
//  Created by Pro on 11.09.17.
//  Copyright © 2017 com.testProject. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MainWeatherData.h"

@interface WeatherGetter : NSObject

//{
 //   id delegate;
//}

@property NSString *URL;
@property NSString *API_KEY;
@property NSString *CITY;
@property NSString *BASE_URL;

@property MainWeatherData *mainWeatherData;

- (id) initWithCity:(NSString *) city;
- (void ) getJSONWeather:(void (^)(void))completion;
//- (void)setDelegate:(id)delegate;

-(int) getHumidity;
-(int) getPressure;
-(double) getTemp;
-(double) getTempMax;
-(double) getTempMin;

@end

//@interface NSObject(MyDelegateMethods)
//- (void)weatherWillGetJSON:(WeatherGetter *)weatherGetter;
//- (void)weatherDidGetJSON:(WeatherGetter *)weatherGetter;
//@end
