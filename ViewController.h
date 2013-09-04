//
//  ViewController.h
//  DemoTextField
//
//  Created by admin on 03/09/13.
//  Copyright (c) 2013 admin. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "MVTextField.h"

@interface ViewController : UIViewController
{
    
    IBOutlet MVTextField *demoStringTextField;
    IBOutlet MVTextField *demoNumberTextField;
    IBOutlet MVTextField *demoMoneyTextField;
}
@property(strong,nonatomic)IBOutlet MVTextField *demoMoneyTextField;
@property(strong,nonatomic)IBOutlet MVTextField *demoStringTextField;
@property(strong,nonatomic)IBOutlet MVTextField *demoNumberTextField;
@end
