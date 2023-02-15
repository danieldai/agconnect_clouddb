// Copyright (c) Huawei Technologies Co., Ltd. 2021-2021. All rights reserved.

// ignore_for_file: constant_identifier_names

part of agconnect_clouddb;

/// Access property of the Cloud DB zone, which is used to define
/// the security property when an application accesses Cloud DB zone.
enum AGConnectCloudDBZoneAccessProperty {
  /// Public storage zone.
  ///
  /// Access is authenticated based on the user-defined permissions.
  CLOUDDBZONE_PUBLIC,
}
