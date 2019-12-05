//
//  main.m
//  MediatorDesignPatternObjC2
//
//  Created by Svetlana Timofeeva on 05/12/2019.
//  Copyright © 2019 jorge. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CentralProcessor.h"
#import "Thermometer.h"
#import "ConditioningSystem.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        CentralProcessor *cpu = [[CentralProcessor alloc] init];
        Thermometer *therm = [[Thermometer alloc] initWithCore:cpu];
        ConditioningSystem *cond = [[ConditioningSystem alloc] initWithCore:cpu];
        
        cpu._thermometer = therm;
        cpu._conditioning = cond;
        
        [therm temperatureChanged:58];
    }
    return 0;
}
