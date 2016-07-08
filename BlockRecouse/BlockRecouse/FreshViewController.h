//
//  FreshViewController.h
//  BlockRecouse
//
//  Created by chenq@kensence.com on 16/7/7.
//  Copyright © 2016年 chenq@kensence.com. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ViewController.h"
typedef void (^sendValue)(NSString *value);
@interface FreshViewController : UIViewController
@property (nonatomic ,copy)sendValue value;
@property (nonatomic ,strong)NSString *text;

@end
