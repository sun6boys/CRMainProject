//
//  CRConfirmOrderServiceProtocol.h
//  CRConfirmOrderServiceProtocol
//
//  Created by Charon on 16/12/18.
//  Copyright © 2016年 Charon. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol CRConfirmOrderServiceProtocol <NSObject>

- (UIViewController *)confirmOrderViewControllerWithGoodsId:(NSString *)goodsId sureComplete:(dispatch_block_t)sureComplete;

@end
