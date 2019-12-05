//
//  Component.h
//  MediatorDesignPatternObjC
//
//  Created by Svetlana Timofeeva on 30/11/2019.
//  Copyright © 2019 jorge. All rights reserved.
//

#ifndef Component_h
#define Component_h

#import "Mediator.h"

@protocol Component <NSObject>

@property  id<Mediator> controller;

@end

#endif /* Component_h */
