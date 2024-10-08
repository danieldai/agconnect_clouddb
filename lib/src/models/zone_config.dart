// Copyright (c) Huawei Technologies Co., Ltd. 2021-2021. All rights reserved.

part of agconnect_clouddb;

class AGConnectCloudDBZoneConfig {
  final String zoneName;
  final AGConnectCloudDBZoneSyncProperty syncProperty;
  final AGConnectCloudDBZoneAccessProperty accessProperty;
  final int capacity;
  final bool isPersistenceEnabled;
  final bool isEncrypted;
  final String _key;
  final String _reKey;

  AGConnectCloudDBZoneConfig({
    required this.zoneName,
    this.syncProperty =
        AGConnectCloudDBZoneSyncProperty.CLOUDDBZONE_CLOUD_CACHE,
    this.accessProperty = AGConnectCloudDBZoneAccessProperty.CLOUDDBZONE_PUBLIC,
    this.capacity = 104857600,
    this.isPersistenceEnabled = true,
    String key = '',
    String reKey = '',
  })  : isEncrypted = key.isNotEmpty,
        _key = key,
        _reKey = reKey {
    if (zoneName.isEmpty) {
      throw FormatException('zoneName cannot be an empty string.', zoneName);
    }
    if (key.isEmpty && reKey.isNotEmpty) {
      throw const FormatException(
          'key cannot be empty when reKey has a value.');
    }
  }

  AGConnectCloudDBZoneConfig._fromMap(Map<String, dynamic> map)
      : zoneName = map['zoneName'],
        syncProperty = AGConnectCloudDBZoneSyncProperty.values.firstWhere(
          (AGConnectCloudDBZoneSyncProperty e) =>
              map['syncProperty'] == describeEnum(e),
          orElse: () =>
              AGConnectCloudDBZoneSyncProperty.CLOUDDBZONE_CLOUD_CACHE,
        ),
        accessProperty = AGConnectCloudDBZoneAccessProperty.values.firstWhere(
          (AGConnectCloudDBZoneAccessProperty e) =>
              map['accessProperty'] == describeEnum(e),
          orElse: () => AGConnectCloudDBZoneAccessProperty.CLOUDDBZONE_PUBLIC,
        ),
        capacity = map['capacity'],
        isPersistenceEnabled = map['isPersistenceEnabled'],
        isEncrypted = map['isEncrypted'] ?? false,
        _key = '',
        _reKey = '';

  Map<String, dynamic> _toMap() {
    return <String, dynamic>{
      'zoneName': zoneName,
      'syncProperty': syncProperty.index,
      'accessProperty': accessProperty.index,
      'capacity': capacity,
      'isPersistenceEnabled': isPersistenceEnabled,
      'isEncrypted': isEncrypted,
      'userKey': _key,
      'userReKey': _reKey,
    };
  }

  @override
  String toString() {
    return '$AGConnectCloudDBZoneConfig('
        'zoneName: $zoneName, '
        'syncProperty: ${describeEnum(syncProperty)}, '
        'accessProperty: ${describeEnum(accessProperty)}, '
        'capacity: $capacity, '
        'isPersistenceEnabled: $isPersistenceEnabled, '
        'isEncrypted: $isEncrypted)';
  }
}
