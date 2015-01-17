//
//  SpaceUnitTest.m
//  Homework10
//
//  Created by Maya on 1/17/15.
//  Copyright (c) 2015 Maya. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <XCTest/XCTest.h>
#import "SpaceUnit.h"

@interface SpaceUnitTest : XCTestCase

@end

@implementation SpaceUnitTest

- (void)testParseCorrectData {

   NSString *string = @"quest.i502/17@M-22(X)2012#18297236";

    SpaceUnit* unit = [[SpaceUnit alloc]initWithUniqueId:string];

    XCTAssertNotNil(unit, "Correct data %@ should be parsed", string);

    XCTAssertTrue ([@"18297236" isEqualToString: unit.id]);

    XCTAssertTrue (unit.year==2012);

    XCTAssertTrue(unit.type==TypeExperimental);

    XCTAssertTrue([@"M-22" isEqualToString:unit.modelSpecifier]);

    XCTAssertTrue([@(17) isEqualToNumber:unit.groupNumber]);

    XCTAssertTrue ([@"i502" isEqualToString:unit.specificationId]);

    XCTAssertTrue([@"quest" isEqualToString:unit.name]);


}
@end
