//
//  SmartHousePart.h
//  MediatorDesignPatternObjC2
//
//  Created by Svetlana Timofeeva on 05/12/2019.
//  Copyright © 2019 jorge. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN
@class CentralProcessor;

@interface SmartHousePart : NSObject
{
@private CentralProcessor *_processor;
}
- (id)initWithCore:(CentralProcessor *)processor;

- (void)numbersChanged;
@end

NS_ASSUME_NONNULL_END
