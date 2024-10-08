// Copyright (c) Huawei Technologies Co., Ltd. 2021-2021. All rights reserved.

#import "AGConnectCloudDBPlugin.h"
#if __has_include(<agconnect_clouddb/agconnect_clouddb-Swift.h>)
#import <agconnect_clouddb/agconnect_clouddb-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "agconnect_clouddb-Swift.h"
#endif

@implementation AGConnectCloudDBPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [AGConnectCloudDBPluginHandler registerWithRegistrar:registrar];
}
@end
