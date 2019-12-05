//
//  Thermometer.m
//  MediatorDesignPatternObjC2
//
//  Created by Svetlana Timofeeva on 05/12/2019.
//  Copyright © 2019 jorge. All rights reserved.
//

#import "Thermometer.h"
//#import "SmartHousePart.h"
@implementation Thermometer
- (void)temperatureChanged:(int)temperature
{
    self.temperature = temperature;
    [self numbersChanged];
}
@end
