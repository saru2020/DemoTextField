//
//  ViewController.m
//  DemoTextField
//
//  Created by admin on 03/09/13.
//  Copyright (c) 2013 admin. All rights reserved.
//

#import "ViewController.h"


@interface ViewController ()

@end

@implementation ViewController
@synthesize demoMoneyTextField;
@synthesize demoNumberTextField;
@synthesize demoStringTextField;
- (void)viewDidLoad
{
    [super viewDidLoad];
    
    //set allowedtextlength to 0 for unlimited entry
    
    //character only
    
    //decide the type of field
    demoStringTextField.fieldType=GFTTextFieldStringType;
    //Allowed length for typing
    demoStringTextField.allowedTextLength=8;
    //block method didchange
    [demoStringTextField showWithEditValue:^(UITextField *text,NSRange range,NSString *string){
        NSLog(@"demoStringTextFieldstring=%@",string);
    }];
    //block method for begin editing
    [demoStringTextField showWithBeginEditingValue:^(UITextField *field){
        
    }];
    //block method for end editing
    [demoStringTextField showWithEndEditingValue:^(UITextField *field){
        
    }];
    
    
    //number only
    //decide the type of field
    demoNumberTextField.fieldType=GFTTextFeildNumberType;
    //Allowed length for typing
    demoNumberTextField.allowedTextLength=15;
    //block method didchange
    [demoNumberTextField showWithEditValue:^(UITextField *text,NSRange range,NSString *string){
        NSLog(@"demoNumberTextFieldstring=%@",string);
    }];
    //block method for begin editing
    [demoNumberTextField showWithBeginEditingValue:^(UITextField *field){
        
    }];
    //block method for end editing
    [demoNumberTextField showWithEndEditingValue:^(UITextField *field){
        
    }];
    
    //money textfield
    //decide the type of field
    demoMoneyTextField.fieldType=GFTTextFieldMoneyFormatType;
    //Allowed length for typing
    demoMoneyTextField.allowedTextLength=10;
    //block method didchange
    [demoMoneyTextField showWithEditValue:^(UITextField *text,NSRange range,NSString *string){
        NSLog(@"demoMoneyTextFieldstring=%@",string);
    }];
    //block method for begin editing
    [demoMoneyTextField showWithBeginEditingValue:^(UITextField *field){
        
    }];
    //block method for end editing
    [demoMoneyTextField showWithEndEditingValue:^(UITextField *field){
        
    }];
    
    
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
