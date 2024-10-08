/**
 * Copyright (c) Huawei Technologies Co., Ltd. 2019-2020. All rights reserved.
 * Generated by the CloudDB ObjectType compiler.  DO NOT EDIT!
 */

#import <AGConnectDatabase/AGConnectDatabase.h>

NS_ASSUME_NONNULL_BEGIN

@interface UserPointLog : AGCCloudDBObject
@property (nonatomic, copy) NSString *uuid;
@property (nonatomic, copy) NSString *userId;
@property (nonatomic, copy) NSString *usageId;
@property (nonatomic, copy) NSString *point;
@property (nonatomic, strong) NSDate *createdAt;
@property (nonatomic, strong) NSDate *updatedAt;
@property (nonatomic, copy) NSString *desc;
@end

NS_ASSUME_NONNULL_END