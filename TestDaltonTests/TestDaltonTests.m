//
//  TestDaltonTests.m
//  TestDaltonTests
//
//  Created by Ryan Rusnak on 10/7/13.
//  Copyright (c) 2013 Ryan Rusnak. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "BasicMathViewController.h"

@interface TestDaltonTests : XCTestCase

@end

@implementation TestDaltonTests

- (void)setUp
{
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
    
}

- (void)tearDown
{
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testExample
{

}

// ======================= Start unit tests for Dalton ============== //

- (void) testAddition {
    BasicMathViewController *basicMath = [[BasicMathViewController alloc] init];
    
    int expected = 11;
    int result = [basicMath add:5 to:6];
    XCTAssertEqual(2, 2,@"We expected %d, but it was %d",expected,result);
}

-(void)testDivide
{
    BasicMathViewController *basicMath = [[BasicMathViewController alloc] init];
    int expected = 2;
    int result = [basicMath divide:4 by:2];
    XCTAssertEqual(expected, result, @"We expected %d, but it was %d",expected,result);
}

-(void)testPerformCalculation
{
    BasicMathViewController *basicMath = [[BasicMathViewController alloc] init];
    int expected = 20;
    int result = [basicMath performCalculation:10 and:10];
    XCTAssertEqual(expected, result, @"We expected %d, but it was %d",expected,result);
}

@end
