//
//  main.m
//  MediatorDesignPatternObjC
//
//  Created by Svetlana Timofeeva on 30/11/2019.
//  Copyright © 2019 jorge. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "DispatcherEvent.h"
#import "Mediator.h"
#import "Component.h"
#import "Helicopter.h"
#import "Mule.h"
#import "Plane.h"
#import "DispatcherController.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        DispatcherEvent event = helicopterFlewBy;
        
        Mule *mule = [Mule new];
        Plane *plane = [Plane new];
        Helicopter *helicopter = [Helicopter new];
        
        DispatcherController *dispatcher = [[DispatcherController alloc] initWithMule:mule Plane:plane Helicopter:helicopter];
        
        mule.controller = dispatcher;
        plane.controller = dispatcher;
        helicopter.controller = dispatcher;
        
        
        [mule flyingAboveAeroport];
        [plane flyingAboveAeroport];
        [helicopter flyingAboveAeroport];
        
        NSLog(@"Hello, World!");
    }
    return 0;
}
