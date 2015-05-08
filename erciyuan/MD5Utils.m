//
//  MD5Utils.m
//  erciyuan
//
//  Created by liudongdong on 15/5/8.
//  Copyright (c) 2015年 Netease. All rights reserved.
//

#import "MD5Utils.h"
#include <CommonCrypto/CommonDigest.h>

@implementation MD5Utils

+ (NSString *)md5String:(NSString *)sourceString {
    
    const char *cStr = [sourceString UTF8String];
    unsigned char digest[CC_MD5_DIGEST_LENGTH];
    CC_MD5(cStr, (int)strlen(cStr), digest);
    
    NSMutableString *output = [NSMutableString stringWithCapacity:CC_MD5_DIGEST_LENGTH * 2];
    
    for(int i = 0; i < CC_MD5_DIGEST_LENGTH; i++) {
        [output appendFormat:@"%02x", digest[i]];
    }
    
    return output;
}

+ (NSString *)getMD5StringWithData:(NSData *)data {
    
    const char* original_str = (const char *)[data bytes];
    unsigned char digist[CC_MD5_DIGEST_LENGTH];
    CC_MD5(original_str, (int)strlen(original_str), digist);
    
    NSMutableString* outPutStr = [NSMutableString stringWithCapacity:CC_MD5_DIGEST_LENGTH * 2];
    
    for(int  i =0; i<CC_MD5_DIGEST_LENGTH;i++){
        [outPutStr appendFormat:@"%02x",digist[i]];
    }
    
    return outPutStr;
}

@end
