//
//  CRProtocolManager.m
//  CRProtocolManager
//
//  Created by d2c_cyf on 17/3/17.
//  Copyright © 2017年 d2c_cyf. All rights reserved.
//

#import "CRProtocolManager.h"
@interface CRProtocolManager ()
@property (nonatomic, strong)NSMutableDictionary *searviceProvideSource;
@end

@implementation CRProtocolManager
+ (CRProtocolManager *)shareInstance {
    static CRProtocolManager *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

- (instancetype)init {
    if (self = [super init]) {
        _searviceProvideSource = [[NSMutableDictionary alloc] init];
    }
    return self;
}

+ (void)registServiceProvide:(id)provide forProtocol:(Protocol *)protocol {
    if (provide == nil || protocol == nil) {
        return;
    }
    
    [[self shareInstance].searviceProvideSource setObject:provide forKey:NSStringFromProtocol(protocol)];
}


+ (id)serviceProvideForProtocol:(Protocol *)protocol {
    return [[self shareInstance].searviceProvideSource objectForKey:NSStringFromProtocol(protocol)];
}

@end
