//
//  MVTextField.m
//  Locations
//
//  Created by admin on 30/08/13.
//  Copyright (c) 2013 admin. All rights reserved.
//

#import "MVTextField.h"

#define Digits @"0123456789"
#define Decimal @"0123456789."
#define Period  @"."
#define Characters @"ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz"

@interface MVTextField()



@end

@implementation MVTextField
@synthesize fieldType;
@synthesize allowedTextLength;

//This is for create field through code
-(id)initWithFrame:(CGRect)frame {
    
    if (self=[super initWithFrame:frame]) {
        //Assigned self as a delegate
        self.delegate=self;
        //for avoid crashing
        self.autocorrectionType = UITextAutocorrectionTypeNo;
        
    }
    return self;
    
}
//This is for xib
-(id)initWithCoder:(NSCoder *)aDecoder
{
    if (self=[super initWithCoder:aDecoder])
    {
        //Assigned self as a delegate
        self.delegate=self;
         //for avoid crashing
        self.autocorrectionType=UITextAutocorrectionTypeNo;
    }
    return self;
}

-(void)showWithEditValue:(TextFieldEditBlock)textFieldBlock {
    
    self.textFiledEditBlock=textFieldBlock;
}

-(void)showWithBeginEditingValue:(TextFieldDidBeginEditBlock)beginEditBlock {
    self.textFiledBeginEditBlock=beginEditBlock;
}

-(void)showWithEndEditingValue:(TextFieldDidEndEditBlock)endEditBlock {
    self.textFiledEndEditBlock=endEditBlock;
}

- (void)textFieldDidBeginEditing:(UITextField *)textField{
    self.textFiledBeginEditBlock(textField);
}

- (BOOL)textFieldShouldEndEditing:(UITextField *)textField {
    return YES;
}

- (void)textFieldDidEndEditing:(UITextField *)textField {
    self.textFiledEndEditBlock(textField);
}

- (BOOL)textField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)stringValue {
    
    if([stringValue length]==0)
        return YES;
    
     BOOL success=YES;
   
    switch (self.fieldType) {
        case GFTTextFeildNumberType:
            success=[stringValue containsString:Digits]&&[textField.text isAllowedLength:self.allowedTextLength];
            break;
        case GFTTextFieldDefautType:
             success=[textField.text isAllowedLength:self.allowedTextLength];
            break;
        case GFTTextFieldMoneyFormatType:
            success=[self validateMoneyValue:textField.text enteredString:stringValue];
            break;
        case GFTTextFieldStringType:
            success=[stringValue containsString:Characters]&&[textField.text isAllowedLength:self.allowedTextLength];
            break;
        case GFTTextFieldStringWithNumberType:
            success=([stringValue containsString:Characters]||[stringValue containsString:Digits])&&[textField.text isAllowedLength:self.allowedTextLength];
            break;
        
    }
    if (success)
        self.textFiledEditBlock(textField,range,stringValue);
    
    return success;
   
}
-(BOOL)validateMoneyValue:(NSString*)textFieldValue enteredString:(NSString*)newString {
  
    if(![newString containsString:Decimal]){
        return NO;
    }
    
    if([newString isEqualToString:Period]) {
        if([textFieldValue containsDotString]||![textFieldValue isAllowedLength:self.allowedTextLength]){
            return NO;
        }
        
       return [textFieldValue isCorrectDecimalFormat];
        
    } else {
        
       if([textFieldValue containsDotString]){
           
           return [textFieldValue isCorrectDecimalFormat];
       } 
        return [textFieldValue isAllowedLength:self.allowedTextLength];
        
    }
    return YES;
}

- (BOOL)textFieldShouldClear:(UITextField *)textField {
    return YES;
}

- (BOOL)textFieldShouldReturn:(UITextField *)textField {
    [textField resignFirstResponder];
    return YES;
}



@end
