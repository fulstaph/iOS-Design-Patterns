//
//  Mule.h
//  MediatorDesignPatternObjC
//
//  Created by Svetlana Timofeeva on 01/12/2019.
//  Copyright © 2019 jorge. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Component.h"

NS_ASSUME_NONNULL_BEGIN

@interface Mule : NSObject<Component>
@property id<Mediator> controller;

@property BOOL landed;

-(void) flyingAboveAeroport;

@end

NS_ASSUME_NONNULL_END
