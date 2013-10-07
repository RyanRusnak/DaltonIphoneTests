//
//  BasicMathViewController.m
//  TestDalton
//
//  Created by Ryan Rusnak on 10/7/13.
//  Copyright (c) 2013 Ryan Rusnak. All rights reserved.
//

#import "BasicMathViewController.h"

@interface BasicMathViewController ()

@end

@implementation BasicMathViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    _inputOne.keyboardType = UIKeyboardTypeDecimalPad;
    _inputTwo.keyboardType = UIKeyboardTypeDecimalPad;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)calculate:(id)sender {
    //if it is a number
    if([self isInteger:_inputOne.text] && [self isInteger:_inputTwo.text]){
        int result = [self performCalculation:[_inputOne.text intValue] and:[_inputTwo.text intValue]];
        _result.text = [NSString stringWithFormat:@"%d",result];
        [self.view endEditing:YES];
    }else{
        _result.text = [NSString stringWithFormat:@"These fields need to be numbers"];
        [self.view endEditing:YES];
    }
    
}

- (int)performCalculation:(int)intOne and: (int)intTwo {
    int result = intOne + intTwo;
    return result;
}

- (BOOL)isInteger:(NSString*)theString {
    BOOL valid;
    NSCharacterSet *alphaNums = [NSCharacterSet decimalDigitCharacterSet];
    NSCharacterSet *inStringSet = [NSCharacterSet characterSetWithCharactersInString:theString];
    valid = [alphaNums isSupersetOfSet:inStringSet];
    
    return valid;
}

-(int)add:(int)a to:(int)b
{
    return 0;
}

-(float)divide:(int)a by:(int)b
{
    float result =  a/b;
    if (result==INFINITY) {
        [NSException raise:@"Cannot divide by zero!"
                    format:@"Not possible to divide %d with %d", a,b];
    }
    return result;
}
@end
