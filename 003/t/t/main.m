//
//  main.m
//  t
//
//  Created by MAC on 16/2/4.
//  Copyright © 2016年 MAC. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Student.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
    
        #pragma mark 实例化
        Student *stu=[Student new];
        #pragma mark- 调用get和set
        stu->age=10;
        [stu setAge:18];
        
        [stu test];
    }
    return 0;
}
