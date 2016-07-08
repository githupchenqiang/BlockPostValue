//
//  ViewController.m
//  BlockRecouse
//
//  Created by chenq@kensence.com on 16/7/7.
//  Copyright © 2016年 chenq@kensence.com. All rights reserved.
//

#import "ViewController.h"
#import "FreshViewController.h"


typedef long (^Blocksum)(int ,int);

@interface ViewController ()
@property(copy)void(^blockProperty)(void);

@end


@implementation ViewController




- (void)viewDidLoad {
    [super viewDidLoad];
    

    
    
 
    
    
    
    long(^sum)(int ,int) = nil;
    sum = ^long(int a,int b)
    {
        return a + b;
    };
    
    long s = sum(1,3);
    
    NSLog(@"%ld",s);
    [self sumBlock](1,3);
    
    void(^simpleBlock)(void);
    
    simpleBlock = ^{
        NSLog(@"This is block");
    };
    
    simpleBlock();
    
   void(^simpleBlock1)(void) = ^
    {
        NSLog(@"block");
        
    };
    
    simpleBlock1();
    
    double(^multiplyTwovalues)(double,double)=
    
    ^(double firstValue,double secondValue)
    {
        
        return firstValue * secondValue;
        
    };
    
   double result = multiplyTwovalues(2,4);
    NSLog(@"%f",result);
    
    int anInteger = 30;
    void(^testBlock)(void) = ^{
        NSLog(@"%d",anInteger);
    };
    anInteger = 20;
    testBlock();
    
    __block int anIntegerq = 42;
    
    void(^testBlock1)(void) = ^{
        NSLog(@"%i",anIntegerq);
    };
    anIntegerq = 100;
    testBlock1();
   
    
    [self testMethed];
   [self requestWithName:@"你妹" completion:^{
       NSLog(@"心平气和");
   }];
}

-(void)requestWithName:(NSString *)name completion:(void(^)())callback
{
    NSLog(@"%@",name);
    
}


- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    NSString *string = @"你好";

    [self.navigationController pushViewController:[FreshViewController new] animated:YES];
    
}





- (void)testMethed
{
    int anInteger = 42;
    void(^testBlock)(void) = ^{
        NSLog(@"integer is:%i",anInteger);
        
    };
    testBlock();
    
}




- (long (^)(int, int))sumBlock
{
    int base = 100;
    return [[^long(int a,int b){
        NSLog(@"jin");
        return base +a +b;
        
    } copy]autorelease];
    
}

@end
