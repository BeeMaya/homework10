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


- (void)testParseCorrectData2{

    NSString *string = @"liga.b22/1024@L-01(Rt)2016#18297235";

    SpaceUnit *unit = [[SpaceUnit alloc] initWithUniqueId:string];

    XCTAssertNotNil(unit, "Correct data %@ should be parsed", string);

    XCTAssertTrue([@"18297235" isEqualToString:unit.id]);

    XCTAssertTrue (unit.year==2016);

    XCTAssertTrue(unit.type==TypeRealTime);

    XCTAssertTrue([@"L-01" isEqualToString:unit.modelSpecifier]);

    XCTAssertTrue([@(1024) isEqualToNumber:unit.groupNumber]);

    XCTAssertTrue ([@"b22" isEqualToString:unit.specificationId]);

    XCTAssertTrue([@"liga" isEqualToString:unit.name]);

}


- (void)testParseCorrectData3{

    NSString *string = @"@“east.i504/2@ML-26(X)2014#18297232";

    SpaceUnit *unit = [[SpaceUnit alloc] initWithUniqueId:string];

    XCTAssertNotNil(unit, "Correct data %@ should be parsed", string);

    XCTAssertTrue([@"18297232" isEqualToString:unit.id]);

    XCTAssertTrue (unit.year==2014);

    XCTAssertTrue(unit.type==TypeExperimental);

    XCTAssertTrue([@"ML-26" isEqualToString:unit.modelSpecifier]);

    XCTAssertTrue([@(2) isEqualToNumber:unit.groupNumber]);

    XCTAssertTrue ([@"i504" isEqualToString:unit.specificationId]);

    XCTAssertTrue([@"east" isEqualToString:unit.name]);

}


@end
