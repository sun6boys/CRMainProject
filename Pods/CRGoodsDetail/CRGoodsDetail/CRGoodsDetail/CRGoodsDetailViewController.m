//
//  CRGoodsDetailViewController.m
//  CRGoodsDetail
//
//  Created by Charon on 16/12/18.
//  Copyright © 2016年 Charon. All rights reserved.
//

#import "CRGoodsDetailViewController.h"
#import <CRConfirmOrderServiceProtocol/CRConfirmOrderServiceProtocol.h>
#import <CRProtocolManager/CRProtocolManager.h>

@interface CRGoodsDetailViewController ()

@property (nonatomic, copy) NSString *goodsId;
@property (nonatomic, copy) NSString *goodsName;

@property (nonatomic, strong) UILabel *statusLabel;
@property (nonatomic, strong) UIButton *buyButton;
@end

@implementation CRGoodsDetailViewController

- (instancetype)initWithGoodsId:(NSString *)goodsId goodsName:(NSString *)goodsName
{
    self = [super init];
    if (self) {
        _goodsId = goodsId;
        _goodsName = goodsName;
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    
    self.navigationItem.title = self.goodsName;
    
    [self.view addSubview:self.statusLabel];
    [self.view addSubview:self.buyButton];
}

- (void)viewWillLayoutSubviews
{
    [super viewWillLayoutSubviews];
    self.statusLabel.frame = CGRectMake(0, 0, 100, 20);
    self.statusLabel.center = self.view.center;
    
    self.buyButton.frame = CGRectMake(0, self.view.frame.size.height - 45, self.view.frame.size.width, 45);
}

#pragma mark - event 
- (void)didClickBuyButton:(UIButton *)button
{
    id <CRConfirmOrderServiceProtocol> provide = [CRProtocolManager serviceProvideForProtocol:@protocol(CRConfirmOrderServiceProtocol)];
    UIViewController *confirmOrderVC = [provide confirmOrderViewControllerWithGoodsId:self.goodsId sureComplete:^{
        self.statusLabel.text = @"购买成功";
    }];
    if (confirmOrderVC) {
        [self presentViewController:confirmOrderVC animated:YES completion:nil];
    }
}

#pragma mark - getters
- (UILabel *)statusLabel
{
    if (_statusLabel == nil) {
        _statusLabel = [[UILabel alloc] init];
        _statusLabel.textColor = [UIColor redColor];
        _statusLabel.font = [UIFont systemFontOfSize:15.f];
        _statusLabel.textAlignment = NSTextAlignmentCenter;
        _statusLabel.text = @"暂未购买";
    }
    return _statusLabel;
}

- (UIButton *)buyButton
{
    if (_buyButton == nil) {
        _buyButton = [UIButton buttonWithType:UIButtonTypeCustom];
        [_buyButton setTitle:@"立即购买" forState:UIControlStateNormal];
        [_buyButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        [_buyButton setBackgroundColor:[UIColor redColor]];
        [_buyButton addTarget:self action:@selector(didClickBuyButton:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _buyButton;
}
@end
