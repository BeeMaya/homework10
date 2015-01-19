//
// Created by Maya on 1/16/15.
// Copyright (c) 2015 Maya. All rights reserved.
//

#import "SpaceUnit.h"


@implementation SpaceUnit {

}

- (instancetype) initWithUniqueId: (NSString *)string {

    self=[super init];

    if (self) {
       self =[[self class] parseSpaceUnitFromId:string];
    }
    return self;
}


+(instancetype)parseSpaceUnitFromId:(NSString*)string{

    if(!string){
        return nil;
    }

    SpaceUnit *result=[[SpaceUnit alloc] init];

    NSRange rangeOfDot = [string rangeOfString:@"."];

    if(rangeOfDot.location!=NSNotFound){

        result.name = [string substringToIndex:rangeOfDot.location];
    }

    NSRange rangeOfSlash = [string rangeOfString:@"/"];
    NSRange rangeOfAtt = [string rangeOfString:@"@"];

    if(rangeOfSlash.location!=NSNotFound && rangeOfAtt.location!=NSNotFound && rangeOfSlash.location<rangeOfAtt.location) {


        NSUInteger len = rangeOfAtt.location - rangeOfSlash.location-1;
        NSRange groupRange = NSMakeRange(rangeOfSlash.location+1, len);
        NSString *groupNumberAsString = [string substringWithRange:groupRange];
        result.groupNumber = @([groupNumberAsString intValue]); // result.groupNumber = [NSNumber numberWithInt: [groupNumberAsString intValue];
      }


    //parse type
    NSRange rangeOfOpen = [string rangeOfString:@"("];
    NSRange rangeOfClose = [string rangeOfString:@")"];

    if(rangeOfOpen.location!=NSNotFound && rangeOfClose.location!=NSNotFound && rangeOfOpen.location<rangeOfClose.location){

        NSUInteger len = rangeOfClose.location - rangeOfOpen.location-1;
        NSRange typeRange = NSMakeRange(rangeOfOpen.location+1, len);
        NSString* typeAsString = [string substringWithRange:typeRange];
        if([@"X" isEqualToString:typeAsString]){
            result.type = TypeExperimental;
        }else if([@"Rt" isEqualToString:typeAsString]){
            result.type = TypeRealTime;
        }else if([@"M" isEqualToString:typeAsString]){
            result.type = TypeModified;
        }

    }

    return result;
}


@end