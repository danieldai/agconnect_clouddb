/**
 * Copyright (c) Huawei Technologies Co., Ltd. 2019-2020. All rights reserved.
 * Generated by the CloudDB ObjectType compiler.  DO NOT EDIT!
 */

#import <AGConnectDatabase/AGConnectDatabase.h>

NS_ASSUME_NONNULL_BEGIN

@interface UserPoint : AGCCloudDBObject
@property (nonatomic, copy) NSString *userId;
@property (nonatomic, strong) NSNumber<AGCLong> *point;
@property (nonatomic, strong) NSDate *updatedAt;
@property (nonatomic, strong) NSNumber<AGCLong> *days;
@property (nonatomic, copy) NSString *desc;
@end

NS_ASSUME_NONNULL_END