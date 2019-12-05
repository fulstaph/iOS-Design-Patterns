//
//  CentralProcessor.h
//  MediatorDesignPatternObjC2
//
//  Created by Svetlana Timofeeva on 05/12/2019.
//  Copyright © 2019 jorge. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Thermometer.h"
#import "ConditioningSystem.h"
#import "SmartHousePart.h"

NS_ASSUME_NONNULL_BEGIN

@interface CentralProcessor : NSObject

@property (nonatomic, weak) Thermometer *_thermometer;
@property (nonatomic, weak) ConditioningSystem *_conditioning;

-(void) valueChanged:(SmartHousePart *) part;


@end

NS_ASSUME_NONNULL_END
