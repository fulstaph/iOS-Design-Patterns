//
//  Mediator.h
//  MediatorDesignPatternObjC
//
//  Created by Svetlana Timofeeva on 30/11/2019.
//  Copyright © 2019 jorge. All rights reserved.
//

#ifndef Mediator_h
#define Mediator_h

#import "DispatcherEvent.h"
//#import "Component.h"

@protocol Mediator <NSObject>

-(void) notify: (Component)sender forEvent: (DispatcherEvent)event;

@end

#endif /* Mediator_h */
