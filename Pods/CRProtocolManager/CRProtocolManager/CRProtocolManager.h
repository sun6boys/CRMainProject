//
//  CRProtocolManager.h
//  CRProtocolManager
//
//  Created by d2c_cyf on 17/3/17.
//  Copyright © 2017年 d2c_cyf. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CRProtocolManager : NSObject
+ (void)registServiceProvide:(id)provide forProtocol:(Protocol *)protocol;

+ (id)serviceProvideForProtocol:(Protocol *)protocol;

@end
