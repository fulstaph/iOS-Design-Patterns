//
//  SmartHousePart.m
//  MediatorDesignPatternObjC2
//
//  Created by Svetlana Timofeeva on 05/12/2019.
//  Copyright © 2019 jorge. All rights reserved.
//

#import "SmartHousePart.h"
#import "CentralProcessor.h"
@implementation SmartHousePart
- (id)initWithCore:(CentralProcessor *)processor
{
    self = [super init];
    _processor = processor;
    return self;
}

- (void)numbersChanged
{
    [_processor valueChanged:self];
}
@end
