//
//  ViewController.h
//  BlockRecouse
//
//  Created by chenq@kensence.com on 16/7/7.
//  Copyright © 2016年 chenq@kensence.com. All rights reserved.
//

#import <UIKit/UIKit.h>
typedef void (^simpleBlock)(NSString *value);

@interface ViewController : UIViewController
@property (nonatomic ,strong)NSString *TextName;
@property (nonatomic ,copy)simpleBlock simple;
- (long(^)(int,int))sumBlock;
- (void)requestWithName:(NSString *)name completion:(void(^)())callback;



@end

