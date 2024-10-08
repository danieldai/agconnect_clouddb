// Copyright (c) Huawei Technologies Co., Ltd. 2021-2021. All rights reserved.

// ignore_for_file: constant_identifier_names

part of agconnect_clouddb;

/// Synchronization property of the Cloud DB zone, which specifies
/// whether to synchronize data of Cloud DB zone between
/// the device and the cloud and the synchronization mode.
enum AGConnectCloudDBZoneSyncProperty {
  /// Local mode.
  ///
  /// Data is stored only on the device and is not synchronized to the cloud.
  CLOUDDBZONE_LOCAL_ONLY,

  /// Cache mode.
  ///
  /// Data is stored on the cloud, and data on the device is a subset of data on the cloud.
  /// If persistent cache is allowed, Cloud DB supports
  /// the automatic caching of query results on the device.
  /// After a listener is registered on the device to listen on the data on the cloud,
  /// the device is notified only when the data on the cloud changes.
  CLOUDDBZONE_CLOUD_CACHE,
}
