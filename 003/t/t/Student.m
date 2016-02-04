//
//  NSObject+Student.m
//  t
//
//  Created by MAC on 16/2/4.
//  Copyright © 2016年 MAC. All rights reserved.
//

#import "Student.h"

@implementation Student

@synthesize age=_age;

-(void)test
{
    NSLog(@"age=%d PK _age=%d",age,_age);
}

@end
