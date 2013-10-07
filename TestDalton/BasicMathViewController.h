//
//  BasicMathViewController.h
//  TestDalton
//
//  Created by Ryan Rusnak on 10/7/13.
//  Copyright (c) 2013 Ryan Rusnak. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface BasicMathViewController : UIViewController
@property (strong, nonatomic) IBOutlet UITextField *inputOne;
@property (strong, nonatomic) IBOutlet UITextField *inputTwo;
@property (strong, nonatomic) IBOutlet UILabel *result;
- (IBAction)calculate:(id)sender;
-(int)add:(int)a to:(int)b;
-(float)divide:(int)a by:(int)b;
- (int)performCalculation:(int)intOne and: (int)intTwo;

@end
