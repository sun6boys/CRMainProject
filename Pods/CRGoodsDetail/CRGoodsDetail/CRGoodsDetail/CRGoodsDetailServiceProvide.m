//
//  CRGoodsDetailServiceProvide.m
//  CRGoodsDetail
//
//  Created by Charon on 16/12/18.
//  Copyright © 2016年 Charon. All rights reserved.
//

#import "CRGoodsDetailServiceProvide.h"
#import <CRGoodsDetailServiceProtocol/CRGoodsDetailServiceProtocol.h>
#import <CRProtocolManager/CRProtocolManager.h>

#import "CRGoodsDetailViewController.h"

@interface CRGoodsDetailServiceProvide()<CRGoodsDetailServiceProtocol>

@end

@implementation CRGoodsDetailServiceProvide

+ (void)load
{
    [CRProtocolManager registServiceProvide:[[self alloc] init] forProtocol:@protocol(CRGoodsDetailServiceProtocol)];
}

- (UIViewController *)goodsDetailViewControllerWithGoodsId:(NSString*)goodsId goodsName:(NSString *)goodsName
{
    CRGoodsDetailViewController *goodsDetailVC = [[CRGoodsDetailViewController alloc] initWithGoodsId:goodsId goodsName:goodsName];
    return goodsDetailVC;
}

@end
