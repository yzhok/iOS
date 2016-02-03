//
//  ViewController.m
//  love
//
//  Created by MAC on 16/2/3.
//  Copyright © 2016年 MAC. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    NSLog(@"Hello yzh,You are best");
    
    //基本数据类型
    int integer=5;
    float floatType=3.1415;
    double doubleType=2.12233;
    short int shortType=200;
    long long int longlongType=122222222;
    char* cstring="Hello i love syy";
    NSLog(@"integer=%d",integer);
    NSLog(@"floate=%.2f",floatType);
    NSLog(@"doubleType=%e",doubleType);
    NSLog(@"short int =%hi",shortType);
    NSLog(@"longlong int=%lli",longlongType);
    NSLog(@"string=%s",cstring);
    
    //NSNumber arrary
    NSMutableArray *array=[[NSMutableArray alloc]init];
    [array addObject:[NSNumber numberWithInteger:88]];
    
    NSLog(@"array=%@",array);
    
    //NSNumber
    NSNumber *num=[NSNumber numberWithInteger:520];
    NSInteger intergerType=[num intValue];
    NSLog(@"转换i=%ld",intergerType);
    
    // NSInteger to NSString
    NSInteger integerNum=520;
    NSString *str=[NSString stringWithFormat:@"%ld",integerNum];
    NSLog(@"NSInteger to NSString=%@",str);
    
    //NSString to NSInteger
    integerNum=[str intValue];
    NSLog(@"NSString to NSInteger=%ld",integerNum);
    
    //字符串
    NSString *string1=@"这个是一个iOS program";
    NSString *string2=@"这个是一个iOS program";
    BOOL result=string1==string2;
    if (result) {
        NSLog(@"string 1 address:%p",string1);
        NSLog(@"string 2 address:%p",string2);
    }
    //compare
    result=[string1 compare:string2];
    if (result==NSOrderedSame) {
        //   NSLog(@"result=%b",result);
    }
    
    result=[string1 isEqualToString:string2];
    //字符串分割
    NSString *nstring=@"you,and,me";
    NSArray *array1=[nstring componentsSeparatedByString:@","];
    for (int i=0; i<[array1 count]; i++) {
        NSLog(@"new string:%@",[array1 objectAtIndex:i]);
    }
    //initWithUTF8String
    char *charstring="我是utf-8字符串";
    NSString *nstr=[[NSString alloc] initWithUTF8String:charstring ];
    NSLog(@"utf-8 string=%@",nstr);
    //字符串以什么开头比较
    if ([string1 hasPrefix:@"这个"]) {
        NSLog(@"yes");
    }
    //以什么结尾比较
    if ([string1 hasSuffix:@"program"]) {
        NSLog(@"yes the end string is program");
    }
    //搜索和替换
    NSString *searchstr=@"中华人民共和国万岁";
    NSString *temp=@"人民";
    NSString *temp2=@"中华";
    
    NSRange rang=[searchstr rangeOfString:temp];
    NSRange rang1=[searchstr rangeOfString:temp2];
    
    NSLog(@"temp在searchstr字符串中的index=%lu",rang.location);
    NSLog(@"temp endindex=%lu",rang.location+rang.length);
    NSString *searchNewStr=[searchstr stringByReplacingCharactersInRange:rang withString:@"共产党"];
    NSLog(@"new %@",searchNewStr);
    

    
    
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
