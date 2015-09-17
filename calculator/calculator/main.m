//
//  main.m
//  calculator
//
//  Created by bruno on 15/9/17.
//  Copyright © 2015年 bruno. All rights reserved.
//

#import <Foundation/Foundation.h>

// @interface
@interface Calculator : NSObject

-(void) setBaseNum: (double) value;
-(void) clear;
-(void) getNum;

-(void) add: (double) value;
-(void) sub: (double) value;
-(void) mult: (double) value;
-(void) divide: (double) value;

@end

// @implementation
@implementation Calculator {
    double baseNum;
}

-(void) setBaseNum:(double)value {
    baseNum = value;
}

-(void) clear {
    baseNum = 0;
}

-(void) getNum {
    NSLog(@"%f", baseNum);
}

-(void) add:(double)value {
    baseNum += value;
}

-(void) sub:(double)value {
    baseNum -= value;
}

-(void) mult:(double)value {
    baseNum *= value;
}

-(void) divide:(double)value {
    baseNum /= value;
}

@end

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Calculator * calculator = [Calculator new];
        [calculator setBaseNum:200.0];
        [calculator add: (double)11];
        [calculator getNum];
    }
    return 0;
}
