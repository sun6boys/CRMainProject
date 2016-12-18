//
//  CRProtocolManager.h
//  CRProtocolManager
//
//  Created by Charon on 16/12/18.
//  Copyright © 2016年 Charon. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CRProtocolManager : NSObject

+ (void)registServiceProvide:(id)provide forProtocol:(Protocol*)protocol;

+ (id)serviceProvideForProtocol:(Protocol *)protocol;

@end
