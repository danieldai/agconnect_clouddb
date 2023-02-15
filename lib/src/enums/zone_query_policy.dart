// Copyright (c) Huawei Technologies Co., Ltd. 2021-2021. All rights reserved.

// ignore_for_file: constant_identifier_names

part of agconnect_clouddb;

/// Query policy, which specifies the data source to be queried.
enum AGConnectCloudDBZoneQueryPolicy {
  /// Data is queried from local cache.
  POLICY_QUERY_FROM_LOCAL_ONLY,

  /// Data is queried from Cloud DB zone on the cloud.
  POLICY_QUERY_FROM_CLOUD_ONLY,

  /// Data is queried from both Cloud DB zone on the cloud and local cache.
  ///
  /// * When a device is offline, data is queried from local cache.
  /// * When a device is online, data is queried from both Cloud DB zone on the cloud and local cache.
  POLICY_QUERY_DEFAULT,
}
