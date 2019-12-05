//
//  CentralProcessor.m
//  MediatorDesignPatternObjC2
//
//  Created by Svetlana Timofeeva on 05/12/2019.
//  Copyright © 2019 jorge. All rights reserved.
//

#import "CentralProcessor.h"

@implementation CentralProcessor

- (void)valueChanged:(SmartHousePart *)part
{
    NSLog(@"value changed! we need to do something!");
    if ([part isKindOfClass:[Thermometer class]])
    {
        NSLog(@"Temperature changed");
        [[self _conditioning] startConditioning];
    }
}

@end
