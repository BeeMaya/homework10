//
// Created by Maya on 1/16/15.
// Copyright (c) 2015 Maya. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, SpaceUnitType) {TypeExperimental , TypeRealTime, TypeModified};

@interface SpaceUnit : NSObject

@property NSString *id;

@property NSString *name;

@property NSString* specificationId;

@property NSNumber* groupNumber;

@property NSString* modelSpecifier;

@property SpaceUnitType type;

@property NSUInteger year;

@property NSString* spaceUnitUniqueID;

-(id)initWithUniqueId: (NSString *)string;

@end