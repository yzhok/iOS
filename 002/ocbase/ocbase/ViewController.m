//
//  ViewController.m
//  ocbase
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
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
//形状
typedef enum {
    kCircle,
    kRectangle,
    kEgg
} ShapeType;
//颜色
typedef enum{
redCorlor,
    greenColor,
    blueColor
} ShapeColor;
//区域
typedef struct{
    int x,y,width,height;
} ShapeRect;

typedef struct{
    ShapeType type;
    ShapeColor fillColor;
    ShapeRect bounds;
} Shape;

//**********传统方式应用***********//
int Used()
{
    Shape shapes[3];
    ShapeRect rect0={0,0,30,30};
    shapes[0].bounds=rect0;
    shapes[0].fillColor=redCorlor;
    shapes[0].type=kCircle;
    //drawCircle(),drawRectange(),drawEgg()
    return 0;
}


//************面向对象****************//

//
@interface Circle : NSObject
{
@private
    ShapeColor fillCorlor;
    ShapeRect bounds;
}
-(void) setFillColor:(ShapeColor) fillColor;
-(void) setBounds:(ShapeRect) bounds;
-(void) draw;

@end


@implementation Circle

-(void)setFillColor:(ShapeColor)c
{
    fillCorlor=c;
}
-(void)setBounds:(ShapeRect)b
{
    bounds=b;
}
-(void)draw
{
    NSLog(@"画地图");
}
@end

int newUsed()
{
    Shape shape[3];
    //实例化类
    Circle *circle1=[[Circle alloc]init];
    Circle *circle2=[Circle new];
    [circle1 setFillColor:redCorlor];
  //  shape[0]=[Circle new];
    //[Circle setFillColor:redCorlor];
    // shape[0]=[Circle ]
    
    return 0;
}










