//
//  CRConfirmOrderServiceProvide.m
//  CRConfirmOrder
//
//  Created by Charon on 16/12/18.
//  Copyright © 2016年 Charon. All rights reserved.
//

#import "CRConfirmOrderServiceProvide.h"
#import <CRProtocolManager/CRProtocolManager.h>

#import "CRConfirmOrderServiceProtocol.h"
#import "CRConfirmOrderViewController.h"

@interface CRConfirmOrderServiceProvide()<CRConfirmOrderServiceProtocol>


@end


@implementation CRConfirmOrderServiceProvide

+ (void)load
{
    [CRProtocolManager registServiceProvide:[self new] forProtocol:@protocol(CRConfirmOrderServiceProtocol)];
}

#pragma mark - CRConfirmOrderServiceProtocol
- (UIViewController *)confirmOrderViewControllerWithGoodsId:(NSString *)goodsId sureComplete:(dispatch_block_t)sureComplete
{
    CRConfirmOrderViewController *confirmOrderVC = [[CRConfirmOrderViewController alloc] initWithGoodsId:goodsId sureComplete:sureComplete];
    return confirmOrderVC;
}

- (UIViewController *)confirmOrderViewControllerWithOrderInfo:(CROrderInfo *)orderInfo sureComplete:(dispatch_block_t)sureComplete
{
    CRConfirmOrderViewController *confirmOrderVC = [[CRConfirmOrderViewController alloc] initWithOrderInfo:orderInfo sureComplete:sureComplete];
    return confirmOrderVC;
}

@end
