//
// Created by Maya on 1/16/15.
// Copyright (c) 2015 Maya. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "SpaceUnit.m"


@interface SpaceUnit : NSObject

@property (nonatomic,strong) NSString *id;

typedef NS_ENUM(NSInteger, SpaceUinitType) {TypeExperimental , TypeRealTime, TypeModified};

-(id)initWithUniqueId: (NSString *)string;

-(NSString *)name;

-(NSString* )specificationId;

-(NSNumber*) groupNumber;

-(NSString*) modelSpecifier;

-(SpaceUinitType) type;

-(NSUInteger) year;

-(NSString*) spaceUnitUniqueID;



@end