//
//  NSString+String.m
//  Locations
//
//  Created by admin on 24/07/13.
//  Copyright (c) 2013 admin. All rights reserved.
//

#import "NSString+String.h"



@implementation NSString (String)



-(BOOL)containsString:(NSString*)string
{
    
    if ([string rangeOfString:self].location == NSNotFound){
        return NO;
    }
    
        return YES;
    
}

-(BOOL)isAllowedLength:(int)length
{
    if (length==0){
        return YES;
    } else if (self.length<length){
        return YES;
    }
    
    return NO;
}


-(BOOL)containsDotString
{
    if ([self rangeOfString:@"."].location == NSNotFound){
        return NO;
    }
    
    return YES;
}

-(BOOL)isCorrectDecimalFormat
{
    NSArray *stringArray=[self componentsSeparatedByString:@"."];
    NSString *stringValue=nil;
    
    if ([stringArray count]==2)
        stringValue=[stringArray objectAtIndex:1];
    
    if (stringValue!=nil&&[stringValue length]>=2)
        return NO;
    
    return YES;
}
@end
