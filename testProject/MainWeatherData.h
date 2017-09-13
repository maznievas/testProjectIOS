//
//  MainWeatherData.h
//  testProject
//
//  Created by Pro on 12.09.17.
//  Copyright © 2017 com.testProject. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "JSONModel.h"

@interface MainWeatherData : JSONModel

@property (nonatomic) int humidity;
@property (nonatomic) int pressure;
@property (nonatomic) double temp;
@property (nonatomic) double temp_max;
@property (nonatomic) double temp_min;

-(id) init;
-(id) initWithJSON:(id) json;

-(int) getHumidity;
-(int) getPressure;
-(double) getTemp;
-(double) getTempMax;
-(double) getTempMin;

@end
