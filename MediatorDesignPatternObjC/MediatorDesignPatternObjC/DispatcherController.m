//
//  DispatcherController.m
//  MediatorDesignPatternObjC
//
//  Created by Svetlana Timofeeva on 01/12/2019.
//  Copyright © 2019 jorge. All rights reserved.
//

#import "DispatcherController.h"

@implementation DispatcherController

- (instancetype)init
{
    self = [super init];
    if (self) {
        
    }
    return self;
}

- (id)initWithMule: (Mule *)mule
                       Plane: (Plane *)plane
                  Helicopter: (Helicopter *)helicopter
{
    self = [super init];
    if (self) {
        _mule = mule;
        _plane = plane;
        _helicopter = helicopter;
    }
    return self;
}

- (void)notify:(Component)sender forEvent:(DispatcherEvent)event {
    switch (event) {
        case helicopterFlewBy:
            _helicopter.landed = YES;
            NSLog(@"helicopter landed");
            break;
        case planeFlewBy:
            _plane.landed = YES;
            NSLog(@"plane landed");
            break;
        case muleFlewBy:
            _mule.landed = YES;
            NSLog(@"mule landed");
            break;
        default:
            NSLog(@"well");
            break;
    }
}

@end
