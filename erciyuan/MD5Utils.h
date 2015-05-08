//
//  MD5Utils.h
//  erciyuan
//
//  Created by liudongdong on 15/5/8.
//  Copyright (c) 2015年 Netease. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface MD5Utils : NSObject

+ (NSString *)md5String:(NSString *)sourceString;
+ (NSString *)getMD5StringWithData:(NSData *)data;

@end
