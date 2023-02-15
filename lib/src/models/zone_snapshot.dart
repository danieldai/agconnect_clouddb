// Copyright (c) Huawei Technologies Co., Ltd. 2021-2021. All rights reserved.

part of agconnect_clouddb;

class AGConnectCloudDBZoneSnapshot {
  /// Specifies whether the object in the snapshot is obtained from the Cloud DB zone on the cloud.
  ///
  /// **true**: The object is obtained from the Cloud DB zone on the cloud.
  ///
  /// **false**: The object is obtained from the Cloud DB zone on the device.
  final bool isFromCloud;

  /// Determines whether the snapshot contains objects that have not been synchronized to the cloud.
  ///
  /// **true**: There are objects that have not been synchronized to the cloud.
  ///
  /// **false**: All objects have been synchronized to the cloud.
  final bool hasPendingWrites;

  /// This list contains **all** objects from a snapshot.
  final List<Map<String, dynamic>> snapshotObjects;

  /// This list contains **added** or **modified** objects (compared with the previous snapshot)
  /// in a snaphot only after the developer registers a snapshot listener.
  ///
  /// Otherwise, value of this is empty list.
  final List<Map<String, dynamic>> upsertedObjects;

  /// This list contains **newly deleted** objects (compared with the previous snapshot)
  /// from a snapshot only after the developer registers a snapshot listener.
  ///
  /// Otherwise, value of this is empty list.
  final List<Map<String, dynamic>> deletedObjects;

  AGConnectCloudDBZoneSnapshot._fromMap(Map<String, dynamic> map)
      : isFromCloud = map['isFromCloud'],
        hasPendingWrites = map['hasPendingWrites'],
        snapshotObjects = map['snapshotObjects'] == null
            ? const <Map<String, dynamic>>[]
            : (map['snapshotObjects'] as List<dynamic>).map((dynamic i) {
                return Map<String, dynamic>.from(i as Map<dynamic, dynamic>);
              }).toList(),
        upsertedObjects = map['upsertedObjects'] == null
            ? const <Map<String, dynamic>>[]
            : (map['upsertedObjects'] as List<dynamic>).map((dynamic i) {
                return Map<String, dynamic>.from(i as Map<dynamic, dynamic>);
              }).toList(),
        deletedObjects = map['deletedObjects'] == null
            ? const <Map<String, dynamic>>[]
            : (map['deletedObjects'] as List<dynamic>).map((dynamic i) {
                return Map<String, dynamic>.from(i as Map<dynamic, dynamic>);
              }).toList();

  @override
  String toString() {
    return '$AGConnectCloudDBZoneSnapshot('
        'isFromCloud: $isFromCloud, '
        'hasPendingWrites: $hasPendingWrites, '
        'snapshotObjects: $snapshotObjects, '
        'upsertedObjects: $upsertedObjects, '
        'deletedObjects: $deletedObjects)';
  }
}
