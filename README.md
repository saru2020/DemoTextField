DemoTextField
=============
     Sample For TEXTfield restrictions

      
      
      
      DemoTextField is a sample project those want to restric some charcter on textfiled like special character wont allow or only accept
  number or only accept string or it allow valid money format or restrict number charcter allowing to type. you can easily acheieve above functionality with adding this four file on your project.
          1. NSString+string.h
          2. NSString+string.m
          3. MVTextField.h
          4. MVTextField.m
       
       
       This has property called 
             -GFTTextFieldMoneyFormatType-IT allows valid money format
             -GFTTextFeildNumberType- It allows only number 
             -GFTTextFieldStringType - It allows only character
             -GFTTextFieldDefautType - It allows all inputs
             -GFTTextFieldStringWithNumberType - It allows string and number not allowing special character
             
             
             
             
    One more thing , you can restrict number of character allowed into textfield
       by setting allowedTextLength to your desire integer value. if set allowed length to zero means it allow unlimited character.
       
      It has block method for receiving delegate method calls.
      
      Sample Usage you could find on ViewController class 
      
      MVTextField *demoStringTextField =[[MVTextField alloc]initWithFrame:CGRectMake(100,100,100,50)];
    //Decide type of textfield you want  
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
             
      
      
