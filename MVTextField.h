//
//  MVTextField.h
//  Locations
//
//  Created by admin on 30/08/13.
//  Copyright (c) 2013 admin. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "NSString+String.h"

/*
  block method for textfield didchange method
    -textfield respective field
    -range text range 
    -string entered character
 */
typedef void (^TextFieldEditBlock) (UITextField *textField,NSRange range,NSString *String);

/*
 block method for textfield didbegin method
 -textfield respective field
 */
typedef void (^TextFieldDidBeginEditBlock) (UITextField *textField);

/*
 block method for textfield didend method
 -textfield respective field
 */
typedef void (^TextFieldDidEndEditBlock) (UITextField *textField);

/* Decide types of textfield
 - GFTTextFieldDecimal is decide textfield will accept valid decimal values
 - GFTTextFeildNumber is decide textfield will only accept integer values
 - GFTTextFieldString is decide textfield will accept string only
 */
typedef enum {
    GFTTextFieldMoneyFormatType=0,
    GFTTextFeildNumberType,
    GFTTextFieldStringType,
    GFTTextFieldDefautType,
    GFTTextFieldStringWithNumberType,
    
} GFTTextFieldType;

@interface MVTextField : UITextField<UITextFieldDelegate>

/* textfield initialization method
    -frame frame of textfield
*/
-(id)initWithFrame:(CGRect)frame;

/* method for initializing textfield didchange block method
    - textFieldBlock is type of blockmethod
 */
-(void)showWithEditValue:(TextFieldEditBlock)textFieldBlock;

/* method for initializing textfield didbegin block method
 - beginEditBlock is type of blockmethod
 */
-(void)showWithBeginEditingValue:(TextFieldDidBeginEditBlock)beginEditBlock;

/* method for initializing textfield didend block method
 - endEditBlock is type of blockmethod
 */
-(void)showWithEndEditingValue:(TextFieldDidEndEditBlock)endEditBlock;

//Properties for textfield
@property (copy) TextFieldEditBlock textFiledEditBlock;
@property (copy) TextFieldDidBeginEditBlock textFiledBeginEditBlock;
@property (copy) TextFieldDidEndEditBlock textFiledEndEditBlock;
@property(nonatomic,assign)GFTTextFieldType fieldType;
@property int allowedTextLength;


@end
