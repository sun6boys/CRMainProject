//
//  CRConfirmOrderViewController.h
//  CRConfirmOrder
//
//  Created by Charon on 16/12/18.
//  Copyright © 2016年 Charon. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CRConfirmOrderViewController : UIViewController

- (instancetype)initWithGoodsId:(NSString *)goodsId sureComplete:(dispatch_block_t)sureComplete;

@end
