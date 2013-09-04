//
//  NSString+String.h
//  Locations
//
//  Created by admin on 24/07/13.
//  Copyright (c) 2013 admin. All rights reserved.
//

#import <Foundation/Foundation.h>




@interface NSString (String)






/* Check stringContains string
     -string is passing 
 */
-(BOOL)containsString:(NSString*)string;

/*
   return no when the number of text exceeding the 
     give length
 - length number of allowed character
 */
-(BOOL)isAllowedLength:(int)length;


/*
  return yes if string has . character
 */
-(BOOL)containsDotString;

/*
  return yes if textfield as in correct decimal format
 */
-(BOOL)isCorrectDecimalFormat;

@end
