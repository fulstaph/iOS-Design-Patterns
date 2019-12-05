//
//  ConditioningSystem.h
//  MediatorDesignPatternObjC2
//
//  Created by Svetlana Timofeeva on 05/12/2019.
//  Copyright © 2019 jorge. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "SmartHousePart.h"
NS_ASSUME_NONNULL_BEGIN
//@class SmartHousePart;
@interface ConditioningSystem : SmartHousePart
-(void) startConditioning;
@end

NS_ASSUME_NONNULL_END
