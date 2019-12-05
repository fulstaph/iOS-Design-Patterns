//
//  Mule.m
//  MediatorDesignPatternObjC
//
//  Created by Svetlana Timofeeva on 01/12/2019.
//  Copyright © 2019 jorge. All rights reserved.
//

#import "Mule.h"

@implementation Mule


- (instancetype)init
{
    self = [super init];
    if (self) {
        _landed = false;
    }
    return self;
}


-(void) flyingAboveAeroport
{
    NSLog(@"mule flew above aeroport");
    [_controller notify:(__bridge Component)(self) forEvent: muleFlewBy];
}

@end
