//
//  FreshViewController.m
//  BlockRecouse
//
//  Created by chenq@kensence.com on 16/7/7.
//  Copyright © 2016年 chenq@kensence.com. All rights reserved.
//

#import "FreshViewController.h"
#import "ViewController.h"

@interface FreshViewController ()

@end

@implementation FreshViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
  
    
    ViewController *viewV = [ViewController new];
    __weak FreshViewController *first = self;
    
    viewV.simple = ^(NSString *str)
    {
      
        first.text = str;
        
    };
    
    
    UILabel *label = [[UILabel alloc]init];
    label.frame = CGRectMake(10, 100, 100, 100);
    label.backgroundColor = [UIColor orangeColor];
    label.text = self.text;
    [self.view addSubview:label];
    
   
    
    
    
}

-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    ViewController *detail = [ViewController new];
 
   
    
    
    [self.navigationController pushViewController:detail animated:YES];
    [detail release];
    
    
    
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
