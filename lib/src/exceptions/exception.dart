// Copyright (c) Huawei Technologies Co., Ltd. 2021-2021. All rights reserved.

part of agconnect_clouddb;

class AGConnectCloudDBException implements Exception {
  final String code;
  final String message;

  const AGConnectCloudDBException._({
    required this.code,
    required this.message,
  });

  factory AGConnectCloudDBException._from(dynamic e) {
    if (e is AGConnectCloudDBException) {
      return e;
    } else {
      if (e is PlatformException) {
        return AGConnectCloudDBException._(
          code: e.code,
          message: e.message ?? 'Something went wrong.',
        );
      } else {
        return AGConnectCloudDBException._(
          code: 'UNKNOWN',
          message: e is String ? e : 'Something went wrong.',
        );
      }
    }
  }

  @override
  String toString() {
    return '$AGConnectCloudDBException(code: $code, message: $message)';
  }
}
