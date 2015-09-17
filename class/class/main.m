//
//  main.m
//  class
//
//  Created by bruno on 15/9/17.
//  Copyright © 2015年 bruno. All rights reserved.
//

#import <Foundation/Foundation.h>

// @interface
@interface Num : NSObject
-(void) print;
-(void) setFirstNum: (int) n;
-(void) setSecNum: (int) d;
-(int)  getFirstNum;
-(int)  getSecNum;
@end

// @implementation
@implementation Num{
    int firstNum;
    int secNum;
}

-(void) print {
    NSLog(@"%i/%i", firstNum, secNum);
}
-(void) setFirstNum:(int)n {
    firstNum = n;
}

-(void) setSecNum:(int)d {
    secNum = d;
}

-(int)  getFirstNum {
    return firstNum;
}

-(int)  getSecNum {
    return  secNum;
}
@end

int main(int argc, char * argv[]) {
    @autoreleasepool {
        Num *num = [Num new];
        [num setFirstNum: 1];
        [num setSecNum: 2];
        [num print];
        NSLog(@"%i", [num getSecNum]);
    }
}