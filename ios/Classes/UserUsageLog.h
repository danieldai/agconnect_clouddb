/**
 * Copyright (c) Huawei Technologies Co., Ltd. 2019-2020. All rights reserved.
 * Generated by the CloudDB ObjectType compiler.  DO NOT EDIT!
 */

#import <AGConnectDatabase/AGConnectDatabase.h>

NS_ASSUME_NONNULL_BEGIN

@interface UserUsageLog : AGCCloudDBObject
@property (nonatomic, copy) NSString *id;
@property (nonatomic, strong) NSDate *usedAt;
@property (nonatomic, copy) NSString *description;
@property (nonatomic, copy) NSString *clientVersion;
@property (nonatomic, copy) NSString *cityId;
@property (nonatomic, copy) NSString *cityName;
@property (nonatomic, copy) NSString *userId;
@property (nonatomic, strong) NSNumber<AGCBool> *anonymous;
@property (nonatomic, copy) NSString *os;
@property (nonatomic, copy) NSString *osVersion;
@end

NS_ASSUME_NONNULL_END