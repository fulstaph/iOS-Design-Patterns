//
//  DispatcherController.h
//  MediatorDesignPatternObjC
//
//  Created by Svetlana Timofeeva on 01/12/2019.
//  Copyright © 2019 jorge. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Component.h"
#import "Mule.h"
#import "Plane.h"
#import "Helicopter.h"

NS_ASSUME_NONNULL_BEGIN

@interface DispatcherController : NSObject<Mediator>
@property (nonnull) Mule *mule;
@property (nonnull) Plane *plane;
@property (nonnull) Helicopter *helicopter;

-(void) notify:(Component)sender forEvent:(DispatcherEvent)event;
- (id)initWithMule: (Mule *)mule
             Plane: (Plane *)plane
        Helicopter: (Helicopter *)helicopter;
@end

NS_ASSUME_NONNULL_END
